void sub_1A46B0944(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroyTm_72()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeNavigationContainer();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  sub_1A46AE444(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5248284();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v2[9];
  sub_1A46AE444(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5242D14();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v4 + v2[11], v1);

  sub_1A3EF9960(*(v4 + v2[13]), *(v4 + v2[13] + 8), *(v4 + v2[13] + 16), *(v4 + v2[13] + 17));

  return swift_deallocObject();
}

uint64_t sub_1A46B0C00()
{
  type metadata accessor for LemonadeNavigationContainer();

  return sub_1A46AFE3C();
}

uint64_t AsyncSequence.px_first(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A3D60150;

  return MEMORY[0x1EEE6DB20](a1, a2, a3, a4, a5);
}

Swift::Void __swiftcall PXCuratedLibraryViewModel.zoomAllPhotos(toColumns:)(Swift::Int toColumns)
{
  v2 = v1;
  v3 = [v1 zoomablePhotosViewModel];
  v4 = [v3 allowedColumns];

  sub_1A3F9ADFC();
  v5 = sub_1A524CA34();

  v6 = sub_1A524DBD4();
  v7 = sub_1A46B0ED0(v6, v5);
  LOBYTE(v4) = v8;

  if ((v4 & 1) == 0)
  {
    v9 = [v2 zoomablePhotosViewModel];
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v12[4] = sub_1A46B0FC0;
    v12[5] = v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1A3D7692C;
    v12[3] = &block_descriptor_251;
    v11 = _Block_copy(v12);

    [v9 performChanges_];
    _Block_release(v11);
  }
}

unint64_t sub_1A46B0ED0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A59097F0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1A3F9ADFC();
    v8 = sub_1A524DBF4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id PXCuratedLibraryUIViewController.ppt_navigateToBottom()()
{
  v1 = [v0 viewProvider];
  v2 = [v1 gridView];

  v3 = [v2 scrollViewController];
  [v3 scrollToEdge:3 animated:0];

  result = sub_1A46E5F3C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id PXCuratedLibraryUIViewController.ppt_scroll(toPreviousAssetOfAsset:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 viewProvider];
  v9 = [v8 viewModel];

  v10 = [v9 currentDataSource];
  [v10 indexPathForAssetReference_];
  v18 = v23;
  v20 = aBlock;
  v11 = [v4 viewProvider];
  aBlock = v20;
  v23 = v18;
  [v11 selectableIndexPathClosestToIndexPath:&aBlock fromDataSource:v10 inDirection:6];
  v19 = v27;
  v21 = v26;

  aBlock = v21;
  v23 = v19;
  v12 = [v10 assetReferenceAtItemIndexPath_];
  v13 = [v4 viewProvider];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v24 = sub_1A3DEF314;
  v25 = v14;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_1A4043B58;
  *(&v23 + 1) = &block_descriptor_6_9;
  v15 = _Block_copy(&aBlock);
  v16 = v12;

  [v13 scrollLibraryViewToAssetReference:v16 scrollPosition:128 completionHandler:v15];

  _Block_release(v15);
  return v16;
}

void PXCuratedLibraryUIViewController.ppt_navigate(to:revealInOneUp:completionHandler:)(void *a1)
{
  v2 = [a1 asset];
  v3 = [a1 assetCollection];
  sub_1A524E6E4();
  __break(1u);
}

id sub_1A46B137C()
{
  v1 = [*v0 viewProvider];
  v2 = [v1 gridView];

  v3 = [v2 scrollViewController];
  [v3 scrollToEdge:3 animated:0];

  result = sub_1A46E5F3C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1A46B1448(void *a1)
{
  v2 = [a1 asset];
  v3 = [a1 assetCollection];
  sub_1A524E6E4();
  __break(1u);
}

id sub_1A46B14D8()
{
  v1 = [*v0 ppt_navigateToBottom];

  return v1;
}

id sub_1A46B1510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3E01E70;
  v9[3] = &block_descriptor_12_8;
  v6 = _Block_copy(v9);

  v7 = [v5 ppt:a1 scrollToPreviousAssetOfAsset:v6 completion:?];
  _Block_release(v6);

  return v7;
}

uint64_t sub_1A46B15DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3D54680;
  v10[3] = &block_descriptor_9_7;
  v8 = _Block_copy(v10);

  [v7 ppt:a1 navigateToAssetReference:a2 & 1 revealInOneUp:v8 completionHandler:?];
  _Block_release(v8);
}

void *MapDataProvider.__allocating_init(photoLibraryObjectIdentifier:locationManager:mostRecentCoordinateFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = v8;
  v8[2] = a1;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = 0;
  if (a2)
  {
    v8[5] = a2;
  }

  else
  {
    v10 = objc_opt_self();

    v11 = [v10 sharedScheduler];
    v12 = swift_allocObject();
    swift_weakInit();
    v15[4] = sub_1A46B1BAC;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1A3C2E0D0;
    v15[3] = &block_descriptor_252;
    v13 = _Block_copy(v15);

    [v11 scheduleTaskWithQoS:1 block:v13];

    _Block_release(v13);
  }

  return v9;
}

uint64_t sub_1A46B185C()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E695FBE8]) init];
    v19 = v5;
    v10 = v9;
    [v9 setDesiredAccuracy_];
    sub_1A3C52C70(0, &qword_1EB12B180);
    v11 = sub_1A524D474();
    v18 = v4;
    v12 = v11;
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v10;
    aBlock[4] = sub_1A46B1C48;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_18_4;
    v15 = _Block_copy(aBlock);
    v16 = v10;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A4059F40();
    sub_1A3C2A46C(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v7, v3, v15);
    _Block_release(v15);

    (*(v1 + 8))(v3, v0);
    return (*(v19 + 8))(v7, v18);
  }

  return result;
}

uint64_t MapDataProvider.deinit()
{

  return v0;
}

uint64_t MapDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A46B1C48()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 40);
    *(result + 40) = v1;

    v4 = v1;
  }

  return result;
}

id sub_1A46B1CB4(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1A46B1CDC()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0x6F686563616C502DLL;
  }

  v2 = *(v0 + 16);
  v3 = v2[2];

  v4 = [v3 localIdentifier];
  v5 = sub_1A524C674();

  sub_1A4267BB4(v2, v1);
  return v5;
}

uint64_t SearchResultItem.objectIdentifier.getter()
{
  result = *(v0 + 24);
  if (*(v0 + 24))
  {
    if (result == 1)
    {
      v2 = &qword_1EB125C30;
      v3 = &qword_1EB1265C0;
      sub_1A3C379F4(0, &qword_1EB125C30, &qword_1EB1265C0);
      v4 = &qword_1EB1317E0;
    }

    else
    {
      v2 = &qword_1EB12A800;
      v3 = &qword_1EB126AC0;
      sub_1A3C379F4(0, &qword_1EB12A800, &qword_1EB126AC0);
      v4 = &qword_1EB12A820;
    }

    sub_1A46B1E60(v4, v2, v3);
    return sub_1A5242564();
  }

  return result;
}

uint64_t sub_1A46B1E60(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C379F4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id *SearchResultItem.id.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v1 = [v1[2] px_opaqueIdentifier];
  }

  return v1;
}

id SearchResultItem.value.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 24))
  {
    v3 = *(*(v1 + 16) + 16);
    result = v3;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t SearchResultItem.name.getter()
{
  v1 = *(v0 + 24);
  if (*(v0 + 24))
  {
    v2 = *(v0 + 16);

    if (v1 == 1)
    {
      v3 = PhotoKitItem<>.name.getter();
    }

    else
    {
      v3 = PhotoKitItem<>.title.getter();
    }

    v4 = v3;
    sub_1A4267BB4(v2, v1);
    return v4;
  }

  return v1;
}

uint64_t SearchResultItem.title.getter()
{
  v1 = *(v0 + 24);
  if (*(v0 + 24))
  {
    v2 = *(v0 + 16);
    if (v1 == 1)
    {

      v1 = PhotoKitItem<>.name.getter();
      sub_1A4267BB4(v2, 1);
    }

    else
    {

      v1 = PhotoKitItem<>.title.getter();
      if (v3)
      {
        v4 = [objc_opt_self() defaultHelper];
        v5 = sub_1A524C634();

        v6 = [v4 displayableTextForTitle:v5 intent:1];

        v1 = sub_1A524C674();
      }

      sub_1A4267BB4(v2, 2);
    }
  }

  return v1;
}

uint64_t SearchResultItem.collectionKindName.getter()
{
  v1 = sub_1A5243994();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultItem.collectionItemType.getter(v4);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x1E69C2700])
  {
    result = *(v0 + 24);
    if (*(v0 + 24))
    {
      if (result == 1)
      {
        v7 = *(v0 + 16);
        v8 = v7[2];

        v9._countAndFlagsBits = 0xD000000000000023;
        v9._object = 0x80000001A53E4BF0;
        v12.value.rawValue = 0;
        v12.is_nil = 0;
        countAndFlagsBits = LemonadeLocalizedStringForPersonOrPet(person:key:visibility:)(v8, v9, v12)._countAndFlagsBits;
        sub_1A4267BB4(v7, 1);
        return countAndFlagsBits;
      }

      return sub_1A3C38BD4();
    }
  }

  else
  {
    if (v5 == *MEMORY[0x1E69C26F8] || v5 == *MEMORY[0x1E69C26E8] || v5 == *MEMORY[0x1E69C2710] || v5 == *MEMORY[0x1E69C26E0] || v5 == *MEMORY[0x1E69C26F0] || v5 == *MEMORY[0x1E69C26D0] || v5 == *MEMORY[0x1E69C2708])
    {
      return sub_1A3C38BD4();
    }

    if (v5 == *MEMORY[0x1E69C26D8])
    {
      return 0;
    }

    else
    {
      result = sub_1A524E6E4();
      __break(1u);
    }
  }

  return result;
}

void SearchResultItem.collectionItemType.getter(uint64_t a1@<X8>)
{
  if (!*(v1 + 24))
  {
    v3 = MEMORY[0x1E69C26D8];
    goto LABEL_5;
  }

  if (*(v1 + 24) != 1)
  {
    v7 = *(v1 + 16);
    v8 = v7[2];
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      sub_1A52445C4();
      v11 = sub_1A3C52C70(0, &qword_1EB1265E0);
      v28 = v11;
      v27[0] = v10;
      v12 = v8;
      sub_1A46B1CB4(v7, 2);
      v13 = sub_1A5244E84();
      __swift_destroy_boxed_opaque_existential_0(v27);
      if (v13)
      {
        v14 = *MEMORY[0x1E69C26F0];
        v15 = sub_1A5243994();
        (*(*(v15 - 8) + 104))(a1, v14, v15);

        sub_1A4267BB4(v7, 2);
        return;
      }

      sub_1A52445A4();
      v28 = v11;
      v27[0] = v10;
      v23 = sub_1A5244E84();
      sub_1A4267BB4(v7, 2);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v20 = sub_1A5243994();
      v21 = *(*(v20 - 8) + 104);
      if ((v23 & 1) == 0)
      {
        v22 = MEMORY[0x1E69C26F8];
        goto LABEL_17;
      }
    }

    else
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {
        sub_1A46B1CB4(v7, 2);
        v24 = [v8 transientIdentifier];
        if (v24)
        {
          v25 = v24;
          sub_1A524C674();

          sub_1A524C674();
          v26 = sub_1A524C894();

          sub_1A4267BB4(v7, 2);

          if (v26)
          {
            v3 = MEMORY[0x1E69C2710];
            goto LABEL_5;
          }
        }

        else
        {
          sub_1A4267BB4(v7, 2);
        }

        v3 = MEMORY[0x1E69C26E8];
        goto LABEL_5;
      }

      v17 = v16;
      sub_1A5244D04();
      v28 = sub_1A3C52C70(0, &qword_1EB126AA0);
      v27[0] = v17;
      v18 = v8;
      v19 = sub_1A5244E84();
      __swift_destroy_boxed_opaque_existential_0(v27);
      v20 = sub_1A5243994();
      v21 = *(*(v20 - 8) + 104);
      if ((v19 & 1) == 0)
      {
        v22 = MEMORY[0x1E69C26F0];
LABEL_17:
        v21(a1, *v22, v20);
        return;
      }
    }

    v22 = MEMORY[0x1E69C26E0];
    goto LABEL_17;
  }

  v3 = MEMORY[0x1E69C2700];
LABEL_5:
  v4 = *v3;
  v5 = sub_1A5243994();
  v6 = *(*(v5 - 8) + 104);

  v6(a1, v4, v5);
}

uint64_t SearchResultItem.collectionKindSymbol.getter()
{
  v1 = sub_1A5243994();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultItem.collectionItemType.getter(v4);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 != *MEMORY[0x1E69C2700])
  {
    if (v5 == *MEMORY[0x1E69C26F8])
    {
      return 0x736569726F6D656DLL;
    }

    if (v5 == *MEMORY[0x1E69C2710])
    {
      return 0x6569762E74786574;
    }

    if (v5 == *MEMORY[0x1E69C26E0])
    {
      return 0x6573616374697573;
    }

    if (v5 == *MEMORY[0x1E69C26D8])
    {
      return 0;
    }

    (*(v2 + 8))(v4, v1);
    return 0xD000000000000014;
  }

  if (*(v0 + 24) != 1)
  {
    return 0xD000000000000014;
  }

  v6 = *(v0 + 16);

  v7 = PhotoKitItem<>.isPet.getter();
  sub_1A4267BB4(v6, 1);
  if (v7)
  {
    return 0x746E697270776170;
  }

  else
  {
    return 0x662E6E6F73726570;
  }
}

id SearchResultItem.count.getter()
{
  if (*(v0 + 24) < 2u)
  {
    return 0;
  }

  v2 = *(v0 + 16);

  v3 = PhotoKitItem<>.count.getter();
  sub_1A4267BB4(v2, 2);
  return v3;
}

uint64_t sub_1A46B2A10@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 24) && *(v2 + 24) != 1)
  {
    v11 = *(v2 + 16);
    v12 = v11[2];

    v13 = [v12 *a1];
    if (v13)
    {
      v14 = v13;
      sub_1A52410F4();

      sub_1A4267BB4(v11, 2);
      v15 = sub_1A5241144();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    }

    else
    {
      sub_1A4267BB4(v11, 2);
      v16 = sub_1A5241144();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    return sub_1A3E98DA0(v7, a2);
  }

  else
  {
    v8 = sub_1A5241144();
    v9 = *(*(v8 - 8) + 56);

    return v9(a2, 1, 1, v8);
  }
}

uint64_t SearchResultItem.keyAssets.getter()
{
  if (*(v0 + 24) < 2u)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *(v0 + 16);

  v3 = PhotoKitItem<>.keyAssets.getter();
  sub_1A4267BB4(v2, 2);
  return v3;
}

uint64_t SearchResultItem.isFavorite.getter()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 24))
  {
    return 0;
  }

  v2 = *(v0 + 16);
  if (v1 == 1)
  {
    v3 = &protocol witness table for PHPerson;
  }

  else
  {
    v3 = &protocol witness table for PHCollection;
  }

  v4 = PhotoKitItem<>.isFavorite.getter(v3);
  sub_1A4267BB4(v2, v1);
  return v4 & 1;
}

void sub_1A46B2C9C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 24);
  if (*(*a1 + 24))
  {
    v4 = *(*a1 + 16);
    if (v3 == 1)
    {
      v5 = &protocol witness table for PHPerson;
    }

    else
    {
      v5 = &protocol witness table for PHCollection;
    }

    v6 = PhotoKitItem<>.isFavorite.getter(v5);
    sub_1A4267BB4(v4, v3);
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6 & 1;
}

