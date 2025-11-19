void sub_1A413807C()
{
  if (!qword_1EB133078)
  {
    sub_1A41368E8();
    sub_1A4136B78(255, &qword_1EB132FD8, sub_1A41367D4, sub_1A4136808);
    sub_1A4136A2C();
    sub_1A41367D4(255);
    sub_1A4136808();
    swift_getOpaqueTypeConformance2();
    sub_1A3C9AD6C(&qword_1EB133060, sub_1A4136A2C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133078);
    }
  }
}

void sub_1A41381F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4138258(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A4137DAC(0, &unk_1EB133080, sub_1A41370D4);
  sub_1A4133B84(a1 + *(v2 + 44));
}

uint64_t objectdestroy_43Tm_0()
{
  v1 = type metadata accessor for LemonadeMapView();
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  swift_unknownObjectRelease();
  v3 = v1[9];
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  j__swift_release(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  v5 = v1[11];
  sub_1A4134F68(0, &qword_1EB124898, 255, MEMORY[0x1E697CC88], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5249FB4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A4138500()
{
  type metadata accessor for LemonadeMapView();
  sub_1A3CA6BB4(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v1 = v0;

  MEMORY[0x1A5906C60](&v3, v1);
  sub_1A524B904();
}

void sub_1A4138610()
{
  v1 = *(v0 + 16);
  sub_1A524BC74();
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  v4 = sub_1A524C674();
  v6 = v5;

  v25 = v4;
  v26 = v6;
  sub_1A3D5F9DC();
  v7 = sub_1A524A464();
  v22 = v8;
  v23 = v7;
  v21 = v9;
  v10 = v1 + *(type metadata accessor for LemonadeMapView() + 60);
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v25 = *v10;
  v11 = v25;
  v26 = v12;
  v27 = v13;
  sub_1A3CA6BB4(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v15 = v14;
  MEMORY[0x1A5906C60](&v24);
  v16 = sub_1A524C634();
  v17 = PXLocalizedString(v16);

  v18 = sub_1A524C674();
  v20 = v19;

  v25 = v18;
  v26 = v20;
  sub_1A524A464();
  v25 = v11;
  v26 = v12;
  v27 = v13;
  MEMORY[0x1A5906C60](&v24, v15);
  LOBYTE(v25) = v21 & 1;
  LOBYTE(v24) = v21 & 1;
  sub_1A3E75E68(v23, v22, v21 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A413895C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41389C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3 + *(type metadata accessor for LemonadeMapView() + 60);
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 16);
  v17 = v5;
  v18 = v6;
  v19 = v4;
  sub_1A3CA6BB4(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v16);
  v7 = sub_1A524C634();

  v8 = PXLocalizedString(v7);

  v9 = sub_1A524C674();
  v11 = v10;

  v17 = v9;
  v18 = v11;
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_1A4138AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4138B50()
{
  v1 = *(type metadata accessor for LemonadeMapView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4133904(v2);
}

uint64_t sub_1A4138C60(uint64_t a1, uint64_t a2)
{
  sub_1A4137ABC(0, &qword_1EB124280, &type metadata for MapOptions, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4138CF0(uint64_t a1)
{
  sub_1A4137ABC(0, &qword_1EB124280, &type metadata for MapOptions, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4138D78()
{
  if (!qword_1EB127568)
  {
    sub_1A524BD64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB127568);
    }
  }
}

uint64_t objectdestroyTm_29()
{
  j__swift_release(*(v0 + 16), *(v0 + 24));

  if (*(v0 + 208))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 184);
  }

  return swift_deallocObject();
}

void sub_1A4138EC8()
{
  if (!qword_1EB129B18)
  {
    type metadata accessor for LemonadeNavigationDestinationView();
    sub_1A3C9AD6C(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);
    v0 = type metadata accessor for LemonadeNavigationContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129B18);
    }
  }
}

void sub_1A4138F64()
{
  if (!qword_1EB133090)
  {
    sub_1A4138EC8();
    sub_1A3C9AD6C(&qword_1EB129B28, sub_1A4138EC8);
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133090);
    }
  }
}

void sub_1A4138FF8(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_1A3C4B7E8(255, a3, a4);
    v5 = sub_1A524B6D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4139054()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  PHPhotoLibrary.fetcher.getter();
  v8 = *(v0 + 112);
  sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0);
  sub_1A524B6A4();
  if (v13)
  {
    v3 = PhotoKitFetcher.fetchAssetsWithLocation(inCollection:libraryFilterViewMode:)(v13, *(v0 + 312));

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      *(v6 + 24) = v2;
      v11 = sub_1A41391EC;
      v12 = v6;
      *&v8 = MEMORY[0x1E69E9820];
      *(&v8 + 1) = 1107296256;
      v9 = sub_1A3C2E0D0;
      v10 = &block_descriptor_69_0;
      v7 = _Block_copy(&v8);

      [v5 loadFetchResult:v3 withCompletion:v7];

      _Block_release(v7);
      v3 = v5;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A41391EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    aBlock[4] = sub_1A41392F8;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_75_0;
    v6 = _Block_copy(aBlock);

    [v4 reloadContentModeWithCompletion_];
    _Block_release(v6);
  }
}

void sub_1A41392F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v1;
    aBlock[4] = sub_1A4139404;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_81;
    v6 = _Block_copy(aBlock);

    [v4 resumeWithCompletion_];
    _Block_release(v6);
  }
}

void sub_1A4139410()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong focusOnProvidedAssetsAnimated_];
  }
}

uint64_t sub_1A413946C()
{
  sub_1A3CA6BB4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if (v3 == 1)
  {
    sub_1A524B6A4();
    sub_1A524B6A4();
    if ((v3 & 1) != 0 || (sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0), sub_1A524B6A4(), !v3))
    {
      sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0);
      sub_1A524B6A4();
      sub_1A524B6B4();
      sub_1A4138FF8(0, &qword_1EB121B90, &qword_1EB1206A0, &qword_1EB1206A8);
      result = sub_1A524B6A4();
      v2 = v3;
      if (!v3)
      {
        __break(1u);
        __break(1u);
        return result;
      }

      [v3 setContentMode_];
    }

    else
    {
      v1 = v3;
      sub_1A524B6B4();
      sub_1A4138FF8(0, &qword_1EB121B90, &qword_1EB1206A0, &qword_1EB1206A8);
      sub_1A524B6A4();
      v2 = v3;
      [v3 setContentMode_];
    }

    return sub_1A41305C8(0);
  }

  return result;
}

uint64_t sub_1A4139790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A41397F8()
{
  result = qword_1EB1330A0;
  if (!qword_1EB1330A0)
  {
    sub_1A4137FDC();
    sub_1A41368E8();
    sub_1A4136B78(255, &qword_1EB132FD8, sub_1A41367D4, sub_1A4136808);
    sub_1A4136A2C();
    sub_1A41367D4(255);
    sub_1A4136808();
    swift_getOpaqueTypeConformance2();
    sub_1A3C9AD6C(&qword_1EB133060, sub_1A4136A2C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3E754D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1330A0);
  }

  return result;
}

uint64_t AssetEntity.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A4139E58();
  swift_getKeyPath();
  sub_1A3F58824();
  sub_1A413AF64();
  a2[1] = sub_1A523FE14();
  sub_1A413AFB8(0, &qword_1EB1260E0, &qword_1EB12AFE0, MEMORY[0x1E6969530], sub_1A413B040);
  swift_getKeyPath();
  a2[2] = sub_1A523FE24();
  sub_1A4142D60(0, &qword_1EB1260C0, sub_1A40D7C08, MEMORY[0x1E69E6370], MEMORY[0x1E695A088]);
  swift_getKeyPath();
  a2[3] = sub_1A523FE54();
  swift_getKeyPath();
  a2[4] = sub_1A523FE54();
  sub_1A413AFB8(0, &qword_1EB1330A8, &qword_1EB1330B0, MEMORY[0x1E696B1F0], sub_1A413B310);
  swift_getKeyPath();
  v4 = MEMORY[0x1E696B1F0];
  sub_1A413CDA0(&qword_1EB1330C8, MEMORY[0x1E696B1F0]);
  sub_1A413CDA0(&qword_1EB1330D0, v4);
  a2[5] = sub_1A523FE74();
  a2[6] = sub_1A523FE44();
  sub_1A413B7F0();
  a2[7] = sub_1A523FE64();
  a2[8] = sub_1A523FE64();
  sub_1A413BEA0();
  sub_1A413C238();
  a2[9] = sub_1A523FE04();
  sub_1A413C28C();
  a2[10] = sub_1A523FE44();
  a2[11] = sub_1A523FE64();
  result = sub_1A523FE64();
  a2[12] = result;
  *a2 = a1;
  return result;
}

void sub_1A4139E58()
{
  if (!qword_1EB1260D0)
  {
    sub_1A4143DA0(255, &qword_1EB125CE8, &type metadata for AssetEntity.MediaType, MEMORY[0x1E69E6720]);
    sub_1A413B8AC(&qword_1EB125CE0, &qword_1EB125CE8, &type metadata for AssetEntity.MediaType, sub_1A4139F14);
    v0 = sub_1A523FE84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1260D0);
    }
  }
}

unint64_t sub_1A4139F14()
{
  result = qword_1EB125D30;
  if (!qword_1EB125D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D30);
  }

  return result;
}

id AssetEntity.id.getter()
{
  result = [*v0 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AssetEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_1A5240214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5246E54();
  v19 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[5];
  v27 = v1[4];
  v28 = v10;
  v29 = *(v1 + 12);
  v11 = v1[1];
  v23 = *v1;
  v24 = v11;
  v12 = v1[3];
  v25 = v1[2];
  v26 = v12;
  sub_1A524D654();
  v20 = sub_1A4895DCC();
  v13 = *v20;
  sub_1A5246E44();
  sub_1A5246E04();

  v14 = *(v7 + 8);
  v14(v9, v6);
  v15 = MEMORY[0x1E695A3C0];
  sub_1A3C7CFAC(0, &qword_1EB131A00, MEMORY[0x1E695A3C0], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A52FC9F0;
  sub_1A52401F4();
  sub_1A5240204();
  v22 = v16;
  sub_1A413CDA0(&qword_1EB1260B8, MEMORY[0x1E695A3C0]);
  sub_1A3C7CFAC(0, &qword_1EB131A08, v15, MEMORY[0x1E69E62F8]);
  sub_1A40D8DE4();
  sub_1A524E224();
  sub_1A413A330(v5, v21);
  (*(v3 + 8))(v5, v2);
  sub_1A524D644();
  v17 = *v20;
  sub_1A5246E44();
  sub_1A5246E04();

  return (v14)(v9, v19);
}

uint64_t sub_1A413A330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a1;
  v24 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1A3C7CFAC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23 = v20 - v5;
  v6 = sub_1A5240BB4();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A5240214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], v3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v20[0] = *v2;
  v17 = sub_1A5240244();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1A5240204();
  sub_1A413CDA0(&qword_1EB1260B8, MEMORY[0x1E695A3C0]);
  v18 = sub_1A524E114();
  (*(v8 + 8))(v10, v7);
  if (v18)
  {
    sub_1A413A930(v20[0]);
  }

  sub_1A5240B94();
  (*(v21 + 56))(v23, 1, 1, v22);
  sub_1A4143C08(v16, v13);
  sub_1A5240264();
  return sub_1A4143C9C(v16, &qword_1EB12B0F0, MEMORY[0x1E695A3E8]);
}

uint64_t AssetEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  v4 = sub_1A5246E54();
  *(v3 + 136) = v4;
  *(v3 + 144) = *(v4 - 8);
  *(v3 + 152) = swift_task_alloc();
  v5 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  *(v3 + 112) = *(v2 + 96);
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  v7 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A413A7D0, 0, 0);
}

uint64_t sub_1A413A7D0()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  sub_1A524D654();
  v6 = sub_1A4895DCC();
  v7 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8 = *(v2 + 8);
  v8(v1, v3);
  sub_1A413A330(v4, v5);
  sub_1A524D644();
  v9 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8(v1, v3);

  v10 = v0[1];

  return v10();
}

void sub_1A413A930(void *a1)
{
  v2 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  PXDisplayRepresentationImage(for:badgeName:)(a1);
}

unint64_t static AssetEntity.entities(for:)(void *a1)
{
  result = [a1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = [a1 objectAtIndexedSubscript_];
      AssetEntity.init(_:)(v6, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A4140FB0(0, *(v5 + 2) + 1, 1, v5);
      }

      v8 = *(v5 + 2);
      v7 = *(v5 + 3);
      if (v8 >= v7 >> 1)
      {
        v5 = sub_1A4140FB0((v7 > 1), v8 + 1, 1, v5);
      }

      ++v4;

      *(v5 + 2) = v8 + 1;
      v9 = &v5[104 * v8];
      v10 = v15[0];
      v11 = v15[2];
      *(v9 + 3) = v15[1];
      *(v9 + 4) = v11;
      *(v9 + 2) = v10;
      v12 = v15[3];
      v13 = v15[4];
      v14 = v15[5];
      *(v9 + 16) = v16;
      *(v9 + 6) = v13;
      *(v9 + 7) = v14;
      *(v9 + 5) = v12;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

id AssetEntity.assetType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*v1 mediaType];
  if (result >= 4)
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000018, 0x80000001A53C8C80);
    type metadata accessor for PHAssetMediaType(0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id sub_1A413AF28@<X0>(_BYTE *a1@<X8>)
{
  result = AssetEntity.assetType.getter(&v3);
  *a1 = v3;
  return result;
}

unint64_t sub_1A413AF64()
{
  result = qword_1EB125D40;
  if (!qword_1EB125D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D40);
  }

  return result;
}

void sub_1A413AFB8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1A3C7CFAC(255, a3, a4, MEMORY[0x1E69E6720]);
    a5();
    v7 = sub_1A523FE84();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A413B040()
{
  result = qword_1EB126028;
  if (!qword_1EB126028)
  {
    sub_1A3C7CFAC(255, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    sub_1A413CDA0(&qword_1EB126030, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126028);
  }

  return result;
}

uint64_t AssetEntity.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1A52410F4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1A5241144();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1A413B1BC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1A52410F4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1A5241144();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

id sub_1A413B284@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFavorite];
  *a2 = result;
  return result;
}

id sub_1A413B2DC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isHidden];
  *a2 = result;
  return result;
}

unint64_t sub_1A413B310()
{
  result = qword_1EB1330B8;
  if (!qword_1EB1330B8)
  {
    sub_1A3C7CFAC(255, &qword_1EB1330B0, MEMORY[0x1E696B1F0], MEMORY[0x1E69E6720]);
    sub_1A413CDA0(&qword_1EB1330C0, MEMORY[0x1E696B1F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1330B8);
  }

  return result;
}

uint64_t AssetEntity.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 location];
  if (v3)
  {
    v4 = v3;
    sub_1A3C7CFAC(0, &qword_1EB133128, MEMORY[0x1E696B1E8], MEMORY[0x1E69E6F90]);
    v5 = sub_1A5241584();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    v9 = (v8 + v7);
    v10 = v4;
    [v10 coordinate];
    *v9 = v11;
    v9[1] = v12;
    (*(v6 + 104))(v9, *MEMORY[0x1E696B1E0], v5);
    sub_1A5241594();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_1A52415A4();
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, v13, 1, v14);
}

uint64_t sub_1A413B5D0(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413B67C;

  return sub_1A4A4EB70(v3);
}

uint64_t sub_1A413B67C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A413B7C8, 0, 0);
  }
}

void sub_1A413B7F0()
{
  if (!qword_1EB1330D8)
  {
    v0 = MEMORY[0x1E69E63B0];
    sub_1A4143DA0(255, &qword_1EB126D90, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1A413B8AC(&qword_1EB1330E0, &qword_1EB126D90, v0, sub_1A413B938);
    v1 = sub_1A523FE84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1330D8);
    }
  }
}

uint64_t sub_1A413B8AC(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A4143DA0(255, a2, a3, MEMORY[0x1E69E6720]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A413B938()
{
  result = qword_1EB1330E8;
  if (!qword_1EB1330E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1330E8);
  }

  return result;
}

uint64_t AssetEntity.hasSuggestedEdits.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A413BA34;

  return sub_1A4A4EB70(v2);
}

uint64_t sub_1A413BA34(char a1)
{
  v4 = *v2;

  v5 = *(v4 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1A413BB40(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413BBEC;

  return sub_1A4A4EDD4(v3);
}

uint64_t sub_1A413BBEC(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A4143DF4, 0, 0);
  }
}

uint64_t AssetEntity.aperture.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4143DF0;

  return sub_1A4A4EDD4(v2);
}

uint64_t sub_1A413BDF4(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413BBEC;

  return sub_1A4A4F42C(v3);
}

void sub_1A413BEA0()
{
  if (!qword_1EB1330F0)
  {
    sub_1A4143DA0(255, &qword_1EB1330F8, &type metadata for AssetEntity.FilterEffect, MEMORY[0x1E69E6720]);
    sub_1A413B8AC(&qword_1EB133100, &qword_1EB1330F8, &type metadata for AssetEntity.FilterEffect, sub_1A413BF5C);
    v0 = sub_1A523FE84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1330F0);
    }
  }
}

unint64_t sub_1A413BF5C()
{
  result = qword_1EB133108;
  if (!qword_1EB133108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133108);
  }

  return result;
}

uint64_t AssetEntity.exposure.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4143DF0;

  return sub_1A4A4F42C(v2);
}

uint64_t sub_1A413C058(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413C104;

  return sub_1A4A4F0AC(v3);
}

uint64_t sub_1A413C104(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[4] = a1;
  v4[5] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4143E1C, 0, 0);
  }
}

unint64_t sub_1A413C238()
{
  result = qword_1EB133110;
  if (!qword_1EB133110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133110);
  }

  return result;
}

