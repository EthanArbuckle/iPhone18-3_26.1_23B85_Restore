void (*sub_10004930C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1000493C4;
}

void sub_1000493F8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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

BOOL sub_100049508(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 4) & 1) == 0;
}

uint64_t sub_1000495B8(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
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

void (*sub_1000496E0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 7)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_100049790;
}

uint64_t sub_100049810(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  if (*(v4 + v5) == 7)
  {
    return 0;
  }

  else
  {
    return *(v4 + v5);
  }
}

uint64_t sub_1000498BC(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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

void (*sub_100049978(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 7)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_100049A28;
}

void sub_100049A5C(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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

BOOL sub_100049B64(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 7;
}

uint64_t sub_100049BD4(uint64_t *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10007B100(v12);
    *(v3 + v4) = v11;
  }

  v13 = *a1;
  result = swift_beginAccess();
  *(v7 + v13) = 7;
  return result;
}

void (*sub_100049C8C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_100049D44;
}

void (*sub_100049E48(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_100049F04;
}

float sub_100049FC0(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  result = *v3;
  if (*(v3 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10004A078(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4, float a5)
{
  v9 = v5;
  v11 = *(a1(0) + 20);
  v12 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a2(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v14;
    v14 = v18;
    a3(v19);
    *(v9 + v11) = v18;
  }

  v20 = v14 + *a4;
  result = swift_beginAccess();
  *v20 = a5;
  *(v20 + 4) = 0;
  return result;
}

void (*sub_10004A140(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_10004A1FC;
}

uint64_t sub_10004A298()
{
  v1 = (*(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20)) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v1;
  }

  sub_10000BE4C(v2, v3);
  return v4;
}

uint64_t sub_10004A310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007B100(v14);
    *(v3 + v6) = v13;
  }

  v15 = (v9 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = a1;
  v15[1] = a2;
  return sub_10000CA64(v16, v17);
}

void (*sub_10004A3C0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
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
  return sub_10004A484;
}

void sub_10004A484(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_1000150EC(*(*a1 + 72), v5);
    v7 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v2 + 96);
      v11 = *(v2 + 88);
      v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      v15 = swift_allocObject();
      v16 = v9;
      v9 = v15;
      sub_10007B100(v16);
      *(v11 + v10) = v15;
    }

    v17 = (v9 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    *v17 = v3;
    v17[1] = v5;
    sub_10000CA64(v18, v19);
    sub_100005B2C(*(v2 + 72), *(v2 + 80));
  }

  else
  {
    v20 = *(v6 + v4);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v4);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 96);
      v24 = *(v2 + 88);
      v25 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v28 = swift_allocObject();
      v29 = v22;
      v22 = v28;
      sub_10007B100(v29);
      *(v24 + v23) = v28;
    }

    v30 = (v22 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
    swift_beginAccess();
    v31 = *v30;
    v32 = v30[1];
    *v30 = v3;
    v30[1] = v5;
    sub_10000CA64(v31, v32);
  }

  free(v2);
}

BOOL sub_10004A5D4()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20)) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata;
  swift_beginAccess();
  return *(v1 + 8) >> 60 != 15;
}

uint64_t sub_10004A638()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_10007B100(v10);
    *(v1 + v2) = v9;
  }

  v11 = (v5 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  *v11 = xmmword_10036D770;
  return sub_10000CA64(v12, v13);
}

void (*sub_10004A6F8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_10004A7B0;
}

void (*sub_10004A8B4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_10004A964;
}

uint64_t sub_10004A9D0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_10004AA9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007E98C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D10, &qword_10036D880);
  return swift_endAccess();
}

void (*sub_10004AC08(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D10, &qword_10036D880) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D10, &qword_10036D880);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = *(v8 + 24);
    v20 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D10, &qword_10036D880);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  return sub_10004AEAC;
}

void sub_10004AEAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007E98C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D10, &qword_10036D880);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007E98C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D10, &qword_10036D880);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10004B0FC()
{
  v1 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D10, &qword_10036D880);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D10, &qword_10036D880);
  return v8;
}

uint64_t sub_10004B21C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007E98C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D10, &qword_10036D880);
  return swift_endAccess();
}

uint64_t sub_10004B364@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D18, &qword_10036D888);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418D18, &qword_10036D888);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (qword_100437010 != -1)
  {
    swift_once();
  }

  *(a1 + v11) = qword_100437018;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return sub_1000059A8(v6, &qword_100418D18, &qword_10036D888);
  }

  return result;
}

uint64_t sub_10004B530(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D18, &qword_10036D888);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007E98C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D18, &qword_10036D888);
  return swift_endAccess();
}

void (*sub_10004B69C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D18, &qword_10036D888) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D18, &qword_10036D888);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_100437010 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_100437018;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_100418D18, &qword_10036D888);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  }

  return sub_10004B934;
}

void sub_10004B934(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007E98C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D18, &qword_10036D888);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007E98C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D18, &qword_10036D888);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10004BB84()
{
  v1 = sub_100024A2C(&qword_100418D18, &qword_10036D888);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D18, &qword_10036D888);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D18, &qword_10036D888);
  return v8;
}

