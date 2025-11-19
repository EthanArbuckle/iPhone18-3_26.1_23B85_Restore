BOOL sub_1002BA594()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  swift_beginAccess();
  return *(v1 + 25) != 5;
}

uint64_t sub_1002BA5E8()
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
    v10 = v5;
    v5 = v9;
    sub_1002F01B8(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 25) = 5;
  return result;
}

uint64_t sub_1002BA678@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042C010, &qword_1003940D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v22 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042C010, &qword_1003940D8);
  v9 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
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
  v14 = a1 + v9[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v9[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v9[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  *(a1 + v9[11]) = 2;
  v17 = a1 + v9[12];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a1 + v9[13];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1 + v9[14];
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = a1 + v9[15];
  *v20 = 0;
  *(v20 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042C010, &qword_1003940D8);
  }

  return result;
}

int *sub_1002BA8A0@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
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
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  *(a1 + result[11]) = 2;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + result[14];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + result[15];
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t sub_1002BA97C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042C010, &qword_1003940D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002F01B8(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
  v17 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042C010, &qword_1003940D8);
  return swift_endAccess();
}

void (*sub_1002BAAE8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042C010, &qword_1003940D8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042C010, &qword_1003940D8);
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
    v21 = v13 + v8[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[9];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[10];
    *v23 = 0;
    *(v23 + 4) = 1;
    *(v13 + v8[11]) = 2;
    v24 = v13 + v8[12];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v13 + v8[13];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v13 + v8[14];
    *v26 = 0;
    *(v26 + 4) = 1;
    v27 = v13 + v8[15];
    *v27 = 0;
    *(v27 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042C010, &qword_1003940D8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
  }

  return sub_1002BADE4;
}

void sub_1002BADE4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002F01B8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042C010, &qword_1003940D8);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
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
      v27 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002F01B8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042C010, &qword_1003940D8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002BB034()
{
  v1 = sub_100024A2C(&qword_10042C010, &qword_1003940D8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042C010, &qword_1003940D8);
  v7 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042C010, &qword_1003940D8);
  return v8;
}

uint64_t sub_1002BB154()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042C010, &qword_1003940D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002F01B8(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042C010, &qword_1003940D8);
  return swift_endAccess();
}

uint64_t sub_1002BB29C@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042C018, &qword_1003940E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042C018, &qword_1003940E0);
  v9 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
  }

  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  v11 = a1 + v9[6];
  UnknownStorage.init()();
  v12 = a1 + v9[7];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v9[8];
  *v13 = 0;
  v13[4] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042C018, &qword_1003940E0);
  }

  return result;
}

uint64_t sub_1002BB448@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v3 = a1 + v2[6];
  result = UnknownStorage.init()();
  v5 = a1 + v2[7];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  v6[4] = 1;
  return result;
}

uint64_t sub_1002BB4B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042C018, &qword_1003940E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002F01B8(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
  v17 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042C018, &qword_1003940E0);
  return swift_endAccess();
}

void (*sub_1002BB61C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042C018, &qword_1003940E0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042C018, &qword_1003940E0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v13[1] = &_swiftEmptyArrayStorage;
    v18 = v13 + v8[6];
    UnknownStorage.init()();
    v19 = v13 + v8[7];
    *v19 = 0;
    v19[4] = 1;
    v20 = v13 + v8[8];
    *v20 = 0;
    v20[4] = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042C018, &qword_1003940E0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
  }

  return sub_1002BB89C;
}

void sub_1002BB89C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002F01B8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042C018, &qword_1003940E0);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
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
      v27 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002F01B8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042C018, &qword_1003940E0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002BBAEC()
{
  v1 = sub_100024A2C(&qword_10042C018, &qword_1003940E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042C018, &qword_1003940E0);
  v7 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042C018, &qword_1003940E0);
  return v8;
}

uint64_t sub_1002BBC0C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042C018, &qword_1003940E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002F01B8(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042C018, &qword_1003940E0);
  return swift_endAccess();
}

uint64_t sub_1002BBD54@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042C020, &qword_1003940E8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042C020, &qword_1003940E8);
  v9 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v11 = a1 + v9[5];
  UnknownStorage.init()();
  v12 = a1 + v9[6];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  v13[4] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042C020, &qword_1003940E8);
  }

  return result;
}

uint64_t sub_1002BBF00@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  v5 = a1 + v2[6];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[7];
  *v6 = 0;
  v6[4] = 1;
  return result;
}

uint64_t sub_1002BBF68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042C020, &qword_1003940E8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002F01B8(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
  v17 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042C020, &qword_1003940E8);
  return swift_endAccess();
}

void (*sub_1002BC0D4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042C020, &qword_1003940E8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042C020, &qword_1003940E8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v18 = v13 + v8[5];
    UnknownStorage.init()();
    v19 = v13 + v8[6];
    *v19 = 0;
    v19[4] = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    v20[4] = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042C020, &qword_1003940E8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
  }

  return sub_1002BC354;
}

void sub_1002BC354(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002F01B8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042C020, &qword_1003940E8);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
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
      v27 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002F01B8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042C020, &qword_1003940E8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002BC5A4()
{
  v1 = sub_100024A2C(&qword_10042C020, &qword_1003940E8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042C020, &qword_1003940E8);
  v7 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042C020, &qword_1003940E8);
  return v8;
}

uint64_t sub_1002BC6C4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042C020, &qword_1003940E8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002F01B8(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042C020, &qword_1003940E8);
  return swift_endAccess();
}

uint64_t sub_1002BC80C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042C028, &unk_1003940F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_10042C028, &unk_1003940F0);
  v9 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
  }

  UnknownStorage.init()();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + *(v9 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10042C028, &unk_1003940F0);
  }

  return result;
}

uint64_t sub_1002BC9C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + *(result + 24);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_1002BCA18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042C028, &unk_1003940F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1002F01B8(v16);
    *(v2 + v8) = v15;
  }

  sub_1002F7BE8(a1, v7, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
  v17 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_10042C028, &unk_1003940F0);
  return swift_endAccess();
}

void (*sub_1002BCB84(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042C028, &unk_1003940F0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042C028, &unk_1003940F0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042C028, &unk_1003940F0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
  }

  return sub_1002BCDF4;
}

void sub_1002BCDF4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002F01B8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v15, v19, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_10042C028, &unk_1003940F0);
    swift_endAccess();
    sub_1002F7CB8(v14, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
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
      v27 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002F01B8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002F7BE8(v14, v19, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_10042C028, &unk_1003940F0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1002BD044()
{
  v1 = sub_100024A2C(&qword_10042C028, &unk_1003940F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_10042C028, &unk_1003940F0);
  v7 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_10042C028, &unk_1003940F0);
  return v8;
}

uint64_t sub_1002BD164()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042C028, &unk_1003940F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_1002F01B8(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_10042C028, &unk_1003940F0);
  return swift_endAccess();
}

uint64_t sub_1002BD2C4(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BD2FC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0) + 28);
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

uint64_t sub_1002BD394()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BD3DC(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BD414(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0) + 32);
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

uint64_t sub_1002BD4AC()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BD4DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002BD558(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1002BD634(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BD66C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0) + 24);
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

uint64_t sub_1002BD704()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BD74C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1002BD788(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BD7C0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0) + 28);
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

uint64_t sub_1002BD858()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BD918(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1002BD954(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BD98C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0) + 20);
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

uint64_t sub_1002BDA24()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BDA6C(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BDAA4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0) + 24);
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

uint64_t sub_1002BDB3C()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BDB84(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BDBBC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 20);
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

uint64_t sub_1002BDC54()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BDC9C(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BDCD4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 24);
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

uint64_t sub_1002BDD6C()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BDDB4(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BDDEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 28);
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

uint64_t sub_1002BDE84()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BDECC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1002BDF08(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BDF40(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 32);
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

uint64_t sub_1002BDFD8()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE008()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE03C(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE074(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 36);
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

uint64_t sub_1002BE10C()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE13C()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE170(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE1A8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 40);
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

uint64_t sub_1002BE240()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE298(char a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*sub_1002BE2C8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002BE350()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  *(v0 + *(result + 44)) = 2;
  return result;
}

uint64_t sub_1002BE378()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 48));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE3AC(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE3E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 48);
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

uint64_t sub_1002BE47C()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE4AC()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 52));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE4E0(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE518(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 52);
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
  return sub_100026A50;
}

uint64_t sub_1002BE5B0()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE5E0()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 56));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE614(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE64C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 56);
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

uint64_t sub_1002BE6E4()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 56);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE714()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 60));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE748(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE780(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 60);
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

uint64_t sub_1002BE818()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 60);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE884(int a1)
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE8BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Exception(0) + 20);
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

uint64_t sub_1002BE954()
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE99C(int a1)
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE9D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Exception(0) + 24);
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

uint64_t sub_1002BEA6C()
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BEAB4(int a1)
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BEAEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Exception(0) + 28);
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

uint64_t sub_1002BEB84()
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

double sub_1002BEBB4()
{
  v1 = v0 + *(type metadata accessor for Proto_Gpsd_AskBasebandReset(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1002BEBEC(double a1)
{
  result = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002BEC24(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_AskBasebandReset(0) + 20);
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

uint64_t sub_1002BECC0()
{
  result = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002BED08(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002BED40(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_AskBasebandReset(0) + 24);
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

uint64_t sub_1002BEDD8()
{
  result = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002BEE20(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
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

uint64_t sub_1002BEE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*sub_1002BEEE0(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Proto_Gpsd_AskBasebandReset(0) + 28);
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

uint64_t sub_1002BEFD8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1002BF030(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002BF068(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 20);
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

uint64_t sub_1002BF100()
{
  result = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002BF130()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 24));
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

uint64_t sub_1002BF184(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_1002BF1CC(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 24);
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

  return sub_10010A334;
}

uint64_t sub_1002BF2AC()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_1002BF2E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_100418370, &qword_10036C848);
  v8 = type metadata accessor for Proto_Gpsd_Request(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_Request);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_100480E60 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100480E68;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v6, &qword_100418370, &qword_10036C848);
  }

  return result;
}

uint64_t sub_1002BF48C(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100418370, &qword_10036C848);
  sub_1002F7BE8(a1, v1 + v3, type metadata accessor for Proto_Gpsd_Request);
  v4 = type metadata accessor for Proto_Gpsd_Request(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1002BF544(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418370, &qword_10036C848) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_Request(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418370, &qword_10036C848);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100480E60 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100480E68;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_100418370, &qword_10036C848);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_Request);
  }

  return sub_1002BF79C;
}

BOOL sub_1002BF7D8()
{
  v1 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v0 + *(v5 + 28), v4, &qword_100418370, &qword_10036C848);
  v6 = type metadata accessor for Proto_Gpsd_Request(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_100418370, &qword_10036C848);
  return v7;
}

uint64_t sub_1002BF8CC()
{
  v1 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 28);
  sub_1000059A8(v0 + v1, &qword_100418370, &qword_10036C848);
  v2 = type metadata accessor for Proto_Gpsd_Request(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1002BF958@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v1 + *(v7 + 32), v6, &qword_100418378, &qword_10036C850);
  v8 = type metadata accessor for Proto_Gpsd_Response(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_Response);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 62;
  v10 = a1 + v8[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + v8[7]) = 10;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418378, &qword_10036C850);
  }

  return result;
}

uint64_t sub_1002BFAD8(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100418378, &qword_10036C850);
  sub_1002F7BE8(a1, v1 + v3, type metadata accessor for Proto_Gpsd_Response);
  v4 = type metadata accessor for Proto_Gpsd_Response(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1002BFB90(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418378, &qword_10036C850) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_Response(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418378, &qword_10036C850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 62;
    v16 = v13 + v8[6];
    *v16 = 0;
    *(v16 + 8) = 1;
    *(v13 + v8[7]) = 10;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418378, &qword_10036C850);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_Response);
  }

  return sub_1002BFDC8;
}

BOOL sub_1002BFE04()
{
  v1 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v0 + *(v5 + 32), v4, &qword_100418378, &qword_10036C850);
  v6 = type metadata accessor for Proto_Gpsd_Response(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_100418378, &qword_10036C850);
  return v7;
}

uint64_t sub_1002BFEF8()
{
  v1 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 32);
  sub_1000059A8(v0 + v1, &qword_100418378, &qword_10036C850);
  v2 = type metadata accessor for Proto_Gpsd_Response(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1002BFF84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v1 + *(v7 + 36), v6, &qword_100418380, &qword_10036C858);
  v8 = type metadata accessor for Proto_Gpsd_Indication(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002F7BE8(v6, a1, type metadata accessor for Proto_Gpsd_Indication);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_100480E88 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100480E90;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v6, &qword_100418380, &qword_10036C858);
  }

  return result;
}

uint64_t sub_1002C012C(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 36);
  sub_1000059A8(v1 + v3, &qword_100418380, &qword_10036C858);
  sub_1002F7BE8(a1, v1 + v3, type metadata accessor for Proto_Gpsd_Indication);
  v4 = type metadata accessor for Proto_Gpsd_Indication(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1002C01E4(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418380, &qword_10036C858) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_Indication(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 36);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418380, &qword_10036C858);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100480E88 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100480E90;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_100418380, &qword_10036C858);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_Indication);
  }

  return sub_1002C043C;
}