void sub_1A46B2D1C(unsigned __int8 *a1, uint64_t a2)
{
  if (*(*a2 + 24) == 1)
  {
    v2 = *(*a2 + 16);
    v3 = *a1;

    PhotoKitItem<>.setIsFavorite(_:undoManager:)(v3, 0, &protocol witness table for PHPerson);

    sub_1A4267BB4(v2, 1);
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void SearchResultItem.isFavorite.setter(char a1)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *(v1 + 16);

    PhotoKitItem<>.setIsFavorite(_:undoManager:)(a1 & 1, 0, &protocol witness table for PHPerson);

    sub_1A4267BB4(v3, 1);
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void (*SearchResultItem.isFavorite.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  v4 = *(v1 + 24);
  *(a1 + 9) = v4;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = &protocol witness table for PHPerson;
    }

    else
    {
      v5 = &protocol witness table for PHCollection;
    }

    v6 = PhotoKitItem<>.isFavorite.getter(v5);
    sub_1A4267BB4(v3, v4);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = v6 & 1;
  return sub_1A46B2FCC;
}

void sub_1A46B2FCC(uint64_t a1)
{
  if (*(a1 + 9) == 1)
  {
    v1 = *a1;
    v2 = *(a1 + 8);

    PhotoKitItem<>.setIsFavorite(_:undoManager:)(v2, 0, &protocol witness table for PHPerson);

    sub_1A4267BB4(v1, 1);
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

uint64_t SearchResultItem.isPet.getter()
{
  if (*(v0 + 24) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 16);

  v2 = PhotoKitItem<>.isPet.getter();
  sub_1A4267BB4(v1, 1);
  return v2 & 1;
}

uint64_t SearchResultItem.description.getter()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000011, 0x80000001A53E4CA0);
  sub_1A524E624();
  return 0;
}

uint64_t SearchResultItem.diagnosticDescription.getter()
{
  MEMORY[0x1A5907B60](0x49676E696B636162, 0xED0000203A6D6574);
  sub_1A524E624();
  return 0;
}

uint64_t SearchResultItem.__deallocating_deinit()
{
  sub_1A4267BB4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1A46B32AC()
{
  v1 = *(*v0 + 24);
  if (*(*v0 + 24))
  {
    v2 = *(*v0 + 16);

    if (v1 == 1)
    {
      v3 = PhotoKitItem<>.name.getter();
    }

    else
    {
      v3 = PhotoKitItem<>.title.getter();
    }

    v4 = v3;
    sub_1A4267BB4(v2, v1);
    return v4;
  }

  return v1;
}

id sub_1A46B334C()
{
  if (*(*v0 + 24) < 2u)
  {
    return 0;
  }

  v2 = *(*v0 + 16);

  v3 = PhotoKitItem<>.count.getter();
  sub_1A4267BB4(v2, 2);
  return v3;
}

uint64_t sub_1A46B3400()
{
  if (*(*v0 + 24) < 2u)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *(*v0 + 16);

  v3 = PhotoKitItem<>.keyAssets.getter();
  sub_1A4267BB4(v2, 2);
  return v3;
}

uint64_t sub_1A46B345C()
{
  if (*(*v0 + 24) != 1)
  {
    return 0;
  }

  v1 = *(*v0 + 16);

  v2 = PhotoKitItem<>.isPet.getter();
  sub_1A4267BB4(v1, 1);
  return v2 & 1;
}

id sub_1A46B3520@<X0>(void *a1@<X8>)
{
  if (*(*v1 + 24))
  {
    v3 = *(*(*v1 + 16) + 16);
    result = v3;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1A46B3588()
{
  result = *(*v0 + 24);
  if (*(*v0 + 24))
  {
    if (result == 1)
    {
      v2 = &qword_1EB125C30;
      v3 = &qword_1EB1265C0;
      sub_1A3C379F4(0, &qword_1EB125C30, &qword_1EB1265C0);
      v4 = &qword_1EB1317E0;
    }

    else
    {
      v2 = &qword_1EB12A800;
      v3 = &qword_1EB126AC0;
      sub_1A3C379F4(0, &qword_1EB12A800, &qword_1EB126AC0);
      v4 = &qword_1EB12A820;
    }

    sub_1A46B1E60(v4, v2, v3);
    return sub_1A5242564();
  }

  return result;
}

uint64_t sub_1A46B3668()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000011, 0x80000001A53E4CA0);
  sub_1A524E624();
  return 0;
}

id *sub_1A46B3704@<X0>(id **a1@<X8>)
{
  result = SearchResultItem.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A46B3730()
{
  v1 = *(*v0 + 24);
  if (!*(*v0 + 24))
  {
    return 0;
  }

  v2 = *(*v0 + 16);
  if (v1 == 1)
  {
    v3 = &protocol witness table for PHPerson;
  }

  else
  {
    v3 = &protocol witness table for PHCollection;
  }

  v4 = PhotoKitItem<>.isFavorite.getter(v3);
  sub_1A4267BB4(v2, v1);
  return v4 & 1;
}

uint64_t sub_1A46B37A8()
{
  MEMORY[0x1A5907B60](0x49676E696B636162, 0xED0000203A6D6574);
  sub_1A524E624();
  return 0;
}

void sub_1A46B3838()
{
  sub_1A46B3AD4(&qword_1EB12A4C0);

    ;
  }
}

uint64_t sub_1A46B3A20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A46B3A70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A46B3AD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchResultItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46B4028()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1A46B4060()
{
  sub_1A46B4028();

  return swift_deallocClassInstance();
}

uint64_t sub_1A46B4094(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for PhotoStyleElement(0);
  v8 = sub_1A524DBE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_1A46B4698(v15, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = v15;
    return 1;
  }
}

uint64_t sub_1A46B42AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A46B5674();
    v2 = sub_1A524E3C4();
    v14 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      type metadata accessor for PhotoStyleElement(0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A46B447C();
        }

        v2 = v14;
        result = sub_1A524DBE4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A46B447C()
{
  v1 = v0;
  v2 = *v0;
  sub_1A46B5674();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1A524DBE4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_1A46B4698(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A46B447C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A46B47F8();
      goto LABEL_12;
    }

    sub_1A46B493C();
  }

  v8 = *v3;
  v9 = sub_1A524DBE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PhotoStyleElement(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

id sub_1A46B47F8()
{
  v1 = v0;
  sub_1A46B5674();
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1A46B493C()
{
  v1 = v0;
  v2 = *v0;
  sub_1A46B5674();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1A524DBE4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A46B4B44(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1A524E2B4();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = *(a1 + 16);
    if (v1)
    {
LABEL_3:
      sub_1A40C9D70(v1, 0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1A46B4BF4(void *a1, int64_t a2, char a3)
{
  result = sub_1A46B4C14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A46B4C14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A46B5288(0, &qword_1EB1400E0, sub_1A421EB24, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A421EB24();
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1A46B4D60(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1A524E274();
  type metadata accessor for PhotoStyleElement(0);
  sub_1A46B5500(&qword_1EB1400D0);
  result = sub_1A524CF84();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1A524E304())
      {
        goto LABEL_30;
      }

      type metadata accessor for PhotoStyleElement(0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_1A46B4F78(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v4 = type metadata accessor for PhotoStyleElement(0);
    v5 = sub_1A46B5500(&qword_1EB1400D0);
    result = MEMORY[0x1A59082D0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1A46B4094(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1A524E2B4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1A46B50C4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = type metadata accessor for PhotoStyleElement(255);
  v6 = *(v4 + 80);
  swift_getTupleTypeMetadata2();
  v7 = sub_1A524CAB4();
  v8 = sub_1A46B5500(&qword_1EB1400D0);
  v9 = sub_1A3C3DFB4(v7, v5, v6, v8);

  v10 = MEMORY[0x1E69E7CC0];
  v2[2] = v9;
  v2[3] = v10;
  v2[4] = a2;
  v2[5] = v10;
  swift_unknownObjectRetain();
  sub_1A46B3B84();
}

uint64_t sub_1A46B51A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A46B5288(255, &qword_1EB1400D8, type metadata accessor for PhotoStyleElement, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A46B5288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A46B52EC(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  swift_getObjectType();
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A40D2CE0();
    sub_1A40D743C();
    if (sub_1A524E114())
    {
      swift_beginAccess();
      sub_1A46B5500(&qword_1EB1400D0);
      v8 = v5;
      sub_1A524C484();

      if (!v6)
      {
        swift_endAccess();
        result = sub_1A524E6E4();
        __break(1u);
        return result;
      }

      swift_endAccess();
      (*(v4 + 16))(v8, v3, v4);
      swift_beginAccess();
      sub_1A524C454();
      v9 = v8;
      swift_unknownObjectRetain();
      sub_1A524C494();
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A46B5500(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotoStyleElement(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1A46B5544@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  type metadata accessor for PhotoStyleElement(0);
  sub_1A46B5500(&qword_1EB1400D0);
  v7 = v6;
  sub_1A524C484();

  v8 = v10;
  if (!v10)
  {
    (*(v5 + 24))(v4, v5);
    v8 = (*(v5 + 16))(v7, v4, v5);
    swift_unknownObjectRelease();
  }

  *a2 = v7;
  a2[1] = v8;
  return v7;
}

void sub_1A46B5674()
{
  if (!qword_1EB1400F0)
  {
    type metadata accessor for PhotoStyleElement(255);
    sub_1A46B5500(&qword_1EB1400D0);
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1400F0);
    }
  }
}

Swift::String __swiftcall LemonadeLocalizedStringForPersonOrPet(person:key:visibility:)(PHPerson *person, Swift::String key, __C::PXPeoplePetsHomeVisibility_optional visibility)
{
  rawValue = visibility.value.rawValue;
  if (visibility.is_nil)
  {
    v5 = [(PHPerson *)person photoLibrary];
    if (!v5)
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = v5;
    rawValue = [v5 px_peoplePetsHomeVisibility];
  }

  v8 = objc_opt_self();
  v9 = sub_1A524C634();
  v10 = [v8 locKeyForPersonOrPet:person withVisibility:rawValue key:v9];

  if (!v10)
  {
    sub_1A524C674();
    v10 = sub_1A524C634();
  }

  v11 = PXLemonadeLocalizedString(v10);

  v12 = sub_1A524C674();
  v14 = v13;

  v5 = v12;
  v6 = v14;
LABEL_8:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t LemonadeLocalizedStringForPeople(_:key:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_1A524C634();
  v4 = [v2 locKeyForPeople:a1 key:v3];

  if (!v4)
  {
    sub_1A524C674();
    v4 = sub_1A524C634();
  }

  v5 = PXLemonadeLocalizedString(v4);

  v6 = sub_1A524C674();
  return v6;
}

Swift::String __swiftcall LemonadeLocalizedPeopleAndPetsTitle(for:key:)(PHPhotoLibrary a1, Swift::String key)
{
  v2 = [(objc_class *)a1.super.isa px_peoplePetsHomeVisibility];
  v3 = objc_opt_self();
  v4 = sub_1A524C634();
  v5 = [v3 locKeyForPersonOrPet:0 withVisibility:v2 key:v4];

  if (!v5)
  {
    sub_1A524C674();
    v5 = sub_1A524C634();
  }

  v6 = PXLemonadeLocalizedString(v5);

  v7 = sub_1A524C674();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t PHSocialGroup.px_title.getter()
{
  v1 = [v0 customTitle];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  v8 = [v0 px_defaultTitle];
  v9 = sub_1A524C674();

  return v9;
}

id sub_1A46B5A7C(void *a1)
{
  type metadata accessor for PeopleUtilities();
  v2 = a1;
  v3 = sub_1A3C6E9EC();
  v4 = sub_1A3D782CC(v2, v3);
  v5 = [objc_opt_self() titleStringForPeople_];
  if (!v5)
  {
    sub_1A524C674();
    v5 = sub_1A524C634();
  }

  return v5;
}

uint64_t PHSocialGroup.px_defaultTitle.getter()
{
  type metadata accessor for PeopleUtilities();
  v1 = sub_1A3C6E9EC();
  v2 = sub_1A3D782CC(v0, v1);
  v3 = [objc_opt_self() titleStringForPeople_];
  v4 = sub_1A524C674();

  return v4;
}

uint64_t PHSocialGroup.px_title(for:)(uint64_t a1)
{
  v3 = [v1 customTitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A524C674();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }
  }

  if (a1)
  {
    if ([swift_unknownObjectRetain() count] >= 1)
    {
      v10 = [objc_opt_self() titleStringForPeople_];
      v11 = sub_1A524C674();
      swift_unknownObjectRelease();

      return v11;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id sub_1A46B5CB4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  PHSocialGroup.px_title(for:)(a3);
  swift_unknownObjectRelease();

  v6 = sub_1A524C634();

  return v6;
}

Swift::String __swiftcall PHSocialGroup.px_fetchEmptyContentString()()
{
  v1 = v0;
  type metadata accessor for PeopleUtilities();
  v2 = sub_1A3D782CC(v0, 3);
  v3 = [v2 fetchedObjects];
  if (!v3)
  {
    goto LABEL_32;
  }

  v4 = v3;
  sub_1A3DEF040();
  v5 = sub_1A524CA34();
  v6 = v5;
  v7 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_23:

    goto LABEL_24;
  }

  v8 = sub_1A524E2B4();
  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1A59097F0](0, v6);
    if (!__OFSUB__(v8, 1))
    {
      v12 = MEMORY[0x1A59097F0](v8 - 1, v6);
      goto LABEL_9;
    }

    goto LABEL_31;
  }

  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    __break(1u);
    goto LABEL_29;
  }

  v10 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v10 >= v9)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_1A524E404();

    v35 = [v1 localIdentifier];
    v36 = sub_1A524C674();
    v38 = v37;

    MEMORY[0x1A5907B60](v36, v38);

    v33 = sub_1A524E6E4();
    __break(1u);
    goto LABEL_33;
  }

  v11 = *(v6 + 32 + 8 * v10);
  v1 = *(v6 + 32);
  v12 = v11;
LABEL_9:
  v13 = v12;
  if (v7)
  {
    v14 = sub_1A524E2B4();
  }

  else
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14 == 2)
  {
    v15 = [v1 px_localizedName];
    v16 = sub_1A524C674();
    v18 = v17;

    v19 = [v13 px_localizedName];
    v20 = sub_1A524C674();
    v22 = v21;

    v23 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v23 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      goto LABEL_21;
    }

    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {

      sub_1A3C38BD4();
      sub_1A3E072BC();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1A52FC9F0;
      v26 = MEMORY[0x1E69E6158];
      *(v25 + 56) = MEMORY[0x1E69E6158];
      v27 = sub_1A3D710E8();
      *(v25 + 32) = v16;
      *(v25 + 40) = v18;
      *(v25 + 96) = v26;
      *(v25 + 104) = v27;
      *(v25 + 64) = v27;
      *(v25 + 72) = v20;
      *(v25 + 80) = v22;
      v28 = sub_1A524C6C4();
      v30 = v29;
    }

    else
    {
LABEL_21:

      v28 = LemonadeLocalizedStringForPeople(_:key:)(v4);
      v30 = v31;
    }

    goto LABEL_25;
  }

LABEL_24:
  v28 = LemonadeLocalizedStringForPeople(_:key:)(v4);
  v30 = v32;
  v13 = v4;
  v1 = v2;
LABEL_25:

  v33 = v28;
  v34 = v30;
LABEL_33:
  result._object = v34;
  result._countAndFlagsBits = v33;
  return result;
}

id sub_1A46B6118(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1A524C634();

  return v5;
}

id sub_1A46B6240(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);
  v5 = v4;

  if (v3)
  {
    v7[4] = v3;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A3C2E0D0;
    v7[3] = &block_descriptor_7_3;
    v3 = _Block_copy(v7);
  }

  return v3;
}

id sub_1A46B6308(char a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  v16[OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_level] = a1 & 1;
  sub_1A3C341C8(a2, &v16[OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_item]);
  sub_1A3C341C8(a3, &v16[OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_displayItem]);
  v17 = &v16[OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_px_photosViewTouchableHitTestResultTouchAction];
  *v17 = a6;
  v17[1] = a7;
  v20.receiver = v16;
  v20.super_class = v8;

  v18 = objc_msgSendSuper2(&v20, sel_initWithSpriteReference_layout_identifier_userDataProvider_, a4, a5, 0, 0);

  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v18;
}

id sub_1A46B646C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightsHitTestResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void presentPhototype(_:from:context:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a3 + 8);
    v7[0] = *a3;
    v8 = v4;
    v9 = *(a3 + 16);
    v5 = a2;
    v6 = sub_1A46B65A4(a1, v7);
    [v5 presentViewController:v6 animated:1 completion:0];
  }
}

id sub_1A46B65A4(uint64_t a1, char *a2)
{
  v3 = *a2;
  v19 = *(a2 + 8);
  v4 = *(a2 + 3);
  sub_1A46B67E0();
  sub_1A3C341C8(a1, v24);
  v5 = v25;
  v6 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v6 + 40))(v23, v5, v6);
  v7 = v23[0];
  v8 = v25;
  v9 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v20[0] = v3;
  v21 = v19;
  v22 = v4;
  (*(v9 + 32))(v23, v20, v8, v9);
  v10 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 16], v11);
  v14 = sub_1A524B8E4();
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  LOBYTE(v24[0]) = v7;
  v24[1] = v14;
  v15 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v24);
  result = [v15 view];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() systemBackgroundColor];
    [v17 setBackgroundColor_];

    [v15 setModalPresentationStyle_];
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A46B67E0()
{
  if (!qword_1EB140178)
  {
    sub_1A46B8E70(255, &qword_1EB140180, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhototypeRootContainer);
    sub_1A46B6888();
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140178);
    }
  }
}

unint64_t sub_1A46B6888()
{
  result = qword_1EB140188;
  if (!qword_1EB140188)
  {
    sub_1A46B8E70(255, &qword_1EB140180, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhototypeRootContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140188);
  }

  return result;
}

void presentPhototype(_:in:context:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v6[0] = *a3;
  v7 = v4;
  v8 = *(a3 + 16);
  v5 = sub_1A46B65A4(a1, v6);
  [a2 presentViewController:v5 animated:1 completionHandler:0];
}

uint64_t sub_1A46B6988@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v7 = *(a2 + 1);
  v6 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 40))(v23, v9, v10);
  *a3 = v23[0];
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v19[0] = v5;
  v20 = v7;
  v21 = v6;
  v22 = v8;
  (*(v12 + 32))(v23, v19, v11, v12);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v13 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v14);
  *(a3 + 8) = sub_1A524B8E4();
  __swift_destroy_boxed_opaque_existential_0(v23);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A46B6B2C@<X0>(_BYTE *a1@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  type metadata accessor for PhototypeRootContainer();
  return a2();
}

