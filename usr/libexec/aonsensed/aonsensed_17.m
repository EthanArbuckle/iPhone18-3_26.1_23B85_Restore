void sub_1001AEC98(uint64_t *a1)
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
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v10 = swift_allocObject();
    sub_100246654(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 117) = v2;

  free(v1);
}

BOOL sub_1001AED64()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  return *(v1 + 117) != 7;
}

uint64_t sub_1001AEDB8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v6 = swift_allocObject();
    sub_100246654(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  result = swift_beginAccess();
  *(v5 + 117) = 7;
  return result;
}

void (*sub_1001AEEA8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 124))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AEF54;
}

void (*sub_1001AF03C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 128);
  if (*(v6 + 132))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AF0E8;
}

uint64_t sub_1001AF1D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F30, &qword_100383400);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_100423F30, &qword_100383400);
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  *(a1 + v8[9]) = 5;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F30, &qword_100383400);
  }

  return result;
}

uint64_t sub_1001AF3B0(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F30, &qword_100383400);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001AF468(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F30, &qword_100383400) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F30, &qword_100383400);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v8[5];
    v17 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v13 + v8[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    *(v13 + v8[9]) = 5;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F30, &qword_100383400);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  }

  return sub_1001AF6F8;
}

uint64_t sub_1001AF7AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100423F28, &qword_1003833F8);
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F28, &qword_1003833F8);
  }

  return result;
}

uint64_t sub_1001AF924(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423F28, &qword_1003833F8);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001AF9DC(void *a1))(uint64_t **, char)
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
  v5 = *(*(sub_100024A2C(&qword_100423F28, &qword_1003833F8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F28, &qword_1003833F8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F28, &qword_1003833F8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  return sub_100268FEC;
}

uint64_t sub_1001AFCF4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001AFD2C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 20);
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

uint64_t sub_1001AFDC4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001AFE0C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001AFE44(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 24);
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

uint64_t sub_1001AFEDC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001AFF24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1001AFF94(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001AFFCC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 20);
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

uint64_t sub_1001B0064()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B00AC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B00E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 24);
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

uint64_t sub_1001B017C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B01C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F38, &qword_100383408);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_100423F38, &qword_100383408);
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F38, &qword_100383408);
  }

  return result;
}

uint64_t sub_1001B03A0(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F38, &qword_100383408);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B0458(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F38, &qword_100383408) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F38, &qword_100383408);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    v17 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v8 + 24);
    v19 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F38, &qword_100383408);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  }

  return sub_1001B06EC;
}

uint64_t sub_1001B07A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F40, &qword_100383410);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100423F40, &qword_100383410);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F40, &qword_100383410);
  }

  return result;
}

uint64_t sub_1001B0918(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423F40, &qword_100383410);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B09D0(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F40, &qword_100383410) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F40, &qword_100383410);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F40, &qword_100383410);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  }

  return sub_1001B0C00;
}

BOOL sub_1001B0C78(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_10000A0A4(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000059A8(v12, a1, a2);
  return v15;
}

uint64_t sub_1001B0DB0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1001B0E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F48, &qword_100383418);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_100423F48, &qword_100383418);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F48, &qword_100383418);
  }

  return result;
}

uint64_t sub_1001B0FD4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100423F48, &qword_100383418);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B108C(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F48, &qword_100383418) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F48, &qword_100383418);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F48, &qword_100383418);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  }

  return sub_1001B12BC;
}

uint64_t sub_1001B1370@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t sub_1001B14C8()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B14F4(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001B1524(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001B15B0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001B15D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F50, &qword_100383420);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100423F50, &qword_100383420);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v8[6];
  v13 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v8[7];
  v15 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F50, &qword_100383420);
  }

  return result;
}

uint64_t sub_1001B17F8(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423F50, &qword_100383420);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B18B0(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F50, &qword_100383420) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F50, &qword_100383420);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v8[5];
    v17 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v8[6];
    v19 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v8[7];
    v21 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F50, &qword_100383420);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  }

  return sub_1001B1B88;
}

uint64_t sub_1001B1C9C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B1CD4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 20);
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