void sub_1002C0478(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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
    sub_1002F7C50(v12, v11, a6);
    sub_1000059A8(v15 + v10, a3, a4);
    sub_1002F7BE8(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_1002F7CB8(v12, a6);
  }

  else
  {
    sub_1000059A8(v15 + v10, a3, a4);
    sub_1002F7BE8(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL sub_1002C05B4()
{
  v1 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v0 + *(v5 + 36), v4, &qword_100418380, &qword_10036C858);
  v6 = type metadata accessor for Proto_Gpsd_Indication(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_100418380, &qword_10036C858);
  return v7;
}

uint64_t sub_1002C06A8()
{
  v1 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 36);
  sub_1000059A8(v0 + v1, &qword_100418380, &qword_10036C858);
  v2 = type metadata accessor for Proto_Gpsd_Indication(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1002C0734@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = v2[7];
  v6 = type metadata accessor for Proto_Gpsd_Request(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for Proto_Gpsd_Response(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v2[9];
  v10 = type metadata accessor for Proto_Gpsd_Indication(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1 + v9, 1, 1, v10);
}

uint64_t sub_1002C08D4(char a1)
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1002C0904(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_StartContext(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002C098C()
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1002C09DC(char a1)
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1002C0A0C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_StartContext(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002C0A94()
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_1002C0AE4(char a1)
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1002C0B14(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_StartContext(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002C0B9C()
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1002C0BDC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1002C0C18(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002C0C50(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_StartContext(0) + 32);
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

uint64_t sub_1002C0CE8()
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002C0D40(char a1)
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1002C0D70(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_StartContext(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002C0DF8()
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_1002C0E20()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434DB0);
  sub_100005DF0(v0, qword_100434DB0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SuplInit_None";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SuplInit_DecodeSuccess";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SuplInit_DecodeFailure";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SuplInit_Timeout";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002C10D4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434DC8);
  sub_100005DF0(v0, qword_100434DC8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CompressionType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CompressionType_None";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "CompressionType_LZMA";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002C134C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434DE0);
  sub_100005DF0(v0, qword_100434DE0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "LtlInfoType_PROTOBUF_DEFAULT";
  *(v5 + 8) = 28;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "LtlInfoType_kInvalid";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "LtlInfoType_kInitial";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "LtlInfoType_kLtlRefitted";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "LtlInfoType_kLearntArray";
  *(v14 + 8) = 24;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002C1664()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434DF8);
  sub_100005DF0(v0, qword_100434DF8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_100393EC0;
  v4 = v102 + v3;
  v5 = v102 + v3 + v1[14];
  *(v102 + v3) = 1;
  *v5 = "mach_continuous_time_ns";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v102 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "transaction_id";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v102 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v102 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "inject_assistance_position";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v102 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "inject_assistance_time";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v102 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "set_assistance_pressure";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v8();
  v18 = (v102 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "set_assistance_accel";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v102 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "set_assistance_gyro";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v102 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "set_assistance_dem";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v102 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "set_assistance_map_vector";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v8();
  v25 = (v102 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "set_assistance_motion_activity_context";
  *(v26 + 1) = 38;
  v26[16] = 2;
  v8();
  v27 = (v102 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "set_assistance_mount_state";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v8();
  v29 = (v102 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "set_assistance_signal_environment";
  *(v30 + 1) = 33;
  v30[16] = 2;
  v8();
  v31 = (v102 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "set_assistance_speed_constraint";
  *(v32 + 1) = 31;
  v32[16] = 2;
  v8();
  v33 = (v102 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "set_assistance_along_track_velocity";
  *(v34 + 1) = 35;
  v34[16] = 2;
  v8();
  v35 = (v102 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = 0x1003B0000;
  *(v36 + 1) = 22;
  v36[16] = 2;
  v8();
  v37 = v102 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "inject_rti_file";
  *(v37 + 8) = 15;
  *(v37 + 16) = 2;
  v8();
  v38 = (v102 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "inject_svid_blocklist";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v102 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "delete_gnss_data";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v102 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "set_pvtm_report";
  *(v43 + 1) = 15;
  v43[16] = 2;
  v8();
  v44 = (v102 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "set_nmea_handler";
  *(v45 + 1) = 16;
  v45[16] = 2;
  v8();
  v46 = (v102 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "set_config_simulator_mode";
  *(v47 + 1) = 25;
  v47[16] = 2;
  v8();
  v48 = (v102 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "set_config_enable_gnss_constellations";
  *(v49 + 1) = 37;
  v49[16] = 2;
  v8();
  v50 = (v102 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "set_config_duty_cycling";
  *(v51 + 1) = 23;
  v51[16] = 2;
  v8();
  v52 = (v102 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "termination_imminent";
  *(v53 + 1) = 20;
  v53[16] = 2;
  v8();
  v54 = (v102 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "exit_message";
  *(v55 + 1) = 12;
  v55[16] = 2;
  v8();
  v56 = (v102 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "inject_ltl_info";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v102 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "start_context";
  *(v59 + 1) = 13;
  v59[16] = 2;
  v8();
  v60 = (v102 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 30;
  *v61 = "set_thermal_risk_state";
  *(v61 + 1) = 22;
  v61[16] = 2;
  v8();
  v62 = (v102 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 31;
  *v63 = "set_config_rf_band_enable";
  *(v63 + 1) = 25;
  v63[16] = 2;
  v8();
  v64 = (v102 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 32;
  *v65 = "inject_raven_orbit_file";
  *(v65 + 1) = 23;
  v65[16] = 2;
  v8();
  v66 = (v102 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 50;
  *v67 = "emerg_config";
  *(v67 + 1) = 12;
  v67[16] = 2;
  v8();
  v68 = v102 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 51;
  *v68 = "gem_protocol_request";
  *(v68 + 8) = 20;
  *(v68 + 16) = 2;
  v8();
  v69 = (v102 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 60;
  *v70 = "position_request";
  *(v70 + 1) = 16;
  v70[16] = 2;
  v8();
  v71 = (v102 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 61;
  *v72 = "session_id";
  *(v72 + 1) = 10;
  v72[16] = 2;
  v8();
  v73 = (v102 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 62;
  *v74 = "gps_reference_time";
  *(v74 + 1) = 18;
  v74[16] = 2;
  v8();
  v75 = (v102 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 63;
  *v76 = "reference_location";
  *(v76 + 1) = 18;
  v76[16] = 2;
  v8();
  v77 = (v102 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 64;
  *v78 = "gps_navigation_model";
  *(v78 + 1) = 20;
  v78[16] = 2;
  v8();
  v79 = (v102 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 65;
  *v80 = "gps_acq_assistance";
  *(v80 + 1) = 18;
  v80[16] = 2;
  v8();
  v81 = (v102 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 66;
  *v82 = "cell_ft_assistance";
  *(v82 + 1) = 18;
  v82[16] = 2;
  v8();
  v83 = (v102 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 67;
  *v84 = "cplane_context";
  *(v84 + 1) = 14;
  v84[16] = 2;
  v8();
  v85 = (v102 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 70;
  *v86 = "supl_init_vec";
  *(v86 + 1) = 13;
  v86[16] = 2;
  v8();
  v87 = (v102 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 71;
  *v88 = "location_id";
  *(v88 + 1) = 11;
  v88[16] = 2;
  v8();
  v89 = (v102 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 72;
  *v90 = "supl_init_index";
  *(v90 + 1) = 15;
  v90[16] = 2;
  v8();
  v91 = (v102 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 73;
  *v92 = "supl_cert";
  *(v92 + 1) = 9;
  v92[16] = 2;
  v8();
  v93 = (v102 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 74;
  *v94 = "serving_cell_lte";
  *(v94 + 1) = 16;
  v94[16] = 2;
  v8();
  v95 = (v102 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 75;
  *v96 = "sim_instance";
  *(v96 + 1) = 12;
  v96[16] = 2;
  v8();
  v97 = (v102 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 76;
  *v98 = "supl_context";
  *(v98 + 1) = 12;
  v98[16] = 2;
  v8();
  v99 = (v102 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 77;
  *v100 = "wlan_measurement_list";
  *(v100 + 1) = 21;
  v100[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002C23E4()
{
  v0 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 28) = 0;
  *(v3 + 32) = 15873;
  v4 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  v5 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  v7 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  v11 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  v13 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  v15 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  v17 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  v19 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  v21 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  v23 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  (*(*(v23 - 8) + 56))(v3 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  v25 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  v27 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  (*(*(v27 - 8) + 56))(v3 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  v29 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  (*(*(v29 - 8) + 56))(v3 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  v31 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  (*(*(v31 - 8) + 56))(v3 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  v33 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  (*(*(v33 - 8) + 56))(v3 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  v35 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  (*(*(v35 - 8) + 56))(v3 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  v37 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  (*(*(v37 - 8) + 56))(v3 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  v39 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  (*(*(v39 - 8) + 56))(v3 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  v41 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  (*(*(v41 - 8) + 56))(v3 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  v43 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  (*(*(v43 - 8) + 56))(v3 + v42, 1, 1, v43);
  v44 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  v45 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  (*(*(v45 - 8) + 56))(v3 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  v47 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  (*(*(v47 - 8) + 56))(v3 + v46, 1, 1, v47);
  v48 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  v49 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  (*(*(v49 - 8) + 56))(v3 + v48, 1, 1, v49);
  v50 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  v51 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  (*(*(v51 - 8) + 56))(v3 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  (*(*(started - 8) + 56))(v3 + v52, 1, 1, started);
  v54 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  v55 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  (*(*(v55 - 8) + 56))(v3 + v54, 1, 1, v55);
  v56 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  v57 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  (*(*(v57 - 8) + 56))(v3 + v56, 1, 1, v57);
  v58 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  v59 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  (*(*(v59 - 8) + 56))(v3 + v58, 1, 1, v59);
  v60 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  v61 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  (*(*(v61 - 8) + 56))(v3 + v60, 1, 1, v61);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest) = xmmword_10036D770;
  v62 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  v63 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  (*(*(v63 - 8) + 56))(v3 + v62, 1, 1, v63);
  v64 = v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  *v64 = 0;
  *(v64 + 4) = 1;
  v65 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  v66 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  (*(*(v66 - 8) + 56))(v3 + v65, 1, 1, v66);
  v67 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  v68 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  (*(*(v68 - 8) + 56))(v3 + v67, 1, 1, v68);
  v69 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  v70 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  (*(*(v70 - 8) + 56))(v3 + v69, 1, 1, v70);
  v71 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  v72 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  (*(*(v72 - 8) + 56))(v3 + v71, 1, 1, v72);
  v73 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  v74 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  (*(*(v74 - 8) + 56))(v3 + v73, 1, 1, v74);
  v75 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  v76 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  (*(*(v76 - 8) + 56))(v3 + v75, 1, 1, v76);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec) = &_swiftEmptyArrayStorage;
  v77 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  v78 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  (*(*(v78 - 8) + 56))(v3 + v77, 1, 1, v78);
  v79 = v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  *v79 = 0;
  *(v79 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert) = &_swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte) = 2;
  v80 = v3 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  *v80 = 0;
  *(v80 + 4) = 1;
  v81 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  v82 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  (*(*(v82 - 8) + 56))(v3 + v81, 1, 1, v82);
  v83 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  v84 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  result = (*(*(v84 - 8) + 56))(v3 + v83, 1, 1, v84);
  qword_100480E68 = v3;
  return result;
}

uint64_t sub_1002C2FB8(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10042BF60, &qword_100394020);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v424 = &v342 - v5;
  v6 = sub_100024A2C(&qword_10042BF58, &qword_100394018);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v423 = &v342 - v8;
  v9 = sub_100024A2C(&qword_10042BF50, &qword_100394010);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v422 = &v342 - v11;
  v12 = sub_100024A2C(&qword_10042BF48, &qword_100394008);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v421 = &v342 - v14;
  v15 = sub_100024A2C(&qword_10042BF40, &qword_100394000);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v420 = &v342 - v17;
  v18 = sub_100024A2C(&qword_10042BF38, &qword_100393FF8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v419 = &v342 - v20;
  v21 = sub_100024A2C(&qword_10042BF30, &qword_100393FF0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v418 = &v342 - v23;
  v24 = sub_100024A2C(&qword_10042BF28, &qword_100393FE8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v417 = &v342 - v26;
  v27 = sub_100024A2C(&qword_10042BF20, &qword_100393FE0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v416 = &v342 - v29;
  v30 = sub_100024A2C(&qword_10042BF18, &qword_100393FD8);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v415 = &v342 - v32;
  v33 = sub_100024A2C(&qword_10042BF10, &qword_100393FD0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v414 = &v342 - v35;
  v36 = sub_100024A2C(&qword_10042BF08, &qword_100393FC8);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v413 = &v342 - v38;
  v39 = sub_100024A2C(&qword_10042BF00, &qword_100393FC0);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v412 = &v342 - v41;
  v42 = sub_100024A2C(&qword_10042BEF8, &qword_100393FB8);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v411 = &v342 - v44;
  v45 = sub_100024A2C(&qword_10042BEF0, &qword_100393FB0);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v410 = &v342 - v47;
  v48 = sub_100024A2C(&qword_10042BEE8, &qword_100393FA8);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48 - 8);
  v409 = &v342 - v50;
  v51 = sub_100024A2C(&qword_10042BEE0, &qword_100393FA0);
  v52 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51 - 8);
  v408 = &v342 - v53;
  v54 = sub_100024A2C(&qword_10042BED8, &qword_100393F98);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54 - 8);
  v407 = &v342 - v56;
  v57 = sub_100024A2C(&qword_10042BED0, &qword_100393F90);
  v58 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57 - 8);
  v406 = &v342 - v59;
  v60 = sub_100024A2C(&qword_10042BEC8, &qword_100393F88);
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60 - 8);
  v405 = &v342 - v62;
  v63 = sub_100024A2C(&qword_10042BEC0, &qword_100393F80);
  v64 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63 - 8);
  v404 = &v342 - v65;
  v66 = sub_100024A2C(&qword_10042BEB8, &qword_100393F78);
  v67 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66 - 8);
  v403 = &v342 - v68;
  v69 = sub_100024A2C(&qword_10042BEB0, &qword_100393F70);
  v70 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69 - 8);
  v402 = &v342 - v71;
  v72 = sub_100024A2C(&qword_10042BEA8, &qword_100393F68);
  v73 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72 - 8);
  v401 = &v342 - v74;
  v75 = sub_100024A2C(&qword_10042BEA0, &qword_100393F60);
  v76 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75 - 8);
  v400 = &v342 - v77;
  v78 = sub_100024A2C(&qword_10042BE98, &qword_100393F58);
  v79 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78 - 8);
  v398 = &v342 - v80;
  v81 = sub_100024A2C(&qword_10042BE90, &qword_100393F50);
  v82 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81 - 8);
  v394 = &v342 - v83;
  v84 = sub_100024A2C(&qword_10042BE88, &qword_100393F48);
  v85 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84 - 8);
  v390 = &v342 - v86;
  v87 = sub_100024A2C(&qword_10042BE80, &qword_100393F40);
  v88 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87 - 8);
  v386 = &v342 - v89;
  v90 = sub_100024A2C(&qword_10042BE78, &qword_100393F38);
  v91 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90 - 8);
  v382 = &v342 - v92;
  v93 = sub_100024A2C(&qword_10042BE70, &qword_100393F30);
  v94 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93 - 8);
  v378 = &v342 - v95;
  v96 = sub_100024A2C(&qword_10042BE68, &qword_100393F28);
  v97 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96 - 8);
  v375 = &v342 - v98;
  v99 = sub_100024A2C(&qword_10042BE60, &qword_100393F20);
  v100 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99 - 8);
  v370 = &v342 - v101;
  v102 = sub_100024A2C(&qword_10042BE58, &qword_100393F18);
  v103 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102 - 8);
  v366 = &v342 - v104;
  v105 = sub_100024A2C(&qword_10042BE50, &qword_100393F10);
  v106 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105 - 8);
  v361 = &v342 - v107;
  v108 = sub_100024A2C(&qword_10042BE48, &qword_100393F08);
  v109 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108 - 8);
  v357 = &v342 - v110;
  v111 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  v112 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111 - 8);
  v352 = &v342 - v113;
  v114 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  v115 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114 - 8);
  v347 = &v342 - v116;
  v117 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  v118 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117 - 8);
  v343 = &v342 - v119;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 1;
  *(v1 + 33) = 62;
  v120 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  v121 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v121 - 8) + 56))(v1 + v120, 1, 1, v121);
  v122 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  v342 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  v123 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v123 - 8) + 56))(v1 + v122, 1, 1, v123);
  v124 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  v344 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  v125 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v125 - 8) + 56))(v1 + v124, 1, 1, v125);
  v126 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  v345 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  v127 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  (*(*(v127 - 8) + 56))(v1 + v126, 1, 1, v127);
  v128 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  v346 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  v129 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  (*(*(v129 - 8) + 56))(v1 + v128, 1, 1, v129);
  v130 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  v348 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  v131 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  (*(*(v131 - 8) + 56))(v1 + v130, 1, 1, v131);
  v132 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  v349 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  v133 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  (*(*(v133 - 8) + 56))(v1 + v132, 1, 1, v133);
  v134 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  v350 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  v135 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  (*(*(v135 - 8) + 56))(v1 + v134, 1, 1, v135);
  v136 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  v351 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  v137 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  (*(*(v137 - 8) + 56))(v1 + v136, 1, 1, v137);
  v138 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  v353 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  v139 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  (*(*(v139 - 8) + 56))(v1 + v138, 1, 1, v139);
  v140 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  v354 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  v141 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  (*(*(v141 - 8) + 56))(v1 + v140, 1, 1, v141);
  v142 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  v355 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  v143 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  (*(*(v143 - 8) + 56))(v1 + v142, 1, 1, v143);
  v144 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  v356 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  v145 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  (*(*(v145 - 8) + 56))(v1 + v144, 1, 1, v145);
  v146 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  v358 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  v147 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  (*(*(v147 - 8) + 56))(v1 + v146, 1, 1, v147);
  v148 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  v359 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  v149 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  (*(*(v149 - 8) + 56))(v1 + v148, 1, 1, v149);
  v150 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  v360 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  v151 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  (*(*(v151 - 8) + 56))(v1 + v150, 1, 1, v151);
  v152 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  v362 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  v153 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  (*(*(v153 - 8) + 56))(v1 + v152, 1, 1, v153);
  v154 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  v363 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  v155 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  (*(*(v155 - 8) + 56))(v1 + v154, 1, 1, v155);
  v156 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  v364 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  v157 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  (*(*(v157 - 8) + 56))(v1 + v156, 1, 1, v157);
  v158 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  v365 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  v159 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  (*(*(v159 - 8) + 56))(v1 + v158, 1, 1, v159);
  v160 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  v367 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  v161 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  (*(*(v161 - 8) + 56))(v1 + v160, 1, 1, v161);
  v162 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  v368 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  v163 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  (*(*(v163 - 8) + 56))(v1 + v162, 1, 1, v163);
  v164 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  v369 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  v165 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  (*(*(v165 - 8) + 56))(v1 + v164, 1, 1, v165);
  v166 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  v371 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  v167 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  (*(*(v167 - 8) + 56))(v1 + v166, 1, 1, v167);
  v168 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  v372 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  (*(*(started - 8) + 56))(v1 + v168, 1, 1, started);
  v170 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  v373 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  v171 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  (*(*(v171 - 8) + 56))(v1 + v170, 1, 1, v171);
  v172 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  v374 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  v173 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  (*(*(v173 - 8) + 56))(v1 + v172, 1, 1, v173);
  v174 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  v376 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  v175 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  (*(*(v175 - 8) + 56))(v1 + v174, 1, 1, v175);
  v176 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  v377 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  v177 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  (*(*(v177 - 8) + 56))(v1 + v176, 1, 1, v177);
  v178 = (v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest) = xmmword_10036D770;
  v179 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  v379 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  v180 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  (*(*(v180 - 8) + 56))(v1 + v179, 1, 1, v180);
  v181 = v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  v380 = v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  *v181 = 0;
  *(v181 + 4) = 1;
  v182 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  v381 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  v183 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  (*(*(v183 - 8) + 56))(v1 + v182, 1, 1, v183);
  v184 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  v383 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  v185 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  (*(*(v185 - 8) + 56))(v1 + v184, 1, 1, v185);
  v186 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  v384 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  v187 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  (*(*(v187 - 8) + 56))(v1 + v186, 1, 1, v187);
  v188 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  v385 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  v189 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  (*(*(v189 - 8) + 56))(v1 + v188, 1, 1, v189);
  v190 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  v387 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  v191 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  (*(*(v191 - 8) + 56))(v1 + v190, 1, 1, v191);
  v192 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  v388 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  v193 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  (*(*(v193 - 8) + 56))(v1 + v192, 1, 1, v193);
  v389 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec) = &_swiftEmptyArrayStorage;
  v194 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  v391 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  v195 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  (*(*(v195 - 8) + 56))(v1 + v194, 1, 1, v195);
  v196 = v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  v392 = v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  *v196 = 0;
  *(v196 + 4) = 1;
  v393 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert) = &_swiftEmptyArrayStorage;
  v197 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte) = 2;
  v198 = v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  v395 = v197;
  v396 = v198;
  *v198 = 0;
  *(v198 + 4) = 1;
  v199 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  v397 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  v200 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  (*(*(v200 - 8) + 56))(v1 + v199, 1, 1, v200);
  v201 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  v399 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  v202 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  (*(*(v202 - 8) + 56))(v1 + v201, 1, 1, v202);
  swift_beginAccess();
  v203 = *(a1 + 16);
  LOBYTE(v201) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v203;
  *(v1 + 24) = v201;
  swift_beginAccess();
  LODWORD(v201) = *(a1 + 28);
  LOBYTE(v203) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 28) = v201;
  *(v1 + 32) = v203;
  swift_beginAccess();
  LOBYTE(v201) = *(a1 + 33);
  swift_beginAccess();
  *(v1 + 33) = v201;
  v204 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  v205 = v343;
  sub_10000A0A4(a1 + v204, v343, &qword_10042BE30, &qword_100393EF0);
  swift_beginAccess();
  sub_10000AD64(v205, v1 + v120, &qword_10042BE30, &qword_100393EF0);
  swift_endAccess();
  v206 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  v207 = v347;
  sub_10000A0A4(a1 + v206, v347, &qword_10042BE38, &qword_100393EF8);
  v208 = v342;
  swift_beginAccess();
  sub_10000AD64(v207, v1 + v208, &qword_10042BE38, &qword_100393EF8);
  swift_endAccess();
  v209 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  v210 = v352;
  sub_10000A0A4(a1 + v209, v352, &qword_10042BE40, &qword_100393F00);
  v211 = v344;
  swift_beginAccess();
  sub_10000AD64(v210, v1 + v211, &qword_10042BE40, &qword_100393F00);
  swift_endAccess();
  v212 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  v213 = v357;
  sub_10000A0A4(a1 + v212, v357, &qword_10042BE48, &qword_100393F08);
  v214 = v345;
  swift_beginAccess();
  sub_10000AD64(v213, v1 + v214, &qword_10042BE48, &qword_100393F08);
  swift_endAccess();
  v215 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  v216 = v361;
  sub_10000A0A4(a1 + v215, v361, &qword_10042BE50, &qword_100393F10);
  v217 = v346;
  swift_beginAccess();
  sub_10000AD64(v216, v1 + v217, &qword_10042BE50, &qword_100393F10);
  swift_endAccess();
  v218 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  v219 = v366;
  sub_10000A0A4(a1 + v218, v366, &qword_10042BE58, &qword_100393F18);
  v220 = v348;
  swift_beginAccess();
  sub_10000AD64(v219, v1 + v220, &qword_10042BE58, &qword_100393F18);
  swift_endAccess();
  v221 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  v222 = v370;
  sub_10000A0A4(a1 + v221, v370, &qword_10042BE60, &qword_100393F20);
  v223 = v349;
  swift_beginAccess();
  sub_10000AD64(v222, v1 + v223, &qword_10042BE60, &qword_100393F20);
  swift_endAccess();
  v224 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  v225 = v375;
  sub_10000A0A4(a1 + v224, v375, &qword_10042BE68, &qword_100393F28);
  v226 = v350;
  swift_beginAccess();
  sub_10000AD64(v225, v1 + v226, &qword_10042BE68, &qword_100393F28);
  swift_endAccess();
  v227 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  v228 = v378;
  sub_10000A0A4(a1 + v227, v378, &qword_10042BE70, &qword_100393F30);
  v229 = v351;
  swift_beginAccess();
  sub_10000AD64(v228, v1 + v229, &qword_10042BE70, &qword_100393F30);
  swift_endAccess();
  v230 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  v231 = v382;
  sub_10000A0A4(a1 + v230, v382, &qword_10042BE78, &qword_100393F38);
  v232 = v353;
  swift_beginAccess();
  sub_10000AD64(v231, v1 + v232, &qword_10042BE78, &qword_100393F38);
  swift_endAccess();
  v233 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  v234 = v386;
  sub_10000A0A4(a1 + v233, v386, &qword_10042BE80, &qword_100393F40);
  v235 = v354;
  swift_beginAccess();
  sub_10000AD64(v234, v1 + v235, &qword_10042BE80, &qword_100393F40);
  swift_endAccess();
  v236 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  v237 = v390;
  sub_10000A0A4(a1 + v236, v390, &qword_10042BE88, &qword_100393F48);
  v238 = v355;
  swift_beginAccess();
  sub_10000AD64(v237, v1 + v238, &qword_10042BE88, &qword_100393F48);
  swift_endAccess();
  v239 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  v240 = v394;
  sub_10000A0A4(a1 + v239, v394, &qword_10042BE90, &qword_100393F50);
  v241 = v356;
  swift_beginAccess();
  sub_10000AD64(v240, v1 + v241, &qword_10042BE90, &qword_100393F50);
  swift_endAccess();
  v242 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  v243 = v398;
  sub_10000A0A4(a1 + v242, v398, &qword_10042BE98, &qword_100393F58);
  v244 = v358;
  swift_beginAccess();
  sub_10000AD64(v243, v1 + v244, &qword_10042BE98, &qword_100393F58);
  swift_endAccess();
  v245 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  v246 = v400;
  sub_10000A0A4(a1 + v245, v400, &qword_10042BEA0, &qword_100393F60);
  v247 = v359;
  swift_beginAccess();
  sub_10000AD64(v246, v1 + v247, &qword_10042BEA0, &qword_100393F60);
  swift_endAccess();
  v248 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  v249 = v401;
  sub_10000A0A4(a1 + v248, v401, &qword_10042BEA8, &qword_100393F68);
  v250 = v360;
  swift_beginAccess();
  sub_10000AD64(v249, v1 + v250, &qword_10042BEA8, &qword_100393F68);
  swift_endAccess();
  v251 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  v252 = v402;
  sub_10000A0A4(a1 + v251, v402, &qword_10042BEB0, &qword_100393F70);
  v253 = v362;
  swift_beginAccess();
  sub_10000AD64(v252, v1 + v253, &qword_10042BEB0, &qword_100393F70);
  swift_endAccess();
  v254 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  v255 = v403;
  sub_10000A0A4(a1 + v254, v403, &qword_10042BEB8, &qword_100393F78);
  v256 = v363;
  swift_beginAccess();
  sub_10000AD64(v255, v1 + v256, &qword_10042BEB8, &qword_100393F78);
  swift_endAccess();
  v257 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  v258 = v404;
  sub_10000A0A4(a1 + v257, v404, &qword_10042BEC0, &qword_100393F80);
  v259 = v364;
  swift_beginAccess();
  sub_10000AD64(v258, v1 + v259, &qword_10042BEC0, &qword_100393F80);
  swift_endAccess();
  v260 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  v261 = v405;
  sub_10000A0A4(a1 + v260, v405, &qword_10042BEC8, &qword_100393F88);
  v262 = v365;
  swift_beginAccess();
  sub_10000AD64(v261, v1 + v262, &qword_10042BEC8, &qword_100393F88);
  swift_endAccess();
  v263 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  v264 = v406;
  sub_10000A0A4(a1 + v263, v406, &qword_10042BED0, &qword_100393F90);
  v265 = v367;
  swift_beginAccess();
  sub_10000AD64(v264, v1 + v265, &qword_10042BED0, &qword_100393F90);
  swift_endAccess();
  v266 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  v267 = v407;
  sub_10000A0A4(a1 + v266, v407, &qword_10042BED8, &qword_100393F98);
  v268 = v368;
  swift_beginAccess();
  sub_10000AD64(v267, v1 + v268, &qword_10042BED8, &qword_100393F98);
  swift_endAccess();
  v269 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  v270 = v408;
  sub_10000A0A4(a1 + v269, v408, &qword_10042BEE0, &qword_100393FA0);
  v271 = v369;
  swift_beginAccess();
  sub_10000AD64(v270, v1 + v271, &qword_10042BEE0, &qword_100393FA0);
  swift_endAccess();
  v272 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  v273 = v409;
  sub_10000A0A4(a1 + v272, v409, &qword_10042BEE8, &qword_100393FA8);
  v274 = v371;
  swift_beginAccess();
  sub_10000AD64(v273, v1 + v274, &qword_10042BEE8, &qword_100393FA8);
  swift_endAccess();
  v275 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  v276 = v410;
  sub_10000A0A4(a1 + v275, v410, &qword_10042BEF0, &qword_100393FB0);
  v277 = v372;
  swift_beginAccess();
  sub_10000AD64(v276, v1 + v277, &qword_10042BEF0, &qword_100393FB0);
  swift_endAccess();
  v278 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  v279 = v411;
  sub_10000A0A4(a1 + v278, v411, &qword_10042BEF8, &qword_100393FB8);
  v280 = v373;
  swift_beginAccess();
  sub_10000AD64(v279, v1 + v280, &qword_10042BEF8, &qword_100393FB8);
  swift_endAccess();
  v281 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  v282 = v412;
  sub_10000A0A4(a1 + v281, v412, &qword_10042BF00, &qword_100393FC0);
  v283 = v374;
  swift_beginAccess();
  sub_10000AD64(v282, v1 + v283, &qword_10042BF00, &qword_100393FC0);
  swift_endAccess();
  v284 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  v285 = v413;
  sub_10000A0A4(a1 + v284, v413, &qword_10042BF08, &qword_100393FC8);
  v286 = v376;
  swift_beginAccess();
  sub_10000AD64(v285, v1 + v286, &qword_10042BF08, &qword_100393FC8);
  swift_endAccess();
  v287 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  v288 = v414;
  sub_10000A0A4(a1 + v287, v414, &qword_10042BF10, &qword_100393FD0);
  v289 = v377;
  swift_beginAccess();
  sub_10000AD64(v288, v1 + v289, &qword_10042BF10, &qword_100393FD0);
  swift_endAccess();
  v290 = (a1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
  swift_beginAccess();
  v292 = *v290;
  v291 = v290[1];
  swift_beginAccess();
  v293 = *v178;
  v294 = v178[1];
  *v178 = v292;
  v178[1] = v291;
  sub_10000BE4C(v292, v291);
  sub_10000CA64(v293, v294);
  v295 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  v296 = v415;
  sub_10000A0A4(a1 + v295, v415, &qword_10042BF18, &qword_100393FD8);
  v297 = v379;
  swift_beginAccess();
  sub_10000AD64(v296, v1 + v297, &qword_10042BF18, &qword_100393FD8);
  swift_endAccess();
  v298 = a1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  swift_beginAccess();
  LODWORD(v292) = *v298;
  LOBYTE(v298) = *(v298 + 4);
  v299 = v380;
  swift_beginAccess();
  *v299 = v292;
  *(v299 + 4) = v298;
  v300 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  v301 = v416;
  sub_10000A0A4(a1 + v300, v416, &qword_10042BF20, &qword_100393FE0);
  v302 = v381;
  swift_beginAccess();
  sub_10000AD64(v301, v1 + v302, &qword_10042BF20, &qword_100393FE0);
  swift_endAccess();
  v303 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  v304 = v417;
  sub_10000A0A4(a1 + v303, v417, &qword_10042BF28, &qword_100393FE8);
  v305 = v383;
  swift_beginAccess();
  sub_10000AD64(v304, v1 + v305, &qword_10042BF28, &qword_100393FE8);
  swift_endAccess();
  v306 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  v307 = v418;
  sub_10000A0A4(a1 + v306, v418, &qword_10042BF30, &qword_100393FF0);
  v308 = v384;
  swift_beginAccess();
  sub_10000AD64(v307, v1 + v308, &qword_10042BF30, &qword_100393FF0);
  swift_endAccess();
  v309 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  v310 = v419;
  sub_10000A0A4(a1 + v309, v419, &qword_10042BF38, &qword_100393FF8);
  v311 = v385;
  swift_beginAccess();
  sub_10000AD64(v310, v1 + v311, &qword_10042BF38, &qword_100393FF8);
  swift_endAccess();
  v312 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  v313 = v420;
  sub_10000A0A4(a1 + v312, v420, &qword_10042BF40, &qword_100394000);
  v314 = v387;
  swift_beginAccess();
  sub_10000AD64(v313, v1 + v314, &qword_10042BF40, &qword_100394000);
  swift_endAccess();
  v315 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  v316 = v421;
  sub_10000A0A4(a1 + v315, v421, &qword_10042BF48, &qword_100394008);
  v317 = v388;
  swift_beginAccess();
  sub_10000AD64(v316, v1 + v317, &qword_10042BF48, &qword_100394008);
  swift_endAccess();
  v318 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
  swift_beginAccess();
  v319 = *(a1 + v318);
  v320 = v389;
  swift_beginAccess();
  v321 = *(v1 + v320);
  *(v1 + v320) = v319;

  v322 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  v323 = v422;
  sub_10000A0A4(a1 + v322, v422, &qword_10042BF50, &qword_100394010);
  v324 = v391;
  swift_beginAccess();
  sub_10000AD64(v323, v1 + v324, &qword_10042BF50, &qword_100394010);
  swift_endAccess();
  v325 = a1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  swift_beginAccess();
  LODWORD(v321) = *v325;
  LOBYTE(v325) = *(v325 + 4);
  v326 = v392;
  swift_beginAccess();
  *v326 = v321;
  *(v326 + 4) = v325;
  v327 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
  swift_beginAccess();
  v328 = *(a1 + v327);
  v329 = v393;
  swift_beginAccess();
  v330 = *(v1 + v329);
  *(v1 + v329) = v328;

  v331 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  LOBYTE(v331) = *(a1 + v331);
  v332 = v395;
  swift_beginAccess();
  *(v1 + v332) = v331;
  v333 = a1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  swift_beginAccess();
  LODWORD(v332) = *v333;
  LOBYTE(v333) = *(v333 + 4);
  v334 = v396;
  swift_beginAccess();
  *v334 = v332;
  *(v334 + 4) = v333;
  v335 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  v336 = v423;
  sub_10000A0A4(a1 + v335, v423, &qword_10042BF58, &qword_100394018);
  v337 = v397;
  swift_beginAccess();
  sub_10000AD64(v336, v1 + v337, &qword_10042BF58, &qword_100394018);
  swift_endAccess();
  v338 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  v339 = v424;
  sub_10000A0A4(a1 + v338, v424, &qword_10042BF60, &qword_100394020);

  v340 = v399;
  swift_beginAccess();
  sub_10000AD64(v339, v1 + v340, &qword_10042BF60, &qword_100394020);
  swift_endAccess();
  return v1;
}

uint64_t sub_1002C5D88()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition, &qword_10042BE30, &qword_100393EF0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime, &qword_10042BE38, &qword_100393EF8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure, &qword_10042BE40, &qword_100393F00);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel, &qword_10042BE48, &qword_100393F08);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro, &qword_10042BE50, &qword_100393F10);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem, &qword_10042BE58, &qword_100393F18);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector, &qword_10042BE60, &qword_100393F20);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext, &qword_10042BE68, &qword_100393F28);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState, &qword_10042BE70, &qword_100393F30);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment, &qword_10042BE78, &qword_100393F38);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint, &qword_10042BE80, &qword_100393F40);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity, &qword_10042BE88, &qword_100393F48);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile, &qword_10042BE90, &qword_100393F50);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile, &qword_10042BE98, &qword_100393F58);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist, &qword_10042BEA0, &qword_100393F60);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData, &qword_10042BEA8, &qword_100393F68);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport, &qword_10042BEB0, &qword_100393F70);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler, &qword_10042BEB8, &qword_100393F78);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode, &qword_10042BEC0, &qword_100393F80);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations, &qword_10042BEC8, &qword_100393F88);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling, &qword_10042BED0, &qword_100393F90);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent, &qword_10042BED8, &qword_100393F98);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage, &qword_10042BEE0, &qword_100393FA0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo, &qword_10042BEE8, &qword_100393FA8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext, &qword_10042BEF0, &qword_100393FB0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState, &qword_10042BEF8, &qword_100393FB8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable, &qword_10042BF00, &qword_100393FC0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile, &qword_10042BF08, &qword_100393FC8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig, &qword_10042BF10, &qword_100393FD0);
  sub_10000CA64(*(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest), *(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest + 8));
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest, &qword_10042BF18, &qword_100393FD8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime, &qword_10042BF20, &qword_100393FE0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation, &qword_10042BF28, &qword_100393FE8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel, &qword_10042BF30, &qword_100393FF0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance, &qword_10042BF38, &qword_100393FF8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance, &qword_10042BF40, &qword_100394000);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext, &qword_10042BF48, &qword_100394008);
  v1 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID, &qword_10042BF50, &qword_100394010);
  v2 = *(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext, &qword_10042BF58, &qword_100394018);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList, &qword_10042BF60, &qword_100394020);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1002C62F0()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1002C2FB8(v6);
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
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        goto LABEL_52;
      case 2:
      case 61:
      case 72:
      case 75:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_52;
      case 3:
        swift_beginAccess();
        sub_100303344();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_52;
      case 4:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
        v13 = &unk_10042C308;
        v14 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition;
        goto LABEL_51;
      case 5:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
        v13 = &unk_10042C320;
        v14 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime;
        goto LABEL_51;
      case 6:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
        v13 = &unk_10042C368;
        v14 = type metadata accessor for Proto_Gpsd_SetAssistancePressure;
        goto LABEL_51;
      case 7:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
        v13 = &unk_10042C380;
        v14 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel;
        goto LABEL_51;
      case 8:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
        v13 = &unk_10042C398;
        v14 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro;
        goto LABEL_51;
      case 9:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
        v13 = &unk_10042C3B0;
        v14 = type metadata accessor for Proto_Gpsd_SetAssistanceDem;
        goto LABEL_51;
      case 10:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
        v13 = &unk_10042C3C8;
        v14 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector;
        goto LABEL_51;
      case 11:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
        v13 = &unk_10042C3E0;
        v14 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext;
        goto LABEL_51;
      case 12:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
        v13 = &unk_10042C3F8;
        v14 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState;
        goto LABEL_51;
      case 13:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
        v13 = &unk_10042C410;
        v14 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment;
        goto LABEL_51;
      case 14:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
        v13 = &unk_10042C428;
        v14 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint;
        goto LABEL_51;
      case 15:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
        v13 = &unk_10042C440;
        v14 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity;
        goto LABEL_51;
      case 16:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
        v13 = &unk_10042C2A8;
        v14 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile;
        goto LABEL_51;
      case 17:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
        v13 = &unk_10042C2C0;
        v14 = type metadata accessor for Proto_Gpsd_InjectRtiFile;
        goto LABEL_51;
      case 18:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
        v13 = &unk_10042C2F0;
        v14 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist;
        goto LABEL_51;
      case 19:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
        v13 = &unk_10042C338;
        v14 = type metadata accessor for Proto_Gpsd_DeleteGnssData;
        goto LABEL_51;
      case 20:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
        v13 = &unk_10042C290;
        v14 = type metadata accessor for Proto_Gpsd_SetPvtmReport;
        goto LABEL_51;
      case 21:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
        v13 = &unk_10042C350;
        v14 = type metadata accessor for Proto_Gpsd_SetNmeaHandler;
        goto LABEL_51;
      case 22:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
        v13 = &unk_10042C470;
        v14 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode;
        goto LABEL_51;
      case 23:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
        v13 = &unk_10042C488;
        v14 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations;
        goto LABEL_51;
      case 24:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
        v13 = &unk_10042C4B8;
        v14 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling;
        goto LABEL_51;
      case 25:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_TerminationImminent(0);
        v13 = &unk_10042C4D0;
        v14 = type metadata accessor for Proto_Gpsd_TerminationImminent;
        goto LABEL_51;
      case 26:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_ExitMessage(0);
        v13 = &unk_10042C4E8;
        v14 = type metadata accessor for Proto_Gpsd_ExitMessage;
        goto LABEL_51;
      case 27:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_LtlInfo(0);
        v13 = &unk_10042C558;
        v14 = type metadata accessor for Proto_Gpsd_LtlInfo;
        goto LABEL_51;
      case 28:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_StartContext(0);
        v13 = &unk_10042C608;
        v14 = type metadata accessor for Proto_Gpsd_StartContext;
        goto LABEL_51;
      case 30:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
        v13 = &unk_10042C458;
        v14 = type metadata accessor for Proto_Gpsd_SetThermalRiskState;
        goto LABEL_51;
      case 31:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
        v13 = &unk_10042C4A0;
        v14 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable;
        goto LABEL_51;
      case 32:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
        v13 = &unk_10042C2D8;
        v14 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile;
        goto LABEL_51;
      case 50:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
        v13 = &qword_1004251D8;
        v14 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig;
        goto LABEL_51;
      case 51:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        goto LABEL_52;
      case 60:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
        v13 = &qword_100424C58;
        v14 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest;
        goto LABEL_51;
      case 62:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
        v13 = &qword_100425150;
        v14 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime;
        goto LABEL_51;
      case 63:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
        v13 = &qword_100425168;
        v14 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation;
        goto LABEL_51;
      case 64:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
        v13 = &qword_100425190;
        v14 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel;
        goto LABEL_51;
      case 65:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
        v13 = &qword_100425200;
        v14 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance;
        goto LABEL_51;
      case 66:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
        v13 = &qword_100425230;
        v14 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance;
        goto LABEL_51;
      case 67:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
        v13 = &qword_1004251C0;
        v14 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext;
        goto LABEL_51;
      case 70:
      case 73:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
        goto LABEL_52;
      case 71:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
        v13 = &qword_100424AF8;
        v14 = type metadata accessor for Proto_Gnss_Emergency_LocationId;
        goto LABEL_51;
      case 74:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_52;
      case 76:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
        v13 = &qword_100424BC8;
        v14 = type metadata accessor for Proto_Gnss_Emergency_SuplContext;
        goto LABEL_51;
      case 77:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
        v13 = &qword_100424B38;
        v14 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList;