void sub_1A413C28C()
{
  if (!qword_1EB133118)
  {
    v0 = MEMORY[0x1E69E6370];
    sub_1A4143DA0(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    sub_1A413B8AC(&qword_1EB133120, &qword_1EB126DF0, v0, sub_1A40D7C08);
    v1 = sub_1A523FE84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133118);
    }
  }
}

uint64_t AssetEntity.filter.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413C3F4;

  return sub_1A4A4F0AC(v3);
}

uint64_t sub_1A413C3F4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[4] = a1;
  v4[5] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A413C528, 0, 0);
  }
}

uint64_t sub_1A413C528()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 32);
    AssetEntity.FilterEffect.init(rawValue:)(*(&v1 - 1));
    v3 = v6;
  }

  else
  {
    v3 = 10;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

PhotosUICore::AssetEntity::FilterEffect_optional __swiftcall AssetEntity.FilterEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A413C608(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413C6B4;

  return sub_1A4A4F710(v3);
}

uint64_t sub_1A413C6B4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A413C800, 0, 0);
  }
}

uint64_t AssetEntity.isPortraitModeEnabled.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBB594;

  return sub_1A4A4F710(v2);
}

uint64_t sub_1A413C8CC(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413C978;

  return sub_1A4A4F9D4(v3);
}

uint64_t sub_1A413C978(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A413CAD8, 0, 0);
  }
}

uint64_t sub_1A413CAD8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  *(v2 + 8) = v1 & 1;
  return (*(v0 + 8))();
}

uint64_t AssetEntity.saturation.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A413CBB0;

  return sub_1A4A4F9D4(v2);
}

uint64_t sub_1A413CBB0(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2 & 1);
  }
}

uint64_t sub_1A413CCF4(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A413BBEC;

  return sub_1A4A4FCB8(v3);
}

uint64_t sub_1A413CDA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AssetEntity.warmth.getter()
{
  v2 = *v0;
  type metadata accessor for PXAssetEntityEditResourceLoader();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A4143DF0;

  return sub_1A4A4FCB8(v2);
}

uint64_t sub_1A413CE90()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v59 = v41 - v2;
  sub_1A3C7CFAC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = v41 - v4;
  v58 = sub_1A5240BA4();
  v5 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5240BB4();
  v47 = v14;
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4143A60(0, &qword_1EB133200, &qword_1EB133208);
  sub_1A4143AB8(0, &qword_1EB133208);
  v18 = v17;
  v56 = v17;
  v19 = *(v17 - 8);
  v50 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A531D3E0;
  v54 = v21 + v20;
  v42 = *(v18 + 48);
  v43 = v21;
  *(v21 + v20) = 0;
  sub_1A524C5B4();
  v44 = v10;
  sub_1A5241244();
  v57 = *MEMORY[0x1E6968DF0];
  v55 = *(v5 + 104);
  v49 = v5 + 104;
  v46 = v7;
  v22 = v58;
  v55(v7);
  v23 = v16;
  sub_1A5240BC4();
  v48 = *(v60 + 56);
  v60 += 56;
  v24 = v52;
  v48(v52, 1, 1, v14);
  v53 = sub_1A5240244();
  v25 = *(v53 - 8);
  v45 = *(v25 + 56);
  v51 = v25 + 56;
  v45(v59, 1, 1, v53);
  v26 = v54;
  v27 = v23;
  v28 = v24;
  sub_1A5240264();
  v29 = v50;
  v30 = v56;
  v42 = *(v56 + 48);
  *(v26 + v50) = 1;
  v41[1] = v13;
  sub_1A524C5B4();
  sub_1A5241244();
  (v55)(v46, v57, v22);
  v41[0] = v27;
  sub_1A5240BC4();
  v31 = v47;
  v32 = v48;
  v48(v28, 1, 1, v47);
  v33 = v45;
  v45(v59, 1, 1, v53);
  sub_1A5240264();
  v41[2] = *(v30 + 48);
  v42 = 2 * v29;
  *(v54 + 2 * v29) = 2;
  sub_1A524C5B4();
  sub_1A5241244();
  v34 = v46;
  (v55)(v46, v57, v58);
  sub_1A5240BC4();
  v35 = v52;
  v32(v52, 1, 1, v31);
  v36 = v59;
  v33(v59, 1, 1, v53);
  v37 = v35;
  sub_1A5240264();
  v38 = (v54 + v42 + v50);
  v50 = *(v56 + 48);
  *v38 = 3;
  sub_1A524C5B4();
  sub_1A5241244();
  (v55)(v34, v57, v58);
  sub_1A5240BC4();
  v48(v37, 1, 1, v47);
  v45(v36, 1, 1, v53);
  sub_1A5240264();
  v39 = sub_1A41416BC(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EB1AA6A8 = v39;
  return result;
}