uint64_t sub_1001B1D6C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B1DB4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B1DEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 24);
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

uint64_t sub_1001B1E84()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B1ECC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B1F04(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 28);
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

uint64_t sub_1001B1F9C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001B1FE4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1001B2064(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B209C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 20);
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

uint64_t sub_1001B2134()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B217C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B21B4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 24);
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

uint64_t sub_1001B224C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B2294(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B22CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 28);
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

uint64_t sub_1001B2364()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B2394()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B23C0(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1001B23F0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001B247C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  *(v0 + *(result + 32)) = 4;
  return result;
}

uint64_t sub_1001B24BC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B24F4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 36);
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

uint64_t sub_1001B258C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B25BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  sub_10000A0A4(v1 + *(v7 + 40), v6, &qword_100423F58, &qword_100383428);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
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
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F58, &qword_100383428);
  }

  return result;
}

uint64_t sub_1001B2744(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 40);
  sub_1000059A8(v1 + v3, &qword_100423F58, &qword_100383428);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B27FC(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F58, &qword_100383428) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 40);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F58, &qword_100383428);
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
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F58, &qword_100383428);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  return sub_1001B2A3C;
}

uint64_t sub_1001B2AF0@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + v2[8]) = 4;
  v6 = a1 + v2[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v2[10];
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t sub_1001B2BEC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B2C24(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 20);
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

uint64_t sub_1001B2CBC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B2D04(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B2D3C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 24);
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

uint64_t sub_1001B2DD4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B2E1C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B2E54(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 28);
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

uint64_t sub_1001B2EEC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B2F1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F60, &qword_100383430);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  sub_10000A0A4(v1 + *(v7 + 32), v6, &qword_100423F60, &qword_100383430);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Plmn);
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
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F60, &qword_100383430);
  }

  return result;
}

uint64_t sub_1001B30A4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100423F60, &qword_100383430);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B315C(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F60, &qword_100383430) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F60, &qword_100383430);
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
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F60, &qword_100383430);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  return sub_1001B339C;
}

uint64_t sub_1001B3450@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v2[8];
  v7 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_1001B3518()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1001B354C(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1001B3584(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20);
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

uint64_t sub_1001B361C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1001B3664(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B369C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 24);
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

uint64_t sub_1001B3734()
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B377C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B37B4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 28);
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

uint64_t sub_1001B384C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B387C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  sub_10000A0A4(v1 + *(v7 + 32), v6, &qword_100423F68, &qword_100383438);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
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
  v13 = v8[8];
  v14 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F68, &qword_100383438);
  }

  return result;
}

uint64_t sub_1001B3A48(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100423F68, &qword_100383438);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001B3B00(void *a1))()
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
  v5 = *(*(sub_100024A2C(&qword_100423F68, &qword_100383438) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F68, &qword_100383438);
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
    v19 = v8[8];
    v20 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F68, &qword_100383438);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  return sub_100268FF0;
}

BOOL sub_1001B3DC0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
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

uint64_t sub_1001B3EF8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1001B3FA4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v2[8];
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_1001B406C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B40A4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 20);
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

uint64_t sub_1001B413C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4184(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B41BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 24);
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

uint64_t sub_1001B4254()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_100423F68, &qword_100383438);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
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
  v13 = v8[8];
  v14 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F68, &qword_100383438);
  }

  return result;
}

uint64_t sub_1001B4450(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100423F68, &qword_100383438);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B4508(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F68, &qword_100383438) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F68, &qword_100383438);
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
    v19 = v8[8];
    v20 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F68, &qword_100383438);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  return sub_1001B478C;
}

BOOL sub_1001B4804(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
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

uint64_t sub_1001B493C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1001B49E8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = v2[7];
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1001B4AB8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B4AF0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 20);
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

uint64_t sub_1001B4B88()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4BD0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B4C08(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 24);
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

uint64_t sub_1001B4CA0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4CE8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B4D20(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 28);
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