uint64_t sub_10004BCA4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D18, &qword_10036D888);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007E98C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D18, &qword_10036D888);
  return swift_endAccess();
}

void (*sub_10004BE04(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_10004BEBC;
}

uint64_t sub_10004BF64(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_10004BFD4(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007E98C(v14);
    *(v4 + v6) = v13;
  }

  v15 = v9 + *a2;
  result = swift_beginAccess();
  *v15 = a1;
  *(v15 + 8) = 0;
  return result;
}

void (*sub_10004C07C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_10004C134;
}

void sub_10004C168(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 72);
  v10 = *(*a1 + 88);
  v11 = *(*a1 + 80);
  v12 = *(v11 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *(v8 + 88);
    v16 = *(v8 + 80);
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
  *(v22 + 8) = 0;

  free(v8);
}

BOOL sub_10004C278(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 8) & 1) == 0;
}

uint64_t sub_10004C328(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
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
  *(v18 + 8) = 1;
  return result;
}

void (*sub_10004C400(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_10004C4B8;
}

uint64_t sub_10004C554@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CF0, &qword_10036D860);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CF0, &qword_10036D860);
  }

  return result;
}

uint64_t sub_10004C6FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007E98C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CF0, &qword_10036D860);
  return swift_endAccess();
}

void (*sub_10004C868(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CF0, &qword_10036D860) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CF0, &qword_10036D860);
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
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CF0, &qword_10036D860);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  }

  return sub_10004CAE4;
}

void sub_10004CAE4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007E98C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CF0, &qword_10036D860);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007E98C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CF0, &qword_10036D860);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10004CD34()
{
  v1 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CF0, &qword_10036D860);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CF0, &qword_10036D860);
  return v8;
}

uint64_t sub_10004CE54()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007E98C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CF0, &qword_10036D860);
  return swift_endAccess();
}

uint64_t sub_10004CF9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CF8, &qword_10036D868);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CF8, &qword_10036D868);
  }

  return result;
}

uint64_t sub_10004D144(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007E98C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CF8, &qword_10036D868);
  return swift_endAccess();
}

void (*sub_10004D2B0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CF8, &qword_10036D868) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CF8, &qword_10036D868);
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
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CF8, &qword_10036D868);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  return sub_10004D52C;
}

void sub_10004D52C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007E98C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CF8, &qword_10036D868);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007E98C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CF8, &qword_10036D868);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10004D77C()
{
  v1 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CF8, &qword_10036D868);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CF8, &qword_10036D868);
  return v8;
}

uint64_t sub_10004D89C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007E98C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CF8, &qword_10036D868);
  return swift_endAccess();
}

uint64_t sub_10004D9E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D20, &qword_10036D890);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418D20, &qword_10036D890);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
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
  *(a1 + v9[9]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D20, &qword_10036D890);
  }

  return result;
}

uint64_t sub_10004DBAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D20, &qword_10036D890);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007E98C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D20, &qword_10036D890);
  return swift_endAccess();
}

void (*sub_10004DD18(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D20, &qword_10036D890) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D20, &qword_10036D890);
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
    *(v13 + v8[9]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D20, &qword_10036D890);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  }

  return sub_10004DFB4;
}

void sub_10004DFB4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007E98C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D20, &qword_10036D890);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007E98C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D20, &qword_10036D890);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10004E204()
{
  v1 = sub_100024A2C(&qword_100418D20, &qword_10036D890);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D20, &qword_10036D890);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D20, &qword_10036D890);
  return v8;
}

uint64_t sub_10004E324()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D20, &qword_10036D890);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007E98C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D20, &qword_10036D890);
  return swift_endAccess();
}

uint64_t sub_10004E46C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D28, &qword_10036D898);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418D28, &qword_10036D898);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (qword_100437060 != -1)
  {
    swift_once();
  }

  *(a1 + v11) = qword_100437068;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return sub_1000059A8(v6, &qword_100418D28, &qword_10036D898);
  }

  return result;
}

uint64_t sub_10004E638(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D28, &qword_10036D898);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007E98C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D28, &qword_10036D898);
  return swift_endAccess();
}

void (*sub_10004E7A4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D28, &qword_10036D898) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D28, &qword_10036D898);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_100437060 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_100437068;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_100418D28, &qword_10036D898);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  }

  return sub_10004EA3C;
}

void sub_10004EA3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007E98C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D28, &qword_10036D898);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007E98C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D28, &qword_10036D898);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10004EC8C()
{
  v1 = sub_100024A2C(&qword_100418D28, &qword_10036D898);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D28, &qword_10036D898);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D28, &qword_10036D898);
  return v8;
}

uint64_t sub_10004EDAC()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D28, &qword_10036D898);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007E98C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D28, &qword_10036D898);
  return swift_endAccess();
}

void (*sub_10004EF5C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_10004F018;
}

void (*sub_10004F11C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_10004F1CC;
}

