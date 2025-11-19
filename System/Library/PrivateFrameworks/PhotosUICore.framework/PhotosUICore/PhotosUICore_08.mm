uint64_t sub_1A3D2F2E8(uint64_t a1, uint64_t a2)
{
  sub_1A49AE444(0, &qword_1EB146920, sub_1A49AE414, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D2F380(uint64_t a1, uint64_t a2)
{
  sub_1A49AE98C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D2F41C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D2F454()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2F490()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D2F4C8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2F508()
{
  v1 = sub_1A5240E64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D2F590()
{
  v1 = type metadata accessor for LemonadeAlbumsView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5249A94();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v3 + v1[6];
  sub_1A3D35A84(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
  v9 = v1[7];
  sub_1A3F88AE4(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A52440D4();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[10];
  v12 = MEMORY[0x1E6981E90];
  sub_1A49C0360(0, &qword_1EB146C30, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E6981E90]);
  (*(*(v13 - 8) + 8))(v11, v13);
  v14 = MEMORY[0x1E6981E98];
  sub_1A49C0360(0, &qword_1EB1271F8, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E6981E98]);

  v15 = v3 + v1[11];
  sub_1A49C0360(0, &qword_1EB146C38, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, v12);
  (*(*(v16 - 8) + 8))(v15, v16);
  sub_1A49C0360(0, &qword_1EB1271E8, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, v14);

  v17 = v3 + v1[12];
  sub_1A49B93BC(0, &qword_1EB146C40, MEMORY[0x1E6981E90]);
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_1A49B93BC(0, &qword_1EB1213B8, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A3D2F9C4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A49C0360(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_1A49C0360(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_1A49C0360(0, &qword_1EB12F438, MEMORY[0x1E69C2998], MEMORY[0x1E697DCC0]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[8]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    sub_1A49C0360(0, &qword_1EB146C50, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[10];
      goto LABEL_7;
    }

    sub_1A49C0360(0, &qword_1EB146C58, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[11];
      goto LABEL_7;
    }

    sub_1A49B93BC(0, &qword_1EB146C88, MEMORY[0x1E697DA80]);
    v20 = v19;
    v21 = *(*(v19 - 8) + 48);
    v22 = a1 + a3[12];

    return v21(v22, a2, v20);
  }
}

void sub_1A3D2FD1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A49C0360(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_1A49C0360(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_1A49C0360(0, &qword_1EB12F438, MEMORY[0x1E69C2998], MEMORY[0x1E697DCC0]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
    return;
  }

  sub_1A49C0360(0, &qword_1EB146C50, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_7;
  }

  sub_1A49C0360(0, &qword_1EB146C58, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[11];
    goto LABEL_7;
  }

  sub_1A49B93BC(0, &qword_1EB146C88, MEMORY[0x1E697DA80]);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[12];

  v21(v22, a2, a2, v20);
}

uint64_t sub_1A3D30080()
{
  v1 = type metadata accessor for LemonadeAlbumsView();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5249A94();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v3 + v1[6];
  sub_1A3D35A84(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
  v9 = v1[7];
  sub_1A3F88AE4(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A52440D4();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[10];
  v12 = MEMORY[0x1E6981E90];
  sub_1A49C0360(0, &qword_1EB146C30, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E6981E90]);
  (*(*(v13 - 8) + 8))(v11, v13);
  v14 = MEMORY[0x1E6981E98];
  sub_1A49C0360(0, &qword_1EB1271F8, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E6981E98]);

  v15 = v3 + v1[11];
  sub_1A49C0360(0, &qword_1EB146C38, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, v12);
  (*(*(v16 - 8) + 8))(v15, v16);
  sub_1A49C0360(0, &qword_1EB1271E8, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, v14);

  v17 = v3 + v1[12];
  sub_1A49B93BC(0, &qword_1EB146C40, MEMORY[0x1E6981E90]);
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_1A49B93BC(0, &qword_1EB1213B8, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A3D304BC()
{
  v1 = type metadata accessor for LemonadeAlbumsView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5249A94();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v3 + v1[6];
  sub_1A3D35A84(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
  v9 = v1[7];
  sub_1A3F88AE4(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A52440D4();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[10];
  v12 = MEMORY[0x1E6981E90];
  sub_1A49C0360(0, &qword_1EB146C30, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E6981E90]);
  (*(*(v13 - 8) + 8))(v11, v13);
  v14 = MEMORY[0x1E6981E98];
  sub_1A49C0360(0, &qword_1EB1271F8, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E6981E98]);

  v15 = v3 + v1[11];
  sub_1A49C0360(0, &qword_1EB146C38, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, v12);
  (*(*(v16 - 8) + 8))(v15, v16);
  sub_1A49C0360(0, &qword_1EB1271E8, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, v14);

  v17 = v3 + v1[12];
  sub_1A49B93BC(0, &qword_1EB146C40, MEMORY[0x1E6981E90]);
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_1A49B93BC(0, &qword_1EB1213B8, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A3D30904()
{
  type metadata accessor for UIKitSegmentedControl();
  sub_1A524CB74();
  sub_1A49BF010();
  swift_getWitnessTable();
  sub_1A524B9D4();
  sub_1A5249754();
  swift_getWitnessTable();
  sub_1A49BF114();
  sub_1A5242084();
  sub_1A49C042C(&qword_1EB130108, sub_1A49BF114);
  sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A5247D04();
  sub_1A5249754();
  sub_1A524B514();
  sub_1A49BF16C(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3E754D0();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D30D70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D30DAC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D30DF4()
{

  sub_1A3C53AEC(*(v0 + 48), *(v0 + 56));
  sub_1A3C53AEC(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1A3D30E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A49D4BF0(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3D30F54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A49D4BF0(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_1A3D31040()
{
  sub_1A49CC9A4(255);
  sub_1A49CEBFC(&qword_1EB147148, sub_1A49CC9A4, sub_1A49CEC6C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D31128(uint64_t a1, uint64_t a2)
{
  sub_1A49CD278(0, &qword_1EB146FB8, sub_1A49CD020, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D311C4(uint64_t a1, uint64_t a2)
{
  sub_1A49CD190(0, &qword_1EB146FD8, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D31244(uint64_t a1)
{
  sub_1A49CD190(0, &qword_1EB146FD8, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D312BC(uint64_t a1)
{
  sub_1A49CD278(0, &qword_1EB146FB8, sub_1A49CD020, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D31350(uint64_t a1, uint64_t a2)
{
  sub_1A49D5784(0, &qword_1EB146FE0, sub_1A49CD23C, sub_1A49CD688, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D313F8(uint64_t a1)
{
  sub_1A49D5784(0, &qword_1EB146FE0, sub_1A49CD23C, sub_1A49CD688, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D314D8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A49E03E8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1A49E03E8(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1A3D31644(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A49E03E8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    sub_1A49E03E8(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1A3D317AC()
{
  sub_1A49DBF00(255);
  sub_1A49DF324();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D31810()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D31848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSceneOrientation(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3D318B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSceneOrientation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3D31928()
{
  type metadata accessor for SceneOrientationModifier(255);
  sub_1A5248804();
  sub_1A49E3698(&qword_1EB129E48, type metadata accessor for SceneOrientationModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1A3D319C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  sub_1A49E31E8(0, &unk_1EB124980, type metadata accessor for PhotosSceneOrientation.NotificationObserver, MEMORY[0x1E697DA80]);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A3D31A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  sub_1A49E31E8(0, &unk_1EB124980, type metadata accessor for PhotosSceneOrientation.NotificationObserver, MEMORY[0x1E697DA80]);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A3D31B18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D31B50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D31B88()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D31BC0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D31C18()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D31C54()
{
  v1 = type metadata accessor for GenerativeStorySuggestionsView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 8))
  {
  }

  j__swift_release(*(v2 + 48), *(v2 + 56));
  sub_1A3C53AEC(*(v2 + 64), *(v2 + 72));
  sub_1A3F1B4C4(*(v2 + 80), *(v2 + 88), *(v2 + 96));
  v3 = *(v1 + 48);
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D31DD8()
{
  v1 = type metadata accessor for GenerativeStorySuggestionsView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 8))
  {
  }

  j__swift_release(*(v2 + 48), *(v2 + 56));
  sub_1A3C53AEC(*(v2 + 64), *(v2 + 72));
  sub_1A3F1B4C4(*(v2 + 80), *(v2 + 88), *(v2 + 96));
  v3 = *(v1 + 48);
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D31F48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A49EF1A8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D32028(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A49EF1A8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 48);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D32104()
{
  v1 = type metadata accessor for GenerativeStorySuggestionsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for GenerativeStorySuggestion(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v3 + v4 + v6;
  v8 = v0 + v3;

  if (*(v8 + 8))
  {
  }

  v9 = v7 & ~v6;
  j__swift_release(*(v8 + 48), *(v8 + 56));
  sub_1A3C53AEC(*(v8 + 64), *(v8 + 72));
  sub_1A3F1B4C4(*(v8 + 80), *(v8 + 88), *(v8 + 96));
  v10 = *(v1 + 48);
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5242D14();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
  }

  v12 = v0 + v9;

  v13 = v5[6];
  v14 = sub_1A5244A24();
  (*(*(v14 - 8) + 8))(v0 + v9 + v13, v14);
  v15 = v5[7];
  v16 = sub_1A5244A54();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v9 + v15, 1, v16))
  {
    (*(v17 + 8))(v12 + v15, v16);
  }

  v18 = v5[8];
  v19 = sub_1A5244984();
  (*(*(v19 - 8) + 8))(v12 + v18, v19);

  return swift_deallocObject();
}

uint64_t sub_1A3D3240C()
{
  v1 = sub_1A52417A4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D324DC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32514()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32554()
{
  v1 = sub_1A52417A4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D32638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A49F8D20(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A49F8D20(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1A3D327BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A49F8D20(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A49F8D20(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 48);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D32954()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D3299C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D329D4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32A14()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32A54()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D32A8C()
{

  if (*(v0 + 24))
  {
  }

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D32B14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D32B4C()
{
  sub_1A3C2A660(0, &qword_1EB147770, type metadata accessor for GenerativeStoryBackgroundAssetsManager, off_1E77210B0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D32C34()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32C6C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32CA4()
{
  type metadata accessor for LemonadeFeatureAvailabilityProcessingView();
  sub_1A4234A1C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D32D00()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D32D48()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D32D84()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32DBC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D32DF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D32E34()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32E7C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32EB4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D32EEC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32F34()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32F78()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D32FB0()
{
  v1 = sub_1A4A24600();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D330A8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D33150()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D33188()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D331D0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D33208()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D33240()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D33288()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D332C8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D33300()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D33340()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D33390()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D333C8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D33424()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D33460()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D334A8()
{

  return swift_deallocObject();
}

__n128 sub_1A3D334EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3D33504()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D3353C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D33574()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D335B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D335F0()
{
  sub_1A4A44958();
  sub_1A3EE1D04();
  sub_1A5243AB4();
  sub_1A3C325C4(&qword_1EB124D28, MEMORY[0x1E69C27B8]);
  swift_getOpaqueTypeConformance2();
  sub_1A3C325C4(&unk_1EB1263B0, sub_1A3EE1D04);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D3373C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D3377C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D337B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A4A47C44(0, &qword_1EB147CA0, type metadata accessor for LemonadePeopleSectionProvider, MEMORY[0x1E697DA80]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A4A47C44(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3D33938(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4A47C44(0, &qword_1EB147CA0, type metadata accessor for LemonadePeopleSectionProvider, MEMORY[0x1E697DA80]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A4A47C44(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D33B0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LemonadeShelfBodyStyle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3D33BB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeShelfBodyStyle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D33E48()
{
  sub_1A4A4B0E0();
  sub_1A4222E14();
  sub_1A4A4B024();
  sub_1A4A4B178();
  swift_getOpaqueTypeConformance2();
  sub_1A4A4B474(&qword_1EB147D28, sub_1A4A4B4E0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D33F3C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D33F80()
{
  v1 = (type metadata accessor for GenerativeStoryInlineActionButton() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));

  v3 = v1[12];
  sub_1A4A4EA90(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D340CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A4A4EA90(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D341AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4A4EA90(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D34280()
{
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A524B764();
  v0 = MEMORY[0x1E6980A08];
  sub_1A4A4EA90(255, &qword_1EB127820, sub_1A3FF1F48, MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A5248934();
  swift_getWitnessTable();
  sub_1A4A4E22C(&qword_1EB127830, &qword_1EB127820, sub_1A3FF1F48);
  swift_getWitnessTable();
  sub_1A4A4E290(&qword_1EB147D58, MEMORY[0x1E697C1D8]);
  swift_getOpaqueTypeMetadata2();
  v1 = MEMORY[0x1E697C2B0];
  sub_1A4A4EA90(255, &qword_1EB127838, MEMORY[0x1E697C2B0], v0);
  sub_1A5248804();
  sub_1A3EE1D04();
  swift_getOpaqueTypeConformance2();
  sub_1A4A4E22C(&qword_1EB1220F0, &qword_1EB127838, v1);
  swift_getWitnessTable();
  sub_1A4A4E290(&unk_1EB1263B0, sub_1A3EE1D04);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D34534(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A4A52A90(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D34614(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4A52A90(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D346E8()
{
  sub_1A4A531B4();
  sub_1A4A52B40(255);
  sub_1A4A532F0(&qword_1EB147E18, sub_1A4A531B4);
  sub_1A4A53248();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D34790()
{
  v1 = (type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(*(type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState(0) - 8) + 80);
  swift_unknownObjectRelease();
  v5 = v0 + v2;

  j__swift_release(*(v5 + 8), *(v5 + 16));
  v6 = v1[8];
  sub_1A4A52A90(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v8 = v7;
    v9 = *(v7 - 8);
    if (!(*(v9 + 48))(v5 + v6, 1, v7))
    {
      (*(v9 + 8))(v5 + v6, v8);
    }
  }

  else
  {
  }

  v10 = sub_1A5244664();
  (*(*(v10 - 8) + 8))(v0 + ((v2 + v3 + v4) & ~v4), v10);

  return swift_deallocObject();
}

uint64_t sub_1A3D34A04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D34A3C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D34A74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D34AB4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D34AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5241144();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3D34BB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5241144();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3D34C70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D34CA8()
{
  v1 = (type metadata accessor for MacSyncedAssetsNotificationItem() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1A5241144();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v2 + v1[9];
  if (*(v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  return swift_deallocObject();
}

void *sub_1A3D3581C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1A3D35874(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A3D358A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A3D358D0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for RoundedCorner(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RoundedCorner(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1A3D359E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524C674();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A3D35A38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3D35A58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1A3D35A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

void sub_1A3D35A90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t getEnumTagSinglePayload for PhotosDynamicHeaderSpec(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A3D35B30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3D35B50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1A3D35B8C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_1A3D35BAC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1A3D35BB8@<X0>(void *a1@<X8>)
{
  result = sub_1A52482B4();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3D35BE4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1A524E2B4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1A444496C(v3, 0);
  sub_1A4444A10((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A3D35C78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1A3D36EA4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1A3D35CBC()
{
  swift_getKeyPath();
  sub_1A3D37768(&qword_1EB1299A8, type metadata accessor for LemonadeProfileBadgeProvider);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 104);
}

uint64_t sub_1A3D35D70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3D37768(&qword_1EB1299A8, type metadata accessor for LemonadeProfileBadgeProvider);
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_1A3D35E54(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_beginAccess();
  v4 = *(v1 + 104);
  if (v4 == 4)
  {
    if (v2 != 4)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3D37768(&qword_1EB1299A8, type metadata accessor for LemonadeProfileBadgeProvider);
      sub_1A52415C4();
    }
  }

  else if (v4 != v2)
  {
    goto LABEL_3;
  }

  *(v1 + 104) = v2;
  return result;
}

uint64_t _s12PhotosUICore43LemonadeShelfHeaderTitleTrailingSymbolStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void sub_1A3D36068()
{
  v1 = [*(v0 + 24) status];
  if (v1)
  {
    v2 = v1;
    if ([v1 state] == 2 && objc_msgSend(v2, sel_pauseReason) > 2)
    {
      if (qword_1EB15AF00 != -1)
      {
        swift_once();
      }

      v3 = sub_1A5246F24();
      __swift_project_value_buffer(v3, qword_1EB1EB7E8);
      v4 = sub_1A524D224();
      v5 = v2;
      v6 = sub_1A5246F04();

      if (os_log_type_enabled(v6, v4))
      {
        v7 = swift_slowAlloc();
        swift_slowAlloc();
        *v7 = 136315138;
        v8 = [v5 stateDescription];
        if (v8)
        {
          v9 = v8;
          sub_1A524C674();
        }

        sub_1A524C8D4();
        sub_1A3C2EF94();
      }
    }

    else
    {
    }
  }

  sub_1A5245F04();
}

id *LemonadeProfileBadgeProvider.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28LemonadeProfileBadgeProvider___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeProfileBadgeProvider.__deallocating_deinit()
{
  LemonadeProfileBadgeProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t EnvironmentValues.profileBadgeProvider.getter()
{
  sub_1A3D373E4();
  sub_1A5249244();
  return v1;
}

uint64_t sub_1A3D36A9C@<X0>(void *a1@<X8>)
{
  sub_1A3D373E4();
  result = sub_1A5249244();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3D36AEC()
{
  sub_1A3D373E4();

  return sub_1A5249254();
}

uint64_t (*EnvironmentValues.profileBadgeProvider.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A3D373E4();
  sub_1A5249244();
  return sub_1A3D36BE8;
}

uint64_t sub_1A3D36BE8(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1A5249254();
  }

  sub_1A5249254();
}

uint64_t sub_1A3D36C80()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EB7E8);
  __swift_project_value_buffer(v0, qword_1EB1EB7E8);
  sub_1A524C814();
  return sub_1A5246F14();
}

uint64_t type metadata accessor for LemonadeProfileBadgeProvider()
{
  result = qword_1EB17F410;
  if (!qword_1EB17F410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3D36D44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 104) = v2;
  return result;
}

char *sub_1A3D36D98(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C2E3D0(0, &unk_1EB126190, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A3D36EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1A3D36EDC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v11 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v11);
  v8 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v8);
  *(v4 + 32) = 5128;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 4;
  sub_1A5241604();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 40) = a3;
  type metadata accessor for CloudQuotaNotificationItemListManager(0);
  v9 = a1;
  v10 = a2;

  sub_1A42D69CC();
}

unint64_t sub_1A3D373E4()
{
  result = qword_1EB188568[0];
  if (!qword_1EB188568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB188568);
  }

  return result;
}

unint64_t sub_1A3D3743C()
{
  result = qword_1EB1299B0;
  if (!qword_1EB1299B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1299B0);
  }

  return result;
}

uint64_t sub_1A3D37498()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeProfileBadgeProvider.BadgeType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LemonadeProfileBadgeProvider.BadgeType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A3D37768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3D37888()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for PXCPLUIStatusChanged(0);
    sub_1A3D37768(&unk_1EB12E710, type metadata accessor for PXCPLUIStatusChanged);
    sub_1A524EE54();
  }

  return result;
}

uint64_t sub_1A3D37954()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3D36068();
  }

  return result;
}

uint64_t sub_1A3D379A8()
{
  result = qword_1EB128E88;
  if (!qword_1EB128E88)
  {
    sub_1A3D37A04();
    sub_1A52458C4();
  }

  return result;
}

unint64_t sub_1A3D37A04()
{
  result = qword_1EB129790;
  if (!qword_1EB129790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129790);
  }

  return result;
}

uint64_t sub_1A3D37A58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1A3D37A9C()
{
  result = qword_1EB129800;
  if (!qword_1EB129800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129800);
  }

  return result;
}

void sub_1A3D37B60()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B568);
  __swift_project_value_buffer(v0, qword_1EB15B568);
  sub_1A5246EF4();
}

void (*sub_1A3D37BC4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3D37C18;
}

void sub_1A3D37C18(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (qword_1EB15B560 != -1)
    {
      swift_once();
    }

    v4 = sub_1A5246F24();
    __swift_project_value_buffer(v4, qword_1EB15B568);

    oslog = sub_1A5246F04();
    v5 = sub_1A524D224();
    v6 = os_log_type_enabled(oslog, v5);
    v7 = *(a1 + 24);
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = (*(*v7 + 144))() & 1;

      _os_log_impl(&dword_1A3C1C000, oslog, v5, "Updating iCPL status visibility to %{BOOL}d", v8, 8u);
      MEMORY[0x1A590EEC0](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1A3D37D88()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_1A3D37E08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

void sub_1A3D37EA0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_beginAccess();
  if (v2[16] == v3)
  {
    v2[16] = v3;
    if (qword_1EB15B560 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB15B568);

    v7 = sub_1A5246F04();
    v8 = sub_1A524D224();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = (*(*v2 + 144))() & 1;

      _os_log_impl(&dword_1A3C1C000, v7, v8, "Updating iCPL status visibility to %{BOOL}d", v9, 8u);
      MEMORY[0x1A590EEC0](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 264))(v5);
  }
}

void (*sub_1A3D380B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28LemonadeStatusViewVisibility___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D390E0();
  sub_1A52415F4();

  v4[7] = sub_1A3D37BC4(v4);
  return sub_1A3D381D8;
}

void (*sub_1A3D381E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3D38238;
}

void sub_1A3D38238(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (qword_1EB15B560 != -1)
    {
      swift_once();
    }

    v4 = sub_1A5246F24();
    __swift_project_value_buffer(v4, qword_1EB15B568);

    oslog = sub_1A5246F04();
    v5 = sub_1A524D224();
    v6 = os_log_type_enabled(oslog, v5);
    v7 = *(a1 + 24);
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = (*(*v7 + 192))() & 1;

      _os_log_impl(&dword_1A3C1C000, oslog, v5, "Updating iCPL status progress bar to %{BOOL}d", v8, 8u);
      MEMORY[0x1A590EEC0](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1A3D383A8()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  return v0[17];
}

uint64_t sub_1A3D38428@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

void sub_1A3D384C0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_beginAccess();
  if (v2[17] == v3)
  {
    v2[17] = v3;
    if (qword_1EB15B560 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB15B568);

    v7 = sub_1A5246F04();
    v8 = sub_1A524D224();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = (*(*v2 + 192))() & 1;

      _os_log_impl(&dword_1A3C1C000, v7, v8, "Updating iCPL status progress bar to %{BOOL}d", v9, 8u);
      MEMORY[0x1A590EEC0](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 264))(v5);
  }
}

void (*sub_1A3D386D8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28LemonadeStatusViewVisibility___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D390E0();
  sub_1A52415F4();

  v4[7] = sub_1A3D381E4(v4);
  return sub_1A3D387F8;
}

void sub_1A3D38804(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

void sub_1A3D388D8(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  sub_1A5241604();
  *(v2 + 24) = a1;
  swift_allocObject();
  swift_weakInit();
  v4 = a1;

  sub_1A524D1A4();
}

void sub_1A3D389A0()
{
  v1 = v0[3];
  v2 = [v1 title];
  if (v2)
  {
    v3 = v2;
    sub_1A524C674();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v1 subtitle1];
  if (v6)
  {
    v7 = v6;
    sub_1A524C674();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v16 = [v1 accessoryView];
  if (v5 && (v10 = sub_1A524C7A4(), , v10 >= 1))
  {

    v11 = 1;
  }

  else
  {
    v11 = v9 && (v12 = sub_1A524C7A4(), , v12 > 0) || v16 != 0;
  }

  [v1 progress];
  v14 = v13;
  (*(*v0 + 152))(v11);
  v15 = v14 >= 0.0 && v11;
  (*(*v0 + 200))(v15);
}

uint64_t LemonadeStatusViewVisibility.deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28LemonadeStatusViewVisibility___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeStatusViewVisibility.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28LemonadeStatusViewVisibility___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t EnvironmentValues.iCloudStatusVisibility.getter()
{
  sub_1A3D3933C();
  sub_1A5249244();
  return v1;
}

uint64_t sub_1A3D38D9C@<X0>(void *a1@<X8>)
{
  sub_1A3D3933C();
  result = sub_1A5249244();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3D38DEC()
{
  sub_1A3D3933C();

  return sub_1A5249254();
}

uint64_t (*EnvironmentValues.iCloudStatusVisibility.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A3D3933C();
  sub_1A5249244();
  return sub_1A3D38EE8;
}

uint64_t sub_1A3D38EE8(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1A5249254();
  }

  sub_1A5249254();
}

void sub_1A3D38F7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  v1[16] = v2;
  if (qword_1EB15B560 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5246F24();
  __swift_project_value_buffer(v3, qword_1EB15B568);

  v4 = sub_1A5246F04();
  v5 = sub_1A524D224();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = (*(*v1 + 144))() & 1;

    _os_log_impl(&dword_1A3C1C000, v4, v5, "Updating iCPL status visibility to %{BOOL}d", v6, 8u);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1A3D390E0()
{
  result = qword_1EB129980;
  if (!qword_1EB129980)
  {
    type metadata accessor for LemonadeStatusViewVisibility();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129980);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeStatusViewVisibility()
{
  result = qword_1EB17F020;
  if (!qword_1EB17F020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3D39184()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  v1[17] = v2;
  if (qword_1EB15B560 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5246F24();
  __swift_project_value_buffer(v3, qword_1EB15B568);

  v4 = sub_1A5246F04();
  v5 = sub_1A524D224();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = (*(*v1 + 192))() & 1;

    _os_log_impl(&dword_1A3C1C000, v4, v5, "Updating iCPL status progress bar to %{BOOL}d", v6, 8u);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1A3D392E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3D389A0();
  }

  return result;
}

unint64_t sub_1A3D3933C()
{
  result = qword_1EB184EC8[0];
  if (!qword_1EB184EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB184EC8);
  }

  return result;
}

uint64_t sub_1A3D39398()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A3D39474(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000023;
    v6 = 0xD000000000000014;
    if (a1 == 10)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001FLL;
    if (a1 == 7)
    {
      v7 = 0xD000000000000025;
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000028;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000031;
    v2 = 0xD000000000000015;
    if (a1 != 4)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000034;
    if (a1 == 1)
    {
      v3 = 0xD000000000000019;
    }

    if (!a1)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 <= 2u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

void sub_1A3D395C8(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v14[10] = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v14[9] = v14 - v7;
  sub_1A3C5FD30();
  v14[5] = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1A3C29F24(0, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v14[8] = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v12 = OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_availableShelves;
  swift_beginAccess();
  v14[0] = v1;
  v14[1] = a1;
  v13 = *(v1 + v12);
  v14[6] = *(a1 + 16);
  v14[4] = v4;
  v14[2] = v13;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D39B80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_availableShelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1A3D395C8(v4);
}

void sub_1A3D39BE4(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_availableShelves;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D39C80(uint64_t a1, char a2)
{
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(v3 + v2);
  *(v3 + v2) = *(*a1 + 24);
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3D395C8(v4);
}

void sub_1A3D39D04(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  v9 = (*(**(v1 + OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_featureLibrary) + 216))(v5);
  v10 = *(v9 + 16);
  if (v10)
  {
    v18[2] = a1;
    v21 = v8;
    sub_1A3C4ED58(0, v10, 0);
    v11 = v21;
    v12 = *(v4 + 80);
    v18[1] = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v18[3] = v4;
    v14 = *(v4 + 72);
    do
    {
      sub_1A3C531C8(v13, v7);
      sub_1A3C5322C();
      sub_1A3D3F0B8(v7, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v15 = v20;
      v21 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1A3C4ED58((v16 > 1), v17 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v17 + 1;
      *(v11 + v17 + 32) = v15;
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1A3D3A13C(v11);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3D3A048(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A3D3D914(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A3D3A13C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A3D3DA38(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A3D3A228(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v1, 0);
    v2 = v13;
    v4 = a1 + 32;
    do
    {
      ++v4;
      v5 = LemonadeShelfIdentifier.rawValue.getter();
      v14 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1A3C57108((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v2 = v14;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  sub_1A3D3C2C4(v2);
}

uint64_t sub_1A3D3A32C()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (*(*v0 + 208))(v3);
  v7 = *(v6 + 16);
  if (v7)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1A3C4ED58(0, v7, 0);
    v8 = v16;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_1A3C531C8(v9, v5);
      sub_1A3C5322C();
      sub_1A3D3F0B8(v5, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v11 = v15[7];
      v16 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A3C4ED58((v12 > 1), v13 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + v13 + 32) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

char *sub_1A3D3A4F0(char *result)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_currentHiddenShelves;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_currentHiddenShelves);
  if (v3)
  {
    v4 = v1;
    v5 = *result;
    v20 = *(v1 + OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_currentHiddenShelves);
    LOBYTE(v18) = v5;
    swift_bridgeObjectRetain_n();
    v6 = LemonadeShelfIdentifier.rawValue.getter();
    v8 = sub_1A3C62374(v6, v7, v3);

    if ((v8 & 1) == 0)
    {
      v19 = v5;
      v11 = LemonadeShelfIdentifier.rawValue.getter();
      sub_1A3C44714(&v18, v11, v12);
    }

    LOBYTE(v18) = v5;
    v9 = LemonadeShelfIdentifier.rawValue.getter();
    sub_1A3C57714(v9, v10);

    v13 = *(v20 + 16);
    if (v13)
    {
      v14 = sub_1A3C51BF0(*(v20 + 16), 0);
      v15 = sub_1A3C423E8(&v18, v14 + 4, v13, v20);
      sub_1A3C42540();
      if (v15 == v13)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_9:

    v17 = sub_1A3C4467C(v16);

    *(v4 + v2) = v17;

    sub_1A3D3B1FC(v14, 5);
  }

  return result;
}

BOOL sub_1A3D3A6E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_1A3C4CDB0();
  }

  while ((sub_1A524C594() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1A3D3A77C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_layoutStyle;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void sub_1A3D3A7D0(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_layoutStyle;
  swift_beginAccess();
  *(v2 + v4) = v3;
  v5 = LemonadeShelvesLayoutStyle.rawValue.getter();
  sub_1A3D3B9B4(v5, v6, 10);
}

void (*sub_1A3D3A848(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_layoutStyle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A3D3A8D0;
}

void sub_1A3D3A8D0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = LemonadeShelvesLayoutStyle.rawValue.getter();
    sub_1A3D3B9B4(v4, v5, 10);
  }

  free(v3);
}

uint64_t sub_1A3D3A9A8(_BYTE *a1, void *a2, unsigned __int8 a3, uint64_t a4)
{
  LOBYTE(v16[0]) = *a1;
  v8 = LemonadeShelfIdentifier.rawValue.getter();
  v10 = v9;
  if (*(v4 + *a2))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v11 = sub_1A3D3C070(a3);
  if (v11)
  {
    v12 = v11;
    v16[0] = v8;
    v16[1] = v10;
    MEMORY[0x1EEE9AC00](v11);
    v15[2] = v16;
    v13 = sub_1A3D3E5DC(a4, v15, v12);
  }

  else
  {

    v13 = 0;
  }

  return v13 & 1;
}

void sub_1A3D3AAC8()
{
  v0 = sub_1A5246F04();
  v1 = sub_1A524D264();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1A3C1C000, v0, v1, "in: resetCustomization", v2, 2u);
    MEMORY[0x1A590EEC0](v2, -1, -1);
  }

  sub_1A3D3AC70();
}

uint64_t sub_1A3D3ABF4(uint64_t a1)
{
  v2 = sub_1A524E234();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_1A3D3ED04(v2, *(a1 + 36), 0, a1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

void sub_1A3D3AC70()
{
  v1 = v0;
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "in: resetAllToDefault", v4, 2u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  sub_1A3C54A2C(*(v1 + OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_featureLibrary), 1);
  sub_1A3D3C2C4(*(v1 + OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_defaultShelvesInOrderByIDString));
  v5 = LemonadeShelvesLayoutStyle.rawValue.getter();
  sub_1A3D3B9B4(v5, v6, 10);
}

void sub_1A3D3ADB4(uint64_t a1, char a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v5 = a2;
      v14 = MEMORY[0x1E69E7CC0];
      sub_1A3C57108(0, v3, 0);
      v4 = v14;
      v6 = a1 + 32;
      do
      {
        ++v6;
        v7 = LemonadeShelfIdentifier.rawValue.getter();
        v15 = v4;
        v10 = *(v4 + 16);
        v9 = *(v4 + 24);
        if (v10 >= v9 >> 1)
        {
          v12 = v7;
          v13 = v8;
          sub_1A3C57108((v9 > 1), v10 + 1, 1);
          v8 = v13;
          v7 = v12;
          v4 = v15;
        }

        *(v4 + 16) = v10 + 1;
        v11 = v4 + 16 * v10;
        *(v11 + 32) = v7;
        *(v11 + 40) = v8;
        --v3;
      }

      while (v3);
      a2 = v5;
    }
  }

  else
  {
    v4 = 0;
  }

  sub_1A3D3AED4(v4, a2);
}

void sub_1A3D3AED4(uint64_t a1, char a2)
{
  if ((a2 - 5) <= 2u)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3D3B1FC(a1, a2);
}

uint64_t sub_1A3D3AF78()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D774();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB126890);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3C5B6F0(&unk_1EB126898, MEMORY[0x1E69E8120]);
  v5 = MEMORY[0x1E69E8120];
  sub_1A3C29F24(0, &qword_1EB126E00, MEMORY[0x1E69E8120], MEMORY[0x1E69E62F8]);
  sub_1A3D3EBE0(&qword_1EB126DF8, &qword_1EB126E00, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v8);
  result = sub_1A524D784();
  qword_1EB15DE58 = result;
  return result;
}

void sub_1A3D3B1FC(uint64_t a1, char a2)
{
  v4 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v7);
  if (qword_1EB15DE50 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  *(v6 + 32) = a1;
  aBlock[4] = sub_1A3D3EE8C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_60;
  _Block_copy(aBlock);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3D3B558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3D3E490(0, v1, 0);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A3D3B658(char a1, char a2)
{
  v4 = sub_1A524BEE4();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524BF64();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB15DE50 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB15DE58;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1 & 1;
  *(v11 + 25) = a2;
  aBlock[4] = sub_1A3D3EC44;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_46;
  v12 = _Block_copy(aBlock);

  sub_1A524BF14();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1A3C5B6F0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v13 = MEMORY[0x1E69E7F60];
  sub_1A3C29F24(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3D3EBE0(&qword_1EB12B1B0, &qword_1EB12B1C0, v13);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v12);
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

void sub_1A3D3B9B4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v9);
  if (qword_1EB15DE50 != -1)
  {
    swift_once();
  }

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  aBlock[4] = sub_1A3D3ED58;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_53;
  _Block_copy(aBlock);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3D3BD18(void *a1, char a2)
{
  v4 = sub_1A524BEE4();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB15DE50 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB15DE58;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  aBlock[4] = sub_1A3D3EB24;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_0;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  sub_1A524BF14();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1A3C5B6F0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v14 = MEMORY[0x1E69E7F60];
  sub_1A3C29F24(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3D3EBE0(&qword_1EB12B1B0, &qword_1EB12B1C0, v14);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v12);
  _Block_release(v12);
  (*(v18 + 8))(v6, v4);
  (*(v7 + 8))(v9, v17);
}

void *sub_1A3D3C070(unsigned __int8 a1)
{
  v3 = a1 & 0xFB;
  v4 = [*(v1 + 16) px_localDefaults];
  sub_1A3D39474(a1);
  v5 = sub_1A524C634();

  if (v3)
  {
    v6 = [v4 identifiersForKey_];

    if (!v6)
    {
      return 0;
    }

    v7 = sub_1A524CF44();

    v5 = *(v7 + 16);
    if (!v5)
    {
LABEL_14:

      return MEMORY[0x1E69E7CC0];
    }

    v4 = sub_1A3C51BF0(*(v7 + 16), 0);
    v8 = sub_1A3C423E8(&v23, v4 + 4, v5, v7);
    sub_1A3C42540();
    if (v8 == v5)
    {
      return v4;
    }

    __break(1u);
  }

  v9 = [v4 arrayForKey_];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1A524CA34();

  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_14;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1A3C57108(0, v11, 0);
  v4 = v22;
  v12 = v10 + 32;
  do
  {
    sub_1A3C2F0BC(v12, &v23);
    sub_1A3C57128(&v23, &v19);
    swift_dynamicCast();
    v13 = v20;
    v14 = v21;
    v22 = v4;
    v16 = v4[2];
    v15 = v4[3];
    if (v16 >= v15 >> 1)
    {
      sub_1A3C57108((v15 > 1), v16 + 1, 1);
      v4 = v22;
    }

    v4[2] = v16 + 1;
    v17 = &v4[2 * v16];
    v17[4] = v13;
    v17[5] = v14;
    v12 += 32;
    --v11;
  }

  while (v11);

  return v4;
}

uint64_t sub_1A3D3C2C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v19 = &v17 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v20 = &v17 - v10;
  v11 = sub_1A5246F04();
  v12 = sub_1A524D264();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1A3C1C000, v11, v12, "in: updateAvailableShelves", v13, 2u);
    MEMORY[0x1A590EEC0](v13, -1, -1);
  }

  v14 = (*(*v2 + 560))(a1);
  v15 = *(*v2 + 208);
  v18 = v2;
  result = v15();
  if (!*(v14 + 16))
  {

    (*(*v18 + 216))(MEMORY[0x1E69E7CC0]);
    sub_1A3D3B1FC(v14, 4);
  }

  v27 = *(result + 16);
  v23 = v14 + 32;
  v25 = MEMORY[0x1E69E7CC0];
  v22 = v14;
  if (*(v14 + 16))
  {
    v26 = 0;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void sub_1A3D3C738()
{
  v0 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8;
  MEMORY[0x1EEE9AC00](v0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3D3D074()
{
  v0 = sub_1A3D3C070(0);
  if (!v0)
  {
    goto LABEL_7;
  }

  v1 = v0;
  v2 = sub_1A3D3C070(4u);
  if (!v2)
  {

LABEL_7:
    v4 = 1;
    return v4 & 1;
  }

  v3 = sub_1A3D3D13C(v2, v1);

  v4 = 1;
  v5 = sub_1A3D3C070(1u);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A3D3C070(5u);
    if (v7)
    {
      v8 = sub_1A3D3D27C(v6, v7);

      v4 = v3 & v8;
    }

    else
    {
    }
  }

  return v4 & 1;
}

uint64_t sub_1A3D3D13C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*(a1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 1;
}

uint64_t sub_1A3D3D27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1A524EAB4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t LemonadeLibraryDefaultsShelvesDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t LemonadeLibraryDefaultsShelvesDataSource.__deallocating_deinit()
{
  LemonadeLibraryDefaultsShelvesDataSource.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1A3D3D68C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 304))();
  return sub_1A3D3D728;
}

void sub_1A3D3D728(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

char *sub_1A3D3D914(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C2DC84(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1A3D3DA38(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C2DC84(0, &qword_1EB126260, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A3D3DB44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A3C5B340();
    v2 = sub_1A524E784();
    v19 = v2;
    sub_1A524E694();
    v3 = sub_1A524E6C4();
    if (v3)
    {
      v4 = v3;
      sub_1A3C52C70(0, &qword_1EB126BF0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for LemonadeLibraryDefaultsShelvesDataSource();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A3C5B3CC(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1A524DBE4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A524E6C4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void *sub_1A3D3DD68()
{
  v1 = v0;
  sub_1A3C5B340();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1A3D3DEC0()
{
  v1 = v0;
  v2 = *v0;
  sub_1A3D3EE34();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void *sub_1A3D3E114()
{
  v1 = v0;
  sub_1A3D3EE34();
  v2 = *v0;
  v3 = sub_1A524E3A4();
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = 16 * (v13 | (v8 << 6));
        v17 = (*(v2 + 48) + v16);
        v18 = v17[1];
        v19 = (*(v4 + 48) + v16);
        *v19 = *v17;
        v19[1] = v18;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A3D3E264()
{
  v1 = *v0;
  sub_1A3D3EE34();
  result = sub_1A524E3B4();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 1 << *(v1 + 32);
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    else
    {
      v5 = -1;
    }

    if ((v5 & *(v1 + 56)) != 0)
    {
LABEL_10:
      sub_1A524EC94();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v6 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= ((v4 + 63) >> 6))
      {
        goto LABEL_11;
      }

      ++v6;
      if (*(v1 + 56 + 8 * v7))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_11:

    *v0 = v3;
  }

  return result;
}

char *sub_1A3D3E490(char *a1, int64_t a2, char a3)
{
  result = sub_1A3D3E4B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A3D3E4B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C2DC84(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A3D3E5DC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2])
  {
    v3 = a3[5];
    v5 = a3[4];
    v6 = v3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

uint64_t sub_1A3D3E6C0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A524EAB4() & 1;
  }
}

uint64_t sub_1A3D3E718(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  LemonadeShelvesDataSourceChangeDescriptor.init(rawValue:)(a2, &v5);
  return v3(&v5);
}

unint64_t sub_1A3D3E75C()
{
  result = qword_1EB12B2A0;
  if (!qword_1EB12B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B2A0);
  }

  return result;
}

unint64_t sub_1A3D3E7B4()
{
  result = qword_1EB12B2A8;
  if (!qword_1EB12B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B2A8);
  }

  return result;
}

unint64_t sub_1A3D3E80C()
{
  result = qword_1EB12B2B0;
  if (!qword_1EB12B2B0)
  {
    sub_1A3C2DC84(255, &qword_1EB12B2B8, &type metadata for ShelfSavedProperty, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B2B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShelfSavedProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShelfSavedProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1A3D3EB24()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = [*(Strong + 16) px_localDefaults];

    sub_1A3D39474(v2);
    v5 = sub_1A524C634();

    [v4 setNumber:v1 forKey:v5];
  }
}

uint64_t sub_1A3D3EBE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C29F24(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3D3EC44()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 25);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = [*(Strong + 16) px_localDefaults];

    sub_1A3D39474(v2);
    v5 = sub_1A524C634();

    [v4 setBool:v1 forKey:v5];
  }
}

uint64_t sub_1A3D3ED04(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1A3D3ED58()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = [*(Strong + 16) px_localDefaults];

    v4 = sub_1A524C634();
    sub_1A3D39474(v1);
    v5 = sub_1A524C634();

    [v3 setString:v4 forKey:v5];
  }
}

void sub_1A3D3EE34()
{
  if (!qword_1EB126520)
  {
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126520);
    }
  }
}

void sub_1A3D3EE8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if ((v1 & 0xFFFFFFFB) != 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v4 = [*(Strong + 16) px_localDefaults];

    if (v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3D39474(v1);
    v5 = sub_1A524C634();

    [v4 setIdentifiers:0 forKey:v5];
  }

  else
  {
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (!v6)
    {
      return;
    }

    v4 = [*(v6 + 16) px_localDefaults];

    if (v2)
    {
      sub_1A3D3B558(v2);
      v2 = sub_1A524CA14();
    }

    sub_1A3D39474(v1);
    v5 = sub_1A524C634();

    [v4 setArray:v2 forKey:v5];
  }
}

uint64_t sub_1A3D3F02C(uint64_t a1)
{
  sub_1A3C29F24(0, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D3F0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3D3F118()
{
  if (!qword_1EB12B150)
  {
    sub_1A3C52C70(255, &qword_1EB12B160);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B150);
    }
  }
}

__n128 sub_1A3D3F1B0@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_1A3E5C9D8();
  v3 = v2[1].n128_u8[0];
  v4 = v2[1].n128_u64[1];
  v5 = v2[2].n128_u8[0];
  v6 = v2[2].n128_u64[1];
  v7 = v2[3].n128_u8[0];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u8[0] = v3;
  a1[1].n128_u64[1] = v4;
  a1[2].n128_u8[0] = v5;
  a1[2].n128_u64[1] = v6;
  a1[3].n128_u8[0] = v7;
  return result;
}

uint64_t sub_1A3D3F204@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v13 = *a2;
  v14 = *(a2 + 8);
  v33 = a3[1];
  v34 = *a3;
  v32 = *(a3 + 16);
  v31 = a3[3];
  v30 = *(a3 + 32);
  v29 = a3[5];
  v28 = *(a3 + 48);
  v15 = type metadata accessor for LemonadeInlineStoryPlayerView();
  v16 = a8 + v15[17];
  sub_1A524B694();
  *v16 = a7;
  *(v16 + 8) = a9;
  v17 = a8 + v15[18];
  sub_1A524B694();
  *v17 = a7;
  *(v17 + 8) = a9;
  v18 = (a8 + v15[19]);
  type metadata accessor for LemonadeInlineStoryPlayer();
  sub_1A41F5728();
  PXDisplayCollectionDetailedCountsMake(v19);
  sub_1A524B694();
  *v18 = a7;
  v18[1] = a9;
  v20 = a8 + v15[20];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a8 + v15[21];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = *(a7 - 8);
  v23 = (*(v22 + 16))(a8, a1, a7);
  a4(v23);
  result = (*(v22 + 8))(a1, a7);
  v25 = a8 + v15[14];
  *v25 = v13;
  *(v25 + 8) = v14;
  v26 = a8 + v15[15];
  *v26 = v34;
  *(v26 + 8) = v33;
  *(v26 + 16) = v32;
  *(v26 + 24) = v31;
  *(v26 + 32) = v30;
  *(v26 + 40) = v29;
  *(v26 + 48) = v28;
  v27 = (a8 + v15[16]);
  *v27 = a5;
  v27[1] = a6;
  return result;
}

uint64_t LemonadeInlineStoryPlayerView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v99 = a2;
  v96 = *(a1 - 1);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v105 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  sub_1A5249A34();
  v6 = sub_1A5248804();
  v7 = a1[5];
  *&v107 = MEMORY[0x1E697FEC8];
  WitnessTable = swift_getWitnessTable();
  v136 = MEMORY[0x1E697E070];
  v101 = MEMORY[0x1E697E858];
  v8 = swift_getWitnessTable();
  v123 = v5;
  v124 = v6;
  v76 = v5;
  v77 = v7;
  v80 = v6;
  v125 = v7;
  v126 = v8;
  v9 = v7;
  v10 = v8;
  v86 = v8;
  v11 = MEMORY[0x1E69811E0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v102 = &v70 - v12;
  v13 = sub_1A5248804();
  v98 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v70 - v14;
  sub_1A5249A34();
  v15 = sub_1A5248804();
  v123 = v5;
  v124 = v6;
  v125 = v9;
  v126 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v133 = OpaqueTypeConformance2;
  v134 = MEMORY[0x1E69805D0];
  v16 = v13;
  v90 = v13;
  v17 = swift_getWitnessTable();
  v92 = v17;
  v131 = swift_getWitnessTable();
  v132 = MEMORY[0x1E697E5C0];
  v89 = v15;
  v91 = swift_getWitnessTable();
  v123 = v16;
  v124 = v15;
  v125 = v17;
  v126 = v91;
  v74 = swift_getOpaqueTypeMetadata2();
  v94 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v87 = &v70 - v18;
  v100 = a1;
  *&v106 = a1[2];
  v19 = v106;
  v20 = type metadata accessor for LemonadeInlineStoryPlayer();
  v21 = a1[4];
  v22 = sub_1A3D41BF8();
  v23 = sub_1A3D422DC(&qword_1EB129DB8, type metadata accessor for LemonadeInlineStoryPlayer);
  v24 = sub_1A3D41C4C();
  v123 = v19;
  v124 = &type metadata for PhotosPreviewableCollection;
  v125 = v20;
  v126 = &type metadata for LemonadeInlineStoryContentPlayerView;
  v127 = v21;
  v128 = v22;
  v129 = v23;
  v130 = v24;
  v25 = sub_1A52428F4();
  sub_1A5249A34();
  v26 = sub_1A5248804();
  v27 = swift_getWitnessTable();
  v121 = swift_getWitnessTable();
  v122 = MEMORY[0x1E697E5C0];
  v28 = swift_getWitnessTable();
  v123 = v25;
  v124 = v26;
  v125 = v27;
  v126 = v28;
  v73 = v11;
  v78 = swift_getOpaqueTypeMetadata2();
  v123 = v25;
  v124 = v26;
  v125 = v27;
  v126 = v28;
  v79 = swift_getOpaqueTypeConformance2();
  v82 = sub_1A5248AE4();
  v75 = sub_1A5248804();
  v85 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v70 - v29;
  v30 = sub_1A5248804();
  v83 = *(v30 - 8);
  v84 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v72 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v81 = &v70 - v33;
  v34 = v100;
  *&v35 = v106;
  *(&v35 + 1) = v76;
  *&v36 = v21;
  *(&v36 + 1) = v77;
  v106 = v36;
  v107 = v35;
  v114 = v35;
  v115 = v36;
  v37 = v103;
  v116 = v103;
  swift_checkMetadataState();
  sub_1A524AA04();
  v38 = v96;
  v86 = *(v96 + 16);
  v39 = v105;
  v86(v105, v37, v34);
  v40 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v42 = v106;
  *(v41 + 16) = v107;
  *(v41 + 32) = v42;
  v96 = *(v38 + 32);
  (v96)(v41 + v40, v39, v34);
  v43 = OpaqueTypeMetadata2;
  v44 = v102;
  sub_1A524A994();

  (*(v95 + 8))(v44, v43);
  v45 = v105;
  v46 = v103;
  v47 = v100;
  v86(v105, v103, v100);
  v48 = swift_allocObject();
  v49 = v106;
  *(v48 + 16) = v107;
  *(v48 + 32) = v49;
  (v96)(v48 + v40, v45, v47);
  v111 = v107;
  v112 = v106;
  v113 = v46;
  v50 = swift_checkMetadataState();
  v51 = v87;
  v52 = v90;
  v53 = v91;
  v54 = v92;
  v55 = v104;
  sub_1A524AA04();

  (*(v98 + 8))(v55, v52);
  v108 = v107;
  v109 = v106;
  v110 = v46;
  sub_1A524BC74();
  v123 = v52;
  v124 = v50;
  v125 = v54;
  v126 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v71;
  v58 = v74;
  sub_1A524B0A4();
  (*(v94 + 8))(v51, v58);
  v59 = swift_getWitnessTable();
  v119 = v56;
  v120 = v59;
  v60 = v75;
  v61 = swift_getWitnessTable();
  v62 = v72;
  sub_1A524AF44();
  (*(v85 + 8))(v57, v60);
  v63 = sub_1A3D41ECC();
  v117 = v61;
  v118 = v63;
  v64 = v84;
  swift_getWitnessTable();
  v65 = v83;
  v66 = *(v83 + 16);
  v67 = v81;
  v66(v81, v62, v64);
  v68 = *(v65 + 8);
  v68(v62, v64);
  v66(v99, v67, v64);
  return (v68)(v67, v64);
}

uint64_t sub_1A3D3FEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v26[1] = a1;
  v27 = a7;
  sub_1A5249A34();
  v12 = sub_1A5248804();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v26 - v17;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v19 = (a2 + *(type metadata accessor for LemonadeInlineStoryPlayerView() + 76));
  v20 = *v19;
  v21 = v19[1];
  v30 = v20;
  v31 = v21;
  sub_1A3D44408(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A524BE94();
  WitnessTable = swift_getWitnessTable();
  sub_1A524A9C4();
  v28 = WitnessTable;
  v29 = MEMORY[0x1E697E070];
  swift_getWitnessTable();
  v23 = *(v13 + 16);
  v23(v18, v15, v12);
  v24 = *(v13 + 8);
  v24(v15, v12);
  v23(v27, v18, v12);
  return (v24)(v18, v12);
}

uint64_t sub_1A3D40214()
{
  sub_1A3D44408(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t sub_1A3D4028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v22[0] = a5;
  v22[1] = a2;
  v22[2] = a1;
  v23 = a7;
  sub_1A5249A34();
  v10 = sub_1A5248804();
  WitnessTable = swift_getWitnessTable();
  v31 = MEMORY[0x1E697E070];
  v26 = a4;
  v27 = v10;
  v28 = a6;
  v29 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  sub_1A5249A34();
  v11 = sub_1A5248804();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  v26 = a3;
  v27 = a4;
  v28 = v22[0];
  v29 = a6;
  type metadata accessor for LemonadeInlineStoryPlayerView();
  sub_1A3D40214();
  v18 = swift_getWitnessTable();
  sub_1A524B094();
  v24 = v18;
  v25 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  v19 = *(v12 + 16);
  v19(v17, v14, v11);
  v20 = *(v12 + 8);
  v20(v14, v11);
  v19(v23, v17, v11);
  return (v20)(v17, v11);
}

uint64_t sub_1A3D40530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, char *a6@<X8>)
{
  v75 = a5;
  v76 = a3;
  v78 = a6;
  v93 = a2;
  v94 = a3;
  v95 = a4;
  v96 = a5;
  v80 = a4;
  v9 = type metadata accessor for LemonadeInlineStoryPlayerView();
  v83 = *(v9 - 8);
  v82 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v56 - v10;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v14;
  v15 = type metadata accessor for LemonadeInlineStoryPlayer();
  v74 = v15;
  v16 = sub_1A3D41BF8();
  v73 = v16;
  v17 = sub_1A3D422DC(&qword_1EB129DB8, type metadata accessor for LemonadeInlineStoryPlayer);
  v72 = v17;
  v71 = sub_1A3D41C4C();
  v93 = a2;
  v94 = &type metadata for PhotosPreviewableCollection;
  v95 = v15;
  v96 = &type metadata for LemonadeInlineStoryContentPlayerView;
  v97 = a4;
  v98 = v16;
  v99 = v17;
  v100 = v71;
  v18 = sub_1A52428F4();
  v77 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v70 = &v56 - v19;
  sub_1A5249A34();
  v20 = sub_1A5248804();
  v66 = v18;
  WitnessTable = swift_getWitnessTable();
  v68 = WitnessTable;
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x1E697E5C0];
  v64 = v20;
  v67 = swift_getWitnessTable();
  v93 = v18;
  v94 = v20;
  v95 = WitnessTable;
  v96 = v67;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v62 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v63 = &v56 - v25;
  v26 = *(v11 + 16);
  v58 = a2;
  v26(v14, a1, a2, v24);
  v27 = v9;
  v28 = *(v9 + 56);
  v29 = *(v9 + 60);
  v57 = v9;
  v30 = a1;
  v31 = a1 + v28;
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  v93 = v32;
  LOBYTE(v94) = v31;
  v33 = *(a1 + v29);
  v79 = a1;
  swift_unknownObjectRetain();
  v34 = *sub_1A3E5C92C();
  v89 = v33;
  v90 = v34;
  sub_1A3D43BC8();
  v60 = sub_1A524E114();
  v35 = v83;
  v59 = *(v83 + 16);
  v59(v81, v30, v27);
  v36 = (*(v35 + 80) + 48) & ~*(v35 + 80);
  v37 = swift_allocObject();
  v38 = v76;
  *(v37 + 2) = a2;
  *(v37 + 3) = v38;
  v39 = v75;
  *(v37 + 4) = v80;
  *(v37 + 5) = v39;
  v40 = *(v35 + 32);
  v83 = v35 + 32;
  v41 = v81;
  v42 = v57;
  v40(&v37[v36], v81, v57);
  v59(v41, v79, v42);
  v43 = v36;
  v44 = swift_allocObject();
  v45 = v58;
  *(v44 + 2) = v58;
  *(v44 + 3) = v38;
  v46 = v80;
  *(v44 + 4) = v80;
  *(v44 + 5) = v39;
  v40(&v44[v43], v41, v42);
  v47 = v70;
  sub_1A52428E4();
  v84 = v45;
  v85 = v38;
  v86 = v46;
  v87 = v39;
  v88 = v79;
  swift_checkMetadataState();
  v48 = v62;
  v49 = v66;
  sub_1A524AA04();
  (*(v77 + 8))(v47, v49);
  v50 = v65;
  v51 = *(v65 + 16);
  v52 = v63;
  v53 = OpaqueTypeMetadata2;
  v51(v63, v48, OpaqueTypeMetadata2);
  v54 = *(v50 + 8);
  v54(v48, v53);
  v51(v78, v52, v53);
  return (v54)(v52, v53);
}

uint64_t sub_1A3D40CD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v38 = a5;
  v40 = a3;
  *&v49 = a3;
  *(&v49 + 1) = a4;
  v31 = a4;
  v50 = a5;
  v51 = a6;
  v9 = type metadata accessor for LemonadeInlineStoryPlayerView();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = *a1;
  v15 = *(a1 + 8);
  sub_1A3D4104C(0);
  v39 = type metadata accessor for LemonadeInlineStoryPlayer();
  v16 = sub_1A3D41110(v9);
  v55 = v14;
  v56 = v15;
  sub_1A3D418C0(v9);
  v17 = v9;
  v18 = a2 + *(v9 + 60);
  v33 = a2;
  PhotosCollectionPreviewPlayer.Configuration.init(options:playbackRate:resolutionMultiplier:blurRadius:)(&v43, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *(v18 + 48), &v49);
  v43 = v49;
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v48 = v54;
  _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v42);
  v41 = v42;
  v34 = (*(*v16 + 96))(&v55, &v43, &v41);

  v19 = v35;
  v32 = *(v35 + 16);
  v20 = v13;
  v32(v13, a2, v9);
  v21 = v19;
  v22 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v23 = swift_allocObject();
  v23[2] = v40;
  v23[3] = a4;
  v24 = v38;
  v25 = v36;
  v23[4] = v38;
  v23[5] = v25;
  v35 = *(v21 + 32);
  (v35)(v23 + v22, v20, v17);
  v26 = v37;
  v32(v37, v33, v17);
  v27 = swift_allocObject();
  v28 = v31;
  v27[2] = v40;
  v27[3] = v28;
  v27[4] = v24;
  v27[5] = v25;
  (v35)(v27 + v22, v26, v17);
  return sub_1A41F569C(v34, sub_1A3D43E08, v23, sub_1A3D44054, v27);
}

uint64_t sub_1A3D4104C(char a1)
{
  v1 = a1 & 1;
  result = sub_1A3D41848();
  if ((result & 1) != v1)
  {
    sub_1A3D44408(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    return sub_1A3D40198();
  }

  return result;
}

uint64_t sub_1A3D41110(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 80));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1A3D4125C()
{
  type metadata accessor for LemonadeInlineStoryPlayer();
  sub_1A41F5728();
  if (v0)
  {
    v1 = sub_1A524BD24();
  }

  else
  {
    v1 = sub_1A524BCF4();
  }

  MEMORY[0x1EEE9AC00](v1);
  sub_1A3D442A4();

  sub_1A5247FB4();
  sub_1A5248914();
}

uint64_t sub_1A3D41374(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = type metadata accessor for LemonadeInlineStoryPlayerView();
  sub_1A3D418C0(v4);
  sub_1A3E5C8FC();
  sub_1A3D43BC8();
  if (sub_1A524E114())
  {
    goto LABEL_2;
  }

  if ((a3 >> 8))
  {
    v5 = 0;
    goto LABEL_7;
  }

  if (a3)
  {
LABEL_2:
    v5 = sub_1A524BD24();
  }

  else
  {
    v5 = sub_1A524BCF4();
  }

LABEL_7:
  MEMORY[0x1EEE9AC00](v5);
  sub_1A3D43DB4();

  sub_1A5247FB4();
  sub_1A5248914();
}

uint64_t sub_1A3D41528(uint64_t a1, void (*a2)(void))
{
  a2();
  sub_1A5247FA4();
  return sub_1A5247F94();
}

uint64_t sub_1A3D41588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, ValueMetadata *a3@<X3>, uint64_t a4@<X4>, ValueMetadata *a5@<X5>, char *a6@<X8>)
{
  v22 = a1;
  v23 = a6;
  v26 = a2;
  v27 = &type metadata for PhotosPreviewableCollection;
  v28 = type metadata accessor for LemonadeInlineStoryPlayer();
  v29 = &type metadata for LemonadeInlineStoryContentPlayerView;
  v30 = a4;
  v31 = sub_1A3D41BF8();
  v32 = sub_1A3D422DC(&qword_1EB129DB8, type metadata accessor for LemonadeInlineStoryPlayer);
  v33 = sub_1A3D41C4C();
  sub_1A52428F4();
  sub_1A5249A34();
  v10 = sub_1A5248804();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  type metadata accessor for LemonadeInlineStoryPlayerView();
  if ((sub_1A3D41848() & 1) == 0)
  {
    sub_1A3C7E8B0();
    v17 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v17 opacityOfPlayerOnFirstSegment];
  }

  WitnessTable = swift_getWitnessTable();
  sub_1A524B094();
  v24 = WitnessTable;
  v25 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  v19 = *(v11 + 16);
  v19(v16, v13, v10);
  v20 = *(v11 + 8);
  v20(v13, v10);
  v19(v23, v16, v10);
  return (v20)(v16, v10);
}

uint64_t sub_1A3D41848()
{
  sub_1A3D44408(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t sub_1A3D418C0(uint64_t a1)
{
  sub_1A3D41960(a1, &v2);
  sub_1A3D4417C();
  sub_1A524C9C4();
  sub_1A3D441D0();
  sub_1A524EE64();
  sub_1A3D43BC8();
  return sub_1A524E184();
}

void sub_1A3D41960(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 84);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A3D41ABC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.collectionPreviewRepository.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A3D41B14()
{
  sub_1A3D41F20();

  return sub_1A5249244();
}

uint64_t sub_1A3D41B5C@<X0>(void *a1@<X8>)
{
  sub_1A3D41F20();
  result = sub_1A5249244();
  *a1 = v3;
  return result;
}

unint64_t sub_1A3D41BF8()
{
  result = qword_1EB12AB40;
  if (!qword_1EB12AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AB40);
  }

  return result;
}

unint64_t sub_1A3D41C4C()
{
  result = qword_1EB17A3E0[0];
  if (!qword_1EB17A3E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17A3E0);
  }

  return result;
}

uint64_t sub_1A3D41CB8()
{
  type metadata accessor for LemonadeInlineStoryPlayerView();
  type metadata accessor for LemonadeInlineStoryPlayer();
  sub_1A41F5728();
  PXDisplayCollectionDetailedCountsMake(v0);
  type metadata accessor for LemonadeInlineStoryPlayerView();
  sub_1A3D40120();
  return sub_1A3D40198();
}

uint64_t sub_1A3D41D98()
{
  v2 = *(v0 + 16);
  type metadata accessor for LemonadeInlineStoryPlayerView();
  sub_1A3D43DB4();
  sub_1A5247FA4();
  if (!v2)
  {
    return sub_1A5247F94();
  }

  type metadata accessor for LemonadeInlineStoryPlayerView();
  if (sub_1A3D40214())
  {

    return sub_1A5247F94();
  }

  sub_1A524BCD4();
  sub_1A5247F94();
}

unint64_t sub_1A3D41ECC()
{
  result = qword_1EB1276C0;
  if (!qword_1EB1276C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1276C0);
  }

  return result;
}

unint64_t sub_1A3D41F20()
{
  result = qword_1EB17AB38[0];
  if (!qword_1EB17AB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17AB38);
  }

  return result;
}

uint64_t sub_1A3D41F78@<X0>(void *a1@<X8>)
{

  result = PhotosCollectionPreviewPlayerView.init(player:)(v2, &v4);
  *a1 = v4;
  return result;
}

uint64_t LemonadeInlineStoryPlayerView<>.init(id:asset:content:configuration:placeholderBlur:onVisibilityChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>)
{
  v31 = a6;
  v33 = a3;
  v34 = a4;
  v27 = a2;
  v29 = a1;
  v32 = a7;
  v28 = a5;
  v30 = *(a5 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v14 = *(v12 + 8);
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v20 = *(v15 + 32);
  v21 = *(v15 + 40);
  v22 = *(v15 + 48);
  (*(v23 + 16))(v11, v9);
  v45 = v13;
  v46 = v14;
  v39[0] = v17;
  v39[1] = v16;
  v40 = v18;
  v41 = v19;
  v42 = v20;
  v43 = v21;
  v44 = v22;
  v35 = v13;
  v36 = v14;
  v37 = v27;
  v38 = a8;
  v24 = type metadata accessor for PhotosPreviewableCollectionPlaceholder(0);
  sub_1A3D422DC(&qword_1EB12A9A0, type metadata accessor for PhotosPreviewableCollectionPlaceholder);
  swift_unknownObjectRetain();
  v25 = v28;
  sub_1A3D3F204(v11, &v45, v39, sub_1A3D421F4, v33, v34, v28, v32, v24);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v30 + 8))(v29, v25);
}

uint64_t sub_1A3D421F4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  type metadata accessor for PhotosPreviewableCollectionPlaceholder(0);
  sub_1A3D42328();
  swift_unknownObjectRetain();
  sub_1A5247C74();
  *a1 = v5;
  a1[1] = v6;

  return swift_unknownObjectRetain();
}

uint64_t sub_1A3D422DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3D42328()
{
  result = qword_1EB12AAB0;
  if (!qword_1EB12AAB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12AAB0);
  }

  return result;
}

void PhotosPreviewableCollectionPlaceholder.body.getter(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for ColorGradedAssetView(0);
  swift_unknownObjectRetain();
  sub_1A5243824();
  type metadata accessor for PhotosPreviewableCollectionPlaceholder(0);
  sub_1A3D4344C(0, &qword_1EB124978, sub_1A3D42328, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = (*(v6 + 16))(v5, v6);
  *a1 = v3;
  v8 = a1 + *(v4 + 24);
  *v8 = v7;
  v8[8] = v9 & 1;
  __swift_destroy_boxed_opaque_existential_0(v13);
  v10 = v1[1];
  sub_1A3D424DC();
  v12 = a1 + *(v11 + 36);
  *v12 = v10;
  v12[8] = 1;
}

void sub_1A3D424DC()
{
  if (!qword_1EB128850)
  {
    type metadata accessor for ColorGradedAssetView(255);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128850);
    }
  }
}

void sub_1A3D42560(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for ColorGradedAssetView(0);
  swift_unknownObjectRetain();
  sub_1A5243824();
  sub_1A3D4344C(0, &qword_1EB124978, sub_1A3D42328, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = (*(v6 + 16))(v5, v6);
  *a1 = v3;
  v8 = a1 + *(v4 + 24);
  *v8 = v7;
  v8[8] = v9 & 1;
  __swift_destroy_boxed_opaque_existential_0(v13);
  v10 = v1[1];
  sub_1A3D424DC();
  v12 = a1 + *(v11 + 36);
  *v12 = v10;
  v12[8] = 1;
}

uint64_t sub_1A3D4268C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_1A5243834();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v23 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D4344C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for ColorGradedAssetView(0);
  v20[0] = *(v8 - 8);
  v9 = *(v20[0] + 64);
  MEMORY[0x1EEE9AC00](v8);
  v20[1] = *v1;
  swift_unknownObjectRetain();
  v10 = sub_1A446D1BC();
  v11 = *v10;
  v12 = v2 + *(v8 + 24);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(**v10 + 96);

  if (v15(v13, v14))
  {
    sub_1A3D438F8(v2, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v20[0] + 80) + 24) & ~*(v20[0] + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    sub_1A3D4395C(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    sub_1A52466F4();
  }

  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v18 = sub_1A52429A4();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  (*(v21 + 16))(v23, v2 + *(v8 + 20), v22);
  return sub_1A5243ED4();
}

uint64_t sub_1A3D429CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1A524CC54();
  v2[4] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3D42A64, v4, v3);
}

uint64_t sub_1A3D42A64()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = v1 + *(type metadata accessor for ColorGradedAssetView(0) + 24);
  *(v0 + 56) = *v3;
  *(v0 + 88) = *(v3 + 8);
  v4 = (*v2 + 104) & 0xFFFFFFFFFFFFLL | 0x8062000000000000;
  *(v0 + 64) = *(*v2 + 104);
  *(v0 + 72) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A3D42B04, v2, 0);
}

uint64_t sub_1A3D42B04()
{
  *(v0 + 80) = (*(v0 + 64))(*(v0 + 56), *(v0 + 88));
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A3D42B78, v1, v2);
}

uint64_t sub_1A3D42B78()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1A3D42BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A3D4436C();

  return MEMORY[0x1EEDDEEF0](a1, a2, a3, a4, v8);
}

uint64_t *sub_1A3D42C48()
{
  result = sub_1A3E5C970();
  qword_1EB160668 = *result;
  return result;
}

uint64_t sub_1A3D42C6C@<X0>(void *a1@<X8>)
{
  if (qword_1EB17ABC0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EB160668;
  return result;
}

uint64_t sub_1A3D42CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A3D438A4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void sub_1A3D42D9C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1A3D4344C(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A3D44408(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A3D44408(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1A3D4344C(319, &qword_1EB124818, type metadata accessor for PhotosCollectionPreviewRepository, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A3D44408(319, &qword_1EB124820, &type metadata for PhotosCollectionPreviewPlayer.Options, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A3D42F84(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 79;
  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((((((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = (a2 - v10 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (!v18)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v20 = (v18 - 1) << (8 * v13);
    if (v13 <= 3)
    {
      v21 = *a1;
    }

    else
    {
      v20 = 0;
      v21 = *a1;
    }

    return v10 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v5 == v10)
  {
    return (*(v4 + 48))();
  }

  v22 = &a1[v11] & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v22, v8, v6);
  }

  v23 = *((v12 + v22) & 0xFFFFFFFFFFFFFFF8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  if ((v23 + 1) >= 2)
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

void sub_1A3D4318C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  v16 = v12 + 79;
  v17 = ((((((((((v12 + 79 + v15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 >= a3)
  {
    v21 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = (a3 - v13 + 255) >> 8;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      else if (v21)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v24 = *(v6 + 56);

        v24();
      }

      else
      {
        v25 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v26 = *(v8 + 56);

          v26(v25);
        }

        else
        {
          v27 = ((v16 + v25) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v27 = 0;
            v27[1] = 0;
            *v27 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v27 = a2;
          }
        }
      }

      return;
    }
  }

  v22 = ~v13 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_29:
      if (v21 == 2)
      {
        *&a1[v17] = v23;
      }

      else
      {
        *&a1[v17] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v21)
  {
    a1[v17] = v23;
  }
}

void sub_1A3D4344C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3D434D8()
{
  sub_1A3D4344C(319, &qword_1EB126BC0, sub_1A3D435C4, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A3D4344C(319, &qword_1EB124978, sub_1A3D42328, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A3D435C4()
{
  result = qword_1EB12B190;
  if (!qword_1EB12B190)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12B190);
  }

  return result;
}

unint64_t sub_1A3D43628()
{
  result = qword_1EB128860;
  if (!qword_1EB128860)
  {
    sub_1A3D424DC();
    sub_1A3D436A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128860);
  }

  return result;
}

unint64_t sub_1A3D436A8()
{
  result = qword_1EB189510[0];
  if (!qword_1EB189510[0])
  {
    type metadata accessor for ColorGradedAssetView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB189510);
  }

  return result;
}

void sub_1A3D43728()
{
  sub_1A3D4344C(319, &qword_1EB126BC0, sub_1A3D435C4, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5243834();
    if (v1 <= 0x3F)
    {
      sub_1A3D4344C(319, &unk_1EB120870, type metadata accessor for PFStoryColorGradeKind, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A3D438A4()
{
  result = qword_1EB12AB20;
  if (!qword_1EB12AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AB20);
  }

  return result;
}

uint64_t sub_1A3D438F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorGradedAssetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D4395C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorGradedAssetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D439C0()
{
  v2 = *(type metadata accessor for ColorGradedAssetView(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D43A98;

  return sub_1A3D429CC(v4, v0 + v3);
}

uint64_t sub_1A3D43A98(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void *sub_1A3D43B94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = v2;
  return sub_1A485AB88(&v4, a1);
}

unint64_t sub_1A3D43BC8()
{
  result = qword_1EB12AB00;
  if (!qword_1EB12AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AB00);
  }

  return result;
}

uint64_t sub_1A3D43C1C(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for LemonadeInlineStoryPlayerView() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1A3D40CD0(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_1A3D43CC8(char a1)
{
  v3 = *(type metadata accessor for LemonadeInlineStoryPlayerView() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  result = type metadata accessor for LemonadeInlineStoryPlayerView();
  v6 = (v1 + *(result + 64) + v4);
  if (*v6)
  {
    return (*v6)(a1 & 1);
  }

  return result;
}

unint64_t sub_1A3D43DB4()
{
  result = qword_1EB178A90[0];
  if (!qword_1EB178A90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB178A90);
  }

  return result;
}

uint64_t sub_1A3D43E08()
{
  type metadata accessor for LemonadeInlineStoryPlayerView();

  return sub_1A3D4125C();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = type metadata accessor for LemonadeInlineStoryPlayerView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  (*(*(v5 - 8) + 8))(v3 + v2[13]);
  swift_unknownObjectRelease();
  if (*(v3 + v2[16]))
  {
  }

  sub_1A3C53AEC(*(v3 + v2[21]), *(v3 + v2[21] + 8));
  return swift_deallocObject();
}

uint64_t sub_1A3D44054(uint64_t a1, uint64_t a2, __int16 a3)
{
  type metadata accessor for LemonadeInlineStoryPlayerView();

  return sub_1A3D41374(a1, a2, a3 & 0x1FF);
}

uint64_t sub_1A3D44118()
{
  v1 = *(v0 + 56);
  type metadata accessor for LemonadeInlineStoryPlayerView();
  return sub_1A3D4104C((v1 & 1) == 0);
}

unint64_t sub_1A3D4417C()
{
  result = qword_1EB12AB10;
  if (!qword_1EB12AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AB10);
  }

  return result;
}

unint64_t sub_1A3D441D0()
{
  result = qword_1EB12AAE8;
  if (!qword_1EB12AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AAE8);
  }

  return result;
}

uint64_t sub_1A3D44224()
{
  type metadata accessor for LemonadeInlineStoryPlayer();
  sub_1A41F5728();
  sub_1A41F7694();
  type metadata accessor for LemonadeInlineStoryPlayerView();
  return sub_1A3D40120();
}

unint64_t sub_1A3D442A4()
{
  result = qword_1EB179988[0];
  if (!qword_1EB179988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB179988);
  }

  return result;
}

unint64_t sub_1A3D44318()
{
  result = qword_1EB12AA50;
  if (!qword_1EB12AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AA50);
  }

  return result;
}

unint64_t sub_1A3D4436C()
{
  result = qword_1EB12B2C0;
  if (!qword_1EB12B2C0)
  {
    sub_1A3D44408(255, &qword_1EB12B2C8, MEMORY[0x1E6981D60], MEMORY[0x1E69E6720]);
    sub_1A3D44458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B2C0);
  }

  return result;
}

void sub_1A3D44408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A3D44458()
{
  result = qword_1EB12B2D0;
  if (!qword_1EB12B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B2D0);
  }

  return result;
}

uint64_t SharedAlbumActionViewModel.PXSensitivityAnalysisState.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3D445FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3D44660(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x150);

  return v2(v3);
}

uint64_t sub_1A3D446CC()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x700))();

  swift_beginAccess();
}

uint64_t sub_1A3D44768(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__navigationContext;
  swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
  }

  KeyPath = swift_getKeyPath();
  v5 = MEMORY[0x1EEE9AC00](KeyPath);
  v7 = v1;
  v8 = a1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x708))(v5);
}

uint64_t sub_1A3D44888()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__navigationContext;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

void (*sub_1A3D448F4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D4459C();
  return sub_1A3D44A54;
}

uint64_t type metadata accessor for SharedAlbumActionViewModel()
{
  result = qword_1EB166DF0;
  if (!qword_1EB166DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3D44AAC()
{
  v1 = sub_1A5246F24();
  v2 = MEMORY[0x1EEE9AC00](v1);
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))(v2);
  if (v3)
  {
    v4 = v3;
    sub_1A3D44D38();
    v6 = v5;

    if (v6)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

uint64_t sub_1A3D44D38()
{
  v1 = [v0 inputItems];
  v2 = sub_1A524CA34();

  v3 = sub_1A3D5B5F8(v2);

  if (!v3)
  {
    return 0;
  }

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_17:

    return 0;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 userInfo];
  if (!v7)
  {

    return 0;
  }

  v8 = v7;
  v9 = sub_1A524C3E4();

  sub_1A524E384();
  if (!*(v9 + 16) || (v10 = sub_1A3D5C0BC(v12), (v11 & 1) == 0))
  {

    sub_1A3D5FAFC(v12);
    return 0;
  }

  sub_1A3C2F0BC(*(v9 + 56) + 32 * v10, v13);

  sub_1A3D5FAFC(v12);

  if (swift_dynamicCast())
  {
    return 0xD000000000000028;
  }

  else
  {
    return 0;
  }
}

void (*sub_1A3D44F1C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3D44F80;
}

void sub_1A3D44F80(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A3D44AAC();
  }
}

uint64_t sub_1A3D44FB4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3D45018(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x180);
  v4 = *a1;
  return v3(v2);
}

void sub_1A3D4509C(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__extensionContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x708))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB12B418);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v11 = v6;

  sub_1A3D44AAC();
}

void sub_1A3D4523C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__extensionContext;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;

  sub_1A3D44AAC();
}

void (*sub_1A3D452B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D44F1C(v4);
  return sub_1A3D45410;
}

uint64_t sub_1A3D45480@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3D454E4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1B0);
  v4 = *a1;
  return v3(v2);
}

void sub_1A3D45568(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sharedAlbum;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x708))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126AC0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

void (*sub_1A3D45714(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D4541C();
  return sub_1A3D45874;
}

uint64_t sub_1A3D458E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

void (*sub_1A3D45B14(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D45880();
  return sub_1A3D45C74;
}

void sub_1A3D45C80(void *a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__assets;
  a1[2] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__assets;
  *a1 = *(v1 + v2);
  a1[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A3D45CD8(void *a1, char a2))(void)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = *a1;
  v5 = MEMORY[0x1E69E7D40];
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x208))();
  v7 = sub_1A3D5B724(v6, v4, &qword_1EB126660);

  if ((v7 & 1) == 0)
  {
    v9 = (*((*v5 & *v3) + 0x650))(v8);
    v10 = *((*v5 & *v3) + 0x430);
    v11 = v10(v9);
    if (v11)
    {
      v12 = sub_1A3C33378(v11);
      result = v10(v12);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v14 = result;
      result();
      sub_1A3C33378(v14);
    }
  }
}

uint64_t sub_1A3D45F38@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x208))();
  *a2 = result;
  return result;
}

void sub_1A3D46290(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  sub_1A3D45C80(v4);
}

void *sub_1A3D463FC()
{
  v1 = sub_1A523FBB4();
  v2 = *(v1 - 8);
  v22 = v1;
  v23 = v2;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x208))(v3);
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v9 = 0;
    v20 = v7 & 0xFFFFFFFFFFFFFF8;
    v21 = v7 & 0xC000000000000001;
    v19[1] = v23 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v21)
      {
        v11 = MEMORY[0x1A59097F0](v9, v7);
      }

      else
      {
        if (v9 >= *(v20 + 16))
        {
          goto LABEL_16;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = i;
      v15 = [v11 localIdentifier];
      sub_1A524C674();

      sub_1A523FB54();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1A3D5BB08(0, v10[2] + 1, 1, v10);
      }

      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        v10 = sub_1A3D5BB08(v16 > 1, v17 + 1, 1, v10);
      }

      v10[2] = v17 + 1;
      (*(v23 + 32))(v10 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17, v5, v22);
      ++v9;
      i = v14;
      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v10;
}

void sub_1A3D46698(uint64_t a1)
{
  v3 = sub_1A523FBB4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*((*MEMORY[0x1E69E7D40] & *v1) + 0x148))(v5) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

  v10 = *(v9 + 16);

  v11 = a1;
  v12 = *(a1 + 16);
  if (v12)
  {
    v32 = v10;
    v33 = v1;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = *(v13 + 64);
    v31 = v11;
    v16 = v11 + ((v15 + 32) & ~v15);
    v35 = *(v13 + 56);
    v36 = v14;
    v17 = MEMORY[0x1E69E7CC0];
    v34 = v13;
    v14(v7, v16, v3);
    while (1)
    {
      v19 = sub_1A523FB64();
      v21 = v20;
      (*(v13 - 8))(v7, v3);
      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1A3D3D914(0, *(v17 + 2) + 1, 1, v17);
        }

        v23 = *(v17 + 2);
        v22 = *(v17 + 3);
        if (v23 >= v22 >> 1)
        {
          v17 = sub_1A3D3D914((v22 > 1), v23 + 1, 1, v17);
        }

        *(v17 + 2) = v23 + 1;
        v18 = &v17[16 * v23];
        *(v18 + 4) = v19;
        *(v18 + 5) = v21;
      }

      v16 += v35;
      if (!--v12)
      {
        break;
      }

      v36(v7, v16, v3);
    }

    v10 = v32;
    v1 = v33;
    v8 = MEMORY[0x1E69E7D40];
  }

  else
  {
  }

  v24 = objc_opt_self();
  v25 = sub_1A524CA14();

  v26 = [v10 librarySpecificFetchOptions];
  v27 = [v24 fetchAssetsWithLocalIdentifiers:v25 options:v26];

  v28 = [v27 fetchedObjects];
  if (v28)
  {
    v29 = v28;
    sub_1A3C52C70(0, &qword_1EB126660);
    v30 = sub_1A524CA34();
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  (*((*v8 & *v1) + 0x210))(v30);
}

void (*sub_1A3D46A10(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A3D463FC();
  return sub_1A3D46A58;
}

void sub_1A3D46A58(uint64_t *a1, char a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3D46698(*a1);
}

uint64_t sub_1A3D46B10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x250))();
  *a2 = result;
  return result;
}

void (*sub_1A3D46D44(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D46AB0();
  return sub_1A3D46EA4;
}

uint64_t sub_1A3D46F10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x280))();
  *a2 = result;
  return result;
}

void (*sub_1A3D47144(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D46EB0();
  return sub_1A3D472A4;
}

void sub_1A3D472B0(void *a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__subscribers;
  a1[2] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__subscribers;
  *a1 = *(v1 + v2);
  a1[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A3D47308(void *a1, char a2))(void)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = *a1;
  v5 = MEMORY[0x1E69E7D40];
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2B0))();
  v7 = sub_1A3D5B724(v6, v4, &qword_1EB12C1B0);

  if ((v7 & 1) == 0)
  {
    v9 = *((*v5 & *v3) + 0x430);
    v10 = v9(v8);
    if (v10)
    {
      v11 = sub_1A3C33378(v10);
      result = v9(v11);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v13 = result;
      result();
      sub_1A3C33378(v13);
    }
  }
}

uint64_t sub_1A3D474E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B0))();
  *a2 = result;
  return result;
}

void sub_1A3D475CC()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x700))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D4788C(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  sub_1A3D472B0(v4);
}

uint64_t sub_1A3D47A58@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2E0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A3D47B78(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D479F8();
  return sub_1A3D47CD8;
}

uint64_t sub_1A3D47D44@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x310))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A3D47E64(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D47CE4();
  return sub_1A3D47FC4;
}

uint64_t sub_1A3D48030@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x340))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3D48134(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D47FD0();
  return sub_1A3D48294;
}

uint64_t sub_1A3D48300@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x370))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A3D483F8()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x700))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3D484CC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (sub_1A524EAB4() & 1) != 0)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x708))(v10);
  }
}

void (*sub_1A3D48614(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D482A0();
  return sub_1A3D48774;
}

uint64_t sub_1A3D487E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3D488A4()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x700))();

  v1 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__displayMediaType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3D4893C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__displayMediaType;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x708))(v6);
  }

  return result;
}

void (*sub_1A3D48A4C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D48780();
  return sub_1A3D48BAC;
}

uint64_t sub_1A3D48C18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3D0))();
  *a2 = result;
  return result;
}

void sub_1A3D48CFC()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x700))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A3D48EE8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D48BB8();
  return sub_1A3D49048;
}

uint64_t sub_1A3D490B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x400))();
  *a2 = result;
  return result;
}

void sub_1A3D49184()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x700))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3D49220(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__perAssetCreationOptions;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x708))(v5);
  }

  *(v1 + v3) = 0;
}

void (*sub_1A3D49374(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D49054();
  return sub_1A3D494D4;
}

uint64_t sub_1A3D49540@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x430))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3D495E8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x438);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

void (*sub_1A3D49714(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D494E0();
  return sub_1A3D49874;
}

uint64_t sub_1A3D498E0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x460))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3D6066C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3D49988(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6062C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x468);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A3D49A80(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x700))();

  v6 = (v3 + *a2);
  swift_beginAccess();
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_1A3D49B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v13 = v5;
  v14 = a1;
  v15 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x708))(KeyPath, a4, &v12, MEMORY[0x1E69E7CA8] + 8);
  a5(a1, a2);
}