uint64_t sub_1001B4DB8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4E00(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B4E38(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 32);
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

uint64_t sub_1001B4ED0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4F00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F60, &qword_100383430);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  sub_10000A0A4(v1 + *(v7 + 36), v6, &qword_100423F60, &qword_100383430);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Plmn);
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
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F60, &qword_100383430);
  }

  return result;
}

uint64_t sub_1001B5088(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 36);
  sub_1000059A8(v1 + v3, &qword_100423F60, &qword_100383430);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B5140(void *a1))(uint64_t **, char)
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
  v5 = *(*(sub_100024A2C(&qword_100423F60, &qword_100383430) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 36);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F60, &qword_100383430);
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
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F60, &qword_100383430);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  return sub_100268FF4;
}

BOOL sub_1001B53BC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_10000A0A4(v4 + *(v13 + 36), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1000059A8(v12, a1, a2);
  return v15;
}

uint64_t sub_1001B54F4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1001B55B8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B55F0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 40);
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

uint64_t sub_1001B5688()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B56D0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 44));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1001B570C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B5744(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 44);
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

uint64_t sub_1001B57DC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B5824(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B585C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 48);
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

uint64_t sub_1001B58F4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B593C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1001B5978(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B59B0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 52);
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

uint64_t sub_1001B5A48()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B5A90(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 56));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1001B5ACC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B5B04(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 56);
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

uint64_t sub_1001B5B9C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 56);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B5BE4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B5C1C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 60);
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

uint64_t sub_1001B5CB4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 60);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B5CE4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v2[9];
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  result = (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v2[12];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v2[13];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v2[14];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v2[15];
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t sub_1001B5E04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100423F70, &qword_100383440);
  v9 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
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
  v14 = v9[8];
  v15 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F70, &qword_100383440);
  }

  return result;
}

uint64_t sub_1001B5FF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_100211270(v16);
    *(v2 + v8) = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  v17 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100423F70, &qword_100383440);
  return swift_endAccess();
}

void (*sub_1001B6160(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F70, &qword_100383440) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F70, &qword_100383440);
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
    v21 = v8[8];
    v22 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
    (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F70, &qword_100383440);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  }

  return sub_1001B6424;
}

void sub_1001B6424(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100211270(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100423F70, &qword_100383440);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100211270(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100423F70, &qword_100383440);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001B6674()
{
  v1 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100423F70, &qword_100383440);
  v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100423F70, &qword_100383440);
  return v8;
}

uint64_t sub_1001B6794()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_100211270(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100423F70, &qword_100383440);
  return swift_endAccess();
}

uint64_t sub_1001B68DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100423F78, &qword_100383448);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v9[7];
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F78, &qword_100383448);
  }

  return result;
}

uint64_t sub_1001B6ABC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_100211270(v16);
    *(v2 + v8) = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  v17 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100423F78, &qword_100383448);
  return swift_endAccess();
}

void (*sub_1001B6C28(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F78, &qword_100383448) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F78, &qword_100383448);
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
    v20 = v8[7];
    v21 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F78, &qword_100383448);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  }

  return sub_1001B6EDC;
}

void sub_1001B6EDC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100211270(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100423F78, &qword_100383448);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100211270(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100423F78, &qword_100383448);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001B712C()
{
  v1 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100423F78, &qword_100383448);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100423F78, &qword_100383448);
  return v8;
}

uint64_t sub_1001B724C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_100211270(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100423F78, &qword_100383448);
  return swift_endAccess();
}

uint64_t sub_1001B7394@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v24 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100423F80, &qword_100383450);
  v9 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
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
  v15 = v9[9];
  v16 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  v17 = a1 + v9[10];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a1 + v9[11];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1 + v9[12];
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = a1 + v9[13];
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = a1 + v9[14];
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = a1 + v9[15];
  *v22 = 0;
  *(v22 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F80, &qword_100383450);
  }

  return result;
}

uint64_t sub_1001B75FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_100211270(v16);
    *(v2 + v8) = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  v17 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100423F80, &qword_100383450);
  return swift_endAccess();
}