uint64_t sub_10004F230@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418CF8, &qword_10036D868);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418CF8, &qword_10036D868);
  }

  return result;
}

uint64_t sub_10004F3D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007E98C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418CF8, &qword_10036D868);
  return swift_endAccess();
}

void (*sub_10004F544(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418CF8, &qword_10036D868) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418CF8, &qword_10036D868);
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
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418CF8, &qword_10036D868);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  }

  return sub_10004F7C0;
}

void sub_10004F7C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007E98C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418CF8, &qword_10036D868);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007E98C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418CF8, &qword_10036D868);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10004FA10()
{
  v1 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418CF8, &qword_10036D868);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418CF8, &qword_10036D868);
  return v8;
}

uint64_t sub_10004FB30()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007E98C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418CF8, &qword_10036D868);
  return swift_endAccess();
}

uint64_t sub_10004FC78()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  return *(v1 + v2) & 1;
}

uint64_t sub_10004FCD0(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10007E98C(v12);
    *(v2 + v4) = v11;
  }

  v13 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  result = swift_beginAccess();
  *(v7 + v13) = a1 & 1;
  return result;
}

void (*sub_10004FD74(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_10004FE20;
}

void sub_10004FE20(uint64_t *a1)
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
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_10007E98C(v14);
    *(v9 + v8) = v13;
  }

  v15 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  *(v7 + v15) = v4;

  free(v1);
}

BOOL sub_10004FEEC()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  return *(v1 + v2) != 2;
}

uint64_t sub_10004FF58(uint64_t *a1, char a2)
{
  v5 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007E98C(v14);
    *(v5 + v6) = v13;
  }

  v15 = *a1;
  result = swift_beginAccess();
  *(v9 + v15) = a2;
  return result;
}

uint64_t sub_10004FFF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D30, &qword_10036D8A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418D30, &qword_10036D8A0);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
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
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D30, &qword_10036D8A0);
  }

  return result;
}

uint64_t sub_1000501A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D30, &qword_10036D8A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10007E98C(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D30, &qword_10036D8A0);
  return swift_endAccess();
}

void (*sub_100050314(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D30, &qword_10036D8A0) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D30, &qword_10036D8A0);
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
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D30, &qword_10036D8A0);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  }

  return sub_100050598;
}

void sub_100050598(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10007E98C(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D30, &qword_10036D8A0);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10007E98C(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D30, &qword_10036D8A0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000507E8()
{
  v1 = sub_100024A2C(&qword_100418D30, &qword_10036D8A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D30, &qword_10036D8A0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D30, &qword_10036D8A0);
  return v8;
}

uint64_t sub_100050908()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D30, &qword_10036D8A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10007E98C(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D30, &qword_10036D8A0);
  return swift_endAccess();
}

float sub_100050AC4(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100050B04(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100050B3C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 20);
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

uint64_t sub_100050BD8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100050C20(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100050C60(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100050C98(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 24);
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

uint64_t sub_100050D34()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100050D7C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100050DB4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 28);
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

uint64_t sub_100050E50()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100050E98(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100050ED0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 32);
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

uint64_t sub_100050F6C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100050FC4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_100050FF4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_10005107C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

int *sub_1000510A4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t sub_100051138(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100051170(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 20);
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

uint64_t sub_10005120C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100051254(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10005128C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 24);
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

uint64_t sub_100051328()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_100051370(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000513B0(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000513E8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 28);
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

uint64_t sub_100051484()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000514CC(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10005150C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100051544(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 32);
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

uint64_t sub_1000515E0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100051628(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100051660(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0) + 36);
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

uint64_t sub_1000516FC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

int *sub_10005172C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_1000517C4(uint64_t (*a1)(void))
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

uint64_t sub_100051800(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100051838(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 20);
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

uint64_t sub_1000518D0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100051918(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100051950(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 24);
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

uint64_t sub_1000519EC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100051A34(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100051A6C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 28);
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

uint64_t sub_100051B08()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100051B50(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100051B88(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 32);
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

uint64_t sub_100051C24()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100051C6C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100051CA4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0) + 36);
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

uint64_t sub_100051D40()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_100051D70@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
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
  *(v6 + 8) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_100051E08(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100051E40(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 20);
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

uint64_t sub_100051ED8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100051F08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D38, &qword_10036D8A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100418D38, &qword_10036D8A8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  *(a1 + v8[9]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D38, &qword_10036D8A8);
  }

  return result;
}

uint64_t sub_1000520AC(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100418D38, &qword_10036D8A8);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100052164(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D38, &qword_10036D8A8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D38, &qword_10036D8A8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[8];
    *v19 = 0;
    *(v19 + 4) = 1;
    *(v13 + v8[9]) = 2;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D38, &qword_10036D8A8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  }

  return sub_1000523C0;
}

uint64_t sub_100052474@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D40, &qword_10036D8B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_100418D40, &qword_10036D8B0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
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
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D40, &qword_10036D8B0);
  }

  return result;
}

uint64_t sub_10005261C(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100418D40, &qword_10036D8B0);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000526D4(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D40, &qword_10036D8B0) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D40, &qword_10036D8B0);
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
    v19 = v13 + v8[8];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[9];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D40, &qword_10036D8B0);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
  }

  return sub_100052934;
}