void static AssetEntity.MediaType.caseDisplayRepresentations.getter()
{
  if (qword_1EB1AA6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t static AssetEntity.MediaType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1EB1AA6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB1AA6A8 = a1;
}

uint64_t (*static AssetEntity.MediaType.caseDisplayRepresentations.modify())()
{
  if (qword_1EB1AA6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_1A413D828(void *a1@<X8>)
{
  if (qword_1EB1AA6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB1AA6A8;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

PhotosUICore::AssetEntity::MediaType_optional __swiftcall AssetEntity.MediaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AssetEntity.MediaType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6F65646976;
  if (*v0 != 2)
  {
    v2 = 0x6F69647561;
  }

  if (*v0)
  {
    v1 = 0x6567616D69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A413DA04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F65646976;
    }

    else
    {
      v4 = 0x6F69647561;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6567616D69;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6F65646976;
  if (a2 != 2)
  {
    v7 = 0x6F69647561;
  }

  if (a2)
  {
    v2 = 0x6567616D69;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1A524EAB4();
  }

  return v10 & 1;
}

uint64_t sub_1A413DB28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C616E696769726FLL;
  v3 = a1;
  if (a1 > 4u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x6469766976;
    v13 = 0x7261576469766976;
    v14 = 0xE90000000000006DLL;
    if (a1 != 8)
    {
      v13 = 0x6F6F436469766976;
      v14 = 0xE90000000000006CLL;
    }

    if (a1 != 7)
    {
      v12 = v13;
      v11 = v14;
    }

    v15 = 0xE400000000000000;
    v16 = 1919512430;
    if (a1 != 5)
    {
      v16 = 0x6F747265766C6973;
      v15 = 0xEA0000000000656ELL;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v12;
    }

    if (v3 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = 0x636974616D617264;
    v5 = 0xEC0000006C6F6F43;
    v6 = 0x636974616D617264;
    v7 = 0xEC0000006D726157;
    if (a1 != 3)
    {
      v6 = 1869508461;
      v7 = 0xE400000000000000;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x636974616D617264;
    if (!a1)
    {
      v8 = 0x6C616E696769726FLL;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v3 <= 1)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v18 = 0xE400000000000000;
        if (v9 != 1919512430)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v18 = 0xEA0000000000656ELL;
        if (v9 != 0x6F747265766C6973)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v18 = 0xE500000000000000;
      if (v9 != 0x6469766976)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v18 = 0xE90000000000006DLL;
      if (v9 != 0x7261576469766976)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v2 = 0x6F6F436469766976;
    v18 = 0xE90000000000006CLL;
    goto LABEL_50;
  }

  if (a2 <= 1u)
  {
    v18 = 0xE800000000000000;
    if (a2)
    {
      if (v9 != 0x636974616D617264)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

LABEL_50:
    if (v9 != v2)
    {
LABEL_54:
      v19 = sub_1A524EAB4();
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  if (a2 == 2)
  {
    v17 = 1819242307;
  }

  else
  {
    if (a2 != 3)
    {
      v18 = 0xE400000000000000;
      if (v9 != 1869508461)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v17 = 1836212567;
  }

  v18 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v9 != 0x636974616D617264)
  {
    goto LABEL_54;
  }

LABEL_51:
  if (v10 != v18)
  {
    goto LABEL_54;
  }

  v19 = 1;
LABEL_55:

  return v19 & 1;
}

uint64_t sub_1A413DE28()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A413DEDC()
{
  sub_1A524C794();
}

uint64_t sub_1A413DF7C()
{
  sub_1A524C794();
}

uint64_t sub_1A413E0F8()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A413E1B4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x6F65646976;
  if (*v1 != 2)
  {
    v4 = 0x6F69647561;
  }

  if (*v1)
  {
    v3 = 0x6567616D69;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t AssetEntity.FilterEffect.identifier.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x64697669564433;
    v7 = 0x5764697669564433;
    if (v1 != 8)
    {
      v7 = 0x4364697669564433;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x72696F4E4433;
    if (v1 != 5)
    {
      v8 = 0x7265766C69534433;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 1701736270;
    v3 = 0x74616D6172444433;
    v4 = 0x74616D6172444433;
    if (v1 != 3)
    {
      v4 = 1869508429;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x74616D6172444433;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t AssetEntity.FilterEffect.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6469766976;
    v7 = 0x7261576469766976;
    if (v1 != 8)
    {
      v7 = 0x6F6F436469766976;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 1919512430;
    if (v1 != 5)
    {
      v8 = 0x6F747265766C6973;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C616E696769726FLL;
    v3 = 0x636974616D617264;
    v4 = 0x636974616D617264;
    if (v1 != 3)
    {
      v4 = 1869508461;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x636974616D617264;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1A413E4DC()
{
  sub_1A524EC94();
  sub_1A413DF7C();
  return sub_1A524ECE4();
}

uint64_t sub_1A413E52C()
{
  sub_1A524EC94();
  sub_1A413DF7C();
  return sub_1A524ECE4();
}

uint64_t sub_1A413E57C@<X0>(uint64_t *a1@<X8>)
{
  result = AssetEntity.FilterEffect.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A413E5AC(uint64_t a1)
{
  v2 = sub_1A4143A0C();

  return MEMORY[0x1EEDB39B0](a1, v2);
}

uint64_t sub_1A413E5F8(uint64_t a1)
{
  v2 = sub_1A3F58824();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1A413E648(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return AssetEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_1A413E6F0(uint64_t a1)
{
  v2 = sub_1A4142C78();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t AssetEntityQuery.entities(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A5246F24();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1A5246E54();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A413E864, 0, 0);
}

uint64_t sub_1A413E864()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[10] = *(v0[2] + 16);
  sub_1A524D654();
  v4 = sub_1A4895DCC();
  v0[11] = v4;
  v5 = *v4;
  sub_1A5246E44();
  sub_1A5246E04();

  v6 = *(v2 + 8);
  v0[12] = v6;
  v0[13] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  type metadata accessor for PXAppDependencyManager();
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A413E9C0;

  return sub_1A4896234();
}

uint64_t sub_1A413E9C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 120) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A413EB20, 0, 0);
  }
}

id sub_1A413EB20()
{
  v1 = v0[15];
  v2 = [v1 librarySpecificFetchOptions];
  [v2 setIncludeGuestAssets_];

  v3 = objc_opt_self();
  v4 = sub_1A524CA14();
  v5 = [v3 fetchAssetsWithLocalIdentifiers:v4 options:v2];

  if ([v5 count] < 1)
  {
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    v12 = sub_1A3CB648C();
    (*(v10 + 16))(v9, v12, v11);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = [v5 fetchedObjects];
  if (result)
  {
    v7 = result;
    sub_1A3C52C70(0, &qword_1EB126660);
    v8 = sub_1A524CA34();

    if (!(v8 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C52C70(0, &qword_1EB1265D0);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t AssetEntityQuery.displayRepresentations(for:requestedComponents:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = sub_1A5246E54();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1A413F1AC;

  return AssetEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A413F1AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1A413F4AC;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1A413F2D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A413F2D4()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v14 = v4;
  v13 = v0[2];
  sub_1A524D654();
  v5 = sub_1A4895DCC();
  v6 = *v5;
  sub_1A5246E44();
  sub_1A5246E04();

  v7 = *(v2 + 8);
  v7(v3, v4);
  v8 = swift_task_alloc();
  *(v8 + 16) = v13;
  v9 = sub_1A413F720(MEMORY[0x1E69E7CC8], sub_1A41429D8, v8, v1);

  sub_1A524D644();
  v10 = *v5;
  sub_1A5246E44();
  sub_1A5246E04();

  v7(v3, v14);

  v11 = v0[1];

  return v11(v9);
}

uint64_t sub_1A413F4AC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A413F510(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A3C7CFAC(0, &qword_1EB1260B0, MEMORY[0x1E695A3F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_1A5240274();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(a2 + 56);
  v24 = *(a2 + 40);
  v25 = v13;
  v14 = *(a2 + 88);
  v26 = *(a2 + 72);
  v27 = v14;
  v15 = *(a2 + 24);
  v22 = *(a2 + 8);
  v23 = v15;
  v21[1] = v12;
  sub_1A413A330(a3, v11);
  result = [v12 uuid];
  if (result)
  {
    v17 = result;
    v18 = sub_1A524C674();
    v20 = v19;

    (*(v9 + 16))(v7, v11, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_1A40DA2B0(v7, v18, v20);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A413F720(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v35 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; i = (i + 104))
    {
      v8 = i[3];
      v9 = i[5];
      v32 = i[4];
      v33 = v9;
      v10 = i[1];
      v29[0] = *i;
      v29[1] = v10;
      v11 = i[3];
      v13 = *i;
      v12 = i[1];
      v30 = i[2];
      v31 = v11;
      v14 = i[5];
      v26 = v32;
      v27 = v14;
      v22 = v13;
      v23 = v12;
      v34 = *(i + 12);
      v28 = *(i + 12);
      v24 = v30;
      v25 = v8;
      sub_1A3F67450(v29, &v15);
      a2(&v35, &v22);
      if (v4)
      {
        break;
      }

      v19 = v26;
      v20 = v27;
      v21 = v28;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v18 = v25;
      sub_1A3F678A8(&v15);
      if (!--v5)
      {
        return v35;
      }
    }

    v19 = v26;
    v20 = v27;
    v21 = v28;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    sub_1A3F678A8(&v15);
  }

  return result;
}

uint64_t AssetEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A5246F24();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A413F930, 0, 0);
}

uint64_t sub_1A413F930()
{
  if ((sub_1A3DEFE6C() & 1) == 0)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    v6 = sub_1A3CB648C();
    (*(v4 + 16))(v3, v6, v5);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for PXAppDependencyManager();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A413FB98;

  return sub_1A4896234();
}

uint64_t sub_1A413FB98(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 88) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A413FD00, 0, 0);
  }
}

void sub_1A413FD00()
{
  v1 = v0[11];
  v3 = v0[2];
  v2 = v0[3];
  [objc_msgSend(v1 librarySpecificFetchOptions)];

  objc_opt_self();
  sub_1A4143DA0(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4140598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A40DB798;

  return AssetEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_1A4140638(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBBB04;

  return AssetEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A41406CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return AssetEntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2);
}

uint64_t sub_1A4140768(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A4142B68();
  *v5 = v2;
  v5[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1A4140820()
{
  v0 = sub_1A523FEB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1AA6B8);
  __swift_project_value_buffer(v5, qword_1EB1AA6B8);
  sub_1A523FEC4();
  sub_1A523FEC4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF14();
}

uint64_t sub_1A41409A0()
{
  v0 = sub_1A523FE94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB16F498);
  __swift_project_value_buffer(v5, qword_1EB16F498);
  sub_1A523FEA4();
  sub_1A523FEA4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF04();
}

uint64_t sub_1A4140B2C(uint64_t a1)
{
  v2 = sub_1A41439B8();

  return MEMORY[0x1EEDB3868](a1, v2);
}

uint64_t sub_1A4140B78(uint64_t a1)
{
  v2 = sub_1A413AF64();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

void sub_1A4140BC4()
{
  if (qword_1EB1AA6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4140C3C(uint64_t a1)
{
  v2 = sub_1A414323C();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

uint64_t sub_1A4140C98()
{
  v0 = sub_1A523FE94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1AA6E8);
  __swift_project_value_buffer(v5, qword_1EB1AA6E8);
  sub_1A523FEA4();
  sub_1A523FEA4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF04();
}

uint64_t sub_1A4140E10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1A523FEF4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1A4140EB8(uint64_t a1)
{
  v2 = sub_1A4143964();

  return MEMORY[0x1EEDB3868](a1, v2);
}

uint64_t sub_1A4140F04(uint64_t a1)
{
  v2 = sub_1A413C238();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A4140F54(uint64_t a1)
{
  v2 = sub_1A4143660();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

char *sub_1A4140FB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A4143DA0(0, &qword_1EB120398, &type metadata for AssetEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A41410F0(unsigned __int8 a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  v2 = sub_1A524ECE4();

  return sub_1A4141238(a1, v2);
}

unint64_t sub_1A41411CC(unsigned __int8 a1)
{
  sub_1A524EC94();
  sub_1A413DF7C();
  v2 = sub_1A524ECE4();

  return sub_1A41413C8(a1, v2);
}

unint64_t sub_1A4141238(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v20 + 48) + v4) == 2 ? 0x6F65646976 : 0x6F69647561;
      v7 = *(*(v20 + 48) + v4) ? 0x6567616D69 : 0x6E776F6E6B6E75;
      v8 = *(*(v20 + 48) + v4) ? 0xE500000000000000 : 0xE700000000000000;
      v9 = *(*(v20 + 48) + v4) <= 1u ? v7 : v6;
      v10 = *(*(v20 + 48) + v4) <= 1u ? v8 : 0xE500000000000000;
      v11 = v5 == 2 ? 0x6F65646976 : 0x6F69647561;
      v12 = v5 ? 0x6567616D69 : 0x6E776F6E6B6E75;
      v13 = v5 ? 0xE500000000000000 : 0xE700000000000000;
      v14 = v5 <= 1 ? v12 : v11;
      v15 = v5 <= 1 ? v13 : 0xE500000000000000;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_1A524EAB4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
        if ((*(v19 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A41413C8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v25 + 48) + v4);
      if (v6 > 4)
      {
        if (*(*(v25 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v11 = 0xE400000000000000;
            v10 = 1919512430;
          }

          else
          {
            v10 = 0x6F747265766C6973;
            v11 = 0xEA0000000000656ELL;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0xE500000000000000;
          v10 = 0x6469766976;
        }

        else if (v6 == 8)
        {
          v11 = 0xE90000000000006DLL;
          v10 = 0x7261576469766976;
        }

        else
        {
          v10 = 0x6F6F436469766976;
          v11 = 0xE90000000000006CLL;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x636974616D617264;
        }

        else
        {
          v7 = 1869508461;
        }

        if (v6 == 3)
        {
          v8 = 0xEC0000006D726157;
        }

        else
        {
          v8 = 0xE400000000000000;
        }

        if (v6 == 2)
        {
          v7 = 0x636974616D617264;
          v8 = 0xEC0000006C6F6F43;
        }

        v9 = *(*(v25 + 48) + v4) ? 0x636974616D617264 : 0x6C616E696769726FLL;
        v10 = *(*(v25 + 48) + v4) <= 1u ? v9 : v7;
        v11 = *(*(v25 + 48) + v4) <= 1u ? 0xE800000000000000 : v8;
      }

      v12 = 0x7261576469766976;
      if (v5 != 8)
      {
        v12 = 0x6F6F436469766976;
      }

      v13 = 0xE90000000000006CLL;
      if (v5 == 8)
      {
        v13 = 0xE90000000000006DLL;
      }

      if (v5 == 7)
      {
        v12 = 0x6469766976;
        v13 = 0xE500000000000000;
      }

      v14 = 0x6F747265766C6973;
      if (v5 == 5)
      {
        v14 = 1919512430;
      }

      v15 = 0xEA0000000000656ELL;
      if (v5 == 5)
      {
        v15 = 0xE400000000000000;
      }

      if (v5 <= 6)
      {
        v12 = v14;
        v13 = v15;
      }

      if (v5 == 3)
      {
        v16 = 0x636974616D617264;
      }

      else
      {
        v16 = 1869508461;
      }

      if (v5 == 3)
      {
        v17 = 0xEC0000006D726157;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      if (v5 == 2)
      {
        v16 = 0x636974616D617264;
        v17 = 0xEC0000006C6F6F43;
      }

      if (v5)
      {
        v18 = 0x636974616D617264;
      }

      else
      {
        v18 = 0x6C616E696769726FLL;
      }

      if (v5 <= 1)
      {
        v16 = v18;
        v17 = 0xE800000000000000;
      }

      v19 = v5 <= 4 ? v16 : v12;
      v20 = v5 <= 4 ? v17 : v13;
      if (v10 == v19 && v11 == v20)
      {
        break;
      }

      v21 = sub_1A524EAB4();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
        if ((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A41416BC(uint64_t a1)
{
  sub_1A4143AB8(0, &qword_1EB133208);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A4143B20(0, &unk_1EB133210, sub_1A414335C);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A4143B9C(v10, v6, &qword_1EB133208);
      result = sub_1A41410F0(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1A5240274();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A41418C0(uint64_t a1)
{
  sub_1A4143AB8(0, &qword_1EB1331F0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A4143B20(0, &qword_1EB1331F8, sub_1A41437D4);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A4143B9C(v10, v6, &qword_1EB1331F0);
      result = sub_1A41411CC(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1A5240274();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _s12PhotosUICore11AssetEntityV12FilterEffectO26caseDisplayRepresentationsSDyAE10AppIntents0H14RepresentationVGvgZ_0()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v79 = &v58 - v2;
  sub_1A3C7CFAC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v58 - v4;
  v77 = sub_1A5240BA4();
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1A5240BB4();
  v76 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4143A60(0, &qword_1EB1331E8, &qword_1EB1331F0);
  sub_1A4143AB8(0, &qword_1EB1331F0);
  v15 = v14;
  v17 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v69 = *(*(v14 - 8) + 72);
  v16 = v69;
  v18 = swift_allocObject();
  v60 = v18;
  *(v18 + 16) = xmmword_1A531D3F0;
  v19 = v18 + v17;
  v59 = *(v15 + 48);
  v64 = v11;
  v65 = v15;
  *(v18 + v17) = 0;
  v62 = 0xD000000000000020;
  sub_1A524C5B4();
  sub_1A5241244();
  v74 = *MEMORY[0x1E6968DF0];
  v20 = *(v80 + 104);
  v80 += 104;
  v68 = v20;
  v20(v78);
  v21 = v8;
  sub_1A5240BC4();
  v73 = *(v76 + 56);
  v76 += 56;
  v22 = v63;
  v23 = v67;
  v73(v63, 1, 1, v67);
  v71 = sub_1A5240244();
  v24 = *(v71 - 8);
  v72 = *(v24 + 56);
  v70 = v24 + 56;
  v25 = v79;
  v72(v79, 1, 1, v71);
  v75 = v19;
  sub_1A5240264();
  v59 = *(v15 + 48);
  *(v19 + v16) = 1;
  sub_1A524C5B4();
  v66 = v21;
  sub_1A5241244();
  v26 = v68;
  v68(v78, v74, v77);
  sub_1A5240BC4();
  v73(v22, 1, 1, v23);
  v27 = v71;
  v72(v25, 1, 1, v71);
  v61 = v13;
  sub_1A5240264();
  v62 = 2 * v69;
  v28 = v65;
  v59 = *(v65 + 48);
  *(v75 + 2 * v69) = 2;
  sub_1A524C5B4();
  sub_1A5241244();
  v26(v78, v74, v77);
  sub_1A5240BC4();
  v29 = v67;
  v73(v22, 1, 1, v67);
  v72(v79, 1, 1, v27);
  sub_1A5240264();
  v30 = v69;
  v59 = v75 + v62 + v69;
  v62 = *(v28 + 48);
  *v59 = 3;
  sub_1A524C5B4();
  sub_1A5241244();
  v31 = v78;
  v32 = v68;
  v68(v78, v74, v77);
  sub_1A5240BC4();
  v33 = v63;
  v73(v63, 1, 1, v29);
  v34 = v72;
  v72(v79, 1, 1, v71);
  sub_1A5240264();
  v59 = 4 * v30;
  v35 = v65;
  v58 = *(v65 + 48);
  *(v75 + 4 * v30) = 4;
  v62 = 0xD00000000000001CLL;
  sub_1A524C5B4();
  sub_1A5241244();
  v32(v31, v74, v77);
  sub_1A5240BC4();
  v36 = v67;
  v73(v33, 1, 1, v67);
  v37 = v71;
  v34(v79, 1, 1, v71);
  sub_1A5240264();
  v58 = v75 + v59 + v69;
  v59 = *(v35 + 48);
  *v58 = 5;
  sub_1A524C5B4();
  sub_1A5241244();
  v38 = v77;
  v39 = v74;
  v68(v78, v74, v77);
  sub_1A5240BC4();
  v40 = v36;
  v41 = v73;
  v73(v33, 1, 1, v40);
  v42 = v72;
  v72(v79, 1, 1, v37);
  sub_1A5240264();
  v59 = v75 + 6 * v69;
  v62 = *(v65 + 48);
  *v59 = 6;
  sub_1A524C5B4();
  sub_1A5241244();
  v43 = v38;
  v44 = v68;
  v68(v78, v39, v43);
  sub_1A5240BC4();
  v45 = v63;
  v46 = v67;
  v41(v63, 1, 1, v67);
  v42(v79, 1, 1, v71);
  sub_1A5240264();
  v62 = 8 * v69;
  v58 = v75 + 7 * v69;
  v47 = v65;
  v59 = *(v65 + 48);
  *v58 = 7;
  sub_1A524C5B4();
  sub_1A5241244();
  v48 = v74;
  v44(v78, v74, v77);
  sub_1A5240BC4();
  v49 = v46;
  v50 = v73;
  v73(v45, 1, 1, v49);
  v51 = v71;
  v52 = v72;
  v72(v79, 1, 1, v71);
  sub_1A5240264();
  v58 = v75 + v62;
  v59 = *(v47 + 48);
  *v58 = 8;
  sub_1A524C5B4();
  sub_1A5241244();
  v53 = v78;
  v68(v78, v48, v77);
  sub_1A5240BC4();
  v54 = v63;
  v50(v63, 1, 1, v67);
  v55 = v79;
  v52(v79, 1, 1, v51);
  sub_1A5240264();
  *(v75 + v62 + v69) = 9;
  sub_1A524C5B4();
  sub_1A5241244();
  v68(v53, v74, v77);
  sub_1A5240BC4();
  v73(v54, 1, 1, v67);
  v72(v55, 1, 1, v71);
  sub_1A5240264();
  v56 = sub_1A41418C0(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v56;
}

unint64_t sub_1A4142A08()
{
  result = qword_1EB125D00;
  if (!qword_1EB125D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D00);
  }

  return result;
}

unint64_t sub_1A4142A60()
{
  result = qword_1EB133130;
  if (!qword_1EB133130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133130);
  }

  return result;
}

unint64_t sub_1A4142AB8()
{
  result = qword_1EB125CC0;
  if (!qword_1EB125CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CC0);
  }

  return result;
}

unint64_t sub_1A4142B10()
{
  result = qword_1EB125C98;
  if (!qword_1EB125C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C98);
  }

  return result;
}

unint64_t sub_1A4142B68()
{
  result = qword_1EB125B68;
  if (!qword_1EB125B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B68);
  }

  return result;
}

unint64_t sub_1A4142BC4()
{
  result = qword_1EB125CB8;
  if (!qword_1EB125CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CB8);
  }

  return result;
}

unint64_t sub_1A4142C1C()
{
  result = qword_1EB125CB0;
  if (!qword_1EB125CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CB0);
  }

  return result;
}

unint64_t sub_1A4142C78()
{
  result = qword_1EB125CA8;
  if (!qword_1EB125CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CA8);
  }

  return result;
}

unint64_t sub_1A4142CD0()
{
  result = qword_1EB133138;
  if (!qword_1EB133138)
  {
    sub_1A4142D60(255, &qword_1EB133140, sub_1A3F57FA8, &type metadata for AssetEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133138);
  }

  return result;
}

void sub_1A4142D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A4142DCC()
{
  result = qword_1EB125CA0;
  if (!qword_1EB125CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CA0);
  }

  return result;
}

unint64_t sub_1A4142E24()
{
  result = qword_1EB125B60;
  if (!qword_1EB125B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B60);
  }

  return result;
}

unint64_t sub_1A4142E7C()
{
  result = qword_1EB125B58;
  if (!qword_1EB125B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B58);
  }

  return result;
}

unint64_t sub_1A4142ED4()
{
  result = qword_1EB125B70;
  if (!qword_1EB125B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B70);
  }

  return result;
}

unint64_t sub_1A4142F2C()
{
  result = qword_1EB133148;
  if (!qword_1EB133148)
  {
    sub_1A4143DA0(255, &qword_1EB12EEB8, &type metadata for AssetEntity, MEMORY[0x1E69E62F8]);
    sub_1A3F57FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133148);
  }

  return result;
}

unint64_t sub_1A4142FCC()
{
  result = qword_1EB133150;
  if (!qword_1EB133150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133150);
  }

  return result;
}

unint64_t sub_1A4143024()
{
  result = qword_1EB133158;
  if (!qword_1EB133158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133158);
  }

  return result;
}

unint64_t sub_1A4143080()
{
  result = qword_1EB125D38;
  if (!qword_1EB125D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D38);
  }

  return result;
}

unint64_t sub_1A41430D8()
{
  result = qword_1EB125D18;
  if (!qword_1EB125D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D18);
  }

  return result;
}

unint64_t sub_1A4143130()
{
  result = qword_1EB125CF8;
  if (!qword_1EB125CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CF8);
  }

  return result;
}

unint64_t sub_1A4143188()
{
  result = qword_1EB125D20;
  if (!qword_1EB125D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D20);
  }

  return result;
}

unint64_t sub_1A41431E0()
{
  result = qword_1EB125D48;
  if (!qword_1EB125D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D48);
  }

  return result;
}

unint64_t sub_1A414323C()
{
  result = qword_1EB125D28;
  if (!qword_1EB125D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D28);
  }

  return result;
}

unint64_t sub_1A41432AC()
{
  result = qword_1EB125D10;
  if (!qword_1EB125D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D10);
  }

  return result;
}

unint64_t sub_1A4143304()
{
  result = qword_1EB125CF0;
  if (!qword_1EB125CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CF0);
  }

  return result;
}

unint64_t sub_1A414335C()
{
  result = qword_1EB125D08;
  if (!qword_1EB125D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D08);
  }

  return result;
}

uint64_t sub_1A41433E0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A4143DA0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4143448()
{
  result = qword_1EB133170;
  if (!qword_1EB133170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133170);
  }

  return result;
}

unint64_t sub_1A41434A4()
{
  result = qword_1EB133178;
  if (!qword_1EB133178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133178);
  }

  return result;
}

unint64_t sub_1A41434FC()
{
  result = qword_1EB133180;
  if (!qword_1EB133180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133180);
  }

  return result;
}

unint64_t sub_1A4143554()
{
  result = qword_1EB133188;
  if (!qword_1EB133188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133188);
  }

  return result;
}

unint64_t sub_1A41435AC()
{
  result = qword_1EB133190;
  if (!qword_1EB133190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133190);
  }

  return result;
}

unint64_t sub_1A4143604()
{
  result = qword_1EB133198;
  if (!qword_1EB133198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133198);
  }

  return result;
}

unint64_t sub_1A4143660()
{
  result = qword_1EB1331A0;
  if (!qword_1EB1331A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331A0);
  }

  return result;
}

unint64_t sub_1A4143724()
{
  result = qword_1EB1331A8;
  if (!qword_1EB1331A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331A8);
  }

  return result;
}

unint64_t sub_1A414377C()
{
  result = qword_1EB1331B0;
  if (!qword_1EB1331B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331B0);
  }

  return result;
}

unint64_t sub_1A41437D4()
{
  result = qword_1EB1331B8;
  if (!qword_1EB1331B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331B8);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A4143884(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A41438CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A4143964()
{
  result = qword_1EB1331D0;
  if (!qword_1EB1331D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331D0);
  }

  return result;
}

unint64_t sub_1A41439B8()
{
  result = qword_1EB1331D8;
  if (!qword_1EB1331D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331D8);
  }

  return result;
}

unint64_t sub_1A4143A0C()
{
  result = qword_1EB1331E0;
  if (!qword_1EB1331E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1331E0);
  }

  return result;
}