uint64_t sub_1A46B6B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = *(a1 + 16);
  sub_1A46B7A58();
  v4 = sub_1A5248804();
  v115 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  WitnessTable = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v121 = &v110 - v7;
  sub_1A5248464();
  sub_1A46B7C40();
  v9 = v8;
  v119 = a1;
  v10 = *(a1 + 24);
  sub_1A46B7CF4();
  v12 = v11;
  v13 = sub_1A46B7D64(&qword_1EB1401B8, sub_1A46B7CF4);
  v169 = v12;
  v170 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v169 = v3;
  v170 = v9;
  v171 = v10;
  v172 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v169 = v3;
  v170 = v9;
  v171 = v10;
  v172 = OpaqueTypeConformance2;
  v113 = swift_getOpaqueTypeConformance2();
  v114 = OpaqueTypeMetadata2;
  v16 = sub_1A5248834();
  v136 = v4;
  v17 = sub_1A5249754();
  v123 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v110 - v18;
  v134 = v16;
  v125 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v117 = &v110 - v23;
  v135 = v10;
  v24 = sub_1A5248834();
  v124 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v116 = &v110 - v28;
  v29 = sub_1A5249754();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v120 = &v110 - v31;
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v110 - v37;
  v128 = v39;
  v132 = v17;
  v40 = v126;
  v41 = sub_1A5249754();
  v130 = *(v41 - 8);
  v131 = v41;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v129 = &v110 - v44;
  v45 = *v40;
  if (v45 > 1)
  {
    v124 = v19;
    v127 = v24;
    if (v45 == 2)
    {
      MEMORY[0x1EEE9AC00](v42);
      v57 = v135;
      *(&v110 - 4) = v3;
      *(&v110 - 3) = v57;
      *(&v110 - 2) = v40;
      v58 = v118;
      sub_1A5248824();
      v59 = v134;
      WitnessTable = swift_getWitnessTable();
      v60 = v125;
      v61 = *(v125 + 16);
      v62 = v117;
      v61(v117, v58, v59);
      v63 = *(v60 + 8);
      v125 = v60 + 8;
      v126 = v63;
      (v63)(v58, v59);
      v61(v58, v62, v59);
      v64 = sub_1A46B7D64(&qword_1EB1401C0, sub_1A46B7A58);
      v153 = v57;
      v154 = v64;
      v65 = swift_getWitnessTable();
      v66 = v124;
      v67 = WitnessTable;
      sub_1A3DF4798(v58, v59);
      v68 = swift_getWitnessTable();
      v151 = v57;
      v152 = v68;
      v69 = v128;
      swift_getWitnessTable();
      v149 = v67;
      v150 = v65;
      v70 = v132;
      swift_getWitnessTable();
      v55 = v129;
      sub_1A3DF4890(v66, v69, v70);
      (*(v123 + 8))(v66, v70);
      v71 = v126;
      (v126)(v118, v59);
      v71(v117, v59);
    }

    else
    {
      sub_1A524BC14();
      sub_1A46B7ABC();
      sub_1A46B7B68();
      v86 = WitnessTable;
      v57 = v135;
      sub_1A524B0A4();
      v87 = sub_1A46B7D64(&qword_1EB1401C0, sub_1A46B7A58);
      v167 = v57;
      v168 = v87;
      v88 = v136;
      v125 = swift_getWitnessTable();
      v89 = v115;
      v90 = *(v115 + 16);
      v91 = v121;
      v90(v121, v86, v88);
      v126 = *(v89 + 8);
      (v126)(v86, v88);
      v90(v86, v91, v88);
      v92 = v134;
      v93 = swift_getWitnessTable();
      v94 = v86;
      v95 = v125;
      sub_1A3DF4890(v94, v92, v88);
      v96 = swift_getWitnessTable();
      v165 = v57;
      v166 = v96;
      v97 = v128;
      swift_getWitnessTable();
      v163 = v93;
      v164 = v95;
      v98 = v132;
      swift_getWitnessTable();
      v99 = v124;
      v55 = v129;
      sub_1A3DF4890(v124, v97, v98);
      (*(v123 + 8))(v99, v98);
      v100 = v126;
      (v126)(WitnessTable, v88);
      v100(v121, v88);
    }
  }

  else
  {
    v125 = v30;
    if (v45)
    {
      MEMORY[0x1EEE9AC00](v42);
      v72 = v24;
      v73 = v135;
      *(&v110 - 4) = v3;
      *(&v110 - 3) = v73;
      *(&v110 - 2) = v40;
      sub_1A5248824();
      v123 = MEMORY[0x1E697C1A8];
      v74 = swift_getWitnessTable();
      v75 = v26;
      v76 = v124;
      v77 = *(v124 + 2);
      v78 = v116;
      v127 = v72;
      v77(v116, v75, v72);
      v126 = *(v76 + 8);
      v124 = (v76 + 8);
      (v126)(v75, v72);
      v111 = v75;
      v77(v75, v78, v72);
      v79 = v120;
      sub_1A3DF4890(v75, v3, v72);
      v147 = v73;
      v148 = v74;
      v57 = v73;
      v80 = v128;
      swift_getWitnessTable();
      v81 = swift_getWitnessTable();
      v82 = sub_1A46B7D64(&qword_1EB1401C0, sub_1A46B7A58);
      v145 = v73;
      v146 = v82;
      v83 = swift_getWitnessTable();
      v143 = v81;
      v144 = v83;
      swift_getWitnessTable();
      v55 = v129;
      sub_1A3DF4798(v79, v80);
      v84 = v127;
      (*(v125 + 8))(v79, v80);
      v85 = v126;
      (v126)(v111, v84);
      v85(v116, v84);
    }

    else
    {
      v46 = *(v119 + 36);
      v112 = v32;
      v47 = *(v32 + 16);
      v47(v38, &v40[v46], v3, v43);
      (v47)(v35, v38, v3);
      v48 = swift_getWitnessTable();
      v49 = v120;
      v50 = v135;
      sub_1A3DF4798(v35, v3);
      v141 = v50;
      v142 = v48;
      v51 = v128;
      v126 = swift_getWitnessTable();
      v52 = swift_getWitnessTable();
      v53 = sub_1A46B7D64(&qword_1EB1401C0, sub_1A46B7A58);
      v139 = v50;
      v140 = v53;
      v54 = swift_getWitnessTable();
      v137 = v52;
      v138 = v54;
      swift_getWitnessTable();
      v55 = v129;
      sub_1A3DF4798(v49, v51);
      (*(v125 + 8))(v49, v51);
      v56 = *(v112 + 8);
      v56(v35, v3);
      v57 = v135;
      v56(v38, v3);
    }
  }

  v101 = swift_getWitnessTable();
  v161 = v57;
  v162 = v101;
  v102 = swift_getWitnessTable();
  v103 = swift_getWitnessTable();
  v104 = sub_1A46B7D64(&qword_1EB1401C0, sub_1A46B7A58);
  v159 = v57;
  v160 = v104;
  v105 = swift_getWitnessTable();
  v157 = v103;
  v158 = v105;
  v106 = swift_getWitnessTable();
  v155 = v102;
  v156 = v106;
  v107 = v131;
  swift_getWitnessTable();
  v108 = v130;
  (*(v130 + 16))(v133, v55, v107);
  return (*(v108 + 8))(v55, v107);
}

void sub_1A46B7A58()
{
  if (!qword_1EB140190)
  {
    sub_1A46B7ABC();
    sub_1A46B7B68();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140190);
    }
  }
}

void sub_1A46B7ABC()
{
  if (!qword_1EB140198)
  {
    type metadata accessor for DismissButton();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140198);
    }
  }
}

uint64_t type metadata accessor for DismissButton()
{
  result = qword_1EB1CDEB0;
  if (!qword_1EB1CDEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A46B7B68()
{
  result = qword_1EB1401A0;
  if (!qword_1EB1401A0)
  {
    sub_1A46B7ABC();
    sub_1A46B7BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1401A0);
  }

  return result;
}

unint64_t sub_1A46B7BE8()
{
  result = qword_1EB1CDDA0[0];
  if (!qword_1EB1CDDA0[0])
  {
    type metadata accessor for DismissButton();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CDDA0);
  }

  return result;
}

void sub_1A46B7C40()
{
  if (!qword_1EB1401A8)
  {
    sub_1A46B7CF4();
    sub_1A46B7D64(&qword_1EB1401B8, sub_1A46B7CF4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1401A8);
    }
  }
}

void sub_1A46B7CF4()
{
  if (!qword_1EB1401B0)
  {
    type metadata accessor for DismissButton();
    sub_1A46B7BE8();
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1401B0);
    }
  }
}

uint64_t sub_1A46B7D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A46B7DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhototypeRootContainer();
  v10 = *(v6 + 16);
  v10(v8, a1 + *(v9 + 36), a2);
  v10(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1A46B7EB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v18 = a3;
  sub_1A46B7C40();
  v6 = v5;
  sub_1A46B7CF4();
  sub_1A46B7D64(&qword_1EB1401B8, sub_1A46B7CF4);
  v19 = a1;
  v20 = v6;
  v21 = a2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  type metadata accessor for PhototypeRootContainer();
  swift_checkMetadataState();
  sub_1A524B0E4();
  v14 = *(v8 + 16);
  v14(v13, v10, OpaqueTypeMetadata2);
  v15 = *(v8 + 8);
  v15(v10, OpaqueTypeMetadata2);
  v14(v18, v13, OpaqueTypeMetadata2);
  return (v15)(v13, OpaqueTypeMetadata2);
}

uint64_t sub_1A46B80F4()
{
  v0 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A46B7CF4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249884();
  type metadata accessor for DismissButton();
  sub_1A46B7BE8();
  sub_1A5247F24();
  v6 = sub_1A46B7D64(&qword_1EB1401B8, sub_1A46B7CF4);
  MEMORY[0x1A5904CD0](v5, v2, v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A46B8288@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A46B8F28(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

double sub_1A46B82F8@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A46B8F28(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v2 = sub_1A524A064();
  sub_1A46B7ABC();
  v4 = a1 + *(v3 + 36);
  *v4 = v2;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  v4[40] = 1;
  return result;
}

uint64_t sub_1A46B83EC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A46B846C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFC)
  {
    v7 = 252;
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

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFC)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 4)
      {
        return v15 - 3;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
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
        LODWORD(v9) = *a1 | (a1[2] << 16);
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

void sub_1A46B85F0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_44:
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
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
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
  if (v7 > 0xFC)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 3;
  }
}