void (*sub_1A3D49C3C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D49880();
  return sub_1A3D49D9C;
}

uint64_t sub_1A3D49E08@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x490))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3D49F0C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D49DA8();
  return sub_1A3D4A06C;
}

uint64_t sub_1A3D4A0D8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4C0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3D4A1DC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D4A078();
  return sub_1A3D4A33C;
}

void *sub_1A3D4A3A8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4F0))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A3D4A41C(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4F8))(&v4);
}

uint64_t sub_1A3D4A48C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))();

  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalysisState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A3D4A534(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalysisState;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v2;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x708))(v6);
  }

  return result;
}

void (*sub_1A3D4A640(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D4A348();
  return sub_1A3D4A7A0;
}

uint64_t sub_1A3D4A80C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x520))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3D4A910(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D4A7AC();
  return sub_1A3D4AA70;
}

uint64_t sub_1A3D4AADC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x550))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3D4AB40(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x558);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A3D4ABC4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x700))();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5;
  return v5;
}

void sub_1A3D4AC64(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityInterventionManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x708))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for PXSensitivityInterventionManager(0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

void (*sub_1A3D4ADE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D4AA7C();
  return sub_1A3D4AF40;
}

uint64_t sub_1A3D4AFAC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x580))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3D4B088(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x700))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A3D4B148(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x708))(v7);
  }

  return result;
}