LABEL_51:
        sub_1002FB284(v13, v14);
        v1 = 0;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_52:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1002C73BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  result = swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  if (!v4)
  {
    swift_beginAccess();
    if ((*(v9 + 32) & 1) == 0)
    {
      v12 = *(v9 + 28);
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    swift_beginAccess();
    if (*(v9 + 33) != 62)
    {
      v15 = *(v9 + 33);
      sub_100303344();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_1002C7B70(v9, a1, a2, a3);
    sub_1002C7D98(v9, a1, a2, a3);
    sub_1002C7FC0(v9, a1, a2, a3);
    sub_1002C81E8(v9, a1, a2, a3);
    sub_1002C8410(v9, a1, a2, a3);
    sub_1002C8638(v9, a1, a2, a3);
    sub_1002C8860(v9, a1, a2, a3);
    sub_1002C8A88(v9, a1, a2, a3);
    sub_1002C8CB0(v9, a1, a2, a3);
    sub_1002C8ED8(v9, a1, a2, a3);
    sub_1002C9100(v9, a1, a2, a3);
    sub_1002C9328(v9, a1, a2, a3);
    sub_1002C9550(v9, a1, a2, a3);
    sub_1002C9778(v9, a1, a2, a3);
    sub_1002C99A0(v9, a1, a2, a3);
    sub_1002C9BC8(v9, a1, a2, a3);
    sub_1002C9DF0(v9, a1, a2, a3);
    sub_1002CA018(v9, a1, a2, a3);
    sub_1002CA240(v9, a1, a2, a3);
    sub_1002CA468(v9, a1, a2, a3);
    sub_1002CA690(v9, a1, a2, a3);
    sub_1002CA8B8(v9, a1, a2, a3);
    sub_1002CAAE0(v9, a1, a2, a3);
    sub_1002CAD08(v9, a1, a2, a3);
    sub_1002CAF30(v9, a1, a2, a3);
    sub_1002CB158(v9, a1, a2, a3);
    sub_1002CB380(v9, a1, a2, a3);
    sub_1002CB5A8(v9, a1, a2, a3);
    sub_1002CB7D0(v9, a1, a2, a3);
    sub_1002DD444(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
    sub_1002CB9F8(v9, a1, a2, a3);
    sub_1002DE4C0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID);
    sub_1002CBC20(v9, a1, a2, a3);
    sub_1002CBE48(v9, a1, a2, a3);
    sub_1002CC070(v9, a1, a2, a3);
    sub_1002CC298(v9, a1, a2, a3);
    sub_1002CC4C0(v9, a1, a2, a3);
    sub_1002CC6E8(v9, a1, a2, a3);
    v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
    swift_beginAccess();
    if (*(*(v9 + v13) + 16))
    {

      dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
    }

    sub_1002CC910(v9, a1, a2, a3);
    sub_1002DE4C0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex);
    v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
    swift_beginAccess();
    if (*(*(v9 + v14) + 16))
    {

      dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
    }

    sub_1002CCB38(v9);
    sub_1002DE4C0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance);
    sub_1002CCBC8(v9, a1, a2, a3);
    sub_1002CCDF0(v9, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1002C7B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE30, &qword_100393EF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE30, &qword_100393EF0);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  sub_1002FB284(&qword_10042C308, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
}

uint64_t sub_1002C7D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE38, &qword_100393EF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE38, &qword_100393EF8);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  sub_1002FB284(&qword_10042C320, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
}

uint64_t sub_1002C7FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE40, &qword_100393F00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE40, &qword_100393F00);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  sub_1002FB284(&qword_10042C368, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
}

uint64_t sub_1002C81E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE48, &qword_100393F08);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE48, &qword_100393F08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE48, &qword_100393F08);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  sub_1002FB284(&qword_10042C380, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
}

uint64_t sub_1002C8410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE50, &qword_100393F10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE50, &qword_100393F10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE50, &qword_100393F10);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  sub_1002FB284(&qword_10042C398, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
}

uint64_t sub_1002C8638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE58, &qword_100393F18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE58, &qword_100393F18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE58, &qword_100393F18);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  sub_1002FB284(&qword_10042C3B0, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
}

uint64_t sub_1002C8860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE60, &qword_100393F20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE60, &qword_100393F20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE60, &qword_100393F20);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  sub_1002FB284(&qword_10042C3C8, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
}

uint64_t sub_1002C8A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE68, &qword_100393F28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE68, &qword_100393F28);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE68, &qword_100393F28);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  sub_1002FB284(&qword_10042C3E0, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
}

uint64_t sub_1002C8CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE70, &qword_100393F30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE70, &qword_100393F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE70, &qword_100393F30);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  sub_1002FB284(&qword_10042C3F8, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
}

uint64_t sub_1002C8ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE78, &qword_100393F38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE78, &qword_100393F38);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE78, &qword_100393F38);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  sub_1002FB284(&qword_10042C410, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
}

uint64_t sub_1002C9100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE80, &qword_100393F40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE80, &qword_100393F40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE80, &qword_100393F40);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  sub_1002FB284(&qword_10042C428, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
}

uint64_t sub_1002C9328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE88, &qword_100393F48);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE88, &qword_100393F48);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE88, &qword_100393F48);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  sub_1002FB284(&qword_10042C440, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
}

uint64_t sub_1002C9550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE90, &qword_100393F50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE90, &qword_100393F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE90, &qword_100393F50);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  sub_1002FB284(&qword_10042C2A8, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
}

uint64_t sub_1002C9778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE98, &qword_100393F58);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BE98, &qword_100393F58);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BE98, &qword_100393F58);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  sub_1002FB284(&qword_10042C2C0, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_InjectRtiFile);
}

uint64_t sub_1002C99A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEA0, &qword_100393F60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BEA0, &qword_100393F60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BEA0, &qword_100393F60);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  sub_1002FB284(&qword_10042C2F0, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
}

uint64_t sub_1002C9BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEA8, &qword_100393F68);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BEA8, &qword_100393F68);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BEA8, &qword_100393F68);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  sub_1002FB284(&qword_10042C338, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_DeleteGnssData);
}

uint64_t sub_1002C9DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEB0, &qword_100393F70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BEB0, &qword_100393F70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BEB0, &qword_100393F70);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  sub_1002FB284(&qword_10042C290, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetPvtmReport);
}

uint64_t sub_1002CA018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEB8, &qword_100393F78);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BEB8, &qword_100393F78);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BEB8, &qword_100393F78);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  sub_1002FB284(&qword_10042C350, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
}

uint64_t sub_1002CA240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEC0, &qword_100393F80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BEC0, &qword_100393F80);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BEC0, &qword_100393F80);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  sub_1002FB284(&qword_10042C470, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
}

uint64_t sub_1002CA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEC8, &qword_100393F88);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BEC8, &qword_100393F88);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BEC8, &qword_100393F88);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  sub_1002FB284(&qword_10042C488, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
}

uint64_t sub_1002CA690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BED0, &qword_100393F90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BED0, &qword_100393F90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BED0, &qword_100393F90);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  sub_1002FB284(&qword_10042C4B8, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
}

uint64_t sub_1002CA8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BED8, &qword_100393F98);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BED8, &qword_100393F98);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BED8, &qword_100393F98);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_TerminationImminent);
  sub_1002FB284(&qword_10042C4D0, type metadata accessor for Proto_Gpsd_TerminationImminent);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_TerminationImminent);
}

uint64_t sub_1002CAAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEE0, &qword_100393FA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BEE0, &qword_100393FA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BEE0, &qword_100393FA0);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_ExitMessage);
  sub_1002FB284(&qword_10042C4E8, type metadata accessor for Proto_Gpsd_ExitMessage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_ExitMessage);
}

uint64_t sub_1002CAD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEE8, &qword_100393FA8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BEE8, &qword_100393FA8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BEE8, &qword_100393FA8);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_LtlInfo);
  sub_1002FB284(&qword_10042C558, type metadata accessor for Proto_Gpsd_LtlInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_LtlInfo);
}

uint64_t sub_1002CAF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEF0, &qword_100393FB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v10 = *(started - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(started);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BEF0, &qword_100393FB0);
  if ((*(v10 + 48))(v8, 1, started) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BEF0, &qword_100393FB0);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_StartContext);
  sub_1002FB284(&qword_10042C608, type metadata accessor for Proto_Gpsd_StartContext);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_StartContext);
}

uint64_t sub_1002CB158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEF8, &qword_100393FB8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BEF8, &qword_100393FB8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BEF8, &qword_100393FB8);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  sub_1002FB284(&qword_10042C458, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
}

uint64_t sub_1002CB380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF00, &qword_100393FC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF00, &qword_100393FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF00, &qword_100393FC0);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  sub_1002FB284(&qword_10042C4A0, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
}

uint64_t sub_1002CB5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF08, &qword_100393FC8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF08, &qword_100393FC8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF08, &qword_100393FC8);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  sub_1002FB284(&qword_10042C2D8, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
}

uint64_t sub_1002CB7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF10, &qword_100393FD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF10, &qword_100393FD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF10, &qword_100393FD0);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  sub_1002FB284(&qword_1004251D8, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
}

uint64_t sub_1002CB9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF18, &qword_100393FD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF18, &qword_100393FD8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF18, &qword_100393FD8);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  sub_1002FB284(&qword_100424C58, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
}

uint64_t sub_1002CBC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF20, &qword_100393FE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF20, &qword_100393FE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF20, &qword_100393FE0);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  sub_1002FB284(&qword_100425150, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
}

uint64_t sub_1002CBE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF28, &qword_100393FE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF28, &qword_100393FE8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF28, &qword_100393FE8);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_1002FB284(&qword_100425168, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
}

uint64_t sub_1002CC070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF30, &qword_100393FF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF30, &qword_100393FF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF30, &qword_100393FF0);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  sub_1002FB284(&qword_100425190, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
}

uint64_t sub_1002CC298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF38, &qword_100393FF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF38, &qword_100393FF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF38, &qword_100393FF8);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  sub_1002FB284(&qword_100425200, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
}

uint64_t sub_1002CC4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF40, &qword_100394000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF40, &qword_100394000);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF40, &qword_100394000);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  sub_1002FB284(&qword_100425230, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
}

uint64_t sub_1002CC6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF48, &qword_100394008);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF48, &qword_100394008);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF48, &qword_100394008);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  sub_1002FB284(&qword_1004251C0, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
}

uint64_t sub_1002CC910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF50, &qword_100394010);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF50, &qword_100394010);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF50, &qword_100394010);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  sub_1002FB284(&qword_100424AF8, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gnss_Emergency_LocationId);
}

uint64_t sub_1002CCB38(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  result = swift_beginAccess();
  if (*(a1 + v2) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002CCBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF58, &qword_100394018);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF58, &qword_100394018);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF58, &qword_100394018);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  sub_1002FB284(&qword_100424BC8, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
}

