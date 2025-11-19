void *sub_1A3CD0188(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1A5244EE4();
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
      v13 = type metadata accessor for LemonadeFeedBodyStyle(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A3CD02AC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5244EE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CD0358(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5244EE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CD03FC()
{
  type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(255);
  sub_1A3F933F0(&qword_1EB12A0C0, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CD0484(char *a1, uint64_t a2, int *a3)
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

  sub_1A3C6B54C(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  sub_1A3C6B54C(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  sub_1A3F96054(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[10]];

  return v16(v17, a2, v15);
}

char *sub_1A3CD0688(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A3C6B54C(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1A3C6B54C(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  sub_1A3F96054(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[10]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A3CD0890(uint64_t a1, uint64_t a2)
{
  sub_1A3F94A54(0, &qword_1EB124330, &qword_1EB124E58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CD0A90()
{
  type metadata accessor for PhotosViewBannerPreview();

  return swift_getWitnessTable();
}

uint64_t sub_1A3CD0AD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5243BE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CD0B84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5243BE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CD0C2C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD0C64(uint64_t a1)
{
  sub_1A3F97BB0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CD0CC0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C6B5B0(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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
      sub_1A3C6B5B0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CD0E44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3C6B5B0(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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
      sub_1A3C6B5B0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CD0FC8()
{
  sub_1A3F97BB0();
  sub_1A3F99618(&qword_1EB12F630, sub_1A3F97BB0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CD10B4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A3FA53AC(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1A3FA53AC(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
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

void sub_1A3CD1220(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A3FA53AC(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    sub_1A3FA53AC(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3CD13D8(uint64_t a1, uint64_t a2)
{
  sub_1A3FA850C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CD143C(uint64_t a1, uint64_t a2)
{
  sub_1A3FAA714(0, &qword_1EB12F760, sub_1A3FA850C, sub_1A3EC447C, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CD153C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD1574()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CD15B0()
{
  sub_1A3FACBC4(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v4 = *(v2 + 56);
  v5 = sub_1A5241144();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD16E8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD1730()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD1770()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD17D8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD1840()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD18AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CD18E4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CD191C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD196C()
{
  sub_1A3F6D768();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CD1A18()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD1A64()
{
  v1 = sub_1A5244414();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CD1AF8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5246F24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CD1BA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5246F24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CD1C48()
{
  v1 = (type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v5 = (v3 + *(*(v4 - 8) + 80) + 8) & ~*(*(v4 - 8) + 80);

  v6 = v1[7];
  v7 = sub_1A5246F24();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  v8 = v0 + v5;
  type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v9 = sub_1A52444C4();
    (*(*(v9 - 8) + 8))(v0 + v5, v9);
  }

  v10 = *(v4 + 20);
  v11 = sub_1A5247204();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD1EC8()
{
  v1 = sub_1A5240664();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_1A3FCA7A0(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  v6 = (v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  if (!(*(v2 + 48))(v0 + v6, 1, v1))
  {
    v7(v0 + v6, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD2068()
{
  sub_1A3FC83BC();
  sub_1A3FC8418();
  sub_1A3FCAA58(&qword_1EB12FC48, sub_1A3FC83BC);
  sub_1A3FC8504();
  sub_1A3FC85B8();
  sub_1A3FCAA58(&qword_1EB12FC40, sub_1A3FC85B8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CD21AC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD221C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD2254()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD26AC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD26EC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD273C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD2774()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CD27AC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD27E4()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD281C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD2854()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

__n128 sub_1A3CD2950(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3CD2970()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD29C8()
{
  type metadata accessor for LemonadeInlinePlaybackModifier();
  sub_1A5248804();
  sub_1A3FEE67C();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CD2A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52425F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1A3FEE6E8();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A3CD2B24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A52425F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1A3FEE6E8();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1A3CD2C20()
{
  sub_1A3FEEB08();
  sub_1A3FEEB6C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CD2C78()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD2CB0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD2CF0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD2D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3FF1CFC(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
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
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1A3CD2E18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3FF1CFC(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1A3CD2F08()
{
  v1 = sub_1A52453A4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for LemonadeMemoriesCreationUnavailableSubtitle();
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  sub_1A3D35BAC(*(v0 + v6), *(v0 + v6 + 8));
  v8 = *(v5 + 20);
  sub_1A3FF1CFC(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v10 = v9;
    v11 = *(v9 - 8);
    if (!(*(v11 + 48))(v7 + v8, 1, v9))
    {
      (*(v11 + 8))(v7 + v8, v10);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD314C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD3184()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD32E0(uint64_t a1)
{
  sub_1A3FF9D6C(0, &qword_1EB1301D0, sub_1A3FF7B48, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CD3378()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD33C0()
{
  v1 = type metadata accessor for SharedCollectionToggleSettingsSection(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A3FF94E8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5247E04();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD3520()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD356C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CD35A4()
{
  v1 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_1A52444C4();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  v6 = *(v1 + 20);
  v7 = sub_1A5247204();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD3788(uint64_t a1)
{
  sub_1A40055EC(0, &qword_1EB130398, sub_1A4001C2C, sub_1A3E42C88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CD3814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4006FD4(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for PersonSuggestionBanner.Style(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

void sub_1A3CD396C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A4006FD4(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for PersonSuggestionBanner.Style(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_1A3CD3AC4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A40014A0(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CD3B70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A40014A0(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CD3C14()
{
  sub_1A4002644();
  sub_1A40055EC(255, &qword_1EB130398, sub_1A4001C2C, sub_1A3E42C88);
  sub_1A40026F8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CD3D18()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD3D54()
{
  v1 = type metadata accessor for PersonSuggestionBanner(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5247E04();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 24);

  v5 = *(type metadata accessor for PersonSuggestionBanner.Style(0) + 24);
  v6 = sub_1A524BBF4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD3F68()
{
  sub_1A3FA95D4();
  sub_1A5248804();
  sub_1A5249754();
  sub_1A3E42C88();
  sub_1A5248804();
  sub_1A5249754();
  sub_1A40064D4(&qword_1EB1245F8, sub_1A3FA95D4);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A40064D4(&qword_1EB128A00, sub_1A3E42C88);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CD4108()
{

  return swift_deallocObject();
}

__n128 sub_1A3CD414C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3CD417C(uint64_t a1, uint64_t a2)
{
  sub_1A401042C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CD41E0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A400F684(0, &qword_1EB130550, type metadata accessor for LemonadeSharedLibraryViewModeIndicatorModel, MEMORY[0x1E697DA80]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CD42C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A400F684(0, &qword_1EB130550, type metadata accessor for LemonadeSharedLibraryViewModeIndicatorModel, MEMORY[0x1E697DA80]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CD4394()
{
  sub_1A4010668(255, &qword_1EB121E90, sub_1A40106F8, sub_1A4010DE4);
  sub_1A40106F8(255);
  sub_1A4010DE4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CD44A0()
{
  sub_1A40110EC();
  sub_1A40111BC();
  sub_1A4011284();
  sub_1A4011364(&qword_1EB1270C0, sub_1A40111BC, sub_1A40113E0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CD4598(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A401E6E0(0, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CD4678(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A401E6E0(0, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CD4750()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD4788()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CD47C8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD4818(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4020820(0, &qword_1EB130618, &qword_1EB126800, off_1E771DFC8, MEMORY[0x1E697DA80]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CD48F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4020820(0, &qword_1EB130618, &qword_1EB126800, off_1E771DFC8, MEMORY[0x1E697DA80]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CD4A18()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD4A50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CD4A88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CD4AC0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD4B08()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1A3CD4B68()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD4BA4(uint64_t a1, uint64_t a2, int *a3)
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

  sub_1A40361D4(0, &qword_1EB130910, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E697DA80]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  sub_1A40347DC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  sub_1A40361D4(0, &qword_1EB130810, sub_1A4034618, MEMORY[0x1E697DA80]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  sub_1A40361D4(0, &qword_1EB130918, sub_1A4034670, MEMORY[0x1E697DA80]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  sub_1A40361D4(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_1A3CD4E60(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  sub_1A40361D4(0, &qword_1EB130910, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E697DA80]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  sub_1A40347DC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  sub_1A40361D4(0, &qword_1EB130810, sub_1A4034618, MEMORY[0x1E697DA80]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  sub_1A40361D4(0, &qword_1EB130918, sub_1A4034670, MEMORY[0x1E697DA80]);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  sub_1A40361D4(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = v5 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1A3CD511C()
{
  sub_1A4035244(255, &qword_1EB130838, sub_1A4034DB8);
  sub_1A40359E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CD5190()
{
  v1 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = *(v0 + v2 + 16);
  if (v4 != 255)
  {
    sub_1A3EECFA4(*v3, *(v3 + 8), v4);
  }

  v5 = v3 + v1[7];
  v6 = MEMORY[0x1E6981E90];
  sub_1A40361D4(0, &qword_1EB130818, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E6981E90]);
  (*(*(v7 - 8) + 8))(v5, v7);
  v8 = MEMORY[0x1E6981E98];
  sub_1A40361D4(0, &qword_1EB1271E0, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E6981E98]);

  v9 = v1[8];
  sub_1A40347DC();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  v11 = v3 + v1[9];
  sub_1A40361D4(0, &qword_1EB130820, sub_1A4034618, v6);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A40361D4(0, &qword_1EB127290, sub_1A4034618, v8);

  v13 = v3 + v1[10];
  sub_1A40361D4(0, &qword_1EB130828, sub_1A4034670, v6);
  (*(*(v14 - 8) + 8))(v13, v14);
  sub_1A40361D4(0, &qword_1EB130830, sub_1A4034670, v8);

  v15 = v1[11];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1A5249A94();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v3 + v15, 1, v16))
    {
      (*(v17 + 8))(v3 + v15, v16);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD5524()
{
  v1 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView();
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v22 = sub_1A52488B4();
  v3 = *(v22 - 8);
  v4 = *(v3 + 80);
  v5 = v0 + ((v2 + 16) & ~v2);
  v6 = *(v5 + 16);
  if (v6 != 255)
  {
    sub_1A3EECFA4(*v5, *(v5 + 8), v6);
  }

  v7 = v5 + v1[7];
  v8 = MEMORY[0x1E6981E90];
  sub_1A40361D4(0, &qword_1EB130818, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E6981E90]);
  (*(*(v9 - 8) + 8))(v7, v9);
  v10 = MEMORY[0x1E6981E98];
  sub_1A40361D4(0, &qword_1EB1271E0, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E6981E98]);

  v11 = v1[8];
  sub_1A40347DC();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v5 + v1[9];
  sub_1A40361D4(0, &qword_1EB130820, sub_1A4034618, v8);
  (*(*(v14 - 8) + 8))(v13, v14);
  sub_1A40361D4(0, &qword_1EB127290, sub_1A4034618, v10);

  v15 = v5 + v1[10];
  sub_1A40361D4(0, &qword_1EB130828, sub_1A4034670, v8);
  (*(*(v16 - 8) + 8))(v15, v16);
  sub_1A40361D4(0, &qword_1EB130830, sub_1A4034670, v10);

  v17 = v1[11];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1A5249A94();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v5 + v17, 1, v18))
    {
      (*(v19 + 8))(v5 + v17, v18);
    }
  }

  else
  {
  }

  (*(v3 + 8))(v0 + ((((v2 + 16) & ~v2) + v21 + v4) & ~v4), v22);

  return swift_deallocObject();
}

uint64_t sub_1A3CD5948()
{
  v1 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = *(v2 + 16);
  if (v3 != 255)
  {
    sub_1A3EECFA4(*v2, *(v2 + 8), v3);
  }

  v4 = v2 + v1[7];
  v5 = MEMORY[0x1E6981E90];
  sub_1A40361D4(0, &qword_1EB130818, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E6981E90]);
  (*(*(v6 - 8) + 8))(v4, v6);
  v7 = MEMORY[0x1E6981E98];
  sub_1A40361D4(0, &qword_1EB1271E0, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E6981E98]);

  v8 = v1[8];
  sub_1A40347DC();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);
  v10 = v2 + v1[9];
  sub_1A40361D4(0, &qword_1EB130820, sub_1A4034618, v5);
  (*(*(v11 - 8) + 8))(v10, v11);
  sub_1A40361D4(0, &qword_1EB127290, sub_1A4034618, v7);

  v12 = v2 + v1[10];
  sub_1A40361D4(0, &qword_1EB130828, sub_1A4034670, v5);
  (*(*(v13 - 8) + 8))(v12, v13);
  sub_1A40361D4(0, &qword_1EB130830, sub_1A4034670, v7);

  v14 = v1[11];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1A5249A94();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v2 + v14, 1, v15))
    {
      (*(v16 + 8))(v2 + v14, v15);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD5D04()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD5D3C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD5D84()
{
  v1 = sub_1A52414C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CD5E48()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD5E80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD5EC0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD5EF8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD5F40()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD5F80()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CD5FB8()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A3CD604C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD60FC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD6134()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD6198()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD61E0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD6220()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD625C()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD62A4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD6364()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD63AC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD63E8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD6420()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD6468()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD64B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A404DC4C(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
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

void sub_1A3CD65A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A404DC4C(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3CD66C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
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
      v13 = sub_1A5241144();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A3CD67E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
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
      v13 = sub_1A5241144();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A3CD6908(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5241144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CD69B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5241144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CD6A58()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD6A90()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD6AD8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD6B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A405BE64(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
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
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1A3CD6C00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A405BE64(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1A3CD6CF0()
{
  v1 = type metadata accessor for GenerativeStoryProgressAnimationView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  j__swift_release(*v2, *(v2 + 8));
  v3 = *(v1 + 20);
  sub_1A405BE64(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
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

uint64_t sub_1A3CD6EA4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CD6EDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD6F3C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD6F74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD6FC4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD7078(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A406DD84(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1A406DD84(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1A3CD71E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A406DD84(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    sub_1A406DD84(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1A3CD7358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  sub_1A40730D8(0, &qword_1EB131110, sub_1A40730A4, MEMORY[0x1E697DCC0]);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A3CD7400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  sub_1A40730D8(0, &qword_1EB131110, sub_1A40730A4, MEMORY[0x1E697DCC0]);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A3CD74AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A4074924();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3CD7558(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A4074924();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CD7644()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD7680()
{
  sub_1A408BC44(255, &qword_1EB131160, sub_1A408BCA8, MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A408BD28();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CD771C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CD7754()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD77A4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD77E4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD784C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD78C4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD7924()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD795C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD79BC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD7A14()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD7A6C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD7AA4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD7AE8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD7B3C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD7B84()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD7BF4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD7C44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD7C8C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CD7CCC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD7D24()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD7DFC()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3CD7E9C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD7EDC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD7F14()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD7F6C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CD7FA4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD7FE4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CD801C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD8058(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1A5242524();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3CD8110(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1A5242524();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CD81B4()
{
  v1 = type metadata accessor for LemonadeShelvesStack();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[7];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  v5 = v1[9];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52486A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD83AC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A40A5D34(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
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
      sub_1A40A5D34(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CD8530(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A40A5D34(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
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
      sub_1A40A5D34(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CD86B8()
{
  sub_1A5247CD4();
  sub_1A524B894();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CD8784()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1A3CD87FC(uint64_t a1, uint64_t a2)
{
  sub_1A40A16B4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CD8860()
{
  v1 = *(type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      sub_1A3C53AEC(*(v2 + 56), *(v2 + 64));
      sub_1A3C53AEC(*(v2 + 72), *(v2 + 80));
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

      v3 = *(v2 + 24);
      goto LABEL_67;
    case 3u:

      sub_1A3C4AFFC();
      v2 += *(v7 + 40);

      v5 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider() + 28);
      goto LABEL_24;
    case 5u:

      v3 = *(v2 + 32);
      goto LABEL_67;
    case 7u:

      swift_unknownObjectRelease();
      break;
    case 8u:

      v2 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
      v6 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
      goto LABEL_23;
    case 9u:

      v69 = type metadata accessor for LemonadeICloudLinksFeature();
      v22 = (v2 + *(v69 + 20));

      v23 = type metadata accessor for LemonadeICloudLinksShelfProvider();
      v24 = v23[6];
      v25 = sub_1A5243334();
      (*(*(v25 - 8) + 8))(v22 + v24, v25);
      v26 = v22 + v23[7];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v26, *(v26 + 1), v26[16]);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1A3C4208C(*(v26 + 3), *(v26 + 4), v26[40]);
        sub_1A3C47A98();
        v29 = *(v28 + 64);
        v30 = sub_1A5242C84();
        (*(*(v30 - 8) + 8))(&v26[v29], v30);
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

      v56 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v57 = sub_1A5241F84();
      v58 = *(v57 - 8);
      if (!(*(v58 + 48))(&v26[v56], 1, v57))
      {
        (*(v58 + 8))(&v26[v56], v57);
      }

      v59 = v23[8];
      v60 = sub_1A5244094();
      (*(*(v60 - 8) + 8))(v22 + v59, v60);
      v55 = *(v69 + 28);
      goto LABEL_50;
    case 0xAu:

      v3 = *(v2 + 56);
      goto LABEL_67;
    case 0xBu:

      v8 = (v2 + *(type metadata accessor for LemonadeSharedWithYouFeature() + 20));

      v9 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
      v10 = *(v9 + 24);
      v11 = sub_1A5243334();
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
      v12 = v8 + *(v9 + 28);
      goto LABEL_25;
    case 0xCu:

      v4 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
      v5 = v4 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
      goto LABEL_24;
    case 0xDu:

      v68 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
      v13 = (v2 + *(v68 + 20));

      v14 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
      v15 = v14[6];
      v16 = sub_1A5243334();
      (*(*(v16 - 8) + 8))(v13 + v15, v16);
      v17 = v13 + v14[7];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v18 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v17, *(v17 + 1), v17[16]);
      if (v18 == 1)
      {
        sub_1A3C4208C(*(v17 + 3), *(v17 + 4), v17[40]);
        sub_1A3C47A98();
        v20 = *(v19 + 64);
        v21 = sub_1A5242C84();
        (*(*(v21 - 8) + 8))(&v17[v20], v21);
      }

      else
      {
        if (*(v17 + 5) >= 3uLL)
        {
        }

        if (*(v17 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v17 + 9), *(v17 + 10), v17[88]);
      }

      v50 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v51 = sub_1A5241F84();
      v52 = *(v51 - 8);
      if (!(*(v52 + 48))(&v17[v50], 1, v51))
      {
        (*(v52 + 8))(&v17[v50], v51);
      }

      v53 = v14[8];
      v54 = sub_1A5244094();
      (*(*(v54 - 8) + 8))(v13 + v53, v54);

      v55 = *(v68 + 24);
LABEL_50:

      break;
    case 0xFu:

      v31 = (v2 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

      v32 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
      v33 = v31 + v32[7];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v34 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v33, *(v33 + 1), v33[16]);
      if (v34 == 1)
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

      v61 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v62 = sub_1A5241F84();
      v63 = *(v62 - 8);
      if (!(*(v63 + 48))(&v33[v61], 1, v62))
      {
        (*(v63 + 8))(&v33[v61], v62);
      }

      goto LABEL_66;
    case 0x10u:

      v2 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
      v6 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
      goto LABEL_23;
    case 0x11u:

      v2 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

      v6 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
      goto LABEL_23;
    case 0x15u:

      v2 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
      v6 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_23:
      v5 = *(v6 + 24);
LABEL_24:
      v12 = (v2 + v5);
LABEL_25:
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v43 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v12, *(v12 + 1), v12[16]);
      if (v43 == 1)
      {
        sub_1A3C4208C(*(v12 + 3), *(v12 + 4), v12[40]);
        sub_1A3C47A98();
        v45 = *(v44 + 64);
        v46 = sub_1A5242C84();
        (*(*(v46 - 8) + 8))(&v12[v45], v46);
      }

      else
      {
        if (*(v12 + 5) >= 3uLL)
        {
        }

        if (*(v12 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v12 + 9), *(v12 + 10), v12[88]);
      }

      v47 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v48 = sub_1A5241F84();
      v49 = *(v48 - 8);
      if (!(*(v49 + 48))(&v12[v47], 1, v48))
      {
        (*(v49 + 8))(&v12[v47], v48);
      }

      break;
    case 0x16u:

      v31 = (v2 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20));
      v32 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
      v38 = v31 + v32[5];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v39 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v38, *(v38 + 1), v38[16]);
      if (v39 == 1)
      {
        sub_1A3C4208C(*(v38 + 3), *(v38 + 4), v38[40]);
        sub_1A3C47A98();
        v41 = *(v40 + 64);
        v42 = sub_1A5242C84();
        (*(*(v42 - 8) + 8))(&v38[v41], v42);
      }

      else
      {
        if (*(v38 + 5) >= 3uLL)
        {
        }

        if (*(v38 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v38 + 9), *(v38 + 10), v38[88]);
      }

      v64 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v65 = sub_1A5241F84();
      v66 = *(v65 - 8);
      if (!(*(v66 + 48))(&v38[v64], 1, v65))
      {
        (*(v66 + 8))(&v38[v64], v65);
      }

LABEL_66:
      v3 = *(v31 + v32[8]);
LABEL_67:

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CD9448()
{
  v1 = *(type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);

  v3 = v0 + v2;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      sub_1A3C53AEC(*(v3 + 56), *(v3 + 64));
      sub_1A3C53AEC(*(v3 + 72), *(v3 + 80));
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

      v4 = *(v3 + 24);
      goto LABEL_67;
    case 3u:

      sub_1A3C4AFFC();
      v3 += *(v8 + 40);

      v6 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider() + 28);
      goto LABEL_24;
    case 5u:

      v4 = *(v3 + 32);
      goto LABEL_67;
    case 7u:

      swift_unknownObjectRelease();
      break;
    case 8u:

      v3 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
      v7 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
      goto LABEL_23;
    case 9u:

      v70 = type metadata accessor for LemonadeICloudLinksFeature();
      v23 = (v3 + *(v70 + 20));

      v24 = type metadata accessor for LemonadeICloudLinksShelfProvider();
      v25 = v24[6];
      v26 = sub_1A5243334();
      (*(*(v26 - 8) + 8))(v23 + v25, v26);
      v27 = v23 + v24[7];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v27, *(v27 + 1), v27[16]);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1A3C4208C(*(v27 + 3), *(v27 + 4), v27[40]);
        sub_1A3C47A98();
        v30 = *(v29 + 64);
        v31 = sub_1A5242C84();
        (*(*(v31 - 8) + 8))(&v27[v30], v31);
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

      v57 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v58 = sub_1A5241F84();
      v59 = *(v58 - 8);
      if (!(*(v59 + 48))(&v27[v57], 1, v58))
      {
        (*(v59 + 8))(&v27[v57], v58);
      }

      v60 = v24[8];
      v61 = sub_1A5244094();
      (*(*(v61 - 8) + 8))(v23 + v60, v61);
      v56 = *(v70 + 28);
      goto LABEL_50;
    case 0xAu:

      v4 = *(v3 + 56);
      goto LABEL_67;
    case 0xBu:

      v9 = (v3 + *(type metadata accessor for LemonadeSharedWithYouFeature() + 20));

      v10 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
      v11 = *(v10 + 24);
      v12 = sub_1A5243334();
      (*(*(v12 - 8) + 8))(v9 + v11, v12);
      v13 = v9 + *(v10 + 28);
      goto LABEL_25;
    case 0xCu:

      v5 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
      v6 = v5 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
      goto LABEL_24;
    case 0xDu:

      v69 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
      v14 = (v3 + *(v69 + 20));

      v15 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
      v16 = v15[6];
      v17 = sub_1A5243334();
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
      v18 = v14 + v15[7];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v19 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v18, *(v18 + 1), v18[16]);
      if (v19 == 1)
      {
        sub_1A3C4208C(*(v18 + 3), *(v18 + 4), v18[40]);
        sub_1A3C47A98();
        v21 = *(v20 + 64);
        v22 = sub_1A5242C84();
        (*(*(v22 - 8) + 8))(&v18[v21], v22);
      }

      else
      {
        if (*(v18 + 5) >= 3uLL)
        {
        }

        if (*(v18 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v18 + 9), *(v18 + 10), v18[88]);
      }

      v51 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v52 = sub_1A5241F84();
      v53 = *(v52 - 8);
      if (!(*(v53 + 48))(&v18[v51], 1, v52))
      {
        (*(v53 + 8))(&v18[v51], v52);
      }

      v54 = v15[8];
      v55 = sub_1A5244094();
      (*(*(v55 - 8) + 8))(v14 + v54, v55);

      v56 = *(v69 + 24);
LABEL_50:

      break;
    case 0xFu:

      v32 = (v3 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

      v33 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
      v34 = v32 + v33[7];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v35 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v34, *(v34 + 1), v34[16]);
      if (v35 == 1)
      {
        sub_1A3C4208C(*(v34 + 3), *(v34 + 4), v34[40]);
        sub_1A3C47A98();
        v37 = *(v36 + 64);
        v38 = sub_1A5242C84();
        (*(*(v38 - 8) + 8))(&v34[v37], v38);
      }

      else
      {
        if (*(v34 + 5) >= 3uLL)
        {
        }

        if (*(v34 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v34 + 9), *(v34 + 10), v34[88]);
      }

      v62 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v63 = sub_1A5241F84();
      v64 = *(v63 - 8);
      if (!(*(v64 + 48))(&v34[v62], 1, v63))
      {
        (*(v64 + 8))(&v34[v62], v63);
      }

      goto LABEL_66;
    case 0x10u:

      v3 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
      v7 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
      goto LABEL_23;
    case 0x11u:

      v3 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

      v7 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
      goto LABEL_23;
    case 0x15u:

      v3 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
      v7 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_23:
      v6 = *(v7 + 24);
LABEL_24:
      v13 = (v3 + v6);
LABEL_25:
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v44 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v13, *(v13 + 1), v13[16]);
      if (v44 == 1)
      {
        sub_1A3C4208C(*(v13 + 3), *(v13 + 4), v13[40]);
        sub_1A3C47A98();
        v46 = *(v45 + 64);
        v47 = sub_1A5242C84();
        (*(*(v47 - 8) + 8))(&v13[v46], v47);
      }

      else
      {
        if (*(v13 + 5) >= 3uLL)
        {
        }

        if (*(v13 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v13 + 9), *(v13 + 10), v13[88]);
      }

      v48 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v49 = sub_1A5241F84();
      v50 = *(v49 - 8);
      if (!(*(v50 + 48))(&v13[v48], 1, v49))
      {
        (*(v50 + 8))(&v13[v48], v49);
      }

      break;
    case 0x16u:

      v32 = (v3 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20));
      v33 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
      v39 = v32 + v33[5];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v40 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v39, *(v39 + 1), v39[16]);
      if (v40 == 1)
      {
        sub_1A3C4208C(*(v39 + 3), *(v39 + 4), v39[40]);
        sub_1A3C47A98();
        v42 = *(v41 + 64);
        v43 = sub_1A5242C84();
        (*(*(v43 - 8) + 8))(&v39[v42], v43);
      }

      else
      {
        if (*(v39 + 5) >= 3uLL)
        {
        }

        if (*(v39 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v39 + 9), *(v39 + 10), v39[88]);
      }

      v65 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v66 = sub_1A5241F84();
      v67 = *(v66 - 8);
      if (!(*(v67 + 48))(&v39[v65], 1, v66))
      {
        (*(v67 + 8))(&v39[v65], v66);
      }

LABEL_66:
      v4 = *(v32 + v33[8]);
LABEL_67:

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CDA064()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDA0B8()
{
  sub_1A40A5EC0();
  sub_1A40A5F7C(255, &qword_1EB127B88, sub_1A40A0F30, &type metadata for LemonadeShelvesLoadingStatusReporting, MEMORY[0x1E697FDE8]);
  sub_1A40A5FE4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CDA180()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CDA1C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CDA1F8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1A3CDA238()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CDA2DC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CDA314()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDA374()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDA3DC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDA414()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDA44C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDA494()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDA4E4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDA524()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CDA574()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDA5AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CDA5E4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CDA624()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDA65C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDA694(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_1A5243334();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for LemonadeShelfBodyStyle(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CDA7C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_1A5243334();
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
      v13 = type metadata accessor for LemonadeShelfBodyStyle(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A3CDA998()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CDA9D0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDAA18(uint64_t a1, uint64_t a2)
{
  sub_1A40C5B18();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CDAA7C(uint64_t a1, uint64_t a2)
{
  sub_1A40C5D48(0, &qword_1EB131838, sub_1A40C5B18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CDAB40()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDAB80()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDABB8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDAC00()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CDAC48()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDAC88()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDACC4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDAD04()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDAD4C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDADEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CDAE24()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDAE64()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDAEA4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CDAEDC()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  if (*(v0 + ((((((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CDAFDC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDB014()
{
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CDB07C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CDB128(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CDB1CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A40E45CC(0, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3CDB2AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A40E45CC(0, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CDB380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A3CDB440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3CDB4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52414C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1A40E45CC(0, &unk_1EB12AF40, MEMORY[0x1E6969B50], MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_1A3CDB644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A52414C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1A40E45CC(0, &unk_1EB12AF40, MEMORY[0x1E6969B50], MEMORY[0x1E69E6720]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1A3CDB8A4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A40E93E4(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
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
      sub_1A40E93E4(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CDBA28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A40E93E4(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
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
      sub_1A40E93E4(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CDBBAC()
{
  sub_1A40EB368();
  sub_1A40EB298();
  sub_1A40E9B28();
  sub_1A40EA6E0(&qword_1EB131EF0, sub_1A40E9B28);
  sub_1A3F17D14();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CDBCBC()
{
  v1 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  j__swift_release(*(v2 + 8), *(v2 + 16));
  sub_1A3C53AEC(*(v2 + 24), *(v2 + 32));
  v3 = v1[7];
  sub_1A40E93E4(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  v5 = v1[9];
  sub_1A40E93E4(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52486A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CDBEE0()
{
  v1 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  j__swift_release(*(v4 + 8), *(v4 + 16));
  sub_1A3C53AEC(*(v4 + 24), *(v4 + 32));
  v5 = v1[7];
  sub_1A40E93E4(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248284();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v7 = v1[9];
  sub_1A40E93E4(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A52486A4();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1A3CDC10C()
{

  sub_1A3D35BAC(*(v0 + 32), *(v0 + 40));
  sub_1A3D35BAC(*(v0 + 48), *(v0 + 56));
  sub_1A3D35A84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_1A3F1B4C4(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  sub_1A3D35A84(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));

  return swift_deallocObject();
}

uint64_t sub_1A3CDC194()
{

  sub_1A3D35BAC(*(v0 + 40), *(v0 + 48));
  sub_1A3D35BAC(*(v0 + 56), *(v0 + 64));
  sub_1A3D35A84(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_1A3F1B4C4(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  sub_1A3D35A84(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_1A3CDC218()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CDC268()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CDC2A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDC2E0()
{
  sub_1A41035BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CDC368()
{
  sub_1A41036F0();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A3CDC42C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CDC46C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDC4B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 28));
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

uint64_t sub_1A3CDC580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1A3CDC63C(uint64_t a1)
{
  sub_1A4108C98(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CDC698(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A41076D0(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A41076D0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 52);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CDC81C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A41076D0(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A41076D0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 52);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CDC9A0()
{
  sub_1A4108C98(255);
  sub_1A4108374(255, &qword_1EB1327A0, sub_1A4108C98, sub_1A410AB24, MEMORY[0x1E697E830]);
  sub_1A410ABB8();
  sub_1A410AE00();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CDCAA8(uint64_t a1, uint64_t a2)
{
  sub_1A4108C98(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CDCB4C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDCBA0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDCBF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CDCC40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CDCCEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CDCD90(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CDCE3C(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CDCF74()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDCFC0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDCFF8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A41173E0(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
  }

  else
  {
    sub_1A41173E0(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[8] + 16);
      if (v13 > 1)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

void sub_1A3CDD160(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A41173E0(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    sub_1A41173E0(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 16) = -a2;
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1A3CDD330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A41294D4(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
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

void sub_1A3CDD418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A41294D4(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3CDD500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A41294D4(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
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

void sub_1A3CDD5EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A41294D4(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3CDD6D8()
{
  sub_1A4127A68(255);
  sub_1A4127F24();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CDD778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A41294D4(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
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

void sub_1A3CDD864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A41294D4(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3CDD950()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CDD988(uint64_t a1, uint64_t a2)
{
  sub_1A4127204(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_1A3CDDA30(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3CDDA48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CDDA80()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDDACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A412F844(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1A3CDDBC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A412F844(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_1A3CDDCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A4134F68(0, &qword_1EB124730, 255, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
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
      sub_1A4134F68(0, &unk_1EB1246F0, 255, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1A3CDDE48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    sub_1A4134F68(0, &qword_1EB124730, 255, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
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
      sub_1A4134F68(0, &unk_1EB1246F0, 255, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 44);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CDDFD8(uint64_t a1, uint64_t a2)
{
  sub_1A4136D6C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CDE03C(uint64_t a1, uint64_t a2)
{
  sub_1A41371F8(0, &qword_1EB123F90, sub_1A413726C, sub_1A4137910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CDE0D0()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CDE108()
{
  j__swift_release(*(v0 + 16), *(v0 + 24));

  if (*(v0 + 208))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 184);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CDE1F4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDE22C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDE27C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CDE2CC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDE350()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CDE388()
{
  v1 = (type metadata accessor for AssetsRecoveryNotificationItem() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_1A5241144();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[10];
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CDE4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4153160(0, &qword_1EB133470, &type metadata for GenerativeStoryAppleMusicPrivacyTip, MEMORY[0x1E697DA80]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1A5246F24();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

void sub_1A3CDE5F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A4153160(0, &qword_1EB133470, &type metadata for GenerativeStoryAppleMusicPrivacyTip, MEMORY[0x1E697DA80]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1A5246F24();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_1A3CDE740()
{
  sub_1A4152C58();
  sub_1A5247794();
  sub_1A4152B28();
  sub_1A4152A3C();
  sub_1A41528AC();
  sub_1A4152960();
  sub_1A41529F4(&qword_1EB1222E8, sub_1A4152960);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1A41529F4(&qword_1EB1249E0, MEMORY[0x1E6982B80]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CDE9D8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDEAE0()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CDEB18()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDEB7C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDEBB4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDEBFC()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CDED18()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CDED54(uint64_t a1, uint64_t a2)
{
  sub_1A4168210(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CDEDB8()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1A5249C74();

    return sub_1A5248804();
  }

  else
  {
    sub_1A5248A64();
    swift_getWitnessTable();
    sub_1A52499B4();
    sub_1A5248804();
    sub_1A524DF24();
    swift_getWitnessTable();
    sub_1A5248A64();
    swift_getWitnessTable();
    sub_1A52499B4();
    return sub_1A5248804();
  }
}

uint64_t sub_1A3CDEF1C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1A5249C74();
    sub_1A5248804();
  }

  else
  {
    sub_1A5248A64();
    swift_getWitnessTable();
    sub_1A52499B4();
    sub_1A5248804();
    sub_1A524DF24();
    swift_getWitnessTable();
    sub_1A5248A64();
    swift_getWitnessTable();
    sub_1A52499B4();
    sub_1A5248804();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CDF124(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A416AE3C(0, &qword_1EB124930, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E697DA80]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CDF204(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A416AE3C(0, &qword_1EB124930, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E697DA80]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CDF2D8()
{
  sub_1A4166154();
  sub_1A416A9D4(&qword_1EB133688, sub_1A4166154);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CDF428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
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
    sub_1A416C0E0(0, &qword_1EB124960, type metadata accessor for MapSnapshotViewModel, MEMORY[0x1E697DA80]);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      sub_1A416C0E0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      v15 = v14;
      v16 = *(*(v14 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_1A3CDF5B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    sub_1A416C0E0(0, &qword_1EB124960, type metadata accessor for MapSnapshotViewModel, MEMORY[0x1E697DA80]);
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
      sub_1A416C0E0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CDF744()
{
  v1 = (type metadata accessor for MapSnapshotView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v11 = *(*v1 + 64);
  v3 = sub_1A52482C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();

  v6 = v0 + v2 + v1[8];
  sub_1A416C0E0(0, &qword_1EB1272D0, type metadata accessor for MapSnapshotViewModel, MEMORY[0x1E6981E90]);
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_1A416C0E0(0, &qword_1EB127268, type metadata accessor for MapSnapshotViewModel, MEMORY[0x1E6981E98]);

  v8 = v1[9];
  sub_1A416C0E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5247E04();
    (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v11 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_1A3CDF9E0()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CDFA18()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CDFA5C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4175800(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CDFB08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4175800(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CDFBF8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CDFC48()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDFC80()
{
  swift_unknownObjectRelease();

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CDFCE0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CDFD30(uint64_t a1, uint64_t a2)
{
  sub_1A4177FFC(0, &qword_1EB133978, sub_1A4177CCC, sub_1A4178698);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CDFDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3CDFE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3CDFF44()
{
  v1 = type metadata accessor for GenerativeStorySuggestion(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v17 = sub_1A52449C4();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();

  v6 = v0 + v3;

  v7 = v1[6];
  v8 = sub_1A5244A24();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[7];
  v10 = sub_1A5244A54();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = (v3 + v16 + v5) & ~v5;
  v13 = v1[8];
  v14 = sub_1A5244984();
  (*(*(v14 - 8) + 8))(v6 + v13, v14);

  (*(v4 + 8))(v0 + v12, v17);

  return swift_deallocObject();
}

uint64_t sub_1A3CE01B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE01F4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1A5244A24();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1A3C487B8(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1A5244984();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1A3CE0390(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1A5244A24();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_1A3C487B8(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1A5244984();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1A3CE0584(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C6B614(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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
      sub_1A3C6B614(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CE0708(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3C6B614(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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
      sub_1A3C6B614(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CE088C()
{
  sub_1A4182ECC(255, &qword_1EB133B58, &qword_1EB133B60, sub_1A4182CA0);
  sub_1A4183AB4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CE0910()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CE0948()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CE0C10(uint64_t *a1, int a2)
{
  if (a2 != 0x7FFFFFFF)
  {
    sub_1A5245EC4();
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *sub_1A3CE0CBC(void *result, int a2, int a3)
{
  if (a3 != 0x7FFFFFFF)
  {
    sub_1A5245EC4();
  }

  *result = (a2 - 1);
  return result;
}

uint64_t sub_1A3CE0D70()
{
  type metadata accessor for LemonadeSegmentedControl.StandardPicker();
  type metadata accessor for LemonadeSegmentedControl.PillPicker();
  sub_1A5249754();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CE0E74()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for LemonadeSegmentedControl.StandardPicker() - 8);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  v4 = sub_1A524B974();
  (*(*(v1 - 8) + 8))(v3 + *(v4 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CE0F94()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for LemonadeSegmentedControl.PillPicker() - 8);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  v4 = sub_1A524B974();
  (*(*(v1 - 8) + 8))(v3 + *(v4 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CE10A8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE10E8()
{
  type metadata accessor for UIKitSegmentedControl();
  sub_1A524CB74();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_1A524B9D4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B824();
  sub_1A5249804();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CE12F8()
{
  sub_1A524CB74();
  sub_1A419A278(255, &qword_1EB133DC8, sub_1A419A230, sub_1A419A54C, MEMORY[0x1E697F960]);
  swift_getWitnessTable();
  sub_1A524B9D4();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CE148C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CE14D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1518()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1550()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1A3CE159C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE15D4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE160C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CE1644()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE168C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE16D4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CE170C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1744()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE1784()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE17BC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE17F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1834(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C7D010(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CE1914(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3C7D010(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CE19E8(uint64_t a1, uint64_t a2)
{
  sub_1A3C7D010(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3CE1A84(uint64_t a1, uint64_t a2)
{
  sub_1A3C7D010(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3CE1B44()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1BA4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CE1BDC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1C38()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1C88()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1CC8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1D20()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1D74()
{
  swift_unknownObjectRelease();

  sub_1A3C59280(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1A3CE1DC4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1E24()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE1E5C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE1EA8()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v5 + *(v8 + 80) + 24) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_1A3CE2074()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CE214C()
{
  sub_1A3C333F8();
  sub_1A3C333F8();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE21B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE2244()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE2284()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE22C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A41CB928(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CE23A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A41CB928(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 48);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CE2478()
{
  sub_1A41CCF4C();
  v0 = MEMORY[0x1E697E830];
  sub_1A41CBEFC(255, &qword_1EB1349F8, sub_1A41CD44C, sub_1A3E42C88, MEMORY[0x1E697E830]);
  sub_1A41CBDE8(255);
  sub_1A41CBEFC(255, &qword_1EB1349B8, sub_1A41CD068, sub_1A3E42C88, v0);
  sub_1A41CD16C();
  sub_1A41CD53C(&qword_1EB1349E0, &qword_1EB1349B8, sub_1A41CD068, sub_1A41CD29C);
  swift_getOpaqueTypeConformance2();
  sub_1A41CD53C(&qword_1EB134A08, &qword_1EB1349F8, sub_1A41CD44C, sub_1A41CD614);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CE27BC()
{
  v1 = sub_1A52453A4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for LemonadeMemoriesCreationButton();
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  sub_1A3D35BAC(*(v0 + v6), *(v0 + v6 + 8));
  v8 = *(v5 + 20);
  sub_1A41DDA30(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v10 = v9;
    v11 = *(v9 - 8);
    if (!(*(v11 + 48))(v7 + v8, 1, v9))
    {
      (*(v11 + 8))(v7 + v8, v10);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CE2A0C()
{
  v1 = sub_1A52453A4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CE2A94(uint64_t a1, uint64_t a2)
{
  sub_1A41DD6FC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CE2AF8(uint64_t a1)
{
  sub_1A41DD6FC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CE2B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A41DDA30(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
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
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1A3CE2C44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A41DDA30(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1A3CE2D34()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CE2D6C()
{
  v1 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_1A52434D4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v3 + *(v1 + 20)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CE2EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C36260(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
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

void sub_1A3CE2FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3C36260(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
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

uint64_t sub_1A3CE30A4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE30EC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5240E64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CE3198(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5240E64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CE323C()
{
  sub_1A524B9A4();
  type metadata accessor for LemonadeSharedAlbumsAvatarView();
  type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView();
  sub_1A5249754();
  sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A41E51C0(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5242C04();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A41EDFEC(&qword_1EB129158, MEMORY[0x1E69C2160]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeDetailsNavigationButton();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A3DF1F90();
  sub_1A5248804();
  sub_1A41E5584(255);
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A41EDFEC(&qword_1EB12CAD8, sub_1A3DF1F90);
  swift_getWitnessTable();
  sub_1A41EDFEC(&qword_1EB1279F8, sub_1A41E5584);
  return swift_getWitnessTable();
}

uint64_t sub_1A3CE3760()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v3 + *(v2 + 40);
  if (*(v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  v5 = v3 + *(v2 + 48);
  v6 = MEMORY[0x1E69C24E0];
  sub_1A41E52B0(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  (*(*(v7 - 8) + 8))(v5, v7);
  sub_1A41E52B0(0, &qword_1EB127288, v6, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A3CE3910()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE395C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TimelineEngineCell();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TimelineEngineCellFrame(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A3CE3A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TimelineEngineCell();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TimelineEngineCellFrame(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A3CE3B48()
{
  sub_1A5249CA4();
  sub_1A41EE5FC(255);
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  sub_1A41EF3AC();
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A41EF1A0(&qword_1EB1221E0, MEMORY[0x1E697C998]);
  sub_1A5248154();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CE3D00()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE3D38()
{
  v1 = type metadata accessor for TimelineEngineFrame(0);
  v2 = *(*(v1 - 8) + 80);

  __swift_destroy_boxed_opaque_existential_0(v0 + 72);

  if (*(v0 + 120))
  {
  }

  if (*(v0 + 136))
  {
  }

  v3 = *(v1 + 24);
  v4 = sub_1A5241144();
  (*(*(v4 - 8) + 8))(v0 + ((v2 + 152) & ~v2) + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3CE3E70(uint64_t a1, uint64_t a2)
{
  sub_1A41EE694(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CE3EE0()
{
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A3CE4004()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CE4040()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE407C()
{
  v1 = type metadata accessor for LemonadeWallpaperCell();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_1A3C6B678(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5244084();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_1A3C6B678(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[7];
  if (*v7)
  {
    swift_unknownObjectRelease();
  }

  sub_1A3C53AEC(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE42A8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C6B678(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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
      sub_1A3C6B678(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CE442C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3C6B678(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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
      sub_1A3C6B678(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CE45B4()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CE4600()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE4698()
{
  v1 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);

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

uint64_t sub_1A3CE47F0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3CE48F4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3CE4A2C()
{
  v1 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  swift_unknownObjectRelease();

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

uint64_t sub_1A3CE4B8C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for LemonadeSharedAlbumsActivityNotificationCell() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CE4C6C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for LemonadeSharedAlbumsActivityNotificationCell() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CE4D8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CE4DC4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE4DFC()
{
  type metadata accessor for LemonadeFeedContents();
  sub_1A4208DC0();
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A42094D8(&qword_1EB122120, sub_1A4208DC0);
  return swift_getWitnessTable();
}

uint64_t sub_1A3CE4EC8()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A3CE4F58()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CE4F90()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE5144()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE5184()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE51F0()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CE5238()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A3CE5284()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CE52BC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE52F8()
{

  v1 = *(v0 + 152);
  if (v1 > 1)
  {
    if (v1 == 2)
    {

      if (*(v0 + 136))
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + 112);
      }
    }

    else if (v1 == 3)
    {
    }
  }

  else if (!*(v0 + 152) || v1 == 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CE53CC()
{
  v1 = sub_1A52453A4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CE5488()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE54C4()
{
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A421AFE0();
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A421DF40(&qword_1EB122188, sub_1A421AFE0);
  return swift_getWitnessTable();
}

uint64_t sub_1A3CE56E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A421E9BC(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
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

void sub_1A3CE57D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A421E9BC(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3CE5914()
{
  v1 = type metadata accessor for PhotosSearchMapView();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  sub_1A421E9BC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + v1[5];

  if (*(v5 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(v5 + 8);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE5AE0()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CE5B18()
{
  v1 = type metadata accessor for PhotosSearchMapView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  sub_1A421E9BC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5248284();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  v6 = v4 + v1[5];

  if (*(v6 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(v6 + 8);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE5D0C()
{
  v1 = type metadata accessor for PhotosSearchMapView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1A421E9BC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + v1[5];

  if (*(v5 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(v5 + 8);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE5EE4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE5F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_1A3CE602C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }
}

uint64_t sub_1A3CE6118()
{
  sub_1A4225078();
  sub_1A4224E30();
  sub_1A4224C1C();
  sub_1A4224A3C();
  sub_1A422461C();
  type metadata accessor for PhotosSearchMapView();
  sub_1A4224500();
  sub_1A4224788();
  sub_1A42243E4();
  sub_1A52471E4();
  type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
  sub_1A4222E14();
  sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
  sub_1A4222E64();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1A42248D4();
  swift_getOpaqueTypeConformance2();
  sub_1A42244B8(&qword_1EB125F88, type metadata accessor for PhotosSearchMapView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_1A3CE63C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1A3CE63F4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1A52407E4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1A422EC20(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_1A5241144();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_1A3CE6590(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1A52407E4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_1A422EC20(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_1A5241144();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1A3CE6738()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CE6770()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE67BC(char *a1, uint64_t a2, int *a3)
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

  sub_1A422F9E0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(&a1[v11], a2, v9);
  }

  sub_1A422F9E0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  sub_1A422F9E0(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  sub_1A4239F14();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[17];
    goto LABEL_17;
  }

  sub_1A422F9E0(0, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E697DA80]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[18];
    goto LABEL_17;
  }

  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[19];
    goto LABEL_17;
  }

  sub_1A422F9E0(0, &qword_1EB135D18, sub_1A42300FC, MEMORY[0x1E697DA80]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = &a1[a3[20]];

  return v20(v21, a2, v19);
}

char *sub_1A3CE6B68(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A422F9E0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(&v5[v11], a2, a2, v9);
  }

  sub_1A422F9E0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  sub_1A422F9E0(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  sub_1A4239F14();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[17];
    goto LABEL_15;
  }

  sub_1A422F9E0(0, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E697DA80]);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[18];
    goto LABEL_15;
  }

  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[19];
    goto LABEL_15;
  }

  sub_1A422F9E0(0, &qword_1EB135D18, sub_1A42300FC, MEMORY[0x1E697DA80]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = &v5[a4[20]];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1A3CE6F18()
{
  sub_1A5248804();
  sub_1A423A5F4();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CE6F7C(uint64_t a1)
{
  sub_1A4234048(0, &qword_1EB135D38, sub_1A423ABEC, sub_1A423AC34, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CE701C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE7054()
{
  v1 = type metadata accessor for LemonadeSearchOverlayView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = v1[8];
  sub_1A422F9E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[9];
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[10];
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v9 = v8;
    v10 = *(v8 - 8);
    if (!(*(v10 + 48))(v2 + v7, 1, v8))
    {
      (*(v10 + 8))(v2 + v7, v9);
    }
  }

  else
  {
  }

  sub_1A4235DE4(*(v2 + v1[11]), *(v2 + v1[11] + 8), *(v2 + v1[11] + 16));

  v11 = v2 + v1[17];
  sub_1A4235DF0();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A4235E58();

  v13 = v2 + v1[18];
  v14 = MEMORY[0x1E6981E90];
  sub_1A422F9E0(0, &qword_1EB135CD0, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E6981E90]);
  (*(*(v15 - 8) + 8))(v13, v15);
  v16 = MEMORY[0x1E6981E98];
  sub_1A422F9E0(0, &qword_1EB127230, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E6981E98]);

  v17 = v2 + v1[19];
  sub_1A422F9E0(0, &qword_1EB135CD8, type metadata accessor for LemonadeActiveSearchViewModel, v14);
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_1A422F9E0(0, &qword_1EB127210, type metadata accessor for LemonadeActiveSearchViewModel, v16);

  v19 = v2 + v1[20];
  sub_1A422F9E0(0, &qword_1EB135CE0, sub_1A42300FC, v14);
  (*(*(v20 - 8) + 8))(v19, v20);
  sub_1A422F9E0(0, &qword_1EB127270, sub_1A42300FC, v16);

  return swift_deallocObject();
}

uint64_t sub_1A3CE75CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A422F9E0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CE76AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A422F9E0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CE7780()
{
  sub_1A423ADB4();
  sub_1A4234048(255, &qword_1EB135D38, sub_1A423ABEC, sub_1A423AC34, MEMORY[0x1E697E830]);
  sub_1A423AE7C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CE7860()
{
  v1 = type metadata accessor for LemonadeSearchRootOverlayView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1A4235DE4(*(v2 + *(v1 + 24)), *(v2 + *(v1 + 24) + 8), *(v2 + *(v1 + 24) + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CE7A08()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE7A40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE7A88()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE7AC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CE7AFC()
{
  sub_1A4242CFC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CE7B84()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE7BC4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE7BFC()
{
  v1 = (type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[8];
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

uint64_t sub_1A3CE7D80(uint64_t a1)
{
  sub_1A424DD4C(0, &qword_1EB136068, sub_1A424AF70, sub_1A424ADF0, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CE7E20(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CE7ECC(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CE7F70(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1A3CE801C(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1A3CE80C0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C4C098(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CE81A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3C4C098(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CE82C8()
{
  sub_1A424DD4C(255, &qword_1EB136068, sub_1A424AF70, sub_1A424ADF0, MEMORY[0x1E697F960]);
  sub_1A424B5C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CE8414()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE8464(uint64_t a1, uint64_t a2, int *a3)
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

  sub_1A424E2C8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1A424E2C8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  sub_1A4074924();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_1A3CE8630(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_1A424E2C8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_1A424E2C8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  sub_1A4074924();
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A3CE8800(uint64_t a1, uint64_t a2)
{
  sub_1A424E884(0, &qword_1EB1233C8, sub_1A424E85C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CE888C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CE88C4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE8914(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CE89C0(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CE8AB4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5243624();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CE8B60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5243624();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CE8C04()
{
  v1 = (type metadata accessor for LemonadePeopleSectionProvider.PhotosPersonView(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = sub_1A5243624();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3CE8D3C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE8D74(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A425C4A4(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[11] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    sub_1A425C4A4(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[20];
      goto LABEL_3;
    }

    sub_1A425C4A4(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[22];
      goto LABEL_3;
    }

    sub_1A425C4A4(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[23];
      goto LABEL_3;
    }

    sub_1A425BF6C(0, &qword_1EB12ACE8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for PhotosPreference);
    v17 = v16;
    v18 = *(*(v16 - 8) + 48);
    v19 = a1 + a3[24];

    return v18(v19, a2, v17);
  }
}

void sub_1A3CE9064(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A425C4A4(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    v12(a1 + v11, a2, a2, v9);
    return;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11] + 8) = (a2 - 1);
    return;
  }

  sub_1A425C4A4(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[20];
    goto LABEL_3;
  }

  sub_1A425C4A4(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[22];
    goto LABEL_3;
  }

  sub_1A425C4A4(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[23];
    goto LABEL_3;
  }

  sub_1A425BF6C(0, &qword_1EB12ACE8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for PhotosPreference);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + a4[24];

  v18(v19, a2, a2, v17);
}

uint64_t sub_1A3CE935C()
{
  v1 = type metadata accessor for LemonadeShelfPlaceholderView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v0 + v2 + v1[5];
  sub_1A425C4A4(0, &qword_1EB1272B0, sub_1A42545B4, MEMORY[0x1E6981E90]);
  (*(*(v5 - 8) + 8))(v4, v5);
  sub_1A425C4A4(0, &qword_1EB127220, sub_1A42545B4, MEMORY[0x1E6981E98]);

  if (*(v0 + v2 + v1[18]))
  {
  }

  if (*(v3 + v1[19]))
  {
  }

  v6 = v1[20];
  sub_1A3F31578(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5247E04();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v1[21]), *(v3 + v1[21] + 8));
  v8 = v1[22];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5242D14();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  v10 = v1[23];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  v12 = v1[24];
  sub_1A425BF6C(0, &qword_1EB12ACE8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for PhotosPreference);
  (*(*(v13 - 8) + 8))(v3 + v12, v13);

  return swift_deallocObject();
}

uint64_t sub_1A3CE970C(uint64_t a1, uint64_t a2)
{
  sub_1A4256720(0, &qword_1EB120F20, &unk_1EB1217D0, sub_1A4256650, sub_1A42565EC);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CE9810()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CE9854()
{
  sub_1A5248804();
  sub_1A5249754();
  sub_1A425E210();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CE9900()
{
  sub_1A4260908(255);
  sub_1A41EF370(255);
  sub_1A5248804();
  sub_1A4260C48(255);
  sub_1A4260E88(255);
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  sub_1A5249754();
  sub_1A524DF24();
  sub_1A4260FA0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A42645D4(255, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A4260FF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CE9B44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CE9B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeShelfBodyStyle(0);
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
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A3CE9C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LemonadeShelfBodyStyle(0);
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
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3CE9D44()
{
  v1 = type metadata accessor for LemonadeCloudQuotaNotificationCell();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A4269D94(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v4 = v3;
    v5 = *(v3 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v3))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 28);
  v7 = sub_1A5243934();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_1A3CE9F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4269D94(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1A5243934();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

void sub_1A3CEA070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A4269D94(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1A5243934();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_1A3CEA1C8()
{
  v1 = (type metadata accessor for LemonadeSearchBarWithSuggestionView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  v4 = sub_1A5242074();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  v5 = v0 + v2 + v1[15];
  sub_1A426B6F8(0, &qword_1EB135CD8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981E90]);
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1A426B6F8(0, &qword_1EB127210, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A3CEA3D8()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1A52485C4();
  }

  else
  {
    sub_1A5248394();
  }

  return sub_1A5248804();
}

uint64_t sub_1A3CEA440()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1A52485C4();
    sub_1A5248804();
    sub_1A426C05C();
  }

  else
  {
    sub_1A5248394();
    sub_1A5248804();
    sub_1A426C0A8(&qword_1EB128940, MEMORY[0x1E697C028]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1A3CEA534(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5242074();
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
      sub_1A426B6F8(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 52);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CEA688(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1A5242074();
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
      sub_1A426B6F8(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 52);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CEA7DC()
{
  sub_1A426B3A4();
  sub_1A426B4E0();
  sub_1A40EF414();
  sub_1A426B5CC();
  sub_1A52437E4();
  sub_1A426C0A8(&qword_1EB136490, MEMORY[0x1E69C2650]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1A426B680();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CEA928()
{
  sub_1A426C274(255);
  sub_1A426C7FC(&qword_1EB136578, sub_1A426C274);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CEA9B0(uint64_t a1, uint64_t a2)
{
  sub_1A426C350(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CEAA14(uint64_t a1, uint64_t a2)
{
  sub_1A426C77C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CEAA78(uint64_t a1)
{
  sub_1A426C77C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CEAAD4()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CEAB0C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEAB44()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEAB7C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEABBC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 48) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3CEACB8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CEACF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEAD30()
{
  v7 = *(v0 + 16);
  v1 = type metadata accessor for LemonadeAlbumGridCell();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80));
  (*(*(v7 - 8) + 8))(v2, v7);
  v3 = v1[15];
  v4 = sub_1A52430A4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  sub_1A3C53AEC(*(v2 + v1[17]), *(v2 + v1[17] + 8));
  sub_1A3C53AEC(*(v2 + v1[18]), *(v2 + v1[18] + 8));
  return swift_deallocObject();
}

uint64_t sub_1A3CEAEF4()
{
  v10 = *(v0 + 16);
  v1 = type metadata accessor for LemonadeAlbumGridCell();
  v2 = (*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1A52430A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  (*(*(v10 - 8) + 8))(v0 + v2, v10);
  v8 = v1[15];
  if (!(*(v5 + 48))(v0 + v2 + v8, 1, v4))
  {
    (*(v5 + 8))(v7 + v8, v4);
  }

  sub_1A3C53AEC(*(v7 + v1[17]), *(v7 + v1[17] + 8));
  sub_1A3C53AEC(*(v7 + v1[18]), *(v7 + v1[18] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);
  return swift_deallocObject();
}

uint64_t sub_1A3CEB10C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEB144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84) == a2)
  {
    v4 = *(v3 + 48);
    v5 = *(a3 + 16);
LABEL_5:

    return v4(a1, a2, v5);
  }

  v7 = a1;
  v8 = a2;
  sub_1A52430A4();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == v8)
  {
    a2 = v8;
    v5 = v9;
    v4 = *(v10 + 48);
    a1 = v7 + *(a3 + 60);
    goto LABEL_5;
  }

  v12 = *(v7 + *(a3 + 64));
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

uint64_t sub_1A3CEB25C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a3)
  {
    v8 = *(v7 + 56);
  }

  else
  {
    v10 = a1;
    sub_1A52430A4();
    result = sub_1A524DF24();
    v12 = *(result - 8);
    if (*(v12 + 84) != a3)
    {
      *(v10 + *(a4 + 64)) = (a2 - 1);
      return result;
    }

    v6 = result;
    v8 = *(v12 + 56);
    a1 = v10 + *(a4 + 60);
  }

  return v8(a1, a2, a2, v6);
}

uint64_t sub_1A3CEB36C()
{
  type metadata accessor for LemonadeFolderMaterialTitleCell();
  type metadata accessor for LemonadeMaterialTitleCell();
  sub_1A5249754();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CEB4E4()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CEB51C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEB55C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEB59C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEB5E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEB624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4280F88(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1A4280F88(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1A3CEB790(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A4280F88(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1A4280F88(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1A3CEB94C(uint64_t a1, uint64_t a2)
{
  sub_1A4282D38(0, &qword_1EB136868, sub_1A42833BC, sub_1A3F8C700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CEB9E0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CEBA18()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEBAA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEBADC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEBB14(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A428F9A8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CEBBF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A428F9A8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CEBD7C()
{
  sub_1A428DE70();
  sub_1A5242C04();
  sub_1A428FB10(&qword_1EB121AF8, sub_1A428DE70);
  sub_1A428FB10(&qword_1EB129158, MEMORY[0x1E69C2160]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CEBE54()
{
  sub_1A428F098(255);
  sub_1A428F788();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CEBEBC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CEBEF8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A42970D4(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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
      sub_1A42970D4(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CEC07C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A42970D4(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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
      sub_1A42970D4(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CEC214()
{
  v1 = type metadata accessor for LemonadeNotificationsStackView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  j__swift_release(*(v2 + 48), *(v2 + 56));
  v3 = *(v1 + 36);
  sub_1A42905D4(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5244084();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 40);
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52486A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CEC3CC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEC41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4299E04(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
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
    sub_1A4299E04(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1A3CEC570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A4299E04(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1A4299E04(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1A3CEC6D4()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CEC73C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEC774(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A429B62C(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
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
      sub_1A429B62C(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CEC8F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A429B62C(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
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
      sub_1A429B62C(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CECA7C()
{
  sub_1A429B438();
  sub_1A429D0CC(&qword_1EB136DA8, sub_1A429B438);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CECB4C()
{
  v1 = (type metadata accessor for LemonadeSharedLibraryFilterView() - 8);
  v2 = (*(*v1 + 80) + 17) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  sub_1A429B62C(0, &qword_1EB133680, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A429B62C(0, &qword_1EB127228, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E6981E98]);

  v5 = v1[9];
  sub_1A429B62C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CECD70()
{
  v1 = (type metadata accessor for LemonadeSharedLibraryFilterView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[7];
  sub_1A429B62C(0, &qword_1EB133680, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A429B62C(0, &qword_1EB127228, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E6981E98]);

  v5 = v1[9];
  sub_1A429B62C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CECF7C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CECFD4()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CED00C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CED044()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CED07C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CED0BC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CED0F4()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CED1B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CED20C()
{
  v1 = (type metadata accessor for PhotosPPTTestRunner() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v3 = v1[11];
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3CED324()
{
  v1 = (type metadata accessor for PhotosPPTTestRunner() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v3 = v1[11];
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3CED444(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5246F24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CED4F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5246F24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CED5B4()
{
  v1 = (type metadata accessor for PhotosPPTTestRunner() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v3 = v1[11];
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3CED6BC()
{
  v1 = (type metadata accessor for PhotosPPTTestRunner() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_1A3F6D768();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (v2 + v3 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v0 + v2;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v9 = v1[11];
  v10 = sub_1A5246F24();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1A3CED848()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CED890()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CED8E4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CED91C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CED9B8()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CEDA8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEDACC()
{
  sub_1A3F6D768();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CEDB54()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A3CEDBA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CEDC54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CEDD64()
{
  type metadata accessor for PhotosPreviewableCollectionPlaceholder(255);
  sub_1A42C75C0();
  type metadata accessor for LemonadeInlineStoryPlayerView();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A524B514();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CEDF64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEDF9C()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEDFD4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEE014()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CEE04C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEE084()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEE0C4()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CEE0FC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CEE144()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CEE188()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEE1E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CEE218()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CEE358()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEE3A8()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEE508()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CEE540()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEE588()
{
  v1 = type metadata accessor for PXGViewFullPageSnapshotProvider.Tile(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + *(v1 + 20);
  v4 = sub_1A5240E64();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3CEE674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1A5240E64();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A3CEE6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1A5240E64();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A3CEE768()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEE7A8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CEE7E0()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CEE818()
{
  v1 = (type metadata accessor for CloudQuotaNotificationItem() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[9];
  v4 = sub_1A5241144();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

__n128 sub_1A3CEE914(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3CEE930()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEE968()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CEE9C0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEE9F8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEEA38()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEEA78()
{
  v1 = (type metadata accessor for LemonadeBookmark(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[8];
  type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
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

      v5 = sub_1A5241144();
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

      v5 = sub_1A5244EB4();
    }

    (*(*(v5 - 8) + 8))(v3, v5);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_11;
  }

LABEL_14:

  return swift_deallocObject();
}

uint64_t sub_1A3CEEBDC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEEC14()
{
  v1 = sub_1A52414C4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CEEC9C()
{
  v1 = sub_1A52414C4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CEED30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CEED78()
{
  sub_1A42E3F7C(0, &qword_1EB137840, MEMORY[0x1E69E8210]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A3CEEE78()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEEEB8(uint64_t a1, uint64_t a2)
{
  sub_1A42E795C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CEEF1C(uint64_t a1)
{
  sub_1A42E795C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CEEF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5242D14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1A52486A4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A3CEF0A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5242D14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 24)) = a2 + 3;
  }

  else
  {
    v11 = sub_1A52486A4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1A3CEF1C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3CEF280(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3CEF338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 246)
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

  else
  {
    sub_1A3C47BD4(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1A3CEF484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 246)
  {
    *(a1 + *(a4 + 20)) = a2 + 9;
  }

  else
  {
    sub_1A3C47BD4(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1A3CEF5D8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEF610()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEF658()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CEF69C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CEF6D4()
{

  return swift_deallocObject();
}