void (*sub_1001B7768(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F80, &qword_100383450) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F80, &qword_100383450);
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
    v22 = v8[9];
    v23 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v23 - 8) + 56))(v13 + v22, 1, 1, v23);
    v24 = v13 + v8[10];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v13 + v8[11];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v13 + v8[12];
    *v26 = 0;
    *(v26 + 4) = 1;
    v27 = v13 + v8[13];
    *v27 = 0;
    *(v27 + 4) = 1;
    v28 = v13 + v8[14];
    *v28 = 0;
    *(v28 + 4) = 1;
    v29 = v13 + v8[15];
    *v29 = 0;
    *(v29 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F80, &qword_100383450);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  }

  return sub_1001B7A9C;
}

void sub_1001B7A9C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100211270(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100423F80, &qword_100383450);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100211270(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100423F80, &qword_100383450);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001B7CEC()
{
  v1 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100423F80, &qword_100383450);
  v7 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100423F80, &qword_100383450);
  return v8;
}

uint64_t sub_1001B7E0C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_100211270(v14);
    *(v1 + v6) = v13;
  }

  v15 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v16, &qword_100423F80, &qword_100383450);
  return swift_endAccess();
}

uint64_t sub_1001B7FB0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B7FDC(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001B800C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001B8098()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001B80C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F88, &qword_100383458);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100423F88, &qword_100383458);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_100461230 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100461238;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v6, &qword_100423F88, &qword_100383458);
  }

  return result;
}

uint64_t sub_1001B8268(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423F88, &qword_100383458);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B8320(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F88, &qword_100383458) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F88, &qword_100383458);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100461230 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100461238;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_100423F88, &qword_100383458);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  }

  return sub_1001B8578;
}

uint64_t sub_1001B865C@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = a1(0);
  *(a4 + *(v8 + 20)) = a2;
  v9 = *(v8 + 24);
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4 + v9, 1, 1, v10);
}

uint64_t sub_1001B8714()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B8740(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001B8770(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001B87FC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001B883C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B8874(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 24);
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

uint64_t sub_1001B890C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B8954(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B898C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 28);
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

uint64_t sub_1001B8A24()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B8A6C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B8AA4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 32);
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

uint64_t sub_1001B8B3C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B8B6C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 36));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B8B98(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1001B8BC8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001B8C54()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v0 + *(result + 36)) = 4;
  return result;
}

uint64_t sub_1001B8C94(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B8CCC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 40);
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

uint64_t sub_1001B8D64()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001B8D94@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(a1 + result[5]) = 6;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + result[9]) = 4;
  v6 = a1 + result[10];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_1001B8E34(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B8E6C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 20);
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

uint64_t sub_1001B8F04()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B8F4C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B8F84(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 24);
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

uint64_t sub_1001B901C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B9064@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_100423F90, &qword_100383460);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001B91DC(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F90, &qword_100383460);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001B9294(void *a1))()
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
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F90, &qword_100383460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_100268FF8;
}

uint64_t sub_1001B9554(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B958C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 24);
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

uint64_t sub_1001B9624()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B966C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_100423F90, &qword_100383460);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001B97E4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F90, &qword_100383460);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001B989C(void *a1))()
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
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F90, &qword_100383460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_100268FF8;
}

uint64_t sub_1001B9B5C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B9B94(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 24);
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

uint64_t sub_1001B9C2C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B9C74(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B9CAC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 28);
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

uint64_t sub_1001B9D44()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B9D8C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B9DC4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 32);
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

uint64_t sub_1001B9E5C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B9EA4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B9EDC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 36);
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

uint64_t sub_1001B9F74()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B9FA4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_1001BA064@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_100423F90, &qword_100383460);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001BA1DC(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F90, &qword_100383460);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001BA294(void *a1))()
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
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F90, &qword_100383460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_100268FF8;
}

uint64_t sub_1001BA554(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BA58C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 24);
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

uint64_t sub_1001BA624()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BA66C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BA6A4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 28);
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

uint64_t sub_1001BA73C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BA784(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BA7BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 32);
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

uint64_t sub_1001BA854()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BA89C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BA8D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 36);
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

uint64_t sub_1001BA96C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BA9B4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BA9EC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 40);
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

uint64_t sub_1001BAA84()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BAACC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BAB04(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 44);
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