void sub_1A4143A60(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A4143AB8(255, a3);
    v4 = sub_1A524EA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4143AB8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4143B20(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    sub_1A5240274();
    a3();
    v5 = sub_1A524E7A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4143B9C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1A4143AB8(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4143C08(uint64_t a1, uint64_t a2)
{
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4143C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C7CFAC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4143D0C(uint64_t a1, uint64_t a2)
{
  sub_1A3C7CFAC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4143DA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_1A4143E20()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_1A4143EE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1A4143FB8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A4144034(v1);
}

uint64_t type metadata accessor for SharedWithYouItemObserver()
{
  result = qword_1EB1AB200;
  if (!qword_1EB1AB200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4144034(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126D00);
  v6 = v5;
  v7 = a1;
  v8 = sub_1A524DBF4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1A41441C0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

uint64_t sub_1A414424C()
{
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
  sub_1A52415D4();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1A414430C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetCollection;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A41443F4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetCollection;
  swift_beginAccess();
  *(a1 + v4) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_1A4144488(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset;
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset);
  if (!a1)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
LABEL_9:
    swift_getKeyPath();
    sub_1A52415D4();

    if (*(v1 + v4))
    {
      v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_highlightProvider);
      swift_getKeyPath();
      sub_1A52415D4();

      if (*(v1 + v4))
      {
        return [v7 unregisterChangeObserver:v1 forAsset:?];
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1A4144608(uint64_t a1)
{
  swift_getKeyPath();
  v11[0] = v1;
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset;
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset);
  if (!a1)
  {
    if (!v5)
    {
      return result;
    }

LABEL_9:
    swift_getKeyPath();
    v11[0] = v1;
    sub_1A52415D4();

    if (!*(v1 + v4))
    {
      return result;
    }

    v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_highlightProvider);
    swift_getKeyPath();
    v11[0] = v1;
    sub_1A52415D4();

    if (*(v1 + v4))
    {
      [v7 registerChangeObserver:v1 forAsset:v11[0]];
      swift_getKeyPath();
      v11[0] = v1;
      sub_1A52415D4();

      v8 = *(v1 + v4);
      if (v8)
      {
        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11[4] = sub_1A4146518;
        v11[5] = v9;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 1107296256;
        v11[2] = sub_1A3F287DC;
        v11[3] = &block_descriptor_29_1;
        v10 = _Block_copy(v11);
        swift_unknownObjectRetain();

        [v7 fetchSocialLayerHighlightForAsset:v8 completion:v10];
        _Block_release(v10);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_1A4144874(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight;
    swift_beginAccess();
    v5 = *&v3[v4];
    if (v5)
    {
      if (a1)
      {
        sub_1A3C52C70(0, &qword_1EB126D00);
        v6 = a1;
        v7 = v5;
        v8 = sub_1A524DBF4();

        if (v8)
        {
          v9 = *&v3[v4];
LABEL_11:
          *&v3[v4] = a1;

          return;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      if (!a1)
      {
        v9 = 0;
        goto LABEL_11;
      }

      v6 = a1;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
    sub_1A52415C4();
  }
}

uint64_t sub_1A4144A70()
{
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
  sub_1A52415C4();
}

uint64_t sub_1A4144B2C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset;
  v5 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset);
  swift_unknownObjectRetain();
  sub_1A4144488(a2);
  *(a1 + v4) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1A4144608(v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A4144BF0()
{
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4144CA8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
  sub_1A52415D4();

  *a3 = *(v5 + *a2);
  return swift_unknownObjectRetain();
}

char *sub_1A4144DCC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__highlight] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetCollection] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__asset] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetFetchResult] = 0;
  sub_1A5241604();
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item] = a1;
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_assetFetchResultProvider] = a2;
  *&v4[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_highlightProvider] = a3;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v9 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = *&v10[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_assetFetchResultProvider];
  v12 = v10;
  swift_unknownObjectRetain();
  [v11 registerChangeObserver:v12 forAssetCollection:{objc_msgSend(v9, sel_assetCollection, v14.receiver, v14.super_class)}];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v12;
}

void sub_1A4144F30()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1AB138);
  __swift_project_value_buffer(v0, qword_1EB1AB138);
  sub_1A5246EF4();
}

uint64_t sub_1A4144FA0()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  v9 = type metadata accessor for SharedWithYouItemObserver();
  sub_1A4146444();
  v7[0] = sub_1A524C714();
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A414648C(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C29F88(0, &qword_1EB126E40, MEMORY[0x1E69E8030]);
  sub_1A3C2A728(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1AB158 = result;
  return result;
}

uint64_t sub_1A4145224()
{
  v1 = v0;
  v2 = sub_1A524BEE4();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
  sub_1A52415D4();

  v8 = *&v0[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetFetchResult];
  swift_getKeyPath();
  aBlock[0] = v0;
  swift_unknownObjectRetain();
  sub_1A52415D4();

  v9 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetCollection;
  result = swift_beginAccess();
  if (*&v1[v9])
  {
    return swift_unknownObjectRelease();
  }

  v35 = v7;
  v36 = v4;
  if (v8)
  {
    if ([v8 count] <= 0)
    {
      return swift_unknownObjectRelease();
    }

    v11 = [v8 firstObject];
    if (v11)
    {
      v12 = v11;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v34 = v12;
        if (qword_1EB1AB130 != -1)
        {
          swift_once();
        }

        v15 = sub_1A5246F24();
        __swift_project_value_buffer(v15, qword_1EB1AB138);
        v16 = v1;
        v17 = sub_1A5246F04();
        v18 = sub_1A524D264();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          *(v19 + 4) = v16;
          *v20 = v16;
          v21 = v16;
          _os_log_impl(&dword_1A3C1C000, v17, v18, "%@: Queueing real asset collection fetch, in background", v19, 0xCu);
          sub_1A3CB65E4(v20);
          MEMORY[0x1A590EEC0](v20, -1, -1);
          MEMORY[0x1A590EEC0](v19, -1, -1);
        }

        v33 = v5;
        v22 = v35;
        if (qword_1EB1AB150 != -1)
        {
          swift_once();
        }

        v32[1] = qword_1EB1AB158;
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v14;
        aBlock[4] = sub_1A4146434;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3C2E0D0;
        aBlock[3] = &block_descriptor_107;
        v32[0] = _Block_copy(aBlock);

        swift_unknownObjectRetain();
        sub_1A524BF14();
        v39 = MEMORY[0x1E69E7CC0];
        sub_1A414648C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
        v25 = v22;
        v26 = MEMORY[0x1E69E7F60];
        sub_1A3C29F88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
        sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v26);
        v27 = v36;
        v28 = v2;
        sub_1A524E224();
        v29 = v32[0];
        MEMORY[0x1A5908800](0, v25, v27, v32[0]);
        _Block_release(v29);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v37 + 8))(v27, v28);
        (*(v38 + 8))(v25, v33);
      }

      swift_unknownObjectRelease();
    }

    v30 = [*&v1[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item] assetCollection];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v32[-2] = v1;
    v32[-1] = v30;
    aBlock[0] = v1;
    sub_1A52415C4();

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A4145890(uint64_t a1, void *a2)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v31 = v8;
    v32 = v7;
    v33 = v4;
    v13 = PXContentSyndicationAssetsFetchResultMatchingSyndicationGroupingOfAsset(a2);
    if (qword_1EB1AB130 != -1)
    {
      swift_once();
    }

    v34 = v3;
    v14 = sub_1A5246F24();
    __swift_project_value_buffer(v14, qword_1EB1AB138);
    v15 = v12;
    v16 = v13;
    v17 = sub_1A5246F04();
    v18 = sub_1A524D264();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      *(v19 + 4) = v15;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v16;
      *v20 = v12;
      v20[1] = v13;
      v21 = v15;
      v22 = v16;
      _os_log_impl(&dword_1A3C1C000, v17, v18, "%@: Real asset collection retrieved: %@", v19, 0x16u);
      sub_1A3D3F118();
      swift_arrayDestroy();
      MEMORY[0x1A590EEC0](v20, -1, -1);
      MEMORY[0x1A590EEC0](v19, -1, -1);
    }

    sub_1A3C52C70(0, &qword_1EB12B180);
    v23 = sub_1A524D474();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v13;
    aBlock[4] = sub_1A414643C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_22;
    v26 = _Block_copy(aBlock);
    v27 = v16;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A414648C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v28 = MEMORY[0x1E69E7F60];
    sub_1A3C29F88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
    sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v28);
    v29 = v34;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v10, v6, v26);
    _Block_release(v26);

    (*(v33 + 8))(v6, v29);
    return (*(v31 + 8))(v10, v32);
  }

  return result;
}

void sub_1A4145D24(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = objc_opt_self();
      v6 = a2;
      v7 = [v5 transientAssetCollectionWithAssetFetchResult:v6 subtype:1000000501];
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
      sub_1A52415C4();
    }

    else
    {
      [*(Strong + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item) assetCollection];
      v9 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v9);
      sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
      sub_1A52415C4();

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1A414618C(id a1)
{
  if (a1)
  {
    [a1 firstObject];
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A414648C(&qword_1EB133228, type metadata accessor for SharedWithYouItemObserver);
  swift_unknownObjectRetain();
  sub_1A52415C4();

  swift_unknownObjectRelease();
  v2 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A52415C4();

  sub_1A4145224();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A4146360()
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

unint64_t sub_1A4146444()
{
  result = qword_1EB1333F0;
  if (!qword_1EB1333F0)
  {
    type metadata accessor for SharedWithYouItemObserver();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB1333F0);
  }

  return result;
}

uint64_t sub_1A414648C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A41464D4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver__assetFetchResult) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t PhotoKitFetcher.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = xmmword_1A5309A20;
  *(v2 + 16) = a1;
  *(v2 + 24) = [objc_opt_self() sharedFetcherForPhotoLibrary_];
  return v2;
}

uint64_t PhotoKitFetcher.init(_:)(uint64_t a1)
{
  *(v1 + 32) = xmmword_1A5309A20;
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_opt_self() sharedFetcherForPhotoLibrary_];
  return v1;
}

uint64_t sub_1A414665C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v7 = *a3;
  v6 = *(a3 + 8);
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = *(a3 + 40);
  if (*(a1 + 8) != 1)
  {
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      v44 = *(a3 + 40);
      v45 = v5;
      v46 = 0;
      v39 = v7;
      v40 = v6;
      v41 = v8;
      v42 = v9;
      v43 = v10;
      return sub_1A3CB2F0C(&v45, a2, &v39);
    }

    v13 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
    [v13 setCurationKind_];
    [v13 setFetchLimit_];
    v14 = PXPhotosDataSourceOptionsAdjustedForCurationContext(0, v9);
    [v13 setOptions_];
    if (v8)
    {
      sub_1A3C52C70(0, &qword_1EB1265C0);
      v15 = sub_1A524CA14();
    }

    else
    {
      v15 = 0;
    }

    [v13 setReferencePersons_];

    [v13 setReverseSortOrder_];
    [v13 setLibraryFilter_];
    [v13 setFilterPredicate_];
    v19 = [*(v3 + 24) fetchAssetsInContainer:a2 configuration:v13];
    if (!v19)
    {

      return 0;
    }

    v38 = a2;
    v20 = v19;
    v21 = v19;
    v22 = [v21 count];

    if (v22)
    {
    }

    else
    {
      v44 = v11;
      v45 = 1;
      v46 = 0;
      v39 = 1;
      v40 = v6;
      v41 = v8;
      v42 = v9;
      v43 = v10;
      swift_bridgeObjectRetain_n();
      v24 = v11;
      v20 = sub_1A3CB2F0C(&v45, v38, &v39);

      swift_bridgeObjectRelease_n();
    }

    return v20;
  }

  if ((v5 - 2) < 3)
  {
    v44 = *(a3 + 40);
    v45 = 0;
    v46 = 0;
    v39 = v7;
    v40 = v6;
    v41 = v8;
    v42 = v9;
    v43 = v10;
    return sub_1A414665C(&v45, a2, &v39);
  }

  if (v5)
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C9470);
    v45 = 1;
    v46 = 1;
    sub_1A524E624();
    MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
    v34 = [a2 description];
    v35 = sub_1A524C674();
    v37 = v36;

    MEMORY[0x1A5907B60](v35, v37);
  }

  else
  {
    v16 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
    [v16 setFetchLimit_];
    [v16 setSharingFilter_];
    v17 = [a2 kind];
    if (v17 - 1 < 2)
    {
      v18 = [objc_opt_self() fetchChildHighlightsForHighlight:a2 options:v16];
LABEL_21:
      v23 = v18;
      goto LABEL_22;
    }

    if (!v17)
    {
      v23 = sub_1A3FEE024();
LABEL_22:
      v20 = v23;

      return v20;
    }

    if (v17 == 3)
    {
      sub_1A3C52C70(0, &qword_1EB126D20);
      sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1A52F8E10;
      sub_1A3C52C70(0, &qword_1EB1333F8);
      v26 = [swift_getObjCClassFromMetadata() sharedInstance];
      [v26 nonInterestingPromotionScore];
      v28 = v27;

      v29 = MEMORY[0x1E69E6438];
      *(v25 + 56) = MEMORY[0x1E69E63B0];
      *(v25 + 64) = v29;
      *(v25 + 32) = v28;
      v30 = sub_1A524D134();
      [v16 setInternalPredicate_];

      v31 = PXInternalSortDescriptorsForAssetCollectionSubtype([a2 assetCollectionSubtype]);
      sub_1A3C52C70(0, &qword_1EB126B60);
      v32 = sub_1A524CA34();

      sub_1A3D64B88(v32, &qword_1EB126B60);

      v33 = sub_1A524CA14();

      [v16 setInternalSortDescriptors_];

      v18 = [objc_opt_self() fetchChildDayGroupHighlightsForHighlight:a2 options:v16];
      goto LABEL_21;
    }

    v39 = 0;
    v40 = 0xE000000000000000;
    MEMORY[0x1A5907B60](0x7463657078656E55, 0xEB00000000206465);
    LOWORD(v45) = [a2 kind];
    type metadata accessor for PHPhotosHighlightKind(0);
    sub_1A524E624();
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A4146CF0(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a3;
  v7 = *(a3 + 1);
  if (*(a1 + 8) != 1)
  {
    v39 = *(a3 + 1);
    if ((v5 - 4) >= 2)
    {
      if (!v5)
      {
        v22 = objc_opt_self();
        v23 = sub_1A524CA14();
        v9 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
        [v9 setFetchLimit_];
        [v9 setSharingFilter_];
        v21 = [v22 fetchAssetsWithLocalIdentifiers:v23 options:v9];

        goto LABEL_21;
      }
    }

    else
    {
      if (([a2 collectionListType] & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v9 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
        [v9 setFetchLimit_];
        [v9 setSharingFilter_];
        v11 = [objc_opt_self() fetchKeyAssetsForCollectionList:a2 options:v9];
        if (!v11)
        {
          v11 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
        }

        goto LABEL_20;
      }

      sub_1A3D64B88(MEMORY[0x1E69E7CC0], &qword_1EB126660);
      v17 = [a2 photoLibrary];
      if (v17)
      {
        v18 = v17;
        sub_1A524C674();
        v19 = objc_allocWithZone(MEMORY[0x1E69788E0]);
        v20 = sub_1A524CA14();

        v9 = sub_1A524C634();

        v21 = [v19 initWithObjects:v20 photoLibrary:v18 fetchType:v9 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

LABEL_21:
        return v21;
      }

      __break(1u);
    }

    v41 = 0;
    v42.n128_u64[0] = 0xE000000000000000;
    if ((v5 - 1) >= 3)
    {
      MEMORY[0x1A5907B60](0x7463657078656E55, 0xEB00000000206465, v7);
      v46 = v5;
      type metadata accessor for PXDisplayAssetCollectionCurationKind(0);
      sub_1A524E624();
    }

    else
    {
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C9470);
      v46 = v5;
      type metadata accessor for PXDisplayAssetCollectionCurationKind(0);
      sub_1A524E624();
      MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
      v30 = [a2 description];
      v31 = sub_1A524C674();
      v33 = v32;

      MEMORY[0x1A5907B60](v31, v33);
    }

    goto LABEL_28;
  }

  if (v5 > 2)
  {
    v40 = *(a3 + 1);
    sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    if (v5 == 3)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1A52F9790;
      sub_1A3C52C70(0, &qword_1EB126D20);
      sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1A52F8E10;
      v14 = MEMORY[0x1E69E76D0];
      *(v13 + 56) = MEMORY[0x1E69E7668];
      *(v13 + 64) = v14;
      *(v13 + 32) = 2;
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1A52F9790;
      sub_1A3C52C70(0, &qword_1EB126D20);
      sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1A52F8E10;
      v28 = MEMORY[0x1E69E76D0];
      *(v27 + 56) = MEMORY[0x1E69E7668];
      *(v27 + 64) = v28;
      *(v27 + 32) = 4000;
    }

    *(v12 + 32) = sub_1A524D134();
    v9 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
    [v9 setFetchLimit_];
    [v9 setSharingFilter_];
    v15 = sub_1A524CA14();

    v16 = [objc_opt_self() orPredicateWithSubpredicates_];

    [v9 setInternalPredicate_];
    v10 = [objc_opt_self() fetchCollectionsInCollectionList:a2 options:v9];
    goto LABEL_19;
  }

  if (!v5)
  {
    v38 = *(a3 + 1);
    v8 = objc_opt_self();
    v9 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
    [v9 setFetchLimit_];
    [v9 setSharingFilter_];
    v10 = [v8 fetchCollectionsInCollectionList:a2 options:v9];
LABEL_19:
    v11 = v10;
LABEL_20:
    v21 = v11;
    goto LABEL_21;
  }

  if (v5 == 2)
  {
    v24 = a3[3];
    v25 = *(a3 + 32);
    v26 = a3[5];
    v46 = 0;
    v47 = 1;
    v41 = v6;
    v42 = v7;
    v43 = v24;
    v44 = v25;
    v45 = v26;
    return sub_1A4146CF0(&v46, a2, &v41);
  }

  v41 = 0;
  v42.n128_u64[0] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C9470);
  v46 = 1;
  v47 = 1;
  sub_1A524E624();
  MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
  v34 = [a2 description];
  v35 = sub_1A524C674();
  v37 = v36;

  MEMORY[0x1A5907B60](v35, v37);

LABEL_28:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A4147644(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = *(a3 + 32);
  v10 = a3[5];
  if (*(a1 + 8) == 1)
  {
    if (v4 < 2)
    {
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C9470);
      sub_1A524E624();
      MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
      v17 = [a2 description];
      v18 = sub_1A524C674();
      v20 = v19;

      MEMORY[0x1A5907B60](v18, v20);

      result = sub_1A524E6E4();
      __break(1u);
    }

    else
    {
      v23 = a3[5];
      v24 = 0;
      v25 = 0;
      v21[0] = v6;
      v21[1] = v5;
      v21[2] = v7;
      v21[3] = v8;
      v22 = v9;
      return sub_1A4147644(&v24, a2, v21);
    }
  }

  else
  {
    v13 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
    [v13 setCurationKind_];
    [v13 setFetchLimit_];
    v14 = PXPhotosDataSourceOptionsAdjustedForCurationContext(0, v8);
    [v13 setOptions_];
    if (v7)
    {
      sub_1A3C52C70(0, &qword_1EB1265C0);
      v7 = sub_1A524CA14();
    }

    [v13 setReferencePersons_];

    [v13 setReverseSortOrder_];
    [v13 setLibraryFilter_];
    [v13 setFilterPredicate_];
    v15 = [*(v3 + 24) fetchAssetsInContainer:a2 configuration:v13];

    return v15;
  }

  return result;
}

uint64_t sub_1A41478EC(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a1;
  v7 = *a3;
  v6 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = *(a3 + 32);
  v11 = a3[5];
  if (*(a1 + 8) != 1)
  {
    v15 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
    [v15 setCurationKind_];
    [v15 setFetchLimit_];
    v16 = PXPhotosDataSourceOptionsAdjustedForCurationContext(0, v9);
    [v15 setOptions_];
    if (v8)
    {
      sub_1A3C52C70(0, &qword_1EB1265C0);
      v8 = sub_1A524CA14();
    }

    [v15 setReferencePersons_];

    [v15 setReverseSortOrder_];
    [v15 setLibraryFilter_];
    [v15 setFilterPredicate_];
    v14 = [*(v3 + 24) fetchAssetsInContainer:a2 configuration:v15];

    return v14;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v24 = a3[5];
      v25 = 1;
      v26 = 1;
      v22[0] = v7;
      v22[1] = v6;
      v22[2] = v8;
      v22[3] = v9;
      v23 = v10;
      return sub_1A41478EC(&v25, a2, v22);
    }
  }

  else if (v5 == 1)
  {
    v12 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
    [v12 setFetchLimit_];
    [v12 setSharingFilter_];
    v13 = [objc_opt_self() px_defaultDetectionTypes];
    if (!v13)
    {
      sub_1A3C52C70(0, &qword_1EB126610);
      sub_1A524CA34();
      v13 = sub_1A524CA14();
    }

    [v12 setIncludedDetectionTypes_];

    v14 = [objc_opt_self() fetchPersonsInSocialGroup:a2 option:v12];
    return v14;
  }

  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C9470);
  sub_1A524E624();
  MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
  v18 = [a2 description];
  v19 = sub_1A524C674();
  v21 = v20;

  MEMORY[0x1A5907B60](v19, v21);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t static PhotoKitFetcher.hasAnyRelationship(for:)(void *a1)
{
  sub_1A414C234();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A531D3E0;
  *(inited + 32) = sub_1A3C52C70(0, &qword_1EB126AC0);
  *(inited + 40) = sub_1A3C52C70(0, &qword_1EB120A70);
  *(inited + 48) = sub_1A3C52C70(0, &qword_1EB1265C0);
  *(inited + 56) = sub_1A3C52C70(0, &unk_1EB12B198);
  if ([a1 isKindOfClass_] & 1) != 0 || (objc_msgSend(a1, sel_isKindOfClass_, swift_getObjCClassFromMetadata()) & 1) != 0 || (objc_msgSend(a1, sel_isKindOfClass_, swift_getObjCClassFromMetadata()))
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 isKindOfClass_];
  }

  return v3;
}