void (*sub_1A3D4B254(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x700))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3D5FE04(&qword_1EB12B408, type metadata accessor for SharedAlbumActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3D4AF4C();
  return sub_1A3D4B3B4;
}

void *sub_1A3D4B3C0()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x700))();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__publishProgressController);
  v2 = v1;
  return v1;
}

id sub_1A3D4B444@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x700))(KeyPath);

  v5 = *(v3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__publishProgressController);
  *a2 = v5;

  return v5;
}

void sub_1A3D4B4F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3D4B520(v1);
}

void sub_1A3D4B520(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__publishProgressController;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__publishProgressController);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x708))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &unk_1EB12B5E0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

void sub_1A3D4B6BC()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x700))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D4B74C(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x700))(KeyPath);

  v5 = *(v3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID);
  a2[1] = v5;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3D4B83C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID);
  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    v13 = a2;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x708))(v10);
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

id sub_1A3D4B9A8()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x700))();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer);

  return v1;
}

id sub_1A3D4BA34@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x700))(KeyPath);

  v5 = *(v3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer);
  *a2 = v5;

  return v5;
}

void sub_1A3D4BB0C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer;
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer);
  sub_1A3C52C70(0, &qword_1EB12B5D8);
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x708))(v10);
  }
}

void *sub_1A3D4BE10()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x178);
  v3 = (v2)();
  if (!v3 || (v3, KeyPath = swift_getKeyPath(), (*((*v1 & *v0) + 0x700))(KeyPath), v5 = , *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8)))
  {
    v2 = *((*v1 & *v0) + 0x250);
    v6 = (v2)();
    if (v6 >> 62)
    {
LABEL_40:
      v7 = sub_1A524E2B4();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 <= 0)
    {
      v9 = (*((*v1 & *v0) + 0x280))(v8);
      v10 = v9 >> 62 ? sub_1A524E2B4() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v10 < 1)
      {
        v27 = (*((*v1 & *v0) + 0x208))(v8);
        if (v27 >> 62)
        {
          v0 = sub_1A524E2B4();
        }

        else
        {
          v0 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

LABEL_35:

        return v0;
      }
    }

    v11 = (v2)(v8);
    if (v11 >> 62)
    {
      v2 = v11;
      v12 = sub_1A524E2B4();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = (*((*v1 & *v0) + 0x280))(v13);
    if (v14 >> 62)
    {
      v15 = sub_1A524E2B4();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = __OFADD__(v12, v15);
    v0 = (v12 + v15);
    if (!v16)
    {
      return v0;
    }

    __break(1u);
  }

  result = (v2)(v5);
  if (result)
  {
    v18 = result;
    v19 = [result inputItems];

    v20 = sub_1A524CA34();
    v21 = sub_1A3D4C284(v20);

    if (v21 >> 62)
    {
      v1 = sub_1A524E2B4();
    }

    else
    {
      v1 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = 0;
    v0 = 0;
    while (v1 != v2)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1A59097F0](v2, v21);
      }

      else
      {
        if (v2 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v22 = *(v21 + 8 * v2 + 32);
      }

      v23 = v22;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = [v22 attachments];
      if (!result)
      {
        __break(1u);
        goto LABEL_47;
      }

      v24 = result;
      sub_1A3C52C70(0, &qword_1EB120AD0);
      v25 = sub_1A524CA34();

      if (v25 >> 62)
      {
        v26 = sub_1A524E2B4();
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v2;
      v16 = __OFADD__(v0, v26);
      v0 = (v0 + v26);
      if (v16)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_35;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1A3D4C284(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v4 = a1 + 32;
    do
    {
      sub_1A3C2F0BC(v4, &v5);
      sub_1A3C52C70(0, &unk_1EB12B5F0);
      swift_dynamicCast();
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

void sub_1A3D4C37C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))();
  if (v2 && (v2, KeyPath = swift_getKeyPath(), (*((*v1 & *v0) + 0x700))(KeyPath), , !*(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8)))
  {

    sub_1A3D4E7F0();
  }

  else
  {
    v4 = (*((*v1 & *v0) + 0x250))();
    if (v4 >> 62)
    {
      v5 = sub_1A524E2B4();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5 <= 0 && ((v7 = (*((*v1 & *v0) + 0x280))(v6), v7 >> 62) ? (v8 = sub_1A524E2B4()) : (v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v8 < 1))
    {

      sub_1A3D57B48();
    }

    else
    {

      sub_1A3D5470C();
    }
  }
}

void sub_1A3D4C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a4;
  v10[3] = a5;
  v10[1] = a3;
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3C56D80();
  (*(v6 + 16))(v8, v9, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D4C940(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v36 = a3;
  v37 = a4;
  v9 = sub_1A5246F24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14;
  if (!a1)
  {
    v37 = a6;
    v24 = sub_1A3C56D80();
    (*(v10 + 16))(v12, v24, v9);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v16 = a1;
  v17 = sub_1A3C56D80();
  (*(v10 + 16))(v15, v17, v9);
  v18 = v16;
  v19 = sub_1A5246F04();
  v20 = sub_1A524D264();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v21 = 136446210;
    v22 = [v18 uuid];
    v35 = v9;
    v23 = v22;
    sub_1A524C674();
    v33[3] = v20;

    sub_1A3C2EF94();
  }

  v25 = (*(v10 + 8))(v15, v9);
  v26 = v36;
  (*((*MEMORY[0x1E69E7D40] & *v36) + 0x208))(v25);
  sub_1A3C52C70(0, &qword_1EB126660);
  v27 = sub_1A524CA14();

  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v18;
  v29 = v37;
  v28[4] = v37;
  v28[5] = a5;
  v28[6] = a6;
  aBlock[4] = sub_1A3D60844;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D59380;
  aBlock[3] = &block_descriptor_202;
  v30 = _Block_copy(aBlock);
  v31 = v18;
  v32 = v26;
  swift_unknownObjectRetain();
  sub_1A3C66EE8(a5);

  PXSharedAlbumsValidateSharedAlbumAddAssets(v31, v27, v29, v30);
  _Block_release(v30);
}

void sub_1A3D4CED8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1D8))();
  v9 = v8;
  v26 = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v22 = a1;
    v23 = a2;
    v11 = 0;
    v24 = a3;
    a2 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1A59097F0](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      a1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 uuid];
      v15 = sub_1A524C674();
      v17 = v16;

      if (v15 == (*((*MEMORY[0x1E69E7D40] & *v4) + 0x370))() && v17 == v18)
      {
      }

      else
      {
        a3 = sub_1A524EAB4();

        if ((a3 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      sub_1A524E514();
      a3 = *(v26 + 16);
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
LABEL_6:
      ++v11;
      if (a1 == i)
      {
        v20 = v26;
        a2 = v23;
        a3 = v24;
        a1 = v22;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_23:

  if ((v20 & 0x8000000000000000) == 0 && (v20 & 0x4000000000000000) == 0)
  {
    if (*(v20 + 16))
    {
      goto LABEL_26;
    }

LABEL_34:

    __break(1u);
    goto LABEL_35;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_34;
  }

LABEL_26:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1A59097F0](0, v20);
    goto LABEL_29;
  }

  if (!*(v20 + 16))
  {
LABEL_35:
    __break(1u);
    return;
  }

  v21 = *(v20 + 32);
LABEL_29:
  v25 = v21;

  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x668))(v25, a1, a2, a3);
}

void sub_1A3D4D1F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x178))();
  if ((!v10 || (v10, KeyPath = swift_getKeyPath(), (*((*v9 & *v4) + 0x700))(KeyPath), v12 = , *(v4 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8))) && ((v13 = (*((*v9 & *v4) + 0x250))(), v13 >> 62) ? (v14 = sub_1A524E2B4()) : (v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10)), (v12 = , v14 <= 0) && ((v15 = (*((*v9 & *v4) + 0x280))(v12), v15 >> 62) ? (v16 = sub_1A524E2B4()) : (v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)), v12 = , v16 < 1)))
  {
    (*((*v9 & *v4) + 0x208))(v12);
    sub_1A3C52C70(0, &qword_1EB126660);
    v17 = sub_1A524CA14();

    v22 = swift_allocObject();
    v22[2] = v4;
    v22[3] = a1;
    v22[4] = a2;
    v22[5] = a3;
    v22[6] = a4;
    v28 = sub_1A3D5DD84;
    v29 = v22;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1A3D59380;
    v27 = &block_descriptor_58;
    v19 = _Block_copy(&v24);
    v23 = v4;
    v21 = a1;
    sub_1A3C66EE8(a3);
    swift_unknownObjectRetain();
  }

  else
  {
    (*((*v9 & *v4) + 0x250))(v12);
    sub_1A3C52C70(0, &qword_1EB12B540);
    v17 = sub_1A524CA14();

    v18 = swift_allocObject();
    v18[2] = v4;
    v18[3] = a1;
    v18[4] = a3;
    v18[5] = a4;
    v28 = sub_1A3D5DD88;
    v29 = v18;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1A3D59380;
    v27 = &block_descriptor_64;
    v19 = _Block_copy(&v24);
    v20 = v4;
    v21 = a1;
    sub_1A3C66EE8(a3);
  }

  PXSharedAlbumsValidateSharedAlbumAddAssets(v21, v17, a2, v19);
  _Block_release(v19);
}