uint64_t sub_1001BAB9C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BABCC@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
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

uint64_t sub_1001BACAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_100423F90, &qword_100383460);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001BAE24(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F90, &qword_100383460);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001BAEDC(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F90, &qword_100383460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_1001BB10C;
}

uint64_t sub_1001BB1D8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BB210(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 24);
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

uint64_t sub_1001BB2A8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BB2F0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BB328(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 28);
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

uint64_t sub_1001BB3C0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BB408(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BB440(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 32);
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

uint64_t sub_1001BB4D8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BB520(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BB558(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 36);
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

uint64_t sub_1001BB5F0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BB638(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BB670(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 40);
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

uint64_t sub_1001BB708()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BB738@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1001BB820@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_100423F90, &qword_100383460);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001BB998(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F90, &qword_100383460);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001BBA50(void *a1))()
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
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F90, &qword_100383460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_100268FF8;
}

uint64_t sub_1001BBD10(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BBD48(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 24);
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

uint64_t sub_1001BBDE0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BBE28@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v8 = a2 + *(v4 + 24);
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_1001BBED8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BBF10(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Polygon(0) + 24);
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

uint64_t sub_1001BBFA8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BC068@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100423F98, &qword_100383468);
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + *(v9 + 24);
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423F98, &qword_100383468);
  }

  return result;
}

uint64_t sub_1001BC240(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_100246E4C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  v16 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100423F98, &qword_100383468);
  return swift_endAccess();
}

void (*sub_1001BC3B4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F98, &qword_100383468) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F98, &qword_100383468);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    v19 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + *(v8 + 24);
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F98, &qword_100383468);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  }

  return sub_1001BC658;
}

void sub_1001BC658(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100246E4C(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100423F98, &qword_100383468);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100246E4C(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100423F98, &qword_100383468);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001BC8B8()
{
  v1 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100423F98, &qword_100383468);
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100423F98, &qword_100383468);
  return v8;
}

uint64_t sub_1001BC9D8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_100246E4C(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_100423F98, &qword_100383468);
  return swift_endAccess();
}

uint64_t sub_1001BCB28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100423FA0, &qword_100383470);
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  }

  UnknownStorage.init()();
  v11 = v9[5];
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v9[6];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[7];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v9[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v9[9];
  *v16 = 0;
  *(v16 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423FA0, &qword_100383470);
  }

  return result;
}

uint64_t sub_1001BCD30(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_100246E4C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  v16 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100423FA0, &qword_100383470);
  return swift_endAccess();
}

void (*sub_1001BCEA4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FA0, &qword_100383470) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FA0, &qword_100383470);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v8[5];
    v19 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + v8[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[9];
    *v23 = 0;
    *(v23 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FA0, &qword_100383470);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  }

  return sub_1001BD178;
}

void sub_1001BD178(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100246E4C(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100423FA0, &qword_100383470);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100246E4C(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100423FA0, &qword_100383470);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001BD3D8()
{
  v1 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100423FA0, &qword_100383470);
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100423FA0, &qword_100383470);
  return v8;
}

uint64_t sub_1001BD4F8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_100246E4C(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_100423FA0, &qword_100383470);
  return swift_endAccess();
}

uint64_t sub_1001BD648@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100423FA8, &qword_100383478);
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  }

  UnknownStorage.init()();
  v11 = v9[5];
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v9[6];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[7];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v9[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v9[9];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v9[10];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a1 + v9[11];
  *v18 = 0;
  *(v18 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423FA8, &qword_100383478);
  }

  return result;
}

uint64_t sub_1001BD870(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_100246E4C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  v16 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100423FA8, &qword_100383478);
  return swift_endAccess();
}

void (*sub_1001BD9E4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FA8, &qword_100383478) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FA8, &qword_100383478);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v8[5];
    v19 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + v8[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[9];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v13 + v8[10];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v13 + v8[11];
    *v25 = 0;
    *(v25 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FA8, &qword_100383478);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  }

  return sub_1001BDCD8;
}