double sub_1A4147DF0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

id PhotoKitFetcher.fetchPlacesAlbum(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = [*(v1 + 16) px_standardLibrarySpecificFetchOptions];
  [v4 setFetchLimit_];
  [v4 setSharingFilter_];
  [v4 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00);
  swift_dynamicCast();
  [v11 setIncludePlacesSmartAlbum_];
  v5 = v11;
  v6 = static PHFetchOptions.px_placesFetchOptions(with:)(v5);

  v7 = v11;
  v12 = v6;
  v8 = v6;

  v9 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:1000000203 options:v8];
  return v9;
}

id PhotoKitFetcher.fetchAssetsWithLocation(inCollection:libraryFilterViewMode:)(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + 16) px_standardLibrarySpecificFetchOptions];
  [v5 setFetchLimit_];
  [v5 setSharingFilter_];
  [v5 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00);
  swift_dynamicCast();
  v6 = v12;
  v7 = static PHFetchOptions.px_placesFetchOptions(with:)(v6);

  v8 = v12;
  v13 = v7;
  v9 = v7;

  v10 = [objc_opt_self() px:a1 fetchPlacesAssetsInAssetCollection:v9 options:?];

  return v10;
}

uint64_t PhotoKitFetcher.PeopleCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

id PhotoKitFetcher.fetchPeople(for:libraryFilterViewMode:fetchLimit:type:detectionTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = [*(v5 + 16) px_standardLibrarySpecificFetchOptions];
  [v9 setFetchLimit_];
  [v9 setSharingFilter_];
  [v9 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00);
  swift_dynamicCast();
  [v29 setPersonContext_];
  v10 = MEMORY[0x1E69E6F90];
  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A52F9790;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v13 = sub_1A524C634();
  v14 = [v12 initWithKey:v13 ascending:0];

  *(v11 + 32) = v14;
  v15 = [objc_opt_self() sortDescriptorsForManualSort];
  sub_1A3C52C70(0, &qword_1EB126B60);
  v16 = sub_1A524CA34();

  sub_1A414C64C(v16, sub_1A414C744);
  v17 = sub_1A524CA14();

  [v29 setSortDescriptors_];

  [v29 setFetchLimit_];
  sub_1A3C69A7C(0, &qword_1EB12B260, MEMORY[0x1E69E6158], v10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A52F8E10;
  *(v18 + 32) = sub_1A524C674();
  *(v18 + 40) = v19;
  v20 = sub_1A524CA14();

  [v29 setFetchPropertySets_];

  sub_1A3C52C70(0, &qword_1EB126610);
  v21 = sub_1A524CA14();
  [v29 setIncludedDetectionTypes_];

  if ((a5 & 1) == 0)
  {
    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E6530];
    *(v22 + 16) = xmmword_1A52F8E10;
    v24 = MEMORY[0x1E69E65A8];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = a4;
    v25 = sub_1A524D134();
    [v29 setPredicate_];
  }

  v26 = [objc_opt_self() fetchPersonsWithOptions_];

  return v26;
}

id PhotoKitFetcher.peopleFetchOptions(for:libraryFilterViewMode:fetchLimit:type:detectionTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = [*(v5 + 16) px_standardLibrarySpecificFetchOptions];
  [v9 setFetchLimit_];
  [v9 setSharingFilter_];
  [v9 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00);
  swift_dynamicCast();
  [v28 setPersonContext_];
  v10 = MEMORY[0x1E69E6F90];
  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A52F9790;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v13 = sub_1A524C634();
  v14 = [v12 initWithKey:v13 ascending:0];

  *(v11 + 32) = v14;
  v15 = [objc_opt_self() sortDescriptorsForManualSort];
  sub_1A3C52C70(0, &qword_1EB126B60);
  v16 = sub_1A524CA34();

  sub_1A414C64C(v16, sub_1A414C744);
  v17 = sub_1A524CA14();

  [v28 setSortDescriptors_];

  [v28 setFetchLimit_];
  sub_1A3C69A7C(0, &qword_1EB12B260, MEMORY[0x1E69E6158], v10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A52F8E10;
  *(v18 + 32) = sub_1A524C674();
  *(v18 + 40) = v19;
  v20 = sub_1A524CA14();

  [v28 setFetchPropertySets_];

  sub_1A3C52C70(0, &qword_1EB126610);
  v21 = sub_1A524CA14();
  [v28 setIncludedDetectionTypes_];

  if ((a5 & 1) == 0)
  {
    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E6530];
    *(v22 + 16) = xmmword_1A52F8E10;
    v24 = MEMORY[0x1E69E65A8];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = a4;
    v25 = sub_1A524D134();
    [v28 setPredicate_];
  }

  return v28;
}

id PhotoKitFetcher.fetchTrips(withFavoriteState:limit:)(unsigned __int8 a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A52F9DE0;
  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E75F8];
  *(v9 + 16) = xmmword_1A52FC9F0;
  v11 = MEMORY[0x1E69E7660];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = 1;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = 2;
  *(v8 + 32) = sub_1A524D134();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F8E10;
  sub_1A3C52C70(0, &qword_1EB1333F8);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v13 nonInterestingPromotionScore];
  v15 = v14;

  v16 = MEMORY[0x1E69E6438];
  *(v12 + 56) = MEMORY[0x1E69E63B0];
  *(v12 + 64) = v16;
  *(v12 + 32) = v15;
  *(v8 + 40) = sub_1A524D134();
  if (v7 != 2)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52F8E10;
    v18 = MEMORY[0x1E69E63A8];
    *(v17 + 56) = MEMORY[0x1E69E6370];
    *(v17 + 64) = v18;
    *(v17 + 32) = a1 & 1;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
  }

  v19 = [*(v4 + 16) px_standardLibrarySpecificFetchOptions];
  [v19 setFetchLimit_];
  [v19 setSharingFilter_];
  [v19 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00);
  v20 = MEMORY[0x1E69E7CA0];
  swift_dynamicCast();
  if ((a3 & 1) == 0)
  {
    [v35 setFetchLimit_];
  }

  v21 = sub_1A524CA14();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v35 setInternalPredicate_];
  sub_1A3C69A7C(0, &unk_1EB126170, v20 + 8, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A52FC9F0;
  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v25 = sub_1A524C634();
  v26 = [v24 initWithKey:v25 ascending:0];

  v27 = sub_1A3C52C70(0, &qword_1EB126B60);
  *(v23 + 56) = v27;
  *(v23 + 32) = v26;
  v28 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v29 = sub_1A524C634();
  v30 = [v28 initWithKey:v29 ascending:0];

  *(v23 + 88) = v27;
  *(v23 + 64) = v30;
  v31 = sub_1A524CA14();

  [v35 setInternalSortDescriptors_];

  v32 = [objc_opt_self() fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:v35];

  return v32;
}

id PhotoKitFetcher.fetchMemories(featuredOnly:favoritesOnly:limit:libraryFilterViewMode:)(char a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = [*(v5 + 16) px_standardLibrarySpecificFetchOptions];
  [v11 setFetchLimit_];
  [v11 setSharingFilter_];
  [v11 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00);
  swift_dynamicCast();
  if ((a4 & 1) == 0)
  {
    [v35 setFetchLimit_];
  }

  [v35 setIncludePendingMemories_];
  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F8E10;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1A3D710E8();
  *(v12 + 64) = v14;
  *(v12 + 32) = 0x64657463656A6572;
  *(v12 + 40) = 0xE800000000000000;
  v15 = sub_1A524D134();
  sub_1A41493F8(v15, v35);

  if (a1 != 2 && (a1 & 1) != 0)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A52FC9F0;
    *(v16 + 56) = v13;
    *(v16 + 64) = v14;
    strcpy((v16 + 32), "featuredState");
    *(v16 + 46) = -4864;
    v17 = MEMORY[0x1E69E65A8];
    *(v16 + 96) = MEMORY[0x1E69E6530];
    *(v16 + 104) = v17;
    *(v16 + 72) = -1;
    v18 = sub_1A524D134();
    sub_1A41493F8(v18, v35);
  }

  if (a2 != 2 && (a2 & 1) != 0)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1A52F8E10;
    *(v19 + 56) = v13;
    *(v19 + 64) = v14;
    *(v19 + 32) = 0x657469726F766166;
    *(v19 + 40) = 0xE800000000000000;
    v20 = sub_1A524D134();
    sub_1A41493F8(v20, v35);
  }

  v21 = MEMORY[0x1E69E6F90];
  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A52F9DE0;
  v23 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v24 = sub_1A524C634();
  v25 = [v23 initWithKey:v24 ascending:0];

  *(v22 + 32) = v25;
  v26 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v27 = sub_1A524C634();
  v28 = [v26 initWithKey:v27 ascending:0];

  *(v22 + 40) = v28;
  sub_1A3C52C70(0, &qword_1EB126B60);
  v29 = sub_1A524CA14();

  [v35 setSortDescriptors_];

  sub_1A3C69A7C(0, &qword_1EB12B260, MEMORY[0x1E69E6158], v21);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1A52F8E10;
  *(v30 + 32) = sub_1A524C674();
  *(v30 + 40) = v31;
  v32 = sub_1A524CA14();

  [v35 setFetchPropertySets_];

  v33 = [objc_opt_self() fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v35];

  return v33;
}

void sub_1A41493F8(void *a1, id a2)
{
  v4 = [a2 predicate];
  if (v4)
  {
    v5 = v4;
    sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52F9DE0;
    *(v6 + 32) = v5;
    *(v6 + 40) = a1;
    sub_1A3C52C70(0, &qword_1EB126D20);
    v7 = v5;
    v8 = a1;
    v9 = sub_1A524CA14();

    v10 = [objc_opt_self() andPredicateWithSubpredicates_];

    [a2 setPredicate_];
  }

  else
  {

    [a2 setPredicate_];
  }
}

id PhotoKitFetcher.fetchFeaturedSuggestions(type:limit:options:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = a4[1];
  v36 = *(v4 + 16);
  v9 = [v36 px_standardLibrarySpecificFetchOptions];
  [v9 setFetchLimit_];
  v37 = v8;
  [v9 setSharingFilter_];
  [v9 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00);
  swift_dynamicCast();
  if ((a3 & 1) == 0)
  {
    [v38 setFetchLimit_];
  }

  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F9DE0;
  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A531D3F0;
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1A3D710E8();
  *(v11 + 64) = v13;
  v14 = MEMORY[0x1E69E75F8];
  v15 = MEMORY[0x1E69E7660];
  *(v11 + 32) = 0x6574617473;
  *(v11 + 40) = 0xE500000000000000;
  *(v11 + 96) = v14;
  *(v11 + 104) = v15;
  *(v11 + 72) = 1;
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 112) = 0x6574617473;
  *(v11 + 120) = 0xE500000000000000;
  *(v11 + 176) = v14;
  *(v11 + 184) = v15;
  *(v11 + 152) = 0;
  *(v11 + 216) = v12;
  *(v11 + 224) = v13;
  *(v11 + 192) = 0x6574617473;
  *(v11 + 200) = 0xE500000000000000;
  *(v11 + 256) = v14;
  *(v11 + 264) = v15;
  *(v11 + 232) = 3;
  *(v11 + 296) = v12;
  *(v11 + 304) = v13;
  *(v11 + 272) = 0x6E6F6973726576;
  *(v11 + 280) = 0xE700000000000000;
  v16 = MEMORY[0x1E69E7358];
  *(v11 + 336) = MEMORY[0x1E69E72F0];
  *(v11 + 344) = v16;
  *(v11 + 312) = 3;
  *(v11 + 376) = v12;
  *(v11 + 384) = v13;
  strcpy((v11 + 352), "featuredState");
  *(v11 + 366) = -4864;
  *(v11 + 416) = v14;
  *(v11 + 424) = v15;
  *(v11 + 392) = 1;
  *(v10 + 32) = sub_1A524D134();
  v35 = objc_opt_self();
  *(v10 + 40) = [v35 predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
  v17 = sub_1A524CA14();

  v18 = objc_opt_self();
  v19 = [v18 andPredicateWithSubpredicates_];

  v20 = [objc_opt_self() contentSyndicationConfigurationProviderWithPhotoLibrary_];
  if (([v20 showUnsavedSyndicatedContentInFeaturedPhotos] & 1) == 0)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1A52F9DE0;
    *(v21 + 32) = v19;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A52FC9F0;
    *(v22 + 56) = v12;
    *(v22 + 64) = v13;
    *(v22 + 32) = 0x65707974627573;
    *(v22 + 40) = 0xE700000000000000;
    *(v22 + 96) = v14;
    *(v22 + 104) = v15;
    *(v22 + 72) = 306;
    v23 = v19;
    *(v21 + 40) = sub_1A524D134();
    v24 = sub_1A524CA14();

    v19 = [v18 andPredicateWithSubpredicates_];
  }

  [v38 setPredicate_];
  [v38 setSharingFilter_];
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A52F9DE0;
  v26 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v27 = sub_1A524C634();
  v28 = [v26 initWithKey:v27 ascending:0];

  *(v25 + 32) = v28;
  v29 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v30 = sub_1A524C634();
  v31 = [v29 initWithKey:v30 ascending:1];

  *(v25 + 40) = v31;
  sub_1A3C52C70(0, &qword_1EB126B60);
  v32 = sub_1A524CA14();

  [v38 setSortDescriptors_];

  v33 = [v35 fetchSuggestionsWithOptions_];
  return v33;
}

