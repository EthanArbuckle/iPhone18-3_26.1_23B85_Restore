uint64_t sub_1A3D0FCD8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D0FD1C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A459E8C0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D0FDFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A459E8C0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D0FED0(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1A3D0FF7C(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1A3D100EC()
{
  sub_1A45A7868(255);
  sub_1A45A78B0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D101CC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D10230(uint64_t a1, uint64_t a2)
{
  sub_1A45AA004(0, &unk_1EB13E230, sub_1A45AC870, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D102CC(uint64_t a1, uint64_t a2)
{
  sub_1A45AA004(0, &unk_1EB13E230, sub_1A45AC870, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D10368(uint64_t a1)
{
  sub_1A45AA004(0, &unk_1EB13E230, sub_1A45AC870, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D103FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A45AAEB8(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
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

void sub_1A3D104E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A45AAEB8(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3D10668()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D106A0()
{
  v1 = type metadata accessor for SharedAlbumPreviewsSection();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  sub_1A45AAEB8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
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

uint64_t sub_1A3D108CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D10978(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D10A1C(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1A3D10AC8(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1A3D10BB4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D10BEC()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  }

  v1 = *(v0 + 88);
  if (v1)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D10C70()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D10CB0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D10CE8()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D10D40()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D10D78()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D10DB8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D10E08()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D10E50()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D10E90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D10EE4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D10F3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D10F94()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D10FCC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D11004()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for LemonadeSearchCollectionResultShelfView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v3 + v2[14];
  sub_1A45C4DC8(0, &qword_1EB13E538, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E90]);
  (*(*(v5 - 8) + 8))(v4, v5);
  sub_1A45C4DC8(0, &qword_1EB127278, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E98]);

  v6 = v2[16];
  sub_1A45C4DC8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5242D14();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D11260()
{
  type metadata accessor for LemonadeSearchSpec();
  type metadata accessor for LemonadeShelf();
  swift_getWitnessTable();
  type metadata accessor for LemonadeSpecsProviderView();
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A44DA2F0(255);
  sub_1A5248804();
  sub_1A3E7D334(255);
  sub_1A5248804();
  sub_1A3D63A24(255);
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A4010C90();
  swift_getWitnessTable();
  sub_1A45C42D4(&qword_1EB122198, sub_1A44DA2F0);
  swift_getWitnessTable();
  sub_1A45C42D4(&qword_1EB127780, sub_1A3E7D334);
  swift_getWitnessTable();
  sub_1A45C42D4(&qword_1EB1278C0, sub_1A3D63A24);
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A45C5CC4();
  sub_1A5248804();
  type metadata accessor for LemonadeSearchCollectionResultShelfView.AdjustedClipShape();
  swift_getWitnessTable();
  sub_1A5247FC4();
  sub_1A5248804();
  sub_1A45C5D8C(255);
  sub_1A5248804();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A45C42D4(&qword_1EB13E548, sub_1A45C5CC4);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A45C42D4(&qword_1EB13E550, sub_1A45C5D8C);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D11690()
{
  type metadata accessor for LemonadeSearchSpec();
  type metadata accessor for LemonadeSectionedFeedView();
  swift_getWitnessTable();
  type metadata accessor for LemonadeSpecsProviderView();
  sub_1A3DA3064();
  sub_1A5248804();
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3E7D334(255);
  sub_1A5248804();
  sub_1A3D63A24(255);
  sub_1A5248804();
  sub_1A45C9968(255);
  sub_1A5248804();
  sub_1A45C999C(255);
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A45C42D4(&qword_1EB127B20, sub_1A3DA3064);
  swift_getWitnessTable();
  sub_1A4010C90();
  swift_getWitnessTable();
  sub_1A45C42D4(&qword_1EB127780, sub_1A3E7D334);
  swift_getWitnessTable();
  sub_1A45C42D4(&qword_1EB1278C0, sub_1A3D63A24);
  swift_getWitnessTable();
  sub_1A45C42D4(&qword_1EB13E568, sub_1A45C9968);
  swift_getWitnessTable();
  sub_1A45C42D4(&qword_1EB13E570, sub_1A45C999C);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A45C5CC4();
  sub_1A5248804();
  sub_1A410AB24();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A45C42D4(&qword_1EB13E548, sub_1A45C5CC4);
  swift_getWitnessTable();
  sub_1A45C42D4(&unk_1EB127B30, sub_1A410AB24);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D11B28()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D11B60()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D11BA0()
{
  v1 = (type metadata accessor for LemonadeGenerativeMemoriesConfiguration() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[11];
  v4 = sub_1A5244854();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3D11C9C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[10]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    sub_1A45D5148(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[11];
      goto LABEL_5;
    }

    sub_1A45D5148(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[13];
      goto LABEL_5;
    }

    sub_1A45D5148(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[15];
      goto LABEL_5;
    }

    sub_1A45D5148(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[16];
      goto LABEL_5;
    }

    v20 = sub_1A5246F24();
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[19];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_1A3D12020(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return result;
  }

  sub_1A45D5148(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  sub_1A45D5148(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[13];
    goto LABEL_5;
  }

  sub_1A45D5148(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[15];
    goto LABEL_5;
  }

  sub_1A45D5148(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[16];
    goto LABEL_5;
  }

  v20 = sub_1A5246F24();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[19];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1A3D12410()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D12450()
{
  v1 = (type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = sub_1A5243994();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D125A0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      sub_1A45DE59C(0, &unk_1EB1246F0, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3D126F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1A5246F24();
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
      sub_1A45DE59C(0, &unk_1EB1246F0, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D1284C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52488E4();
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

uint64_t sub_1A3D1290C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A52488E4();
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3D129CC()
{
  v1 = (type metadata accessor for FeedbackButton(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v1[7];
  v4 = sub_1A52488E4();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3D12B08()
{
  sub_1A45DEFA4();
  sub_1A5248804();
  sub_1A45DF058(&qword_1EB128A10, sub_1A45DEFA4);
  return swift_getWitnessTable();
}

uint64_t sub_1A3D12BA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1A3D12BF0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3D12C14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D12C58()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D12CBC()
{
  swift_getAssociatedTypeWitness();
  sub_1A5247914();

  return swift_getWitnessTable();
}

uint64_t sub_1A3D12D30()
{
  type metadata accessor for OneUpSharePlaySessionCoordinator();
  sub_1A5247914();

  return swift_getWitnessTable();
}

uint64_t sub_1A3D12DB8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D12DF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D12E70()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D12EA8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D12F08()
{
  v1 = (type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0) - 8);
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

uint64_t sub_1A3D13094(uint64_t a1)
{
  sub_1A45F8C38(0, &qword_1EB13E9A0, sub_1A45F9DF0, sub_1A424ADF0, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D13134(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3D131E0(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D13284(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1A3D13330(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1A3D133E8()
{
  sub_1A45F8C38(255, &qword_1EB13E9A0, sub_1A45F9DF0, sub_1A424ADF0, MEMORY[0x1E697F960]);
  sub_1A45FA8B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D134CC()
{
  sub_1A52498E4();
  sub_1A3C57458(&qword_1EB141DF0, MEMORY[0x1E697C720]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A45F8804(255, &qword_1EB13E9C0, sub_1A45FB0A8, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A5248A84();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D136E0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D13718()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D13760()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1379C(uint64_t a1, uint64_t a2)
{
  sub_1A45F8804(0, &qword_1EB13E9C0, sub_1A45FB0A8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D13830(uint64_t a1)
{
  sub_1A45F8804(0, &qword_1EB13E9C0, sub_1A45FB0A8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D13904()
{
  sub_1A45FD868();
  sub_1A5249934();
  sub_1A3C57458(&qword_1EB13EB80, sub_1A45FD868);
  sub_1A3C57458(&qword_1EB13EB88, MEMORY[0x1E697C778]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D139EC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D13A28(uint64_t a1, uint64_t a2)
{
  sub_1A4600718(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D13A8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A4600398(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
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
      sub_1A4600398(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1A3D13C10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1A4600398(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
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
      sub_1A4600398(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D13DE0(uint64_t a1, uint64_t a2)
{
  sub_1A4600398(0, &qword_1EB13EC78, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel, MEMORY[0x1E697DA80]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3D13E7C(uint64_t a1, uint64_t a2)
{
  sub_1A4600398(0, &qword_1EB13EC78, type metadata accessor for PhotosDynamicHeaderLegibilityOverlayPreviewModel, MEMORY[0x1E697DA80]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3D13F30()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

__n128 sub_1A3D13F74(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3D13FA0()
{
  swift_unknownObjectRelease();
  if (*(v0 + 40) != 1)
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D14038(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C6B740(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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
      sub_1A3C6B740(0, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3D141BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3C6B740(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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
      sub_1A3C6B740(0, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D14340()
{
  sub_1A460A1E4();
  sub_1A460A094();
  sub_1A46098E0(&qword_1EB13EE90, sub_1A460A094);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D14440(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1A5248714();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3D144F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1A5248714();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D1459C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D145D8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D14610()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D14648(char *a1, uint64_t a2, int *a3)
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

  v8 = sub_1A5243334();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for LemonadeShelfBodyStyle(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1A5244094();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_1A3D147B4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1A5243334();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for LemonadeShelfBodyStyle(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1A5244094();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1A3D14920(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3CB6B10(0, &qword_1EB13EFB0, &qword_1EB1206D0, off_1E771F918, MEMORY[0x1E697DA80]);
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
      sub_1A3C4C344(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3D14AA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3CB6B10(0, &qword_1EB13EFB0, &qword_1EB1206D0, off_1E771F918, MEMORY[0x1E697DA80]);
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
      sub_1A3C4C344(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D14CB4()
{
  v1 = (type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider.SharedLibrarySuggestionsPlaceholderView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  sub_1A3CB6B10(0, &qword_1EB13EFE8, &qword_1EB1206D0, off_1E771F918, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A3CB6B10(0, &qword_1EB13EFF0, &qword_1EB1206D0, off_1E771F918, MEMORY[0x1E6981E98]);

  v5 = v2 + v1[10];
  sub_1A3C4C344(0, &qword_1EB133680, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E6981E90]);
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1A3C4C344(0, &qword_1EB127228, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A3D14EC8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D14F00()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D14F38()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D14F80()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D14FB8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A46115F8(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D15064(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A46115F8(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D15108()
{
  sub_1A461239C();
  sub_1A46152FC();
  sub_1A46118F0();
  sub_1A4615620(&qword_1EB13F0F8, sub_1A46118F0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D151F8(uint64_t a1, uint64_t a2)
{
  sub_1A461559C(0, &qword_1EB13F0A0, sub_1A4611F6C, sub_1A3F332F4, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D152A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D152E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D15330()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D15368(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1A3D15414(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1A3D1554C()
{
  sub_1A4619F58();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A3D15610()
{
  sub_1A4619F58();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A3D156E0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D15720()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D15768()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D157AC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D157E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D1582C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D15864()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1589C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D158E8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D15920()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D15994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A462FEA8(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1A462FEA8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
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

void sub_1A3D15B00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A462FEA8(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1A462FEA8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1A3D15C6C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D15CA4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D15CE4()
{
  v1 = type metadata accessor for GenerativeStoryInternalMenuView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1A462FEA8(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v5 = v4;
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v4))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_1A462FEA8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D15F68(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C6B7A4(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D16048(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3C6B7A4(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D16168(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D16214(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D162B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A3D16374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1A3D16488()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D164C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D16500()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D16578()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D165B0()
{
  sub_1A463B040(0, &qword_1EB124B48, type metadata accessor for StoryAsyncPlayer, off_1E7721028);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1A524CBF4();
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80) + 16) & ~*(v7 + 80);
  (*(v3 + 8))(v0 + v4, v2);

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1A3D16758()
{
  v1 = sub_1A524CBF4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D16830()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D16868()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D168B0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D16914()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1694C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
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
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1A3D16A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
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
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }
}

uint64_t sub_1A3D16B34(uint64_t a1, uint64_t a2)
{
  sub_1A463E2F4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D16B98()
{
  v1 = (type metadata accessor for LemonadePlaceholderView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  sub_1A463F968(0, &qword_1EB1272B0, sub_1A42545B4, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A463F968(0, &qword_1EB127220, sub_1A42545B4, MEMORY[0x1E6981E98]);

  if (*(v0 + v2 + v1[17]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D16D74()
{
  v1 = (type metadata accessor for LemonadePlaceholderView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];
  sub_1A463F968(0, &qword_1EB1272B0, sub_1A42545B4, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A463F968(0, &qword_1EB127220, sub_1A42545B4, MEMORY[0x1E6981E98]);

  if (*(v2 + v1[17]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D16F48()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D16F98()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D16FE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D17020()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1705C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D170B0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D170E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4650B00(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3D171D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A4650B00(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }
}

uint64_t sub_1A3D172CC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D17320()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D17358()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D17390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeNavigationDestination();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1A3C377C8(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_1A3D174D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LemonadeNavigationDestination();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1A3C377C8(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1A3D17610()
{
  sub_1A465DA2C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A3D176D4()
{
  sub_1A465DA2C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D1775C(char *a1, uint64_t a2, int *a3)
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

  v8 = sub_1A5243334();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for LemonadeShelfBodyStyle(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1A5244094();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_1A3D178C8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1A5243334();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for LemonadeShelfBodyStyle(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1A5244094();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1A3D17A34()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D17A6C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D17AA4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D17ADC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D17B14()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D17B54()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D17B8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D17BE4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D17C1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D17C54()
{
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for PhotosSearchResults(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    v5 = sub_1A52411C4();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D17E28()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D17E70()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D17EBC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D17EF4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D17F3C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D17F8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D17FC4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1800C()
{
  sub_1A4676CF4();
  sub_1A5248804();
  sub_1A4676D58();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D18078()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D180B0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D180F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5243AC4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D181A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5243AC4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D18248()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D18280()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D182B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D182F8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D18338()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1837C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D183CC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D18404()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1843C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D18474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    sub_1A4680304(0, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A3D18560(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    sub_1A4680304(0, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D18680()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D186B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D186F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D18728()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D187BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D187FC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D18834(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C4C460(0, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1A3D18920(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_1A3C4C460(0, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D18A50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D18A88()
{
  v1 = sub_1A52444C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D18B4C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D18BA4()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D18BDC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D18C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A46A1D84(0, &qword_1EB13FEC8, a3, type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord, off_1E77210B0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);

  (*(v6 + 8))(v3 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1A3D18D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A46A1D84(0, &qword_1EB13FEC8, a3, type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord, off_1E77210B0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v6 + 8))(v3 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1A3D18E40()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D18E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A46A1D84(0, &qword_1EB13FEC8, a3, type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord, off_1E77210B0);
  (*(*(v4 - 8) + 8))(v3 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80)), v4);

  return swift_deallocObject();
}

uint64_t sub_1A3D18F3C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D18F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5243624();
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
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1A3D19044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5243624();
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
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1A3D19100()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D19138()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D19178()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D191B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D191F0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A46A4C64(0, &qword_1EB136178, type metadata accessor for LemonadeCollectionCustomizationView);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D192BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A46A4C64(0, &qword_1EB136178, type metadata accessor for LemonadeCollectionCustomizationView);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D19388()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D193C0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D193FC()
{
  v1 = (type metadata accessor for StoryAsyncPlayerView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  sub_1A46A7148(0, &qword_1EB1272B8, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A46A7148(0, &qword_1EB127240, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A3D19534(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A46A7148(0, &qword_1EB13FFD8, MEMORY[0x1E697DA80]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D19600(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A46A7148(0, &qword_1EB13FFD8, MEMORY[0x1E697DA80]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D196C0()
{
  sub_1A46A6EB0();
  type metadata accessor for StoryAsyncPlayer();
  sub_1A46A6DEC();
  sub_1A46A6F84();
  sub_1A46A7354(&qword_1EB12A488, type metadata accessor for StoryAsyncPlayer);
  swift_getOpaqueTypeConformance2();
  sub_1A46A7354(&qword_1EB12A490, type metadata accessor for StoryAsyncPlayer);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D197D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A46A74F0(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D198B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A46A74F0(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D1998C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D199C8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D19A00()
{
  type metadata accessor for SocialGroupView.AssetView();
  swift_getWitnessTable();
  type metadata accessor for LemonadeInlineStoryPlayerView();
  sub_1A5249754();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D19AD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D19B0C()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D19B44()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D19B7C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D19BBC()
{
  sub_1A46AEB0C();
  sub_1A46AE444(255, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
  sub_1A46AF12C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeNavigationStack();
  sub_1A46AF234();
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A46B0138(&qword_1EB127AA8, sub_1A46AF234);
  return swift_getWitnessTable();
}

uint64_t sub_1A3D19D5C(uint64_t a1)
{
  sub_1A46AE444(0, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D19DFC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D19E34()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D19E74()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D19EAC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D19EEC()
{
  sub_1A5248464();
  sub_1A5248834();
  sub_1A5249754();
  sub_1A46B7C40();
  sub_1A46B7CF4();
  sub_1A46B7D64(&qword_1EB1401B8, sub_1A46B7CF4);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A5248834();
  sub_1A46B7A58();
  sub_1A5248804();
  sub_1A5249754();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A46B7D64(&qword_1EB1401C0, sub_1A46B7A58);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D1A164(uint64_t a1, uint64_t a2)
{
  sub_1A46B8F28(0, &qword_1EB124730, MEMORY[0x1E697DCC0]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3D1A1EC(uint64_t a1, uint64_t a2)
{
  sub_1A46B8F28(0, &qword_1EB124730, MEMORY[0x1E697DCC0]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3D1A278()
{
  v1 = *(type metadata accessor for DismissButton() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1A46B8F28(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5248284();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D1A388()
{
  sub_1A46B8E70(255, &unk_1EB121A38, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697D670]);
  sub_1A5242424();
  sub_1A445E16C();
  sub_1A46B7D64(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D1A45C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D1A498(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5244854();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D1A58C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1A5C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C6B808(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_1A3D1A6B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_1A3C6B808(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D1A7CC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1A804()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D1A840()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1A880()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1A924()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A3D1A974()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1A9AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D1A9FC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1AA3C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D1AA74()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1AAAC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1AAE8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D1AB20(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 245)
  {
    v4 = *a1;
    if (v4 >= 0xB)
    {
      return v4 - 10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1A3D1ABC4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 245)
  {
    *result = a2 + 10;
  }

  else
  {
    v7 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D1AC68()
{
  v1 = (type metadata accessor for LemonadeBookmarkCore() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v1[7] + v2;
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

uint64_t sub_1A3D1ADD0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1AE10()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1AE48()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1AE90()
{

  return swift_deallocObject();
}

__n128 sub_1A3D1AF6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3D1AFA8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D1AFE0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1B018()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1B08C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3D1B178()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D1B288()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1B404()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1B5D4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1B614()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1B660()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1B6AC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D1B838(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D1B8E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D1B9D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D1BA08()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D1BA9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D1BAFC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D1BB34()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1BB74()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1BBCC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D1BC04()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1BC3C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D1BC78()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1BCBC()
{
  v1 = *(type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_1A5240664();
    v5 = *(v4 - 8);
    v6 = *(v5 + 8);
    v6(v0 + v2, v4);
    sub_1A3E86D04();
    v8 = *(v7 + 48);
    if (!(*(v5 + 48))(v3 + v8, 1, v4))
    {
      v6(v3 + v8, v4);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D1BE58()
{
  sub_1A4720940();
  type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(255);
  sub_1A4720AB0();
  sub_1A472468C(255, &qword_1EB140C50, sub_1A4720B0C, &qword_1EB140C60, sub_1A4720B0C);
  sub_1A4720B7C(&qword_1EB140C68, sub_1A4720AB0);
  sub_1A4720B0C();
  sub_1A4720B7C(&qword_1EB140C60, sub_1A4720B0C);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1A4720ED4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D1BFE4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4720E50(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D1C0C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4720E50(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D1C198()
{
  v1 = (type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  j__swift_release(*(v2 + 8), *(v2 + 16));
  sub_1A3D35BAC(*(v2 + 24), *(v2 + 32));
  v3 = v1[9];
  sub_1A4720E50(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D1C34C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A4726EF0(0, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3D1C42C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A4726EF0(0, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D1C508()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D1C540()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D1C584()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  v4 = (*(*(v3 - 1) + 80) + 49) & ~*(*(v3 - 1) + 80);
  v13 = *(*(v3 - 1) + 64);
  v5 = v0 + v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v4, AssociatedTypeWitness);
  (*(*(v2 - 8) + 8))(v0 + v4 + v3[13], v2);

  (*(*(v1 - 8) + 8))(v0 + v4 + v3[15], v1);

  sub_1A3C53AEC(*(v5 + v3[17]), *(v5 + v3[17] + 8));
  v7 = v0 + v4 + v3[18];
  if (*(v7 + 40))
  {
    if (*(v7 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(v7);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v5 + v3[19]), *(v5 + v3[19] + 8));
  v8 = v3[20];
  sub_1A4729334(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v10 = v9;
    v11 = *(v9 - 8);
    if (!(*(v11 + 48))(v5 + v8, 1, v9))
    {
      (*(v11 + 8))(v5 + v8, v10);
    }
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + ((v13 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return swift_deallocObject();
}

uint64_t sub_1A3D1C8CC()
{
  sub_1A5242C44();
  sub_1A4729334(255, &qword_1EB121E00, sub_1A4729FE8, MEMORY[0x1E69E6720]);
  swift_getWitnessTable();
  sub_1A472A264();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D1C9F8()
{
  sub_1A3F330A8();
  sub_1A5248804();
  sub_1A4731210(&qword_1EB127C80, sub_1A3F330A8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeDetailsNavigationButton();
  sub_1A5242C04();
  swift_getWitnessTable();
  sub_1A4731210(&qword_1EB129158, MEMORY[0x1E69C2160]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  sub_1A524B514();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeDetailsNavigationContextMenu();
  sub_1A524DF24();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D1CDF0()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for LemonadeDetailsNavigationContextMenu() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);
  v4 = v2[12];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v3 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3D1CF84()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3D1D004()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3D1D1C8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1D248()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D1D280()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1D2B8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D1D2F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1D338()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D1D374()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D1D3AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D1D48C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D1D4D8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D1D510()
{
  sub_1A3C333F8();

  return swift_deallocObject();
}

uint64_t sub_1A3D1D630()
{
  sub_1A4778934(255);
  sub_1A5249E64();
  sub_1A4778C48();
  sub_1A4775218(&qword_1EB127A50, MEMORY[0x1E697CB70]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D1D6D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A524BB74();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D1D784(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A524BB74();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D1D834(uint64_t a1, uint64_t a2)
{
  sub_1A477C424(0, &qword_1EB1415F8, sub_1A477C4B4);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D1D8B4(uint64_t a1)
{
  sub_1A477C424(0, &qword_1EB1415F8, sub_1A477C4B4);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D1D92C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D1D964()
{
  sub_1A477CC94();
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v3 = sub_1A5246F74();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D1DA70()
{
  v1 = sub_1A5246F74();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D1DC20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D1DD14()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1DD4C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1DD84()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D1DDCC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeICloudLinksShelfProvider();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D1DE78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeICloudLinksShelfProvider();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D1DFC0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3D1E044()
{
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  type metadata accessor for LemonadeFeedContents();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getWitnessTable();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A5242CE4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5243204();
  swift_getWitnessTable();
  sub_1A3C36CA4(&unk_1EB129110, MEMORY[0x1E69C23C0]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v0 = MEMORY[0x1E69E6158];
  swift_getOpaqueTypeMetadata2();
  v1 = MEMORY[0x1E69E6720];
  sub_1A3C399DC(255, &qword_1EB126FA0, v0, MEMORY[0x1E69E6720]);
  swift_getOpaqueTypeConformance2();
  sub_1A4781D3C(&qword_1EB126F90, &qword_1EB126FA0, v0);
  swift_getOpaqueTypeMetadata2();
  v2 = MEMORY[0x1E69E6370];
  sub_1A3C399DC(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], v1);
  swift_getOpaqueTypeConformance2();
  sub_1A4781D3C(&qword_1EB126DE8, &qword_1EB126DF0, v2);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D1E620(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D1E6CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D1E770(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1A3D1E81C(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1A3D1E974()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D1E9B4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D1E9EC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D1EA34()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1EA84(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1A3D1EB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1A3D1EC00()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D1EC38()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1EC70()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1ECB0()
{

  return swift_deallocObject();
}

__n128 sub_1A3D1ECF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3D1ED1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A478C514(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3D1EDFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_1A478C514(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D1EED0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A478C514(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
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
      sub_1A478C514(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1A3D1F054(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A478C514(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
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
      sub_1A478C514(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D1F1D8()
{
  sub_1A478E5A8();
  sub_1A3C48C7C(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
  sub_1A478FBCC();
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A524DF24();
  sub_1A4790094(255);
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A5247D04();
  sub_1A479D500(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  sub_1A5248804();
  sub_1A479012C();
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A3E754D0();
  swift_getWitnessTable();
  sub_1A478EE38(&qword_1EB141B48, sub_1A479012C);
  swift_getWitnessTable();
  type metadata accessor for LemonadeCollectionCustomizationNavigationView();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1A439AF64();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getOpaqueTypeConformance2();
  swift_getAssociatedConformanceWitness();
  sub_1A478EE38(&qword_1EB141B60, sub_1A439AF64);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeCollectionCustomizationPhotosPickerModifier();
  sub_1A5248804();
  type metadata accessor for LemonadeAnalyticsViewTimeTracker();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A478EE38(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D1F7CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A478C514(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D1F8AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A478C514(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D1F994()
{
  v1 = type metadata accessor for LemonadeCollectionCustomizationAction(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 32))
  {

    if (*(v2 + 40))
    {
    }
  }

  if (*(v2 + 64))
  {
  }

  v3 = *(v1 + 28);
  sub_1A3F31578(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 32);
  sub_1A3E71AC8(0);
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

uint64_t sub_1A3D1FB84()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1FBE4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D1FC1C()
{
  v1 = type metadata accessor for LemonadeCollectionCustomizationTitleField(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 88))
  {

    if (*(v2 + 96))
    {
    }
  }

  if (*(v2 + 120))
  {
  }

  v3 = *(v1 + 44);
  sub_1A3F31578(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D1FDDC(uint64_t a1, uint64_t a2)
{
  sub_1A478E98C(0, &unk_1EB141A90, sub_1A45AC794, sub_1A3EC18C4, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D1FE84()
{
  sub_1A5248464();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A47A0B5C();
  swift_getOpaqueTypeConformance2();
  sub_1A478EE38(&qword_1EB141EF8, sub_1A47A0B5C);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A5248834();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D20084()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D20120()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D20178(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A47BAAFC(0, &unk_1EB142218, MEMORY[0x1E697DA80]);
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
      sub_1A47BB5C0(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3D202E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A47BAAFC(0, &unk_1EB142218, MEMORY[0x1E697DA80]);
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
      sub_1A47BB5C0(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D20464()
{
  sub_1A47BB204();
  sub_1A47BB338();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D204BC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D204FC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D20534()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D205A4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D205E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1A47C1970(0, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1A3D2070C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1A47C1970(0, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1A3D20834()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D20884()
{
  sub_1A3C52C70(255, &qword_1EB120AB0);
  sub_1A47C2304();
  sub_1A47C2358();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D20900()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D20950()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D209AC(uint64_t a1)
{
  sub_1A47C6AF0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D20A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A47C8120(0, &qword_1EB124930, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E697DA80]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1A47C8120(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
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

void sub_1A3D20B74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A47C8120(0, &qword_1EB124930, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E697DA80]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1A47C8120(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1A3D20CE8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D20D4C()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D20E28()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D20E60()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D20E98(uint64_t a1, uint64_t a2)
{
  sub_1A47DB0B0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D20EFC(uint64_t a1)
{
  sub_1A47DB0B0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D20FB4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D20FF4()
{
  v1 = sub_1A5244EE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D21098()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D210DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D21188(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D2122C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2126C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D212A8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D212E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A47E31C8(0, &qword_1EB1429A0, a3, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E697DA80]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3D213C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A47E31C8(0, &qword_1EB1429A0, a3, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E697DA80]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D214A4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D214DC()
{
  sub_1A3D639BC(255);
  sub_1A5248804();
  type metadata accessor for LemonadeNavigationContext(255);
  sub_1A47E6458(255, &qword_1EB128468, sub_1A457B820);
  sub_1A3C7A370(&qword_1EB127950, sub_1A3D639BC);
  swift_getWitnessTable();
  sub_1A3C7A370(&qword_1EB129D48, type metadata accessor for LemonadeNavigationContext);
  sub_1A457B848();
  swift_getOpaqueTypeMetadata2();
  sub_1A47E6458(255, &qword_1EB1288B0, sub_1A457B99C);
  swift_getOpaqueTypeConformance2();
  sub_1A457B9F4();
  sub_1A457BA48();
  swift_getOpaqueTypeMetadata2();
  sub_1A457B820(255);
  swift_getOpaqueTypeConformance2();
  sub_1A457B8EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D21758(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A47EDD68(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D21804(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A47EDD68(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D21910(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A47EEA30(0, &qword_1EB124968, &type metadata for AccountViewTip, MEMORY[0x1E697DA80]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3D219E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A47EEA30(0, &qword_1EB124968, &type metadata for AccountViewTip, MEMORY[0x1E697DA80]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D21AAC(uint64_t a1, uint64_t a2)
{
  sub_1A47EE324(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3D21B50(uint64_t a1, uint64_t a2)
{
  sub_1A47EE324(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3D21BF8()
{
  v1 = (type metadata accessor for AccountViewTipModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];
  sub_1A47EEA30(0, &qword_1EB1272D8, &type metadata for AccountViewTip, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A47EEA30(0, &qword_1EB127280, &type metadata for AccountViewTip, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A3D21D60(uint64_t a1, uint64_t a2)
{
  sub_1A47EB044(0, &qword_1EB123E48, sub_1A47EB25C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D21DFC(uint64_t a1, uint64_t a2)
{
  sub_1A47EAB00(0, &qword_1EB1231C0, sub_1A47EAE70, sub_1A43D0964, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D21EA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D21EE0()
{
  sub_1A47EE47C(255);
  sub_1A47EE91C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D21F58()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D21FDC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D22024()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D2205C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D2209C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D220D4()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 64);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D22134()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D22194()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D221DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D22224()
{
  v1 = sub_1A5244A54();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D22374()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D223AC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D22414(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A52414C4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3D224C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A52414C4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D22564()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2259C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D225D4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D22610()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D22668()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_1A3D226A0@<X0>(void *a1@<X8>)
{
  result = PHObject.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A3D226CC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D22708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3D22774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3D228BC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D228F4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2292C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1A5248714();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3D229E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1A5248714();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D22A88()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D22AC8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D22B00(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4824C5C(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D22BE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4824C5C(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D22CC4()
{
  v1 = (type metadata accessor for DiagnosticsRootView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D22DF8()
{
  v1 = (type metadata accessor for DiagnosticsRootView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[10];
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D22F9C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D22FDC()
{
  sub_1A4826598(255, &qword_1EB143208, MEMORY[0x1E697F960]);
  sub_1A5249754();
  sub_1A5249754();
  sub_1A524B514();
  sub_1A5248394();
  sub_1A5248804();
  sub_1A4825E10();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A48263E4(&qword_1EB128940, MEMORY[0x1E697C028]);
  return swift_getWitnessTable();
}

uint64_t sub_1A3D23160(uint64_t a1)
{
  sub_1A4826598(0, &qword_1EB143208, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D231DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D2321C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D23254()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2328C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D232E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D23320()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D23360()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D23398()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A3D23410()
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

uint64_t sub_1A3D23540()
{

  return swift_deallocObject();
}

__n128 sub_1A3D23584(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1A3D235A4()
{
  v1 = (type metadata accessor for LemonadeBookmark(0) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

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

uint64_t sub_1A3D23718()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D23758()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D237A0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A52411C4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3D2384C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A52411C4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D238F0()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D23970()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D239AC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3D23A90()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D23AC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D23BA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D23C7C()
{
  sub_1A484CC28();
  sub_1A5243064();
  sub_1A484D69C(&qword_1EB1436E0, sub_1A484CC28);
  sub_1A484D69C(&qword_1EB124DE0, MEMORY[0x1E69C2380]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D23D64()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D23D9C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D23E6C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1A3D23EBC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D23EFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D23F48(uint64_t a1, uint64_t a2)
{
  sub_1A48564A4(0, &qword_1EB143790, sub_1A4856454);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D23FD0(uint64_t a1)
{
  sub_1A48564A4(0, &qword_1EB143790, sub_1A4856454);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D24050(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      sub_1A3C6B86C(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3D241A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1A5243624();
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
      sub_1A3C6B86C(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D2430C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D24354()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D2438C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D243D4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D2440C()
{
  sub_1A3EBB1B4();
  sub_1A5248804();
  v0 = MEMORY[0x1E6980A08];
  sub_1A48606A8(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A5248804();
  sub_1A48606A8(255, &qword_1EB127988, &type metadata for LemonadeCellSpec, v0);
  sub_1A5248804();
  v1 = MEMORY[0x1E6980A08];
  sub_1A485C108(255, &qword_1EB127958, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A48606A8(255, &qword_1EB127978, &type metadata for LemonadeStackSpecs, v0);
  sub_1A5248804();
  sub_1A48606A8(255, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass, v0);
  sub_1A5248804();
  sub_1A48606A8(255, &unk_1EB127930, &type metadata for LemonadeVerticalSizeClass, v0);
  sub_1A5248804();
  sub_1A48606A8(255, &unk_1EB127908, &type metadata for LemonadeRootViewOrientation, v0);
  sub_1A5248804();
  sub_1A485C108(255, &qword_1EB127728, type metadata accessor for CGSize, v1);
  sub_1A5248804();
  sub_1A485C108(255, &qword_1EB1220B0, type metadata accessor for UIEdgeInsets, v1);
  sub_1A5248804();
  sub_1A48606A8(255, &qword_1EB127968, &type metadata for LemonadeFeedZoomLevel, v0);
  sub_1A5248804();
  sub_1A4860768(&qword_1EB1277A0, sub_1A3EBB1B4);
  swift_getWitnessTable();
  sub_1A485D9D8(&qword_1EB1278A8, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A485D9D8(&qword_1EB127990, &qword_1EB127988, &type metadata for LemonadeCellSpec);
  swift_getWitnessTable();
  sub_1A485E7E8(&qword_1EB127960, &qword_1EB127958, type metadata accessor for LemonadeItemsLayoutSpec);
  swift_getWitnessTable();
  sub_1A485D9D8(&qword_1EB127980, &qword_1EB127978, &type metadata for LemonadeStackSpecs);
  swift_getWitnessTable();
  sub_1A485D9D8(&qword_1EB127928, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
  swift_getWitnessTable();
  sub_1A485D9D8(&qword_1EB127940, &unk_1EB127930, &type metadata for LemonadeVerticalSizeClass);
  swift_getWitnessTable();
  sub_1A485D9D8(&qword_1EB127918, &unk_1EB127908, &type metadata for LemonadeRootViewOrientation);
  swift_getWitnessTable();
  sub_1A485E7E8(&qword_1EB127730, &qword_1EB127728, type metadata accessor for CGSize);
  swift_getWitnessTable();
  sub_1A485E7E8(&unk_1EB1220B8, &qword_1EB1220B0, type metadata accessor for UIEdgeInsets);
  swift_getWitnessTable();
  sub_1A485D9D8(&qword_1EB127970, &qword_1EB127968, &type metadata for LemonadeFeedZoomLevel);
  return swift_getWitnessTable();
}

uint64_t sub_1A3D2494C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A486B360(0, &unk_1EB1246F0, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
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
      sub_1A486B360(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3D24AD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A486B360(0, &unk_1EB1246F0, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
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
      sub_1A486B360(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D24C68()
{
  v1 = type metadata accessor for LemonadePeopleNamingView(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v1[6];
  sub_1A45DBFC0(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5249FB4();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[7];
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5248284();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v1[8]), *(v3 + v1[8] + 8));
  sub_1A3EF9960(*(v3 + v1[9]), *(v3 + v1[9] + 8), *(v3 + v1[9] + 16), *(v3 + v1[9] + 17));

  if (*(v3 + v1[17]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D24EB8()
{
  v1 = type metadata accessor for LemonadePeopleNamingView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  v5 = v1[6];
  sub_1A45DBFC0(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5249FB4();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5248284();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  sub_1A3EF9960(*(v4 + v1[9]), *(v4 + v1[9] + 8), *(v4 + v1[9] + 16), *(v4 + v1[9] + 17));

  if (*(v4 + v1[17]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D25114(uint64_t a1, uint64_t a2)
{
  sub_1A4862174(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D252C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1A486C1B8(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A3D25330(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D253DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D25480(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeShelfBodyStyle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D2552C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

uint64_t sub_1A3D25618(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4870710(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D256F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4870710(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D257D0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4870710(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D258B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4870710(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D25A48()
{
  v1 = type metadata accessor for LemonadeNavigationDestinationView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1A48788AC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1A3DD15BC(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  v5 = v1[6];
  sub_1A48788AC(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52486A4();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  sub_1A48788AC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = v3 + v1[8];
  sub_1A48788AC(0, &qword_1EB144128, type metadata accessor for PhotosNavigationItemPaletteContentContainer, MEMORY[0x1E6981E90]);
  (*(*(v10 - 8) + 8))(v9, v10);
  sub_1A48788AC(0, &qword_1EB144130, type metadata accessor for PhotosNavigationItemPaletteContentContainer, MEMORY[0x1E6981E98]);

  v11 = (v3 + v1[9]);
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

      if (v11[8] != 1)
      {
      }

      break;
    case 0xBu:

      if (v11[5] != 1)
      {
      }

      break;
    case 0xCu:

      if (v11[2])
      {
      }

      if (v11[7])
      {
        __swift_destroy_boxed_opaque_existential_0((v11 + 4));
      }

      break;
    case 0xDu:

      if (v11[7])
      {
      }

      type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
      sub_1A5245BA4();
    case 0xEu:

      if (v11[9])
      {
      }

      type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
      sub_1A5245BA4();
    case 0xFu:

      if (v11[9])
      {
      }

      type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
      goto LABEL_52;
    case 0x10u:

      if (v11[10])
      {
      }

      type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
      goto LABEL_52;
    case 0x11u:
    case 0x21u:
    case 0x24u:
    case 0x25u:

      break;
    case 0x12u:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0((v11 + 2));

      break;
    case 0x13u:
    case 0x14u:

      break;
    case 0x15u:

      if (*(v11 + 16) != 255)
      {
      }

      break;
    case 0x16u:
      v15 = sub_1A52411C4();
      (*(*(v15 - 8) + 8))(v11, v15);

      swift_unknownObjectRelease();
LABEL_52:
      sub_1A5245BA4();
    case 0x17u:
      v14 = *(v11 + 16);
      if (v14 != 255)
      {
        sub_1A3EECFA4(*v11, v11[1], v14);
      }

      break;
    case 0x18u:
    case 0x1Bu:
    case 0x1Du:
    case 0x1Eu:
    case 0x20u:

      break;
    case 0x19u:

      if (v11[4])
      {
        __swift_destroy_boxed_opaque_existential_0((v11 + 1));
      }

      break;
    case 0x1Au:

      v12 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration() + 36);
      v13 = sub_1A5244854();
      (*(*(v13 - 8) + 8))(v11 + v12, v13);
      break;
    case 0x1Cu:
    case 0x1Fu:
    case 0x22u:
      swift_unknownObjectRelease();
      break;
    case 0x26u:

      __swift_destroy_boxed_opaque_existential_0((v11 + 2));
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D262E8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A48788AC(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_1A48788AC(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_1A48788AC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_1A48788AC(0, &qword_1EB124970, type metadata accessor for PhotosNavigationItemPaletteContentContainer, MEMORY[0x1E697DA80]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = type metadata accessor for LemonadeNavigationDestination();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[10]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_1A3D2658C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A48788AC(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1A48788AC(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      sub_1A48788AC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        sub_1A48788AC(0, &qword_1EB124970, type metadata accessor for PhotosNavigationItemPaletteContentContainer, MEMORY[0x1E697DA80]);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          result = type metadata accessor for LemonadeNavigationDestination();
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[10]) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[9];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A3D2682C()
{
  sub_1A487AB5C(255);
  sub_1A488AD70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D26884()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D268BC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D26904()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D26954()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D2698C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D269CC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D26A20()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D26A60()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D26A98()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D26AE4(uint64_t a1, int a2)
{
  if (a2 != 0x7FFFFFFF)
  {
    sub_1A5246734();
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3D26B90(uint64_t result, int a2, int a3)
{
  if (a3 != 0x7FFFFFFF)
  {
    sub_1A5246734();
  }

  *(result + 8) = (a2 - 1);
  return result;
}

uint64_t sub_1A3D26C34()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D26C6C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D26CC4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D26D00()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D26D48()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D26D80()
{
  sub_1A3F6D768();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A3D26E4C()
{
  sub_1A3F6D768();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D26ED4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D26F1C(uint64_t a1, uint64_t a2)
{
  sub_1A489E0DC(0, &qword_1EB144328, sub_1A489DD24);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D26FA4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D26FE4(uint64_t a1, uint64_t a2)
{
  sub_1A48A19F4(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3D27080(uint64_t a1, uint64_t a2)
{
  sub_1A48A19F4(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3D27120(uint64_t a1, uint64_t a2)
{
  sub_1A48A2188(0, &qword_1EB144458, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D271A0(uint64_t a1)
{
  sub_1A48A2188(0, &qword_1EB144458, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D27224()
{

  return swift_deallocObject();
}

__n128 sub_1A3D2726C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3D27278()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D272C8()
{
  v1 = (type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for GenerativeStorySuggestion(0);
  v5 = *(*(v4 - 1) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = *(*(v4 - 1) + 64);
  swift_unknownObjectRelease();

  v8 = v1[7];
  v9 = sub_1A5246F24();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  v10 = v0 + v6;

  v11 = v4[6];
  v12 = sub_1A5244A24();
  (*(*(v12 - 8) + 8))(v0 + v6 + v11, v12);
  v13 = v4[7];
  v14 = sub_1A5244A54();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v6 + v13, 1, v14))
  {
    (*(v15 + 8))(v10 + v13, v14);
  }

  v16 = v4[8];
  v17 = sub_1A5244984();
  (*(*(v17 - 8) + 8))(v10 + v16, v17);

  return swift_deallocObject();
}

uint64_t sub_1A3D27558(uint64_t a1, uint64_t a2)
{
  sub_1A46115F8(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3D275C4(uint64_t a1, uint64_t a2)
{
  sub_1A46115F8(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3D27634(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A48C0438(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3D27714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A48C0438(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D277E8()
{
  sub_1A48BEB0C();
  sub_1A48BEF54(&qword_1EB144610, sub_1A48BEB0C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D2788C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D278C4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D278FC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D27934()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2796C()
{

  return swift_deallocObject();
}

__n128 sub_1A3D279B8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3D27A00()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3D27B14()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D27B8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D27BC4()
{
  v7 = *(v0 + 16);
  v1 = type metadata accessor for LemonadeAlbumCell();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80));
  (*(*(v7 - 8) + 8))(v2, v7);
  v3 = *(v1 + 60);
  v4 = sub_1A52430A4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D27D6C()
{
  v7 = *(v0 + 16);
  v1 = type metadata accessor for LemonadeAlbumCell();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80));
  (*(*(v7 - 8) + 8))(v2, v7);
  v3 = *(v1 + 60);
  v4 = sub_1A52430A4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D27F18(uint64_t a1, uint64_t a2)
{
  sub_1A48CBDD8(0, &qword_1EB144630, sub_1A48CA498, sub_1A4005524, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D27FC0(uint64_t a1)
{
  sub_1A48CBDD8(0, &qword_1EB144630, sub_1A48CA498, sub_1A4005524, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D28060(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1A3D28178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1A3D28288()
{
  type metadata accessor for LemonadeAlbumGridCell();
  sub_1A48CBDD8(255, &unk_1EB127ED0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
  sub_1A43DC444();
  sub_1A5243EA4();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D283E8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D28430()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D284B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D28500()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D28540()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2858C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D28638(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D286DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A48DE838(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
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

void sub_1A3D287C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A48DE838(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3D288B0()
{
  sub_1A48DD5C0();
  sub_1A48DD674(&qword_1EB144AB0, sub_1A48DD5C0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D28A4C()
{
  swift_unknownObjectRelease();
  MEMORY[0x1A590F020](v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1A3D28A8C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D28AC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D28AFC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D28B34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3D28BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3D28CB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5241534();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D28D5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5241534();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D28E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5241534();
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

uint64_t sub_1A3D28EBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5241534();
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

uint64_t sub_1A3D28F78(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A48F185C(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  sub_1A48F185C(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  sub_1A48F185C(0, &qword_1EB144CA0, MEMORY[0x1E69C2788], MEMORY[0x1E697DCC0]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[11]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1A5243C94();
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[12];
      goto LABEL_7;
    }

    v16 = sub_1A5243C84();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v7 = v16;
      v8 = *(v16 - 8);
      v9 = a3[13];
      goto LABEL_7;
    }

    v17 = sub_1A5243CE4();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[14];

    return v18(v19, a2, v17);
  }
}

void sub_1A3D29250(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A48F185C(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v14 = *(v10 + 56);

    v14(a1 + v11, a2, a2, v9);
    return;
  }

  sub_1A48F185C(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_1A48F185C(0, &qword_1EB144CA0, MEMORY[0x1E69C2788], MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11]) = (a2 - 1);
    return;
  }

  v15 = sub_1A5243C94();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v16 = sub_1A5243C84();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v17 = sub_1A5243CE4();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  v18(v19, a2, a2, v17);
}

uint64_t sub_1A3D29574()
{

  return swift_deallocObject();
}

__n128 sub_1A3D295C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3D295CC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhotosPreferenceObserver();
  v4 = sub_1A5247CB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3D29648(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhotosPreferenceObserver();
  v4 = sub_1A5247CB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3D296DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D29714()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D2975C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D297A4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D297F8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D29920()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D29A0C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D29A5C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D29B58()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D29B98()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D29BD0()
{
  v1 = (type metadata accessor for LemonadePeoplePlaceholderView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[8];
  sub_1A4910054(0, &qword_1EB1213F8, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A4910054(0, &qword_1EB1213C0, MEMORY[0x1E6981E98]);

  v5 = v0 + v2 + v1[9];
  v6 = MEMORY[0x1E6981E90];
  sub_1A3C56B68(0, &qword_1EB121418, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E6981E90]);
  (*(*(v7 - 8) + 8))(v5, v7);
  v8 = MEMORY[0x1E6981E98];
  sub_1A3C56B68(0, &qword_1EB1213E8, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E6981E98]);

  v9 = v0 + v2 + v1[10];
  sub_1A3C56B68(0, &qword_1EB121428, type metadata accessor for LemonadePeopleProgressStatus, v6);
  (*(*(v10 - 8) + 8))(v9, v10);
  sub_1A3C56B68(0, &qword_1EB127238, type metadata accessor for LemonadePeopleProgressStatus, v8);

  return swift_deallocObject();
}

uint64_t sub_1A3D29E58(char *a1, uint64_t a2, int *a3)
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

  sub_1A4910054(0, &qword_1EB124900, MEMORY[0x1E697DA80]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  sub_1A3C56B68(0, &qword_1EB124928, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E697DA80]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_1A3C56B68(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[8]];

  return v16(v17, a2, v15);
}

char *sub_1A3D2A040(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A4910054(0, &qword_1EB124900, MEMORY[0x1E697DA80]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1A3C56B68(0, &qword_1EB124928, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E697DA80]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_1A3C56B68(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[8]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A3D2A228()
{
  sub_1A490F838();
  sub_1A49102A8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D2A280()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D2A2B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D2A308()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D2A340()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D2A378()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D2A3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D2A464(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D2A504(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = &a1[*(a3 + 20)];

    return v10(v11, a2, v9);
  }
}

_BYTE *sub_1A3D2A5DC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 20)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D2A6AC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2A6F4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D2A72C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2A76C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2A7B4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2A7EC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2A82C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D2A864()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2A89C(uint64_t a1, uint64_t a2)
{
  sub_1A492DFB8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D2A900(uint64_t a1)
{
  sub_1A492DFB8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D2A960(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A492FC70(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3D2AA40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A492FC70(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D2AB14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3D2ABD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3D2AC90()
{
  sub_1A492A390();
  sub_1A5249C44();
  sub_1A492A990(&qword_1EB1451E8, 255, sub_1A492A390);
  sub_1A492A990(&qword_1EB13A710, 255, MEMORY[0x1E697C938]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D2AD70()
{
  sub_1A492DB8C();
  sub_1A492A990(&qword_1EB1452C8, 255, sub_1A492DB8C);
  sub_1A3D5F9DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D2AE10()
{
  sub_1A492EE0C();
  sub_1A492E828(&qword_1EB145340, sub_1A492EE0C, sub_1A492F18C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D2AEFC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2AF4C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2B000()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D2B038()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2B070()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1A3D2B0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A493D238(0, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
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
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1A3D2B1A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A493D238(0, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
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
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }
}

uint64_t sub_1A3D2B33C(uint64_t a1, uint64_t a2)
{
  sub_1A49435B0(0, &qword_1EB1454D0, sub_1A493D6A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D2B3F4()
{
  sub_1A5248464();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A5247D04();
  swift_getWitnessTable();
  sub_1A5248834();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D2B4DC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A4945CC0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 24)];

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A4945CC0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = &a1[*(a3 + 28)];

      return v15(v16, a2, v14);
    }
  }
}

_BYTE *sub_1A3D2B658(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1A4945CC0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 24)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A4945CC0(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = &v5[*(a4 + 28)];

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3D2B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4945CC0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
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

void sub_1A3D2B8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A4945CC0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }
}

uint64_t sub_1A3D2BA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1A52472B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3D2BAA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_1A52472B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D2BB48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3D2BB80()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2BBC0()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D2BC08()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D2BC40()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2BD40()
{
  v1 = (type metadata accessor for TTRWorkflowSheetHostingView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1A3C4D38C(0, &qword_1EB145AC0, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel, MEMORY[0x1E6981AA0]);
  (*(*(v3 - 8) + 8))(v2, v3);
  if (*(v2 + v1[7]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D2BE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C4D38C(0, &qword_1EB145AC0, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel, MEMORY[0x1E6981AA0]);
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

void sub_1A3D2BF5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3C4D38C(0, &qword_1EB145AC0, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel, MEMORY[0x1E6981AA0]);
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

uint64_t sub_1A3D2C044()
{
  type metadata accessor for TTRWorkflowSheetPresentation(255);
  sub_1A5248804();
  sub_1A49573EC();
  return swift_getWitnessTable();
}

uint64_t sub_1A3D2C0B0()
{
  sub_1A49570AC();
  sub_1A49572A4();
  sub_1A49572F4();
  sub_1A4957444();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D2C128(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A3C4D38C(0, &qword_1EB121CA0, sub_1A3EE53E0, MEMORY[0x1E6981790]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3D2C208(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A3C4D38C(0, &qword_1EB121CA0, sub_1A3EE53E0, MEMORY[0x1E6981790]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D2C2E0()
{
  sub_1A4957854();
  sub_1A4957D6C();
  sub_1A4957928();
  sub_1A49572A4();
  sub_1A495798C(&qword_1EB122258, sub_1A4957928);
  sub_1A4957444();
  swift_getOpaqueTypeConformance2();
  sub_1A4957EB4();
  sub_1A4957F08();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D2C43C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A4958458(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = &a1[*(a3 + 24)];

    return v10(v11, a2, v9);
  }
}

_BYTE *sub_1A3D2C514(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    sub_1A4958458(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 24)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D2C5E4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2C61C()
{
  v1 = sub_1A52486A4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D2C6A4()
{
  sub_1A495C378();
  sub_1A3EC1A14();
  sub_1A495CAC4(&qword_1EB145BB8, sub_1A495C378, sub_1A495C7D0, sub_1A3DEAC1C);
  sub_1A495BC54(&qword_1EB126FC0, sub_1A3EC1A14);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D2C798()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D2C878(uint64_t a1, uint64_t a2)
{
  sub_1A4965458();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3D2C8E4(uint64_t a1, uint64_t a2)
{
  sub_1A4965458();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3D2C954()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2C98C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3D2CA38(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D2CAE4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A4966C10(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3D2CBC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A4966C10(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3D2CC9C()
{
  v1 = sub_1A5243934();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for LemonadeSharedLibraryInvitationsCell() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  sub_1A4973574(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v8 = v7;
    v9 = *(v7 - 8);
    if (!(*(v9 + 48))(v0 + v6, 1, v7))
    {
      (*(v9 + 8))(v0 + v6, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D2CF10()
{
  v1 = sub_1A5243934();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  j__swift_release(*(v0 + v4), *(v0 + v4 + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3D2D040()
{
  v1 = sub_1A5243934();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 296) & ~*(v2 + 80);
  j__swift_release(*(v0 + 16), *(v0 + 24));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D2D190()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2D1C8()
{
  j__swift_release(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A3D2D294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4973574(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
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

void sub_1A3D2D380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A4973574(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3D2D46C()
{
  sub_1A4972DF4();
  sub_1A49730AC(&qword_1EB145ED8, sub_1A4972DF4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3D2D4F8()
{
  j__swift_release(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A3D2D5C4(uint64_t a1, uint64_t a2)
{
  sub_1A4973C80(0, &qword_1EB145F40, sub_1A49738C4);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D2D6A8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2D6EC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D2D750()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2D790()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2D800()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2D848()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2D880()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2D8E4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2D944()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2D9BC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2DA0C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2DA68()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2DAB0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2DB18()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3D2DB54()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A3D2DBA0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2DBD8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D2DC14()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3D2DCA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D2DCD8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2DD18()
{

  if (*(v0 + 24))
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D2DDA0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2DDF0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2DE28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D2DE60()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2DE98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (a2 != 0x7FFFFFFF)
    {
      sub_1A5245BA4();
    }

    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3D2DFBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    if (a3 != 0x7FFFFFFF)
    {
      sub_1A5245BA4();
    }

    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3D2E0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3D2E14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3D2E1BC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2E1F4()
{

  return swift_deallocObject();
}

__n128 sub_1A3D2E258(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3D2E278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A499C5F8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

void sub_1A3D2E36C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A499C5F8(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3D2E460(uint64_t a1, uint64_t a2)
{
  sub_1A4647D18();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D2E4C4(uint64_t a1)
{
  sub_1A4647D18();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D2E520()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2E558()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2E590()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2E5CC(uint64_t a1, uint64_t a2)
{
  sub_1A49A14A0(0, &qword_1EB1466F8, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D2E64C(uint64_t a1)
{
  sub_1A49A14A0(0, &qword_1EB1466F8, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D2E6C4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2E6FC(uint64_t a1, uint64_t a2)
{
  sub_1A49A35DC(0, &qword_1EB146700, sub_1A419A5C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D2E798(uint64_t a1)
{
  sub_1A49A35DC(0, &qword_1EB146700, sub_1A419A5C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D2E82C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3D2E868(char *a1, uint64_t a2, int *a3)
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

  sub_1A49A6B00(0, &qword_1EB146A68, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E697DA80]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_23:
    v20 = *(v10 + 48);

    return v20(&a1[v11], a2, v9);
  }

  sub_1A49AF264(0, &qword_1EB13A288, MEMORY[0x1E697DA80]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_23;
  }

  sub_1A49A6B00(0, &qword_1EB146A70, type metadata accessor for LemonadePeopleHomeView.SelectionState, MEMORY[0x1E697DA80]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_23;
  }

  sub_1A49AF2F0(0, &qword_1EB1468C0, MEMORY[0x1E697DA80]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_23;
  }

  sub_1A49A6B00(0, &qword_1EB146A20, type metadata accessor for PhotoKitSocialGroupActionManager, MEMORY[0x1E697DA80]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[12];
    goto LABEL_23;
  }

  sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[13];
    goto LABEL_23;
  }

  sub_1A49A6B00(0, &qword_1EB146A78, MEMORY[0x1E69E9420], MEMORY[0x1E697DA80]);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a3[14];
    goto LABEL_23;
  }

  sub_1A49A6B00(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a3[15];
    goto LABEL_23;
  }

  sub_1A49A6B00(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a3[16];
    goto LABEL_23;
  }

  sub_1A49A6B00(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = &a1[a3[17]];

  return v23(v24, a2, v22);
}

char *sub_1A3D2ED84(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A49A6B00(0, &qword_1EB146A68, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E697DA80]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_21:
    v20 = *(v10 + 56);

    return v20(&v5[v11], a2, a2, v9);
  }

  sub_1A49AF264(0, &qword_1EB13A288, MEMORY[0x1E697DA80]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_21;
  }

  sub_1A49A6B00(0, &qword_1EB146A70, type metadata accessor for LemonadePeopleHomeView.SelectionState, MEMORY[0x1E697DA80]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_21;
  }

  sub_1A49AF2F0(0, &qword_1EB1468C0, MEMORY[0x1E697DA80]);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_21;
  }

  sub_1A49A6B00(0, &qword_1EB146A20, type metadata accessor for PhotoKitSocialGroupActionManager, MEMORY[0x1E697DA80]);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[12];
    goto LABEL_21;
  }

  sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[13];
    goto LABEL_21;
  }

  sub_1A49A6B00(0, &qword_1EB146A78, MEMORY[0x1E69E9420], MEMORY[0x1E697DA80]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[14];
    goto LABEL_21;
  }

  sub_1A49A6B00(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[15];
    goto LABEL_21;
  }

  sub_1A49A6B00(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a4[16];
    goto LABEL_21;
  }

  sub_1A49A6B00(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = &v5[a4[17]];

  return v23(v24, a2, a2, v22);
}