uint64_t sub_1A3CEF70C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEF744()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3CEF90C()
{
  sub_1A5248804();
  sub_1A42EF798();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CEF9A4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEF9FC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEFA44()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEFA94()
{

  sub_1A3C53AEC(*(v0 + 72), *(v0 + 80));
  sub_1A3C53AEC(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_1A3CEFB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A3C376BC(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3CEFBD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_1A3C376BC(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CEFCF0()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CEFD28()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEFD70()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEFDB4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEFDEC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CEFE24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEFE60()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CEFE98()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEFED0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CEFF10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CEFF48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEFF88()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CEFFC0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CEFFFC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PhotosDetailsDiscoverableView();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v0 + v3, 1, v1))
  {
    (*(v5 + 8))(v0 + v3, v1);
  }

  v6 = v2[9];
  v7 = sub_1A52407E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v2[10];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  if (*(v4 + v2[11] + 8))
  {
  }

  if (*(v4 + v2[13]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CF023C()
{
  sub_1A5249F54();
  sub_1A5248804();
  sub_1A3EE1D04();
  sub_1A42FA630(&qword_1EB127710, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04);
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  sub_1A42FA678();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  sub_1A3F330A8();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A42FA630(&qword_1EB127C80, sub_1A3F330A8);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CF04F4(uint64_t a1, uint64_t a2)
{
  sub_1A42FAB04(0, &qword_1EB122758, sub_1A42FAABC, sub_1A42FAF28, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CF059C()
{
  sub_1A4300298();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CF0624()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF066C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF06B4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF0704()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CF073C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF0788()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF07D4()
{
  v1 = sub_1A52450F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CF08AC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF0904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersonFaceView.BackingObject(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A3CF09C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersonFaceView.BackingObject(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1A3CF0A94()
{
  sub_1A430BEA0();
  sub_1A430C748(&qword_1EB137D80, sub_1A430BEA0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CF0B20()
{
  sub_1A430F288(255);
  sub_1A430F2BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CF0B78(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4312B18(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CF0C58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4312B18(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CF0D2C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4312B18(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CF0E0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4312B18(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CF0EE0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4312B18(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CF0FC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4312B18(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CF10A8()
{
  v1 = (type metadata accessor for LemonadePeopleHomeToolbar.HeartButton(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[9];
  sub_1A4312B18(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5249A94();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CF1284()
{
  sub_1A43129EC();
  sub_1A4312850(255);
  sub_1A4312E84(&qword_1EB137E70, sub_1A4312850);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CF138C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF13C4()
{
  v1 = type metadata accessor for LemonadeBookmarksEditView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 24);
  sub_1A43208C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5242D14();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  sub_1A43208C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5248284();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CF15CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A43208C0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A43208C0(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CF1750(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A43208C0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A43208C0(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CF18D4()
{
  sub_1A4319D48();
  sub_1A5249A24();
  sub_1A4319F0C();
  sub_1A431A0A0();
  sub_1A431A1E8();
  sub_1A3D6DF58();
  sub_1A431A2B0();
  sub_1A4321068(&qword_1EB1380D8, sub_1A431A2B0, sub_1A431BBD8, sub_1A3FF81F0);
  swift_getOpaqueTypeConformance2();
  sub_1A431A9A0(&qword_1EB121B60, sub_1A3D6DF58);
  swift_getOpaqueTypeConformance2();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CF1B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1A431FAA8();
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A3CF1BD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1A431FAA8();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CF1C74()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CF1CB8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF1DB4(uint64_t a1, uint64_t a2)
{
  sub_1A43216B4(0, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3CF1E50(uint64_t a1, uint64_t a2)
{
  sub_1A43216B4(0, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3CF1F0C()
{
  v1 = type metadata accessor for SharedCollectionPreviewsSection();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_1A4324810(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF207C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4324810(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3CF2168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A4324810(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1A3CF2258()
{
  v1 = type metadata accessor for SharedCollectionPreviewsSection();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  sub_1A4324810(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF23D4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF24DC()
{
  v4 = *(v0 + 16);
  v1 = (type metadata accessor for LemonadePickerShelfProviderAdapter() - 8);
  v2 = (*(*v1 + 80) + 80) & ~*(*v1 + 80);
  (*(*(v4 - 8) + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1A3CF25D4()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A3CF26A4()
{
  v17 = *(v0 + 16);
  v1 = type metadata accessor for LemonadePickerContentView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 80) & ~*(*(v1 - 1) + 80));
  sub_1A3F1D444(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32));
  sub_1A3F1B54C(*(v2 + 40), *(v2 + 48));
  sub_1A3C53AEC(*(v2 + 56), *(v2 + 64));
  v3 = v2 + v1[23];
  sub_1A3C4C150(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
    v5 = sub_1A5242D14();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[24]), *(v2 + v1[24] + 8));
  sub_1A3D35BAC(*(v2 + v1[25]), *(v2 + v1[25] + 8));
  v6 = v1[26];
  sub_1A3C4C150(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A52486A4();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[27]), *(v2 + v1[27] + 8));

  (*(*(v17 - 8) + 8))(v2 + v1[29]);
  v8 = v2 + v1[30];
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v8, *(v8 + 8), *(v8 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v8 + 24), *(v8 + 32), *(v8 + 40));
    sub_1A3C47A98();
    v11 = *(v10 + 64);
    v12 = sub_1A5242C84();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
    if (*(v8 + 40) >= 3uLL)
    {
    }

    if (*(v8 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v8 + 72), *(v8 + 80), *(v8 + 88));
  }

  v13 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
  v14 = sub_1A5241F84();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v8 + v13, 1, v14))
  {
    (*(v15 + 8))(v8 + v13, v14);
  }

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1A3CF2A94()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242A94();
  sub_1A5243134();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A524B514();
  sub_1A4178698(255);
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A433148C(&qword_1EB138540, MEMORY[0x1E69C23B0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A433148C(&qword_1EB1279C8, sub_1A4178698);
  return swift_getWitnessTable();
}

uint64_t sub_1A3CF2D6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CF2DA4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF2DE4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF2E3C()
{
  v1 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        goto LABEL_11;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_14;
      }

      v4 = sub_1A5241144();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_14;
        }

LABEL_11:

        goto LABEL_14;
      }

      v4 = sub_1A5244EB4();
    }

    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_11;
  }

LABEL_14:

  return swift_deallocObject();
}

uint64_t sub_1A3CF2F94()
{
  v1 = sub_1A5244EE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CF3034()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3CF3120()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF3164()
{
  v1 = *(type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v4 = sub_1A5240E64();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    sub_1A3C59280(*(v0 + v2), *(v0 + v2 + 8));
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CF3288()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_1A435B234();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v3 + v4 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1A3CF33DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CF3418()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3CF3588()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF362C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CF3664()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF369C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF3710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1A3C7D0D8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A3CF37E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1A3C7D0D8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CF38A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C7D0D8(0, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 68);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3CF3974(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A3C7D0D8(0, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 68);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CF3A38()
{
  sub_1A4365968();
  sub_1A3F1EA2C(255);
  sub_1A4366440(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  sub_1A3F1EC00();
  sub_1A4365A30();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CF3B0C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF3B48(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  sub_1A437049C(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1A437049C(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  sub_1A431FAA8();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_1A3CF3D0C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  sub_1A437049C(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_1A437049C(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  sub_1A431FAA8();
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A3CF3EE8()
{
  v1 = type metadata accessor for MapOptionsChooseMapView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A3C333F8();
  v3 = v1[5];
  sub_1A437049C(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[6];
  sub_1A437049C(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v8 = *(v7 + 32);
    v9 = sub_1A52489C4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  v10 = v1[7];
  sub_1A431FAA8();
  (*(*(v11 - 8) + 8))(v2 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_1A3CF412C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF4164()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CF419C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF41DC()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CF4248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A3CF4318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1A3CF44AC()
{
  v1 = sub_1A5241914();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_1A4376F2C(0, &qword_1EB138BD0, sub_1A4376F90, MEMORY[0x1E69E8660]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v4 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1A3CF462C()
{
  v1 = sub_1A5241A54();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_1A5241BE4();
  swift_getTupleTypeMetadata2();
  v5 = sub_1A524CD14();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1A3CF47AC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF4850(uint64_t a1, uint64_t a2)
{
  sub_1A437AF40();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CF48B4(uint64_t a1)
{
  sub_1A437AF40();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CF4980()
{
  sub_1A437DD40(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  v3 = sub_1A5243CC4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CF4AC4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CF4B14()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF4B4C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF4B84()
{
  v1 = sub_1A5242334();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CF4C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5242D14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 5;
    }

    else
    {
      v11 = -6;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1A3CF4CE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5242D14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1A3CF4D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xA)
    {
      return v10 - 9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A3CF4E54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 9;
  }

  return result;
}

uint64_t sub_1A3CF4F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84) == a2)
  {
    v4 = *(v3 + 48);
LABEL_24:

    return v4();
  }

  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + *(a3 + 36));
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  sub_1A437DD40(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = *(v10 - 8);
LABEL_23:
    v4 = *(v11 + 48);
    goto LABEL_24;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v12 = sub_1A5247CB4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v11 = *(v12 - 8);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v11 = *(v13 - 8);
    goto LABEL_23;
  }

  sub_1A43892B8(0, &qword_1EB138CA8, MEMORY[0x1E697DA80]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = *(v14 - 8);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v11 = *(v15 - 8);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v11 = *(v16 - 8);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v11 = *(v17 - 8);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v11 = *(v18 - 8);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  v20 = *(v19 - 8);
  if (*(v20 + 84) == a2)
  {
    v4 = *(v20 + 48);
    goto LABEL_24;
  }

  sub_1A437DD40(0, &qword_1EB12F438, MEMORY[0x1E69C2998], MEMORY[0x1E697DCC0]);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = a1 + *(a3 + 180);

  return v23(v24, a2, v22);
}

uint64_t sub_1A3CF554C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a2;
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84) == a3)
  {
    v6 = *(v5 + 56);
    v7 = a2;
    v8 = *(a4 + 16);
LABEL_24:

    return v6(result, a2, v7, v8);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 36)) = (a2 - 1);
    return result;
  }

  v11 = result;
  sub_1A437DD40(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v8 = v12;
    v13 = *(v12 - 8);
    v14 = *(a4 + 40);
LABEL_23:
    v6 = *(v13 + 56);
    result = v11 + v14;
    a2 = v4;
    v7 = v4;
    goto LABEL_24;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v15 = sub_1A5247CB4();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v8 = v15;
    v13 = *(v15 - 8);
    v14 = *(a4 + 52);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v8 = v16;
    v13 = *(v16 - 8);
    v14 = *(a4 + 56);
    goto LABEL_23;
  }

  sub_1A43892B8(0, &qword_1EB138CA8, MEMORY[0x1E697DA80]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v8 = v17;
    v13 = *(v17 - 8);
    v14 = *(a4 + 60);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v8 = v18;
    v13 = *(v18 - 8);
    v14 = *(a4 + 88);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v8 = v19;
    v13 = *(v19 - 8);
    v14 = *(a4 + 120);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v8 = v20;
    v13 = *(v20 - 8);
    v14 = *(a4 + 136);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v8 = v21;
    v13 = *(v21 - 8);
    v14 = *(a4 + 156);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v8 = v22;
    v13 = *(v22 - 8);
    v14 = *(a4 + 168);
    goto LABEL_23;
  }

  sub_1A437DD40(0, &qword_1EB12F438, MEMORY[0x1E69C2998], MEMORY[0x1E697DCC0]);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v26 = v11 + *(a4 + 180);

  return v25(v26, v4, v4, v24);
}

uint64_t sub_1A3CF5B70()
{
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  sub_1A5248804();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A5243E24();
  sub_1A52420C4();
  sub_1A5249754();
  sub_1A5244124();
  sub_1A5242374();
  sub_1A5249754();
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5249754();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B894();
  v0 = MEMORY[0x1E6980A08];
  sub_1A439027C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A439027C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v0);
  sub_1A5248804();
  v1 = MEMORY[0x1E69C2948];
  v2 = MEMORY[0x1E6980A08];
  sub_1A437DD40(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1B2AC();
  sub_1A5248804();
  v3 = MEMORY[0x1E69C24E0];
  sub_1A437DD40(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], v2);
  sub_1A5248804();
  sub_1A439027C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v0);
  sub_1A5248804();
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A4383424(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
  swift_getWitnessTable();
  sub_1A4383424(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  swift_getWitnessTable();
  sub_1A4383488(&qword_1EB1279C8, &qword_1EB1279C0, v1);
  swift_getWitnessTable();
  sub_1A438DB60(&qword_1EB1279E8, sub_1A3F1B2AC);
  swift_getWitnessTable();
  sub_1A4383488(&qword_1EB1279F8, &qword_1EB1279F0, v3);
  swift_getWitnessTable();
  sub_1A4383424(&qword_1EB1279B0, &qword_1EB1279A8, MEMORY[0x1E69E7DE0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v4 = MEMORY[0x1E69E6530];
  swift_getOpaqueTypeMetadata2();
  sub_1A439027C(255, &qword_1EB126D60, v4, MEMORY[0x1E69E6720]);
  swift_getOpaqueTypeConformance2();
  sub_1A43834EC();
  swift_getOpaqueTypeMetadata2();
  sub_1A5243204();
  swift_getOpaqueTypeConformance2();
  sub_1A438DB60(&unk_1EB129110, MEMORY[0x1E69C23C0]);
  swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeConformance2();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CF6A50()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3CF6B1C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CF6BD8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1A5242114();
  return (*(*(v4 - 8) + 48))(a1, a2, v4);
}

uint64_t sub_1A3CF6CEC(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1A5242114();
  return (*(*(v4 - 8) + 56))(a1, a2, a2, v4);
}

uint64_t sub_1A3CF6E04(uint64_t a1)
{
  sub_1A439AB5C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CF6E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A439B608(0, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3CF6F50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A439B608(0, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1A3CF7038()
{
  sub_1A439AE30();
  sub_1A439AD7C();
  sub_1A439BCB4(255, &qword_1EB143BC0, type metadata accessor for LemonadePeopleNamingView, sub_1A439AF64);
  sub_1A439AB5C();
  sub_1A439BDBC(&qword_1EB138E18, sub_1A439AB5C);
  swift_getOpaqueTypeConformance2();
  sub_1A439AFD8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CF71C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF7200()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF7244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A43A1788(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1A52407E4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1A3CF7380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A43A1788(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1A52407E4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A3CF7548()
{
  v1 = type metadata accessor for PhotosDetailsAlbumAttributionListView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A43A1788(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5248284();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  v5 = sub_1A52407E4();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1A3CF7708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1A5242D14();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A3CF7780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1A5242D14();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A3CF77FC()
{
  sub_1A5248804();
  sub_1A5249754();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CF78B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF78FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A43A58F0(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3CF79E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A43A58F0(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1A3CF7AD0()
{
  sub_1A3D6D85C(0);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v4 = *(v2 + 40);
  v5 = sub_1A524BB24();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1A3CF7C08()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF7C48()
{
  sub_1A43BA81C(0, &unk_1EB1391E8, sub_1A43B99E0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A3CF7D30()
{
  sub_1A3C59280(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A3CF7D68()
{
  sub_1A43BA81C(0, &qword_1EB139238, sub_1A43B9E74);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CF7E80()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF7EB8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A43BCA6C(0, &qword_1EB139348, sub_1A40C61BC, MEMORY[0x1E697DA80]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CF7F98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A43BCA6C(0, &qword_1EB139348, sub_1A40C61BC, MEMORY[0x1E697DA80]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CF807C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A43BCEE8(0, &qword_1EB131110, sub_1A40730A4, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CF815C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A43BCEE8(0, &qword_1EB131110, sub_1A40730A4, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CF8230()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF8268()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF82A8()
{
  v1 = sub_1A5246D14();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CF83A0()
{
  v1 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  j__swift_release(*(v2 + 40), *(v2 + 48));
  sub_1A3C53AEC(*(v2 + 56), *(v2 + 64));
  v3 = *(v1 + 32);
  sub_1A43C2920(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
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

uint64_t sub_1A3CF8538(uint64_t a1)
{
  sub_1A43C3778(0, &qword_1EB139670, sub_1A43C45DC, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CF85CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A43C2920(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CF86AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A43C2920(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CF8784()
{
  v1 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  j__swift_release(*(v3 + 40), *(v3 + 48));
  sub_1A3C53AEC(*(v3 + 56), *(v3 + 64));
  v4 = *(v1 + 32);
  sub_1A43C2920(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5242D14();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CF8968()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF89A0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeFeedBodyStyle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CF8A4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeFeedBodyStyle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CF8AF4()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = (type metadata accessor for LemonadeMaterialTitleCell() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  (*(*(v5 - 8) + 8))(v3);

  swift_unknownObjectRelease();
  (*(*(v1 - 8) + 8))(v3 + v2[20], v1);

  sub_1A3C53AEC(*(v3 + v2[22]), *(v3 + v2[22] + 8));
  sub_1A3C53AEC(*(v3 + v2[23]), *(v3 + v2[23] + 8));
  return swift_deallocObject();
}

uint64_t sub_1A3CF8C84()
{
  v1 = type metadata accessor for LemonadeFavoritingMaterialTitleCell();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v3 = v2 + v1[22];
  sub_1A43D0134(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
    v5 = sub_1A5242D14();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[23]), *(v2 + v1[23] + 8));
  sub_1A3C53AEC(*(v2 + v1[24]), *(v2 + v1[24] + 8));
  v6 = v1[25];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5242D14();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CF8E6C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF8EA4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A43D0168(0, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 88);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A43D0168(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 100);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CF9028(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A43D0168(0, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 88);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A43D0168(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 100);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CF91AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A43D0168(0, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A43D0168(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

void sub_1A3CF932C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A43D0168(0, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    sub_1A43D0168(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A3CF9504()
{
  sub_1A43D0E8C(255, &qword_1EB139898, sub_1A43D0D50, sub_1A43D0F18);
  sub_1A43D0D50(255);
  sub_1A43D0F18();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CF95CC()
{
  sub_1A5243884();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CF9648(uint64_t a1, uint64_t a2)
{
  sub_1A43D05E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CF96AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CF96E8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF9748()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CF9784()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF97BC()
{
  v1 = (type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[9];
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v3 + 24), *(v3 + 32), *(v3 + 40));
    sub_1A3C47A98();
    v6 = *(v5 + 64);
    v7 = sub_1A5242C84();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    if (*(v3 + 40) >= 3uLL)
    {
    }

    if (*(v3 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CF9948()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF9988(uint64_t a1)
{
  sub_1A43DD800(0, &unk_1EB139A68, sub_1A43DC654, sub_1A424ADF0, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CF9A28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CF9AD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CF9C28()
{
  sub_1A43DD800(255, &unk_1EB139A68, sub_1A43DC654, sub_1A424ADF0, MEMORY[0x1E697F960]);
  sub_1A43DC7CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CF9CC4()
{
  v1 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        goto LABEL_11;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_14;
      }

      v4 = sub_1A5241144();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_14;
        }

LABEL_11:

        goto LABEL_14;
      }

      v4 = sub_1A5244EB4();
    }

    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_11;
  }

LABEL_14:

  return swift_deallocObject();
}

uint64_t sub_1A3CF9E10()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF9E54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF9E8C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF9EE4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF9F1C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CF9F6C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CF9FA4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CF9FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5243334();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3CFA068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5243334();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3CFA0DC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CFA114()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CFA1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524BFC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A3CFA284(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A524BFC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3CFA340(unsigned __int8 *a1, int a2)
{
  if (a2 != 254)
  {
    type metadata accessor for PhotoKitItemListImplementation();
    sub_1A5245E94();
  }

  v2 = *a1;
  v3 = v2 >= 2;
  v4 = (v2 + 2147483646) & 0x7FFFFFFF;
  if (v3)
  {
    return (v4 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A3CFA428(_BYTE *result, char a2, int a3)
{
  if (a3 != 254)
  {
    type metadata accessor for PhotoKitItemListImplementation();
    sub_1A5245E94();
  }

  *result = a2 + 1;
  return result;
}

uint64_t sub_1A3CFA52C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CFA564()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CFA5DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CFA614()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CFA654(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeFeedBodyStyle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CFA700(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeFeedBodyStyle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CFA7A4()
{

  return swift_deallocObject();
}

__n128 sub_1A3CFA7E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3CFA808(uint64_t a1, uint64_t a2)
{
  sub_1A44094A8(0, &qword_1EB13A170, sub_1A4409980, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CFA89C(uint64_t a1)
{
  sub_1A44094A8(0, &qword_1EB13A170, sub_1A4409980, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CFA928()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFA988()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFA9C8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFAA00()
{
  v1 = (type metadata accessor for LemonadeSocialGroupFeedView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];
  v4 = MEMORY[0x1E6981E90];
  sub_1A440CEAC(0, &qword_1EB13A298, type metadata accessor for LemonadeSocialGroupSectionProvider, MEMORY[0x1E6981E90]);
  (*(*(v5 - 8) + 8))(v3, v5);
  v6 = MEMORY[0x1E6981E98];
  sub_1A440CEAC(0, &qword_1EB1213D0, type metadata accessor for LemonadeSocialGroupSectionProvider, MEMORY[0x1E6981E98]);

  v7 = v2 + v1[12];
  sub_1A440CEAC(0, &qword_1EB121428, type metadata accessor for LemonadePeopleProgressStatus, v4);
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_1A440CEAC(0, &qword_1EB127238, type metadata accessor for LemonadePeopleProgressStatus, v6);

  v9 = v2 + v1[13];
  sub_1A440CEAC(0, &qword_1EB13A2A0, sub_1A440B640, v4);
  (*(*(v10 - 8) + 8))(v9, v10);
  sub_1A440CEAC(0, &qword_1EB127298, sub_1A440B640, v6);

  return swift_deallocObject();
}

uint64_t sub_1A3CFACA4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_1A440CEAC(0, &qword_1EB13A280, type metadata accessor for LemonadeSocialGroupSectionProvider, MEMORY[0x1E697DA80]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  sub_1A440CEAC(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  sub_1A440CEAC(0, &qword_1EB13A288, sub_1A440B640, MEMORY[0x1E697DA80]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[11]];

  return v16(v17, a2, v15);
}

char *sub_1A3CFAEA0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A440CEAC(0, &qword_1EB13A280, type metadata accessor for LemonadeSocialGroupSectionProvider, MEMORY[0x1E697DA80]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1A440CEAC(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  sub_1A440CEAC(0, &qword_1EB13A288, sub_1A440B640, MEMORY[0x1E697DA80]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[11]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A3CFB09C()
{
  sub_1A440C664();
  sub_1A440CBBC();
  sub_1A440C594();
  type metadata accessor for PXPeopleProcessStatus(255);
  sub_1A440C380();
  sub_1A440C2F4();
  sub_1A440C420();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1A440C4D0(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeSocialGroupFeedToolbar();
  sub_1A440C4D0(&qword_1EB125490, type metadata accessor for LemonadeSocialGroupFeedToolbar);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CFB274()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFB2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SharedAlbumCreationView();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SharedAlbumAddToView(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A3CFB3D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SharedAlbumCreationView();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SharedAlbumAddToView(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A3CFB50C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFB544()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFB588(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5241144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CFB634(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5241144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CFB6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5240664();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1A441D550(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A3CFB7F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A5240664();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1A441D550(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1A3CFB924()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CFB95C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFB998(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5241144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CFBA44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5241144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CFBAE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CFBB38()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFBB70()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CFBBA8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFBBE8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFBC28()
{

  sub_1A4426B78(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1A3CFBC74()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFBCAC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CFBCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1A3CFBDB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A52411C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1A3CFBE6C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFBEAC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFBEEC()
{
  v1 = *(type metadata accessor for SuggestLessPeopleOptionSelectionRowView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for SuggestLessPeopleOption(0) + 24);
  v4 = sub_1A52407E4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3CFC00C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A52407E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CFC0B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A52407E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CFC15C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A44300C4(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CFC208(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A44300C4(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CFC2AC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A44300F8(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CFC38C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A44300F8(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CFC460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SuggestLessPeopleOption(0);
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

uint64_t sub_1A3CFC520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SuggestLessPeopleOption(0);
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

uint64_t sub_1A3CFC5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A44300F8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_1A3CFC6D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A44300F8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_1A3CFC7BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A44300F8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1A52407E4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A3CFC910(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A44300F8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1A52407E4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A3CFCAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5248284();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3CFCB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5248284();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3CFCBD8()
{
  v1 = *(type metadata accessor for CancelButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1A5248284();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1A3CFCCA4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CFCCDC()
{
  v1 = type metadata accessor for OptionListFooter(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_1A44300F8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  v6 = sub_1A52407E4();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  if (*(v2 + v1[7]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CFCE8C(uint64_t a1, uint64_t a2)
{
  sub_1A443168C(0, &qword_1EB13A810, sub_1A4431700, sub_1A3E42C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CFCF30(uint64_t a1, uint64_t a2)
{
  sub_1A4431550();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CFCF94(uint64_t a1)
{
  sub_1A4431550();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CFCFF4()
{
  v1 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  v5 = v1[8];
  sub_1A44300F8(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248284();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1A3EF9960(*(v4 + v1[10]), *(v4 + v1[10] + 8), *(v4 + v1[10] + 16), *(v4 + v1[10] + 17));

  return swift_deallocObject();
}

uint64_t sub_1A3CFD22C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFD294()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFD44C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CFD484()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFD648()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFD694()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFD828()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1A3CFD868()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CFD8A4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFD8DC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFD91C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CFD95C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CFD998()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CFD9F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CFDAA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CFDB48()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFDB80()
{
  v1 = (type metadata accessor for TimelineTextEngineCell() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1A52411C4();
  (*(*(v3 - 8) + 8))(v2, v3);
  type metadata accessor for TimelineTextEngineText(0);

  sub_1A3C53AEC(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3CFDCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TimelineTextEngineText(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1A3CFDD74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TimelineTextEngineText(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1A3CFDE34()
{
  sub_1A444D0F8(255);
  sub_1A444F500(255, &qword_1EB120D28, type metadata accessor for TimelineTextEngineText, MEMORY[0x1E69E62F8]);
  sub_1A444ED74(&qword_1EB1219E8, sub_1A444D0F8);
  sub_1A444E584();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CFDF0C()
{
  sub_1A444EC30();
  type metadata accessor for TimelineTextEngineText(255);
  sub_1A444ECC4();
  sub_1A444ED74(&qword_1EB125FC8, type metadata accessor for TimelineTextEngineText);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CFDFB8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFDFF0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CFE028()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFE070()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFE0C8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFE110()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CFE254()
{
  sub_1A445F0A8();
  sub_1A445EF80();
  sub_1A445EC9C();
  sub_1A445EAE8();
  sub_1A3EE53E0(255);
  sub_1A445ED84();
  sub_1A445E56C(&unk_1EB13AFD0, sub_1A3EE53E0, sub_1A4397634);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CFE3A4(uint64_t a1, uint64_t a2)
{
  sub_1A445FC18(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CFE408()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CFE47C(uint64_t a1, uint64_t a2)
{
  sub_1A44550B4(0, &unk_1EB13AF80, sub_1A3FF705C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CFE510(uint64_t a1)
{
  sub_1A44550B4(0, &unk_1EB13AF80, sub_1A3FF705C, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CFE59C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CFE5FC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CFE654()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFE6A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1A3CFE744(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3CFE75C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CFE794()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFE7D4()
{
  sub_1A44670D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CFE85C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFE8A4()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CFE8DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CFE924(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_1A4483044(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  sub_1A4480958(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E697DF08]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  sub_1A4483044(0, &qword_1EB124920, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E697DA80]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[12]];

  return v16(v17, a2, v15);
}

char *sub_1A3CFEB20(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A4483044(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1A4480958(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E697DF08]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  sub_1A4483044(0, &qword_1EB124920, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E697DA80]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[12]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A3CFED1C()
{
  sub_1A4475F78(255);
  sub_1A4475FC0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CFED78()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CFEDB8(uint64_t a1, uint64_t a2)
{
  sub_1A447303C(0, &qword_1EB13B648, sub_1A4481480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CFEE44()
{
  v1 = type metadata accessor for LemonadeRootView();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v1[7];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5249A94();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  v7 = v1[11];
  sub_1A4480958(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E697DF08]);
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = v3 + v1[12];
  sub_1A4483044(0, &qword_1EB121410, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E6981E90]);
  (*(*(v10 - 8) + 8))(v9, v10);
  sub_1A4483044(0, &qword_1EB1213E0, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A3CFF114()
{
  v1 = type metadata accessor for LemonadeRootView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  v5 = v1[7];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5249A94();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v4 + v5, 1, v6))
    {
      (*(v7 + 8))(v4 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[11];
  sub_1A4480958(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E697DF08]);
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = v4 + v1[12];
  sub_1A4483044(0, &qword_1EB121410, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E6981E90]);
  (*(*(v11 - 8) + 8))(v10, v11);
  sub_1A4483044(0, &qword_1EB1213E0, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A3CFF3F4()
{
  v1 = sub_1A52488B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for LemonadeRootView();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  v8 = v5[7];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5249A94();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7 + v8, 1, v9))
    {
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v5[11];
  sub_1A4480958(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E697DF08]);
  (*(*(v12 - 8) + 8))(v7 + v11, v12);
  v13 = v7 + v5[12];
  sub_1A4483044(0, &qword_1EB121410, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E6981E90]);
  (*(*(v14 - 8) + 8))(v13, v14);
  sub_1A4483044(0, &qword_1EB1213E0, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A3CFF738()
{
  v1 = sub_1A52488B4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CFF7C0()
{
  sub_1A5241F34();
  sub_1A3D63A58(255);
  swift_getWitnessTable();
  sub_1A4473B4C(&qword_1EB128DE8, sub_1A3D63A58, sub_1A44808D4);
  swift_getOpaqueTypeMetadata2();
  sub_1A4480958(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69802D8]);
  sub_1A5248804();
  type metadata accessor for CGPoint(255);
  swift_getOpaqueTypeConformance2();
  sub_1A3E754D0();
  swift_getWitnessTable();
  sub_1A4473744(&qword_1EB1266B0, type metadata accessor for CGPoint);
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A4480F94();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CFFA10()
{
  sub_1A44744DC(255, &qword_1EB13B638, sub_1A44810B8, sub_1A448113C);
  sub_1A4482548(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1A44810B8();
  sub_1A448113C();
  swift_getOpaqueTypeConformance2();
  sub_1A4444FB4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CFFB14()
{
  sub_1A4483ED4(255, &qword_1EB127BE8, sub_1A44763C0);
  sub_1A44811E8(&qword_1EB127BF0, &qword_1EB127BE8, sub_1A44763C0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CFFC18()
{
  sub_1A4483ED4(255, &qword_1EB127C18, sub_1A4480F94);
  sub_1A44811E8(&qword_1EB127C20, &qword_1EB127C18, sub_1A4480F94);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CFFD00(uint64_t a1)
{
  sub_1A4487FC8(0, &qword_1EB13B820, sub_1A448718C, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CFFD8C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4487FC8(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CFFE6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4487FC8(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CFFF40()
{
  sub_1A4487FC8(255, &qword_1EB13B820, sub_1A448718C, MEMORY[0x1E69E6720]);
  sub_1A4487A5C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CFFFC8()
{
  v1 = (type metadata accessor for LemonadeSocialGroupFeedToolbar() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  sub_1A4487FC8(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v5 = v4;
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(v2 + v3, 1, v4))
    {
      (*(v6 + 8))(v2 + v3, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D0017C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D001B8(uint64_t a1)
{
  sub_1A449A490(0, &qword_1EB13B890, sub_1A4488DE8, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D0024C()
{
  v1 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A3C53AEC(*v2, *(v2 + 8));
  v3 = v1[5];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52486A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  if (*(v2 + v1[11]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D00414(uint64_t *a1, uint64_t a2, int *a3)
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

  sub_1A449A4FC(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_1A449A4FC(0, &qword_1EB124858, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  sub_1A449A4FC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  sub_1A449A4FC(0, &qword_1EB13B9F8, type metadata accessor for GenerativeStorySuggestionViewModel, MEMORY[0x1E697DA80]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

char *sub_1A3D00688(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A449A4FC(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  sub_1A449A4FC(0, &qword_1EB124858, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  sub_1A449A4FC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  sub_1A449A4FC(0, &qword_1EB13B9F8, type metadata accessor for GenerativeStorySuggestionViewModel, MEMORY[0x1E697DA80]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = &v5[a4[11]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1A3D008FC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A449A4FC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1A449A4FC(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1A3D00A64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A449A4FC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    sub_1A449A4FC(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[9]) = (a2 - 1);
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1A3D00BC8()
{
  sub_1A449A490(255, &qword_1EB13B890, sub_1A4488DE8, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  sub_1A448A150();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D00C58()
{
  sub_1A448CAEC();
  sub_1A4491B6C(255);
  sub_1A4491BA8();
  sub_1A4491E80(&qword_1EB13B9F0, sub_1A4491B6C, sub_1A4491BA8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D00D08(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A449A4FC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D00DE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A449A4FC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D00EBC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A449A4FC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D00F9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A449A4FC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D01070(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A449A4FC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3D01150(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A449A4FC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D01224()
{
  v1 = type metadata accessor for PlaceholderInputView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 8))
  {
  }

  v3 = *(v1 + 24);
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

uint64_t sub_1A3D013A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A449BAB0(0, &qword_1EB13BBC8, type metadata accessor for TTRWorkflowViewModel, MEMORY[0x1E697DA80]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A449BA7C(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1A3D014FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A449BAB0(0, &qword_1EB13BBC8, type metadata accessor for TTRWorkflowViewModel, MEMORY[0x1E697DA80]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A449BA7C(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D01654(uint64_t a1, uint64_t a2)
{
  sub_1A44A2AA4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D016BC(uint64_t a1, uint64_t a2)
{
  sub_1A449BEC8(0, &qword_1EB13BC08, sub_1A44A292C, sub_1A410AB24);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D017E8()
{

  j__swift_release(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_1A3D0184C()
{

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 80))
  {
  }

  j__swift_release(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_1A3D0194C()
{
  sub_1A44A5BE4();
  sub_1A44A5F94();
  sub_1A449C0A0(&qword_1EB13BEB0, sub_1A44A5BE4);
  sub_1A44A60D0();
  sub_1A5249E64();
  sub_1A449C0A0(&qword_1EB127A50, MEMORY[0x1E697CB70]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D01AA8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D01AE0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D01B18()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D01B60()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D01B98()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D01BF0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D01C30()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D01C70()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D01CDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D01D1C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D01D54()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D01DA4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D01E30()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D01E68(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_1A44B3670(0, &qword_1EB124910, type metadata accessor for ShareParticipantImageConfigurationsFetcher, MEMORY[0x1E697DA80]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  sub_1A44B3670(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  sub_1A44B3670(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[10]];

  return v16(v17, a2, v15);
}

char *sub_1A3D02064(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A44B3670(0, &qword_1EB124910, type metadata accessor for ShareParticipantImageConfigurationsFetcher, MEMORY[0x1E697DA80]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1A44B3670(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_1A44B3670(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[10]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A3D02268(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C6B6DC(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D02348(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3C6B6DC(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D0246C()
{
  sub_1A44B8138();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D024F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A44C24C0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1A3D025E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A44C24C0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_1A3D026C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A44C24C0(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3D027B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A44C24C0(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1A3D028EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A44C24C0(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3D029D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A44C24C0(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1A3D02AC8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D02B00(uint64_t a1, uint64_t a2)
{
  sub_1A44C2D80(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D02B74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A44C6384(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D02C5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A44C6384(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D02D38(uint64_t a1, uint64_t a2)
{
  sub_1A44C6384(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3D02DDC(uint64_t a1, uint64_t a2)
{
  sub_1A44C6384(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3D02E8C()
{
  v1 = (type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[8];
  sub_1A44C6384(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3D02FBC()
{
  sub_1A44C2B68(255, &qword_1EB13C428, sub_1A44C6BC0, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
  type metadata accessor for SharedAlbumsSection.PickerView();
  sub_1A44C6DB0();
  swift_getWitnessTable();
  sub_1A5248454();
  swift_getWitnessTable();
  sub_1A44C6EA0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D030DC()
{
  sub_1A44C3F08();
  sub_1A44C7820(&qword_1EB13C4B0, sub_1A44C3F08, &qword_1EB13C4B8, sub_1A44C3FA8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D03180()
{
  v7 = *(v0 + 24);
  v1 = type metadata accessor for SharedAlbumsSection.PickerView();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  sub_1A44C24C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5248284();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 52);

  v5 = sub_1A524B974();
  (*(*(v7 - 8) + 8))(v4 + *(v5 + 32), v7);

  return swift_deallocObject();
}

uint64_t sub_1A3D0335C(uint64_t a1, uint64_t a2)
{
  sub_1A44C7A88(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D033C0()
{
  sub_1A524B824();
  sub_1A5249274();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A524A2A4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D0361C()
{
  v1 = sub_1A52453A4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for LemonadeMemoriesShelfCreationButton();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  v8 = sub_1A5242D14();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);
  type metadata accessor for LemonadeShelfDisclosureOptions(0);

  v9 = v5[7];
  sub_1A44C9128(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v11 = v10;
    v12 = *(v10 - 8);
    if (!(*(v12 + 48))(v7 + v9, 1, v10))
    {
      (*(v12 + 8))(v7 + v9, v11);
    }
  }

  else
  {
  }

  v13 = v5[9];
  sub_1A44C9128(0, &qword_1EB128A98, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A52434D4();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D03948(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for LemonadeShelfDisclosureOptions(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    sub_1A44C9128(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    sub_1A44C9128(0, &qword_1EB124858, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCC0]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1A3D03B1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for LemonadeShelfDisclosureOptions(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  sub_1A44C9128(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  sub_1A44C9128(0, &qword_1EB124858, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCC0]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[9];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1A3D03CF4()
{
  v1 = type metadata accessor for LemonadeMemoriesShelfCreationButton();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_1A5242D14();
  (*(*(v3 - 8) + 8))(v2, v3);
  type metadata accessor for LemonadeShelfDisclosureOptions(0);

  v4 = v1[7];
  sub_1A44C9128(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v6 = v5;
    v7 = *(v5 - 8);
    if (!(*(v7 + 48))(v2 + v4, 1, v5))
    {
      (*(v7 + 8))(v2 + v4, v6);
    }
  }

  else
  {
  }

  v8 = v1[9];
  sub_1A44C9128(0, &qword_1EB128A98, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A52434D4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D03FA4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D03FDC()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D04024()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D0405C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D040C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D04114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A3D041E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A52411C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1A3D042A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D042E0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D04320()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D04358()
{
  v1 = sub_1A40F354C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D043F0()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D0444C(uint64_t *a1, int a2)
{
  if (a2 != 0x7FFFFFFF)
  {
    sub_1A5245BA4();
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *sub_1A3D044F8(void *result, int a2, int a3)
{
  if (a3 != 0x7FFFFFFF)
  {
    sub_1A5245BA4();
  }

  *result = (a2 - 1);
  return result;
}

uint64_t sub_1A3D045A4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D045DC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D046F0(uint64_t a1, uint64_t a2)
{
  sub_1A44DA110(0, &unk_1EB13C730, sub_1A44DA324, sub_1A44DA38C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D04788()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A3D047D8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D04810()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D04854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A44E6124(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

void sub_1A3D04944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A44E6124(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3D04A44(uint64_t a1)
{
  sub_1A44F2250(0, &qword_1EB13C980, sub_1A44F0B14, sub_1A424ADF0, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D04BDC()
{
  sub_1A44F2250(255, &qword_1EB13C980, sub_1A44F0B14, sub_1A424ADF0, MEMORY[0x1E697F960]);
  sub_1A44F0C10();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D04C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C4C27C(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for LemonadeNavigationDestination();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1A3D04DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3C4C27C(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for LemonadeNavigationDestination();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A3D04EF0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C4C27C(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A3C4C27C(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3D05074(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3C4C27C(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A3C4C27C(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D051F8()
{
  v1 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A3C4C27C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5242D14();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = (v0 + v2 + *(v1 + 20));
  type metadata accessor for LemonadeNavigationDestination();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 0x23u:

      break;
    case 2u:
    case 3u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:

      break;
    case 4u:
    case 5u:

      break;
    case 6u:

      if (v4[8] != 1)
      {
      }

      break;
    case 0xBu:

      if (v4[5] != 1)
      {
      }

      break;
    case 0xCu:

      if (v4[2])
      {
      }

      if (v4[7])
      {
        __swift_destroy_boxed_opaque_existential_0((v4 + 4));
      }

      break;
    case 0xDu:

      if (v4[7])
      {
      }

      type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
      sub_1A5245BA4();
    case 0xEu:

      if (v4[9])
      {
      }

      type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
      sub_1A5245BA4();
    case 0xFu:

      if (v4[9])
      {
      }

      type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
      goto LABEL_46;
    case 0x10u:

      if (v4[10])
      {
      }

      type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
      goto LABEL_46;
    case 0x11u:
    case 0x21u:
    case 0x24u:
    case 0x25u:

      break;
    case 0x12u:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0((v4 + 2));

      break;
    case 0x13u:
    case 0x14u:

      break;
    case 0x15u:

      if (*(v4 + 16) != 255)
      {
      }

      break;
    case 0x16u:
      v8 = sub_1A52411C4();
      (*(*(v8 - 8) + 8))(v4, v8);

      swift_unknownObjectRelease();
LABEL_46:
      sub_1A5245BA4();
    case 0x17u:
      v7 = *(v4 + 16);
      if (v7 != 255)
      {
        sub_1A3EECFA4(*v4, v4[1], v7);
      }

      break;
    case 0x18u:
    case 0x1Bu:
    case 0x1Du:
    case 0x1Eu:
    case 0x20u:

      break;
    case 0x19u:

      if (v4[4])
      {
        __swift_destroy_boxed_opaque_existential_0((v4 + 1));
      }

      break;
    case 0x1Au:

      v5 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration() + 36);
      v6 = sub_1A5244854();
      (*(*(v6 - 8) + 8))(v4 + v5, v6);
      break;
    case 0x1Cu:
    case 0x1Fu:
    case 0x22u:
      swift_unknownObjectRelease();
      break;
    case 0x26u:

      __swift_destroy_boxed_opaque_existential_0((v4 + 2));
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D0594C()
{
  type metadata accessor for LemonadeBookmarkListCell();
  type metadata accessor for LemonadeCollectionBookmarkCell(255);
  sub_1A5249754();
  swift_getWitnessTable();
  sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell);
  return swift_getWitnessTable();
}

uint64_t sub_1A3D05A14()
{
  sub_1A44F219C();
  sub_1A3C759B4(&qword_1EB13CA18, sub_1A44F219C);
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_1A3D05AB8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3D05AD0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D05B0C(uint64_t a1)
{
  sub_1A44F4FF8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D05B68(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A44FD844(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1A44FD844(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[10]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[11];
      goto LABEL_5;
    }

    sub_1A44F9F70();
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[12];

    return v17(v18, a2, v16);
  }
}

void sub_1A3D05DB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A44FD844(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_5:
    v13 = *(v10 + 56);

    v13(a1 + v11, a2, a2, v9);
    return;
  }

  sub_1A44FD844(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return;
  }

  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_5;
  }

  sub_1A44F9F70();
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[12];

  v17(v18, a2, a2, v16);
}

uint64_t sub_1A3D05FF8()
{
  sub_1A44F4FF8();
  sub_1A44F9BC0(255, &qword_1EB13CB20, sub_1A44F4FF8, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle);
  sub_1A3C7A2E0(&qword_1EB13CB28, sub_1A44F4FF8);
  sub_1A44F9C58();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D060CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A44FD844(0, &qword_1EB13CB48, sub_1A44FA394, MEMORY[0x1E6981790]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D061AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A44FD844(0, &qword_1EB13CB48, sub_1A44FA394, MEMORY[0x1E6981790]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D06280(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A44FD844(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    sub_1A44F9F70();
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

void sub_1A3D06454(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A44FD844(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    v11(v12, a2, a2, v10);
    return;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return;
  }

  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  sub_1A44F9F70();
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[10];

  v17(v18, a2, a2, v16);
}

uint64_t sub_1A3D06628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3D06714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1A3D06804(uint64_t a1, uint64_t a2)
{
  sub_1A44F4FF8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D068FC()
{
  sub_1A44FD19C();
  sub_1A3F17950(255);
  sub_1A44FCFF8();
  sub_1A44FA2C8(255, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8, MEMORY[0x1E69E6720]);
  sub_1A3C7A2E0(&qword_1EB13CBF0, sub_1A44FCFF8);
  sub_1A44FD29C();
  swift_getOpaqueTypeConformance2();
  sub_1A44FD63C(&qword_1EB125A10, sub_1A3F17950, sub_1A44FD6AC);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D06A88()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A3D06B04()
{
  swift_getAssociatedTypeWitness();
  sub_1A44FFE88();
  sub_1A5249754();
  sub_1A5249754();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D06C38()
{
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D06D38()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D06D70()
{
  v1 = (type metadata accessor for LemonadeGenerativeMemoriesConfiguration() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[11];
  v4 = sub_1A5244854();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3D06E78()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D06EB0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D06EF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D06F40()
{
  v1 = sub_1A5244664();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D0701C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5244664();
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

uint64_t sub_1A3D070DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5244664();
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

uint64_t sub_1A3D071B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D07208()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D0726C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D072AC()
{
  v1 = sub_1A5244854();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D0739C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D073EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D07470()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D074A8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D07530(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A45341CC(0, &qword_1EB122228, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697C880]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D0760C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A45341CC(0, &qword_1EB122228, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697C880]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D076E0(uint64_t a1)
{
  sub_1A4534DD0(0, &qword_1EB123E78, sub_1A45345C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D0776C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D077A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D077E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A4545FE0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A4545FE0(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1A3D0796C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1A4545FE0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A4545FE0(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D07AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524A274();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A3D07BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A524A274();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1A3D07D0C(uint64_t a1, uint64_t a2)
{
  sub_1A4545AE0(0, &unk_1EB13D140, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D07D8C(uint64_t a1)
{
  sub_1A4545AE0(0, &unk_1EB13D140, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D07E04(uint64_t a1, uint64_t a2)
{
  sub_1A453C280(0, &qword_1EB123638, sub_1A453C304);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D07ED8()
{
  sub_1A4546E88();
  sub_1A4546F3C();
  sub_1A4547040(&qword_1EB13D1E8, sub_1A4546F3C);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A5248484();
  sub_1A5249754();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D080C8()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeSheetContent();
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  sub_1A45484B4(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v0 + v3 + *(v2 + 36), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D0824C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D08294()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D082CC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D08304()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D0834C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  sub_1A4554CD8(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[21];
    goto LABEL_9;
  }

  sub_1A4554CD8(0, &qword_1EB13D278, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E697DA80]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[24]];

  return v16(v17, a2, v15);
}

char *sub_1A3D08548(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1A4554CD8(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[21];
    goto LABEL_7;
  }

  sub_1A4554CD8(0, &qword_1EB13D278, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E697DA80]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[24]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A3D08744()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D0877C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D087D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D08810()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D08848()
{

  return swift_deallocObject();
}

__n128 sub_1A3D08894(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3D088B0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D088E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D0893C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D08974()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D089B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A45586C8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
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
      sub_1A45586C8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1A3D08B34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A45586C8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
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
      sub_1A45586C8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D08CDC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A456D9C8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1A456D9C8(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1A3D08E48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A456D9C8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    sub_1A456D9C8(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[10] + 8) = (a2 - 1);
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1A3D08FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52407E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    sub_1A4074924();
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 32);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1A3D090E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A52407E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    sub_1A4074924();
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1A3D09250()
{
  sub_1A4573D18(255);
  sub_1A5249764();
  sub_1A4574660();
  sub_1A4575088(&qword_1EB122360, MEMORY[0x1E697C658]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D092F8(uint64_t a1, uint64_t a2)
{
  sub_1A4575140(0, &qword_1EB13D948, sub_1A4574398, sub_1A3E42C88, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D093B4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4575CFC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A4575CFC(0, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3D09538(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4575CFC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A4575CFC(0, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D09720()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D09758()
{
  type metadata accessor for LemonadeNavigationDestination();
  sub_1A457F5CC(255, &qword_1EB1241B0, type metadata accessor for LemonadeNavigationDestinationView, type metadata accessor for NavigationVisibilityModifier, MEMORY[0x1E697E830]);
  sub_1A3C29B34(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination);
  sub_1A457B6BC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStackOrVStack();
  sub_1A3D639BC(255);
  sub_1A5248804();
  type metadata accessor for LemonadeNavigationContext(255);
  sub_1A457ECB4(255, &qword_1EB128468, sub_1A457B820);
  swift_getWitnessTable();
  sub_1A3C29B34(&qword_1EB127950, sub_1A3D639BC);
  swift_getWitnessTable();
  sub_1A3C29B34(&qword_1EB129D48, type metadata accessor for LemonadeNavigationContext);
  sub_1A457B848();
  swift_getOpaqueTypeMetadata2();
  sub_1A457ECB4(255, &qword_1EB1288B0, sub_1A457B99C);
  swift_getOpaqueTypeConformance2();
  sub_1A457B9F4();
  sub_1A457BA48();
  swift_getOpaqueTypeMetadata2();
  sub_1A457B820(255);
  swift_getOpaqueTypeConformance2();
  sub_1A457B8EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D09AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeNavigationDestination();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3D09B9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LemonadeNavigationDestination();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3D09C54(uint64_t a1, uint64_t a2)
{
  sub_1A457EC8C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D09CB8(uint64_t a1)
{
  sub_1A457EC8C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D09D1C()
{
  sub_1A44F54B0(255);
  sub_1A5248834();
  sub_1A524B894();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D09E1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D09ED0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D09F10()
{
  sub_1A3D35BAC(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A3D09F5C()
{

  sub_1A3D35BAC(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_1A3D09FF8(uint64_t a1)
{
  sub_1A4581B24(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D0A084()
{
  sub_1A458A704(255, &qword_1EB13DD60, sub_1A458A788, sub_1A426C988);
  v0 = MEMORY[0x1E697D670];
  sub_1A458AAF8(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  sub_1A458AB4C();
  sub_1A458A984(&qword_1EB127490, &qword_1EB127480, v0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D0A1AC()
{
  type metadata accessor for LemonadeScrollActionHandler();
  sub_1A5248804();
  sub_1A458C470();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D0A218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52488B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3D0A2D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A52488B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3D0A394()
{
  v1 = (type metadata accessor for LemonadeScrollActionHandler() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1A52488B4();
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v2 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_1A3D0A47C()
{
  sub_1A458C924();
  sub_1A458CBBC(&qword_1EB121848, sub_1A458C924);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D0A51C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_1A459C4E8(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  sub_1A459C4E8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  sub_1A459C4E8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = &a1[a3[12]];

  return v17(v18, a2, v16);
}

char *sub_1A3D0A790(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A459C4E8(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  sub_1A459C4E8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  sub_1A459C4E8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = &v5[a4[12]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1A3D0AA04()
{
  sub_1A45980BC();
  sub_1A3C48B3C(255, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
  sub_1A459C77C(&qword_1EB13DFF8, sub_1A45980BC);
  sub_1A4599E4C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D0AB74()
{
  v1 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for LemonadeShelfItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v1[6];
  sub_1A459C4E8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5247E04();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v3 + v6;
  sub_1A3C53AEC(*(v7 + v1[7]), *(v7 + v1[7] + 8));
  v11 = v1[8];
  sub_1A459C4E8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  else
  {
  }

  v13 = v2 + v10;
  v14 = v1[9];
  sub_1A459C4E8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1A52486A4();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
  }

  else
  {
  }

  v16 = v13 & ~v6;

  v17 = v7 + v1[12];
  if (!(*(v5 + 48))(v17, 1, v4))
  {
    v18 = v17 + *(v4 + 20);
    type metadata accessor for LemonadeShelfItem.BackingItem(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          sub_1A3C53AEC(*(v18 + 56), *(v18 + 64));
          sub_1A3C53AEC(*(v18 + 72), *(v18 + 80));
          break;
        case 1u:

          break;
        case 2u:
        case 4u:
        case 6u:
        case 0xEu:
        case 0x12u:
        case 0x13u:
        case 0x14u:

          v19 = *(v18 + 24);
          goto LABEL_78;
        case 3u:

          sub_1A3C4AFFC();
          v18 += *(v23 + 40);

          v21 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider() + 28);
          goto LABEL_35;
        case 5u:

          v19 = *(v18 + 32);
          goto LABEL_78;
        case 7u:

          swift_unknownObjectRelease();
          break;
        case 8u:

          v18 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
          v22 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
          goto LABEL_34;
        case 9u:

          v151 = type metadata accessor for LemonadeICloudLinksFeature();
          v33 = (v18 + *(v151 + 20));

          v34 = type metadata accessor for LemonadeICloudLinksShelfProvider();
          v155 = *(v34 + 24);
          v165 = v34;
          v35 = sub_1A5243334();
          (*(*(v35 - 8) + 8))(v33 + v155, v35);
          v145 = v33;
          v36 = v33 + *(v165 + 28);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          LODWORD(v155) = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v36, *(v36 + 1), v36[16]);
          if (v155 == 1)
          {
            sub_1A3C4208C(*(v36 + 3), *(v36 + 4), v36[40]);
            sub_1A3C47A98();
            v156 = *(v37 + 64);
            v38 = sub_1A5242C84();
            (*(*(v38 - 8) + 8))(&v36[v156], v38);
          }

          else
          {
            if (*(v36 + 5) >= 3uLL)
            {
            }

            if (*(v36 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v36 + 9), *(v36 + 10), v36[88]);
          }

          v160 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v61 = sub_1A5241F84();
          v140 = *(v61 - 8);
          v143 = v61;
          if (!(*(v140 + 48))(&v36[v160], 1))
          {
            (*(v140 + 8))(&v36[v160], v143);
          }

          v62 = *(v165 + 32);
          v63 = sub_1A5244094();
          (*(*(v63 - 8) + 8))(v145 + v62, v63);
          v60 = *(v151 + 28);
          goto LABEL_77;
        case 0xAu:

          v19 = *(v18 + 56);
          goto LABEL_78;
        case 0xBu:

          v24 = (v18 + *(type metadata accessor for LemonadeSharedWithYouFeature() + 20));

          v25 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
          v163 = *(v25 + 24);
          v26 = sub_1A5243334();
          (*(*(v26 - 8) + 8))(v24 + v163, v26);
          v27 = v24 + *(v25 + 28);
          goto LABEL_36;
        case 0xCu:

          v20 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
          v21 = v20 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
          goto LABEL_35;
        case 0xDu:

          v154 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
          v28 = (v18 + *(v154 + 20));

          v164 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
          v149 = v164[6];
          v29 = sub_1A5243334();
          (*(*(v29 - 8) + 8))(v28 + v149, v29);
          v150 = v28;
          v30 = v28 + v164[7];
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v30, *(v30 + 1), v30[16]);
          v144 = v30;
          if (EnumCaseMultiPayload == 1)
          {
            sub_1A3C4208C(*(v30 + 3), *(v30 + 4), v30[40]);
            sub_1A3C47A98();
            v142 = *(v31 + 64);
            v32 = sub_1A5242C84();
            (*(*(v32 - 8) + 8))(&v30[v142], v32);
          }

          else
          {
            if (*(v30 + 5) >= 3uLL)
            {
            }

            if (*(v30 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v30 + 9), *(v30 + 10), v30[88]);
          }

          v57 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v58 = sub_1A5241F84();
          v138 = *(v58 - 8);
          v139 = v58;
          if (!(*(v138 + 48))(&v144[v57], 1))
          {
            (*(v138 + 8))(&v144[v57], v139);
          }

          v146 = v164[8];
          v59 = sub_1A5244094();
          (*(*(v59 - 8) + 8))(v150 + v146, v59);

          v60 = *(v154 + 24);
          goto LABEL_77;
        case 0xFu:

          v39 = (v18 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

          v157 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
          v166 = v39;
          v40 = v39 + *(v157 + 28);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          LODWORD(v39) = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v40, *(v40 + 1), v40[16]);
          if (v39 == 1)
          {
            sub_1A3C4208C(*(v40 + 3), *(v40 + 4), v40[40]);
            sub_1A3C47A98();
            v42 = *(v41 + 64);
            v43 = sub_1A5242C84();
            (*(*(v43 - 8) + 8))(&v40[v42], v43);
          }

          else
          {
            if (*(v40 + 5) >= 3uLL)
            {
            }

            if (*(v40 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v40 + 9), *(v40 + 10), v40[88]);
          }

          v64 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v65 = sub_1A5241F84();
          v147 = *(v65 - 8);
          v152 = v64;
          v66 = &v40[v64];
          v67 = v65;
          if (!(*(v147 + 48))(v66, 1, v65))
          {
            (*(v147 + 8))(&v40[v152], v67);
          }

          v19 = *(v166 + *(v157 + 32));
          goto LABEL_78;
        case 0x10u:

          v18 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
          v22 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
          goto LABEL_34;
        case 0x11u:

          v18 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

          v22 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
          goto LABEL_34;
        case 0x15u:

          v18 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
          v22 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_34:
          v21 = *(v22 + 24);
LABEL_35:
          v27 = (v18 + v21);
LABEL_36:
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v49 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v27, *(v27 + 1), v27[16]);
          if (v49 == 1)
          {
            sub_1A3C4208C(*(v27 + 3), *(v27 + 4), v27[40]);
            sub_1A3C47A98();
            v51 = *(v50 + 64);
            v52 = sub_1A5242C84();
            (*(*(v52 - 8) + 8))(&v27[v51], v52);
          }

          else
          {
            if (*(v27 + 5) >= 3uLL)
            {
            }

            if (*(v27 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v27 + 9), *(v27 + 10), v27[88]);
          }

          v53 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v54 = sub_1A5241F84();
          v159 = *(v54 - 8);
          v168 = v53;
          v55 = &v27[v53];
          v56 = v54;
          if (!(*(v159 + 48))(v55, 1, v54))
          {
            (*(v159 + 8))(&v27[v168], v56);
          }

          break;
        case 0x16u:

          v44 = v18 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20);
          v158 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
          v167 = v44;
          v45 = v44 + *(v158 + 20);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          LODWORD(v44) = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v45, *(v45 + 8), *(v45 + 16));
          if (v44 == 1)
          {
            sub_1A3C4208C(*(v45 + 24), *(v45 + 32), *(v45 + 40));
            sub_1A3C47A98();
            v47 = *(v46 + 64);
            v48 = sub_1A5242C84();
            (*(*(v48 - 8) + 8))(v45 + v47, v48);
          }

          else
          {
            if (*(v45 + 40) >= 3uLL)
            {
            }

            if (*(v45 + 56) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v45 + 72), *(v45 + 80), *(v45 + 88));
          }

          v68 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v69 = sub_1A5241F84();
          v148 = *(v69 - 8);
          v153 = v68;
          v70 = v45 + v68;
          v71 = v69;
          if (!(*(v148 + 48))(v70, 1, v69))
          {
            (*(v148 + 8))(v45 + v153, v71);
          }

          v18 = v167;

          v60 = *(v158 + 32);
LABEL_77:
          v19 = *(v18 + v60);
LABEL_78:

          break;
        default:
          break;
      }
    }
  }

  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);

  v72 = v0 + v16 + *(v4 + 20);
  type metadata accessor for LemonadeShelfItem.BackingItem(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        sub_1A3C53AEC(*(v72 + 56), *(v72 + 64));
        sub_1A3C53AEC(*(v72 + 72), *(v72 + 80));
        break;
      case 1u:

        break;
      case 2u:
      case 4u:
      case 6u:
      case 0xEu:
      case 0x12u:
      case 0x13u:
      case 0x14u:

        v73 = *(v72 + 24);
        goto LABEL_145;
      case 3u:

        sub_1A3C4AFFC();
        v72 += *(v77 + 40);

        v75 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider() + 28);
        goto LABEL_103;
      case 5u:

        v73 = *(v72 + 32);
        goto LABEL_145;
      case 7u:

        swift_unknownObjectRelease();
        break;
      case 8u:

        v72 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
        v76 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
        goto LABEL_102;
      case 9u:

        v170 = type metadata accessor for LemonadeICloudLinksFeature();
        v93 = (v72 + *(v170 + 20));

        v94 = type metadata accessor for LemonadeICloudLinksShelfProvider();
        v95 = *(v94 + 24);
        v96 = sub_1A5243334();
        (*(*(v96 - 8) + 8))(v93 + v95, v96);
        v162 = v94;
        v97 = v93 + *(v94 + 28);
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v98 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v97, *(v97 + 1), v97[16]);
        if (v98 == 1)
        {
          sub_1A3C4208C(*(v97 + 3), *(v97 + 4), v97[40]);
          sub_1A3C47A98();
          v100 = *(v99 + 64);
          v101 = sub_1A5242C84();
          (*(*(v101 - 8) + 8))(&v97[v100], v101);
        }

        else
        {
          if (*(v97 + 5) >= 3uLL)
          {
          }

          if (*(v97 + 7) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v97 + 9), *(v97 + 10), v97[88]);
        }

        v126 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v127 = sub_1A5241F84();
        v128 = *(v127 - 8);
        if (!(*(v128 + 48))(&v97[v126], 1, v127))
        {
          (*(v128 + 8))(&v97[v126], v127);
        }

        v129 = *(v162 + 32);
        v130 = sub_1A5244094();
        (*(*(v130 - 8) + 8))(v93 + v129, v130);
        v73 = *(v72 + *(v170 + 28));
        goto LABEL_145;
      case 0xAu:

        v73 = *(v72 + 56);
        goto LABEL_145;
      case 0xBu:

        v78 = (v72 + *(type metadata accessor for LemonadeSharedWithYouFeature() + 20));

        v79 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
        v80 = *(v79 + 24);
        v81 = sub_1A5243334();
        (*(*(v81 - 8) + 8))(v78 + v80, v81);
        v82 = v78 + *(v79 + 28);
        goto LABEL_104;
      case 0xCu:

        v74 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
        v75 = v74 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
        goto LABEL_103;
      case 0xDu:

        v83 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
        v84 = (v72 + *(v83 + 20));

        v85 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
        v86 = *(v85 + 24);
        v87 = sub_1A5243334();
        (*(*(v87 - 8) + 8))(v84 + v86, v87);
        v161 = v85;
        v88 = v84 + *(v85 + 28);
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v89 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v88, *(v88 + 1), v88[16]);
        v169 = v83;
        if (v89 == 1)
        {
          sub_1A3C4208C(*(v88 + 3), *(v88 + 4), v88[40]);
          sub_1A3C47A98();
          v91 = *(v90 + 64);
          v92 = sub_1A5242C84();
          (*(*(v92 - 8) + 8))(&v88[v91], v92);
        }

        else
        {
          if (*(v88 + 5) >= 3uLL)
          {
          }

          if (*(v88 + 7) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v88 + 9), *(v88 + 10), v88[88]);
        }

        v121 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v122 = sub_1A5241F84();
        v123 = *(v122 - 8);
        if (!(*(v123 + 48))(&v88[v121], 1, v122))
        {
          (*(v123 + 8))(&v88[v121], v122);
        }

        v124 = *(v161 + 32);
        v125 = sub_1A5244094();
        (*(*(v125 - 8) + 8))(v84 + v124, v125);

        v73 = *(v72 + *(v169 + 24));
        goto LABEL_145;
      case 0xFu:

        v102 = (v72 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

        v103 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
        v104 = v102 + v103[7];
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v105 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v104, *(v104 + 1), v104[16]);
        if (v105 == 1)
        {
          sub_1A3C4208C(*(v104 + 3), *(v104 + 4), v104[40]);
          sub_1A3C47A98();
          v107 = *(v106 + 64);
          v108 = sub_1A5242C84();
          (*(*(v108 - 8) + 8))(&v104[v107], v108);
        }

        else
        {
          if (*(v104 + 5) >= 3uLL)
          {
          }

          if (*(v104 + 7) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v104 + 9), *(v104 + 10), v104[88]);
        }

        v131 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v132 = sub_1A5241F84();
        v133 = *(v132 - 8);
        if (!(*(v133 + 48))(&v104[v131], 1, v132))
        {
          (*(v133 + 8))(&v104[v131], v132);
        }

        goto LABEL_144;
      case 0x10u:

        v72 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
        v76 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
        goto LABEL_102;
      case 0x11u:

        v72 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

        v76 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
        goto LABEL_102;
      case 0x15u:

        v72 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
        v76 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_102:
        v75 = *(v76 + 24);
LABEL_103:
        v82 = (v72 + v75);
LABEL_104:
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v114 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v82, *(v82 + 1), v82[16]);
        if (v114 == 1)
        {
          sub_1A3C4208C(*(v82 + 3), *(v82 + 4), v82[40]);
          sub_1A3C47A98();
          v116 = *(v115 + 64);
          v117 = sub_1A5242C84();
          (*(*(v117 - 8) + 8))(&v82[v116], v117);
        }

        else
        {
          if (*(v82 + 5) >= 3uLL)
          {
          }

          if (*(v82 + 7) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v82 + 9), *(v82 + 10), v82[88]);
        }

        v118 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v119 = sub_1A5241F84();
        v120 = *(v119 - 8);
        if (!(*(v120 + 48))(&v82[v118], 1, v119))
        {
          (*(v120 + 8))(&v82[v118], v119);
        }

        break;
      case 0x16u:

        v102 = (v72 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20));
        v103 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
        v109 = v102 + v103[5];
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v110 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v109, *(v109 + 1), v109[16]);
        if (v110 == 1)
        {
          sub_1A3C4208C(*(v109 + 3), *(v109 + 4), v109[40]);
          sub_1A3C47A98();
          v112 = *(v111 + 64);
          v113 = sub_1A5242C84();
          (*(*(v113 - 8) + 8))(&v109[v112], v113);
        }

        else
        {
          if (*(v109 + 5) >= 3uLL)
          {
          }

          if (*(v109 + 7) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v109 + 9), *(v109 + 10), v109[88]);
        }

        v134 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v135 = sub_1A5241F84();
        v136 = *(v135 - 8);
        if (!(*(v136 + 48))(&v109[v134], 1, v135))
        {
          (*(v136 + 8))(&v109[v134], v135);
        }

LABEL_144:
        v73 = *(v102 + v103[8]);
LABEL_145:

        break;
      default:
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D0C678()
{
  v1 = type metadata accessor for LemonadeShelfItem(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v164 = v0;
  v163 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v163) & ~v163;
  v7 = v0 + *(v1 + 20) + v3;
  type metadata accessor for LemonadeShelfItem.BackingItem(0);
  v165 = v6;
  if (!swift_getEnumCaseMultiPayload())
  {
    type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        sub_1A3C53AEC(*(v7 + 56), *(v7 + 64));
        sub_1A3C53AEC(*(v7 + 72), *(v7 + 80));
        break;
      case 1u:

        break;
      case 2u:
      case 4u:
      case 6u:
      case 0xEu:
      case 0x12u:
      case 0x13u:
      case 0x14u:

        break;
      case 3u:

        sub_1A3C4AFFC();
        v7 += *(v21 + 40);

        v19 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider() + 28);
        goto LABEL_41;
      case 5u:

        break;
      case 7u:

        swift_unknownObjectRelease();
        break;
      case 8u:

        v7 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
        v20 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
        goto LABEL_40;
      case 9u:

        v158 = type metadata accessor for LemonadeICloudLinksFeature();
        v38 = (v7 + *(v158 + 20));

        v39 = type metadata accessor for LemonadeICloudLinksShelfProvider();
        v40 = *(v39 + 24);
        v41 = sub_1A5243334();
        (*(*(v41 - 8) + 8))(v38 + v40, v41);
        v156 = v39;
        v42 = *(v39 + 28);
        v43 = v38;
        v44 = v38 + v42;
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v44, *(v44 + 1), v44[16]);
        if (EnumCaseMultiPayload == 1)
        {
          sub_1A3C4208C(*(v44 + 3), *(v44 + 4), v44[40]);
          sub_1A3C47A98();
          v47 = *(v46 + 64);
          v48 = sub_1A5242C84();
          (*(*(v48 - 8) + 8))(&v44[v47], v48);
        }

        else
        {
          if (*(v44 + 5) >= 3uLL)
          {
          }

          if (*(v44 + 7) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v44 + 9), *(v44 + 10), v44[88]);
        }

        v77 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v78 = sub_1A5241F84();
        v79 = *(v78 - 8);
        if (!(*(v79 + 48))(&v44[v77], 1, v78))
        {
          (*(v79 + 8))(&v44[v77], v78);
        }

        v80 = *(v156 + 32);
        v81 = sub_1A5244094();
        (*(*(v81 - 8) + 8))(v43 + v80, v81);
        v76 = *(v158 + 28);
        goto LABEL_67;
      case 0xAu:

        break;
      case 0xBu:

        v22 = (v7 + *(type metadata accessor for LemonadeSharedWithYouFeature() + 20));

        v23 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
        v24 = *(v23 + 24);
        v25 = sub_1A5243334();
        (*(*(v25 - 8) + 8))(v22 + v24, v25);
        v26 = v22 + *(v23 + 28);
        goto LABEL_42;
      case 0xCu:

        v18 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
        v19 = v18 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
        goto LABEL_41;
      case 0xDu:

        v27 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
        v28 = (v7 + *(v27 + 20));

        v29 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
        v30 = *(v29 + 24);
        v31 = sub_1A5243334();
        (*(*(v31 - 8) + 8))(v28 + v30, v31);
        v155 = v29;
        v32 = v28 + *(v29 + 28);
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v33 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v32, *(v32 + 1), v32[16]);
        v157 = v28;
        if (v33 == 1)
        {
          v34 = v27;
          sub_1A3C4208C(*(v32 + 3), *(v32 + 4), v32[40]);
          sub_1A3C47A98();
          v36 = *(v35 + 64);
          v37 = sub_1A5242C84();
          (*(*(v37 - 8) + 8))(&v32[v36], v37);
        }

        else
        {
          if (*(v32 + 5) >= 3uLL)
          {
          }

          if (*(v32 + 7) >= 3uLL)
          {
          }

          v34 = v27;
          sub_1A3C4208C(*(v32 + 9), *(v32 + 10), v32[88]);
        }

        v71 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v72 = sub_1A5241F84();
        v73 = *(v72 - 8);
        if (!(*(v73 + 48))(&v32[v71], 1, v72))
        {
          (*(v73 + 8))(&v32[v71], v72);
        }

        v74 = *(v155 + 32);
        v75 = sub_1A5244094();
        (*(*(v75 - 8) + 8))(v157 + v74, v75);

        v76 = *(v34 + 24);
LABEL_67:

        v6 = v165;
        break;
      case 0xFu:

        v49 = (v7 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

        v50 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
        v51 = v49 + *(v50 + 28);
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v52 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v51, *(v51 + 1), v51[16]);
        v159 = v50;
        if (v52 == 1)
        {
          v53 = v6;
          sub_1A3C4208C(*(v51 + 3), *(v51 + 4), v51[40]);
          sub_1A3C47A98();
          v55 = *(v54 + 64);
          v56 = sub_1A5242C84();
          (*(*(v56 - 8) + 8))(&v51[v55], v56);
        }

        else
        {
          if (*(v51 + 5) >= 3uLL)
          {
          }

          if (*(v51 + 7) >= 3uLL)
          {
          }

          v53 = v6;
          sub_1A3C4208C(*(v51 + 9), *(v51 + 10), v51[88]);
        }

        v82 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v83 = sub_1A5241F84();
        v84 = *(v83 - 8);
        if (!(*(v84 + 48))(&v51[v82], 1, v83))
        {
          (*(v84 + 8))(&v51[v82], v83);
        }

        v85 = *(v49 + *(v159 + 32));
        goto LABEL_84;
      case 0x10u:

        v7 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
        v20 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
        goto LABEL_40;
      case 0x11u:

        v7 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

        v20 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
        goto LABEL_40;
      case 0x15u:

        v7 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
        v20 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_40:
        v19 = *(v20 + 24);
LABEL_41:
        v26 = (v7 + v19);
LABEL_42:
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v64 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v26, *(v26 + 1), v26[16]);
        if (v64 == 1)
        {
          sub_1A3C4208C(*(v26 + 3), *(v26 + 4), v26[40]);
          sub_1A3C47A98();
          v66 = *(v65 + 64);
          v67 = sub_1A5242C84();
          (*(*(v67 - 8) + 8))(&v26[v66], v67);
        }

        else
        {
          if (*(v26 + 5) >= 3uLL)
          {
          }

          if (*(v26 + 7) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v26 + 9), *(v26 + 10), v26[88]);
        }

        v68 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v69 = sub_1A5241F84();
        v70 = *(v69 - 8);
        if (!(*(v70 + 48))(&v26[v68], 1, v69))
        {
          (*(v70 + 8))(&v26[v68], v69);
        }

        break;
      case 0x16u:

        v57 = v7 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20);
        v58 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
        v160 = v57;
        v59 = v57 + *(v58 + 20);
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v60 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v59, *(v59 + 8), *(v59 + 16));
        if (v60 == 1)
        {
          v53 = v6;
          sub_1A3C4208C(*(v59 + 24), *(v59 + 32), *(v59 + 40));
          sub_1A3C47A98();
          v62 = *(v61 + 64);
          v63 = sub_1A5242C84();
          (*(*(v63 - 8) + 8))(v59 + v62, v63);
        }

        else
        {
          if (*(v59 + 40) >= 3uLL)
          {
          }

          if (*(v59 + 56) >= 3uLL)
          {
          }

          v53 = v6;
          sub_1A3C4208C(*(v59 + 72), *(v59 + 80), *(v59 + 88));
        }

        v86 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v87 = sub_1A5241F84();
        v88 = *(v87 - 8);
        if (!(*(v88 + 48))(v59 + v86, 1, v87))
        {
          (*(v88 + 8))(v59 + v86, v87);
        }

        v85 = *(v160 + *(v58 + 32));
LABEL_84:

        v6 = v53;
        break;
      default:
        break;
    }
  }

  v8 = v164 + v6;

  v9 = v5[6];
  sub_1A459C4E8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5247E04();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v8 + v5[7]), *(v8 + v5[7] + 8));
  v11 = v5[8];
  sub_1A459C4E8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v5[9];
  sub_1A459C4E8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A52486A4();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
  }

  v15 = v8 + v5[12];
  if (!(*(v2 + 48))(v15, 1, v1))
  {
    v16 = v15 + *(v1 + 20);
    if (!swift_getEnumCaseMultiPayload())
    {
      type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          sub_1A3C53AEC(*(v16 + 56), *(v16 + 64));
          sub_1A3C53AEC(*(v16 + 72), *(v16 + 80));
          break;
        case 1u:

          break;
        case 2u:
        case 4u:
        case 6u:
        case 0xEu:
        case 0x12u:
        case 0x13u:
        case 0x14u:

          break;
        case 3u:

          sub_1A3C4AFFC();
          v16 += *(v92 + 40);

          v90 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider() + 28);
          goto LABEL_106;
        case 5u:

          break;
        case 7u:

          swift_unknownObjectRelease();
          break;
        case 8u:

          v16 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
          v91 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
          goto LABEL_105;
        case 9u:

          v109 = type metadata accessor for LemonadeICloudLinksFeature();
          v110 = (v16 + *(v109 + 20));

          v111 = type metadata accessor for LemonadeICloudLinksShelfProvider();
          v112 = *(v111 + 24);
          v113 = sub_1A5243334();
          (*(*(v113 - 8) + 8))(v110 + v112, v113);
          v162 = v111;
          v114 = v110 + *(v111 + 28);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v115 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v114, *(v114 + 1), v114[16]);
          if (v115 == 1)
          {
            sub_1A3C4208C(*(v114 + 3), *(v114 + 4), v114[40]);
            sub_1A3C47A98();
            v117 = *(v116 + 64);
            v118 = sub_1A5242C84();
            (*(*(v118 - 8) + 8))(&v114[v117], v118);
          }

          else
          {
            if (*(v114 + 5) >= 3uLL)
            {
            }

            if (*(v114 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v114 + 9), *(v114 + 10), v114[88]);
          }

          v144 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v145 = sub_1A5241F84();
          v146 = *(v145 - 8);
          if (!(*(v146 + 48))(&v114[v144], 1, v145))
          {
            (*(v146 + 8))(&v114[v144], v145);
          }

          v147 = *(v162 + 32);
          v148 = sub_1A5244094();
          (*(*(v148 - 8) + 8))(v110 + v147, v148);
          v143 = *(v16 + *(v109 + 28));
          goto LABEL_148;
        case 0xAu:

          break;
        case 0xBu:

          v93 = (v16 + *(type metadata accessor for LemonadeSharedWithYouFeature() + 20));

          v94 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
          v95 = *(v94 + 24);
          v96 = sub_1A5243334();
          (*(*(v96 - 8) + 8))(v93 + v95, v96);
          v97 = v93 + *(v94 + 28);
          goto LABEL_107;
        case 0xCu:

          v89 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
          v90 = v89 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
          goto LABEL_106;
        case 0xDu:

          v98 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
          v99 = (v16 + *(v98 + 20));

          v100 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
          v101 = *(v100 + 24);
          v102 = sub_1A5243334();
          (*(*(v102 - 8) + 8))(v99 + v101, v102);
          v103 = v99 + *(v100 + 28);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v104 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v103, *(v103 + 1), v103[16]);
          v161 = v98;
          if (v104 == 1)
          {
            v105 = v100;
            sub_1A3C4208C(*(v103 + 3), *(v103 + 4), v103[40]);
            sub_1A3C47A98();
            v107 = *(v106 + 64);
            v108 = sub_1A5242C84();
            (*(*(v108 - 8) + 8))(&v103[v107], v108);
          }

          else
          {
            if (*(v103 + 5) >= 3uLL)
            {
            }

            if (*(v103 + 7) >= 3uLL)
            {
            }

            v105 = v100;
            sub_1A3C4208C(*(v103 + 9), *(v103 + 10), v103[88]);
          }

          v138 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v139 = sub_1A5241F84();
          v140 = *(v139 - 8);
          if (!(*(v140 + 48))(&v103[v138], 1, v139))
          {
            (*(v140 + 8))(&v103[v138], v139);
          }

          v141 = *(v105 + 32);
          v142 = sub_1A5244094();
          (*(*(v142 - 8) + 8))(v99 + v141, v142);

          v143 = *(v16 + *(v161 + 24));
          goto LABEL_148;
        case 0xFu:

          v119 = (v16 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

          v120 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
          v121 = v119 + v120[7];
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v122 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v121, *(v121 + 1), v121[16]);
          if (v122 == 1)
          {
            sub_1A3C4208C(*(v121 + 3), *(v121 + 4), v121[40]);
            sub_1A3C47A98();
            v124 = *(v123 + 64);
            v125 = sub_1A5242C84();
            (*(*(v125 - 8) + 8))(&v121[v124], v125);
          }

          else
          {
            if (*(v121 + 5) >= 3uLL)
            {
            }

            if (*(v121 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v121 + 9), *(v121 + 10), v121[88]);
          }

          v149 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v150 = sub_1A5241F84();
          v151 = *(v150 - 8);
          if (!(*(v151 + 48))(&v121[v149], 1, v150))
          {
            (*(v151 + 8))(&v121[v149], v150);
          }

          goto LABEL_147;
        case 0x10u:

          v16 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
          v91 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
          goto LABEL_105;
        case 0x11u:

          v16 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

          v91 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
          goto LABEL_105;
        case 0x15u:

          v16 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
          v91 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_105:
          v90 = *(v91 + 24);
LABEL_106:
          v97 = (v16 + v90);
LABEL_107:
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v131 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v97, *(v97 + 1), v97[16]);
          if (v131 == 1)
          {
            sub_1A3C4208C(*(v97 + 3), *(v97 + 4), v97[40]);
            sub_1A3C47A98();
            v133 = *(v132 + 64);
            v134 = sub_1A5242C84();
            (*(*(v134 - 8) + 8))(&v97[v133], v134);
          }

          else
          {
            if (*(v97 + 5) >= 3uLL)
            {
            }

            if (*(v97 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v97 + 9), *(v97 + 10), v97[88]);
          }

          v135 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v136 = sub_1A5241F84();
          v137 = *(v136 - 8);
          if (!(*(v137 + 48))(&v97[v135], 1, v136))
          {
            (*(v137 + 8))(&v97[v135], v136);
          }

          break;
        case 0x16u:

          v119 = (v16 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20));
          v120 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
          v126 = v119 + v120[5];
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v127 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v126, *(v126 + 1), v126[16]);
          if (v127 == 1)
          {
            sub_1A3C4208C(*(v126 + 3), *(v126 + 4), v126[40]);
            sub_1A3C47A98();
            v129 = *(v128 + 64);
            v130 = sub_1A5242C84();
            (*(*(v130 - 8) + 8))(&v126[v129], v130);
          }

          else
          {
            if (*(v126 + 5) >= 3uLL)
            {
            }

            if (*(v126 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v126 + 9), *(v126 + 10), v126[88]);
          }

          v152 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v153 = sub_1A5241F84();
          v154 = *(v153 - 8);
          if (!(*(v154 + 48))(&v126[v152], 1, v153))
          {
            (*(v154 + 8))(&v126[v152], v153);
          }

LABEL_147:
          v143 = *(v119 + v120[8]);
LABEL_148:

          break;
        default:
          break;
      }
    }
  }

  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);

  return swift_deallocObject();
}

uint64_t sub_1A3D0E174(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeShelfItem(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A459C4E8(0, &qword_1EB13E050, sub_1A458D1B4, MEMORY[0x1E6981948]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3D0E2C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for LemonadeShelfItem(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A459C4E8(0, &qword_1EB13E050, sub_1A458D1B4, MEMORY[0x1E6981948]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D0E41C()
{
  v1 = type metadata accessor for DropViewDelegate(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  v4 = type metadata accessor for LemonadeShelfItem(0);
  v5 = v2 + v3 + *(v4 + 20);
  type metadata accessor for LemonadeShelfItem.BackingItem(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        sub_1A3C53AEC(*(v5 + 56), *(v5 + 64));
        sub_1A3C53AEC(*(v5 + 72), *(v5 + 80));
        break;
      case 1u:

        break;
      case 2u:
      case 4u:
      case 6u:
      case 0xEu:
      case 0x12u:
      case 0x13u:
      case 0x14u:

        break;
      case 3u:

        sub_1A3C4AFFC();
        v5 += *(v14 + 40);

        v12 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider() + 28);
        goto LABEL_29;
      case 5u:

        break;
      case 7u:

        swift_unknownObjectRelease();
        break;
      case 8u:

        v5 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
        v13 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
        goto LABEL_28;
      case 9u:

        v145 = type metadata accessor for LemonadeICloudLinksFeature();
        v29 = (v5 + *(v145 + 20));

        v30 = type metadata accessor for LemonadeICloudLinksShelfProvider();
        v31 = *(v30 + 24);
        v32 = sub_1A5243334();
        (*(*(v32 - 8) + 8))(v29 + v31, v32);
        v141 = v30;
        v143 = v29;
        v33 = v29 + *(v30 + 28);
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v33, *(v33 + 1), v33[16]);
        if (EnumCaseMultiPayload == 1)
        {
          sub_1A3C4208C(*(v33 + 3), *(v33 + 4), v33[40]);
          sub_1A3C47A98();
          v36 = *(v35 + 64);
          v37 = sub_1A5242C84();
          (*(*(v37 - 8) + 8))(&v33[v36], v37);
        }

        else
        {
          if (*(v33 + 5) >= 3uLL)
          {
          }

          if (*(v33 + 7) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v33 + 9), *(v33 + 10), v33[88]);
        }

        v65 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v66 = sub_1A5241F84();
        v67 = *(v66 - 8);
        if (!(*(v67 + 48))(&v33[v65], 1, v66))
        {
          (*(v67 + 8))(&v33[v65], v66);
        }

        v68 = *(v141 + 32);
        v69 = sub_1A5244094();
        (*(*(v69 - 8) + 8))(v143 + v68, v69);
        v64 = *(v5 + *(v145 + 28));
        goto LABEL_71;
      case 0xAu:

        break;
      case 0xBu:

        v15 = (v5 + *(type metadata accessor for LemonadeSharedWithYouFeature() + 20));

        v16 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
        v17 = *(v16 + 24);
        v18 = sub_1A5243334();
        (*(*(v18 - 8) + 8))(v15 + v17, v18);
        v19 = v15 + *(v16 + 28);
        goto LABEL_30;
      case 0xCu:

        v11 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
        v12 = v11 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
        goto LABEL_29;
      case 0xDu:

        v20 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
        v21 = (v5 + *(v20 + 20));

        v22 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
        v23 = *(v22 + 24);
        v24 = sub_1A5243334();
        (*(*(v24 - 8) + 8))(v21 + v23, v24);
        v140 = v22;
        v142 = v21;
        v25 = v21 + *(v22 + 28);
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        LODWORD(v22) = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v25, *(v25 + 1), v25[16]);
        v144 = v20;
        if (v22 == 1)
        {
          sub_1A3C4208C(*(v25 + 3), *(v25 + 4), v25[40]);
          sub_1A3C47A98();
          v27 = *(v26 + 64);
          v28 = sub_1A5242C84();
          (*(*(v28 - 8) + 8))(&v25[v27], v28);
        }

        else
        {
          if (*(v25 + 5) >= 3uLL)
          {
          }

          if (*(v25 + 7) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v25 + 9), *(v25 + 10), v25[88]);
        }

        v59 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v60 = sub_1A5241F84();
        v61 = *(v60 - 8);
        if (!(*(v61 + 48))(&v25[v59], 1, v60))
        {
          (*(v61 + 8))(&v25[v59], v60);
        }

        v62 = *(v140 + 32);
        v63 = sub_1A5244094();
        (*(*(v63 - 8) + 8))(v142 + v62, v63);

        v64 = *(v5 + *(v144 + 24));
        goto LABEL_71;
      case 0xFu:

        v38 = (v5 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

        v39 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
        v40 = v38 + *(v39 + 28);
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v41 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v40, *(v40 + 1), v40[16]);
        v146 = v39;
        if (v41 == 1)
        {
          sub_1A3C4208C(*(v40 + 3), *(v40 + 4), v40[40]);
          sub_1A3C47A98();
          v43 = *(v42 + 64);
          v44 = sub_1A5242C84();
          (*(*(v44 - 8) + 8))(&v40[v43], v44);
        }

        else
        {
          if (*(v40 + 5) >= 3uLL)
          {
          }

          if (*(v40 + 7) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v40 + 9), *(v40 + 10), v40[88]);
        }

        v70 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v71 = sub_1A5241F84();
        v72 = *(v71 - 8);
        if (!(*(v72 + 48))(&v40[v70], 1, v71))
        {
          (*(v72 + 8))(&v40[v70], v71);
        }

        v64 = *(v38 + *(v146 + 32));
        goto LABEL_71;
      case 0x10u:

        v5 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
        v13 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
        goto LABEL_28;
      case 0x11u:

        v5 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

        v13 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
        goto LABEL_28;
      case 0x15u:

        v5 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
        v13 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_28:
        v12 = *(v13 + 24);
LABEL_29:
        v19 = (v5 + v12);
LABEL_30:
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v52 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v19, *(v19 + 1), v19[16]);
        if (v52 == 1)
        {
          sub_1A3C4208C(*(v19 + 3), *(v19 + 4), v19[40]);
          sub_1A3C47A98();
          v54 = *(v53 + 64);
          v55 = sub_1A5242C84();
          (*(*(v55 - 8) + 8))(&v19[v54], v55);
        }

        else
        {
          if (*(v19 + 5) >= 3uLL)
          {
          }

          if (*(v19 + 7) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v19 + 9), *(v19 + 10), v19[88]);
        }

        v56 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v57 = sub_1A5241F84();
        v58 = *(v57 - 8);
        if (!(*(v58 + 48))(&v19[v56], 1, v57))
        {
          (*(v58 + 8))(&v19[v56], v57);
        }

        break;
      case 0x16u:

        v45 = v5 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20);
        v46 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
        v147 = v45;
        v47 = v45 + *(v46 + 20);
        type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
        v48 = swift_getEnumCaseMultiPayload();
        sub_1A3D6D890(*v47, *(v47 + 8), *(v47 + 16));
        if (v48 == 1)
        {
          sub_1A3C4208C(*(v47 + 24), *(v47 + 32), *(v47 + 40));
          sub_1A3C47A98();
          v50 = *(v49 + 64);
          v51 = sub_1A5242C84();
          (*(*(v51 - 8) + 8))(v47 + v50, v51);
        }

        else
        {
          if (*(v47 + 40) >= 3uLL)
          {
          }

          if (*(v47 + 56) >= 3uLL)
          {
          }

          sub_1A3C4208C(*(v47 + 72), *(v47 + 80), *(v47 + 88));
        }

        v73 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
        v74 = sub_1A5241F84();
        v75 = *(v74 - 8);
        if (!(*(v75 + 48))(v47 + v73, 1, v74))
        {
          (*(v75 + 8))(v47 + v73, v74);
        }

        v64 = *(v147 + *(v46 + 32));
LABEL_71:

        break;
      default:
        break;
    }
  }

  v6 = v2 + *(v1 + 24);

  sub_1A459C4E8(0, &qword_1EB13E050, sub_1A458D1B4, MEMORY[0x1E6981948]);
  v8 = v6 + *(v7 + 32);
  if (!(*(*(v4 - 8) + 48))(v8, 1, v4))
  {
    v9 = v8 + *(v4 + 20);
    if (!swift_getEnumCaseMultiPayload())
    {
      type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          sub_1A3C53AEC(*(v9 + 56), *(v9 + 64));
          sub_1A3C53AEC(*(v9 + 72), *(v9 + 80));
          break;
        case 1u:

          break;
        case 2u:
        case 4u:
        case 6u:
        case 0xEu:
        case 0x12u:
        case 0x13u:
        case 0x14u:

          v10 = *(v9 + 24);
          goto LABEL_136;
        case 3u:

          sub_1A3C4AFFC();
          v9 += *(v79 + 40);

          v77 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider() + 28);
          goto LABEL_93;
        case 5u:

          v10 = *(v9 + 32);
          goto LABEL_136;
        case 7u:

          swift_unknownObjectRelease();
          break;
        case 8u:

          v9 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
          v78 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
          goto LABEL_92;
        case 9u:

          v149 = type metadata accessor for LemonadeICloudLinksFeature();
          v94 = (v9 + *(v149 + 20));

          v95 = type metadata accessor for LemonadeICloudLinksShelfProvider();
          v96 = v95[6];
          v97 = sub_1A5243334();
          (*(*(v97 - 8) + 8))(v94 + v96, v97);
          v98 = v94 + v95[7];
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v99 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v98, *(v98 + 1), v98[16]);
          if (v99 == 1)
          {
            sub_1A3C4208C(*(v98 + 3), *(v98 + 4), v98[40]);
            sub_1A3C47A98();
            v101 = *(v100 + 64);
            v102 = sub_1A5242C84();
            (*(*(v102 - 8) + 8))(&v98[v101], v102);
          }

          else
          {
            if (*(v98 + 5) >= 3uLL)
            {
            }

            if (*(v98 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v98 + 9), *(v98 + 10), v98[88]);
          }

          v128 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v129 = sub_1A5241F84();
          v130 = *(v129 - 8);
          if (!(*(v130 + 48))(&v98[v128], 1, v129))
          {
            (*(v130 + 8))(&v98[v128], v129);
          }

          v131 = v95[8];
          v132 = sub_1A5244094();
          (*(*(v132 - 8) + 8))(v94 + v131, v132);
          v127 = *(v149 + 28);
          goto LABEL_119;
        case 0xAu:

          v10 = *(v9 + 56);
          goto LABEL_136;
        case 0xBu:

          v80 = (v9 + *(type metadata accessor for LemonadeSharedWithYouFeature() + 20));

          v81 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
          v82 = *(v81 + 24);
          v83 = sub_1A5243334();
          (*(*(v83 - 8) + 8))(v80 + v82, v83);
          v84 = v80 + *(v81 + 28);
          goto LABEL_94;
        case 0xCu:

          v76 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
          v77 = v76 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
          goto LABEL_93;
        case 0xDu:

          v148 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
          v85 = (v9 + *(v148 + 20));

          v86 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
          v87 = v86[6];
          v88 = sub_1A5243334();
          (*(*(v88 - 8) + 8))(v85 + v87, v88);
          v89 = v85 + v86[7];
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v90 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v89, *(v89 + 1), v89[16]);
          if (v90 == 1)
          {
            sub_1A3C4208C(*(v89 + 3), *(v89 + 4), v89[40]);
            sub_1A3C47A98();
            v92 = *(v91 + 64);
            v93 = sub_1A5242C84();
            (*(*(v93 - 8) + 8))(&v89[v92], v93);
          }

          else
          {
            if (*(v89 + 5) >= 3uLL)
            {
            }

            if (*(v89 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v89 + 9), *(v89 + 10), v89[88]);
          }

          v122 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v123 = sub_1A5241F84();
          v124 = *(v123 - 8);
          if (!(*(v124 + 48))(&v89[v122], 1, v123))
          {
            (*(v124 + 8))(&v89[v122], v123);
          }

          v125 = v86[8];
          v126 = sub_1A5244094();
          (*(*(v126 - 8) + 8))(v85 + v125, v126);

          v127 = *(v148 + 24);
LABEL_119:

          break;
        case 0xFu:

          v103 = (v9 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

          v104 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
          v105 = v103 + v104[7];
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v106 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v105, *(v105 + 1), v105[16]);
          if (v106 == 1)
          {
            sub_1A3C4208C(*(v105 + 3), *(v105 + 4), v105[40]);
            sub_1A3C47A98();
            v108 = *(v107 + 64);
            v109 = sub_1A5242C84();
            (*(*(v109 - 8) + 8))(&v105[v108], v109);
          }

          else
          {
            if (*(v105 + 5) >= 3uLL)
            {
            }

            if (*(v105 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v105 + 9), *(v105 + 10), v105[88]);
          }

          v133 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v134 = sub_1A5241F84();
          v135 = *(v134 - 8);
          if (!(*(v135 + 48))(&v105[v133], 1, v134))
          {
            (*(v135 + 8))(&v105[v133], v134);
          }

          goto LABEL_135;
        case 0x10u:

          v9 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
          v78 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
          goto LABEL_92;
        case 0x11u:

          v9 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

          v78 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
          goto LABEL_92;
        case 0x15u:

          v9 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
          v78 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_92:
          v77 = *(v78 + 24);
LABEL_93:
          v84 = (v9 + v77);
LABEL_94:
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v115 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v84, *(v84 + 1), v84[16]);
          if (v115 == 1)
          {
            sub_1A3C4208C(*(v84 + 3), *(v84 + 4), v84[40]);
            sub_1A3C47A98();
            v117 = *(v116 + 64);
            v118 = sub_1A5242C84();
            (*(*(v118 - 8) + 8))(&v84[v117], v118);
          }

          else
          {
            if (*(v84 + 5) >= 3uLL)
            {
            }

            if (*(v84 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v84 + 9), *(v84 + 10), v84[88]);
          }

          v119 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v120 = sub_1A5241F84();
          v121 = *(v120 - 8);
          if (!(*(v121 + 48))(&v84[v119], 1, v120))
          {
            (*(v121 + 8))(&v84[v119], v120);
          }

          break;
        case 0x16u:

          v103 = (v9 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20));
          v104 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
          v110 = v103 + v104[5];
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v111 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v110, *(v110 + 1), v110[16]);
          if (v111 == 1)
          {
            sub_1A3C4208C(*(v110 + 3), *(v110 + 4), v110[40]);
            sub_1A3C47A98();
            v113 = *(v112 + 64);
            v114 = sub_1A5242C84();
            (*(*(v114 - 8) + 8))(&v110[v113], v114);
          }

          else
          {
            if (*(v110 + 5) >= 3uLL)
            {
            }

            if (*(v110 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v110 + 9), *(v110 + 10), v110[88]);
          }

          v136 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v137 = sub_1A5241F84();
          v138 = *(v137 - 8);
          if (!(*(v138 + 48))(&v110[v136], 1, v137))
          {
            (*(v138 + 8))(&v110[v136], v137);
          }

LABEL_135:
          v10 = *(v103 + v104[8]);
LABEL_136:

          break;
        default:
          break;
      }
    }
  }

  return swift_deallocObject();
}