uint64_t sub_1000529E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D48, &qword_10036D8B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  sub_10000A0A4(v1 + *(v7 + 32), v6, &qword_100418D48, &qword_10036D8B8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D48, &qword_10036D8B8);
  }

  return result;
}

uint64_t sub_100052B90(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100418D48, &qword_10036D8B8);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100052C48(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D48, &qword_10036D8B8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Clock(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D48, &qword_10036D8B8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[8];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[9];
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D48, &qword_10036D8B8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  }

  return sub_100052EA8;
}

uint64_t sub_100052F5C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[8];
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

uint64_t sub_1000530C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D50, &qword_10036D8C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418D50, &qword_10036D8C0);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v9[6];
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v9[7];
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = v9[8];
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D50, &qword_10036D8C0);
  }

  return result;
}

uint64_t sub_100053320(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D50, &qword_10036D8C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_100085B64(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D50, &qword_10036D8C0);
  return swift_endAccess();
}

void (*sub_10005348C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D50, &qword_10036D8C0) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D50, &qword_10036D8C0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v8[6];
    v20 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    v21 = v8[7];
    v22 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
    (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
    v23 = v8[8];
    v24 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
    (*(*(v24 - 8) + 56))(v13 + v23, 1, 1, v24);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D50, &qword_10036D8C0);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  }

  return sub_1000537B8;
}

void sub_1000537B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_Clock);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100085B64(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D50, &qword_10036D8C0);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100085B64(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D50, &qword_10036D8C0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100053A08()
{
  v1 = sub_100024A2C(&qword_100418D50, &qword_10036D8C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D50, &qword_10036D8C0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D50, &qword_10036D8C0);
  return v8;
}

uint64_t sub_100053B28()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D50, &qword_10036D8C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_100085B64(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D50, &qword_10036D8C0);
  return swift_endAccess();
}

uint64_t sub_100053C90(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
}

uint64_t sub_100053D38(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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
  swift_beginAccess();
  v21 = *(v14 + v20);
  *(v14 + v20) = a1;
}

void (*sub_100053DFC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_100053EAC;
}

void sub_100053EE0(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v8 = *a1;
  v10 = (*a1 + 72);
  v9 = *v10;
  v11 = *(*a1 + 88);
  v12 = *(*a1 + 80);
  if (a2)
  {
    v13 = *(*a1 + 72);

    v14 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v8 + 88);
      v18 = *(v8 + 80);
      v19 = a3(0);
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      v22 = swift_allocObject();
      a4(v16);
      *(v18 + v17) = v22;
      v16 = v22;
    }

    v23 = *a5;
    swift_beginAccess();
    v24 = *(v16 + v23);
    *(v16 + v23) = v9;

    v25 = *v10;
  }

  else
  {
    v26 = *(v12 + v11);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v12 + v11);
    if ((v27 & 1) == 0)
    {
      v29 = *(v8 + 88);
      v30 = *(v8 + 80);
      v31 = a3(0);
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      v34 = swift_allocObject();
      a4(v28);
      *(v30 + v29) = v34;
      v28 = v34;
    }

    v35 = *a5;
    swift_beginAccess();
    v36 = *(v28 + v35);
    *(v28 + v35) = v9;
  }

  free(v8);
}

uint64_t sub_1000540B0(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000540E8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0) + 20);
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

uint64_t sub_100054184()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000541CC(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100054204(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0) + 24);
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

uint64_t sub_1000542A0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000542E8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100054320(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0) + 28);
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

uint64_t sub_1000543BC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100054404()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 20));
  if (v1 == 13)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100054430(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_100054460(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 13)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000544EC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  *(v0 + *(result + 20)) = 13;
  return result;
}

uint64_t sub_10005452C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100054564(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 24);
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

uint64_t sub_100054600()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100054648(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100054680(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 28);
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

uint64_t sub_10005471C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100054764(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10005479C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 32);
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

uint64_t sub_100054838()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100054868()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 36));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100054894(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1000548C4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_100054950()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  *(v0 + *(result + 36)) = 3;
  return result;
}

int *sub_100054978@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  *(a1 + result[5]) = 13;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a1 + result[9]) = 3;
  return result;
}

uint64_t sub_100054A18(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100054A50(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0) + 20);
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

uint64_t sub_100054AEC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100054B1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D58, &qword_10036D8C8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100418D58, &qword_10036D8C8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
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
    return sub_1000059A8(v6, &qword_100418D58, &qword_10036D8C8);
  }

  return result;
}

uint64_t sub_100054CA4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100418D58, &qword_10036D8C8);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100054D5C(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D58, &qword_10036D8C8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D58, &qword_10036D8C8);
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
      sub_1000059A8(v7, &qword_100418D58, &qword_10036D8C8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  }

  return sub_100054F9C;
}