uint64_t sub_1A3D4D618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_1A3D4D6DC;

  return MEMORY[0x1EEE68118](a5, a6, a7);
}

uint64_t sub_1A3D4D6DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1A3D4D8A0;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1A3D4D804;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A3D4D804()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  v2(v3, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3D4D8A0()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3D4D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1A3C68AC0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  sub_1A3D600D0(a3, v25 - v11, &qword_1EB12B270, v9);
  v13 = sub_1A524CCB4();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_1A3C68644(v12, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1A524CCA4();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A524CBC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A524C744() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1A3C68644(a3, &qword_1EB12B270, MEMORY[0x1E69E85F0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A3C68644(a3, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1A3D4DC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v93 = *MEMORY[0x1E69E9840];
  v87 = sub_1A5246F24();
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v79 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v76 - v5;
  v86 = sub_1A5240CB4();
  v6 = *(v86 - 1);
  MEMORY[0x1EEE9AC00](v86);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1A5240E64();
  v90 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v76 - v18;
  v20 = sub_1A52411C4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v85) = sub_1A5240D24();
  sub_1A52411B4();
  v24 = sub_1A5241164();
  v26 = v25;
  (*(v21 + 8))(v23, v20);
  v91 = v24;
  v92 = v26;
  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  v82 = a1;
  v27 = sub_1A5240CC4();
  MEMORY[0x1A5907B60](v27);

  v28 = v91;
  v29 = v92;
  v30 = NSTemporaryDirectory();
  sub_1A524C674();

  sub_1A5240D14();
  v31 = v90;

  v32 = *(v6 + 104);
  v33 = MEMORY[0x1E6968F58];
  v91 = v28;
  v92 = v29;
  v34 = v86;
  v35 = v87;
  if ((v85 & 1) == 0)
  {
    v33 = MEMORY[0x1E6968F68];
  }

  v32(v8, *v33, v86);
  sub_1A3D5F9DC();
  sub_1A5240E44();
  v36 = v8;
  v37 = v80;
  (*(v6 + 8))(v36, v34);
  v38 = v16;
  v39 = v81;
  v86 = v31[1];
  (v86)(v38, v81);
  v40 = v89;

  v85 = objc_opt_self();
  v41 = [v85 defaultManager];
  sub_1A5240E14();
  v42 = sub_1A524C634();

  v43 = [v41 fileExistsAtPath_];

  v44 = v88;
  v84 = v19;
  v76 = v31 + 1;
  if (v43)
  {
    v45 = [v85 defaultManager];
    v46 = sub_1A5240D44();
    v91 = 0;
    v47 = [v45 removeItemAtURL:v46 error:&v91];

    v48 = v91;
    if (!v47)
    {
      v54 = v35;
      v55 = v82;
      goto LABEL_13;
    }

    v49 = v91;
    v44 = v88;
  }

  v50 = sub_1A3C56D80();
  (*(v40 + 16))(v44, v50, v35);
  (v31)[2](v37, v19, v39);
  v51 = sub_1A5246F04();
  v52 = sub_1A524D264();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v53 = 136446210;
    sub_1A3D5FE04(&qword_1EB12B000, MEMORY[0x1E6968FB0]);
    sub_1A524EA44();
    (v86)(v37, v39);
    sub_1A3C2EF94();
  }

  (v86)(v37, v39);
  v54 = v35;
  (*(v40 + 8))(v44, v35);
  v55 = v82;
  v56 = [v85 defaultManager];
  v57 = sub_1A5240D44();
  v19 = v84;
  v58 = sub_1A5240D44();
  v91 = 0;
  v59 = [v56 copyItemAtURL:v57 toURL:v58 error:&v91];

  v48 = v91;
  v31 = v90;
  if (v59)
  {
    v88 = v91;
    v60 = v83;
    (*(v90 + 4))(v83, v19, v39);
    (v31[7])(v60, 0, 1, v39);
    v61 = v88;

    return v61;
  }

LABEL_13:
  v88 = v48;
  v63 = v48;
  v64 = sub_1A5240B84();

  swift_willThrow();
  v65 = sub_1A3C56D80();
  v66 = v79;
  (*(v40 + 16))(v79, v65, v54);
  v67 = v31[2];
  v68 = v77;
  v67(v77, v55, v39);
  v69 = v78;
  v67(v78, v19, v39);
  v70 = v64;
  v71 = sub_1A5246F04();
  v72 = sub_1A524D244();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = v68;
    v74 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = v90;
    *v74 = 136315650;
    sub_1A3D5FE04(&qword_1EB12B000, MEMORY[0x1E6968FB0]);
    LODWORD(v85) = v72;
    sub_1A524EA44();
    (v86)(v73, v39);
    sub_1A3C2EF94();
  }

  v75 = v86;
  (v86)(v69, v39);
  v75(v68, v39);
  (*(v40 + 8))(v66, v87);
  v75(v19, v39);
  return (v31[7])(v83, 1, 1, v39);
}