void sub_1A46B885C()
{
  sub_1A46B8F28(319, &qword_1EB124730, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A46B8900(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46B8F28(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E87388(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A46B8B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = sub_1A5242424();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1A46B8E70(0, &unk_1EB121A38, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697D670]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  sub_1A46B8EC4(v2, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_1A46B8F88(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1A524B704();
  sub_1A5242414();
  sub_1A445E16C();
  sub_1A46B7D64(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
  sub_1A524A944();
  (*(v5 + 8))(v7, v4);
  return (*(v13 + 8))(v15, v12);
}

void sub_1A46B8E70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A46B8EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A46B8F28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5248284();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A46B8F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46B8FEC()
{
  v1 = *(type metadata accessor for DismissButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A46B8900(v2);
}

uint64_t ParallaxOverlapViewConfiguration.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ParallaxOverlapViewConfiguration.init(name:size:position:overlapTestAreas:minSegmentationScore:disableParallaxIfNotAcceptable:usesParallax:headroomFractionRange:isFallbackLayout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a8;
  *(a7 + 24) = a9;
  *(a7 + 32) = a10;
  *(a7 + 40) = a11;
  *(a7 + 48) = a3;
  *(a7 + 56) = a12;
  *(a7 + 64) = a4;
  *(a7 + 65) = a5;
  *(a7 + 72) = a13;
  *(a7 + 80) = a14;
  *(a7 + 88) = a6;
  return result;
}

uint64_t ParallaxOverlapViewConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  sub_1A524C794();
  type metadata accessor for CGPoint(0);
  sub_1A524C714();
  sub_1A524C794();

  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1A590A040](*&v8);
  sub_1A46BA9B0(a1, v4);
  sub_1A524ECB4();
  if (v6 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x1A590A040](*&v9);
  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1A590A040](*&v10);
  return sub_1A524ECB4();
}

uint64_t sub_1A46B923C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 80);
  v4 = (result + 40);
  while (v2)
  {
    v6 = v4[4];
    v5 = v4[5];
    v7 = v4[3];
    v15 = *(v3 - 6);
    v8 = *(v3 - 2);
    v9 = *(v3 - 1);
    v10 = *v3;
    v3 += 7;
    v11 = v10;
    v12 = CGRectEqualToRect(*(v4 - 1), v15);
    v13 = v7 == v8 && v12;
    if (v6 != v9)
    {
      v13 = 0;
    }

    result = v5 == v11 && v13;
    v14 = result != 1 || v2-- == 1;
    v4 += 7;
    if (v14)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A46B9304(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701667182;
    v6 = 0x6E6F697469736F70;
    if (a1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 1702521203;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6172615073657375;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001ELL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A46B942C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A46BAF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A46B9454(uint64_t a1)
{
  v2 = sub_1A46BAC18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A46B9490(uint64_t a1)
{
  v2 = sub_1A46BAC18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParallaxOverlapViewConfiguration.encode(to:)(void *a1)
{
  sub_1A46BB2B0(0, &qword_1EB1401C8, sub_1A46BAC18, &type metadata for ParallaxOverlapViewConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v20 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64);
  v19[4] = *(v1 + 65);
  v19[5] = v13;
  v14 = *(v1 + 72);
  v15 = *(v1 + 80);
  v19[3] = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A46BAC18();
  sub_1A524ED34();
  LOBYTE(v23) = 0;
  v16 = v21;
  sub_1A524E994();
  if (!v16)
  {
    v17 = v20;
    v23 = v8;
    v24 = v9;
    v22 = 1;
    type metadata accessor for CGSize(0);
    sub_1A46BAC6C(&qword_1EB1387E0, type metadata accessor for CGSize);
    sub_1A524E9D4();
    v23 = v10;
    v24 = v11;
    v22 = 2;
    type metadata accessor for CGPoint(0);
    sub_1A46BAC6C(&qword_1EB12D140, type metadata accessor for CGPoint);
    sub_1A524E9D4();
    v23 = v17;
    v22 = 3;
    sub_1A46BAEB4(0, &qword_1EB1401D0, &type metadata for ParallaxAssetOverlapTestArea, MEMORY[0x1E69E62F8]);
    sub_1A46BADD0(&qword_1EB1401D8, sub_1A46BACB4);
    sub_1A524E9D4();
    v23 = v12;
    v22 = 4;
    sub_1A3E57C60();
    sub_1A524E9D4();
    LOBYTE(v23) = 5;
    sub_1A524E9A4();
    LOBYTE(v23) = 6;
    sub_1A524E9A4();
    v23 = v14;
    v24 = v15;
    v22 = 7;
    sub_1A46BAD08();
    sub_1A46BAD64(&qword_1EB1401F0, sub_1A3E57C60);
    sub_1A524E9D4();
    LOBYTE(v23) = 8;
    sub_1A524E9A4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ParallaxOverlapViewConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  ParallaxOverlapViewConfiguration.hash(into:)(v1);
  return sub_1A524ECE4();
}

uint64_t ParallaxOverlapViewConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  sub_1A46BB2B0(0, &qword_1EB1401F8, sub_1A46BAC18, &type metadata for ParallaxOverlapViewConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A46BAC18();
  v37 = v8;
  sub_1A524ED14();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  v10 = v36;
  LOBYTE(v43) = 0;
  v11 = v5;
  v12 = sub_1A524E8A4();
  v14 = v13;
  v35 = v12;
  type metadata accessor for CGSize(0);
  LOBYTE(v38) = 1;
  sub_1A46BAC6C(&qword_1EB138800, type metadata accessor for CGSize);
  sub_1A524E8E4();
  v15 = v43;
  v16 = v44;
  type metadata accessor for CGPoint(0);
  LOBYTE(v38) = 2;
  sub_1A46BAC6C(&qword_1EB12D150, type metadata accessor for CGPoint);
  sub_1A524E8E4();
  v17 = a1;
  v18 = v43;
  v19 = v44;
  sub_1A46BAEB4(0, &qword_1EB1401D0, &type metadata for ParallaxAssetOverlapTestArea, MEMORY[0x1E69E62F8]);
  LOBYTE(v38) = 3;
  sub_1A46BADD0(&qword_1EB140200, sub_1A46BAE60);
  sub_1A524E8E4();
  v20 = v43;
  LOBYTE(v38) = 4;
  sub_1A3E57CB4();
  sub_1A524E8E4();
  v21 = v43;
  LOBYTE(v43) = 5;
  v34 = sub_1A524E8B4();
  LOBYTE(v43) = 6;
  v33 = sub_1A524E8B4();
  sub_1A46BAD08();
  LOBYTE(v38) = 7;
  sub_1A46BAD64(&qword_1EB140210, sub_1A3E57CB4);
  sub_1A524E8E4();
  v22 = v43;
  v23 = v44;
  v58 = 8;
  v24 = sub_1A524E8B4();
  v34 &= 1u;
  v25 = v33 & 1;
  (*(v9 + 8))(v37, v11);
  v24 &= 1u;
  v26 = v35;
  *&v38 = v35;
  *(&v38 + 1) = v14;
  *&v39 = v15;
  *(&v39 + 1) = v16;
  *&v40 = v18;
  *(&v40 + 1) = v19;
  *&v41 = v20;
  *(&v41 + 1) = v21;
  LOBYTE(v11) = v34;
  v42[0] = v34;
  v42[1] = v25;
  *&v42[2] = v59;
  *&v42[6] = v60;
  *&v42[8] = v22;
  *&v42[16] = v23;
  v42[24] = v24;
  v27 = v39;
  *v10 = v38;
  v10[1] = v27;
  v28 = v40;
  v29 = v41;
  v30 = *v42;
  *(v10 + 73) = *&v42[9];
  v10[3] = v29;
  v10[4] = v30;
  v10[2] = v28;
  sub_1A406BAA8(&v38, &v43);
  __swift_destroy_boxed_opaque_existential_0(v17);
  v43 = v26;
  v44 = v14;
  v45 = v15;
  v46 = v16;
  v47 = v18;
  v48 = v19;
  v49 = v20;
  v50 = v21;
  v51 = v11;
  v52 = v25;
  v53 = v59;
  v54 = v60;
  v55 = v22;
  v56 = v23;
  v57 = v24;
  return sub_1A406BB58(&v43);
}

uint64_t sub_1A46BA038()
{
  sub_1A524EC94();
  ParallaxOverlapViewConfiguration.hash(into:)(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A46BA07C()
{
  sub_1A524EC94();
  ParallaxOverlapViewConfiguration.hash(into:)(v1);
  return sub_1A524ECE4();
}

void ParallaxAssetOverlapTestArea.init(normalizedRect:maximumOverlappingAreaFraction:minimumOverlappingAreaFraction:maxSkyOverlapAreaFraction:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
}

uint64_t ParallaxAssetOverlapTestArea.hash(into:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  type metadata accessor for CGRect(0);
  sub_1A524C714();
  sub_1A524C794();

  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1A590A040](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1A590A040](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  return MEMORY[0x1A590A040](*&v6);
}

unint64_t sub_1A46BA1D8()
{
  v1 = 0x7A696C616D726F6ELL;
  v2 = 0xD00000000000001ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
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

uint64_t sub_1A46BA268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A46BB5C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A46BA290(uint64_t a1)
{
  v2 = sub_1A46BB25C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A46BA2CC(uint64_t a1)
{
  v2 = sub_1A46BB25C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParallaxAssetOverlapTestArea.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1A46BB2B0(0, &qword_1EB140218, sub_1A46BB25C, &type metadata for ParallaxAssetOverlapTestArea.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v11 = *(v3 + 4);
  v10 = *(v3 + 5);
  v12 = *(v3 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A46BB25C();
  sub_1A524ED34();
  v13 = v3[1];
  v17 = *v3;
  v18 = v13;
  v16 = 0;
  type metadata accessor for CGRect(0);
  sub_1A46BAC6C(&qword_1EB130D90, type metadata accessor for CGRect);
  sub_1A524E9D4();
  if (!v2)
  {
    *&v17 = v11;
    v16 = 1;
    sub_1A3E57C60();
    sub_1A524E9D4();
    *&v17 = v10;
    v16 = 2;
    sub_1A524E9D4();
    *&v17 = v12;
    v16 = 3;
    sub_1A524E9D4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ParallaxAssetOverlapTestArea.hashValue.getter()
{
  sub_1A524EC94();
  ParallaxAssetOverlapTestArea.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t ParallaxAssetOverlapTestArea.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A46BB2B0(0, &qword_1EB140220, sub_1A46BB25C, &type metadata for ParallaxAssetOverlapTestArea.CodingKeys, MEMORY[0x1E69E6F48]);
  v18 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A46BB25C();
  sub_1A524ED14();
  if (!v2)
  {
    v9 = v6;
    type metadata accessor for CGRect(0);
    v21 = 0;
    sub_1A46BAC6C(&qword_1EB130DC8, type metadata accessor for CGRect);
    v10 = v18;
    sub_1A524E8E4();
    v16 = v20;
    v17 = v19;
    v21 = 1;
    sub_1A3E57CB4();
    sub_1A524E8E4();
    v11 = v19;
    v21 = 2;
    sub_1A524E8E4();
    v12 = v19;
    v21 = 3;
    sub_1A524E8E4();
    (*(v9 + 8))(v8, v10);
    v14 = v19;
    v15 = v16;
    *a2 = v17;
    *(a2 + 16) = v15;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 48) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A46BA8C8()
{
  sub_1A524EC94();
  ParallaxAssetOverlapTestArea.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A46BA928()
{
  sub_1A524EC94();
  ParallaxAssetOverlapTestArea.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A46BA9B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1A590A010](v3);
  if (v3)
  {
    type metadata accessor for CGRect(0);
    v5 = (a2 + 80);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      sub_1A524C714();
      sub_1A524C794();

      if (v6 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x1A590A040](*&v9);
      if (v7 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v7;
      }

      MEMORY[0x1A590A040](*&v10);
      if (v8 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v8;
      }

      result = MEMORY[0x1A590A040](*&v11);
      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s12PhotosUICore32ParallaxOverlapViewConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 65);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = *(a1 + 88);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v16 = *(a2 + 32);
  v15 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 64);
  v19 = *(a2 + 65);
  v20 = *(a2 + 88);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
    if (v3 != v14 || v2 != v13 || v5 != v16)
    {
      return result;
    }

    v28 = *(a2 + 56);
    v29 = v7;
    v26 = *(a2 + 72);
    v27 = v11;
    v24 = *(a2 + 80);
    v25 = v10;
  }

  else
  {
    v28 = *(a2 + 56);
    v29 = *(a1 + 56);
    v26 = *(a2 + 72);
    v27 = *(a1 + 72);
    v24 = *(a2 + 80);
    v25 = *(a1 + 80);
    v22 = sub_1A524EAB4();
    result = 0;
    if ((v22 & 1) == 0 || v3 != v14 || v2 != v13 || v5 != v16)
    {
      return result;
    }
  }

  if (v4 == v15)
  {
    v23 = sub_1A46B923C(v6, v17);
    result = 0;
    if ((v23 & 1) != 0 && v29 == v28 && v8 == v18 && v9 == v19 && v27 == v26 && v25 == v24)
    {
      return v12 ^ v20 ^ 1u;
    }
  }

  return result;
}

unint64_t sub_1A46BAC18()
{
  result = qword_1EB1CDF50;
  if (!qword_1EB1CDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CDF50);
  }

  return result;
}

uint64_t sub_1A46BAC6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A46BACB4()
{
  result = qword_1EB1401E0;
  if (!qword_1EB1401E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1401E0);
  }

  return result;
}

void sub_1A46BAD08()
{
  if (!qword_1EB1401E8)
  {
    sub_1A3EF6938();
    v0 = sub_1A524D104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1401E8);
    }
  }
}

uint64_t sub_1A46BAD64(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A46BAD08();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46BADD0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A46BAEB4(255, &qword_1EB1401D0, &type metadata for ParallaxAssetOverlapTestArea, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A46BAE60()
{
  result = qword_1EB140208;
  if (!qword_1EB140208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140208);
  }

  return result;
}

void sub_1A46BAEB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A46BAF04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A53B5290 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A53E5000 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A53E5020 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6172615073657375 && a2 == 0xEC00000078616C6CLL || (sub_1A524EAB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A53B52B0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A53E5040 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

BOOL _s12PhotosUICore28ParallaxAssetOverlapTestAreaV2eeoiySbAC_ACtFZ_0(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  y = a1[1].origin.y;
  width = a1[1].size.width;
  v5 = a2[1].origin.x;
  v6 = a2[1].origin.y;
  v7 = a2[1].size.width;
  v8 = CGRectEqualToRect(*a1, *a2);
  result = 0;
  if (v8 && x == v5 && y == v6)
  {
    return width == v7;
  }

  return result;
}

unint64_t sub_1A46BB25C()
{
  result = qword_1EB1CDF58[0];
  if (!qword_1EB1CDF58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CDF58);
  }

  return result;
}

void sub_1A46BB2B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A46BB320()
{
  result = qword_1EB140228;
  if (!qword_1EB140228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140228);
  }

  return result;
}

unint64_t sub_1A46BB3B8()
{
  result = qword_1EB1CE460[0];
  if (!qword_1EB1CE460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CE460);
  }

  return result;
}

unint64_t sub_1A46BB410()
{
  result = qword_1EB1CE670[0];
  if (!qword_1EB1CE670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CE670);
  }

  return result;
}

unint64_t sub_1A46BB468()
{
  result = qword_1EB1CE780;
  if (!qword_1EB1CE780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CE780);
  }

  return result;
}

unint64_t sub_1A46BB4C0()
{
  result = qword_1EB1CE788[0];
  if (!qword_1EB1CE788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CE788);
  }

  return result;
}

unint64_t sub_1A46BB518()
{
  result = qword_1EB1CE810[0];
  if (!qword_1EB1CE810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CE810);
  }

  return result;
}

unint64_t sub_1A46BB570()
{
  result = qword_1EB162158[0];
  if (!qword_1EB162158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB162158);
  }

  return result;
}

uint64_t sub_1A46BB5C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A696C616D726F6ELL && a2 == 0xEE00746365526465;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A53E5060 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A53E5080 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A53E50A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

char *sub_1A46BB73C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC12PhotosUICore31MapOptionsBlurredBackgroundView_backdropView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DD838]) init];
  if ((MEMORY[0x1A590D320]() & 1) != 0 || (v3 = [objc_opt_self() effectWithStyle_]) == 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v10.receiver = v0;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_initWithEffect_, v4);

  v6 = v5;
  v7 = sub_1A524C634();
  [v6 _setGroupName_];

  v8 = *&v6[OBJC_IVAR____TtC12PhotosUICore31MapOptionsBlurredBackgroundView_backdropView];
  [v6 _setCaptureView_];

  return v6;
}

id sub_1A46BB990()
{
  v0 = objc_allocWithZone(type metadata accessor for MapOptionsBlurredBackgroundView());

  return [v0 init];
}

uint64_t sub_1A46BB9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46BBAC4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A46BBA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46BBAC4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A46BBA8C()
{
  sub_1A46BBAC4();
  sub_1A52496F4();
  __break(1u);
}

unint64_t sub_1A46BBAC4()
{
  result = qword_1EB140238;
  if (!qword_1EB140238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140238);
  }

  return result;
}

id sub_1A46BBB2C(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  v4[OBJC_IVAR____TtC12PhotosUICore28LegacyPersonBannerModelProxy_canPushViewController] = 0;
  v4[OBJC_IVAR____TtC12PhotosUICore28LegacyPersonBannerModelProxy_canPresentPopovers] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore28LegacyPersonBannerModelProxy_model + 8] = a2;
  swift_unknownObjectUnownedInit();
  v7.receiver = v4;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1A46BBFC4(void *a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2 + OBJC_IVAR____TtC12PhotosUICore28LegacyPersonBannerModelProxy_model;
  swift_unknownObjectUnownedLoadStrong();
  v6 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 8))(ObjectType, v6);
  swift_unknownObjectRelease();
  if (v8 && (sub_1A3D63AC0(), v9 = a1, v10 = sub_1A524DBF4(), v8, v9, (v10 & 1) != 0))
  {
    swift_unknownObjectUnownedLoadStrong();
    v11 = *(v5 + 8);
    v12 = swift_getObjectType();
    (*(v11 + 16))(0, v12, v11);
    result = swift_unknownObjectRelease();
    if (a2)
    {
      return a2(result);
    }
  }

  else
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000026, 0x80000001A53E52A0);
    v14 = [a1 description];
    v15 = sub_1A524C674();
    v17 = v16;

    MEMORY[0x1A5907B60](v15, v17);

    MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53E52D0);
    swift_unknownObjectUnownedLoadStrong();
    v18 = *(v5 + 8);
    v19 = swift_getObjectType();
    (*(v18 + 8))(v19, v18);
    swift_unknownObjectRelease();
    sub_1A421EA88();
    v20 = sub_1A524C714();
    MEMORY[0x1A5907B60](v20);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t LemonadeGenerativeMemoriesConfiguration.hash(into:)()
{
  v1 = v0;
  sub_1A524DC04();
  v2 = *(v0 + 16);
  sub_1A524ECB4();
  if (v2)
  {
    v3 = v2;
    sub_1A524DC04();
  }

  sub_1A524ECB4();
  type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  sub_1A5244854();
  sub_1A46BC70C(&qword_1EB1402C0, MEMORY[0x1E69C1030]);
  sub_1A524C4B4();
  result = *(v1 + 32);
  if (result)
  {
    return MEMORY[0x1A590A010]();
  }

  return result;
}

uint64_t LemonadeGenerativeMemoriesConfiguration.init(photoLibrary:memoryCreationAttributedText:startCreation:suggestionViewModel:transitionType:generationEntryPoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 8) = a5;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *a7 = a1;
  v9 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration() + 36);
  v10 = sub_1A5244854();
  v11 = *(*(v10 - 8) + 32);

  return v11(a7 + v9, a6, v10);
}

uint64_t LemonadeGenerativeMemoriesConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  LemonadeGenerativeMemoriesConfiguration.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A46BC3F0()
{
  sub_1A524EC94();
  LemonadeGenerativeMemoriesConfiguration.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A46BC434()
{
  sub_1A524EC94();
  LemonadeGenerativeMemoriesConfiguration.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t _s12PhotosUICore39LemonadeGenerativeMemoriesConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A3C52C70(0, &qword_1EB12B160);
  if ((sub_1A524DBF4() & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    sub_1A3C52C70(0, &qword_1EB126A40);
    v6 = v5;
    v7 = v4;
    v8 = sub_1A524DBF4();

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v5)
  {
LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_9;
  }

  v11 = *(a2 + 32);
  if (*(a1 + 32))
  {
    v15 = *(a1 + 32);
    if (!v11)
    {
      goto LABEL_9;
    }

    v13 = *(a2 + 32);
    type metadata accessor for GenerativeStorySuggestionViewModel(0);
    sub_1A46BC70C(&qword_1EB13CD18, type metadata accessor for GenerativeStorySuggestionViewModel);

    v12 = sub_1A524C594();

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    goto LABEL_9;
  }

  type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  sub_1A5244854();
  sub_1A46BC70C(&qword_1EB124C90, MEMORY[0x1E69C1030]);
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v15 == v13 && v16 == v14)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A524EAB4();
  }

  return v9 & 1;
}

uint64_t sub_1A46BC70C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A46BC754@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v58 = a1;
  v72 = a2;
  v3 = sub_1A5242C14();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46BD1F4();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46BD178(0);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v55 - v12;
  v13 = sub_1A5249234();
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v93 = v15;
  v16 = swift_retain_n();
  v17 = PhotosObservableTrip<>.title.getter(v16);
  v60 = v18;
  v61 = v17;
  sub_1A5242E54();
  v59 = v92;
  sub_1A40F3878();
  v20 = v19;
  sub_1A46BD130(&qword_1EB129290, sub_1A40F3878);
  v21 = MEMORY[0x1E6981E70];
  v22 = sub_1A41F7694();
  v23 = sub_1A3C5A374();
  v24 = sub_1A43C9BB4();
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = v26;
  v28 = sub_1A43C9BD0();
  v54 = v21;
  v29 = v58;
  LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v93, 0, 0, v61, v60, v59, v23 & 1, sub_1A3F8B548, v94, v22, v27, v28, v54, v20);
  v89 = v94[4];
  v90 = v94[5];
  v91 = v95;
  v85 = v94[0];
  v86 = v94[1];
  v87 = v94[2];
  v88 = v94[3];
  if (shouldUseNewCollectionsLayout()() && (v29[1] & 1) == 0)
  {
    v99 = *(v29 + 56);
    v38 = v29[6];
    v98 = v38;
    if (v99 == 1)
    {
      v30 = 1.0;
      if ((v38 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {

      sub_1A524D254();
      v52 = sub_1A524A014();
      sub_1A5246DF4();

      v53 = v55;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A46BE3DC(&v98, sub_1A46BE43C);
      (*(v56 + 8))(v53, v57);
      v30 = 1.0;
      if (LOBYTE(v75[0]) != 1)
      {
        goto LABEL_4;
      }
    }
  }

  v30 = 0.0;
LABEL_4:
  v82 = v89;
  v83 = v90;
  LOBYTE(v84) = v91;
  v78 = v85;
  v79 = v86;
  v80 = v87;
  v81 = v88;
  *&v75[0] = v15;
  v31 = MEMORY[0x1E69C2168];
  v32 = *(v29 + 8);
  if (!*(v29 + 8))
  {
    v31 = MEMORY[0x1E69C2170];
  }

  v33 = (*(v62 + 104))(v64, *v31, v63);
  v34 = *(v29 + 2);
  v100 = *(v29 + 1);
  v101 = v34;
  v102 = 0;
  MEMORY[0x1EEE9AC00](v33);
  sub_1A46BD2E8();
  sub_1A46BD130(&unk_1EB129280, sub_1A40F3878);
  sub_1A46BD42C();
  v35 = v67;
  sub_1A5243E84();
  if (!shouldUseNewCollectionsLayout()() || v32)
  {
    goto LABEL_15;
  }

  v97 = *(v29 + 56);
  v36 = v29[6];
  v96 = v36;
  if (v97 == 1)
  {
    v37 = 0.0;
    if ((v36 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_1A524D254();
  v39 = sub_1A524A014();
  sub_1A5246DF4();

  v40 = v55;
  sub_1A5249224();
  swift_getAtKeyPath();
  sub_1A46BE3DC(&v96, sub_1A46BE43C);
  (*(v56 + 8))(v40, v57);
  v37 = 0.0;
  if (LOBYTE(v75[0]) == 1)
  {
LABEL_15:
    v37 = 1.0;
  }

LABEL_16:
  v41 = v65;
  (*(v68 + 32))(v65, v35, v69);
  *(v41 + *(v66 + 36)) = v37;
  v42 = v70;
  sub_1A46BE378(v41, v70);
  v43 = v71;
  sub_1A46BE560(v42, v71, sub_1A46BD178);
  *&v74 = v84;
  v45 = v78;
  v44 = v79;
  v73[0] = v78;
  v73[1] = v79;
  v46 = v83;
  v73[4] = v82;
  v73[5] = v83;
  v47 = v80;
  v48 = v81;
  v73[2] = v80;
  v73[3] = v81;
  *(&v74 + 1) = v30;
  v49 = v72;
  v72[4] = v82;
  v49[5] = v46;
  v49[2] = v47;
  v49[3] = v48;
  *v49 = v45;
  v49[1] = v44;
  v49[6] = v74;
  sub_1A46BCFF0();
  sub_1A46BE560(v43, v49 + *(v50 + 48), sub_1A46BD178);
  sub_1A46BE560(v73, v75, sub_1A46BD060);
  sub_1A46BE3DC(v42, sub_1A46BD178);
  sub_1A46BE3DC(v43, sub_1A46BD178);
  v75[4] = v82;
  v75[5] = v83;
  v76 = v84;
  v75[0] = v78;
  v75[1] = v79;
  v75[2] = v80;
  v75[3] = v81;
  v77 = v30;
  return sub_1A46BE3DC(v75, sub_1A46BD060);
}

void sub_1A46BCF54()
{
  if (!qword_1EB1402D0)
  {
    sub_1A46BCFBC(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1402D0);
    }
  }
}

void sub_1A46BCFF0()
{
  if (!qword_1EB1402E0)
  {
    sub_1A46BD060(255);
    sub_1A46BD178(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1402E0);
    }
  }
}

void sub_1A46BD080()
{
  if (!qword_1EB125790)
  {
    sub_1A40F3878();
    sub_1A46BD130(&qword_1EB129290, sub_1A40F3878);
    v0 = type metadata accessor for LemonadeMaterialTitleCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125790);
    }
  }
}

uint64_t sub_1A46BD130(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A46BD198(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A46BD1F4()
{
  if (!qword_1EB128FE8)
  {
    sub_1A40F3878();
    sub_1A46BD2E8();
    sub_1A46BD130(&unk_1EB129280, sub_1A40F3878);
    sub_1A46BD130(&qword_1EB129290, sub_1A40F3878);
    sub_1A46BD42C();
    v0 = sub_1A5243E74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128FE8);
    }
  }
}

void sub_1A46BD2E8()
{
  if (!qword_1EB127528)
  {
    sub_1A46BE4F0(255, &qword_1EB127CD0, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127528);
    }
  }
}