uint64_t sub_100055050@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v3 = a1 + *(v2 + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = *(v2 + 24);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_100055110(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100055148(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 32);
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

uint64_t sub_1000551E4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_10005522C(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10005526C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000552A4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 36);
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

uint64_t sub_100055340()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100055370@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1000553EC(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1000554B0@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  a1[2] = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v3 = a1 + v2[7];
  result = UnknownStorage.init()();
  v5 = a1 + v2[8];
  *v5 = 0;
  v5[8] = 1;
  v6 = a1 + v2[9];
  *v6 = 0;
  v6[8] = 1;
  return result;
}

uint64_t sub_10005553C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = *(v3 + *(a1(0) + 20));
  v12 = *a2;
  swift_beginAccess();
  sub_10000A0A4(v11 + v12, v10, &qword_100418D10, &qword_10036D880);
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) != 1)
  {
    return sub_10009E724(v10, a3, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  UnknownStorage.init()();
  v15 = a3 + *(v13 + 20);
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = *(v13 + 24);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  (*(*(v17 - 8) + 56))(a3 + v16, 1, 1, v17);
  result = (v14)(v10, 1, v13);
  if (result != 1)
  {
    return sub_1000059A8(v10, &qword_100418D10, &qword_10036D880);
  }

  return result;
}

uint64_t sub_10005571C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_10009ECB4(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100418D10, &qword_10036D880);
  return swift_endAccess();
}

void (*sub_100055890(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D10, &qword_10036D880) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D10, &qword_10036D880);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = *(v8 + 24);
    v20 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D10, &qword_10036D880);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  return sub_100055B34;
}

void sub_100055B34(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10009ECB4(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D10, &qword_10036D880);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10009ECB4(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D10, &qword_10036D880);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100055D94()
{
  v1 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D10, &qword_10036D880);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D10, &qword_10036D880);
  return v8;
}