uint64_t PhotoKitFetcher.fetchFeedSuggestions(queryStartDate:queryEndDate:options:)(void *a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  if ([a1 compare_] == -1)
  {
    v38 = *(v3 + 16);
    v6 = [v38 px_standardLibrarySpecificFetchOptions];
    [v6 setFetchLimit_];
    v39 = v5;
    [v6 setSharingFilter_];
    [v6 copy];

    sub_1A524E0B4();
    swift_unknownObjectRelease();
    sub_1A3C52C70(0, &unk_1EB126C00);
    swift_dynamicCast();
    sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A52F9DE0;
    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A531E180;
    v9 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v10 = sub_1A3D710E8();
    *(v8 + 64) = v10;
    *(v8 + 32) = 0x6574617473;
    *(v8 + 40) = 0xE500000000000000;
    v11 = MEMORY[0x1E69E75F8];
    v12 = MEMORY[0x1E69E7660];
    *(v8 + 96) = MEMORY[0x1E69E75F8];
    *(v8 + 104) = v12;
    *(v8 + 72) = 1;
    *(v8 + 136) = v9;
    *(v8 + 144) = v10;
    *(v8 + 112) = 0x6574617473;
    *(v8 + 120) = 0xE500000000000000;
    *(v8 + 176) = v11;
    *(v8 + 184) = v12;
    *(v8 + 152) = 0;
    *(v8 + 216) = v9;
    *(v8 + 224) = v10;
    *(v8 + 192) = 0x6574617473;
    *(v8 + 200) = 0xE500000000000000;
    *(v8 + 256) = v11;
    *(v8 + 264) = v12;
    *(v8 + 232) = 3;
    *(v8 + 296) = v9;
    *(v8 + 304) = v10;
    *(v8 + 272) = 0x6574617473;
    *(v8 + 280) = 0xE500000000000000;
    *(v8 + 336) = v11;
    *(v8 + 344) = v12;
    *(v8 + 312) = 4;
    *(v8 + 376) = v9;
    *(v8 + 384) = v10;
    strcpy((v8 + 352), "creationDate");
    *(v8 + 365) = 0;
    *(v8 + 366) = -5120;
    v13 = sub_1A3C52C70(0, &qword_1EB1266C8);
    *(v8 + 416) = v13;
    v14 = sub_1A3C3A220(&qword_1EB1266C0, &qword_1EB1266C8);
    *(v8 + 392) = a1;
    *(v8 + 456) = v9;
    *(v8 + 464) = v10;
    *(v8 + 424) = v14;
    strcpy((v8 + 432), "creationDate");
    *(v8 + 445) = 0;
    *(v8 + 446) = -5120;
    *(v8 + 496) = v13;
    *(v8 + 504) = v14;
    *(v8 + 472) = a2;
    v15 = a1;
    v16 = a2;
    *(v7 + 32) = sub_1A524D134();
    v17 = objc_opt_self();
    *(v7 + 40) = [v17 predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
    v18 = sub_1A524CA14();

    v19 = objc_opt_self();
    v20 = [v19 andPredicateWithSubpredicates_];

    v21 = [objc_opt_self() contentSyndicationConfigurationProviderWithPhotoLibrary_];
    if (([v21 showUnsavedSyndicatedContentInFeaturedPhotos] & 1) == 0)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1A52F9DE0;
      *(v22 + 32) = v20;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1A52FC9F0;
      *(v23 + 56) = v9;
      *(v23 + 64) = v10;
      *(v23 + 32) = 0x65707974627573;
      *(v23 + 40) = 0xE700000000000000;
      *(v23 + 96) = MEMORY[0x1E69E75F8];
      *(v23 + 104) = MEMORY[0x1E69E7660];
      *(v23 + 72) = 306;
      v24 = v20;
      *(v22 + 40) = sub_1A524D134();
      v25 = sub_1A524CA14();

      v20 = [v19 &selRef:v25 assetCollectionForSection:?];
    }

    [v40 setPredicate_];
    [v40 setSharingFilter_];
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1A52F9DE0;
    v27 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v28 = sub_1A524C634();
    v29 = [v27 initWithKey:v28 ascending:0];

    *(v26 + 32) = v29;
    v30 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v31 = sub_1A524C634();
    v32 = [v30 initWithKey:v31 ascending:1];

    *(v26 + 40) = v32;
    sub_1A3C52C70(0, &qword_1EB126B60);
    v33 = sub_1A524CA14();

    [v40 setSortDescriptors_];

    v34 = [v17 fetchSuggestionsWithOptions_];
    return v34;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t PhotoKitFetcher.CollectionKind.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

id PhotoKitFetcher.fetch(_:limit:ascending:includeChapterHeaders:additionalPredicate:options:)(unsigned __int8 *a1, uint64_t a2, char a3, char a4, void *a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(a6 + 8);
  v129 = MEMORY[0x1E69E7CC0];
  sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F9DE0;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v12 = sub_1A524C634();

  v13 = v11;
  v14 = v9;
  v15 = [v13 initWithKey:v12 ascending:a3 & 1];

  *(inited + 32) = v15;
  v16 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v17 = sub_1A524C634();
  v18 = [v16 initWithKey:v17 ascending:a3 & 1];

  v128 = inited;
  *(inited + 40) = v18;
  v19 = *(v6 + 16);
  v20 = PXInternalHighlightVisibilityPropertyForLibraryFilter(v19, v9);
  v21 = sub_1A524C674();
  v23 = v22;

  if (v8 <= 4)
  {
    if (v8 <= 1)
    {
      v120 = v21;
      v121 = v14;
      v123 = v19;
      if (!v8)
      {
        sub_1A3C52C70(0, &qword_1EB126D20);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1A52FC9F0;
        v36 = MEMORY[0x1E69E75F8];
        v37 = MEMORY[0x1E69E7660];
        *(v35 + 56) = MEMORY[0x1E69E75F8];
        *(v35 + 64) = v37;
        *(v35 + 32) = 0;
        *(v35 + 96) = v36;
        *(v35 + 104) = v37;
        *(v35 + 72) = 3;
        sub_1A524D134();
        MEMORY[0x1A5907D70]();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1A531D3E0;
        v39 = MEMORY[0x1E69E6158];
        *(v38 + 56) = MEMORY[0x1E69E6158];
        v40 = sub_1A3D710E8();
        *(v38 + 64) = v40;
        *(v38 + 32) = v21;
        *(v38 + 40) = v23;
        *(v38 + 96) = v36;
        *(v38 + 104) = v37;
        *(v38 + 72) = 1;
        *(v38 + 136) = v39;
        *(v38 + 144) = v40;
        *(v38 + 112) = v21;
        *(v38 + 120) = v23;
        *(v38 + 176) = v36;
        *(v38 + 184) = v37;
        *(v38 + 152) = 3;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3C52C70(0, &qword_1EB126A10);
      v82 = [swift_getObjCClassFromMetadata() sharedInstance];
      v83 = [v82 eventsAlgorithm];

      if (v83)
      {
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_1A52FF960;
        sub_1A3C52C70(0, &qword_1EB126D20);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1A52FC9F0;
        v86 = MEMORY[0x1E69E75F8];
        v87 = MEMORY[0x1E69E7660];
        *(v85 + 56) = MEMORY[0x1E69E75F8];
        *(v85 + 64) = v87;
        *(v85 + 32) = 0;
        *(v85 + 96) = v86;
        *(v85 + 104) = v87;
        *(v85 + 72) = 3;
        *(v84 + 32) = sub_1A524D134();
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1A531D3E0;
        v89 = MEMORY[0x1E69E6158];
        *(v88 + 56) = MEMORY[0x1E69E6158];
        v90 = sub_1A3D710E8();
        *(v88 + 64) = v90;
        *(v88 + 32) = v120;
        *(v88 + 40) = v23;
        *(v88 + 96) = v86;
        *(v88 + 104) = v87;
        *(v88 + 72) = 1;
        *(v88 + 136) = v89;
        *(v88 + 144) = v90;
        *(v88 + 112) = v120;
        *(v88 + 120) = v23;
        *(v88 + 176) = v86;
        *(v88 + 184) = v87;
        *(v88 + 152) = 3;
        swift_bridgeObjectRetain_n();
        *(v84 + 40) = sub_1A524D134();
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_1A52F8E10;
        v92 = 0.25;
        if (v83 <= 0xD)
        {
          v92 = dbl_1A531E458[v83 - 1];
        }

        v93 = MEMORY[0x1E69E6438];
        *(v91 + 56) = MEMORY[0x1E69E63B0];
        *(v91 + 64) = v93;
        *(v91 + 32) = v92;
        *(v84 + 48) = sub_1A524D134();
        v14 = v121;
      }

      else
      {
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_1A52F9DE0;
        sub_1A3C52C70(0, &qword_1EB126D20);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v109 = v108;
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_1A52FCA00;
        v111 = MEMORY[0x1E69E75F8];
        v112 = MEMORY[0x1E69E7660];
        *(v110 + 56) = MEMORY[0x1E69E75F8];
        *(v110 + 64) = v112;
        *(v110 + 32) = 3;
        v113 = MEMORY[0x1E69E6158];
        *(v110 + 96) = MEMORY[0x1E69E6158];
        v114 = sub_1A3D710E8();
        *(v110 + 104) = v114;
        *(v110 + 72) = v120;
        *(v110 + 80) = v23;
        *(v110 + 136) = v111;
        *(v110 + 144) = v112;
        *(v110 + 112) = 2;
        *(v110 + 176) = v113;
        *(v110 + 184) = v114;
        *(v110 + 152) = v120;
        *(v110 + 160) = v23;
        *(v110 + 216) = v111;
        *(v110 + 224) = v112;
        *(v110 + 192) = 3;
        swift_bridgeObjectRetain_n();
        *(v107 + 32) = sub_1A524D134();
        v119 = v109;
        v115 = swift_allocObject();
        *(v115 + 16) = xmmword_1A52FCA00;
        *(v115 + 56) = v111;
        *(v115 + 64) = v112;
        *(v115 + 32) = 0;
        *(v115 + 96) = v113;
        *(v115 + 104) = v114;
        *(v115 + 72) = v120;
        *(v115 + 80) = v23;
        *(v115 + 136) = v111;
        *(v115 + 144) = v112;
        *(v115 + 112) = 2;
        *(v115 + 176) = v113;
        *(v115 + 184) = v114;
        *(v115 + 152) = v120;
        *(v115 + 160) = v23;
        *(v115 + 216) = v111;
        *(v115 + 224) = v112;
        *(v115 + 192) = 3;
        swift_bridgeObjectRetain_n();
        *(v107 + 40) = sub_1A524D134();
        if (a4)
        {
          v116 = swift_allocObject();
          *(v116 + 16) = xmmword_1A52FF950;
          *(v116 + 56) = v111;
          *(v116 + 64) = v112;
          *(v116 + 32) = 1;
          *(v116 + 96) = MEMORY[0x1E69E6158];
          *(v116 + 104) = v114;
          *(v116 + 72) = v120;
          *(v116 + 80) = v23;
          *(v116 + 136) = v111;
          *(v116 + 144) = v112;
          *(v116 + 112) = 2;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_1A52F9790;
        v117 = sub_1A524CA14();

        v118 = [objc_opt_self() orPredicateWithSubpredicates_];

        *(v84 + 32) = v118;
        v14 = v121;
      }

      v19 = v123;
      v28 = v128;

      sub_1A414C64C(v84, sub_1A414C90C);
      goto LABEL_19;
    }

    if (v8 != 2)
    {
      if (v8 == 3)
      {

        sub_1A3C52C70(0, &qword_1EB126D20);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v24 = swift_allocObject();
        v25 = MEMORY[0x1E69E75F8];
        *(v24 + 16) = xmmword_1A52F8E10;
        v26 = MEMORY[0x1E69E7660];
        *(v24 + 56) = v25;
        *(v24 + 64) = v26;
        *(v24 + 32) = 0;
        sub_1A524D134();
        MEMORY[0x1A5907D70]();
        v27 = a5;
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v28 = v128;
      }

      else
      {
        v69 = v19;
        sub_1A3C52C70(0, &qword_1EB126D20);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1A52FF950;
        v71 = v21;
        v72 = MEMORY[0x1E69E75F8];
        v73 = MEMORY[0x1E69E7660];
        *(v70 + 56) = MEMORY[0x1E69E75F8];
        *(v70 + 64) = v73;
        *(v70 + 32) = 2;
        *(v70 + 96) = MEMORY[0x1E69E6158];
        *(v70 + 104) = sub_1A3D710E8();
        *(v70 + 72) = v71;
        *(v70 + 80) = v23;
        *(v70 + 136) = v72;
        *(v70 + 144) = v73;
        *(v70 + 112) = 4;
        sub_1A524D134();
        MEMORY[0x1A5907D70]();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v19 = v69;
        v27 = a5;
        v28 = v128;
      }

      goto LABEL_20;
    }

    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1A52FC9F0;
    v53 = MEMORY[0x1E69E75F8];
    v54 = MEMORY[0x1E69E7660];
    *(v52 + 56) = MEMORY[0x1E69E75F8];
    *(v52 + 64) = v54;
    *(v52 + 32) = 1;
    *(v52 + 96) = v53;
    *(v52 + 104) = v54;
    *(v52 + 72) = 2;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    v28 = v128;
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
      v28 = v128;
    }

    sub_1A524CAE4();
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1A52F8E10;
    sub_1A3C52C70(0, &qword_1EB1333F8);
    v56 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v56 nonInterestingPromotionScore];
    v58 = v57;

    v59 = MEMORY[0x1E69E6438];
    *(v55 + 56) = MEMORY[0x1E69E63B0];
    *(v55 + 64) = v59;
    *(v55 + 32) = v58;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_55;
    }

    goto LABEL_18;
  }

  if (v8 > 6)
  {
    if (v8 != 7)
    {
      if (v8 == 8)
      {
        sub_1A3C52C70(0, &qword_1EB126D20);
        sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1A52FC9F0;
        v30 = MEMORY[0x1E69E75F8];
        v31 = MEMORY[0x1E69E7660];
        *(v29 + 56) = MEMORY[0x1E69E75F8];
        *(v29 + 64) = v31;
        *(v29 + 32) = 0;
        *(v29 + 96) = v30;
        *(v29 + 104) = v31;
        *(v29 + 72) = 3;
        sub_1A524D134();
        MEMORY[0x1A5907D70]();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1A531D3E0;
        v33 = MEMORY[0x1E69E6158];
        *(v32 + 56) = MEMORY[0x1E69E6158];
        v34 = sub_1A3D710E8();
        *(v32 + 64) = v34;
        *(v32 + 32) = v21;
        *(v32 + 40) = v23;
        *(v32 + 96) = v30;
        *(v32 + 104) = v31;
        *(v32 + 72) = 1;
        *(v32 + 136) = v33;
        *(v32 + 144) = v34;
        *(v32 + 112) = v21;
        *(v32 + 120) = v23;
        *(v32 + 176) = v30;
        *(v32 + 184) = v31;
        *(v32 + 152) = 3;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1A52F9DE0;
      sub_1A3C52C70(0, &qword_1EB126D20);
      sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1A52FCA00;
      v76 = MEMORY[0x1E69E75F8];
      v77 = MEMORY[0x1E69E7660];
      *(v75 + 56) = MEMORY[0x1E69E75F8];
      *(v75 + 64) = v77;
      *(v75 + 32) = 3;
      v78 = MEMORY[0x1E69E6158];
      *(v75 + 96) = MEMORY[0x1E69E6158];
      v79 = sub_1A3D710E8();
      *(v75 + 104) = v79;
      *(v75 + 72) = v21;
      *(v75 + 80) = v23;
      *(v75 + 136) = v76;
      *(v75 + 144) = v77;
      *(v75 + 112) = 2;
      *(v75 + 176) = v78;
      *(v75 + 184) = v79;
      *(v75 + 152) = v21;
      *(v75 + 160) = v23;
      *(v75 + 216) = v76;
      *(v75 + 224) = v77;
      *(v75 + 192) = 3;
      swift_bridgeObjectRetain_n();
      *(v74 + 32) = sub_1A524D134();
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1A52FCA00;
      *(v80 + 56) = v76;
      *(v80 + 64) = v77;
      *(v80 + 32) = 0;
      v81 = MEMORY[0x1E69E6158];
      *(v80 + 96) = MEMORY[0x1E69E6158];
      *(v80 + 104) = v79;
      *(v80 + 72) = v21;
      *(v80 + 80) = v23;
      *(v80 + 136) = v76;
      *(v80 + 144) = v77;
      *(v80 + 112) = 2;
      *(v80 + 176) = v81;
      *(v80 + 184) = v79;
      *(v80 + 152) = v21;
      *(v80 + 160) = v23;
      *(v80 + 216) = v76;
      *(v80 + 224) = v77;
      *(v80 + 192) = 3;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v60 = v19;
    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1A52FC9F0;
    v62 = MEMORY[0x1E69E75F8];
    v63 = MEMORY[0x1E69E7660];
    *(v61 + 56) = MEMORY[0x1E69E75F8];
    *(v61 + 64) = v63;
    *(v61 + 32) = 0;
    *(v61 + 96) = v62;
    *(v61 + 104) = v63;
    *(v61 + 72) = 3;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1A52FC9F0;
    *(v64 + 56) = MEMORY[0x1E69E6158];
    *(v64 + 64) = sub_1A3D710E8();
    *(v64 + 32) = v21;
    *(v64 + 40) = v23;
    *(v64 + 96) = v62;
    *(v64 + 104) = v63;
    *(v64 + 72) = 0;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v65 = swift_allocObject();
    v125 = xmmword_1A52F8E10;
    *(v65 + 16) = xmmword_1A52F8E10;
    v66 = MEMORY[0x1E69E75F8];
    sub_1A3C69A7C(0, &qword_1EB133400, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6F90]);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1A531D3E0;
    *(v67 + 32) = 0x5000300070000;
    sub_1A3C69A7C(0, &qword_1EB133408, v66, MEMORY[0x1E69E62F8]);
    *(v65 + 56) = v68;
    *(v65 + 64) = sub_1A414CB54();
    *(v65 + 32) = v67;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    v19 = v60;
    v28 = v128;
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
      v19 = v60;
    }

    goto LABEL_54;
  }

  v48 = v21;
  v124 = v19;
  if (v8 != 5)
  {
    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_1A52FC9F0;
    v95 = MEMORY[0x1E69E75F8];
    v96 = MEMORY[0x1E69E7660];
    *(v94 + 56) = MEMORY[0x1E69E75F8];
    *(v94 + 64) = v96;
    *(v94 + 32) = 0;
    *(v94 + 96) = v95;
    *(v94 + 104) = v96;
    *(v94 + 72) = 3;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1A52FC9F0;
    *(v97 + 56) = MEMORY[0x1E69E6158];
    *(v97 + 64) = sub_1A3D710E8();
    *(v97 + 32) = v21;
    *(v97 + 40) = v23;
    *(v97 + 96) = v95;
    *(v97 + 104) = v96;
    *(v97 + 72) = 0;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v98 = swift_allocObject();
    v125 = xmmword_1A52F8E10;
    *(v98 + 16) = xmmword_1A52F8E10;
    v99 = MEMORY[0x1E69E75F8];
    sub_1A3C69A7C(0, &qword_1EB133400, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6F90]);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_1A531E1A0;
    *(v100 + 32) = 0x1000300070000;
    *(v100 + 40) = 262146;
    sub_1A3C69A7C(0, &qword_1EB133408, v99, MEMORY[0x1E69E62F8]);
    *(v98 + 56) = v101;
    *(v98 + 64) = sub_1A414CB54();
    *(v98 + 32) = v100;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    v19 = v124;
    v28 = v128;
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
      v19 = v124;
    }

LABEL_54:
    sub_1A524CAE4();
    v102 = swift_allocObject();
    *(v102 + 16) = v125;
    sub_1A3C52C70(0, &qword_1EB1333F8);
    v103 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v103 nonInterestingPromotionScore];
    v105 = v104;

    v106 = MEMORY[0x1E69E6438];
    *(v102 + 56) = MEMORY[0x1E69E63B0];
    *(v102 + 64) = v106;
    *(v102 + 32) = v105;
    sub_1A524D134();
    MEMORY[0x1A5907D70]();
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_55:
      sub_1A524CA74();
    }

LABEL_18:
    sub_1A524CAE4();
LABEL_19:
    v27 = a5;
    goto LABEL_20;
  }

  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3C711A0(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1A52FF950;
  v50 = MEMORY[0x1E69E75F8];
  v51 = MEMORY[0x1E69E7660];
  *(v49 + 56) = MEMORY[0x1E69E75F8];
  *(v49 + 64) = v51;
  *(v49 + 32) = 1;
  *(v49 + 96) = MEMORY[0x1E69E6158];
  *(v49 + 104) = sub_1A3D710E8();
  *(v49 + 72) = v48;
  *(v49 + 80) = v23;
  *(v49 + 136) = v50;
  *(v49 + 144) = v51;
  *(v49 + 112) = 2;
  sub_1A524D134();
  MEMORY[0x1A5907D70]();
  if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A524CA74();
  }

  sub_1A524CAE4();
  v27 = a5;
  v28 = v128;
  v19 = v124;
LABEL_20:
  if (v27)
  {
    v41 = v27;
    MEMORY[0x1A5907D70]();
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
  }

  v42 = [v19 librarySpecificFetchOptions];
  sub_1A3C52C70(0, &qword_1EB126D20);
  v43 = sub_1A524CA14();

  v44 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v42 setInternalPredicate_];
  sub_1A3D64B88(v28, &qword_1EB126B60);

  v45 = sub_1A524CA14();

  [v42 setInternalSortDescriptors_];

  [v42 setSharingFilter_];
  [v42 setFetchLimit_];
  v46 = [objc_opt_self() fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:v42];

  return v46;
}