void sub_1A46BD3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A46BD42C()
{
  result = qword_1EB127530;
  if (!qword_1EB127530)
  {
    sub_1A46BD2E8();
    sub_1A46BD4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127530);
  }

  return result;
}

unint64_t sub_1A46BD4A4()
{
  result = qword_1EB127CD8;
  if (!qword_1EB127CD8)
  {
    sub_1A46BE4F0(255, &qword_1EB127CD0, MEMORY[0x1E697F960]);
    sub_1A46BD540();
    sub_1A46BD5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127CD8);
  }

  return result;
}

unint64_t sub_1A46BD540()
{
  result = qword_1EB127DD0;
  if (!qword_1EB127DD0)
  {
    sub_1A46BD35C(255);
    sub_1A46BD130(&unk_1EB1298B0, sub_1A45A8A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127DD0);
  }

  return result;
}

unint64_t sub_1A46BD5E8()
{
  result = qword_1EB127EB0;
  if (!qword_1EB127EB0)
  {
    sub_1A46BD390(255);
    sub_1A46BD130(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127EB0);
  }

  return result;
}

uint64_t sub_1A46BD690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = MEMORY[0x1E697F948];
  sub_1A46BD3C4(0, &unk_1EB122D20, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v50 - v5;
  sub_1A46BD390(0);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A5243834();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46BE48C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - v11;
  v13 = sub_1A5243EC4();
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46BE4F0(0, &qword_1EB122B48, MEMORY[0x1E697F948]);
  v60 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v50 - v17;
  sub_1A46BD3C4(0, &qword_1EB122C70, sub_1A45A8A18, v3);
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  sub_1A46BD35C(0);
  v59 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A8A18();
  v53 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v50 - v27;
  v29 = *(a1 + 8);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v30 = [swift_getObjCClassFromMetadata() sharedInstance];
  v31 = v30;
  if (v29 == 1)
  {
    v32 = [v30 enableInlinePlaybackTrips];

    if (v32)
    {
      sub_1A5242E24();
      v78 = v79;
      sub_1A5242E54();
      v33 = v70;
      sub_1A5242E34();
      v34 = *(v77 + 16);

      v75 = v34;
      v76 = 0;
      v35 = MEMORY[0x1E69E5FE0];
      v36 = MEMORY[0x1E69E5FE8];
      j___s12PhotosUICore0A23CollectionPreviewPlayerC13ConfigurationV7defaultAEvgZ(&v70);
      v64 = v70;
      v65 = v71;
      v66 = *(&v71 + 1);
      v67 = v72;
      v68 = v73;
      v69 = v74;
      v37 = sub_1A3D41FBC();
      LemonadeInlineStoryPlayerView<>.init(id:asset:content:configuration:placeholderBlur:onVisibilityChanged:)(&v78, v33, 0, 0, v35, v36, v28, v37);
      sub_1A46BE560(v28, v20, sub_1A45A8A18);
      swift_storeEnumTagMultiPayload();
      sub_1A46BD130(&unk_1EB1298B0, sub_1A45A8A18);
      v38 = v58;
      sub_1A5249744();
      sub_1A46BE560(v38, v61, sub_1A46BD35C);
      swift_storeEnumTagMultiPayload();
      sub_1A46BD540();
      sub_1A46BD5E8();
      sub_1A5249744();
      sub_1A46BE3DC(v38, sub_1A46BD35C);
      return sub_1A46BE3DC(v28, sub_1A45A8A18);
    }
  }

  else
  {
    v40 = [v30 enableInlinePlaybackTripsShelf];

    if (v40)
    {
      sub_1A5242E24();
      v78 = v79;
      sub_1A5242E54();
      v41 = v70;
      sub_1A5242E34();
      v42 = *(v77 + 16);

      v75 = v42;
      v76 = 0;
      v43 = MEMORY[0x1E69E5FE0];
      v44 = MEMORY[0x1E69E5FE8];
      j___s12PhotosUICore0A23CollectionPreviewPlayerC13ConfigurationV7defaultAEvgZ(&v70);
      v64 = v70;
      v65 = v71;
      v66 = *(&v71 + 1);
      v67 = v72;
      v68 = v73;
      v69 = v74;
      v45 = sub_1A3D41FBC();
      LemonadeInlineStoryPlayerView<>.init(id:asset:content:configuration:placeholderBlur:onVisibilityChanged:)(&v78, v41, 0, 0, v43, v44, v25, v45);
      sub_1A46BE560(v25, v20, sub_1A45A8A18);
      swift_storeEnumTagMultiPayload();
      sub_1A46BD130(&unk_1EB1298B0, sub_1A45A8A18);
      v46 = v58;
      sub_1A5249744();
      sub_1A46BE560(v46, v61, sub_1A46BD35C);
      swift_storeEnumTagMultiPayload();
      sub_1A46BD540();
      sub_1A46BD5E8();
      sub_1A5249744();
      sub_1A46BE3DC(v46, sub_1A46BD35C);
      return sub_1A46BE3DC(v25, sub_1A45A8A18);
    }
  }

  sub_1A5242E54();
  v70 = 0u;
  v71 = 0u;
  v72 = 1;
  v47 = sub_1A52429A4();
  (*(*(v47 - 8) + 56))(v12, 1, 1, v47);
  (*(v50 + 104))(v9, *MEMORY[0x1E69C2678], v51);
  sub_1A5243ED4();
  v48 = v54;
  (*(v54 + 16))(v56, v15, v13);
  swift_storeEnumTagMultiPayload();
  sub_1A46BD130(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
  v49 = v57;
  sub_1A5249744();
  sub_1A46BE560(v49, v61, sub_1A46BD390);
  swift_storeEnumTagMultiPayload();
  sub_1A46BD540();
  sub_1A46BD5E8();
  sub_1A5249744();
  sub_1A46BE3DC(v49, sub_1A46BD390);
  return (*(v48 + 8))(v15, v13);
}

uint64_t sub_1A46BE164@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  result = swift_getKeyPath();
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  return result;
}

unint64_t sub_1A46BE1EC()
{
  result = qword_1EB1402F8;
  if (!qword_1EB1402F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1402F8);
  }

  return result;
}

uint64_t sub_1A46BE25C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v8[0] = v1[2];
  *(v8 + 9) = *(v1 + 41);
  *a1 = sub_1A524BC74();
  a1[1] = v4;
  sub_1A46BCF54();
  return sub_1A46BC754(v7, (a1 + *(v5 + 44)));
}

void sub_1A46BE2DC()
{
  if (!qword_1EB140308)
  {
    sub_1A46BCFBC(255);
    sub_1A46BD130(&qword_1EB140310, sub_1A46BCFBC);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140308);
    }
  }
}

uint64_t sub_1A46BE378(uint64_t a1, uint64_t a2)
{
  sub_1A46BD178(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46BE3DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A46BE43C()
{
  if (!qword_1EB1246E0)
  {
    v0 = sub_1A5247E54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1246E0);
    }
  }
}

void sub_1A46BE48C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A46BE4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A46BD35C(255);
    v7 = v6;
    sub_1A46BD390(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A46BE560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46BE5C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B808(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LemonadeSharedWithYouCell();
  sub_1A3F75EB4(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5244084();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for LemonadeSharedWithYouCell()
{
  result = qword_1EB1676D0;
  if (!qword_1EB1676D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46BE82C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1A5244084();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A5243834();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B808(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  sub_1A4178098(0);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F97D94();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v40 = 0u;
  v41 = 0u;
  v42 = 1;
  v22 = sub_1A52429A4();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  (*(v5 + 104))(v7, *MEMORY[0x1E69C2678], v35);
  swift_unknownObjectRetain();
  sub_1A5243ED4();
  v23 = &v13[*(v34 + 36)];
  *v23 = 0x3FF0000000000000;
  *(v23 + 4) = 256;
  v24 = v36;
  sub_1A46BE5C8(v36);
  sub_1A3F97E3C();
  sub_1A524A784();
  (*(v37 + 8))(v24, v38);
  sub_1A46BF2A0(v13);
  v25 = *(a1 + 8);
  if (v25)
  {
    PXDisplayCollectionDetailedCountsMake(v25);
    v27 = v26;
    v28 = v26;
  }

  else
  {
    v27 = 0;
  }

  v29 = *(v16 + 16);
  v29(v18, v21, v15);
  v30 = v39;
  v29(v39, v18, v15);
  sub_1A46BED14();
  *&v30[*(v31 + 48)] = v27;
  v32 = *(v16 + 8);
  v32(v21, v15);

  return (v32)(v18, v15);
}

void sub_1A46BEC7C()
{
  if (!qword_1EB140318)
  {
    sub_1A3C6B808(255, &qword_1EB140320, sub_1A46BED14, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140318);
    }
  }
}

void sub_1A46BED14()
{
  if (!qword_1EB140328)
  {
    sub_1A3F97D94();
    sub_1A46BED84();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB140328);
    }
  }
}

void sub_1A46BED84()
{
  if (!qword_1EB140350)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140350);
    }
  }
}

uint64_t sub_1A46BEDD4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A3C6B808(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A46BEE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for LemonadeSharedWithYouCell() + 24);

  return sub_1A46BEEA4(a3, v5);
}

uint64_t sub_1A46BEEA4(uint64_t a1, uint64_t a2)
{
  sub_1A3C6B808(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46BEF54@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249584();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  sub_1A46BEC7C();
  return sub_1A46BE82C(v1, (a1 + *(v3 + 44)));
}

void sub_1A46BEFC4()
{
  sub_1A3C6B808(319, &qword_1EB126BC0, sub_1A3D435C4, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A3C6B808(319, &unk_1EB138740, sub_1A46BF0F0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A3C6B808(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A46BF0F0()
{
  result = qword_1EB126D00;
  if (!qword_1EB126D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126D00);
  }

  return result;
}

uint64_t sub_1A46BF13C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A46BF184()
{
  if (!qword_1EB140360)
  {
    sub_1A3C6B808(255, &qword_1EB140320, sub_1A46BED14, MEMORY[0x1E6981F40]);
    sub_1A46BF218();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140360);
    }
  }
}

unint64_t sub_1A46BF218()
{
  result = qword_1EB140368;
  if (!qword_1EB140368)
  {
    sub_1A3C6B808(255, &qword_1EB140320, sub_1A46BED14, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140368);
  }

  return result;
}

uint64_t sub_1A46BF2A0(uint64_t a1)
{
  sub_1A4178098(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A46BF33C()
{
  result = PFOSVariantHasInternalUI();
  if (result)
  {
    v1 = sub_1A4467CD8();
    v2 = [v1 unlockDeviceStatus];

    if (v2 && (v3 = v2[2](v2), _Block_release(v2), !v3))
    {
      return 0;
    }

    else
    {
      return sub_1A446803C() != 5;
    }
  }

  return result;
}

uint64_t (*sub_1A46BF400(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F60710;
}

uint64_t sub_1A46BF4A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

double sub_1A46BF518@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_1A46BF598()
{
  swift_getKeyPath();
  swift_getKeyPath();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A46BF618()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel____lazy_storage___videoFormatInfoProvider;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel____lazy_storage___videoFormatInfoProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel____lazy_storage___videoFormatInfoProvider);
  }

  else
  {
    v4 = v0;
    type metadata accessor for PXVideoFormatMetadataProvider();
    v5 = sub_1A4425B14();
    v6 = sub_1A4425B54(v5);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1A46BF68C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

char *sub_1A46BF7BC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v5 = sub_1A524D464();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1A46C1C10(0, &qword_1EB128B38, MEMORY[0x1E695C070]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - v12;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_assetDidChange) = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_isLoadingData) = 0;
  v14 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel__videoHDRBadgeTitle;
  sub_1A46C1C94(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v60 = 0;
  v61 = 0;
  sub_1A52479A4();
  (*(v11 + 32))(v4 + v14, v13, v10);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel____lazy_storage___videoFormatInfoProvider) = 0;
  v15 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_secondaryFormattedLensDescription);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_megaPixelsDescription);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_ax_megaPixelsDescription);
  v18 = sub_1A524C634();
  v19 = PXLocalizedString(v18);

  v20 = sub_1A524C674();
  v22 = v21;

  *v17 = v20;
  v17[1] = v22;
  v23 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_resolutionDescription);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_ax_resolutionDescription);
  v25 = sub_1A524C634();
  v26 = PXLocalizedString(v25);

  v27 = sub_1A524C674();
  v29 = v28;

  *v24 = v27;
  v24[1] = v29;
  v30 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_fileSizeDescription);
  v31 = sub_1A524C634();
  v32 = PXLocalizedString(v31);

  v33 = sub_1A524C674();
  v35 = v34;

  *v30 = v33;
  v30[1] = v35;
  v36 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedFormatDescription);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedSemanticStyleDisplayString);
  *v37 = 0;
  v37[1] = 0;
  swift_beginAccess();
  v59 = 0;
  sub_1A52479A4();
  swift_endAccess();
  swift_beginAccess();
  v59 = 0;
  sub_1A52479A4();
  swift_endAccess();
  sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF24();
  sub_1A524D3F4();
  (*(v54 + 104))(v53, *MEMORY[0x1E69E8090], v55);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_metadataProcessingQueue) = sub_1A524D4B4();
  v38 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_makeAndModelDescription);
  *v38 = 0xD000000000000011;
  v38[1] = 0x80000001A53E53E0;
  v39 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_formattedLensDescription);
  *v39 = 0xD00000000000001BLL;
  v39[1] = 0x80000001A53E5400;
  v40 = (v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_unformattedLensDescription);
  *v40 = 0xD00000000000001BLL;
  v40[1] = 0x80000001A53E5400;
  swift_beginAccess();
  *v16 = xmmword_1A5357900;

  swift_beginAccess();
  *v23 = xmmword_1A5357910;

  swift_beginAccess();
  *v30 = 0x424D20372E32;
  v30[1] = 0xE600000000000000;

  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_symbolNames) = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_hasCameraSettings) = 0;
  sub_1A46C1C94(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1A531E190;
  sub_1A3C52C70(0, &unk_1EB1265F0);
  v42 = sub_1A524DC24();
  v43 = [objc_allocWithZone(PXMetadataDisplayItem) initWithContent:v42 accessibilityDescription:0 accessibilityValue:0 accessibilityIdentifier:0 accessoryImageSystemName:0];

  *(v41 + 32) = v43;
  v44 = sub_1A524DC24();
  v45 = [objc_allocWithZone(PXMetadataDisplayItem) initWithContent:v44 accessibilityDescription:0 accessibilityValue:0 accessibilityIdentifier:0 accessoryImageSystemName:0];

  *(v41 + 40) = v45;
  v46 = sub_1A524DC24();
  v47 = [objc_allocWithZone(PXMetadataDisplayItem) initWithContent:v46 accessibilityDescription:0 accessibilityValue:0 accessibilityIdentifier:0 accessoryImageSystemName:0];

  *(v41 + 48) = v47;
  v48 = sub_1A524DC24();
  v49 = [objc_allocWithZone(PXMetadataDisplayItem) initWithContent:v48 accessibilityDescription:0 accessibilityValue:0 accessibilityIdentifier:0 accessoryImageSystemName:0];

  *(v41 + 56) = v49;
  v50 = sub_1A524DC24();
  v51 = [objc_allocWithZone(PXMetadataDisplayItem) initWithContent:v50 accessibilityDescription:0 accessibilityValue:0 accessibilityIdentifier:0 accessoryImageSystemName:0];

  *(v41 + 64) = v51;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_cameraSettings) = v41;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_isVideo) = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_isVideoHDR) = 0;
  swift_beginAccess();
  *v37 = 0;
  v37[1] = 0;

  return sub_1A4467460(v56, v57, v58);
}

void sub_1A46BFFC0()
{
  v1 = v0;
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44681C8();
  v10 = sub_1A446720C();
  sub_1A3C52C70(0, &qword_1EB126660);
  v11 = sub_1A524DC34();

  if (v11)
  {

    sub_1A3C52C70(0, &qword_1EB12B180);
    v12 = sub_1A524D474();
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    aBlock[4] = sub_1A46C1CE4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_253;
    v14 = _Block_copy(aBlock);
    v15 = v1;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C38394();
    sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }
}

void sub_1A46C02F4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_assetDidChange;
  if ((*(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_assetDidChange) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_isLoadingData) & 1) == 0 && (swift_getKeyPath(), swift_getKeyPath(), sub_1A52479E4(), , , (v9[0] & 1) == 0))
  {
    *(v0 + v1) = 0;
    *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_isLoadingData) = 1;
    v2 = sub_1A446720C();
    v3 = objc_opt_self();
    v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_metadataProcessingQueue);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    v9[4] = sub_1A46C1D18;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1A3E01E70;
    v9[3] = &block_descriptor_21_9;
    v7 = _Block_copy(v9);
    v8 = v2;

    [v3 requestExifMetadataProcessingIfNeededForItem:v8 onProcessingQueue:v4 withResultHandler:v7];
    _Block_release(v7);
  }
}

void sub_1A46C0518(uint64_t a1, id a2)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_1A446720C();

    if (v13 == a2)
    {
      v18[1] = *&v12[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_metadataProcessingQueue];
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = v12;
      aBlock[4] = sub_1A46C1EDC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_28_3;
      v15 = _Block_copy(aBlock);
      v16 = v12;
      v17 = a2;
      sub_1A524BF14();
      v18[2] = MEMORY[0x1E69E7CC0];
      sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      sub_1A3C38394();
      sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394);
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v10, v6, v15);
      _Block_release(v15);
      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
    }
  }
}