void (*sub_100055F10(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_100055FCC;
}

void (*sub_100056030(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 7)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000560E0;
}

void (*sub_100056148(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1000561F8;
}

double sub_100056224(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  result = *v3;
  if (*(v3 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000562A0(void *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_10009ECB4(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = v9 + *a1;
  result = swift_beginAccess();
  *v14 = a2;
  *(v14 + 8) = 0;
  return result;
}

void (*sub_100056358(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_100056414;
}

void sub_100056420(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 88);
    v12 = *(v4 + 80);
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    sub_10009ECB4(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = v10 + *a3;
  swift_beginAccess();
  *v17 = v5;
  *(v17 + 8) = 0;

  free(v4);
}

uint64_t sub_10005652C(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    sub_10009ECB4(v7);

    *(v3 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + *a1;
  result = swift_beginAccess();
  *v12 = 0;
  *(v12 + 8) = 1;
  return result;
}

void (*sub_100056608(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000566C4;
}

void (*sub_100056728(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000567E4;
}

void (*sub_100056848(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_100056904;
}

uint64_t sub_100056968(void *a1, float a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_10009ECB4(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = v9 + *a1;
  result = swift_beginAccess();
  *v14 = a2;
  *(v14 + 4) = 0;
  return result;
}

void (*sub_100056A20(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_100056ADC;
}

void sub_100056AE8(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 84);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    sub_10009ECB4(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = v10 + *a3;
  swift_beginAccess();
  *v17 = v5;
  *(v17 + 4) = 0;

  free(v4);
}

uint64_t sub_100056BF4(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    sub_10009ECB4(v7);

    *(v3 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + *a1;
  result = swift_beginAccess();
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t sub_100056CC4(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  if (*(v4 + v5) == 5)
  {
    return 0;
  }

  else
  {
    return *(v4 + v5);
  }
}

uint64_t sub_100056D34(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_10009ECB4(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  result = swift_beginAccess();
  *(v9 + v14) = a1;
  return result;
}

void (*sub_100056DDC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_100056E8C;
}

void sub_100056E98(uint64_t *a1, uint64_t a2, uint64_t *a3)
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
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    sub_10009ECB4(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = *a3;
  swift_beginAccess();
  *(v10 + v17) = v5;

  free(v4);
}

BOOL sub_100056F90(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 5;
}

uint64_t sub_100057004(uint64_t *a1, char a2)
{
  v5 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_10009ECB4(v9);

    *(v5 + v6) = v13;
    v9 = v13;
  }

  v14 = *a1;
  result = swift_beginAccess();
  *(v9 + v14) = a2;
  return result;
}

void (*sub_1000570D8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_100057188;
}

void (*sub_1000571F0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000572A0;
}

void (*sub_100057308(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000573B8;
}

void (*sub_100057420(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000574D0;
}

uint64_t sub_100057538(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_10009ECB4(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  swift_beginAccess();
  v15 = *(v9 + v14);
  *(v9 + v14) = a1;
}

void (*sub_1000575E8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_100057698;
}

void sub_1000576A4(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v6 = (*a1 + 72);
  v5 = *v6;
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  if (a2)
  {
    v9 = *(*a1 + 72);

    v10 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 88);
      v14 = *(v4 + 80);
      v15 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      sub_10009ECB4(v12);

      *(v14 + v13) = v18;
      v12 = v18;
    }

    v19 = *a3;
    swift_beginAccess();
    v20 = *(v12 + v19);
    *(v12 + v19) = v5;

    v21 = *v6;
  }

  else
  {
    v22 = *(v8 + v7);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v8 + v7);
    if ((v23 & 1) == 0)
    {
      v25 = *(v4 + 88);
      v26 = *(v4 + 80);
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10009ECB4(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v31 = *a3;
    swift_beginAccess();
    v32 = *(v24 + v31);
    *(v24 + v31) = v5;
  }

  free(v4);
}

uint64_t sub_1000577F0@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D60, &qword_10036D8D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418D60, &qword_10036D8D0);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  }

  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  a1[2] = &_swiftEmptyArrayStorage;
  v11 = a1 + v9[7];
  UnknownStorage.init()();
  v12 = a1 + v9[8];
  *v12 = 0;
  v12[8] = 1;
  v13 = a1 + v9[9];
  *v13 = 0;
  v13[8] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D60, &qword_10036D8D0);
  }

  return result;
}

uint64_t sub_1000579A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D60, &qword_10036D8D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_10009ECB4(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100418D60, &qword_10036D8D0);
  return swift_endAccess();
}

void (*sub_100057B14(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D60, &qword_10036D8D0) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D60, &qword_10036D8D0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v13[1] = &_swiftEmptyArrayStorage;
    v13[2] = &_swiftEmptyArrayStorage;
    v18 = v13 + v8[7];
    UnknownStorage.init()();
    v19 = v13 + v8[8];
    *v19 = 0;
    v19[8] = 1;
    v20 = v13 + v8[9];
    *v20 = 0;
    v20[8] = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D60, &qword_10036D8D0);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  }

  return sub_100057D98;
}

void sub_100057D98(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10009ECB4(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D60, &qword_10036D8D0);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10009ECB4(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D60, &qword_10036D8D0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100057FF8()
{
  v1 = sub_100024A2C(&qword_100418D60, &qword_10036D8D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D60, &qword_10036D8D0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D60, &qword_10036D8D0);
  return v8;
}

uint64_t sub_100058148(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = sub_100024A2C(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25 - v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    sub_10009ECB4(v17);

    *(v9 + v14) = v21;
    v17 = v21;
  }

  v22 = a3(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = *a4;
  swift_beginAccess();
  sub_10000AD64(v13, v17 + v23, a1, a2);
  return swift_endAccess();
}

void (*sub_1000582CC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_10005837C;
}

void (*sub_1000583E4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_100058494;
}

void (*sub_1000584FC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000585AC;
}

void (*sub_100058614(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000586C4;
}

void (*sub_10005872C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000587DC;
}

void (*sub_100058844(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_100058900;
}

uint64_t sub_100058938()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
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

void (*sub_1000589A0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 4)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_100058A50;
}

BOOL sub_100058A5C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  return *(v1 + v2) != 4;
}

uint64_t sub_100058B24()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 20));
  if (v1 == 13)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100058B50(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_100058B80(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 13)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_100058C0C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  *(v0 + *(result + 20)) = 13;
  return result;
}

uint64_t sub_100058C4C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100058C84(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 24);
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

uint64_t sub_100058D20()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100058D68(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100058DA0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 28);
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

uint64_t sub_100058E3C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100058E84(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100058EC4(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100058EFC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0) + 32);
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

uint64_t sub_100058F98()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_100058FC8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  *(a1 + result[5]) = 13;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_10005904C(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100059084(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0) + 20);
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

uint64_t sub_10005911C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100059164(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_10005919C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0) + 24);
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

uint64_t sub_100059234()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100059264@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t sub_1000592CC(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100059304(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 20);
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

uint64_t sub_10005939C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000593CC()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 24));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000593F8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_100059428(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000594B4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  *(v0 + *(result + 24)) = 5;
  return result;
}

uint64_t sub_1000594DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D68, &qword_10036D8D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_100418D68, &qword_10036D8D8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D68, &qword_10036D8D8);
  }

  return result;
}

uint64_t sub_100059654(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100418D68, &qword_10036D8D8);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10005970C(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D68, &qword_10036D8D8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D68, &qword_10036D8D8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D68, &qword_10036D8D8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  }

  return sub_10005993C;
}

BOOL sub_1000599B4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
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

uint64_t sub_100059AEC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_100059B98@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  *(a1 + v2[6]) = 5;
  v4 = v2[7];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_100059C64(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100059C9C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 20);
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

uint64_t sub_100059D34()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100059D7C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100059DB4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 24);
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

uint64_t sub_100059E50()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100059E98(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100059ED0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 28);
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

uint64_t sub_100059F6C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100059FB4(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100059FEC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0) + 32);
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

uint64_t sub_10005A088()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

int *sub_10005A0B8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_10005A140(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_10005A178(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 20);
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

uint64_t sub_10005A210()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_10005A258(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100418D70, &qword_10036D8E0);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10005A310(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D70, &qword_10036D8E0) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D70, &qword_10036D8E0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 4) = 1;
    *(v13 + v8[6]) = 5;
    v17 = v8[7];
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D70, &qword_10036D8E0);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  return sub_10005A580;
}