uint64_t PhotoKitFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id PXPhotoKitFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXPhotoKitFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotoKitFetcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PXPhotoKitFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotoKitFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A414C234()
{
  v0 = sub_1A414CF3C();
  if (swift_isClassType() && v0)
  {
    sub_1A3C69A7C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {
    sub_1A3C711A0(0, &qword_1EB133440, sub_1A414CF3C, MEMORY[0x1E69E6F90]);
  }
}

uint64_t sub_1A414C2D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A3C71A44();
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
        type metadata accessor for PhotoKitFetcher();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A3C71B00(v12 + 1, 1);
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

void *sub_1A414C4F4()
{
  v1 = v0;
  sub_1A3C71A44();
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

uint64_t sub_1A414C64C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1A524E2B4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1A524E2B4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A414C744(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A3CB6988(0, &qword_1EB126E50, &qword_1EB126B60, 0x1E696AEB0, MEMORY[0x1E69E62F8]);
          sub_1A414CED8(&qword_1EB126E48, &qword_1EB126E50, &qword_1EB126B60, 0x1E696AEB0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A414CAD4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB126B60);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A414C90C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A3CB6988(0, &qword_1EB133430, &qword_1EB126D20, 0x1E696AE18, MEMORY[0x1E69E62F8]);
          sub_1A414CED8(&qword_1EB133438, &qword_1EB133430, &qword_1EB126D20, 0x1E696AE18);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB126D20);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1A414CAD4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A414CFBC;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A414CB54()
{
  result = qword_1EB133410;
  if (!qword_1EB133410)
  {
    sub_1A3C69A7C(255, &qword_1EB133408, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133410);
  }

  return result;
}

id sub_1A414CBD0(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  result = [a2 photoLibrary];
  if (result)
  {
    v9 = result;
    type metadata accessor for PhotoKitFetcher();
    sub_1A3C70B14(v9);

    v13 = 0;
    v14 = a1;
    v15 = 0;
    v11[0] = 0;
    v11[1] = a3;
    v11[2] = 0;
    v11[3] = a4;
    v12 = 0;
    v10 = PhotoKitFetcher.fetch(_:for:options:)(&v14, a2, v11);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A414CCB4()
{
  result = qword_1EB133418;
  if (!qword_1EB133418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133418);
  }

  return result;
}

unint64_t sub_1A414CD0C()
{
  result = qword_1EB133420;
  if (!qword_1EB133420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133420);
  }

  return result;
}

uint64_t sub_1A414CD8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A414CDE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1A414CED8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB6988(255, a2, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A414CF3C()
{
  result = qword_1EB120570;
  if (!qword_1EB120570)
  {
    sub_1A3C52C70(255, &qword_1EB1265D0);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB120570);
  }

  return result;
}

double sub_1A414CFC0(char a1)
{
  result = 1.33333333;
  if (a1)
  {
    return 1.5;
  }

  return result;
}

id sub_1A414CFDC()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 peopleCollection];

  return v2;
}

id sub_1A414D034()
{
  v1 = [*(*v0 + 16) px_virtualCollections];
  v2 = [v1 peopleCollection];

  return v2;
}

BOOL sub_1A414D090(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  type metadata accessor for LemonadePhotoLibraryContext();
  if (static LemonadePhotoLibraryContext.== infix(_:_:)(v3, v7) & 1) != 0 && (v2 == v6 ? (v10 = v4 == v8) : (v10 = 0), v10 || (sub_1A524EAB4()))
  {
    v14 = v5;
    v13 = v9;
    return static PeopleUnifiedManagerSourceType.== infix(_:_:)(&v14, &v13);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A414D14C()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A414E920(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  sub_1A414D218();
  return sub_1A524C4B4();
}

unint64_t sub_1A414D218()
{
  result = qword_1EB125488;
  if (!qword_1EB125488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125488);
  }

  return result;
}

uint64_t sub_1A414D26C()
{
  sub_1A524EC94();
  sub_1A414D14C();
  return sub_1A524ECE4();
}

uint64_t sub_1A414D2C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

uint64_t sub_1A414D2E4()
{
  sub_1A524EC94();
  sub_1A414D14C();
  return sub_1A524ECE4();
}

uint64_t sub_1A414D324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = sub_1A5243624();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  (*(v15 + 16))(v13, a2, v11);
  v16 = v14;
  v17 = 0;
  if (a3)
  {
    v17 = PhotoKitItem.keyAsset.getter();
  }

  return sub_1A4308C80(v13, v17, a4 & 1, a5);
}

uint64_t sub_1A414D430(uint64_t a1, char a2, char a3)
{
  sub_1A5243004();
  *&v11[0] = v13;
  sub_1A5243014();
  v5 = *(v10 + 16);

  sub_1A5243014();
  v6 = PhotoKitItem.keyAsset.getter();

  v7 = MEMORY[0x1E69E5FE0];
  v8 = MEMORY[0x1E69E5FE8];
  sub_1A46A8D68(v11, v5, v6, a2, a3, MEMORY[0x1E69E5FE0], v18);
  v15 = v18[2];
  v16 = v18[3];
  v17 = v19;
  v13 = v18[0];
  v14 = v18[1];
  sub_1A5243024();
  sub_1A414F214(0, &qword_1EB125B98, v7, v8, type metadata accessor for SocialGroupView);
  sub_1A414D5D0();
  sub_1A3D5F9DC();
  sub_1A524AC94();

  v11[2] = v15;
  v11[3] = v16;
  v12 = v17;
  v11[0] = v13;
  v11[1] = v14;
  return sub_1A414D654(v11);
}

unint64_t sub_1A414D5D0()
{
  result = qword_1EB125BA0;
  if (!qword_1EB125BA0)
  {
    sub_1A414F214(255, &qword_1EB125B98, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], type metadata accessor for SocialGroupView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BA0);
  }

  return result;
}

uint64_t sub_1A414D654(uint64_t a1)
{
  sub_1A414F214(0, &qword_1EB125B98, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], type metadata accessor for SocialGroupView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A414D6DC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A5242944();
  *&v10[0] = v12;
  v5 = *(a2 + 16);
  v6 = PhotoKitItem.keyAsset.getter();
  v7 = MEMORY[0x1E69E5FE0];
  v8 = MEMORY[0x1E69E5FE8];
  sub_1A46A8D68(v10, v5, v6, a3, 0, MEMORY[0x1E69E5FE0], v17);
  v14 = v17[2];
  v15 = v17[3];
  v16 = v18;
  v12 = v17[0];
  v13 = v17[1];
  sub_1A5242964();
  sub_1A414F214(0, &qword_1EB125B98, v7, v8, type metadata accessor for SocialGroupView);
  sub_1A414D5D0();
  sub_1A3D5F9DC();
  sub_1A524AC94();

  v10[2] = v14;
  v10[3] = v15;
  v11 = v16;
  v10[0] = v12;
  v10[1] = v13;
  return sub_1A414D654(v10);
}

void sub_1A414D84C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = sub_1A524CA14();
  v8 = sub_1A524C634();
  v9 = [v6 transientCollectionListWithCollections:v7 title:v8 identifier:0 photoLibrary:a1[2]];

  v10 = a1[3];
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 2;
  v11 = a1[5];
  if (v11)
  {
    v12 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x258))(v10);
  }

  else
  {
    v13 = v10;
    v12 = 0;
  }

  sub_1A414E218(0, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);
  sub_1A3C6C180(&v20);
  v28 = v20;
  v29 = v21;
  sub_1A3C6C18C(&v26);
  v24 = v26;
  v25 = v27;
  v14 = sub_1A3C5A374();
  v15 = sub_1A3C30368();
  v16 = sub_1A3C5A374();
  v17 = sub_1A3C5A374();
  v18 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v28, 0, &unk_1F16F9268, 0, 1, &v24, v14 & 1, &v30, v23, v15, v16 & 1, v17 & 1, v18 & 1, v12);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v9, v10, v31, v23, &v20, sub_1A414DAB8, v19);
}

id sub_1A414DACC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1A3C52C70(0, &qword_1EB126C28);
  result = sub_1A414E0D4();
  if (!result)
  {
    result = sub_1A414E16C(a1);
    if (!result)
    {
      sub_1A414E218(0, &qword_1EB12A010, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
      ResultProvider = PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter();
      v10 = sub_1A414E6C8(ResultProvider, a2, a3 & 1, a4, 0);

      return v10;
    }
  }

  return result;
}

void sub_1A414DB94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v11 = objc_opt_self();
  v12 = sub_1A524CA14();
  v13 = sub_1A524C634();
  v14 = [v11 transientCollectionListWithCollections:v12 title:v13 identifier:0 photoLibrary:a1[2]];

  v15 = a1[3];
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 2;
  v16 = a1[5];
  if (v16)
  {
    v17 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x258))(v15);
  }

  else
  {
    v18 = v15;
    v17 = 0;
  }

  sub_1A414E218(0, &qword_1EB129F78, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItemListManager);
  sub_1A3C6C180(&v28);
  v36 = v28;
  v37 = v29;
  sub_1A3C6C18C(&v34);
  v32 = v34;
  v33 = v35;
  v19 = sub_1A3C5A374();
  v20 = sub_1A3C30368();
  v21 = sub_1A3C5A374();
  v22 = sub_1A3C5A374();
  v23 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v36, 0, &unk_1F16F9290, 0, 1, &v32, v19 & 1, &v38, v31, v20, v21 & 1, v22 & 1, v23 & 1, v17);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = a7;
  *(v24 + 24) = a8;
  *(v24 + 32) = a4;
  *(v24 + 40) = a5;
  *(v24 + 48) = a6 & 1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A414DEC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1A5244EE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB1265C0);
  result = sub_1A414E0D4();
  if (!result)
  {
    result = sub_1A414E16C(a1);
    if (!result)
    {
      sub_1A414E218(0, &qword_1EB129FE8, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
      ResultProvider = PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter();
      (*(v9 + 104))(v11, *MEMORY[0x1E69C12A8], v8);
      v14 = sub_1A414E968(ResultProvider, v11, a2, a3, a4 & 1);

      (*(v9 + 8))(v11, v8);
      return v14;
    }
  }

  return result;
}

id sub_1A414E0D4()
{
  sub_1A3C52C70(0, &qword_1EB126A10);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 simulateEmptyShelves];

  result = 0;
  if (v1)
  {
    sub_1A3C52C70(0, &qword_1EB126C40);
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  return result;
}

id sub_1A414E16C(uint64_t a1)
{
  if (*(a1 + 8) || (type metadata accessor for LemonadePeopleProgressStatus(), type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput(), ResultProvider = PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter(), sub_1A3F53C40(ResultProvider), ResultProvider, v2 = sub_1A3F546F4(), , result = 0, v2 != 4))
  {
    sub_1A3C52C70(0, &qword_1EB126C40);
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  return result;
}

void sub_1A414E218(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_1A414E280(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && *(a2 + 16))
  {
    v9 = objc_allocWithZone(MEMORY[0x1E6978840]);

    return [v9 init];
  }

  else
  {
    v11 = v6;
    sub_1A3C52C70(0, &unk_1EB12B198);
    result = sub_1A414E0D4();
    if (!result)
    {
      result = sub_1A414E16C(a1);
      if (!result)
      {
        sub_1A414E218(0, &qword_1EB12A018, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
        ResultProvider = PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter();
        v31 = [ResultProvider librarySpecificFetchOptions];

        sub_1A3CB8F68();
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1A52FF960;
        sub_1A3C52C70(0, &qword_1EB126D20);
        sub_1A3E072BC();
        v14 = swift_allocObject();
        v32 = xmmword_1A52FC9F0;
        *(v14 + 16) = xmmword_1A52FC9F0;
        v15 = MEMORY[0x1E69E6158];
        *(v14 + 56) = MEMORY[0x1E69E6158];
        v16 = v15;
        v17 = sub_1A3D710E8();
        *(v14 + 64) = v17;
        *(v14 + 32) = 1701869940;
        *(v14 + 40) = 0xE400000000000000;
        v18 = MEMORY[0x1E69E7660];
        *(v14 + 96) = MEMORY[0x1E69E75F8];
        *(v14 + 104) = v18;
        *(v14 + 72) = 10;
        *(v13 + 32) = sub_1A524D134();
        v19 = swift_allocObject();
        *(v19 + 16) = v32;
        *(v19 + 56) = v16;
        *(v19 + 64) = v17;
        *(v19 + 32) = 0x747865746E6F63;
        *(v19 + 40) = 0xE700000000000000;
        (*(v5 + 104))(v8, *MEMORY[0x1E69C0F78], v11);
        v20 = sub_1A5244674();
        v22 = v21;
        (*(v5 + 8))(v8, v11);
        v23 = MEMORY[0x1E69E6158];
        *(v19 + 96) = MEMORY[0x1E69E6158];
        *(v19 + 104) = v17;
        *(v19 + 72) = v20;
        *(v19 + 80) = v22;
        *(v13 + 40) = sub_1A524D134();
        v24 = swift_allocObject();
        *(v24 + 16) = v32;
        *(v24 + 56) = v23;
        *(v24 + 64) = v17;
        strcpy((v24 + 32), "featuredState");
        *(v24 + 46) = -4864;
        *(v24 + 96) = MEMORY[0x1E69E75F8];
        *(v24 + 104) = MEMORY[0x1E69E7660];
        *(v24 + 72) = 1;
        *(v13 + 48) = sub_1A524D134();
        v25 = sub_1A524CA14();

        v26 = [objc_opt_self() andPredicateWithSubpredicates_];

        v27 = v31;
        [v31 setPredicate_];

        v28 = v27;
        v29 = [objc_opt_self() fetchSuggestionsWithOptions_];

        return v29;
      }
    }
  }

  return result;
}

uint64_t sub_1A414E6C8(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = sub_1A5244EE4();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 librarySpecificFetchOptions];
  v16 = v15;
  if ((a3 & 1) == 0)
  {
    [v15 setFetchLimit_];
  }

  if (a5)
  {
    [v16 setSocialGroupContext_];
  }

  v17 = *MEMORY[0x1E69C12A8];
  if (a4)
  {
    (*(v11 + 104))(v14, v17, v10);
    sub_1A5244EF4();
    swift_allocObject();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v11 + 104))(v14, v17, v10);
  sub_1A5244EF4();
  swift_allocObject();
  v18 = v16;
  v19 = a1;
  sub_1A5244ED4();
  sub_1A5244BF4();
  v20 = sub_1A5244BE4();

  return v20;
}

uint64_t sub_1A414E920(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A414E968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_1A5244EE4();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 librarySpecificFetchOptions];
  if (a5)
  {
    v16 = [objc_opt_self() px_defaultDetectionTypes];
    if (!v16)
    {
      sub_1A3C52C70(0, &qword_1EB126610);
      sub_1A524CA34();
      v16 = sub_1A524CA14();
    }

    [v15 setIncludedDetectionTypes_];
  }

  if (a4 && *(a4 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  [v15 setFetchLimit_];
  (*(v11 + 16))(v14, a2, v10);
  sub_1A5244EF4();
  swift_allocObject();
  v17 = v15;
  v18 = a1;
  sub_1A5244ED4();
  sub_1A52446A4();
  v19 = sub_1A5244694();

  return v19;
}

uint64_t sub_1A414EC60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A414EDEC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1A414F044(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A414F08C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A414F0D0()
{
  result = qword_1EB124248;
  if (!qword_1EB124248)
  {
    sub_1A414F180();
    sub_1A414D5D0();
    sub_1A414E920(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124248);
  }

  return result;
}

void sub_1A414F180()
{
  if (!qword_1EB124240)
  {
    sub_1A414F214(255, &qword_1EB125B98, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], type metadata accessor for SocialGroupView);
    sub_1A5249F54();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124240);
    }
  }
}

void sub_1A414F214(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

id sub_1A414F2B0()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for AssetsRecoveryNotificationItem();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v9 = sub_1A5241144();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = v1[2];
  if (![v16 shouldShowBanner] || (v17 = objc_msgSend(v16, sel_lastRecoveredAsset)) == 0)
  {
    swift_beginAccess();

    sub_1A52458B4();
  }

  v37 = v9;
  v38 = v2;
  v36 = v17;
  result = [v17 uuid];
  if (result)
  {
    v19 = result;
    v20 = sub_1A524C674();
    v34 = v21;
    v35 = v20;

    sub_1A5241104();
    v22 = [v16 bannerTitle];
    v23 = sub_1A524C674();
    v32 = v24;
    v33 = v23;

    v25 = [v16 bannerSubtitle];
    v26 = sub_1A524C674();
    v28 = v27;

    (*(v10 + 16))(v13, v15, v37);
    v40[3] = v38;
    v40[4] = &off_1F16F9360;
    v40[0] = v1;

    sub_1A4424DA0(v35, v34, v13, v33, v32, v26, v28, v40, v8);
    v40[0] = v1;
    sub_1A4150524(v8, v6);
    v29 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v30 = swift_allocObject();
    sub_1A4150588(v6, v30 + v29);
    sub_1A4150488(&qword_1EB133460, v31, type metadata accessor for AssetsRecoveryNotificationListManager);
    sub_1A5245F44();
  }

  __break(1u);
  return result;
}

void (*sub_1A414FC58(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 48);

  return sub_1A414FCF0;
}

void sub_1A414FCF0(uint64_t a1, char a2)
{
  if (a2)
  {

    sub_1A414F9A0();
  }

  sub_1A414F9A0();
}

void sub_1A414FD54()
{
  swift_beginAccess();

  sub_1A5246184();
}

uint64_t sub_1A414FDCC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A414FE04()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1A414FE5C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 48);
}

uint64_t sub_1A414FEDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for AssetsRecoveryNotificationListManager.Mutator();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
}

void sub_1A414FF40(uint64_t a1, uint64_t a2)
{
  sub_1A4150488(&qword_1EB129548, a2, type metadata accessor for AssetsRecoveryNotificationListManager);

  sub_1A5245C54();
}