void sub_1A46C083C(id a1, char *a2)
{
  v4 = sub_1A524BEE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A446720C();

  if (v12 != a1)
  {
    return;
  }

  v171 = a2;
  v165 = v11;
  v166 = v9;
  v167 = v7;
  [a1 fetchPropertySetsIfNeeded];
  v172 = objc_opt_self();
  v173 = a1;
  v13 = [v172 hardwareDisplayStringsForItem_];
  v169 = v5;
  v170 = v4;
  v168 = v8;
  if (!v13)
  {
    v15 = 0;
    goto LABEL_8;
  }

  v14 = v13;
  v15 = sub_1A524C3E4();

  if (!v15)
  {
LABEL_8:
    v23 = 1;
    goto LABEL_11;
  }

  v16 = sub_1A524C674();
  if (*(v15 + 16))
  {
    v18 = sub_1A3C5DCA4(v16, v17);
    v20 = v19;

    if (v20)
    {
      v21 = (*(v15 + 56) + 16 * v18);
      v22 = v21[1];
      v164 = *v21;
      v163 = v22;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
  }

  v23 = 0;
LABEL_11:
  v24 = sub_1A524C634();
  v25 = PXLocalizedString(v24);

  v164 = sub_1A524C674();
  v163 = v26;

  if (v23)
  {
    v27 = 1;
  }

  else
  {
    v28 = sub_1A524C674();
    if (*(v15 + 16))
    {
      v30 = sub_1A3C5DCA4(v28, v29);
      v32 = v31;

      if (v32)
      {
        v33 = (*(v15 + 56) + 16 * v30);
        v34 = v33[1];
        v162 = *v33;
        v161 = v34;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {
    }

    v27 = 0;
  }

  v35 = sub_1A524C634();
  v36 = PXLocalizedString(v35);

  v162 = sub_1A524C674();
  v161 = v37;

  v38 = sub_1A446720C();
  [v38 fetchPropertySetsIfNeeded];

  v39 = sub_1A446720C();
  v40 = [v39 px_isFrontRear];

  if (v40)
  {
    if ((v27 & 1) == 0)
    {
      v41 = sub_1A524C674();
      if (*(v15 + 16))
      {
        v43 = sub_1A3C5DCA4(v41, v42);
        v45 = v44;

        if (v45)
        {
          v46 = (*(v15 + 56) + 16 * v43);
          v47 = v46[1];
          v160 = *v46;
          v159 = v47;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else
      {
      }
    }

    v48 = sub_1A524C634();
    v49 = PXLocalizedString(v48);

    v160 = sub_1A524C674();
    v159 = v50;

    if (v27)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v160 = 0;
  v159 = 0;
  if ((v27 & 1) == 0)
  {
LABEL_27:
    v51 = sub_1A524C674();
    if (*(v15 + 16))
    {
      v53 = sub_1A3C5DCA4(v51, v52);
      v55 = v54;

      if (v55)
      {
        v56 = (*(v15 + 56) + 16 * v53);
        v57 = v56[1];
        v158 = *v56;
        v157 = v57;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {
    }
  }

LABEL_31:
  v58 = sub_1A524C634();
  v59 = PXLocalizedString(v58);

  v158 = sub_1A524C674();
  v157 = v60;

  v61 = v172;
  v62 = v173;
  v63 = [v172 symbolSystemNamesForItem_];
  sub_1A3C52C70(0, &qword_1EB126978);
  v156 = sub_1A524CA34();

  v64 = [objc_opt_self() cameraSettingsDisplayStringsForItem_];
  v65 = sub_1A524CA34();

  aBlock[0] = MEMORY[0x1E69E7CC0];
  if (v65 >> 62)
  {
    goto LABEL_95;
  }

  for (i = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v67 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v68 = 4;
    while (1)
    {
      v69 = v68 - 4;
      if ((v65 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x1A59097F0](v68 - 4, v65);
      }

      else
      {
        if (v69 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        v70 = *(v65 + 8 * v68);
      }

      v71 = v70;
      v62 = v68 - 3;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if ([v70 isEmpty])
      {
      }

      else
      {
        sub_1A524E514();
        v61 = *(aBlock[0] + 16);
        sub_1A524E564();
        sub_1A524E574();
        sub_1A524E524();
      }

      ++v68;
      if (v62 == i)
      {
        v72 = aBlock[0];
        v61 = v172;
        v62 = v173;
        v67 = MEMORY[0x1E69E7CC0];
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    ;
  }

  v72 = MEMORY[0x1E69E7CC0];
LABEL_46:

  aBlock[0] = v67;
  if (v72 >> 62)
  {
    v73 = sub_1A524E2B4();
  }

  else
  {
    v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = MEMORY[0x1E69E7CC0];
  if (v73)
  {
    v175 = v72 & 0xFFFFFFFFFFFFFF8;
    v176 = v72 & 0xC000000000000001;
    v174 = "PXInfoPanelEXIFVideoHDRBadge";
    v62 = 4;
    while (1)
    {
      v75 = v62 - 4;
      if (v176)
      {
        v76 = MEMORY[0x1A59097F0](v62 - 4, v72);
      }

      else
      {
        if (v75 >= *(v175 + 16))
        {
          goto LABEL_94;
        }

        v76 = *(v72 + 8 * v62);
      }

      v77 = v76;
      v78 = v62 - 3;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_93;
      }

      v65 = v72;
      v79 = [v76 content];
      v80 = sub_1A524C704();
      v82 = v81;
      v83 = sub_1A524C634();
      v84 = PXLocalizedString(v83);

      v61 = sub_1A524C674();
      v86 = v85;

      if (v80 == v61 && v82 == v86)
      {
      }

      else
      {
        v61 = sub_1A524EAB4();

        if ((v61 & 1) == 0)
        {
          sub_1A524E514();
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
          goto LABEL_52;
        }
      }

LABEL_52:
      v72 = v65;
      ++v62;
      if (v78 == v73)
      {
        v74 = aBlock[0];
        v61 = v172;
        v62 = v173;
        break;
      }
    }
  }

  if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
  {
    v88 = sub_1A524E2B4();
  }

  else
  {
    v88 = *(v74 + 16);
  }

  v89 = [v62 isVideo];
  v90 = [v62 isHDRVideo];
  v91 = [v61 semanticStylesDisplayStringForItem_];
  if (v91)
  {
    v92 = v91;
    v93 = sub_1A524C674();
    v175 = v94;
    v176 = v93;
  }

  else
  {
    v175 = 0;
    v176 = 0;
  }

  v95 = [v61 megaPixelsDisplayStringForItem:v62 isAccessibility:0];
  if (v95)
  {
    v96 = v95;
    v97 = sub_1A524C674();
    v173 = v98;
    v174 = v97;
  }

  else
  {
    v173 = 0;
    v174 = 0;
  }

  v99 = [v61 megaPixelsDisplayStringForItem:v62 isAccessibility:1];
  if (v99)
  {
    v100 = v99;
    v172 = sub_1A524C674();
    v155 = v101;
  }

  else
  {
    v172 = 0;
    v155 = 0;
  }

  v102 = [v61 resolutionDisplayStringForItem:v62 isAccessibility:0];
  v154 = sub_1A524C674();
  v153 = v103;

  v104 = [v61 resolutionDisplayStringForItem:v62 isAccessibility:1];
  v105 = sub_1A524C674();
  v152 = v106;

  v107 = [v62 originalMetadataProperties];
  if (v107)
  {
    v108 = v107;
    v109 = [v107 originalFilesize];

    if (v109)
    {
      if (qword_1EB175700 != -1)
      {
        swift_once();
      }

      v110 = [qword_1EB175708 stringFromByteCount_];
      v148 = sub_1A524C674();
      v147 = v111;
    }

    else
    {
      v148 = 0;
      v147 = 0;
    }

    v112 = [v62 isVideo];
    v151 = v90;
    v150 = v89;
    v149 = v105;
    v146 = v72;
    v113 = v88;
    if (v112)
    {
      v114 = v171;
      v115 = sub_1A46BF618();
      v116 = *&v114[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_metadataProcessingQueue];
      v117 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v118 = swift_allocObject();
      *(v118 + 16) = v117;
      *(v118 + 24) = v62;

      v119 = v62;
      v120 = sub_1A4426BCC();
      (*((*MEMORY[0x1E69E7D40] & *v115) + 0x88))(v119, v116, v120, sub_1A46C236C, v118);

      v122 = v169;
      v121 = v170;
      v123 = v167;
      v124 = v164;
    }

    else
    {
      v125 = [v61 localizedFileFormatForItem_];
      if (v125)
      {
        v126 = v125;
        v127 = sub_1A524C674();
        v129 = v128;
      }

      else
      {
        v127 = 0;
        v129 = 0;
      }

      v122 = v169;
      v121 = v170;
      v123 = v167;
      v124 = v164;
      v114 = v171;
      v130 = &v171[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedFormatDescription];
      swift_beginAccess();
      *v130 = v127;
      v130[1] = v129;
    }

    sub_1A3C52C70(0, &qword_1EB12B180);
    v131 = sub_1A524D474();
    v132 = swift_allocObject();
    *(v132 + 16) = v114;
    *(v132 + 24) = v124;
    v133 = v162;
    *(v132 + 32) = v163;
    *(v132 + 40) = v133;
    v134 = v160;
    *(v132 + 48) = v161;
    *(v132 + 56) = v134;
    v135 = v158;
    *(v132 + 64) = v159;
    *(v132 + 72) = v135;
    v136 = v156;
    *(v132 + 80) = v157;
    *(v132 + 88) = v136;
    *(v132 + 96) = v146;
    *(v132 + 104) = v113 != 0;
    *(v132 + 105) = v150;
    *(v132 + 106) = v151;
    v137 = v175;
    *(v132 + 112) = v176;
    *(v132 + 120) = v137;
    v138 = v173;
    *(v132 + 128) = v174;
    *(v132 + 136) = v138;
    v139 = v155;
    *(v132 + 144) = v172;
    *(v132 + 152) = v139;
    v140 = v153;
    *(v132 + 160) = v154;
    *(v132 + 168) = v140;
    v141 = v152;
    *(v132 + 176) = v149;
    *(v132 + 184) = v141;
    v142 = v147;
    *(v132 + 192) = v148;
    *(v132 + 200) = v142;
    aBlock[4] = sub_1A46C1EE4;
    aBlock[5] = v132;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_34_4;
    v143 = _Block_copy(aBlock);
    v144 = v114;

    v145 = v165;
    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C38394();
    sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v145, v123, v143);
    _Block_release(v143);

    (*(v122 + 8))(v123, v121);
    (*(v166 + 8))(v145, v168);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A46C16F4(uint64_t a1)
{
  PXDisplayCollectionDetailedCountsMake(a1);
  v1 = sub_1A46BF618();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
}

void sub_1A46C1770()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel__isContentLoaded;
  sub_1A46C1C94(0, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel__showRawEXIF, v3);
  v5 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel__videoHDRBadgeTitle;
  sub_1A46C1C10(0, &qword_1EB128B38, MEMORY[0x1E695C070]);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_metadataProcessingQueue);
}

id sub_1A46C1BDC()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  qword_1EB175708 = result;
  return result;
}

void sub_1A46C1C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A46C1C94(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A46C1C94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for PhotosDetailsEXIFWidgetViewModel()
{
  result = qword_1EB18F660;
  if (!qword_1EB18F660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A46C1D74()
{
  sub_1A46C1C94(319, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1A46C1C10(319, &qword_1EB128B38, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A46C1EE4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_makeAndModelDescription);
  swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A46C236C(uint64_t a1, char a2)
{
  v5 = *(v2 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1A446720C();

    if (v8 != v5 || (a2 & 1) != 0)
    {

      return;
    }

    v9 = *(a1 + OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_videoHDRType);
    if (v9 > 3)
    {
      if (v9 == 4 || v9 == 8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 == 1)
      {
        goto LABEL_15;
      }

      if (v9 == 2)
      {
LABEL_14:
        v12 = sub_1A524C634();
        v13 = PXLocalizedString(v12);

        sub_1A524C674();
        goto LABEL_15;
      }
    }

    sub_1A524D244();
    v10 = sub_1A475874C();
    swift_beginAccess();
    v11 = *v10;
    sub_1A5246DF4();

LABEL_15:
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v7;
    sub_1A52479F4();
    if (![v5 px_isProRes])
    {
      v17 = [objc_opt_self() localizedFileFormatForItem_];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1A524C674();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v27 = &v14[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedFormatDescription];
      swift_beginAccess();
      *v27 = v19;
      v27[1] = v21;
      goto LABEL_27;
    }

    if (*(a1 + OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_isProResLog) == 1)
    {
      v15 = sub_1A524C634();
      v16 = PXLocalizedString(v15);
    }

    else
    {
      if (![v5 px_isProResRAW])
      {
        v16 = [objc_opt_self() localizedFileFormatForItem_];
        if (!v16)
        {
          v23 = 0;
          v25 = 0;
          goto LABEL_24;
        }

LABEL_23:
        v23 = sub_1A524C674();
        v25 = v24;

LABEL_24:
        v26 = &v14[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedFormatDescription];
        swift_beginAccess();
        *v26 = v23;
        v26[1] = v25;
LABEL_27:

        return;
      }

      v22 = sub_1A524C634();
      v15 = sub_1A524C634();
      v16 = PXLocalizedStringFromTable(v22, v15);
    }

    goto LABEL_23;
  }
}

uint64_t sub_1A46C2768()
{
  v1 = sub_1A52402A4();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = sub_1A5240364();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A46C2880, 0, 0);
}

uint64_t sub_1A46C2880()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v0[2] = sub_1A4121674();
  sub_1A5240294();
  sub_1A4120BE0();
  sub_1A5240284();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A46C2978()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524CC94();
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1A3DCD53C(0, 0, v2, &unk_1A5357AA0, v4);

  return sub_1A3D97040(v2);
}

uint64_t sub_1A46C2A70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A46C2768();
}

id sub_1A46C2C58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXAppIntentsEngagementCompatibility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A46C2C90()
{
  result = qword_1EB140370;
  if (!qword_1EB140370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140370);
  }

  return result;
}

uint64_t sub_1A46C2D04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A46C2768();
}

uint64_t LemonadePickerView.photosImageProvider.getter()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1A524D254();
    v6 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3E04274(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t LemonadePickerView.init(photoLibrary:configuration:selectionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *a5 = result;
  *(a5 + 8) = 0;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void LemonadePickerView.makeUIViewController(context:)()
{
  sub_1A46C6FD4(0, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    swift_unknownObjectRetain();
    v11 = off_1E771E000;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3E04274(v8, 0);
    (*(v5 + 8))(v7, v4);
    v11 = off_1E771E000;
    if (!v21[1])
    {
      goto LABEL_9;
    }
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = [v13 imageManager];
    swift_unknownObjectRelease();
    if (v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_9:
  v14 = [objc_opt_self() defaultManager];
LABEL_10:
  sub_1A46C3318();
  sub_1A5249FD4();
  v15 = objc_allocWithZone(v11[467]);

  v16 = [v15 initWithImageManager:v14 library:v9];
  type metadata accessor for LemonadePickerRootViewModel();
  v17 = sub_1A5244084();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  v18 = v9;
  v19 = v16;
  v20 = v10;
  sub_1A3C5A374();
  sub_1A49C7F18(v18, v19, v20);
}

void sub_1A46C32A4(void *a1, void *a2, uint64_t a3)
{
  swift_getObjectType();

  sub_1A46C56F8(a1, a2, a3);
}

void sub_1A46C3318()
{
  if (!qword_1EB140378)
  {
    sub_1A46C3374();
    v0 = sub_1A5249FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140378);
    }
  }
}

unint64_t sub_1A46C3374()
{
  result = qword_1EB140380;
  if (!qword_1EB140380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140380);
  }

  return result;
}

uint64_t LemonadePickerView.makeCoordinator()()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  type metadata accessor for LemonadePickerView.Coordinator();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return v3;
}

uint64_t sub_1A46C343C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A46C3488(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1A46C34DC(uint64_t a1)
{
  v3 = (*(*v1 + 88))();
  v3(a1);
}

uint64_t LemonadePickerView.Coordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A46C35C8@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  type metadata accessor for LemonadePickerView.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = v5;
}

uint64_t sub_1A46C3620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46C3374();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A46C3684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46C3374();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A46C36E8()
{
  sub_1A46C3374();
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A46C3750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerRootViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A46C37F8()
{
  v1 = v0;
  sub_1A46C5DBC(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v62 - v7;
  v9 = type metadata accessor for LemonadePickerRootViewController();
  v63.receiver = v0;
  v63.super_class = v9;
  objc_msgSendSuper2(&v63, sel_viewDidLoad);
  v10 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_rootModel];
  result = [v0 view];
  if (result)
  {
    v12 = result;
    [result bounds];
    v14 = v13;
    v16 = v15;

    result = [v1 view];
    if (result)
    {
      v17 = result;
      v62[3] = v3;
      v62[4] = v5;
      [result safeAreaInsets];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v26 = type metadata accessor for LemonadePickerRootViewModel();
      v27 = sub_1A46C70DC(&qword_1EB1403D0, type metadata accessor for LemonadePickerRootViewModel);
      v64.top = v19;
      v64.left = v21;
      v62[1] = v27;
      v62[2] = v26;
      v64.bottom = v23;
      v64.right = v25;
      LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v16, v14), v64);

      v28 = v1;
      sub_1A3C7A150(v1);

      v29 = [v28 px_splitViewController];
      if (v29)
      {
        v30 = v29;

        sub_1A4655D24(1);

        sub_1A4655DC0([v30 isSidebarVisible]);

        [v30 registerChangeObserver_];
      }

      sub_1A44F4E38(v10, v8);
      KeyPath = swift_getKeyPath();
      v32 = *(v10 + 16);
      sub_1A46C61E4();
      v34 = &v8[*(v33 + 36)];
      *v34 = KeyPath;
      v34[1] = v32;
      v35 = swift_getKeyPath();
      v36 = *&v28[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_photosSelection];
      sub_1A46C60B4(0, &qword_1EB140418, sub_1A46C61E4, sub_1A44DA2F0);
      v38 = &v8[*(v37 + 36)];
      *v38 = v35;
      v38[1] = v36;
      v39 = swift_getKeyPath();
      v40 = *&v28[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_pickerConfiguration];
      v41 = MEMORY[0x1E69E7D40];
      v42 = *MEMORY[0x1E69E7D40] & *v40;
      v62[0] = v10;
      v43 = *(v42 + 672);
      v44 = v32;

      LOBYTE(v35) = v43(v45);
      sub_1A46C6128();
      v47 = &v8[*(v46 + 36)];
      *v47 = v39;
      v47[8] = v35 & 1;
      v48 = swift_getKeyPath();
      sub_1A46C60B4(0, &qword_1EB140408, sub_1A46C6128, sub_1A44DA358);
      v50 = &v8[*(v49 + 36)];
      *v50 = v48;
      v50[1] = v40;
      v51 = swift_getKeyPath();
      v52 = *((*v41 & *v40) + 0x2B8);
      v53 = v40;
      v54 = v52();
      sub_1A46C5FF8();
      v56 = &v8[*(v55 + 36)];
      *v56 = v51;
      v56[1] = v54;
      v57 = swift_getKeyPath();
      v58 = (*((*v41 & *v53) + 0x558))();
      sub_1A46C5F70();
      v60 = &v8[*(v59 + 36)];
      *v60 = v57;
      v60[1] = v58;
      swift_getKeyPath();
      sub_1A46C60B4(0, &qword_1EB1403F0, sub_1A46C5F70, sub_1A3D63A24);
      sub_1A3D63A24(0);
      sub_1A3C52C70(0, &qword_1EB126B10);
      v61 = v28;
      sub_1A5245CA4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1A46C41B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4187E1C();
  *a1 = v3;
  return result;
}

void sub_1A46C4270()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for LemonadePickerRootViewController();
  objc_msgSendSuper2(&v17, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 safeAreaInsets];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      type metadata accessor for LemonadePickerRootViewModel();
      sub_1A46C70DC(&qword_1EB1403D0, type metadata accessor for LemonadePickerRootViewModel);
      v18.top = v10;
      v18.left = v12;
      v18.bottom = v14;
      v18.right = v16;
      LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v6, v4), v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A46C44F4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  sub_1A524CC54();
  v3[22] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A46C4590, v5, v4);
}

uint64_t sub_1A46C4590()
{
  v1 = PXLemonadeReroutedProgrammaticDestination(*(v0 + 152));
  *(v0 + 200) = v1;
  if (sub_1A48D52B0(v1))
  {

    v2 = *(v0 + 8);

    return v2(6);
  }

  else
  {
    v4 = *(v0 + 152);
    sub_1A48D530C(v1);
    if ([v4 isLemonadeHome])
    {

      sub_1A4654EB0();
    }

    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1A46C4760;
    v7 = swift_continuation_init();
    sub_1A43A6C50();
    *(v0 + 136) = v8;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A43A6168;
    *(v0 + 104) = &block_descriptor_254;
    *(v0 + 112) = v7;
    [v5 px:v6 dismissPresentedViewControllerWithOptions:v0 + 80 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1A46C4760()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1A46C4D84;
  }

  else
  {
    v5 = sub_1A46C4890;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A46C4890()
{
  v1 = v0[18];
  if (v1 == 1)
  {
    v2 = v0[21];
    v3 = OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_navigationContext;
    v0[27] = OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_navigationContext;
    v0[28] = *(v2 + v3);

    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_1A46C49AC;
    v5 = v0[25];
    v6 = v0[20];

    return sub_1A465A32C(v5, v6);
  }

  else
  {
    v8 = v0[25];

    sub_1A48D5578(v8);

    v9 = v0[1];

    return v9(v1);
  }
}

uint64_t sub_1A46C49AC(uint64_t a1)
{
  v3 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {
    v4 = v3[23];
    v5 = v3[24];
    v6 = sub_1A46C4E04;
  }

  else
  {

    v4 = v3[23];
    v5 = v3[24];
    v6 = sub_1A46C4AC8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A46C4AC8()
{
  if (v0[30] == 1)
  {
    v0[32] = *(v0[21] + v0[27]);

    v1 = swift_task_alloc();
    v0[33] = v1;
    *v1 = v0;
    v1[1] = sub_1A46C4BDC;
    v2 = v0[25];
    v3 = v0[20];

    return sub_1A465A8EC(v2, v3);
  }

  else
  {
    v5 = v0[25];

    sub_1A48D5578(v5);

    v6 = v0[30];
    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_1A46C4BDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A46C4E84;
  }

  else
  {

    v4[35] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A46C4D0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A46C4D0C()
{
  v1 = v0[25];

  sub_1A48D5578(v1);

  v2 = v0[35];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A46C4D84()
{

  swift_willThrow();
  v1 = *(v0 + 200);
  sub_1A48D5578(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A46C4E04()
{

  v1 = *(v0 + 200);
  sub_1A48D5578(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A46C4E84()
{

  v1 = *(v0 + 200);
  sub_1A48D5578(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A46C5088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1A524CC54();
  v4[6] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A46C5124, v6, v5);
}

uint64_t sub_1A46C5124()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1A44D8140;
  v8 = v0[2];
  v7 = v0[3];

  return sub_1A46C44F4(v8, v7);
}

id sub_1A46C51EC()
{
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_delegate + 8] = 0;
  swift_unknownObjectWeakAssign();

  sub_1A5244234();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadePickerRootViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A46C5370()
{
  sub_1A44D9F04(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    sub_1A52441D4();
    sub_1A3E7CAB0();
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    v9 = sub_1A5244204();
    (*(v6 + 8))(v3, v9, ObjectType, v6);
    swift_unknownObjectRelease();

    return sub_1A46C6BB4(v3, sub_1A44D9F04);
  }

  return result;
}

void sub_1A46C54B8()
{
  v1 = [v0 childViewControllers];
  sub_1A3C52C70(0, &qword_1EB126B10);
  v2 = sub_1A524CA34();

  if (v2 >> 62)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_3;
    }

LABEL_12:

    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1A59097F0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  v5 = [v4 contentScrollView];

  if (v5)
  {
    v7 = v5;
    [v0 setContentScrollView:v7 forEdge:15];
    v6 = [v0 parentViewController];
    [v6 setContentScrollView:v7 forEdge:15];
  }
}

void sub_1A46C56F8(void *a1, void *a2, uint64_t a3)
{
  sub_1A46C6FD4(0, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager:a3 library:a1];
  type metadata accessor for LemonadePickerRootViewModel();
  v10 = sub_1A5244084();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = a1;
  v12 = v9;
  v13 = a2;
  sub_1A3C5A374();
  sub_1A49C7F18(v11, v12, v13);
}

id sub_1A46C58A0(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v30 = a3;
  sub_1A46C6FD4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v29 = &v28 - v8;
  v28 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_delegate + 8] = 0;
  v11 = swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_rootModel] = a1;
  v12 = OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_pickerConfiguration;
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_pickerConfiguration] = a2;
  *(v11 + 8) = &protocol witness table for LemonadePickerView.Coordinator;
  swift_unknownObjectWeakAssign();
  v13 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x360);

  v15 = a2;
  v16 = v14();
  (*((*v13 & *v15) + 0x348))(v16);
  sub_1A5244244();
  swift_allocObject();
  v17 = sub_1A5244214();
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_photosSelection] = v17;
  v18 = *&a4[v12];
  v19 = *((*v13 & *v18) + 0x290);

  v20 = v18;
  v19(v17);

  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for LemonadeDetailsContext();
  v22 = v29;
  (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
  v32 = 3;
  v23 = *(a1 + 56);

  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_navigationContext] = sub_1A3C799F0(v10, a1, &off_1F1720988, 0, v22, &v32, v23, 2);
  v24 = type metadata accessor for LemonadePickerRootViewController();
  v31.receiver = a4;
  v31.super_class = v24;
  v25 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, 0, 0);
  sub_1A46C7038();
  v26 = v25;

  sub_1A5244234();

  return v26;
}

uint64_t sub_1A46C5CFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A46C5088(v2, v3, v5, v4);
}

void sub_1A46C5E1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1A46C708C(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A46C5EB4()
{
  if (!qword_1EB1403E8)
  {
    sub_1A46C60B4(255, &qword_1EB1403F0, sub_1A46C5F70, sub_1A3D63A24);
    sub_1A46C708C(255, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1403E8);
    }
  }
}

void sub_1A46C5F70()
{
  if (!qword_1EB1403F8)
  {
    sub_1A46C5FF8();
    sub_1A46C62D4(255, &qword_1EB140428, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1403F8);
    }
  }
}

void sub_1A46C5FF8()
{
  if (!qword_1EB140400)
  {
    sub_1A46C60B4(255, &qword_1EB140408, sub_1A46C6128, sub_1A44DA358);
    sub_1A46C708C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140400);
    }
  }
}

void sub_1A46C60B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A46C6128()
{
  if (!qword_1EB140410)
  {
    sub_1A46C60B4(255, &qword_1EB140418, sub_1A46C61E4, sub_1A44DA2F0);
    sub_1A46C708C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140410);
    }
  }
}

void sub_1A46C61E4()
{
  if (!qword_1EB140420)
  {
    type metadata accessor for LemonadePickerRootView(255);
    sub_1A46C62D4(255, &unk_1EB127770, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140420);
    }
  }
}

void sub_1A46C626C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A46C62D4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A46C626C(255, a3, a4, a5, MEMORY[0x1E69E6720]);
    v6 = sub_1A5249F44();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A46C6344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A46C63AC()
{
  if (!qword_1EB140430)
  {
    sub_1A46C5DBC(255);
    sub_1A46C6410();
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140430);
    }
  }
}

unint64_t sub_1A46C6410()
{
  result = qword_1EB140438;
  if (!qword_1EB140438)
  {
    sub_1A46C5DBC(255);
    sub_1A46C64A8();
    sub_1A46C6AD8(&qword_1EB127918, &unk_1EB127908, &type metadata for LemonadeRootViewOrientation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140438);
  }

  return result;
}

unint64_t sub_1A46C64A8()
{
  result = qword_1EB140440;
  if (!qword_1EB140440)
  {
    sub_1A46C5DEC(255);
    sub_1A46C6540();
    sub_1A46C6AD8(&qword_1EB127940, &unk_1EB127930, &type metadata for LemonadeVerticalSizeClass);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140440);
  }

  return result;
}

unint64_t sub_1A46C6540()
{
  result = qword_1EB140448;
  if (!qword_1EB140448)
  {
    sub_1A46C5EB4();
    sub_1A46C65D8();
    sub_1A46C6AD8(&qword_1EB127928, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140448);
  }

  return result;
}

unint64_t sub_1A46C65D8()
{
  result = qword_1EB140450;
  if (!qword_1EB140450)
  {
    sub_1A46C60B4(255, &qword_1EB1403F0, sub_1A46C5F70, sub_1A3D63A24);
    sub_1A46C66B8();
    sub_1A46C70DC(&qword_1EB1278C0, sub_1A3D63A24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140450);
  }

  return result;
}

unint64_t sub_1A46C66B8()
{
  result = qword_1EB140458;
  if (!qword_1EB140458)
  {
    sub_1A46C5F70();
    sub_1A46C6738();
    sub_1A46C6B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140458);
  }

  return result;
}