uint64_t sub_10005A634@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D78, &qword_10036D8E8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_100418D78, &qword_10036D8E8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
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
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D78, &qword_10036D8E8);
  }

  return result;
}

uint64_t sub_10005A7CC(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100418D78, &qword_10036D8E8);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10005A884(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D78, &qword_10036D8E8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D78, &qword_10036D8E8);
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
    v19 = v13 + v8[8];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D78, &qword_10036D8E8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  }

  return sub_10005AAD4;
}

uint64_t sub_10005AB88@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_10005ACB0(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10005ACE8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0) + 20);
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

uint64_t sub_10005AD80()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10005ADC8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10005AE00(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0) + 24);
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

uint64_t sub_10005AE9C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10005AECC@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 8) = 1;
  return result;
}

uint64_t sub_10005AF34(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_10005AF6C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 20);
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

uint64_t sub_10005B004()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_10005B04C(uint64_t (*a1)(void))
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

uint64_t sub_10005B088(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_10005B0C0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 24);
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

uint64_t sub_10005B158()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_10005B188()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 28));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10005B1B4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_10005B1E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_10005B270()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  *(v0 + *(result + 28)) = 6;
  return result;
}

uint64_t sub_10005B298@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  sub_10000A0A4(v1 + *(v7 + 32), v6, &qword_100418D80, &qword_10036D8F0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D80, &qword_10036D8F0);
  }

  return result;
}

uint64_t sub_10005B410(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100418D80, &qword_10036D8F0);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10005B4C8(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D80, &qword_10036D8F0) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D80, &qword_10036D8F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D80, &qword_10036D8F0);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  }

  return sub_10005B6F8;
}

BOOL sub_10005B770(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_10000A0A4(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000059A8(v12, a1, a2);
  return v15;
}

uint64_t sub_10005B8A8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_10005B954@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  sub_10000A0A4(v1 + *(v7 + 36), v6, &qword_100418D80, &qword_10036D8F0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D80, &qword_10036D8F0);
  }

  return result;
}

uint64_t sub_10005BACC(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 36);
  sub_1000059A8(v1 + v3, &qword_100418D80, &qword_10036D8F0);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10005BB84(void *a1))(uint64_t **, char)
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
  v5 = *(*(sub_100024A2C(&qword_100418D80, &qword_10036D8F0) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 36);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D80, &qword_10036D8F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D80, &qword_10036D8F0);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  }

  return sub_1000AEB64;
}

BOOL sub_10005BDB4()
{
  v1 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  sub_10000A0A4(v0 + *(v5 + 36), v4, &qword_100418D80, &qword_10036D8F0);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_100418D80, &qword_10036D8F0);
  return v7;
}

uint64_t sub_10005BEA8()
{
  v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 36);
  sub_1000059A8(v0 + v1, &qword_100418D80, &qword_10036D8F0);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_10005BF34@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  *(a1 + v2[7]) = 6;
  v5 = v2[8];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a1 + v5, 1, 1, v6);
  v7 = a1 + v2[9];

  return v9(v7, 1, 1, v6);
}

uint64_t sub_10005C054(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10005C08C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 20);
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

uint64_t sub_10005C124()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10005C16C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10005C1A4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 24);
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

uint64_t sub_10005C240()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10005C288(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10005C2C0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 28);
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

uint64_t sub_10005C35C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

int *sub_10005C3A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_10005C40C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  swift_beginAccess();
  if (*(v1 + 20))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_10005C464(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10008FEB0(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 20) = 0;
  return result;
}

void (*sub_10005C500(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_10005C5AC;
}

void sub_10005C5D8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 84);
  v9 = *(*a1 + 72);
  v10 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v6 + 84);
    v14 = *(v6 + 72);
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v12;
    v12 = v18;
    a4(v19);
    *(v14 + v13) = v18;
  }

  swift_beginAccess();
  *(v12 + 16) = v7;
  *(v12 + 20) = 0;

  free(v6);
}

BOOL sub_10005C6CC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 20) & 1) == 0;
}

uint64_t sub_10005C768(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
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
    v15 = v10;
    v10 = v14;
    a3(v15);
    *(v6 + v7) = v14;
  }

  result = swift_beginAccess();
  *(v10 + 16) = 0;
  *(v10 + 20) = 1;
  return result;
}

uint64_t sub_10005C81C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418D70, &qword_10036D8E0);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10009E724(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a1 + v9[6]) = 5;
  v12 = v9[7];
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418D70, &qword_10036D8E0);
  }

  return result;
}

uint64_t sub_10005C9F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10008FEB0(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D70, &qword_10036D8E0);
  return swift_endAccess();
}