void sub_1001BDCD8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100246E4C(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100423FA8, &qword_100383478);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100246E4C(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100423FA8, &qword_100383478);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001BDF38()
{
  v1 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100423FA8, &qword_100383478);
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100423FA8, &qword_100383478);
  return v8;
}

uint64_t sub_1001BE058()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_100246E4C(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_100423FA8, &qword_100383478);
  return swift_endAccess();
}

uint64_t sub_1001BE1A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100423FB0, &qword_100383480);
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  }

  UnknownStorage.init()();
  v11 = v9[5];
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v9[6];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[7];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v9[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v9[9];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v9[10];
  *v17 = 0;
  *(v17 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423FB0, &qword_100383480);
  }

  return result;
}

uint64_t sub_1001BE3C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_100246E4C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  v16 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100423FB0, &qword_100383480);
  return swift_endAccess();
}

void (*sub_1001BE534(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FB0, &qword_100383480) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FB0, &qword_100383480);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v8[5];
    v19 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + v8[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[9];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v13 + v8[10];
    *v24 = 0;
    *(v24 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FB0, &qword_100383480);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  }

  return sub_1001BE818;
}

void sub_1001BE818(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100246E4C(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100423FB0, &qword_100383480);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100246E4C(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100423FB0, &qword_100383480);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001BEA78()
{
  v1 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100423FB0, &qword_100383480);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100423FB0, &qword_100383480);
  return v8;
}

uint64_t sub_1001BEB98()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_100246E4C(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_100423FB0, &qword_100383480);
  return swift_endAccess();
}

uint64_t sub_1001BECE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100423F90, &qword_100383460);
  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
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
    return sub_1000059A8(v6, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001BEE84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_100246E4C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v16 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100423F90, &qword_100383460);
  return swift_endAccess();
}

void (*sub_1001BEFF8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F90, &qword_100383460);
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
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_1001BF268;
}

void sub_1001BF268(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100246E4C(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100423F90, &qword_100383460);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100246E4C(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100423F90, &qword_100383460);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001BF4C8()
{
  v1 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100423F90, &qword_100383460);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100423F90, &qword_100383460);
  return v8;
}

uint64_t sub_1001BF5E8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_100246E4C(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_100423F90, &qword_100383460);
  return swift_endAccess();
}

uint64_t sub_1001BF738@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100423FB8, &qword_100383488);
  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + *(v9 + 24);
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423FB8, &qword_100383488);
  }

  return result;
}

uint64_t sub_1001BF910(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_100246E4C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  v16 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100423FB8, &qword_100383488);
  return swift_endAccess();
}

void (*sub_1001BFA84(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FB8, &qword_100383488) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FB8, &qword_100383488);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    v19 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + *(v8 + 24);
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FB8, &qword_100383488);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  }

  return sub_1001BFD28;
}

void sub_1001BFD28(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100246E4C(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100423FB8, &qword_100383488);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100246E4C(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100423FB8, &qword_100383488);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001BFF88()
{
  v1 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100423FB8, &qword_100383488);
  v7 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100423FB8, &qword_100383488);
  return v8;
}

uint64_t sub_1001C00A8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_100246E4C(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_100423FB8, &qword_100383488);
  return swift_endAccess();
}

uint64_t sub_1001C01F8@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100423FC0, &qword_100383490);
  v9 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v11 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  v12 = a1 + *(v9 + 24);
  *v12 = 0;
  v12[4] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423FC0, &qword_100383490);
  }

  return result;
}

uint64_t sub_1001C0394(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_100246E4C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  v16 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100423FC0, &qword_100383490);
  return swift_endAccess();
}

void (*sub_1001C0508(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FC0, &qword_100383490) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FC0, &qword_100383490);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v18 = v13 + *(v8 + 20);
    UnknownStorage.init()();
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    v19[4] = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FC0, &qword_100383490);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  }

  return sub_1001C0778;
}

void sub_1001C0778(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_Polygon);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_100246E4C(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_Polygon);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100423FC0, &qword_100383490);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_Polygon);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_100246E4C(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_Polygon);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100423FC0, &qword_100383490);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001C09D8()
{
  v1 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100423FC0, &qword_100383490);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100423FC0, &qword_100383490);
  return v8;
}