void sub_1A414FFC4(uint64_t a1, uint64_t a2)
{
  sub_1A4150488(&qword_1EB133460, a2, type metadata accessor for AssetsRecoveryNotificationListManager);

  sub_1A5245F44();
}

id sub_1A4150048@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 56);
  *a1 = v2;
  return v2;
}

uint64_t sub_1A4150488(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A41504D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A414F2B0();
  }

  return result;
}

uint64_t sub_1A4150524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetsRecoveryNotificationItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4150588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetsRecoveryNotificationItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A41505EC()
{
  type metadata accessor for AssetsRecoveryNotificationItem();

  sub_1A414F6D0();
}

uint64_t sub_1A415065C(uint64_t a1)
{
  v2 = type metadata accessor for AssetsRecoveryNotificationItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A41506B8()
{
  if (!qword_1EB133468)
  {
    type metadata accessor for AssetsRecoveryNotificationItem();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133468);
    }
  }
}

uint64_t sub_1A4150714()
{
  sub_1A3CB4D08();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EADC8);
  __swift_project_value_buffer(v1, qword_1EB1EADC8);
  sub_1A41533A4(0, &qword_1EB12B120, MEMORY[0x1E6982AA0], MEMORY[0x1E69E6F90]);
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}

uint64_t sub_1A4150880@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a1;
  v3 = MEMORY[0x1E69E6370];
  v4 = MEMORY[0x1E6968D10];
  sub_1A4153160(0, &qword_1EB12B088, MEMORY[0x1E69E6370], MEMORY[0x1E6968D10]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = MEMORY[0x1E6968D98];
  sub_1A4153160(0, &qword_1EB12B010, v3, MEMORY[0x1E6968D98]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  sub_1A3CB7EF0(&qword_1EB12B018, &qword_1EB12B010, v10);
  sub_1A5240AB4();
  v19 = 1;
  sub_1A5240AA4();
  sub_1A3CB7F40();
  a2[3] = v16;
  a2[4] = sub_1A3CB80BC();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1A3CB7EF0(&qword_1EB12B090, &qword_1EB12B088, v4);
  sub_1A5240A44();
  (*(v7 + 8))(v9, v6);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1A4150B0C()
{
  v0 = sub_1A524C634();
  v1 = PXMemoryCreationLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A4150BA0()
{
  v0 = sub_1A524C634();
  v1 = PXMemoryCreationLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

void sub_1A4150C50()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB160D30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_1EB1EADC8);
  swift_beginAccess();
  (*(v2 + 16))(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  (*(v6 + 8))(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4150E68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A4152DD4();
  result = MEMORY[0x1A59027B0](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1A4150EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A5247C74();
  v4 = type metadata accessor for AppleMusicPrivacyTipModifier();
  v5 = *(v4 + 24);
  v6 = sub_1A3C4A780();
  v7 = sub_1A5246F24();
  result = (*(*(v7 - 8) + 16))(a2 + v5, v6, v7);
  *(a2 + *(v4 + 20)) = a1;
  return result;
}

uint64_t sub_1A4150F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v61 = a2;
  v60 = sub_1A5247794();
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AppleMusicPrivacyTipModifier();
  v4 = v3 - 8;
  v56 = *(v3 - 8);
  v55 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249B24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A41528AC();
  v11 = v10;
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4152A3C();
  v47 = v14;
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4152B28();
  v18 = *(v17 - 8);
  v52 = v17;
  v53 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4152C58();
  v21 = *(v20 - 8);
  v57 = v20;
  v58 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4153160(0, &qword_1EB133470, &type metadata for GenerativeStoryAppleMusicPrivacyTip, MEMORY[0x1E697DA80]);
  v51 = v23;
  sub_1A5247C84();
  v69 = &type metadata for GenerativeStoryAppleMusicPrivacyTip;
  v50 = sub_1A4152DD4();
  v70 = v50;
  *v9 = sub_1A524B6E4();
  (*(v7 + 104))(v9, *MEMORY[0x1E697C8C0], v6);
  sub_1A4152960();
  v42 = v24;
  v43 = sub_1A41529F4(&qword_1EB1222E8, sub_1A4152960);
  sub_1A524A834();
  (*(v7 + 8))(v9, v6);
  sub_1A4152E28(&v66, &qword_1EB128BC8, sub_1A3CB4F50, MEMORY[0x1E69E6720], sub_1A41533A4);
  v66 = v42;
  v67 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524A844();
  (*(v46 + 8))(v13, v11);
  v65 = sub_1A524B334();
  v66 = v11;
  v67 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v47;
  sub_1A524A854();

  v28 = (*(v48 + 8))(v16, v27);
  v29 = v45;
  LOBYTE(v65) = (*(**(v45 + *(v4 + 28)) + 1768))(v28) & 1;
  v30 = v54;
  sub_1A4152E88(v29, v54);
  v31 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v32 = swift_allocObject();
  sub_1A4152EEC(v30, v32 + v31);
  v66 = v27;
  v67 = MEMORY[0x1E69815C0];
  v68 = v26;
  v69 = MEMORY[0x1E6981568];
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v63;
  v35 = v52;
  sub_1A524B154();

  (*(v53 + 8))(v34, v35);
  sub_1A5247C84();
  v36 = v59;
  sub_1A5247474();
  sub_1A4152E88(v29, v30);
  v37 = swift_allocObject();
  sub_1A4152EEC(v30, v37 + v31);
  v66 = v35;
  v67 = MEMORY[0x1E69E6370];
  v68 = v33;
  v69 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  sub_1A41529F4(&qword_1EB1249E0, MEMORY[0x1E6982B80]);
  v38 = v60;
  v39 = v57;
  v40 = v64;
  sub_1A524B154();

  (*(v62 + 8))(v36, v38);
  return (*(v58 + 8))(v40, v39);
}

void sub_1A41517EC(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BEC4();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1A524BFC4();
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = *(a1 + *(type metadata accessor for AppleMusicPrivacyTipModifier() + 20));
  if (((*(*v17 + 1768))() & 1) != 0 && (*(v17 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_launchedIntoGeneration) & 1) == 0)
  {
    v18 = (*(*v17 + 1304))();
    if (v18)
    {

      sub_1A3DB9B78(v18);
    }

    else if (sub_1A52455B4())
    {
      v19 = sub_1A5246F04();
      v20 = sub_1A524D264();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1A3C1C000, v19, v20, "Presenting Apple Music privacy tip", v21, 2u);
        MEMORY[0x1A590EEC0](v21, -1, -1);
      }

      sub_1A3C29A58();
      v28 = sub_1A524D474();
      sub_1A524BFA4();
      *v10 = 400;
      v22 = v29;
      (*(v29 + 104))(v10, *MEMORY[0x1E69E7F38], v8);
      MEMORY[0x1A5907370](v13, v10);
      (*(v22 + 8))(v10, v8);
      v23 = *(v30 + 8);
      v23(v13, v11);
      aBlock[4] = sub_1A4151D84;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_109;
      v24 = _Block_copy(aBlock);
      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A41529F4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      sub_1A41533A4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v25 = v34;
      sub_1A524E224();
      v26 = v28;
      MEMORY[0x1A5908790](v16, v7, v4, v24);
      _Block_release(v24);

      (*(v33 + 8))(v4, v25);
      (*(v31 + 8))(v7, v32);
      v23(v16, v11);
    }
  }
}

uint64_t sub_1A4151D84()
{
  if (qword_1EB160D30 != -1)
  {
    swift_once();
  }

  sub_1A3CB4D08();
  __swift_project_value_buffer(v0, qword_1EB1EADC8);
  swift_beginAccess();
  sub_1A52477A4();
  return swift_endAccess();
}

uint64_t sub_1A4151E20()
{
  v0 = sub_1A5247634();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v34 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v33 - v3;
  v4 = sub_1A5247794();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  sub_1A4153160(0, &qword_1EB133470, &type metadata for GenerativeStoryAppleMusicPrivacyTip, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A4152DD4();
  sub_1A5247474();
  v10 = *(v5 + 88);
  v11 = v10(v9, v4);
  v12 = *MEMORY[0x1E6982B78];
  v33 = v5;
  v13 = v9;
  v14 = *(v5 + 8);
  v14(v13, v4);
  if (v11 == v12 && (sub_1A52455B4() & 1) != 0)
  {
    type metadata accessor for AppleMusicPrivacyTipModifier();
    v15 = sub_1A5246F04();
    v16 = sub_1A524D264();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A3C1C000, v15, v16, "Apple Music privacy tip was presented - marking disclosure as shown", v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    v18 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v19 = [v18 description];

    sub_1A524C674();
    sub_1A52455C4();
  }

  else
  {
    sub_1A5247C84();
    v21 = v38;
    sub_1A5247474();
    if (v10(v21, v4) == *MEMORY[0x1E6982B68])
    {
      (*(v33 + 96))(v21, v4);
      v23 = v35;
      v22 = v36;
      v24 = v37;
      (*(v36 + 32))(v35, v21, v37);
      v25 = v34;
      (*(v22 + 104))(v34, *MEMORY[0x1E6982AF0], v24);
      v26 = sub_1A5247624();
      v27 = *(v22 + 8);
      v27(v25, v24);
      if (v26 & 1) != 0 && (sub_1A52455B4())
      {
        type metadata accessor for AppleMusicPrivacyTipModifier();
        v28 = sub_1A5246F04();
        v29 = sub_1A524D264();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_1A3C1C000, v28, v29, "Apple Music privacy tip invalidated due to cloud syncing dismissal - marking disclosure as shown", v30, 2u);
          MEMORY[0x1A590EEC0](v30, -1, -1);
        }

        v31 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
        v32 = [v31 description];

        sub_1A524C674();
        sub_1A52455C4();
      }

      return (v27)(v23, v24);
    }

    else
    {
      return (v14)(v21, v4);
    }
  }
}

uint64_t sub_1A4152324()
{
  sub_1A41531B0();
  v1 = *(v0 - 8);
  v41 = v0;
  v42 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E485A4();
  v38 = v3;
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5247584();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4153320(0, &qword_1EB128BA0, MEMORY[0x1E6982A98]);
  v35 = v9;
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = sub_1A52476E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E6982B20];
  sub_1A4153320(0, &unk_1EB124A08, MEMORY[0x1E6982B28]);
  v18 = v17;
  v34 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  sub_1A52475D4();
  MEMORY[0x1A59028B0](v15, v12, v16);
  (*(v13 + 8))(v15, v12);
  sub_1A5247594();
  v21 = MEMORY[0x1E6982A88];
  MEMORY[0x1A59028B0](v8, v5, MEMORY[0x1E6982A88]);
  (*(v6 + 8))(v8, v5);
  v43 = v12;
  v44 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v36;
  MEMORY[0x1A59028E0](v20, v18, OpaqueTypeConformance2);
  v43 = v18;
  v44 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v43 = v5;
  v44 = v21;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v39;
  v27 = v23;
  v28 = v38;
  v29 = v35;
  sub_1A5247564();
  v43 = v28;
  v44 = v29;
  v45 = v24;
  v46 = v25;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  v31 = sub_1A5247554();
  (*(v42 + 8))(v26, v30);
  (*(v40 + 8))(v27, v28);
  (*(v37 + 8))(v11, v29);
  (*(v34 + 8))(v20, v18);
  return v31;
}

uint64_t type metadata accessor for AppleMusicPrivacyTipModifier()
{
  result = qword_1EB165A50;
  if (!qword_1EB165A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A41528AC()
{
  if (!qword_1EB133478)
  {
    sub_1A4152960();
    sub_1A41529F4(&qword_1EB1222E8, sub_1A4152960);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133478);
    }
  }
}

void sub_1A4152960()
{
  if (!qword_1EB1222E0)
  {
    type metadata accessor for AppleMusicPrivacyTipModifier();
    sub_1A41529F4(&qword_1EB1255C8, type metadata accessor for AppleMusicPrivacyTipModifier);
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1222E0);
    }
  }
}

uint64_t sub_1A41529F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4152A3C()
{
  if (!qword_1EB133480)
  {
    sub_1A41528AC();
    sub_1A4152960();
    sub_1A41529F4(&qword_1EB1222E8, sub_1A4152960);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133480);
    }
  }
}

void sub_1A4152B28()
{
  if (!qword_1EB133488)
  {
    sub_1A4152A3C();
    sub_1A41528AC();
    sub_1A4152960();
    sub_1A41529F4(&qword_1EB1222E8, sub_1A4152960);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133488);
    }
  }
}

void sub_1A4152C58()
{
  if (!qword_1EB133490)
  {
    sub_1A4152B28();
    sub_1A4152A3C();
    sub_1A41528AC();
    sub_1A4152960();
    sub_1A41529F4(&qword_1EB1222E8, sub_1A4152960);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133490);
    }
  }
}

unint64_t sub_1A4152DD4()
{
  result = qword_1EB1252B8;
  if (!qword_1EB1252B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1252B8);
  }

  return result;
}

uint64_t sub_1A4152E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A4152E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleMusicPrivacyTipModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4152EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleMusicPrivacyTipModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4152F80(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppleMusicPrivacyTipModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A4152FF8()
{
  result = qword_1EB1252B0;
  if (!qword_1EB1252B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1252B0);
  }

  return result;
}

void sub_1A41530A0()
{
  sub_1A4153160(319, &qword_1EB133470, &type metadata for GenerativeStoryAppleMusicPrivacyTip, MEMORY[0x1E697DA80]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GenerativeStoryCreationViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_1A5246F24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4153160(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A41531B0()
{
  if (!qword_1EB124A00)
  {
    sub_1A3E485A4();
    sub_1A4153320(255, &qword_1EB128BA0, MEMORY[0x1E6982A98]);
    sub_1A4153320(255, &unk_1EB124A08, MEMORY[0x1E6982B28]);
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5247584();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB124A00);
    }
  }
}

void sub_1A4153320(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A41533A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4153444()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D0))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 localIdentifier];

  v4 = sub_1A524C674();
  return v4;
}

uint64_t sub_1A41535A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A41536B0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4153530();
  return sub_1A4153868;
}

uint64_t sub_1A4153874()
{
  v1 = qword_1EB1334B0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41538B8(char a1)
{
  v3 = qword_1EB1334B0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A415397C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4153A6C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4153908();
  return sub_1A4153C24;
}

uint64_t sub_1A4153CC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x220))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A4153DD0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4153C50();
  return sub_1A4153F88;
}

uint64_t sub_1A4153F94()
{
  v1 = qword_1EB1334C0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4153FD8(char a1)
{
  v3 = qword_1EB1334C0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A415409C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x250))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A415418C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4154028();
  return sub_1A4154344;
}

uint64_t sub_1A41543D0()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x940))(KeyPath);

  v3 = (v0 + qword_1EB1334C8);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

uint64_t sub_1A41544B4@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x280))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1A3DDBE10;
  a2[1] = result;
  return result;
}

uint64_t sub_1A4154550(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x288);

  return v6(sub_1A3E30F88, v5);
}

uint64_t sub_1A4154610(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v14 = *((v7 & v5) + 0x50);
  KeyPath = swift_getKeyPath();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*((*v6 & *v2) + 0x948))(KeyPath, sub_1A4164A8C, &v10, MEMORY[0x1E69E7CA8] + 8);
}

void (*sub_1A4154724(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4154370();
  return sub_1A41548DC;
}

uint64_t sub_1A41548E8()
{
  v1 = qword_1EB1334D0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A415492C(char a1)
{
  v3 = qword_1EB1334D0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41549F0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4154AE0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415497C();
  return sub_1A4154C98;
}

uint64_t sub_1A4154CA4()
{
  v1 = qword_1EB1334D8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4154CE8(char a1)
{
  v3 = qword_1EB1334D8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4154DAC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2E0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4154E9C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4154D38();
  return sub_1A4155054;
}

uint64_t sub_1A4155060@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EB1334E0;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A41550B4(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB1334E0;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void *sub_1A4155178@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x310))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A41551EC(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x318))(&v4);
}

uint64_t sub_1A415525C(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA5E8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB1334E0;
    result = swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x948))(v9);
  }

  return result;
}

void (*sub_1A415540C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4155104();
  return sub_1A41555C4;
}

void sub_1A41555D0(uint64_t a1)
{
  v3 = qword_1EB1334E8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A415569C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x340))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4155700(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x348);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A4155798(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4155628();
  return sub_1A4155950;
}

uint64_t sub_1A415595C()
{
  v1 = v0 + qword_1EB1334F0;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A41559A8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + qword_1EB1334F0;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1A4155A6C()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x940))(KeyPath);

  v3 = v0 + qword_1EB1334F0;
  swift_beginAccess();
  return *v3;
}

uint64_t sub_1A4155B44@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x370))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1A4155C1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C2A2DC(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = v4 + qword_1EB1334F0;
    result = swift_beginAccess();
    *v10 = a1;
    *(v10 + 1) = a2;
    v10[16] = a3 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x948))(v13);
  }

  return result;
}

void (*sub_1A4155E30(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4155A0C();
  return sub_1A4155FE8;
}

void sub_1A4156074()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x940))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4156148@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4156218(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3DC9268();
  sub_1A3DC92EC();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB1334F8;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x948))(v9);
  }
}

void (*sub_1A41563D8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4156014();
  return sub_1A4156590;
}

void sub_1A415659C(uint64_t a1)
{
  v3 = qword_1EB133500;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A4156668@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3D0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41566CC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3D8);
  v4 = *a1;
  return v3(v2);
}

void sub_1A415673C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A524DF24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB133500;
    swift_beginAccess();
    v7 = *(v2 + v6);
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x948))(v9);
  }
}

void (*sub_1A4156938(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A41565F4();
  return sub_1A4156AF0;
}

uint64_t sub_1A4156AFC()
{
  v1 = qword_1EB133508;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4156B40(char a1)
{
  v3 = qword_1EB133508;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4156C04@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x400))();
  *a2 = result & 1;
  return result;
}