unint64_t sub_1A46C6738()
{
  result = qword_1EB140460;
  if (!qword_1EB140460)
  {
    sub_1A46C5FF8();
    sub_1A46C67D0();
    sub_1A46C6AD8(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140460);
  }

  return result;
}

unint64_t sub_1A46C67D0()
{
  result = qword_1EB140468;
  if (!qword_1EB140468)
  {
    sub_1A46C60B4(255, &qword_1EB140408, sub_1A46C6128, sub_1A44DA358);
    sub_1A46C68B0();
    sub_1A46C70DC(&qword_1EB122170, sub_1A44DA358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140468);
  }

  return result;
}

unint64_t sub_1A46C68B0()
{
  result = qword_1EB140470;
  if (!qword_1EB140470)
  {
    sub_1A46C6128();
    sub_1A46C6948();
    sub_1A46C6AD8(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140470);
  }

  return result;
}

unint64_t sub_1A46C6948()
{
  result = qword_1EB140478;
  if (!qword_1EB140478)
  {
    sub_1A46C60B4(255, &qword_1EB140418, sub_1A46C61E4, sub_1A44DA2F0);
    sub_1A46C6A28();
    sub_1A46C70DC(&qword_1EB122198, sub_1A44DA2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140478);
  }

  return result;
}

unint64_t sub_1A46C6A28()
{
  result = qword_1EB140480;
  if (!qword_1EB140480)
  {
    sub_1A46C61E4();
    sub_1A46C70DC(&unk_1EB140488, type metadata accessor for LemonadePickerRootView);
    sub_1A431F958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140480);
  }

  return result;
}

uint64_t sub_1A46C6AD8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A46C708C(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A46C6B3C()
{
  result = qword_1EB140498;
  if (!qword_1EB140498)
  {
    sub_1A46C62D4(255, &qword_1EB140428, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140498);
  }

  return result;
}

uint64_t sub_1A46C6BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A46C6C14(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v32 = a3;
  sub_1A46C6FD4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v31 = &v30 - v10;
  v30 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_delegate + 8] = 0;
  v13 = swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_rootModel] = a1;
  v14 = OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_pickerConfiguration;
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_pickerConfiguration] = a2;
  *(v13 + 8) = a5;
  swift_unknownObjectWeakAssign();
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x360);

  v17 = a2;
  v18 = v16();
  (*((*v15 & *v17) + 0x348))(v18);
  sub_1A5244244();
  swift_allocObject();
  v19 = sub_1A5244214();
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_photosSelection] = v19;
  v20 = *&a4[v14];
  v21 = *((*v15 & *v20) + 0x290);

  v22 = v20;
  v21(v19);

  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for LemonadeDetailsContext();
  v24 = v31;
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  v34 = 3;
  v25 = *(a1 + 56);

  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_navigationContext] = sub_1A3C799F0(v12, a1, &off_1F1720988, 0, v24, &v34, v25, 2);
  v26 = type metadata accessor for LemonadePickerRootViewController();
  v33.receiver = a4;
  v33.super_class = v26;
  v27 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, 0, 0);
  sub_1A46C7038();
  v28 = v27;

  sub_1A5244234();

  swift_unknownObjectRelease();

  return v28;
}

void sub_1A46C6FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A46C7038()
{
  result = qword_1EB162290[0];
  if (!qword_1EB162290[0])
  {
    type metadata accessor for LemonadePickerRootViewController();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB162290);
  }

  return result;
}

void sub_1A46C708C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A46C70DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A46C74EC(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1A59097F0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void sub_1A46C76E8(uint64_t a1, int a2)
{
  v2 = a2;
  swift_getObjectType();
  sub_1A52458F4();
}

void sub_1A46C7B64(uint64_t a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v4 = *(v1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItemList_items);
  v11 = a1;
  if (v4 >> 62)
  {
    goto LABEL_11;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1A59097F0](0, v4);
      goto LABEL_8;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v4 + 32);
LABEL_8:
      sub_1A47060CC();
    }

    __break(1u);
LABEL_11:
    ;
  }

  v7 = [v3 array];
  v8 = sub_1A524CA34();

  v9 = sub_1A46C7EFC(v8);

  v12[0] = v9;
  sub_1A46C82AC(0, &qword_1EB120C60, sub_1A3D435C4, MEMORY[0x1E69E62F8]);
  SendableTransfer.init(wrappedValue:)(v12, v10, v11);
}

uint64_t sub_1A46C7EFC(uint64_t a1)
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
      sub_1A3D435C4();
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

unint64_t sub_1A46C8180@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(*v2 + OBJC_IVAR___PXSharedAlbumsActivityEntryItemList_items);
  if ((v4 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1A59097F0]();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    result = *(v4 + 8 * result + 32);
LABEL_5:
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1A46C82AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SharedAlbumsActivityEntryItemList()
{
  result = qword_1EB17B2D0;
  if (!qword_1EB17B2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A46C84B0()
{
  result = qword_1EB126820;
  if (!qword_1EB126820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126820);
  }

  return result;
}

uint64_t sub_1A46C84FC(unint64_t *a1, void (*a2)(uint64_t))
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

void LemonadeSavedTodayItemListManager.init(photoLibraryContext:)(void *a1)
{
  v3 = *v1;
  *(v1 + qword_1EB161DE0) = 0;
  *(v1 + qword_1EB17B6A8) = 0;
  *(v1 + qword_1EB1EB1A8) = 0;
  v4 = a1[2];
  v5 = a1[3];
  v6 = objc_opt_self();
  v7 = v4;
  v8 = v5;
  v9 = sub_1A524CA14();
  v10 = sub_1A524C634();
  v11 = [v6 transientCollectionListWithCollections:v9 title:v10 identifier:0 photoLibrary:v7];

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v30 = 2;
  v31 = 1;
  v29 = 2;
  v12 = a1[5];
  if (v12)
  {
    v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x258);
    v14 = v12;
    v15 = v13();
  }

  else
  {
    v15 = 0;
  }

  sub_1A3C6C180(&v23);
  v27 = v23;
  v28 = v24;
  v16 = sub_1A3C30368();
  v17 = sub_1A3C5A374();
  v18 = sub_1A3C5A374();
  v19 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v27, 0, &unk_1F171F6E8, 0, 1, &v30, 1, &v29, &aBlock, v16, v17 & 1, v18 & 1, v19 & 1, v15);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = v3;
  v21 = v7;
  v22 = v8;
  PhotoKitItemListManager.init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v11, v8, v32, &aBlock, &v23, sub_1A46C968C, v20);
}