uint64_t sub_1001C0AF8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_100246E4C(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_100423FC0, &qword_100383490);
  return swift_endAccess();
}

void (*sub_1001C0CB0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001C0D68;
}

uint64_t sub_1001C0E60()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 20));
  if (v1 == 9)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001C0E8C(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001C0EBC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 9)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001C0F48()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  *(v0 + *(result + 20)) = 9;
  return result;
}

uint64_t sub_1001C0F70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FC8, &qword_100383498);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100423FC8, &qword_100383498);
  v8 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_100461290 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100461298;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v6, &qword_100423FC8, &qword_100383498);
  }

  return result;
}

uint64_t sub_1001C1118(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423FC8, &qword_100383498);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C11D0(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FC8, &qword_100383498) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FC8, &qword_100383498);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100461290 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100461298;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_100423FC8, &qword_100383498);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  }

  return sub_1001C1428;
}

uint64_t sub_1001C1544(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C157C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 20);
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

uint64_t sub_1001C1614()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C165C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1694(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 24);
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

uint64_t sub_1001C172C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C178C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C17C4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 20);
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

uint64_t sub_1001C185C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C18A4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C18DC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 24);
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

uint64_t sub_1001C1974()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C19BC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C19F4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 28);
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

uint64_t sub_1001C1A8C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C1AD4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1B0C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 32);
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

uint64_t sub_1001C1BA4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C1C04(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1C3C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 20);
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

uint64_t sub_1001C1CD4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C1D1C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1D54(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 24);
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

uint64_t sub_1001C1DEC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C1E34(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1E6C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 28);
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

uint64_t sub_1001C1F04()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C1F64(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1F9C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 20);
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

uint64_t sub_1001C2034()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C207C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C20B4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 24);
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

uint64_t sub_1001C214C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C2194(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C21CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 28);
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

uint64_t sub_1001C2264()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C22AC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C22E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 32);
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

uint64_t sub_1001C237C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C23C4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C23FC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 36);
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

uint64_t sub_1001C2494()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C24DC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C2514(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 40);
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

uint64_t sub_1001C25AC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001C25DC@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
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
  return result;
}

uint64_t sub_1001C266C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FD0, &qword_1003834A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_100423FD0, &qword_1003834A0);
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423FD0, &qword_1003834A0);
  }

  return result;
}

uint64_t sub_1001C27E4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423FD0, &qword_1003834A0);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C289C(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FD0, &qword_1003834A0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FD0, &qword_1003834A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FD0, &qword_1003834A0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  }

  return sub_1001C2ACC;
}

uint64_t sub_1001C2B80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FD8, &qword_1003834A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100423FD8, &qword_1003834A8);
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
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
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423FD8, &qword_1003834A8);
  }

  return result;
}

uint64_t sub_1001C2D18(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423FD8, &qword_1003834A8);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C2DD0(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FD8, &qword_1003834A8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FD8, &qword_1003834A8);
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
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FD8, &qword_1003834A8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  }

  return sub_1001C3020;
}

uint64_t sub_1001C30D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FE0, &qword_1003834B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(v1 + *(v7 + 28), v6, &qword_100423FE0, &qword_1003834B0);
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
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
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423FE0, &qword_1003834B0);
  }

  return result;
}

uint64_t sub_1001C325C(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100423FE0, &qword_1003834B0);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C3314(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FE0, &qword_1003834B0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FE0, &qword_1003834B0);
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
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FE0, &qword_1003834B0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  }

  return sub_1001C3554;
}

uint64_t sub_1001C3608@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FE8, &qword_1003834B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(v1 + *(v7 + 32), v6, &qword_100423FE8, &qword_1003834B8);
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
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
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423FE8, &qword_1003834B8);
  }

  return result;
}

uint64_t sub_1001C37C0(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100423FE8, &qword_1003834B8);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C3878(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FE8, &qword_1003834B8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FE8, &qword_1003834B8);
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
    v20 = v13 + v8[9];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[10];
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FE8, &qword_1003834B8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  }

  return sub_1001C3AE8;
}