void (*sub_10005CB64(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D70, &qword_10036D8E0) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D70, &qword_10036D8E0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 4) = 1;
    *(v13 + v8[6]) = 5;
    v19 = v8[7];
    v20 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D70, &qword_10036D8E0);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  return sub_10005CE14;
}

void sub_10005CE14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10008FEB0(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D70, &qword_10036D8E0);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10008FEB0(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D70, &qword_10036D8E0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10005D064()
{
  v1 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D70, &qword_10036D8E0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D70, &qword_10036D8E0);
  return v8;
}

uint64_t sub_10005D184()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10008FEB0(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D70, &qword_10036D8E0);
  return swift_endAccess();
}

uint64_t sub_10005D2D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10008FEB0(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D88, &qword_10036D8F8);
  return swift_endAccess();
}

void (*sub_10005D444(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D88, &qword_10036D8F8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D88, &qword_10036D8F8);
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
      sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return sub_10005D6C4;
}

void sub_10005D6C4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10008FEB0(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D88, &qword_10036D8F8);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10008FEB0(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D88, &qword_10036D8F8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10005D914()
{
  v1 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D88, &qword_10036D8F8);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D88, &qword_10036D8F8);
  return v8;
}

uint64_t sub_10005DA34()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10008FEB0(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D88, &qword_10036D8F8);
  return swift_endAccess();
}

uint64_t sub_10005DB88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10008FEB0(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D88, &qword_10036D8F8);
  return swift_endAccess();
}

void (*sub_10005DCF4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D88, &qword_10036D8F8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D88, &qword_10036D8F8);
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
      sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return sub_10005DF74;
}

void sub_10005DF74(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10008FEB0(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D88, &qword_10036D8F8);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10008FEB0(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D88, &qword_10036D8F8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10005E1C4()
{
  v1 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D88, &qword_10036D8F8);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D88, &qword_10036D8F8);
  return v8;
}

uint64_t sub_10005E2E4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10008FEB0(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D88, &qword_10036D8F8);
  return swift_endAccess();
}

uint64_t sub_10005E438(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10008FEB0(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D88, &qword_10036D8F8);
  return swift_endAccess();
}

void (*sub_10005E5A4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D88, &qword_10036D8F8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D88, &qword_10036D8F8);
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
      sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return sub_10005E824;
}

void sub_10005E824(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10008FEB0(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D88, &qword_10036D8F8);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10008FEB0(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D88, &qword_10036D8F8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10005EA74()
{
  v1 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D88, &qword_10036D8F8);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D88, &qword_10036D8F8);
  return v8;
}

uint64_t sub_10005EB94()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10008FEB0(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D88, &qword_10036D8F8);
  return swift_endAccess();
}

uint64_t sub_10005ECE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = *(v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_10000A0A4(v9 + v10, v8, &qword_100418D88, &qword_10036D8F8);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_10009E724(v8, a2, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  UnknownStorage.init()();
  v13 = a2 + v11[5];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a2 + v11[6];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a2 + v11[7];
  *v15 = 0;
  *(v15 + 8) = 1;
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1000059A8(v8, &qword_100418D88, &qword_10036D8F8);
  }

  return result;
}

uint64_t sub_10005EE94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10008FEB0(v16);
    *(v2 + v8) = v15;
  }

  sub_10009E724(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418D88, &qword_10036D8F8);
  return swift_endAccess();
}

void (*sub_10005F000(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D88, &qword_10036D8F8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418D88, &qword_10036D8F8);
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
      sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return sub_10005F280;
}

void sub_10005F280(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_10008FEB0(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v15, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418D88, &qword_10036D8F8);
    swift_endAccess();
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
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
      v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_10008FEB0(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10009E724(v14, v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418D88, &qword_10036D8F8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_10005F4D0()
{
  v1 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100418D88, &qword_10036D8F8);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100418D88, &qword_10036D8F8);
  return v8;
}

uint64_t sub_10005F5F0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10008FEB0(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100418D88, &qword_10036D8F8);
  return swift_endAccess();
}

uint64_t sub_10005F7AC(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_10005F7E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 20);
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

uint64_t sub_10005F87C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_10005F8C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  v9 = a1(0);
  sub_10000A0A4(v2 + *(v9 + 24), v8, &qword_100418D70, &qword_10036D8E0);
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_10009E724(v8, a2, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  UnknownStorage.init()();
  v12 = a2 + v10[5];
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a2 + v10[6]) = 5;
  v13 = v10[7];
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1000059A8(v8, &qword_100418D70, &qword_10036D8E0);
  }

  return result;
}

uint64_t sub_10005FA84(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100418D70, &qword_10036D8E0);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10005FB3C(void *a1))(uint64_t **, char)
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
  v5 = *(*(sub_100024A2C(&qword_100418D70, &qword_10036D8E0) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D70, &qword_10036D8E0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 4) = 1;
    *(v13 + v8[6]) = 5;
    v17 = v8[7];
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D70, &qword_10036D8E0);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  return sub_1000AEB68;
}

uint64_t sub_10005FE24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_100418D88, &qword_10036D8F8);
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