uint64_t sub_1002CCDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF60, &qword_100394020);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042BF60, &qword_100394020);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042BF60, &qword_100394020);
  }

  sub_1002F7BE8(v8, v13, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  sub_1002FB284(&qword_100424B38, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v13, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
}

BOOL sub_1002CD05C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v1260 = v2;
  v3 = v1;
  v1166 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v1162 = *(v1166 - 8);
  v4 = *(v1162 + 64);
  __chkstk_darwin(v1166);
  v1165 = &v990 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1161 = sub_100024A2C(&qword_10042ED68, &qword_100398B80);
  v6 = *(*(v1161 - 8) + 64);
  __chkstk_darwin(v1161);
  v1167 = &v990 - v7;
  v8 = sub_100024A2C(&qword_10042BF60, &qword_100394020);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v1164 = &v990 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v1163 = &v990 - v12;
  v1159 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v1156 = *(v1159 - 8);
  v13 = *(v1156 + 64);
  __chkstk_darwin(v1159);
  v1158 = &v990 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1154 = sub_100024A2C(&qword_10042ED70, &qword_100398B88);
  v15 = *(*(v1154 - 8) + 64);
  __chkstk_darwin(v1154);
  v1160 = &v990 - v16;
  v17 = sub_100024A2C(&qword_10042BF58, &qword_100394018);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v1157 = &v990 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v1155 = &v990 - v21;
  v1152 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v1149 = *(v1152 - 8);
  v22 = *(v1149 + 64);
  __chkstk_darwin(v1152);
  v1151 = &v990 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1147 = sub_100024A2C(&qword_10042ED78, &qword_100398B90);
  v24 = *(*(v1147 - 8) + 64);
  __chkstk_darwin(v1147);
  v1153 = &v990 - v25;
  v26 = sub_100024A2C(&qword_10042BF50, &qword_100394010);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v1150 = &v990 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v1148 = &v990 - v30;
  v1145 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v1142 = *(v1145 - 8);
  v31 = *(v1142 + 64);
  __chkstk_darwin(v1145);
  v1144 = &v990 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1140 = sub_100024A2C(&qword_10042ED80, &qword_100398B98);
  v33 = *(*(v1140 - 8) + 64);
  __chkstk_darwin(v1140);
  v1146 = &v990 - v34;
  v35 = sub_100024A2C(&qword_10042BF48, &qword_100394008);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v1143 = &v990 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v1141 = &v990 - v39;
  v1138 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v1135 = *(v1138 - 8);
  v40 = *(v1135 + 64);
  __chkstk_darwin(v1138);
  v1137 = &v990 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1133 = sub_100024A2C(&qword_10042ED88, &qword_100398BA0);
  v42 = *(*(v1133 - 8) + 64);
  __chkstk_darwin(v1133);
  v1139 = &v990 - v43;
  v44 = sub_100024A2C(&qword_10042BF40, &qword_100394000);
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44 - 8);
  v1136 = &v990 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v1134 = &v990 - v48;
  v1131 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v1128 = *(v1131 - 8);
  v49 = *(v1128 + 64);
  __chkstk_darwin(v1131);
  v1130 = &v990 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1126 = sub_100024A2C(&qword_10042ED90, &qword_100398BA8);
  v51 = *(*(v1126 - 8) + 64);
  __chkstk_darwin(v1126);
  v1132 = &v990 - v52;
  v53 = sub_100024A2C(&qword_10042BF38, &qword_100393FF8);
  v54 = *(*(v53 - 8) + 64);
  v55 = __chkstk_darwin(v53 - 8);
  v1129 = &v990 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v1127 = &v990 - v57;
  v1124 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v1121 = *(v1124 - 8);
  v58 = *(v1121 + 64);
  __chkstk_darwin(v1124);
  v1123 = &v990 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1119 = sub_100024A2C(&qword_10042ED98, &qword_100398BB0);
  v60 = *(*(v1119 - 8) + 64);
  __chkstk_darwin(v1119);
  v1125 = &v990 - v61;
  v62 = sub_100024A2C(&qword_10042BF30, &qword_100393FF0);
  v63 = *(*(v62 - 8) + 64);
  v64 = __chkstk_darwin(v62 - 8);
  v1122 = &v990 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v1120 = &v990 - v66;
  v1117 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v1114 = *(v1117 - 8);
  v67 = *(v1114 + 64);
  __chkstk_darwin(v1117);
  v1116 = &v990 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1112 = sub_100024A2C(&qword_10042EDA0, &qword_100398BB8);
  v69 = *(*(v1112 - 8) + 64);
  __chkstk_darwin(v1112);
  v1118 = &v990 - v70;
  v71 = sub_100024A2C(&qword_10042BF28, &qword_100393FE8);
  v72 = *(*(v71 - 8) + 64);
  v73 = __chkstk_darwin(v71 - 8);
  v1115 = &v990 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v1113 = &v990 - v75;
  v1110 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v1107 = *(v1110 - 8);
  v76 = *(v1107 + 64);
  __chkstk_darwin(v1110);
  v1109 = &v990 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1105 = sub_100024A2C(&qword_10042EDA8, &qword_100398BC0);
  v78 = *(*(v1105 - 8) + 64);
  __chkstk_darwin(v1105);
  v1111 = &v990 - v79;
  v80 = sub_100024A2C(&qword_10042BF20, &qword_100393FE0);
  v81 = *(*(v80 - 8) + 64);
  v82 = __chkstk_darwin(v80 - 8);
  v1108 = &v990 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v1106 = &v990 - v84;
  v1103 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  v1100 = *(v1103 - 8);
  v85 = *(v1100 + 64);
  __chkstk_darwin(v1103);
  v1102 = &v990 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1098 = sub_100024A2C(&qword_10042EDB0, &qword_100398BC8);
  v87 = *(*(v1098 - 8) + 64);
  __chkstk_darwin(v1098);
  v1104 = &v990 - v88;
  v89 = sub_100024A2C(&qword_10042BF18, &qword_100393FD8);
  v90 = *(*(v89 - 8) + 64);
  v91 = __chkstk_darwin(v89 - 8);
  v1101 = &v990 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v1099 = &v990 - v93;
  v1096 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v1093 = *(v1096 - 8);
  v94 = *(v1093 + 64);
  __chkstk_darwin(v1096);
  v1095 = &v990 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1091 = sub_100024A2C(&qword_10042EDB8, &qword_100398BD0);
  v96 = *(*(v1091 - 8) + 64);
  __chkstk_darwin(v1091);
  v1097 = &v990 - v97;
  v98 = sub_100024A2C(&qword_10042BF10, &qword_100393FD0);
  v99 = *(*(v98 - 8) + 64);
  v100 = __chkstk_darwin(v98 - 8);
  v1094 = &v990 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v100);
  v1092 = &v990 - v102;
  v1088 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  v1087 = *(v1088 - 8);
  v103 = *(v1087 + 64);
  __chkstk_darwin(v1088);
  v1089 = &v990 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1084 = sub_100024A2C(&qword_10042EDC0, &qword_100398BD8);
  v105 = *(*(v1084 - 8) + 64);
  __chkstk_darwin(v1084);
  v1090 = &v990 - v106;
  v107 = sub_100024A2C(&qword_10042BF08, &qword_100393FC8);
  v108 = *(*(v107 - 8) + 64);
  v109 = __chkstk_darwin(v107 - 8);
  v1086 = &v990 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v109);
  v1085 = &v990 - v111;
  v1082 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  v1080 = *(v1082 - 8);
  v112 = *(v1080 + 64);
  __chkstk_darwin(v1082);
  v1081 = &v990 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1077 = sub_100024A2C(&qword_10042EDC8, &qword_100398BE0);
  v114 = *(*(v1077 - 8) + 64);
  __chkstk_darwin(v1077);
  v1083 = &v990 - v115;
  v116 = sub_100024A2C(&qword_10042BF00, &qword_100393FC0);
  v117 = *(*(v116 - 8) + 64);
  v118 = __chkstk_darwin(v116 - 8);
  v1079 = &v990 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v118);
  v1078 = &v990 - v120;
  v1075 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v1073 = *(v1075 - 8);
  v121 = *(v1073 + 64);
  __chkstk_darwin(v1075);
  v1074 = &v990 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1070 = sub_100024A2C(&qword_10042EDD0, &qword_100398BE8);
  v123 = *(*(v1070 - 8) + 64);
  __chkstk_darwin(v1070);
  v1076 = &v990 - v124;
  v125 = sub_100024A2C(&qword_10042BEF8, &qword_100393FB8);
  v126 = *(*(v125 - 8) + 64);
  v127 = __chkstk_darwin(v125 - 8);
  v1072 = &v990 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v127);
  v1071 = &v990 - v129;
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v1066 = *(started - 8);
  v130 = *(v1066 + 64);
  __chkstk_darwin(started);
  v1067 = &v990 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1063 = sub_100024A2C(&qword_10042EDD8, &qword_100398BF0);
  v132 = *(*(v1063 - 8) + 64);
  __chkstk_darwin(v1063);
  v1069 = &v990 - v133;
  v134 = sub_100024A2C(&qword_10042BEF0, &qword_100393FB0);
  v135 = *(*(v134 - 8) + 64);
  v136 = __chkstk_darwin(v134 - 8);
  v1065 = &v990 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v136);
  v1064 = &v990 - v138;
  v1060 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  v1059 = *(v1060 - 8);
  v139 = *(v1059 + 64);
  __chkstk_darwin(v1060);
  v1061 = &v990 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1056 = sub_100024A2C(&qword_10042EDE0, &qword_100398BF8);
  v141 = *(*(v1056 - 8) + 64);
  __chkstk_darwin(v1056);
  v1062 = &v990 - v142;
  v143 = sub_100024A2C(&qword_10042BEE8, &qword_100393FA8);
  v144 = *(*(v143 - 8) + 64);
  v145 = __chkstk_darwin(v143 - 8);
  v1058 = &v990 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v145);
  v1057 = &v990 - v147;
  v148 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  v1052 = *(v148 - 8);
  v1053 = v148;
  v149 = *(v1052 + 64);
  __chkstk_darwin(v148);
  v1054 = &v990 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1049 = sub_100024A2C(&qword_10042EDE8, &qword_100398C00);
  v151 = *(*(v1049 - 8) + 64);
  __chkstk_darwin(v1049);
  v1055 = &v990 - v152;
  v153 = sub_100024A2C(&qword_10042BEE0, &qword_100393FA0);
  v154 = *(*(v153 - 8) + 64);
  v155 = __chkstk_darwin(v153 - 8);
  v1051 = &v990 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v155);
  v1050 = &v990 - v157;
  v158 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  v1045 = *(v158 - 8);
  v1046 = v158;
  v159 = *(v1045 + 64);
  __chkstk_darwin(v158);
  v1047 = &v990 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1042 = sub_100024A2C(&qword_10042EDF0, &qword_100398C08);
  v161 = *(*(v1042 - 8) + 64);
  __chkstk_darwin(v1042);
  v1048 = &v990 - v162;
  v163 = sub_100024A2C(&qword_10042BED8, &qword_100393F98);
  v164 = *(*(v163 - 8) + 64);
  v165 = __chkstk_darwin(v163 - 8);
  v1044 = &v990 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v165);
  v1043 = &v990 - v167;
  v1040 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  v1038 = *(v1040 - 8);
  v168 = *(v1038 + 64);
  __chkstk_darwin(v1040);
  v1039 = &v990 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1035 = sub_100024A2C(&qword_10042EDF8, &qword_100398C10);
  v170 = *(*(v1035 - 8) + 64);
  __chkstk_darwin(v1035);
  v1041 = &v990 - v171;
  v172 = sub_100024A2C(&qword_10042BED0, &qword_100393F90);
  v173 = *(*(v172 - 8) + 64);
  v174 = __chkstk_darwin(v172 - 8);
  v1037 = &v990 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v174);
  v1036 = &v990 - v176;
  v177 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v1031 = *(v177 - 8);
  v1032 = v177;
  v178 = *(v1031 + 64);
  __chkstk_darwin(v177);
  v1033 = &v990 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1028 = sub_100024A2C(&qword_10042EE00, &qword_100398C18);
  v180 = *(*(v1028 - 8) + 64);
  __chkstk_darwin(v1028);
  v1034 = &v990 - v181;
  v182 = sub_100024A2C(&qword_10042BEC8, &qword_100393F88);
  v183 = *(*(v182 - 8) + 64);
  v184 = __chkstk_darwin(v182 - 8);
  v1030 = &v990 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v184);
  v1029 = &v990 - v186;
  v1026 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v1024 = *(v1026 - 8);
  v187 = *(v1024 + 64);
  __chkstk_darwin(v1026);
  v1025 = &v990 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1021 = sub_100024A2C(&qword_10042EE08, &qword_100398C20);
  v189 = *(*(v1021 - 8) + 64);
  __chkstk_darwin(v1021);
  v1027 = &v990 - v190;
  v191 = sub_100024A2C(&qword_10042BEC0, &qword_100393F80);
  v192 = *(*(v191 - 8) + 64);
  v193 = __chkstk_darwin(v191 - 8);
  v1023 = &v990 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v193);
  v1022 = &v990 - v195;
  v196 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v1017 = *(v196 - 8);
  v1018 = v196;
  v197 = *(v1017 + 64);
  __chkstk_darwin(v196);
  v1019 = &v990 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1014 = sub_100024A2C(&qword_10042EE10, &qword_100398C28);
  v199 = *(*(v1014 - 8) + 64);
  __chkstk_darwin(v1014);
  v1020 = &v990 - v200;
  v201 = sub_100024A2C(&qword_10042BEB8, &qword_100393F78);
  v202 = *(*(v201 - 8) + 64);
  v203 = __chkstk_darwin(v201 - 8);
  v1016 = &v990 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v203);
  v1015 = &v990 - v205;
  v1012 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  v1010 = *(v1012 - 8);
  v206 = *(v1010 + 64);
  __chkstk_darwin(v1012);
  v1011 = &v990 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1007 = sub_100024A2C(&qword_10042EE18, &qword_100398C30);
  v208 = *(*(v1007 - 8) + 64);
  __chkstk_darwin(v1007);
  v1013 = &v990 - v209;
  v210 = sub_100024A2C(&qword_10042BEB0, &qword_100393F70);
  v211 = *(*(v210 - 8) + 64);
  v212 = __chkstk_darwin(v210 - 8);
  v1009 = &v990 - ((v213 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v212);
  v1008 = &v990 - v214;
  v215 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v1003 = *(v215 - 8);
  v1004 = v215;
  v216 = *(v1003 + 64);
  __chkstk_darwin(v215);
  v1005 = &v990 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1000 = sub_100024A2C(&qword_10042EE20, &qword_100398C38);
  v218 = *(*(v1000 - 8) + 64);
  __chkstk_darwin(v1000);
  v1006 = &v990 - v219;
  v220 = sub_100024A2C(&qword_10042BEA8, &qword_100393F68);
  v221 = *(*(v220 - 8) + 64);
  v222 = __chkstk_darwin(v220 - 8);
  v1002 = &v990 - ((v223 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v222);
  v1001 = &v990 - v224;
  v996 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  v994 = *(v996 - 8);
  v225 = *(v994 + 64);
  __chkstk_darwin(v996);
  v998 = (&v990 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0));
  v993 = sub_100024A2C(&qword_10042EE28, &qword_100398C40);
  v227 = *(*(v993 - 8) + 64);
  __chkstk_darwin(v993);
  v999 = &v990 - v228;
  v229 = sub_100024A2C(&qword_10042BEA0, &qword_100393F60);
  v230 = *(*(v229 - 8) + 64);
  v231 = __chkstk_darwin(v229 - 8);
  v997 = (&v990 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v231);
  v995 = &v990 - v233;
  v1174 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  v1171 = *(v1174 - 8);
  v234 = *(v1171 + 64);
  __chkstk_darwin(v1174);
  v992 = &v990 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1169 = sub_100024A2C(&qword_10042EE30, &qword_100398C48);
  v236 = *(*(v1169 - 8) + 64);
  __chkstk_darwin(v1169);
  v1178 = &v990 - v237;
  v238 = sub_100024A2C(&qword_10042BE98, &qword_100393F58);
  v239 = *(*(v238 - 8) + 64);
  v240 = __chkstk_darwin(v238 - 8);
  v1170 = &v990 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v240);
  v1173 = &v990 - v242;
  v1181 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  v1177 = *(v1181 - 8);
  v243 = *(v1177 + 64);
  __chkstk_darwin(v1181);
  v1168 = &v990 - ((v244 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1175 = sub_100024A2C(&qword_10042EE38, &qword_100398C50);
  v245 = *(*(v1175 - 8) + 64);
  __chkstk_darwin(v1175);
  v1185 = &v990 - v246;
  v247 = sub_100024A2C(&qword_10042BE90, &qword_100393F50);
  v248 = *(*(v247 - 8) + 64);
  v249 = __chkstk_darwin(v247 - 8);
  v1176 = &v990 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v249);
  v1180 = &v990 - v251;
  v1188 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v1184 = *(v1188 - 8);
  v252 = *(v1184 + 64);
  __chkstk_darwin(v1188);
  v1172 = &v990 - ((v253 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1182 = sub_100024A2C(&qword_10042EE40, &qword_100398C58);
  v254 = *(*(v1182 - 8) + 64);
  __chkstk_darwin(v1182);
  v1192 = &v990 - v255;
  v256 = sub_100024A2C(&qword_10042BE88, &qword_100393F48);
  v257 = *(*(v256 - 8) + 64);
  v258 = __chkstk_darwin(v256 - 8);
  v1183 = &v990 - ((v259 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v258);
  v1187 = &v990 - v260;
  v1195 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v1191 = *(v1195 - 8);
  v261 = *(v1191 + 64);
  __chkstk_darwin(v1195);
  v1179 = &v990 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1189 = sub_100024A2C(&qword_10042EE48, &qword_100398C60);
  v263 = *(*(v1189 - 8) + 64);
  __chkstk_darwin(v1189);
  v1199 = &v990 - v264;
  v265 = sub_100024A2C(&qword_10042BE80, &qword_100393F40);
  v266 = *(*(v265 - 8) + 64);
  v267 = __chkstk_darwin(v265 - 8);
  v1190 = &v990 - ((v268 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v267);
  v1194 = &v990 - v269;
  v1201 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  v1198 = *(v1201 - 8);
  v270 = *(v1198 + 64);
  __chkstk_darwin(v1201);
  v1186 = &v990 - ((v271 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1196 = sub_100024A2C(&qword_10042EE50, &qword_100398C68);
  v272 = *(*(v1196 - 8) + 64);
  __chkstk_darwin(v1196);
  v1206 = &v990 - v273;
  v274 = sub_100024A2C(&qword_10042BE78, &qword_100393F38);
  v275 = *(*(v274 - 8) + 64);
  v276 = __chkstk_darwin(v274 - 8);
  v1197 = &v990 - ((v277 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v276);
  v1202 = &v990 - v278;
  v1209 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v1205 = *(v1209 - 8);
  v279 = *(v1205 + 64);
  __chkstk_darwin(v1209);
  v1193 = &v990 - ((v280 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1204 = sub_100024A2C(&qword_10042EE58, &qword_100398C70);
  v281 = *(*(v1204 - 8) + 64);
  __chkstk_darwin(v1204);
  v1213 = &v990 - v282;
  v283 = sub_100024A2C(&qword_10042BE70, &qword_100393F30);
  v284 = *(*(v283 - 8) + 64);
  v285 = __chkstk_darwin(v283 - 8);
  v1203 = &v990 - ((v286 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v285);
  v1208 = &v990 - v287;
  v1216 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v1212 = *(v1216 - 8);
  v288 = *(v1212 + 64);
  __chkstk_darwin(v1216);
  v1200 = &v990 - ((v289 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1210 = sub_100024A2C(&qword_10042EE60, &qword_100398C78);
  v290 = *(*(v1210 - 8) + 64);
  __chkstk_darwin(v1210);
  v1222 = &v990 - v291;
  v292 = sub_100024A2C(&qword_10042BE68, &qword_100393F28);
  v293 = *(*(v292 - 8) + 64);
  v294 = __chkstk_darwin(v292 - 8);
  v1211 = &v990 - ((v295 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v294);
  v1217 = &v990 - v296;
  v1220 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v1219 = *(v1220 - 8);
  v297 = *(v1219 + 64);
  __chkstk_darwin(v1220);
  v1207 = &v990 - ((v298 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1218 = sub_100024A2C(&qword_10042EE68, &qword_100398C80);
  v299 = *(*(v1218 - 8) + 64);
  __chkstk_darwin(v1218);
  v1221 = &v990 - v300;
  v301 = sub_100024A2C(&qword_10042BE60, &qword_100393F20);
  v302 = *(*(v301 - 8) + 64);
  v303 = __chkstk_darwin(v301 - 8);
  v1214 = &v990 - ((v304 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v303);
  v1223 = &v990 - v305;
  v1227 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v1226 = *(v1227 - 8);
  v306 = *(v1226 + 64);
  __chkstk_darwin(v1227);
  v1215 = &v990 - ((v307 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1225 = sub_100024A2C(&qword_10042EE70, &qword_100398C88);
  v308 = *(*(v1225 - 8) + 64);
  __chkstk_darwin(v1225);
  v1228 = &v990 - v309;
  v310 = sub_100024A2C(&qword_10042BE58, &qword_100393F18);
  v311 = *(*(v310 - 8) + 64);
  v312 = __chkstk_darwin(v310 - 8);
  v1236 = &v990 - ((v313 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v312);
  v1230 = &v990 - v314;
  v1234 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  v1233 = *(v1234 - 8);
  v315 = *(v1233 + 64);
  __chkstk_darwin(v1234);
  v1224 = (&v990 - ((v316 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1232 = sub_100024A2C(&qword_10042EE78, &qword_100398C90);
  v317 = *(*(v1232 - 8) + 64);
  __chkstk_darwin(v1232);
  v1235 = &v990 - v318;
  v319 = sub_100024A2C(&qword_10042BE50, &qword_100393F10);
  v320 = *(*(v319 - 8) + 64);
  v321 = __chkstk_darwin(v319 - 8);
  v1229 = (&v990 - ((v322 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v321);
  v1256 = &v990 - v323;
  v1241 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  v1240 = *(v1241 - 8);
  v324 = *(v1240 + 64);
  __chkstk_darwin(v1241);
  v1231 = (&v990 - ((v325 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1239 = sub_100024A2C(&qword_10042EE80, &qword_100398C98);
  v326 = *(*(v1239 - 8) + 64);
  __chkstk_darwin(v1239);
  v1242 = &v990 - v327;
  v328 = sub_100024A2C(&qword_10042BE48, &qword_100393F08);
  v329 = *(*(v328 - 8) + 64);
  v330 = __chkstk_darwin(v328 - 8);
  v1237 = (&v990 - ((v331 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v330);
  v1243 = &v990 - v332;
  v1248 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  v1247 = *(v1248 - 8);
  v333 = *(v1247 + 64);
  __chkstk_darwin(v1248);
  v1238 = (&v990 - ((v334 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1246 = sub_100024A2C(&qword_10042EE88, &qword_100398CA0);
  v335 = *(*(v1246 - 8) + 64);
  __chkstk_darwin(v1246);
  v1249 = &v990 - v336;
  v337 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  v338 = *(*(v337 - 8) + 64);
  v339 = __chkstk_darwin(v337 - 8);
  v1244 = (&v990 - ((v340 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v339);
  v1255 = &v990 - v341;
  v1253 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v1252 = *(v1253 - 8);
  v342 = *(v1252 + 64);
  __chkstk_darwin(v1253);
  v1245 = &v990 - ((v343 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1251 = sub_100024A2C(&qword_10042EE90, &qword_100398CA8);
  v344 = *(*(v1251 - 8) + 64);
  __chkstk_darwin(v1251);
  v1254 = &v990 - v345;
  v346 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  v347 = *(*(v346 - 8) + 64);
  v348 = __chkstk_darwin(v346 - 8);
  v1250 = &v990 - ((v349 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v348);
  v1257 = &v990 - v350;
  v351 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v1258 = *(v351 - 8);
  v352 = *(v1258 + 64);
  __chkstk_darwin(v351);
  v354 = &v990 - ((v353 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = sub_100024A2C(&qword_10042EE98, &qword_100398CB0);
  v356 = *(*(v355 - 8) + 64);
  __chkstk_darwin(v355);
  v358 = &v990 - v357;
  v359 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  v360 = *(*(v359 - 8) + 64);
  v361 = __chkstk_darwin(v359 - 8);
  v363 = &v990 - ((v362 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v361);
  v365 = &v990 - v364;
  swift_beginAccess();
  v366 = *(v3 + 16);
  v1259 = v3;
  v367 = *(v3 + 24);
  v368 = v1260;
  swift_beginAccess();
  v369 = *(v368 + 24);
  if (v367)
  {
    if (!*(v368 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v366 != *(v368 + 16))
    {
      v369 = 1;
    }

    if (v369)
    {
      return 0;
    }
  }

  v370 = v1259;
  swift_beginAccess();
  v371 = *(v370 + 28);
  LOBYTE(v370) = *(v370 + 32);
  swift_beginAccess();
  v372 = *(v368 + 32);
  if (v370)
  {
    v373 = v368;
    if (!*(v368 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (v371 != *(v368 + 28))
    {
      v372 = 1;
    }

    v373 = v368;
    if (v372)
    {
      return 0;
    }
  }

  v374 = v1259;
  swift_beginAccess();
  v375 = *(v374 + 33);
  swift_beginAccess();
  v376 = *(v373 + 33);
  if (v375 == 62)
  {
    if (v376 != 62)
    {
      return 0;
    }
  }

  else if (v376 == 62 || qword_100398ED0[v375] != qword_100398ED0[v376])
  {
    return 0;
  }

  v377 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000A0A4(v374 + v377, v365, &qword_10042BE30, &qword_100393EF0);
  v378 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  v379 = *(v355 + 48);
  sub_10000A0A4(v365, v358, &qword_10042BE30, &qword_100393EF0);
  v380 = v1260 + v378;
  v381 = v1260;
  v991 = v379;
  sub_10000A0A4(v380, &v358[v379], &qword_10042BE30, &qword_100393EF0);
  v382 = *(v1258 + 48);
  if (v382(v358, 1, v351) == 1)
  {

    sub_1000059A8(v365, &qword_10042BE30, &qword_100393EF0);
    if (v382(&v358[v991], 1, v351) == 1)
    {
      sub_1000059A8(v358, &qword_10042BE30, &qword_100393EF0);
      goto LABEL_26;
    }

LABEL_23:
    sub_1000059A8(v358, &qword_10042EE98, &qword_100398CB0);
    goto LABEL_79;
  }

  sub_10000A0A4(v358, v363, &qword_10042BE30, &qword_100393EF0);
  if (v382(&v358[v991], 1, v351) == 1)
  {

    sub_1000059A8(v365, &qword_10042BE30, &qword_100393EF0);
    sub_1002F7CB8(v363, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    goto LABEL_23;
  }

  sub_1002F7BE8(&v358[v991], v354, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);

  v383 = sub_1002FAE30(v363, v354);
  sub_1002F7CB8(v354, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  sub_1000059A8(v365, &qword_10042BE30, &qword_100393EF0);
  sub_1002F7CB8(v363, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  sub_1000059A8(v358, &qword_10042BE30, &qword_100393EF0);
  if ((v383 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_26:
  v384 = v374;
  v385 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  v386 = v1257;
  sub_10000A0A4(v384 + v385, v1257, &qword_10042BE38, &qword_100393EF8);
  v387 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  v388 = *(v1251 + 48);
  v389 = v1254;
  sub_10000A0A4(v386, v1254, &qword_10042BE38, &qword_100393EF8);
  sub_10000A0A4(v381 + v387, v389 + v388, &qword_10042BE38, &qword_100393EF8);
  v390 = *(v1252 + 48);
  v391 = v1253;
  if (v390(v389, 1, v1253) == 1)
  {
    sub_1000059A8(v386, &qword_10042BE38, &qword_100393EF8);
    v392 = v390(v389 + v388, 1, v391);
    v393 = v1256;
    v394 = v1255;
    if (v392 == 1)
    {
      sub_1000059A8(v389, &qword_10042BE38, &qword_100393EF8);
      goto LABEL_33;
    }

LABEL_31:
    v397 = &qword_10042EE90;
    v398 = &qword_100398CA8;
LABEL_77:
    v454 = v389;
    goto LABEL_78;
  }

  v395 = v1250;
  sub_10000A0A4(v389, v1250, &qword_10042BE38, &qword_100393EF8);
  v396 = v390(v389 + v388, 1, v391);
  v393 = v1256;
  v394 = v1255;
  if (v396 == 1)
  {
    sub_1000059A8(v1257, &qword_10042BE38, &qword_100393EF8);
    sub_1002F7CB8(v395, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    goto LABEL_31;
  }

  v399 = v389 + v388;
  v400 = v1245;
  sub_1002F7BE8(v399, v1245, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  v401 = sub_1002F8D90(v395, v400);
  sub_1002F7CB8(v400, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  sub_1000059A8(v1257, &qword_10042BE38, &qword_100393EF8);
  sub_1002F7CB8(v395, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  v381 = v1260;
  sub_1000059A8(v389, &qword_10042BE38, &qword_100393EF8);
  if ((v401 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_33:
  v402 = v393;
  v403 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  v404 = v1259;
  swift_beginAccess();
  sub_10000A0A4(v404 + v403, v394, &qword_10042BE40, &qword_100393F00);
  v405 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  v406 = *(v1246 + 48);
  v389 = v1249;
  sub_10000A0A4(v394, v1249, &qword_10042BE40, &qword_100393F00);
  sub_10000A0A4(v381 + v405, v389 + v406, &qword_10042BE40, &qword_100393F00);
  v407 = *(v1247 + 48);
  v408 = v1248;
  if (v407(v389, 1, v1248) == 1)
  {
    sub_1000059A8(v394, &qword_10042BE40, &qword_100393F00);
    if (v407(v389 + v406, 1, v408) == 1)
    {
      sub_1000059A8(v389, &qword_10042BE40, &qword_100393F00);
      goto LABEL_36;
    }

    goto LABEL_47;
  }

  v434 = v1244;
  sub_10000A0A4(v389, v1244, &qword_10042BE40, &qword_100393F00);
  if (v407(v389 + v406, 1, v408) == 1)
  {
    sub_1000059A8(v394, &qword_10042BE40, &qword_100393F00);
    sub_1002F7CB8(v434, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
LABEL_47:
    v397 = &qword_10042EE88;
    v398 = &qword_100398CA0;
    goto LABEL_77;
  }

  v435 = v389 + v406;
  v436 = v1238;
  sub_1002F7BE8(v435, v1238, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  if ((sub_1002F7284(*v434, *v436) & 1) == 0)
  {
    v440 = type metadata accessor for Proto_Gpsd_SetAssistancePressure;
    sub_1002F7CB8(v436, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
    v441 = &qword_10042BE40;
    v442 = &qword_100393F00;
    sub_1000059A8(v394, &qword_10042BE40, &qword_100393F00);
    v443 = v434;
LABEL_69:
    sub_1002F7CB8(v443, v440);
    v454 = v389;
    v397 = v441;
    v398 = v442;
LABEL_78:
    sub_1000059A8(v454, v397, v398);
    goto LABEL_79;
  }

  v437 = *(v408 + 20);
  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v438 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v436, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  sub_1000059A8(v394, &qword_10042BE40, &qword_100393F00);
  sub_1002F7CB8(v434, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  sub_1000059A8(v389, &qword_10042BE40, &qword_100393F00);
  v402 = v1256;
  if ((v438 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_36:
  v409 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  v410 = v1259;
  swift_beginAccess();
  v411 = v1243;
  sub_10000A0A4(v410 + v409, v1243, &qword_10042BE48, &qword_100393F08);
  v412 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  v413 = *(v1239 + 48);
  v389 = v1242;
  sub_10000A0A4(v411, v1242, &qword_10042BE48, &qword_100393F08);
  sub_10000A0A4(v381 + v412, v389 + v413, &qword_10042BE48, &qword_100393F08);
  v414 = *(v1240 + 48);
  v415 = v1241;
  if (v414(v389, 1, v1241) == 1)
  {
    sub_1000059A8(v411, &qword_10042BE48, &qword_100393F08);
    if (v414(v389 + v413, 1, v415) == 1)
    {
      sub_1000059A8(v389, &qword_10042BE48, &qword_100393F08);
      goto LABEL_39;
    }

    goto LABEL_53;
  }

  v439 = v1237;
  sub_10000A0A4(v389, v1237, &qword_10042BE48, &qword_100393F08);
  if (v414(v389 + v413, 1, v415) == 1)
  {
    sub_1000059A8(v1243, &qword_10042BE48, &qword_100393F08);
    sub_1002F7CB8(v439, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
LABEL_53:
    v397 = &qword_10042EE80;
    v398 = &qword_100398C98;
    goto LABEL_77;
  }

  v444 = v389 + v413;
  v445 = v1231;
  sub_1002F7BE8(v444, v1231, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  if ((sub_1002F7674(*v439, *v445) & 1) == 0)
  {
    v440 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel;
    sub_1002F7CB8(v445, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
    v441 = &qword_10042BE48;
    v442 = &qword_100393F08;
    sub_1000059A8(v1243, &qword_10042BE48, &qword_100393F08);
    v443 = v439;
    goto LABEL_69;
  }

  v446 = *(v415 + 20);
  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v447 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v445, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  sub_1000059A8(v1243, &qword_10042BE48, &qword_100393F08);
  sub_1002F7CB8(v439, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  sub_1000059A8(v389, &qword_10042BE48, &qword_100393F08);
  if ((v447 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_39:
  v416 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  v417 = v1259;
  swift_beginAccess();
  sub_10000A0A4(v417 + v416, v402, &qword_10042BE50, &qword_100393F10);
  v418 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  v419 = *(v1232 + 48);
  v389 = v1235;
  sub_10000A0A4(v402, v1235, &qword_10042BE50, &qword_100393F10);
  sub_10000A0A4(v381 + v418, v389 + v419, &qword_10042BE50, &qword_100393F10);
  v420 = *(v1233 + 48);
  v421 = v1234;
  if (v420(v389, 1, v1234) == 1)
  {
    sub_1000059A8(v402, &qword_10042BE50, &qword_100393F10);
    v422 = v420(v389 + v419, 1, v421);
    v423 = v1236;
    if (v422 == 1)
    {
      sub_1000059A8(v389, &qword_10042BE50, &qword_100393F10);
      goto LABEL_42;
    }

    goto LABEL_60;
  }

  v448 = v1229;
  sub_10000A0A4(v389, v1229, &qword_10042BE50, &qword_100393F10);
  v449 = v420(v389 + v419, 1, v421);
  v423 = v1236;
  if (v449 == 1)
  {
    sub_1000059A8(v402, &qword_10042BE50, &qword_100393F10);
    sub_1002F7CB8(v448, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
LABEL_60:
    v397 = &qword_10042EE78;
    v398 = &qword_100398C90;
    goto LABEL_77;
  }

  v450 = v389 + v419;
  v451 = v1224;
  sub_1002F7BE8(v450, v1224, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  if ((sub_1002F7674(*v448, *v451) & 1) == 0)
  {
    v440 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro;
    sub_1002F7CB8(v451, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
    v441 = &qword_10042BE50;
    v442 = &qword_100393F10;
    sub_1000059A8(v402, &qword_10042BE50, &qword_100393F10);
    v443 = v448;
    goto LABEL_69;
  }

  v452 = *(v421 + 20);
  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v453 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v451, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  sub_1000059A8(v402, &qword_10042BE50, &qword_100393F10);
  sub_1002F7CB8(v448, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  sub_1000059A8(v389, &qword_10042BE50, &qword_100393F10);
  if ((v453 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_42:
  v424 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  v425 = v1259;
  swift_beginAccess();
  v426 = v425 + v424;
  v427 = v1230;
  sub_10000A0A4(v426, v1230, &qword_10042BE58, &qword_100393F18);
  v428 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  v429 = *(v1225 + 48);
  v430 = v427;
  v389 = v1228;
  sub_10000A0A4(v430, v1228, &qword_10042BE58, &qword_100393F18);
  sub_10000A0A4(v381 + v428, v389 + v429, &qword_10042BE58, &qword_100393F18);
  v431 = *(v1226 + 48);
  v432 = v1227;
  if (v431(v389, 1, v1227) == 1)
  {
    sub_1000059A8(v1230, &qword_10042BE58, &qword_100393F18);
    if (v431(v389 + v429, 1, v432) == 1)
    {
      sub_1000059A8(v389, &qword_10042BE58, &qword_100393F18);
      v433 = v1223;
      goto LABEL_71;
    }

    goto LABEL_67;
  }

  sub_10000A0A4(v389, v423, &qword_10042BE58, &qword_100393F18);
  if (v431(v389 + v429, 1, v432) == 1)
  {
    sub_1000059A8(v1230, &qword_10042BE58, &qword_100393F18);
    sub_1002F7CB8(v423, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
LABEL_67:
    v397 = &qword_10042EE70;
    v398 = &qword_100398C88;
    goto LABEL_77;
  }

  v455 = v389 + v429;
  v456 = v1215;
  sub_1002F7BE8(v455, v1215, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  v457 = sub_1002F97AC(v423, v456, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  sub_1002F7CB8(v456, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  sub_1000059A8(v1230, &qword_10042BE58, &qword_100393F18);
  sub_1002F7CB8(v423, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  sub_1000059A8(v389, &qword_10042BE58, &qword_100393F18);
  v433 = v1223;
  if ((v457 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_71:
  v458 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  v459 = v1259;
  swift_beginAccess();
  sub_10000A0A4(v459 + v458, v433, &qword_10042BE60, &qword_100393F20);
  v460 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  v461 = *(v1218 + 48);
  v389 = v1221;
  sub_10000A0A4(v433, v1221, &qword_10042BE60, &qword_100393F20);
  sub_10000A0A4(v381 + v460, v389 + v461, &qword_10042BE60, &qword_100393F20);
  v462 = *(v1219 + 48);
  v463 = v1220;
  if (v462(v389, 1, v1220) == 1)
  {
    sub_1000059A8(v433, &qword_10042BE60, &qword_100393F20);
    if (v462(v389 + v461, 1, v463) == 1)
    {
      sub_1000059A8(v389, &qword_10042BE60, &qword_100393F20);
      goto LABEL_82;
    }

    goto LABEL_76;
  }

  v464 = v1214;
  sub_10000A0A4(v389, v1214, &qword_10042BE60, &qword_100393F20);
  if (v462(v389 + v461, 1, v463) == 1)
  {
    sub_1000059A8(v433, &qword_10042BE60, &qword_100393F20);
    sub_1002F7CB8(v464, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
LABEL_76:
    v397 = &qword_10042EE68;
    v398 = &qword_100398C80;
    goto LABEL_77;
  }

  v466 = v389 + v461;
  v467 = v1207;
  sub_1002F7BE8(v466, v1207, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  v468 = sub_1002F88AC(v464, v467);
  sub_1002F7CB8(v467, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  sub_1000059A8(v433, &qword_10042BE60, &qword_100393F20);
  sub_1002F7CB8(v464, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  sub_1000059A8(v389, &qword_10042BE60, &qword_100393F20);
  if ((v468 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_82:
  v469 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  v470 = v1259;
  swift_beginAccess();
  v471 = v1217;
  sub_10000A0A4(v470 + v469, v1217, &qword_10042BE68, &qword_100393F28);
  v472 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  v473 = v1260;
  swift_beginAccess();
  v474 = *(v1210 + 48);
  v475 = v471;
  v476 = v1222;
  sub_10000A0A4(v475, v1222, &qword_10042BE68, &qword_100393F28);
  sub_10000A0A4(v473 + v472, v476 + v474, &qword_10042BE68, &qword_100393F28);
  v477 = *(v1212 + 48);
  if (v477(v476, 1, v1216) == 1)
  {
    sub_1000059A8(v1217, &qword_10042BE68, &qword_100393F28);
    if (v477(v1222 + v474, 1, v1216) == 1)
    {
      sub_1000059A8(v1222, &qword_10042BE68, &qword_100393F28);
      goto LABEL_89;
    }

LABEL_87:
    v479 = &qword_10042EE60;
    v480 = &qword_100398C78;
    v481 = v1222;
LABEL_238:
    sub_1000059A8(v481, v479, v480);
    goto LABEL_79;
  }

  v478 = v1222;
  sub_10000A0A4(v1222, v1211, &qword_10042BE68, &qword_100393F28);
  if (v477(v478 + v474, 1, v1216) == 1)
  {
    sub_1000059A8(v1217, &qword_10042BE68, &qword_100393F28);
    sub_1002F7CB8(v1211, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
    goto LABEL_87;
  }

  v482 = v1222;
  v483 = v1222 + v474;
  v484 = v1200;
  sub_1002F7BE8(v483, v1200, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  v485 = v1211;
  v486 = sub_1002F8258(v1211, v484);
  sub_1002F7CB8(v484, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  sub_1000059A8(v1217, &qword_10042BE68, &qword_100393F28);
  sub_1002F7CB8(v485, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  sub_1000059A8(v482, &qword_10042BE68, &qword_100393F28);
  if ((v486 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_89:
  v487 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  v488 = v1259;
  swift_beginAccess();
  v489 = v1208;
  sub_10000A0A4(v488 + v487, v1208, &qword_10042BE70, &qword_100393F30);
  v490 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  v491 = v1260;
  swift_beginAccess();
  v492 = *(v1204 + 48);
  v493 = v489;
  v494 = v1213;
  sub_10000A0A4(v493, v1213, &qword_10042BE70, &qword_100393F30);
  sub_10000A0A4(v491 + v490, v494 + v492, &qword_10042BE70, &qword_100393F30);
  v495 = *(v1205 + 48);
  if (v495(v494, 1, v1209) == 1)
  {
    sub_1000059A8(v1208, &qword_10042BE70, &qword_100393F30);
    if (v495(v1213 + v492, 1, v1209) == 1)
    {
      sub_1000059A8(v1213, &qword_10042BE70, &qword_100393F30);
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  v496 = v1213;
  sub_10000A0A4(v1213, v1203, &qword_10042BE70, &qword_100393F30);
  if (v495(v496 + v492, 1, v1209) == 1)
  {
    sub_1000059A8(v1208, &qword_10042BE70, &qword_100393F30);
    sub_1002F7CB8(v1203, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
LABEL_94:
    v479 = &qword_10042EE58;
    v480 = &qword_100398C70;
    v481 = v1213;
    goto LABEL_238;
  }

  v497 = v1213;
  v498 = v1213 + v492;
  v499 = v1193;
  sub_1002F7BE8(v498, v1193, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  v500 = v1203;
  v501 = sub_1002F8690(v1203, v499);
  sub_1002F7CB8(v499, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  sub_1000059A8(v1208, &qword_10042BE70, &qword_100393F30);
  sub_1002F7CB8(v500, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  sub_1000059A8(v497, &qword_10042BE70, &qword_100393F30);
  if ((v501 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_96:
  v502 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  v503 = v1259;
  swift_beginAccess();
  v504 = v1202;
  sub_10000A0A4(v503 + v502, v1202, &qword_10042BE78, &qword_100393F38);
  v505 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  v506 = v1260;
  swift_beginAccess();
  v507 = *(v1196 + 48);
  v508 = v504;
  v509 = v1206;
  sub_10000A0A4(v508, v1206, &qword_10042BE78, &qword_100393F38);
  sub_10000A0A4(v506 + v505, v509 + v507, &qword_10042BE78, &qword_100393F38);
  v510 = *(v1198 + 48);
  if (v510(v509, 1, v1201) == 1)
  {
    sub_1000059A8(v1202, &qword_10042BE78, &qword_100393F38);
    if (v510(v1206 + v507, 1, v1201) == 1)
    {
      sub_1000059A8(v1206, &qword_10042BE78, &qword_100393F38);
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v511 = v1206;
  sub_10000A0A4(v1206, v1197, &qword_10042BE78, &qword_100393F38);
  if (v510(v511 + v507, 1, v1201) == 1)
  {
    sub_1000059A8(v1202, &qword_10042BE78, &qword_100393F38);
    sub_1002F7CB8(v1197, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
LABEL_101:
    v479 = &qword_10042EE50;
    v480 = &qword_100398C68;
    v481 = v1206;
    goto LABEL_238;
  }

  v512 = v1206;
  v513 = v1206 + v507;
  v514 = v1186;
  sub_1002F7BE8(v513, v1186, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  v515 = v1197;
  v516 = sub_1002F843C(v1197, v514);
  sub_1002F7CB8(v514, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  sub_1000059A8(v1202, &qword_10042BE78, &qword_100393F38);
  sub_1002F7CB8(v515, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  sub_1000059A8(v512, &qword_10042BE78, &qword_100393F38);
  if ((v516 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_103:
  v517 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  v518 = v1259;
  swift_beginAccess();
  v519 = v1194;
  sub_10000A0A4(v518 + v517, v1194, &qword_10042BE80, &qword_100393F40);
  v520 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  v521 = v1260;
  swift_beginAccess();
  v522 = *(v1189 + 48);
  v523 = v519;
  v524 = v1199;
  sub_10000A0A4(v523, v1199, &qword_10042BE80, &qword_100393F40);
  sub_10000A0A4(v521 + v520, v524 + v522, &qword_10042BE80, &qword_100393F40);
  v525 = *(v1191 + 48);
  if (v525(v524, 1, v1195) == 1)
  {
    sub_1000059A8(v1194, &qword_10042BE80, &qword_100393F40);
    if (v525(v1199 + v522, 1, v1195) == 1)
    {
      sub_1000059A8(v1199, &qword_10042BE80, &qword_100393F40);
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  v526 = v1199;
  sub_10000A0A4(v1199, v1190, &qword_10042BE80, &qword_100393F40);
  if (v525(v526 + v522, 1, v1195) == 1)
  {
    sub_1000059A8(v1194, &qword_10042BE80, &qword_100393F40);
    sub_1002F7CB8(v1190, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
LABEL_108:
    v479 = &qword_10042EE48;
    v480 = &qword_100398C60;
    v481 = v1199;
    goto LABEL_238;
  }

  v527 = v1199;
  v528 = v1199 + v522;
  v529 = v1179;
  sub_1002F7BE8(v528, v1179, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  v530 = v1190;
  v531 = sub_1002F852C(v1190, v529);
  sub_1002F7CB8(v529, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  sub_1000059A8(v1194, &qword_10042BE80, &qword_100393F40);
  sub_1002F7CB8(v530, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  sub_1000059A8(v527, &qword_10042BE80, &qword_100393F40);
  if ((v531 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_110:
  v532 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  v533 = v1259;
  swift_beginAccess();
  v534 = v1187;
  sub_10000A0A4(v533 + v532, v1187, &qword_10042BE88, &qword_100393F48);
  v535 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  v536 = v1260;
  swift_beginAccess();
  v537 = *(v1182 + 48);
  v538 = v534;
  v539 = v1192;
  sub_10000A0A4(v538, v1192, &qword_10042BE88, &qword_100393F48);
  sub_10000A0A4(v536 + v535, v539 + v537, &qword_10042BE88, &qword_100393F48);
  v540 = *(v1184 + 48);
  if (v540(v539, 1, v1188) == 1)
  {
    sub_1000059A8(v1187, &qword_10042BE88, &qword_100393F48);
    if (v540(v1192 + v537, 1, v1188) == 1)
    {
      sub_1000059A8(v1192, &qword_10042BE88, &qword_100393F48);
      goto LABEL_117;
    }

    goto LABEL_115;
  }

  v541 = v1192;
  sub_10000A0A4(v1192, v1183, &qword_10042BE88, &qword_100393F48);
  if (v540(v541 + v537, 1, v1188) == 1)
  {
    sub_1000059A8(v1187, &qword_10042BE88, &qword_100393F48);
    sub_1002F7CB8(v1183, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
LABEL_115:
    v479 = &qword_10042EE40;
    v480 = &qword_100398C58;
    v481 = v1192;
    goto LABEL_238;
  }

  v542 = v1192;
  v543 = v1192 + v537;
  v544 = v1172;
  sub_1002F7BE8(v543, v1172, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  v545 = v1183;
  v546 = sub_1002F97AC(v1183, v544, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  sub_1002F7CB8(v544, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  sub_1000059A8(v1187, &qword_10042BE88, &qword_100393F48);
  sub_1002F7CB8(v545, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  sub_1000059A8(v542, &qword_10042BE88, &qword_100393F48);
  if ((v546 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_117:
  v547 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  v548 = v1259;
  swift_beginAccess();
  v549 = v1180;
  sub_10000A0A4(v548 + v547, v1180, &qword_10042BE90, &qword_100393F50);
  v550 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  v551 = v1260;
  swift_beginAccess();
  v552 = *(v1175 + 48);
  v553 = v549;
  v554 = v1185;
  sub_10000A0A4(v553, v1185, &qword_10042BE90, &qword_100393F50);
  sub_10000A0A4(v551 + v550, v554 + v552, &qword_10042BE90, &qword_100393F50);
  v555 = *(v1177 + 48);
  if (v555(v554, 1, v1181) == 1)
  {
    sub_1000059A8(v1180, &qword_10042BE90, &qword_100393F50);
    if (v555(v1185 + v552, 1, v1181) == 1)
    {
      sub_1000059A8(v1185, &qword_10042BE90, &qword_100393F50);
      goto LABEL_124;
    }

    goto LABEL_122;
  }

  v556 = v1185;
  sub_10000A0A4(v1185, v1176, &qword_10042BE90, &qword_100393F50);
  if (v555(v556 + v552, 1, v1181) == 1)
  {
    sub_1000059A8(v1180, &qword_10042BE90, &qword_100393F50);
    sub_1002F7CB8(v1176, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
LABEL_122:
    v479 = &qword_10042EE38;
    v480 = &qword_100398C50;
    v481 = v1185;
    goto LABEL_238;
  }

  v557 = v1185;
  v558 = v1185 + v552;
  v559 = v1168;
  sub_1002F7BE8(v558, v1168, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  v560 = v1176;
  v561 = sub_1002F8EC0(v1176, v559);
  sub_1002F7CB8(v559, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  sub_1000059A8(v1180, &qword_10042BE90, &qword_100393F50);
  sub_1002F7CB8(v560, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  sub_1000059A8(v557, &qword_10042BE90, &qword_100393F50);
  if ((v561 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_124:
  v562 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  v563 = v1259;
  swift_beginAccess();
  v564 = v1173;
  sub_10000A0A4(v563 + v562, v1173, &qword_10042BE98, &qword_100393F58);
  v565 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  v566 = v1260;
  swift_beginAccess();
  v567 = *(v1169 + 48);
  v568 = v564;
  v569 = v1178;
  sub_10000A0A4(v568, v1178, &qword_10042BE98, &qword_100393F58);
  sub_10000A0A4(v566 + v565, v569 + v567, &qword_10042BE98, &qword_100393F58);
  v570 = *(v1171 + 48);
  if (v570(v569, 1, v1174) == 1)
  {
    sub_1000059A8(v1173, &qword_10042BE98, &qword_100393F58);
    if (v570(v1178 + v567, 1, v1174) == 1)
    {
      sub_1000059A8(v1178, &qword_10042BE98, &qword_100393F58);
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v571 = v1178;
  sub_10000A0A4(v1178, v1170, &qword_10042BE98, &qword_100393F58);
  if (v570(v571 + v567, 1, v1174) == 1)
  {
    sub_1000059A8(v1173, &qword_10042BE98, &qword_100393F58);
    sub_1002F7CB8(v1170, type metadata accessor for Proto_Gpsd_InjectRtiFile);
LABEL_129:
    v479 = &qword_10042EE30;
    v480 = &qword_100398C48;
    v481 = v1178;
    goto LABEL_238;
  }

  v572 = v1178;
  v573 = v1178 + v567;
  v574 = v992;
  sub_1002F7BE8(v573, v992, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  v575 = v1170;
  v576 = sub_1002F9CA4(v1170, v574, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  sub_1002F7CB8(v574, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  sub_1000059A8(v1173, &qword_10042BE98, &qword_100393F58);
  sub_1002F7CB8(v575, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  sub_1000059A8(v572, &qword_10042BE98, &qword_100393F58);
  if ((v576 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_131:
  v577 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  v578 = v1259;
  swift_beginAccess();
  v579 = v995;
  sub_10000A0A4(v578 + v577, v995, &qword_10042BEA0, &qword_100393F60);
  v580 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  v581 = v1260;
  swift_beginAccess();
  v582 = *(v993 + 48);
  v583 = v579;
  v584 = v999;
  sub_10000A0A4(v583, v999, &qword_10042BEA0, &qword_100393F60);
  sub_10000A0A4(v581 + v580, v584 + v582, &qword_10042BEA0, &qword_100393F60);
  v585 = *(v994 + 48);
  if (v585(v584, 1, v996) == 1)
  {
    sub_1000059A8(v995, &qword_10042BEA0, &qword_100393F60);
    if (v585(v999 + v582, 1, v996) == 1)
    {
      sub_1000059A8(v999, &qword_10042BEA0, &qword_100393F60);
      goto LABEL_134;
    }

    goto LABEL_139;
  }

  v595 = v999;
  sub_10000A0A4(v999, v997, &qword_10042BEA0, &qword_100393F60);
  if (v585(v595 + v582, 1, v996) == 1)
  {
    sub_1000059A8(v995, &qword_10042BEA0, &qword_100393F60);
    sub_1002F7CB8(v997, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
LABEL_139:
    v479 = &qword_10042EE28;
    v480 = &qword_100398C40;
    v481 = v999;
    goto LABEL_238;
  }

  v596 = v998;
  sub_1002F7BE8(v999 + v582, v998, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  if ((sub_1002F747C(*v997, *v596) & 1) == 0)
  {
    sub_1002F7CB8(v998, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    sub_1000059A8(v995, &qword_10042BEA0, &qword_100393F60);
    sub_1002F7CB8(v997, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    v481 = v999;
    v479 = &qword_10042BEA0;
    v480 = &qword_100393F60;
    goto LABEL_238;
  }

  v597 = *(v996 + 20);
  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage);
  v599 = v997;
  v598 = v998;
  v600 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v598, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  sub_1000059A8(v995, &qword_10042BEA0, &qword_100393F60);
  sub_1002F7CB8(v599, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  sub_1000059A8(v999, &qword_10042BEA0, &qword_100393F60);
  if ((v600 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_134:
  v586 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  v587 = v1259;
  swift_beginAccess();
  v588 = v1001;
  sub_10000A0A4(v587 + v586, v1001, &qword_10042BEA8, &qword_100393F68);
  v589 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  v590 = v1260;
  swift_beginAccess();
  v591 = *(v1000 + 48);
  v592 = v588;
  v593 = v1006;
  sub_10000A0A4(v592, v1006, &qword_10042BEA8, &qword_100393F68);
  sub_10000A0A4(v590 + v589, v593 + v591, &qword_10042BEA8, &qword_100393F68);
  v594 = *(v1003 + 48);
  if (v594(v593, 1, v1004) == 1)
  {
    sub_1000059A8(v1001, &qword_10042BEA8, &qword_100393F68);
    if (v594(v1006 + v591, 1, v1004) == 1)
    {
      sub_1000059A8(v1006, &qword_10042BEA8, &qword_100393F68);
      goto LABEL_148;
    }

    goto LABEL_145;
  }

  v601 = v1006;
  sub_10000A0A4(v1006, v1002, &qword_10042BEA8, &qword_100393F68);
  if (v594(v601 + v591, 1, v1004) == 1)
  {
    sub_1000059A8(v1001, &qword_10042BEA8, &qword_100393F68);
    sub_1002F7CB8(v1002, type metadata accessor for Proto_Gpsd_DeleteGnssData);
LABEL_145:
    v479 = &qword_10042EE20;
    v480 = &qword_100398C38;
    v481 = v1006;
    goto LABEL_238;
  }

  v602 = v1006;
  v603 = v1006 + v591;
  v604 = v1005;
  sub_1002F7BE8(v603, v1005, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  v605 = v1002;
  v606 = sub_1002F9A20(v1002, v604, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  sub_1002F7CB8(v604, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  sub_1000059A8(v1001, &qword_10042BEA8, &qword_100393F68);
  sub_1002F7CB8(v605, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  sub_1000059A8(v602, &qword_10042BEA8, &qword_100393F68);
  if ((v606 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_148:
  v607 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  v608 = v1259;
  swift_beginAccess();
  v609 = v1008;
  sub_10000A0A4(v608 + v607, v1008, &qword_10042BEB0, &qword_100393F70);
  v610 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  v611 = v1260;
  swift_beginAccess();
  v612 = *(v1007 + 48);
  v613 = v609;
  v614 = v1013;
  sub_10000A0A4(v613, v1013, &qword_10042BEB0, &qword_100393F70);
  sub_10000A0A4(v611 + v610, v614 + v612, &qword_10042BEB0, &qword_100393F70);
  v615 = *(v1010 + 48);
  if (v615(v614, 1, v1012) == 1)
  {
    sub_1000059A8(v1008, &qword_10042BEB0, &qword_100393F70);
    if (v615(v1013 + v612, 1, v1012) == 1)
    {
      sub_1000059A8(v1013, &qword_10042BEB0, &qword_100393F70);
      goto LABEL_155;
    }

    goto LABEL_153;
  }

  v616 = v1013;
  sub_10000A0A4(v1013, v1009, &qword_10042BEB0, &qword_100393F70);
  if (v615(v616 + v612, 1, v1012) == 1)
  {
    sub_1000059A8(v1008, &qword_10042BEB0, &qword_100393F70);
    sub_1002F7CB8(v1009, type metadata accessor for Proto_Gpsd_SetPvtmReport);
LABEL_153:
    v479 = &qword_10042EE18;
    v480 = &qword_100398C30;
    v481 = v1013;
    goto LABEL_238;
  }

  v617 = v1013;
  v618 = v1013 + v612;
  v619 = v1011;
  sub_1002F7BE8(v618, v1011, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  v620 = v1009;
  v621 = sub_1002F9AEC(v1009, v619);
  sub_1002F7CB8(v619, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  sub_1000059A8(v1008, &qword_10042BEB0, &qword_100393F70);
  sub_1002F7CB8(v620, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  sub_1000059A8(v617, &qword_10042BEB0, &qword_100393F70);
  if ((v621 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_155:
  v622 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  v623 = v1259;
  swift_beginAccess();
  v624 = v1015;
  sub_10000A0A4(v623 + v622, v1015, &qword_10042BEB8, &qword_100393F78);
  v625 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  v626 = v1260;
  swift_beginAccess();
  v627 = *(v1014 + 48);
  v628 = v624;
  v629 = v1020;
  sub_10000A0A4(v628, v1020, &qword_10042BEB8, &qword_100393F78);
  sub_10000A0A4(v626 + v625, v629 + v627, &qword_10042BEB8, &qword_100393F78);
  v630 = *(v1017 + 48);
  if (v630(v629, 1, v1018) == 1)
  {
    sub_1000059A8(v1015, &qword_10042BEB8, &qword_100393F78);
    if (v630(v1020 + v627, 1, v1018) == 1)
    {
      sub_1000059A8(v1020, &qword_10042BEB8, &qword_100393F78);
      goto LABEL_162;
    }

    goto LABEL_160;
  }

  v631 = v1020;
  sub_10000A0A4(v1020, v1016, &qword_10042BEB8, &qword_100393F78);
  if (v630(v631 + v627, 1, v1018) == 1)
  {
    sub_1000059A8(v1015, &qword_10042BEB8, &qword_100393F78);
    sub_1002F7CB8(v1016, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
LABEL_160:
    v479 = &qword_10042EE10;
    v480 = &qword_100398C28;
    v481 = v1020;
    goto LABEL_238;
  }

  v632 = v1020;
  v633 = v1020 + v627;
  v634 = v1019;
  sub_1002F7BE8(v633, v1019, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  v635 = v1016;
  v636 = sub_1002F9A20(v1016, v634, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  sub_1002F7CB8(v634, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  sub_1000059A8(v1015, &qword_10042BEB8, &qword_100393F78);
  sub_1002F7CB8(v635, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  sub_1000059A8(v632, &qword_10042BEB8, &qword_100393F78);
  if ((v636 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_162:
  v637 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  v638 = v1259;
  swift_beginAccess();
  v639 = v1022;
  sub_10000A0A4(v638 + v637, v1022, &qword_10042BEC0, &qword_100393F80);
  v640 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  v641 = v1260;
  swift_beginAccess();
  v642 = *(v1021 + 48);
  v643 = v639;
  v644 = v1027;
  sub_10000A0A4(v643, v1027, &qword_10042BEC0, &qword_100393F80);
  sub_10000A0A4(v641 + v640, v644 + v642, &qword_10042BEC0, &qword_100393F80);
  v645 = *(v1024 + 48);
  if (v645(v644, 1, v1026) == 1)
  {
    sub_1000059A8(v1022, &qword_10042BEC0, &qword_100393F80);
    if (v645(v1027 + v642, 1, v1026) == 1)
    {
      sub_1000059A8(v1027, &qword_10042BEC0, &qword_100393F80);
      goto LABEL_169;
    }

    goto LABEL_167;
  }

  v646 = v1027;
  sub_10000A0A4(v1027, v1023, &qword_10042BEC0, &qword_100393F80);
  if (v645(v646 + v642, 1, v1026) == 1)
  {
    sub_1000059A8(v1022, &qword_10042BEC0, &qword_100393F80);
    sub_1002F7CB8(v1023, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
LABEL_167:
    v479 = &qword_10042EE08;
    v480 = &qword_100398C20;
    v481 = v1027;
    goto LABEL_238;
  }

  v647 = v1027;
  v648 = v1027 + v642;
  v649 = v1025;
  sub_1002F7BE8(v648, v1025, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  v650 = v1023;
  v651 = sub_1002F87B4(v1023, v649);
  sub_1002F7CB8(v649, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  sub_1000059A8(v1022, &qword_10042BEC0, &qword_100393F80);
  sub_1002F7CB8(v650, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  sub_1000059A8(v647, &qword_10042BEC0, &qword_100393F80);
  if ((v651 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_169:
  v652 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  v653 = v1259;
  swift_beginAccess();
  v654 = v1029;
  sub_10000A0A4(v653 + v652, v1029, &qword_10042BEC8, &qword_100393F88);
  v655 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  v656 = v1260;
  swift_beginAccess();
  v657 = *(v1028 + 48);
  v658 = v654;
  v659 = v1034;
  sub_10000A0A4(v658, v1034, &qword_10042BEC8, &qword_100393F88);
  sub_10000A0A4(v656 + v655, v659 + v657, &qword_10042BEC8, &qword_100393F88);
  v660 = *(v1031 + 48);
  if (v660(v659, 1, v1032) == 1)
  {
    sub_1000059A8(v1029, &qword_10042BEC8, &qword_100393F88);
    if (v660(v1034 + v657, 1, v1032) == 1)
    {
      sub_1000059A8(v1034, &qword_10042BEC8, &qword_100393F88);
      goto LABEL_176;
    }

    goto LABEL_174;
  }

  v661 = v1034;
  sub_10000A0A4(v1034, v1030, &qword_10042BEC8, &qword_100393F88);
  if (v660(v661 + v657, 1, v1032) == 1)
  {
    sub_1000059A8(v1029, &qword_10042BEC8, &qword_100393F88);
    sub_1002F7CB8(v1030, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
LABEL_174:
    v479 = &qword_10042EE00;
    v480 = &qword_100398C18;
    v481 = v1034;
    goto LABEL_238;
  }

  v662 = v1034;
  v663 = v1034 + v657;
  v664 = v1033;
  sub_1002F7BE8(v663, v1033, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  v665 = v1030;
  v666 = sub_1002FB4E8(v1030, v664, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  sub_1002F7CB8(v664, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  sub_1000059A8(v1029, &qword_10042BEC8, &qword_100393F88);
  sub_1002F7CB8(v665, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  sub_1000059A8(v662, &qword_10042BEC8, &qword_100393F88);
  if ((v666 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_176:
  v667 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  v668 = v1259;
  swift_beginAccess();
  v669 = v1036;
  sub_10000A0A4(v668 + v667, v1036, &qword_10042BED0, &qword_100393F90);
  v670 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  v671 = v1260;
  swift_beginAccess();
  v672 = *(v1035 + 48);
  v673 = v669;
  v674 = v1041;
  sub_10000A0A4(v673, v1041, &qword_10042BED0, &qword_100393F90);
  sub_10000A0A4(v671 + v670, v674 + v672, &qword_10042BED0, &qword_100393F90);
  v675 = *(v1038 + 48);
  if (v675(v674, 1, v1040) == 1)
  {
    sub_1000059A8(v1036, &qword_10042BED0, &qword_100393F90);
    if (v675(v1041 + v672, 1, v1040) == 1)
    {
      sub_1000059A8(v1041, &qword_10042BED0, &qword_100393F90);
      goto LABEL_183;
    }

    goto LABEL_181;
  }

  v676 = v1041;
  sub_10000A0A4(v1041, v1037, &qword_10042BED0, &qword_100393F90);
  if (v675(v676 + v672, 1, v1040) == 1)
  {
    sub_1000059A8(v1036, &qword_10042BED0, &qword_100393F90);
    sub_1002F7CB8(v1037, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
LABEL_181:
    v479 = &qword_10042EDF8;
    v480 = &qword_100398C10;
    v481 = v1041;
    goto LABEL_238;
  }

  v677 = v1041;
  v678 = v1041 + v672;
  v679 = v1039;
  sub_1002F7BE8(v678, v1039, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  v680 = v1037;
  v681 = sub_1002F8CC8(v1037, v679);
  sub_1002F7CB8(v679, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  sub_1000059A8(v1036, &qword_10042BED0, &qword_100393F90);
  sub_1002F7CB8(v680, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  sub_1000059A8(v677, &qword_10042BED0, &qword_100393F90);
  if ((v681 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_183:
  v682 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  v683 = v1259;
  swift_beginAccess();
  v684 = v1043;
  sub_10000A0A4(v683 + v682, v1043, &qword_10042BED8, &qword_100393F98);
  v685 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  v686 = v1260;
  swift_beginAccess();
  v687 = *(v1042 + 48);
  v688 = v684;
  v689 = v1048;
  sub_10000A0A4(v688, v1048, &qword_10042BED8, &qword_100393F98);
  sub_10000A0A4(v686 + v685, v689 + v687, &qword_10042BED8, &qword_100393F98);
  v690 = *(v1045 + 48);
  if (v690(v689, 1, v1046) == 1)
  {
    sub_1000059A8(v1043, &qword_10042BED8, &qword_100393F98);
    if (v690(v1048 + v687, 1, v1046) == 1)
    {
      sub_1000059A8(v1048, &qword_10042BED8, &qword_100393F98);
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  v691 = v1048;
  sub_10000A0A4(v1048, v1044, &qword_10042BED8, &qword_100393F98);
  if (v690(v691 + v687, 1, v1046) == 1)
  {
    sub_1000059A8(v1043, &qword_10042BED8, &qword_100393F98);
    sub_1002F7CB8(v1044, type metadata accessor for Proto_Gpsd_TerminationImminent);
LABEL_188:
    v479 = &qword_10042EDF0;
    v480 = &qword_100398C08;
    v481 = v1048;
    goto LABEL_238;
  }

  v692 = v1048;
  v693 = v1048 + v687;
  v694 = v1047;
  sub_1002F7BE8(v693, v1047, type metadata accessor for Proto_Gpsd_TerminationImminent);
  v695 = v1044;
  v696 = sub_1002F9FB8(v1044, v694, type metadata accessor for Proto_Gpsd_TerminationImminent);
  sub_1002F7CB8(v694, type metadata accessor for Proto_Gpsd_TerminationImminent);
  sub_1000059A8(v1043, &qword_10042BED8, &qword_100393F98);
  sub_1002F7CB8(v695, type metadata accessor for Proto_Gpsd_TerminationImminent);
  sub_1000059A8(v692, &qword_10042BED8, &qword_100393F98);
  if ((v696 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_190:
  v697 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  v698 = v1259;
  swift_beginAccess();
  v699 = v1050;
  sub_10000A0A4(v698 + v697, v1050, &qword_10042BEE0, &qword_100393FA0);
  v700 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  v701 = v1260;
  swift_beginAccess();
  v702 = *(v1049 + 48);
  v703 = v699;
  v704 = v1055;
  sub_10000A0A4(v703, v1055, &qword_10042BEE0, &qword_100393FA0);
  sub_10000A0A4(v701 + v700, v704 + v702, &qword_10042BEE0, &qword_100393FA0);
  v705 = *(v1052 + 48);
  if (v705(v704, 1, v1053) == 1)
  {
    sub_1000059A8(v1050, &qword_10042BEE0, &qword_100393FA0);
    if (v705(v1055 + v702, 1, v1053) == 1)
    {
      sub_1000059A8(v1055, &qword_10042BEE0, &qword_100393FA0);
      goto LABEL_197;
    }

    goto LABEL_195;
  }

  v706 = v1055;
  sub_10000A0A4(v1055, v1051, &qword_10042BEE0, &qword_100393FA0);
  if (v705(v706 + v702, 1, v1053) == 1)
  {
    sub_1000059A8(v1050, &qword_10042BEE0, &qword_100393FA0);
    sub_1002F7CB8(v1051, type metadata accessor for Proto_Gpsd_ExitMessage);
LABEL_195:
    v479 = &qword_10042EDE8;
    v480 = &qword_100398C00;
    v481 = v1055;
    goto LABEL_238;
  }

  v707 = v1055;
  v708 = v1055 + v702;
  v709 = v1054;
  sub_1002F7BE8(v708, v1054, type metadata accessor for Proto_Gpsd_ExitMessage);
  v710 = v1051;
  v711 = sub_1002F9FB8(v1051, v709, type metadata accessor for Proto_Gpsd_ExitMessage);
  sub_1002F7CB8(v709, type metadata accessor for Proto_Gpsd_ExitMessage);
  sub_1000059A8(v1050, &qword_10042BEE0, &qword_100393FA0);
  sub_1002F7CB8(v710, type metadata accessor for Proto_Gpsd_ExitMessage);
  sub_1000059A8(v707, &qword_10042BEE0, &qword_100393FA0);
  if ((v711 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_197:
  v712 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  v713 = v1259;
  swift_beginAccess();
  v714 = v1057;
  sub_10000A0A4(v713 + v712, v1057, &qword_10042BEE8, &qword_100393FA8);
  v715 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  v716 = v1260;
  swift_beginAccess();
  v717 = *(v1056 + 48);
  v718 = v714;
  v719 = v1062;
  sub_10000A0A4(v718, v1062, &qword_10042BEE8, &qword_100393FA8);
  sub_10000A0A4(v716 + v715, v719 + v717, &qword_10042BEE8, &qword_100393FA8);
  v720 = *(v1059 + 48);
  if (v720(v719, 1, v1060) == 1)
  {
    sub_1000059A8(v1057, &qword_10042BEE8, &qword_100393FA8);
    if (v720(v1062 + v717, 1, v1060) == 1)
    {
      sub_1000059A8(v1062, &qword_10042BEE8, &qword_100393FA8);
      goto LABEL_204;
    }

    goto LABEL_202;
  }

  v721 = v1062;
  sub_10000A0A4(v1062, v1058, &qword_10042BEE8, &qword_100393FA8);
  if (v720(v721 + v717, 1, v1060) == 1)
  {
    sub_1000059A8(v1057, &qword_10042BEE8, &qword_100393FA8);
    sub_1002F7CB8(v1058, type metadata accessor for Proto_Gpsd_LtlInfo);
LABEL_202:
    v479 = &qword_10042EDE0;
    v480 = &qword_100398BF8;
    v481 = v1062;
    goto LABEL_238;
  }

  v722 = v1062;
  v723 = v1062 + v717;
  v724 = v1061;
  sub_1002F7BE8(v723, v1061, type metadata accessor for Proto_Gpsd_LtlInfo);
  v725 = v1058;
  v726 = sub_1002FB2CC(v1058, v724, type metadata accessor for Proto_Gpsd_LtlInfo, sub_1002F15D8);
  sub_1002F7CB8(v724, type metadata accessor for Proto_Gpsd_LtlInfo);
  sub_1000059A8(v1057, &qword_10042BEE8, &qword_100393FA8);
  sub_1002F7CB8(v725, type metadata accessor for Proto_Gpsd_LtlInfo);
  sub_1000059A8(v722, &qword_10042BEE8, &qword_100393FA8);
  if ((v726 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_204:
  v727 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  v728 = v1259;
  swift_beginAccess();
  v729 = v1064;
  sub_10000A0A4(v728 + v727, v1064, &qword_10042BEF0, &qword_100393FB0);
  v730 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  v731 = v1260;
  swift_beginAccess();
  v732 = *(v1063 + 48);
  v733 = v729;
  v734 = v1069;
  sub_10000A0A4(v733, v1069, &qword_10042BEF0, &qword_100393FB0);
  sub_10000A0A4(v731 + v730, v734 + v732, &qword_10042BEF0, &qword_100393FB0);
  v735 = *(v1066 + 48);
  if (v735(v734, 1, started) == 1)
  {
    sub_1000059A8(v1064, &qword_10042BEF0, &qword_100393FB0);
    if (v735(v1069 + v732, 1, started) == 1)
    {
      sub_1000059A8(v1069, &qword_10042BEF0, &qword_100393FB0);
      goto LABEL_211;
    }

    goto LABEL_209;
  }

  v736 = v1069;
  sub_10000A0A4(v1069, v1065, &qword_10042BEF0, &qword_100393FB0);
  if (v735(v736 + v732, 1, started) == 1)
  {
    sub_1000059A8(v1064, &qword_10042BEF0, &qword_100393FB0);
    sub_1002F7CB8(v1065, type metadata accessor for Proto_Gpsd_StartContext);
LABEL_209:
    v479 = &qword_10042EDD8;
    v480 = &qword_100398BF0;
    v481 = v1069;
    goto LABEL_238;
  }

  v737 = v1069;
  v738 = v1069 + v732;
  v739 = v1067;
  sub_1002F7BE8(v738, v1067, type metadata accessor for Proto_Gpsd_StartContext);
  v740 = v1065;
  v741 = sub_1002F9E2C(v1065, v739);
  sub_1002F7CB8(v739, type metadata accessor for Proto_Gpsd_StartContext);
  sub_1000059A8(v1064, &qword_10042BEF0, &qword_100393FB0);
  sub_1002F7CB8(v740, type metadata accessor for Proto_Gpsd_StartContext);
  sub_1000059A8(v737, &qword_10042BEF0, &qword_100393FB0);
  if ((v741 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_211:
  v742 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  v743 = v1259;
  swift_beginAccess();
  v744 = v1071;
  sub_10000A0A4(v743 + v742, v1071, &qword_10042BEF8, &qword_100393FB8);
  v745 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  v746 = v1260;
  swift_beginAccess();
  v747 = *(v1070 + 48);
  v748 = v744;
  v749 = v1076;
  sub_10000A0A4(v748, v1076, &qword_10042BEF8, &qword_100393FB8);
  sub_10000A0A4(v746 + v745, v749 + v747, &qword_10042BEF8, &qword_100393FB8);
  v750 = *(v1073 + 48);
  if (v750(v749, 1, v1075) == 1)
  {
    sub_1000059A8(v1071, &qword_10042BEF8, &qword_100393FB8);
    if (v750(v1076 + v747, 1, v1075) == 1)
    {
      sub_1000059A8(v1076, &qword_10042BEF8, &qword_100393FB8);
      goto LABEL_218;
    }

    goto LABEL_216;
  }

  v751 = v1076;
  sub_10000A0A4(v1076, v1072, &qword_10042BEF8, &qword_100393FB8);
  if (v750(v751 + v747, 1, v1075) == 1)
  {
    sub_1000059A8(v1071, &qword_10042BEF8, &qword_100393FB8);
    sub_1002F7CB8(v1072, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
LABEL_216:
    v479 = &qword_10042EDD0;
    v480 = &qword_100398BE8;
    v481 = v1076;
    goto LABEL_238;
  }

  v752 = v1076;
  v753 = v1076 + v747;
  v754 = v1074;
  sub_1002F7BE8(v753, v1074, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  v755 = v1072;
  v756 = sub_1002F9074(v1072, v754);
  sub_1002F7CB8(v754, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  sub_1000059A8(v1071, &qword_10042BEF8, &qword_100393FB8);
  sub_1002F7CB8(v755, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  sub_1000059A8(v752, &qword_10042BEF8, &qword_100393FB8);
  if ((v756 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_218:
  v757 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  v758 = v1259;
  swift_beginAccess();
  v759 = v1078;
  sub_10000A0A4(v758 + v757, v1078, &qword_10042BF00, &qword_100393FC0);
  v760 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  v761 = v1260;
  swift_beginAccess();
  v762 = *(v1077 + 48);
  v763 = v759;
  v764 = v1083;
  sub_10000A0A4(v763, v1083, &qword_10042BF00, &qword_100393FC0);
  sub_10000A0A4(v761 + v760, v764 + v762, &qword_10042BF00, &qword_100393FC0);
  v765 = *(v1080 + 48);
  if (v765(v764, 1, v1082) == 1)
  {
    sub_1000059A8(v1078, &qword_10042BF00, &qword_100393FC0);
    if (v765(v1083 + v762, 1, v1082) == 1)
    {
      sub_1000059A8(v1083, &qword_10042BF00, &qword_100393FC0);
      goto LABEL_225;
    }

    goto LABEL_223;
  }

  v766 = v1083;
  sub_10000A0A4(v1083, v1079, &qword_10042BF00, &qword_100393FC0);
  if (v765(v766 + v762, 1, v1082) == 1)
  {
    sub_1000059A8(v1078, &qword_10042BF00, &qword_100393FC0);
    sub_1002F7CB8(v1079, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
LABEL_223:
    v479 = &qword_10042EDC8;
    v480 = &qword_100398BE0;
    v481 = v1083;
    goto LABEL_238;
  }

  v767 = v1083;
  v768 = v1083 + v762;
  v769 = v1081;
  sub_1002F7BE8(v768, v1081, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  v770 = v1079;
  v771 = sub_1002F8BD0(v1079, v769);
  sub_1002F7CB8(v769, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  sub_1000059A8(v1078, &qword_10042BF00, &qword_100393FC0);
  sub_1002F7CB8(v770, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  sub_1000059A8(v767, &qword_10042BF00, &qword_100393FC0);
  if ((v771 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_225:
  v772 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  v773 = v1259;
  swift_beginAccess();
  v774 = v1085;
  sub_10000A0A4(v773 + v772, v1085, &qword_10042BF08, &qword_100393FC8);
  v775 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  v776 = v1260;
  swift_beginAccess();
  v777 = *(v1084 + 48);
  v778 = v774;
  v779 = v1090;
  sub_10000A0A4(v778, v1090, &qword_10042BF08, &qword_100393FC8);
  sub_10000A0A4(v776 + v775, v779 + v777, &qword_10042BF08, &qword_100393FC8);
  v780 = *(v1087 + 48);
  if (v780(v779, 1, v1088) == 1)
  {
    sub_1000059A8(v1085, &qword_10042BF08, &qword_100393FC8);
    if (v780(v1090 + v777, 1, v1088) == 1)
    {
      sub_1000059A8(v1090, &qword_10042BF08, &qword_100393FC8);
      goto LABEL_232;
    }

    goto LABEL_230;
  }

  v781 = v1090;
  sub_10000A0A4(v1090, v1086, &qword_10042BF08, &qword_100393FC8);
  if (v780(v781 + v777, 1, v1088) == 1)
  {
    sub_1000059A8(v1085, &qword_10042BF08, &qword_100393FC8);
    sub_1002F7CB8(v1086, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
LABEL_230:
    v479 = &qword_10042EDC0;
    v480 = &qword_100398BD8;
    v481 = v1090;
    goto LABEL_238;
  }

  v782 = v1090;
  v783 = v1090 + v777;
  v784 = v1089;
  sub_1002F7BE8(v783, v1089, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  v785 = v1086;
  v786 = sub_1002F9CA4(v1086, v784, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  sub_1002F7CB8(v784, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  sub_1000059A8(v1085, &qword_10042BF08, &qword_100393FC8);
  sub_1002F7CB8(v785, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  sub_1000059A8(v782, &qword_10042BF08, &qword_100393FC8);
  if ((v786 & 1) == 0)
  {
LABEL_79:

    return 0;
  }

LABEL_232:
  v787 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  v788 = v1259;
  swift_beginAccess();
  v789 = v1092;
  sub_10000A0A4(v788 + v787, v1092, &qword_10042BF10, &qword_100393FD0);
  v790 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  v791 = v1260;
  swift_beginAccess();
  v792 = *(v1091 + 48);
  v793 = v789;
  v794 = v1097;
  sub_10000A0A4(v793, v1097, &qword_10042BF10, &qword_100393FD0);
  sub_10000A0A4(v791 + v790, v794 + v792, &qword_10042BF10, &qword_100393FD0);
  v795 = *(v1093 + 48);
  if (v795(v794, 1, v1096) == 1)
  {
    sub_1000059A8(v1092, &qword_10042BF10, &qword_100393FD0);
    if (v795(v1097 + v792, 1, v1096) == 1)
    {
      sub_1000059A8(v1097, &qword_10042BF10, &qword_100393FD0);
      goto LABEL_241;
    }

    goto LABEL_237;
  }

  v796 = v1097;
  sub_10000A0A4(v1097, v1094, &qword_10042BF10, &qword_100393FD0);
  if (v795(v796 + v792, 1, v1096) == 1)
  {
    sub_1000059A8(v1092, &qword_10042BF10, &qword_100393FD0);
    sub_1002F7CB8(v1094, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
LABEL_237:
    v479 = &qword_10042EDB8;
    v480 = &qword_100398BD0;
    v481 = v1097;
    goto LABEL_238;
  }

  v797 = v1097;
  v798 = v1097 + v792;
  v799 = v1095;
  sub_1002F7BE8(v798, v1095, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  sub_1002FB284(&qword_1004251E0, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  v800 = v1094;
  v801 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v799, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  sub_1000059A8(v1092, &qword_10042BF10, &qword_100393FD0);
  sub_1002F7CB8(v800, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  sub_1000059A8(v797, &qword_10042BF10, &qword_100393FD0);
  if ((v801 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_241:
  v802 = (v1259 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
  swift_beginAccess();
  v804 = *v802;
  v803 = v802[1];
  v805 = (v1260 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
  swift_beginAccess();
  v806 = *v805;
  v807 = v805[1];
  sub_10000BE4C(v804, v803);
  sub_10000BE4C(v806, v807);
  if (v803 >> 60 == 15)
  {
    if (v807 >> 60 == 15)
    {
      sub_10000CA64(v804, v803);
      goto LABEL_249;
    }

LABEL_247:
    sub_10000CA64(v804, v803);
    sub_10000CA64(v806, v807);
    return 0;
  }

  sub_10000BE4C(v804, v803);
  sub_10000BE4C(v806, v807);
  if (v807 >> 60 == 15)
  {

    sub_10000CA64(v806, v807);
    sub_10000CA64(v804, v803);
    goto LABEL_247;
  }

  v808 = sub_10009F948(v804, v803, v806, v807);
  sub_10000CA64(v806, v807);
  sub_10000CA64(v804, v803);
  sub_10000CA64(v806, v807);
  sub_10000CA64(v804, v803);
  if ((v808 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_249:
  v809 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  v810 = v1259;
  swift_beginAccess();
  v811 = v1099;
  sub_10000A0A4(v810 + v809, v1099, &qword_10042BF18, &qword_100393FD8);
  v812 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  v813 = v1260;
  swift_beginAccess();
  v814 = *(v1098 + 48);
  v815 = v811;
  v816 = v1104;
  sub_10000A0A4(v815, v1104, &qword_10042BF18, &qword_100393FD8);
  sub_10000A0A4(v813 + v812, v816 + v814, &qword_10042BF18, &qword_100393FD8);
  v817 = *(v1100 + 48);
  if (v817(v816, 1, v1103) == 1)
  {
    sub_1000059A8(v1099, &qword_10042BF18, &qword_100393FD8);
    if (v817(v1104 + v814, 1, v1103) == 1)
    {
      sub_1000059A8(v1104, &qword_10042BF18, &qword_100393FD8);
      goto LABEL_256;
    }

    goto LABEL_254;
  }

  v818 = v1104;
  sub_10000A0A4(v1104, v1101, &qword_10042BF18, &qword_100393FD8);
  if (v817(v818 + v814, 1, v1103) == 1)
  {
    sub_1000059A8(v1099, &qword_10042BF18, &qword_100393FD8);
    sub_1002F7CB8(v1101, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
LABEL_254:
    v479 = &qword_10042EDB0;
    v480 = &qword_100398BC8;
    v481 = v1104;
    goto LABEL_238;
  }

  v819 = v1104;
  v820 = v1104 + v814;
  v821 = v1102;
  sub_1002F7BE8(v820, v1102, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  sub_1002FB284(&qword_100424C60, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  v822 = v1101;
  v823 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v821, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  sub_1000059A8(v1099, &qword_10042BF18, &qword_100393FD8);
  sub_1002F7CB8(v822, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  sub_1000059A8(v819, &qword_10042BF18, &qword_100393FD8);
  if ((v823 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_256:
  v824 = (v1259 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID);
  swift_beginAccess();
  v825 = *v824;
  v826 = *(v824 + 4);
  v827 = v1260 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  swift_beginAccess();
  v828 = *(v827 + 4);
  if (v826)
  {
    if ((*(v827 + 4) & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((*(v827 + 4) & 1) != 0 || v825 != *v827)
  {
    goto LABEL_79;
  }

  v829 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  v830 = v1259;
  swift_beginAccess();
  v831 = v1106;
  sub_10000A0A4(v830 + v829, v1106, &qword_10042BF20, &qword_100393FE0);
  v832 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  v833 = v1260;
  swift_beginAccess();
  v834 = *(v1105 + 48);
  v835 = v831;
  v836 = v1111;
  sub_10000A0A4(v835, v1111, &qword_10042BF20, &qword_100393FE0);
  sub_10000A0A4(v833 + v832, v836 + v834, &qword_10042BF20, &qword_100393FE0);
  v837 = *(v1107 + 48);
  if (v837(v836, 1, v1110) == 1)
  {
    sub_1000059A8(v1106, &qword_10042BF20, &qword_100393FE0);
    if (v837(v1111 + v834, 1, v1110) == 1)
    {
      sub_1000059A8(v1111, &qword_10042BF20, &qword_100393FE0);
      goto LABEL_268;
    }

    goto LABEL_266;
  }

  v838 = v1111;
  sub_10000A0A4(v1111, v1108, &qword_10042BF20, &qword_100393FE0);
  if (v837(v838 + v834, 1, v1110) == 1)
  {
    sub_1000059A8(v1106, &qword_10042BF20, &qword_100393FE0);
    sub_1002F7CB8(v1108, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
LABEL_266:
    v479 = &qword_10042EDA8;
    v480 = &qword_100398BC0;
    v481 = v1111;
    goto LABEL_238;
  }

  v839 = v1111;
  v840 = v1111 + v834;
  v841 = v1109;
  sub_1002F7BE8(v840, v1109, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  sub_1002FB284(&qword_100425158, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  v842 = v1108;
  v843 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v841, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  sub_1000059A8(v1106, &qword_10042BF20, &qword_100393FE0);
  sub_1002F7CB8(v842, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  sub_1000059A8(v839, &qword_10042BF20, &qword_100393FE0);
  if ((v843 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_268:
  v844 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  v845 = v1259;
  swift_beginAccess();
  v846 = v1113;
  sub_10000A0A4(v845 + v844, v1113, &qword_10042BF28, &qword_100393FE8);
  v847 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  v848 = v1260;
  swift_beginAccess();
  v849 = *(v1112 + 48);
  v850 = v846;
  v851 = v1118;
  sub_10000A0A4(v850, v1118, &qword_10042BF28, &qword_100393FE8);
  sub_10000A0A4(v848 + v847, v851 + v849, &qword_10042BF28, &qword_100393FE8);
  v852 = *(v1114 + 48);
  if (v852(v851, 1, v1117) == 1)
  {
    sub_1000059A8(v1113, &qword_10042BF28, &qword_100393FE8);
    if (v852(v1118 + v849, 1, v1117) == 1)
    {
      sub_1000059A8(v1118, &qword_10042BF28, &qword_100393FE8);
      goto LABEL_275;
    }

    goto LABEL_273;
  }

  v853 = v1118;
  sub_10000A0A4(v1118, v1115, &qword_10042BF28, &qword_100393FE8);
  if (v852(v853 + v849, 1, v1117) == 1)
  {
    sub_1000059A8(v1113, &qword_10042BF28, &qword_100393FE8);
    sub_1002F7CB8(v1115, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
LABEL_273:
    v479 = &qword_10042EDA0;
    v480 = &qword_100398BB8;
    v481 = v1118;
    goto LABEL_238;
  }

  v854 = v1118;
  v855 = v1118 + v849;
  v856 = v1116;
  sub_1002F7BE8(v855, v1116, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_1002FB284(&qword_100425170, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  v857 = v1115;
  v858 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v856, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_1000059A8(v1113, &qword_10042BF28, &qword_100393FE8);
  sub_1002F7CB8(v857, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_1000059A8(v854, &qword_10042BF28, &qword_100393FE8);
  if ((v858 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_275:
  v859 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  v860 = v1259;
  swift_beginAccess();
  v861 = v1120;
  sub_10000A0A4(v860 + v859, v1120, &qword_10042BF30, &qword_100393FF0);
  v862 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  v863 = v1260;
  swift_beginAccess();
  v864 = *(v1119 + 48);
  v865 = v861;
  v866 = v1125;
  sub_10000A0A4(v865, v1125, &qword_10042BF30, &qword_100393FF0);
  sub_10000A0A4(v863 + v862, v866 + v864, &qword_10042BF30, &qword_100393FF0);
  v867 = *(v1121 + 48);
  if (v867(v866, 1, v1124) == 1)
  {
    sub_1000059A8(v1120, &qword_10042BF30, &qword_100393FF0);
    if (v867(v1125 + v864, 1, v1124) == 1)
    {
      sub_1000059A8(v1125, &qword_10042BF30, &qword_100393FF0);
      goto LABEL_282;
    }

    goto LABEL_280;
  }

  v868 = v1125;
  sub_10000A0A4(v1125, v1122, &qword_10042BF30, &qword_100393FF0);
  if (v867(v868 + v864, 1, v1124) == 1)
  {
    sub_1000059A8(v1120, &qword_10042BF30, &qword_100393FF0);
    sub_1002F7CB8(v1122, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
LABEL_280:
    v479 = &qword_10042ED98;
    v480 = &qword_100398BB0;
    v481 = v1125;
    goto LABEL_238;
  }

  v869 = v1125;
  v870 = v1125 + v864;
  v871 = v1123;
  sub_1002F7BE8(v870, v1123, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  sub_1002FB284(&qword_100425198, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  v872 = v1122;
  v873 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v871, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  sub_1000059A8(v1120, &qword_10042BF30, &qword_100393FF0);
  sub_1002F7CB8(v872, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  sub_1000059A8(v869, &qword_10042BF30, &qword_100393FF0);
  if ((v873 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_282:
  v874 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  v875 = v1259;
  swift_beginAccess();
  v876 = v1127;
  sub_10000A0A4(v875 + v874, v1127, &qword_10042BF38, &qword_100393FF8);
  v877 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  v878 = v1260;
  swift_beginAccess();
  v879 = *(v1126 + 48);
  v880 = v876;
  v881 = v1132;
  sub_10000A0A4(v880, v1132, &qword_10042BF38, &qword_100393FF8);
  sub_10000A0A4(v878 + v877, v881 + v879, &qword_10042BF38, &qword_100393FF8);
  v882 = *(v1128 + 48);
  if (v882(v881, 1, v1131) == 1)
  {
    sub_1000059A8(v1127, &qword_10042BF38, &qword_100393FF8);
    if (v882(v1132 + v879, 1, v1131) == 1)
    {
      sub_1000059A8(v1132, &qword_10042BF38, &qword_100393FF8);
      goto LABEL_289;
    }

    goto LABEL_287;
  }

  v883 = v1132;
  sub_10000A0A4(v1132, v1129, &qword_10042BF38, &qword_100393FF8);
  if (v882(v883 + v879, 1, v1131) == 1)
  {
    sub_1000059A8(v1127, &qword_10042BF38, &qword_100393FF8);
    sub_1002F7CB8(v1129, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
LABEL_287:
    v479 = &qword_10042ED90;
    v480 = &qword_100398BA8;
    v481 = v1132;
    goto LABEL_238;
  }

  v884 = v1132;
  v885 = v1132 + v879;
  v886 = v1130;
  sub_1002F7BE8(v885, v1130, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  sub_1002FB284(&qword_100425208, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  v887 = v1129;
  v888 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v886, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  sub_1000059A8(v1127, &qword_10042BF38, &qword_100393FF8);
  sub_1002F7CB8(v887, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  sub_1000059A8(v884, &qword_10042BF38, &qword_100393FF8);
  if ((v888 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_289:
  v889 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  v890 = v1259;
  swift_beginAccess();
  v891 = v1134;
  sub_10000A0A4(v890 + v889, v1134, &qword_10042BF40, &qword_100394000);
  v892 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  v893 = v1260;
  swift_beginAccess();
  v894 = *(v1133 + 48);
  v895 = v891;
  v896 = v1139;
  sub_10000A0A4(v895, v1139, &qword_10042BF40, &qword_100394000);
  sub_10000A0A4(v893 + v892, v896 + v894, &qword_10042BF40, &qword_100394000);
  v897 = *(v1135 + 48);
  if (v897(v896, 1, v1138) == 1)
  {
    sub_1000059A8(v1134, &qword_10042BF40, &qword_100394000);
    if (v897(v1139 + v894, 1, v1138) == 1)
    {
      sub_1000059A8(v1139, &qword_10042BF40, &qword_100394000);
      goto LABEL_296;
    }

    goto LABEL_294;
  }

  v898 = v1139;
  sub_10000A0A4(v1139, v1136, &qword_10042BF40, &qword_100394000);
  if (v897(v898 + v894, 1, v1138) == 1)
  {
    sub_1000059A8(v1134, &qword_10042BF40, &qword_100394000);
    sub_1002F7CB8(v1136, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
LABEL_294:
    v479 = &qword_10042ED88;
    v480 = &qword_100398BA0;
    v481 = v1139;
    goto LABEL_238;
  }

  v899 = v1139;
  v900 = v1139 + v894;
  v901 = v1137;
  sub_1002F7BE8(v900, v1137, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  sub_1002FB284(&qword_100425238, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  v902 = v1136;
  v903 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v901, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  sub_1000059A8(v1134, &qword_10042BF40, &qword_100394000);
  sub_1002F7CB8(v902, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  sub_1000059A8(v899, &qword_10042BF40, &qword_100394000);
  if ((v903 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_296:
  v904 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  v905 = v1259;
  swift_beginAccess();
  v906 = v1141;
  sub_10000A0A4(v905 + v904, v1141, &qword_10042BF48, &qword_100394008);
  v907 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  v908 = v1260;
  swift_beginAccess();
  v909 = *(v1140 + 48);
  v910 = v906;
  v911 = v1146;
  sub_10000A0A4(v910, v1146, &qword_10042BF48, &qword_100394008);
  sub_10000A0A4(v908 + v907, v911 + v909, &qword_10042BF48, &qword_100394008);
  v912 = *(v1142 + 48);
  if (v912(v911, 1, v1145) == 1)
  {
    sub_1000059A8(v1141, &qword_10042BF48, &qword_100394008);
    if (v912(v1146 + v909, 1, v1145) == 1)
    {
      sub_1000059A8(v1146, &qword_10042BF48, &qword_100394008);
      goto LABEL_303;
    }

    goto LABEL_301;
  }

  v913 = v1146;
  sub_10000A0A4(v1146, v1143, &qword_10042BF48, &qword_100394008);
  if (v912(v913 + v909, 1, v1145) == 1)
  {
    sub_1000059A8(v1141, &qword_10042BF48, &qword_100394008);
    sub_1002F7CB8(v1143, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
LABEL_301:
    v479 = &qword_10042ED80;
    v480 = &qword_100398B98;
    v481 = v1146;
    goto LABEL_238;
  }

  v914 = v1146;
  v915 = v1146 + v909;
  v916 = v1144;
  sub_1002F7BE8(v915, v1144, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  sub_1002FB284(&qword_1004251C8, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  v917 = v1143;
  v918 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v916, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  sub_1000059A8(v1141, &qword_10042BF48, &qword_100394008);
  sub_1002F7CB8(v917, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  sub_1000059A8(v914, &qword_10042BF48, &qword_100394008);
  if ((v918 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_303:
  v919 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
  v920 = v1259;
  swift_beginAccess();
  v921 = *(v920 + v919);
  v922 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
  v923 = v1260;
  swift_beginAccess();
  if ((sub_100033210(v921, *(v923 + v922)) & 1) == 0)
  {
    goto LABEL_79;
  }

  v924 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  v925 = v1259;
  swift_beginAccess();
  v926 = v1148;
  sub_10000A0A4(v925 + v924, v1148, &qword_10042BF50, &qword_100394010);
  v927 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  v928 = v1260;
  swift_beginAccess();
  v929 = *(v1147 + 48);
  v930 = v926;
  v931 = v1153;
  sub_10000A0A4(v930, v1153, &qword_10042BF50, &qword_100394010);
  sub_10000A0A4(v928 + v927, v931 + v929, &qword_10042BF50, &qword_100394010);
  v932 = *(v1149 + 48);
  if (v932(v931, 1, v1152) == 1)
  {
    sub_1000059A8(v1148, &qword_10042BF50, &qword_100394010);
    if (v932(v1153 + v929, 1, v1152) == 1)
    {
      sub_1000059A8(v1153, &qword_10042BF50, &qword_100394010);
      goto LABEL_311;
    }

    goto LABEL_309;
  }

  v933 = v1153;
  sub_10000A0A4(v1153, v1150, &qword_10042BF50, &qword_100394010);
  if (v932(v933 + v929, 1, v1152) == 1)
  {
    sub_1000059A8(v1148, &qword_10042BF50, &qword_100394010);
    sub_1002F7CB8(v1150, type metadata accessor for Proto_Gnss_Emergency_LocationId);
LABEL_309:
    v479 = &qword_10042ED78;
    v480 = &qword_100398B90;
    v481 = v1153;
    goto LABEL_238;
  }

  v934 = v1153;
  v935 = v1153 + v929;
  v936 = v1151;
  sub_1002F7BE8(v935, v1151, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  sub_1002FB284(&qword_100424B00, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  v937 = v1150;
  v938 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v936, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  sub_1000059A8(v1148, &qword_10042BF50, &qword_100394010);
  sub_1002F7CB8(v937, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  sub_1000059A8(v934, &qword_10042BF50, &qword_100394010);
  if ((v938 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_311:
  v939 = (v1259 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex);
  swift_beginAccess();
  v940 = *v939;
  v941 = *(v939 + 4);
  v942 = v1260 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  swift_beginAccess();
  v943 = *(v942 + 4);
  if (v941)
  {
    if ((*(v942 + 4) & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((*(v942 + 4) & 1) != 0 || v940 != *v942)
  {
    goto LABEL_79;
  }

  v944 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
  v945 = v1259;
  swift_beginAccess();
  v946 = *(v945 + v944);
  v947 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
  v948 = v1260;
  swift_beginAccess();
  if ((sub_100033210(v946, *(v948 + v947)) & 1) == 0)
  {
    goto LABEL_79;
  }

  v949 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  v950 = v1259;
  swift_beginAccess();
  v951 = *(v950 + v949);
  v952 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  v953 = v1260;
  swift_beginAccess();
  v954 = *(v953 + v952);
  if (v951 == 2)
  {
    if (v954 != 2)
    {
      goto LABEL_79;
    }
  }

  else if (v954 == 2 || ((v951 ^ v954) & 1) != 0)
  {
    goto LABEL_79;
  }

  v955 = (v1259 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance);
  swift_beginAccess();
  v956 = *v955;
  v957 = *(v955 + 4);
  v958 = v1260 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  swift_beginAccess();
  v959 = *(v958 + 4);
  if (v957)
  {
    if ((*(v958 + 4) & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((*(v958 + 4) & 1) != 0 || v956 != *v958)
  {
    goto LABEL_79;
  }

  v960 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  v961 = v1259;
  swift_beginAccess();
  v962 = v1155;
  sub_10000A0A4(v961 + v960, v1155, &qword_10042BF58, &qword_100394018);
  v963 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  v964 = v1260;
  swift_beginAccess();
  v965 = *(v1154 + 48);
  v966 = v962;
  v967 = v1160;
  sub_10000A0A4(v966, v1160, &qword_10042BF58, &qword_100394018);
  sub_10000A0A4(v964 + v963, v967 + v965, &qword_10042BF58, &qword_100394018);
  v968 = *(v1156 + 48);
  if (v968(v967, 1, v1159) == 1)
  {
    sub_1000059A8(v1155, &qword_10042BF58, &qword_100394018);
    if (v968(v1160 + v965, 1, v1159) == 1)
    {
      sub_1000059A8(v1160, &qword_10042BF58, &qword_100394018);
      goto LABEL_334;
    }

    goto LABEL_332;
  }

  v969 = v1160;
  sub_10000A0A4(v1160, v1157, &qword_10042BF58, &qword_100394018);
  if (v968(v969 + v965, 1, v1159) == 1)
  {
    sub_1000059A8(v1155, &qword_10042BF58, &qword_100394018);
    sub_1002F7CB8(v1157, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
LABEL_332:
    v479 = &qword_10042ED70;
    v480 = &qword_100398B88;
    v481 = v1160;
    goto LABEL_238;
  }

  v970 = v1160;
  v971 = v1160 + v965;
  v972 = v1158;
  sub_1002F7BE8(v971, v1158, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  sub_1002FB284(&qword_100424BD0, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  v973 = v1157;
  v974 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v972, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  sub_1000059A8(v1155, &qword_10042BF58, &qword_100394018);
  sub_1002F7CB8(v973, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  sub_1000059A8(v970, &qword_10042BF58, &qword_100394018);
  if ((v974 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_334:
  v975 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  v976 = v1259;
  swift_beginAccess();
  v977 = v1163;
  sub_10000A0A4(v976 + v975, v1163, &qword_10042BF60, &qword_100394020);
  v978 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  v979 = v1260;
  swift_beginAccess();
  v980 = *(v1161 + 48);
  v981 = v977;
  v982 = v1167;
  sub_10000A0A4(v981, v1167, &qword_10042BF60, &qword_100394020);
  sub_10000A0A4(v979 + v978, v982 + v980, &qword_10042BF60, &qword_100394020);
  v983 = *(v1162 + 48);
  if (v983(v982, 1, v1166) != 1)
  {
    v984 = v1167;
    sub_10000A0A4(v1167, v1164, &qword_10042BF60, &qword_100394020);
    if (v983(v984 + v980, 1, v1166) == 1)
    {

      sub_1000059A8(v1163, &qword_10042BF60, &qword_100394020);
      sub_1002F7CB8(v1164, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
      goto LABEL_339;
    }

    v985 = v1167;
    v986 = v1167 + v980;
    v987 = v1165;
    sub_1002F7BE8(v986, v1165, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    sub_1002FB284(&qword_100424B40, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    v988 = v1164;
    v989 = dispatch thunk of static Equatable.== infix(_:_:)();

    sub_1002F7CB8(v987, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    sub_1000059A8(v1163, &qword_10042BF60, &qword_100394020);
    sub_1002F7CB8(v988, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    sub_1000059A8(v985, &qword_10042BF60, &qword_100394020);
    return (v989 & 1) != 0;
  }

  sub_1000059A8(v1163, &qword_10042BF60, &qword_100394020);
  if (v983(v1167 + v980, 1, v1166) != 1)
  {
LABEL_339:
    sub_1000059A8(v1167, &qword_10042ED68, &qword_100398B80);
    return 0;
  }

  sub_1000059A8(v1167, &qword_10042BF60, &qword_100394020);
  return 1;
}

uint64_t sub_1002D6794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002FB284(&qword_10042ED38, type metadata accessor for Proto_Gpsd_Request);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002D6834(uint64_t a1)
{
  v2 = sub_1002FB284(&qword_100418C50, type metadata accessor for Proto_Gpsd_Request);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002D68A0()
{
  sub_1002FB284(&qword_100418C50, type metadata accessor for Proto_Gpsd_Request);

  return Message.hash(into:)();
}

uint64_t sub_1002D691C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434E10);
  sub_100005DF0(v0, qword_100434E10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_100393ED0;
  v4 = v128 + v3;
  v5 = v128 + v3 + v1[14];
  *(v128 + v3) = 0;
  *v5 = "PROTOBUF_DEFAULT";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v128 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "START";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v128 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "STOP";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v128 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "RESET";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v128 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "CLEAR";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v128 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "DELETE_GNSS_DATA";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v128 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "SET_PVTM_REPORT";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v128 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SET_NMEA_HANDLER";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v128 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "INJECT_ASSISTANCE_POSITION";
  *(v22 + 8) = 26;
  *(v22 + 16) = 2;
  v8();
  v23 = (v128 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "INJECT_ASSISTANCE_TIME";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v8();
  v25 = (v128 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "INJECT_ASSISTANCE_FILE";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v8();
  v27 = (v128 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "INJECT_RTI_FILE";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v128 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "INJECT_SVID_BLOCKLIST";
  *(v30 + 1) = 21;
  v30[16] = 2;
  v8();
  v31 = (v128 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SET_ASSISTANCE_PRESSURE";
  *(v32 + 1) = 23;
  v32[16] = 2;
  v8();
  v33 = (v128 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SET_ASSISTANCE_ACCEL";
  *(v34 + 1) = 20;
  v34[16] = 2;
  v8();
  v35 = (v128 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "SET_ASSISTANCE_GYRO";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v8();
  v37 = v128 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "SET_ASSISTANCE_DEM";
  *(v37 + 8) = 18;
  *(v37 + 16) = 2;
  v8();
  v38 = (v128 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "SET_ASSISTANCE_MAP_VECTOR";
  *(v39 + 1) = 25;
  v39[16] = 2;
  v8();
  v40 = (v128 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "SET_ASSISTANCE_MOTION_ACTIVITY_CONTEXT";
  *(v41 + 1) = 38;
  v41[16] = 2;
  v8();
  v42 = (v128 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "SET_ASSISTANCE_MOUNT_STATE";
  *(v43 + 1) = 26;
  v43[16] = 2;
  v8();
  v44 = (v128 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "SET_ASSISTANCE_SIGNAL_ENVIRONMENT";
  *(v45 + 1) = 33;
  v45[16] = 2;
  v8();
  v46 = (v128 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "SET_ASSISTANCE_SPEED_CONSTRAINT";
  *(v47 + 1) = 31;
  v47[16] = 2;
  v8();
  v48 = (v128 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "SET_ASSISTANCE_ALONG_TRACK_VELOCITY";
  *(v49 + 1) = 35;
  v49[16] = 2;
  v8();
  v50 = (v128 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "SET_POWER_REPORT";
  *(v51 + 1) = 16;
  v51[16] = 2;
  v8();
  v52 = (v128 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "SET_CONFIG_SIMULATOR_MODE";
  *(v53 + 1) = 25;
  v53[16] = 2;
  v8();
  v54 = (v128 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "SET_CONFIG_ENABLE_GNSS_CONSTELLATIONS";
  *(v55 + 1) = 37;
  v55[16] = 2;
  v8();
  v56 = (v128 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "SET_CONFIG_DUTY_CYCLING";
  *(v57 + 1) = 23;
  v57[16] = 2;
  v8();
  v58 = (v128 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "SET_TIME_TRANSFER_PULSE";
  *(v59 + 1) = 23;
  v59[16] = 2;
  v8();
  v60 = (v128 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "CLEAN_TIME_TRANSFER_PULSE";
  *(v61 + 1) = 25;
  v61[16] = 2;
  v8();
  v62 = (v128 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "INJECT_LTL_INFO";
  *(v63 + 1) = 15;
  v63[16] = 2;
  v8();
  v64 = (v128 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "SET_THERMAL_RISK_STATE";
  *(v65 + 1) = 22;
  v65[16] = 2;
  v8();
  v66 = (v128 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "PING";
  *(v67 + 1) = 4;
  v67[16] = 2;
  v8();
  v68 = v128 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 34;
  *v68 = "BUILD_DEVICE";
  *(v68 + 8) = 12;
  *(v68 + 16) = 2;
  v8();
  v69 = (v128 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 35;
  *v70 = "TERMINATION_IMMINENT";
  *(v70 + 1) = 20;
  v70[16] = 2;
  v8();
  v71 = (v128 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 36;
  *v72 = "EXIT";
  *(v72 + 1) = 4;
  v72[16] = 2;
  v8();
  v73 = (v128 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 37;
  *v74 = "FORCE_CLEAR_ALL_NV";
  *(v74 + 1) = 18;
  v74[16] = 2;
  v8();
  v75 = (v128 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 38;
  *v76 = "SET_CONFIG_RF_BAND_ENABLE";
  *(v76 + 1) = 25;
  v76[16] = 2;
  v8();
  v77 = (v128 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 39;
  *v78 = "INJECT_RAVEN_ORBIT_FILE";
  *(v78 + 1) = 23;
  v78[16] = 2;
  v8();
  v79 = (v128 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 51;
  *v80 = "START_EMERGENCY_PREEMPTIVE_SESSION";
  *(v80 + 1) = 34;
  v80[16] = 2;
  v8();
  v81 = (v128 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 52;
  *v82 = "STOP_EMERGENCY_PREEMPTIVE_SESSION";
  *(v82 + 1) = 33;
  v82[16] = 2;
  v8();
  v83 = (v128 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 53;
  *v84 = "SET_EMERGENCY_CONFIG";
  *(v84 + 1) = 20;
  v84[16] = 2;
  v8();
  v85 = (v128 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 54;
  *v86 = "SET_EMERGENCY_SESSION_SUMMARY_REPORT";
  *(v86 + 1) = 36;
  v86[16] = 2;
  v8();
  v87 = (v128 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 55;
  *v88 = "ENTER_EMERGENCY_MODE";
  *(v88 + 1) = 20;
  v88[16] = 2;
  v8();
  v89 = (v128 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 56;
  *v90 = "EXIT_EMERGENCY_MODE";
  *(v90 + 1) = 19;
  v90[16] = 2;
  v8();
  v91 = (v128 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 57;
  *v92 = "GEM_PROTOCOL_REQUEST";
  *(v92 + 1) = 20;
  v92[16] = 2;
  v8();
  v93 = (v128 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 60;
  *v94 = "START_EMERGENCY_POSITION";
  *(v94 + 1) = 24;
  v94[16] = 2;
  v8();
  v95 = (v128 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 61;
  *v96 = "STOP_EMERGENCY_POSITION";
  *(v96 + 1) = 23;
  v96[16] = 2;
  v8();
  v97 = (v128 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 62;
  *v98 = "SET_EMERGENCY_POSITION_REPORT";
  *(v98 + 1) = 29;
  v98[16] = 2;
  v8();
  v99 = (v128 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 63;
  *v100 = "SET_EMERGENCY_MEASUREMENT_REPORT";
  *(v100 + 1) = 32;
  v100[16] = 2;
  v8();
  v101 = (v128 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 64;
  *v102 = "SET_NW_ASSISTANCE_NEEDED_REPORT";
  *(v102 + 1) = 31;
  v102[16] = 2;
  v8();
  v103 = (v128 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 65;
  *v104 = "SET_NW_ASSISTANCE_GPS_REF_TIME";
  *(v104 + 1) = 30;
  v104[16] = 2;
  v8();
  v105 = (v128 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 66;
  *v106 = "SET_NW_ASSISTANCE_REF_POSITION";
  *(v106 + 1) = 30;
  v106[16] = 2;
  v8();
  v107 = (v128 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 67;
  *v108 = "SET_NW_ASSISTANCE_GPS_EPHEMERIS";
  *(v108 + 1) = 31;
  v108[16] = 2;
  v8();
  v109 = (v128 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 68;
  *v110 = "SET_NW_ASSISTANCE_GPS_ACQUISITION";
  *(v110 + 1) = 33;
  v110[16] = 2;
  v8();
  v111 = (v128 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 69;
  *v112 = "INJECT_FT_ASSISTANCE";
  *(v112 + 1) = 20;
  v112[16] = 2;
  v8();
  v113 = (v128 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 70;
  *v114 = "DECODE_SUPL_INIT";
  *(v114 + 1) = 16;
  v114[16] = 2;
  v8();
  v115 = (v128 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 71;
  *v116 = "SET_SUPL_INIT";
  *(v116 + 1) = 13;
  v116[16] = 2;
  v8();
  v117 = (v128 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 72;
  *v118 = "SET_SUPL_LOCATIONID_NEEDED_REPORT";
  *(v118 + 1) = 33;
  v118[16] = 2;
  v8();
  v119 = (v128 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 73;
  *v120 = "SET_SUPL_LOCATIONID";
  *(v120 + 1) = 19;
  v120[16] = 2;
  v8();
  v121 = (v128 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 74;
  *v122 = "ABORT_SUPL_SESSION";
  *(v122 + 1) = 18;
  v122[16] = 2;
  v8();
  v123 = (v128 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 75;
  *v124 = "SET_SUPL_SESSION_STATUS_REPORT";
  *(v124 + 1) = 30;
  v124[16] = 2;
  v8();
  v125 = (v128 + v3 + 61 * v2);
  v126 = v125 + v1[14];
  *v125 = 76;
  *v126 = "SET_SUPL_WLAN_MEAS";
  *(v126 + 1) = 18;
  v126[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002D79E8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434E28);
  sub_100005DF0(v0, qword_100434E28);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_type";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mach_continuous_time_ns";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "result_code";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002D7C44()
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
        v3 = *(type metadata accessor for Proto_Gpsd_Response(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for Proto_Gpsd_Response(0) + 20);
        sub_100303344();
LABEL_12:
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v6 = *(type metadata accessor for Proto_Gpsd_Response(0) + 28);
    sub_1000361C0();
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1002D7D5C()
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 62)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v6 = *(v0 + *(result + 20));
    sub_100303344();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v4 = (v0 + *(v3 + 24));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  if (*(v0 + *(v3 + 28)) != 10)
  {
    v7 = *(v0 + *(v3 + 28));
    sub_1000361C0();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1002D7EC8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 62;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + a1[7]) = 10;
  return result;
}

uint64_t sub_1002D7F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002FB284(&qword_10042ED30, type metadata accessor for Proto_Gpsd_Response);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002D7FE8(uint64_t a1)
{
  v2 = sub_1002FB284(&qword_100418C00, type metadata accessor for Proto_Gpsd_Response);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002D8054()
{
  sub_1002FB284(&qword_100418C00, type metadata accessor for Proto_Gpsd_Response);

  return Message.hash(into:)();
}

uint64_t sub_1002D80FC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434E40);
  sub_100005DF0(v0, qword_100434E40);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_100393EE0;
  v4 = v63 + v3;
  v5 = v63 + v3 + v1[14];
  *(v63 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v63 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "request_type";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v63 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mach_continuous_time_ns";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v63 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "fix";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v63 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "meas";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v63 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "power_measurement";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v63 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "status";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v63 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "time_transfer_data_extend";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = v63 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 16;
  *v22 = "recovery_statistics";
  *(v22 + 8) = 19;
  *(v22 + 16) = 2;
  v8();
  v23 = (v63 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 17;
  *v24 = "ltl_info_request";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v63 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 18;
  *v26 = "decoded_extended_ephemeris";
  *(v26 + 1) = 26;
  v26[16] = 2;
  v8();
  v27 = (v63 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 19;
  *v28 = "decoded_rti";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v63 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 22;
  *v30 = "start_status";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v8();
  v31 = (v63 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 20;
  *v32 = "stop_status";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v63 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 23;
  *v34 = "exception";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v8();
  v35 = (v63 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 25;
  *v36 = "ask_baseband_reset";
  *(v36 + 1) = 18;
  v36[16] = 2;
  v8();
  v37 = v63 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 30;
  *v37 = "summary_report";
  *(v37 + 8) = 14;
  *(v37 + 16) = 2;
  v8();
  v38 = (v63 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 31;
  *v39 = "gem_protocol_indication";
  *(v39 + 1) = 23;
  v39[16] = 2;
  v8();
  v40 = (v63 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 40;
  *v41 = "position_report";
  *(v41 + 1) = 15;
  v41[16] = 2;
  v8();
  v42 = (v63 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 41;
  *v43 = "cplane_measurement_report";
  *(v43 + 1) = 25;
  v43[16] = 2;
  v8();
  v44 = (v63 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 42;
  *v45 = "assistance_needed_report";
  *(v45 + 1) = 24;
  v45[16] = 2;
  v8();
  v46 = (v63 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 43;
  *v47 = "cell_ft_assistance_request";
  *(v47 + 1) = 26;
  v47[16] = 2;
  v8();
  v48 = (v63 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 44;
  *v49 = "cplane_measurement_report_with_estimate";
  *(v49 + 1) = 39;
  v49[16] = 2;
  v8();
  v50 = (v63 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 50;
  *v51 = "supl_session_status";
  *(v51 + 1) = 19;
  v51[16] = 2;
  v8();
  v52 = (v63 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 51;
  *v53 = "decoded_supl_init";
  *(v53 + 1) = 17;
  v53[16] = 2;
  v8();
  v54 = (v63 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 52;
  *v55 = "supl_init_index";
  *(v55 + 1) = 15;
  v55[16] = 2;
  v8();
  v56 = (v63 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 53;
  *v57 = "supl_init_decode_result";
  *(v57 + 1) = 23;
  v57[16] = 2;
  v8();
  v58 = (v63 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 54;
  *v59 = "sim_instance";
  *(v59 + 1) = 12;
  v59[16] = 2;
  v8();
  v60 = (v63 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 55;
  *v61 = "wlan_measurement_request";
  *(v61 + 1) = 24;
  v61[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002D89D4()
{
  v0 = type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 15896;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  v5 = type metadata accessor for Proto_Gnss_Fix(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  v9 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  v11 = type metadata accessor for Proto_Gpsd_Status(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  v13 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  v15 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  v17 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  v19 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  v21 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startStatus) = 10;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__stopStatus) = 10;
  v22 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  v23 = type metadata accessor for Proto_Gpsd_Exception(0);
  (*(*(v23 - 8) + 56))(v3 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  v25 = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  v27 = type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0);
  (*(*(v27 - 8) + 56))(v3 + v26, 1, 1, v27);
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolIndication) = xmmword_10036D770;
  v28 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  v29 = type metadata accessor for Proto_Gnss_Emergency_PositionReport(0);
  (*(*(v29 - 8) + 56))(v3 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  v31 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0);
  (*(*(v31 - 8) + 56))(v3 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  v33 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0);
  (*(*(v33 - 8) + 56))(v3 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  v35 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  (*(*(v35 - 8) + 56))(v3 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  v37 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0);
  (*(*(v37 - 8) + 56))(v3 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  v39 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0);
  (*(*(v39 - 8) + 56))(v3 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  v41 = type metadata accessor for Proto_Gnss_Emergency_Init(0);
  (*(*(v41 - 8) + 56))(v3 + v40, 1, 1, v41);
  v42 = v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  *v42 = 0;
  *(v42 + 4) = 1;
  *(v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult) = 4;
  v43 = v3 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  *v43 = 0;
  *(v43 + 4) = 1;
  v44 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  v45 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  result = (*(*(v45 - 8) + 56))(v3 + v44, 1, 1, v45);
  qword_100480E90 = v3;
  return result;
}

uint64_t sub_1002D9034(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10042C000, &unk_1003940C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v225 = &v184 - v5;
  v6 = sub_100024A2C(&qword_10042BFF8, &qword_1003940B8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v224 = &v184 - v8;
  v9 = sub_100024A2C(&qword_10042BFF0, &qword_1003940B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v223 = &v184 - v11;
  v12 = sub_100024A2C(&qword_10042BFE8, &qword_1003940A8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v222 = &v184 - v14;
  v15 = sub_100024A2C(&qword_10042BFE0, &qword_1003940A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v221 = &v184 - v17;
  v18 = sub_100024A2C(&qword_10042BFD8, &qword_100394098);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v220 = &v184 - v20;
  v21 = sub_100024A2C(&qword_10042BFD0, &qword_100394090);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v219 = &v184 - v23;
  v24 = sub_100024A2C(&qword_10042BFC8, &qword_100394088);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v218 = &v184 - v26;
  v27 = sub_100024A2C(&qword_10042BFC0, &qword_100394080);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v217 = &v184 - v29;
  v30 = sub_100024A2C(&qword_10042BFB8, &qword_100394078);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v216 = &v184 - v32;
  v33 = sub_100024A2C(&qword_10042BFB0, &qword_100394070);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v215 = &v184 - v35;
  v36 = sub_100024A2C(&qword_10042BFA8, &qword_100394068);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v214 = &v184 - v38;
  v39 = sub_100024A2C(&qword_10042BFA0, &qword_100394060);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v212 = &v184 - v41;
  v42 = sub_100024A2C(&qword_10042BF98, &qword_100394058);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v208 = &v184 - v44;
  v45 = sub_100024A2C(&qword_10042BF90, &qword_100394050);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v204 = &v184 - v47;
  v48 = sub_100024A2C(&qword_10042BF88, &qword_100394048);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48 - 8);
  v199 = &v184 - v50;
  v51 = sub_100024A2C(&qword_10042BF80, &qword_100394040);
  v52 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51 - 8);
  v196 = &v184 - v53;
  v54 = sub_100024A2C(&qword_10042BF78, &qword_100394038);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54 - 8);
  v192 = &v184 - v56;
  v57 = sub_100024A2C(&qword_10042BF70, &qword_100394030);
  v58 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57 - 8);
  v187 = &v184 - v59;
  v60 = sub_100024A2C(&qword_10042BF68, &qword_100394028);
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60 - 8);
  v63 = &v184 - v62;
  *(v1 + 16) = 15896;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  v64 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  v65 = type metadata accessor for Proto_Gnss_Fix(0);
  (*(*(v65 - 8) + 56))(v1 + v64, 1, 1, v65);
  v66 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  v67 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  (*(*(v67 - 8) + 56))(v1 + v66, 1, 1, v67);
  v68 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  v184 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  v69 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  (*(*(v69 - 8) + 56))(v1 + v68, 1, 1, v69);
  v70 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  v185 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  v71 = type metadata accessor for Proto_Gpsd_Status(0);
  (*(*(v71 - 8) + 56))(v1 + v70, 1, 1, v71);
  v72 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  v186 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  v73 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  (*(*(v73 - 8) + 56))(v1 + v72, 1, 1, v73);
  v74 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  v188 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  v75 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  (*(*(v75 - 8) + 56))(v1 + v74, 1, 1, v75);
  v76 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  v189 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  v77 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  (*(*(v77 - 8) + 56))(v1 + v76, 1, 1, v77);
  v78 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  v190 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  v79 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  (*(*(v79 - 8) + 56))(v1 + v78, 1, 1, v79);
  v80 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  v191 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  v81 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  (*(*(v81 - 8) + 56))(v1 + v80, 1, 1, v81);
  v193 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startStatus;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startStatus) = 10;
  v82 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__stopStatus;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__stopStatus) = 10;
  v83 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  v194 = v82;
  v195 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  v84 = type metadata accessor for Proto_Gpsd_Exception(0);
  (*(*(v84 - 8) + 56))(v1 + v83, 1, 1, v84);
  v85 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  v197 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  v86 = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  (*(*(v86 - 8) + 56))(v1 + v85, 1, 1, v86);
  v87 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  v198 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  v88 = type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0);
  (*(*(v88 - 8) + 56))(v1 + v87, 1, 1, v88);
  v89 = (v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolIndication);
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolIndication) = xmmword_10036D770;
  v90 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  v200 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  v91 = type metadata accessor for Proto_Gnss_Emergency_PositionReport(0);
  (*(*(v91 - 8) + 56))(v1 + v90, 1, 1, v91);
  v92 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  v201 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  v93 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0);
  (*(*(v93 - 8) + 56))(v1 + v92, 1, 1, v93);
  v94 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  v202 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  v95 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0);
  (*(*(v95 - 8) + 56))(v1 + v94, 1, 1, v95);
  v96 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  v203 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  v97 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  (*(*(v97 - 8) + 56))(v1 + v96, 1, 1, v97);
  v98 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  v205 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  v99 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0);
  (*(*(v99 - 8) + 56))(v1 + v98, 1, 1, v99);
  v100 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  v206 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  v101 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0);
  (*(*(v101 - 8) + 56))(v1 + v100, 1, 1, v101);
  v102 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  v207 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  v103 = type metadata accessor for Proto_Gnss_Emergency_Init(0);
  (*(*(v103 - 8) + 56))(v1 + v102, 1, 1, v103);
  v104 = v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  v209 = v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  *v104 = 0;
  *(v104 + 4) = 1;
  v105 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult) = 4;
  v106 = v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  v210 = v105;
  v211 = v106;
  *v106 = 0;
  *(v106 + 4) = 1;
  v107 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  v213 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  v108 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  (*(*(v108 - 8) + 56))(v1 + v107, 1, 1, v108);
  swift_beginAccess();
  LOBYTE(v107) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v107;
  swift_beginAccess();
  LOBYTE(v107) = *(a1 + 17);
  swift_beginAccess();
  *(v1 + 17) = v107;
  swift_beginAccess();
  v109 = *(a1 + 24);
  v110 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v109;
  *(v1 + 32) = v110;
  v111 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  sub_10000A0A4(a1 + v111, v63, &qword_10042BF68, &qword_100394028);
  swift_beginAccess();
  sub_10000AD64(v63, v1 + v64, &qword_10042BF68, &qword_100394028);
  swift_endAccess();
  v112 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  v113 = v187;
  sub_10000A0A4(a1 + v112, v187, &qword_10042BF70, &qword_100394030);
  swift_beginAccess();
  sub_10000AD64(v113, v1 + v66, &qword_10042BF70, &qword_100394030);
  swift_endAccess();
  v114 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  v115 = v192;
  sub_10000A0A4(a1 + v114, v192, &qword_10042BF78, &qword_100394038);
  v116 = v184;
  swift_beginAccess();
  sub_10000AD64(v115, v1 + v116, &qword_10042BF78, &qword_100394038);
  swift_endAccess();
  v117 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  v118 = v196;
  sub_10000A0A4(a1 + v117, v196, &qword_10042BF80, &qword_100394040);
  v119 = v185;
  swift_beginAccess();
  sub_10000AD64(v118, v1 + v119, &qword_10042BF80, &qword_100394040);
  swift_endAccess();
  v120 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  v121 = v199;
  sub_10000A0A4(a1 + v120, v199, &qword_10042BF88, &qword_100394048);
  v122 = v186;
  swift_beginAccess();
  sub_10000AD64(v121, v1 + v122, &qword_10042BF88, &qword_100394048);
  swift_endAccess();
  v123 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  v124 = v204;
  sub_10000A0A4(a1 + v123, v204, &qword_10042BF90, &qword_100394050);
  v125 = v188;
  swift_beginAccess();
  sub_10000AD64(v124, v1 + v125, &qword_10042BF90, &qword_100394050);
  swift_endAccess();
  v126 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  v127 = v208;
  sub_10000A0A4(a1 + v126, v208, &qword_10042BF98, &qword_100394058);
  v128 = v189;
  swift_beginAccess();
  sub_10000AD64(v127, v1 + v128, &qword_10042BF98, &qword_100394058);
  swift_endAccess();
  v129 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  v130 = v212;
  sub_10000A0A4(a1 + v129, v212, &qword_10042BFA0, &qword_100394060);
  v131 = v190;
  swift_beginAccess();
  sub_10000AD64(v130, v1 + v131, &qword_10042BFA0, &qword_100394060);
  swift_endAccess();
  v132 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  swift_beginAccess();
  v133 = v214;
  sub_10000A0A4(a1 + v132, v214, &qword_10042BFA8, &qword_100394068);
  v134 = v191;
  swift_beginAccess();
  sub_10000AD64(v133, v1 + v134, &qword_10042BFA8, &qword_100394068);
  swift_endAccess();
  v135 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startStatus;
  swift_beginAccess();
  LOBYTE(v135) = *(a1 + v135);
  v136 = v193;
  swift_beginAccess();
  *(v1 + v136) = v135;
  v137 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__stopStatus;
  swift_beginAccess();
  LOBYTE(v137) = *(a1 + v137);
  v138 = v194;
  swift_beginAccess();
  *(v1 + v138) = v137;
  v139 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  swift_beginAccess();
  v140 = v215;
  sub_10000A0A4(a1 + v139, v215, &qword_10042BFB0, &qword_100394070);
  v141 = v195;
  swift_beginAccess();
  sub_10000AD64(v140, v1 + v141, &qword_10042BFB0, &qword_100394070);
  swift_endAccess();
  v142 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  swift_beginAccess();
  v143 = v216;
  sub_10000A0A4(a1 + v142, v216, &qword_10042BFB8, &qword_100394078);
  v144 = v197;
  swift_beginAccess();
  sub_10000AD64(v143, v1 + v144, &qword_10042BFB8, &qword_100394078);
  swift_endAccess();
  v145 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  swift_beginAccess();
  v146 = v217;
  sub_10000A0A4(a1 + v145, v217, &qword_10042BFC0, &qword_100394080);
  v147 = v198;
  swift_beginAccess();
  sub_10000AD64(v146, v1 + v147, &qword_10042BFC0, &qword_100394080);
  swift_endAccess();
  v148 = (a1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolIndication);
  swift_beginAccess();
  v150 = *v148;
  v149 = v148[1];
  swift_beginAccess();
  v151 = *v89;
  v152 = v89[1];
  *v89 = v150;
  v89[1] = v149;
  sub_10000BE4C(v150, v149);
  sub_10000CA64(v151, v152);
  v153 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  swift_beginAccess();
  v154 = v218;
  sub_10000A0A4(a1 + v153, v218, &qword_10042BFC8, &qword_100394088);
  v155 = v200;
  swift_beginAccess();
  sub_10000AD64(v154, v1 + v155, &qword_10042BFC8, &qword_100394088);
  swift_endAccess();
  v156 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  swift_beginAccess();
  v157 = v219;
  sub_10000A0A4(a1 + v156, v219, &qword_10042BFD0, &qword_100394090);
  v158 = v201;
  swift_beginAccess();
  sub_10000AD64(v157, v1 + v158, &qword_10042BFD0, &qword_100394090);
  swift_endAccess();
  v159 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  swift_beginAccess();
  v160 = v220;
  sub_10000A0A4(a1 + v159, v220, &qword_10042BFD8, &qword_100394098);
  v161 = v202;
  swift_beginAccess();
  sub_10000AD64(v160, v1 + v161, &qword_10042BFD8, &qword_100394098);
  swift_endAccess();
  v162 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  swift_beginAccess();
  v163 = v221;
  sub_10000A0A4(a1 + v162, v221, &qword_10042BFE0, &qword_1003940A0);
  v164 = v203;
  swift_beginAccess();
  sub_10000AD64(v163, v1 + v164, &qword_10042BFE0, &qword_1003940A0);
  swift_endAccess();
  v165 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  swift_beginAccess();
  v166 = v222;
  sub_10000A0A4(a1 + v165, v222, &qword_10042BFE8, &qword_1003940A8);
  v167 = v205;
  swift_beginAccess();
  sub_10000AD64(v166, v1 + v167, &qword_10042BFE8, &qword_1003940A8);
  swift_endAccess();
  v168 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  swift_beginAccess();
  v169 = v223;
  sub_10000A0A4(a1 + v168, v223, &qword_10042BFF0, &qword_1003940B0);
  v170 = v206;
  swift_beginAccess();
  sub_10000AD64(v169, v1 + v170, &qword_10042BFF0, &qword_1003940B0);
  swift_endAccess();
  v171 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  swift_beginAccess();
  v172 = v224;
  sub_10000A0A4(a1 + v171, v224, &qword_10042BFF8, &qword_1003940B8);
  v173 = v207;
  swift_beginAccess();
  sub_10000AD64(v172, v1 + v173, &qword_10042BFF8, &qword_1003940B8);
  swift_endAccess();
  v174 = a1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  swift_beginAccess();
  LODWORD(v150) = *v174;
  LOBYTE(v174) = *(v174 + 4);
  v175 = v209;
  swift_beginAccess();
  *v175 = v150;
  *(v175 + 4) = v174;
  v176 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult;
  swift_beginAccess();
  LOBYTE(v176) = *(a1 + v176);
  v177 = v210;
  swift_beginAccess();
  *(v1 + v177) = v176;
  v178 = a1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  swift_beginAccess();
  LODWORD(v177) = *v178;
  LOBYTE(v178) = *(v178 + 4);
  v179 = v211;
  swift_beginAccess();
  *v179 = v177;
  *(v179 + 4) = v178;
  v180 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  swift_beginAccess();
  v181 = v225;
  sub_10000A0A4(a1 + v180, v225, &qword_10042C000, &unk_1003940C0);

  v182 = v213;
  swift_beginAccess();
  sub_10000AD64(v181, v1 + v182, &qword_10042C000, &unk_1003940C0);
  swift_endAccess();
  return v1;
}