uint64_t sub_1001C3B9C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v2[8];
  v10 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1 + v9, 1, 1, v10);
}

uint64_t sub_1001C3D50()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001C3D7C(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001C3DAC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001C3E38()
{
  result = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001C3E60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FF0, &qword_1003834C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_100423FF0, &qword_1003834C0);
  v8 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v8[6];
  v13 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v8[7];
  v15 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = v8[8];
  v17 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100423FF0, &qword_1003834C0);
  }

  return result;
}

uint64_t sub_1001C40C4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423FF0, &qword_1003834C0);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C417C(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FF0, &qword_1003834C0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FF0, &qword_1003834C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v8[5];
    v17 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v8[6];
    v19 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v8[7];
    v21 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    v22 = v8[8];
    v23 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
    (*(*(v23 - 8) + 56))(v13 + v22, 1, 1, v23);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FF0, &qword_1003834C0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  }

  return sub_1001C4498;
}

void (*sub_1001C45EC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1001C4694;
}

void (*sub_1001C4770(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001C481C;
}

uint64_t sub_1001C48C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_1002477BC(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v16 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100423FF8, &qword_1003834C8);
  return swift_endAccess();
}

void (*sub_1001C4A34(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FF8, &qword_1003834C8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FF8, &qword_1003834C8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 6;
    *(v13 + v8[6]) = 7;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FF8, &qword_1003834C8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  return sub_1001C4CAC;
}

void sub_1001C4CAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002477BC(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100423FF8, &qword_1003834C8);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002477BC(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100423FF8, &qword_1003834C8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001C4F0C()
{
  v1 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100423FF8, &qword_1003834C8);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100423FF8, &qword_1003834C8);
  return v8;
}

uint64_t sub_1001C502C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1002477BC(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_100423FF8, &qword_1003834C8);
  return swift_endAccess();
}

uint64_t sub_1001C517C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100424000, &qword_1003834D0);
  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
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
  *(a1 + v9[8]) = 4;
  v14 = a1 + v9[9];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v9[10];
  v16 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100424000, &qword_1003834D0);
  }

  return result;
}

uint64_t sub_1001C5388(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_1002477BC(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  v16 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100424000, &qword_1003834D0);
  return swift_endAccess();
}

void (*sub_1001C54FC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424000, &qword_1003834D0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424000, &qword_1003834D0);
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
    *(v13 + v8[8]) = 4;
    v21 = v13 + v8[9];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v8[10];
    v23 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
    (*(*(v23 - 8) + 56))(v13 + v22, 1, 1, v23);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424000, &qword_1003834D0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  }

  return sub_1001C57DC;
}

void sub_1001C57DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1002477BC(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v15, v19, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100424000, &qword_1003834D0);
    swift_endAccess();
    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
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
      v27 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1002477BC(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1002463C0(v14, v19, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100424000, &qword_1003834D0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1001C5A3C()
{
  v1 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000A0A4(v5 + v6, v4, &qword_100424000, &qword_1003834D0);
  v7 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000059A8(v4, &qword_100424000, &qword_1003834D0);
  return v8;
}

uint64_t sub_1001C5B5C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    sub_1002477BC(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000AD64(v5, v9 + v15, &qword_100424000, &qword_1003834D0);
  return swift_endAccess();
}

uint64_t sub_1001C5CAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100424008, &qword_1003834D8);
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1002463C0(v6, a1, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  }

  UnknownStorage.init()();
  *(a1 + v9[5]) = 6;
  v11 = a1 + v9[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  *(a1 + v9[9]) = 4;
  v14 = a1 + v9[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100424008, &qword_1003834D8);
  }

  return result;
}

uint64_t sub_1001C5E80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_1002477BC(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1002463C0(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  v16 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_100424008, &qword_1003834D8);
  return swift_endAccess();
}

void (*sub_1001C5FF4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424008, &qword_1003834D8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424008, &qword_1003834D8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 6;
    v18 = v13 + v8[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    *(v13 + v8[9]) = 4;
    v21 = v13 + v8[10];
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424008, &qword_1003834D8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  }

  return sub_1001C629C;
}