id sub_1A46C898C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v63 = a1;
  v4 = sub_1A52413D4();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241144();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  *&v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v19 = sub_1A524BEE4();
  v69 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1A524BF64();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a3;
  if (sub_1A46C9694())
  {
    sub_1A44291FC();
    v24 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
    sub_1A5241104();
    sub_1A5241394();
    sub_1A3C52C70(0, &qword_1EB126A10);
    v25 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v25 savedTodayToleranceInHours];

    sub_1A5241064();
    sub_1A52412D4();
    v26 = *(v8 + 8);
    (v26)(v12, v7);
    (*(v64 + 8))(v6, v65);
    v69 = v26;
    (v26)(v15, v7);
    v27 = v7;
    if (qword_1EB176AD8 != -1)
    {
      swift_once();
    }

    v28 = sub_1A5246F24();
    __swift_project_value_buffer(v28, qword_1EB176AE0);
    v29 = v70;
    (*(v8 + 16))(v70, v18, v7);
    v30 = sub_1A5246F04();
    v31 = sub_1A524D264();
    v32 = os_log_type_enabled(v30, v31);
    v62 = v27;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v68 = v24;
      v34 = v33;
      aBlock = swift_slowAlloc();
      *v34 = 136446210;
      sub_1A3C29DBC(&qword_1EB12AFE8, MEMORY[0x1E6969530]);
      sub_1A524EA44();
      (v69)(v29, v27);
      sub_1A3C2EF94();
    }

    (v69)(v29, v27);
    sub_1A3C37330(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1A52F9DE0;
    result = [objc_opt_self() predicateForAlbumKind_];
    if (result)
    {
      *(v43 + 32) = result;
      sub_1A3C52C70(0, &qword_1EB126D20);
      sub_1A3C7D190(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v44 = swift_allocObject();
      v70 = xmmword_1A52F8E10;
      *(v44 + 16) = xmmword_1A52F8E10;
      v45 = sub_1A5241074();
      *(v44 + 56) = sub_1A3C52C70(0, &qword_1EB1266C8);
      *(v44 + 64) = sub_1A46CCAFC();
      *(v44 + 32) = v45;
      *(v43 + 40) = sub_1A524D134();
      v46 = sub_1A524CA14();

      v47 = [objc_opt_self() andPredicateWithSubpredicates_];

      [v24 setInternalPredicate_];
      [v24 setWantsIncrementalChangeDetails_];
      sub_1A3C37330(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1A52FC9F0;
      v49 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v50 = sub_1A524C634();
      v51 = [v49 initWithKey:v50 ascending:0];

      v52 = sub_1A3C52C70(0, &qword_1EB126B60);
      *(v48 + 56) = v52;
      *(v48 + 32) = v51;
      v53 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v54 = sub_1A524C634();
      v55 = [v53 initWithKey:v54 ascending:1];

      *(v48 + 88) = v52;
      *(v48 + 64) = v55;
      v56 = sub_1A524CA14();

      [v24 setInternalSortDescriptors_];

      v57 = [objc_allocWithZone(MEMORY[0x1E6978AF8]) initWithFetchOptions_];
      sub_1A3C38BD4();
      v58 = sub_1A524C634();

      [v57 setTitle_];

      v59 = sub_1A524C674();
      v61 = v60;
      aBlock = 0;
      v74 = 0xE000000000000000;
      sub_1A52410D4();
      sub_1A524CEF4();
      aBlock = v59;
      v74 = v61;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }

  else
  {
    if (qword_1EB176AD8 != -1)
    {
      swift_once();
    }

    v35 = sub_1A5246F24();
    __swift_project_value_buffer(v35, qword_1EB176AE0);
    v36 = sub_1A5246F04();
    v37 = sub_1A524D224();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1A3C1C000, v36, v37, "did not animate today, returning empty with fetch", v38, 2u);
      MEMORY[0x1A590EEC0](v38, -1, -1);
    }

    sub_1A3C52C70(0, &qword_1EB12B180);
    v39 = sub_1A524D474();
    v40 = swift_allocObject();
    *(v40 + 16) = v67;
    v77 = sub_1A46CCA40;
    v78 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_1A3C2E0D0;
    v76 = &block_descriptor_24_4;
    v41 = _Block_copy(&aBlock);
    sub_1A524BF14();
    v72 = MEMORY[0x1E69E7CC0];
    sub_1A3C29DBC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C7D190(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v23, v21, v41);
    _Block_release(v41);

    v69[1](v21, v19);
    (*(v66 + 8))(v23, v68);

    return [objc_opt_self() emptyFetchResultWithPhotoLibrary:v71 fetchType:*MEMORY[0x1E6978DB0]];
  }

  return result;
}

uint64_t sub_1A46C9694()
{
  v0 = sub_1A52413D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1A5241144();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1A46CC278(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1A3C2CBD8(v6, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D190);
    v14 = 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_1A5241394();
    sub_1A5241104();
    v14 = sub_1A5241374();
    v15 = *(v8 + 8);
    v15(v10, v7);
    (*(v1 + 8))(v3, v0);
    v15(v13, v7);
  }

  return v14 & 1;
}

uint64_t sub_1A46C9960()
{
  v0 = sub_1A524BFC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x1E69E6720];
  sub_1A3C7D190(0, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24[-v6];
  v8 = sub_1A52413D4();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v4);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24[-v12];
  v14 = sub_1A5241144();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24[-v19];
  sub_1A46CC278(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1A3C2CBD8(v13, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D190);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    sub_1A5241394();
    sub_1A5241104();
    v25 = sub_1A5241374();
    v21 = *(v15 + 8);
    v21(v17, v14);
    (*(v26 + 8))(v10, v27);
    result = (v21)(v20, v14);
    if (v25)
    {
      return result;
    }
  }

  if (qword_1EB17B6A0 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v28, qword_1EB1EB1B0);
  sub_1A524BFA4();
  sub_1A524C014();
  (*(v1 + 8))(v3, v0);
  (*(v1 + 56))(v7, 0, 1, v0);
  swift_beginAccess();
  sub_1A46CC99C(v7, v23);
  return swift_endAccess();
}

uint64_t static LemonadeSavedTodayItemListManager.startOfDay(at:)()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52413D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5241394();
  sub_1A3C52C70(0, &qword_1EB126A10);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v8 savedTodayToleranceInHours];

  sub_1A5241064();
  sub_1A52412D4();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A46C9FE0()
{

  return swift_unknownObjectRelease();
}

uint64_t LemonadeSavedTodayItemListManager.deinit()
{
  sub_1A46CA08C();
  v0 = PhotoKitItemListManager.deinit();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1A46CA08C()
{
  v1 = qword_1EB1EB1A8;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + v1) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t LemonadeSavedTodayItemListManager.__deallocating_deinit()
{
  sub_1A46CA08C();
  v0 = PhotoKitItemListManager.deinit();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t static LemonadeSavedTodayItemListManager.nextUpdateDate(after:)@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_1A52413B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = sub_1A52413D4();
  v5 = *(v18[0] - 8);
  MEMORY[0x1EEE9AC00](v18[0]);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  v11 = sub_1A5241144();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5241394();
  (*(v2 + 104))(v4, *MEMORY[0x1E6969A48], v1);
  sub_1A5241364();
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v18[0]);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    sub_1A5241064();
    if (v15(v10, 1, v11) != 1)
    {
      sub_1A3C2CBD8(v10, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D190);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  sub_1A3C52C70(0, &qword_1EB126A10);
  v16 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v16 savedTodayToleranceInHours];

  sub_1A5241064();
  return (*(v12 + 8))(v14, v11);
}

Swift::Void __swiftcall LemonadeSavedTodayItemListManager.didFinishFetch()()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  PXDisplayCollectionDetailedCountsMake(v8);
  v9 = sub_1A46C9694();
  sub_1A3C52C70(0, &qword_1EB12B180);
  v10 = sub_1A524D474();
  v11 = swift_allocObject();
  swift_weakInit();
  if ((v9 & 1) == 0)
  {
    sub_1A52458E4();
  }

  aBlock[4] = sub_1A46CC4F4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_255;
  v12 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29DBC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C7D190(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v7, v3, v12);
  _Block_release(v12);

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A46CA980()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A5241104();
    sub_1A46CAA7C();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1A46CAA7C()
{
  v0 = sub_1A52413D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  sub_1A5241394();
  sub_1A3C52C70(0, &qword_1EB126A10);
  v16 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v16 savedTodayToleranceInHours];

  sub_1A5241064();
  sub_1A52412D4();
  v43 = *(v5 + 8);
  v43(v12, v4);
  (*(v1 + 8))(v3, v0);
  v41 = v15;
  static LemonadeSavedTodayItemListManager.nextUpdateDate(after:)(v9);
  if (qword_1EB176AD8 != -1)
  {
    swift_once();
  }

  v17 = sub_1A5246F24();
  __swift_project_value_buffer(v17, qword_1EB176AE0);
  v18 = v40;
  (*(v5 + 16))(v40, v9, v4);
  v19 = sub_1A5246F04();
  v20 = sub_1A524D264();
  v21 = v4;
  if (os_log_type_enabled(v19, v20))
  {
    v22 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v22 = 136446210;
    sub_1A3C29DBC(&qword_1EB12AFE8, MEMORY[0x1E6969530]);
    sub_1A524EA44();
    v43(v18, v4);
    sub_1A3C2EF94();
  }

  v43(v18, v4);
  v23 = swift_allocObject();
  v24 = v42;
  swift_weakInit();
  v25 = objc_allocWithZone(MEMORY[0x1E695DFF0]);

  v26 = sub_1A5241074();
  aBlock[4] = sub_1A46CCA30;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D7692C;
  aBlock[3] = &block_descriptor_14_5;
  v27 = _Block_copy(aBlock);
  v28 = [v25 initWithFireDate:v26 interval:0 repeats:v27 block:0.0];
  _Block_release(v27);

  v29 = qword_1EB17B6A8;
  v30 = *(v24 + qword_1EB17B6A8);
  *(v24 + qword_1EB17B6A8) = v28;
  if (!v28)
  {
    if (!v30)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (!v30)
  {
    v34 = v28;
LABEL_12:
    [v30 invalidate];
    v35 = *(v42 + v29);
    if (v35)
    {
      v36 = objc_opt_self();
      v37 = v35;
      v32 = [v36 currentRunLoop];
      [v32 addTimer:v37 forMode:*MEMORY[0x1E695D918]];

      v28 = v37;
    }

    else
    {
      v32 = v30;
    }

    goto LABEL_15;
  }

  sub_1A3C52C70(0, &unk_1EB126680);
  v31 = v28;
  v32 = v30;
  v33 = sub_1A524DBF4();

  if ((v33 & 1) == 0)
  {
    goto LABEL_12;
  }

  v28 = v31;
LABEL_15:

LABEL_16:
  v38 = v43;
  v43(v9, v21);
  return v38(v41, v21);
}

uint64_t sub_1A46CB0C4()
{
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  if (qword_1EB176AD8 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5246F24();
  __swift_project_value_buffer(v3, qword_1EB176AE0);
  v4 = sub_1A5246F04();
  v5 = sub_1A524D264();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "starting animation on timeout", v6, 2u);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + qword_1EB161DE0) = 0;

    sub_1A5241104();
    v8 = sub_1A5241144();
    (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
    sub_1A46CC5D4(v2);
    sub_1A43F8A20();
  }

  return result;
}

uint64_t sub_1A46CB2B4()
{
  v0 = sub_1A524BEE4();
  v45 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v50 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A524BF64();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1A3C7D190(0, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v41 - v6;
  v7 = sub_1A524BFC4();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_1A52413D4();
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v3);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_1A5241144();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  sub_1A46CC278(v17);
  v25 = (*(v19 + 48))(v17, 1, v18);
  v43 = v11;
  if (v25 == 1)
  {
    sub_1A3C2CBD8(v17, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D190);
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    sub_1A5241394();
    sub_1A5241104();
    v26 = sub_1A5241374();
    v27 = *(v19 + 8);
    v27(v21, v18);
    (*(v42 + 8))(v14, v12);
    result = (v27)(v24, v18);
    if (v26)
    {
      return result;
    }
  }

  sub_1A3C52C70(0, &qword_1EB12B180);
  v42 = sub_1A524D474();
  if (qword_1EB17B6A0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v5, qword_1EB1EB1B0);
  swift_beginAccess();
  v30 = v44;
  sub_1A46CC8F0(v29, v44, &qword_1EB127068, MEMORY[0x1E69E7FF8]);
  v32 = v46;
  v31 = v47;
  v33 = *(v46 + 48);
  if (v33(v30, 1, v47) == 1)
  {
    v34 = v41;
    sub_1A524BFA4();
    v35 = v43;
    sub_1A524C014();
    (*(v32 + 8))(v34, v31);
    if (v33(v30, 1, v31) != 1)
    {
      sub_1A3C2CBD8(v30, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720], sub_1A3C7D190);
    }
  }

  else
  {
    v35 = v43;
    (*(v32 + 32))(v43, v30, v31);
  }

  v36 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A46CC4FC;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_9_8;
  v37 = _Block_copy(aBlock);

  v38 = v48;
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29DBC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C7D190(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v39 = v50;
  sub_1A524E224();
  v40 = v42;
  MEMORY[0x1A5908790](v35, v38, v39, v37);
  _Block_release(v37);

  (*(v45 + 8))(v39, v0);
  (*(v49 + 8))(v38, v51);
  return (*(v32 + 8))(v35, v31);
}

uint64_t sub_1A46CBAF4()
{
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + qword_1EB161DE0) = 0;

    sub_1A5241104();
    v4 = sub_1A5241144();
    (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
    sub_1A46CC5D4(v2);
    sub_1A43F8A20();
  }

  return result;
}

uint64_t sub_1A46CBC20()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB176AD8 != -1)
  {
    swift_once();
  }

  v4 = sub_1A5246F24();
  __swift_project_value_buffer(v4, qword_1EB176AE0);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v9[1] = swift_slowAlloc();
    *v7 = 136446210;
    sub_1A5241104();
    sub_1A3C29DBC(&qword_1EB12AFE8, MEMORY[0x1E6969530]);
    sub_1A524EA44();
    (*(v1 + 8))(v3, v0);
    sub_1A3C2EF94();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A43F8A20();
  }

  return result;
}

uint64_t sub_1A46CBE84()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = qword_1EB17B6A8;
    v13 = *(result + qword_1EB17B6A8);
    if (v13)
    {
      v14 = [v13 fireDate];
      sub_1A52410F4();

      (*(v1 + 32))(v9, v6, v0);
      sub_1A5241104();
      v15 = sub_1A5241084();
      v16 = *(v1 + 8);
      v16(v3, v0);
      if (v15)
      {
        v17 = *(v11 + v12);
        *(v11 + v12) = 0;
        if (v17)
        {
          [v17 invalidate];
          v18 = *(v11 + v12);
          if (v18)
          {
            v19 = objc_opt_self();
            v20 = v18;
            v21 = [v19 currentRunLoop];
            [v21 addTimer:v20 forMode:*MEMORY[0x1E695D918]];

            v17 = v21;
          }
        }

        if (qword_1EB176AD8 != -1)
        {
          swift_once();
        }

        v22 = sub_1A5246F24();
        __swift_project_value_buffer(v22, qword_1EB176AE0);
        v23 = sub_1A5246F04();
        v24 = sub_1A524D264();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = v25;
          v27 = swift_slowAlloc();
          v28 = v27;
          *v25 = 136446210;
          sub_1A5241104();
          sub_1A3C29DBC(&qword_1EB12AFE8, MEMORY[0x1E6969530]);
          sub_1A524EA44();
          v16(v3, v0);
          sub_1A3C2EF94();
        }

        sub_1A43F8A20();
      }

      v16(v9, v0);
    }
  }

  return result;
}

uint64_t sub_1A46CC278@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1A524C634();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_1A5241144();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_1A3C2CBD8(v11, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37330);
    v8 = sub_1A5241144();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1A46CC428()
{
  sub_1A3C7D190(0, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB1B0);
  v2 = __swift_project_value_buffer(v1, qword_1EB1EB1B0);
  v3 = sub_1A524BFC4();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

void sub_1A46CC534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A3C33378(a6);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_1A46CC570()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176AE0);
  __swift_project_value_buffer(v0, qword_1EB176AE0);
  sub_1A5246EF4();
}

uint64_t sub_1A46CC5D4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1A3C7D190(0, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = MEMORY[0x1E6969530];
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v2);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = [objc_opt_self() standardUserDefaults];
  sub_1A46CC8F0(a1, v10, &qword_1EB12AFE0, v7);
  v12 = sub_1A5241144();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1A5241074();
    (*(v13 + 8))(v10, v12);
  }

  v15 = sub_1A524C634();
  [v11 setObject:v14 forKey:v15];

  swift_unknownObjectRelease();
  if (qword_1EB17B6A0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_1EB1EB1B0);
  v17 = sub_1A524BFC4();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  swift_beginAccess();
  sub_1A46CC99C(v6, v16);
  swift_endAccess();
  return sub_1A3C2CBD8(a1, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D190);
}

uint64_t sub_1A46CC8F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C7D190(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A46CC99C(uint64_t a1, uint64_t a2)
{
  sub_1A3C7D190(0, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A46CCA40()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v4[4] = sub_1A46CCB64;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3C2E0D0;
  v4[3] = &block_descriptor_30_4;
  v3 = _Block_copy(v4);

  px_perform_after_ca_commit(v3);
  _Block_release(v3);
}

unint64_t sub_1A46CCAFC()
{
  result = qword_1EB1266C0;
  if (!qword_1EB1266C0)
  {
    sub_1A3C52C70(255, &qword_1EB1266C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1266C0);
  }

  return result;
}

void sub_1A46CCC14(unint64_t a1)
{
  v24 = MEMORY[0x1E69E7CC0];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_27:
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A59097F0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_26;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v9 = [v6 rootViewController];

    ++v4;
    if (v9)
    {
      MEMORY[0x1A5907D70]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v5 = v24;
      v4 = v8;
    }
  }

  if (!(v5 >> 62))
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_16;
    }

LABEL_29:

    return;
  }

  v10 = sub_1A524E2B4();
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_16:
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1A59097F0](v11, v5);
      }

      else
      {
        v16 = *(v5 + 8 * v11 + 32);
      }

      v17 = v16;
      v18 = [v16 px_topmostPresentedViewController];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 representedItemDiagnosticDescription];
        v21 = sub_1A524C674();
        v23 = v22;

        MEMORY[0x1A5907B60](v21, v23);

        MEMORY[0x1A5907B60](2570, 0xE200000000000000);
        MEMORY[0x1A5907B60](0x65746E6573657250, 0xEB000000000A3A64);
      }

      ++v11;
      v12 = [v17 representedItemDiagnosticDescription];
      v13 = sub_1A524C674();
      v15 = v14;

      v24 = v13;
      MEMORY[0x1A5907B60](2570, 0xE200000000000000);
      MEMORY[0x1A5907B60](v13, v15);
    }

    while (v10 != v11);
    goto LABEL_29;
  }

  __break(1u);
}