id sub_1A4114654(void *a1)
{
  sub_1A3CA09D8(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for LemonadeBookmark(0);
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 photoLibrary];
  if (result)
  {
    v11 = result;
    PHPhotoLibrary.lemonadeBookmarksManager.getter();

    v12 = a1;
    v13 = sub_1A3F9E42C();
    sub_1A3F9E50C(v13, v14, v12, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_1A3CA0A80(v4, &qword_1EB12A538, type metadata accessor for LemonadeBookmark);
      v15 = 0;
    }

    else
    {
      sub_1A3C5921C(v4, v9);
      v15 = sub_1A42E0DD8(v9);

      sub_1A3CA2CF8(v9);
    }

    return (v15 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4114848@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1A3C4C034(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23[-v5];
  v7 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a2 = 0x6974736567677573;
  a2[1] = 0xEB00000000736E6FLL;
  a2[2] = a1;
  v10 = a2 + *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
  *v10 = a1;
  v10[8] = 3;
  v11 = *(type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0) + 24);
  v12 = a1;
  v13 = sub_1A3C47918();
  v15 = v14;
  v16 = sub_1A3C52D68();
  v18 = v17;
  v20 = v19;
  v21 = sub_1A3C4ED50();
  v23[8] = 1;
  *v9 = xmmword_1A531BE60;
  v9[16] = 1;
  *(v9 + 3) = 0;
  v9[32] = 1;
  *(v9 + 5) = v13;
  *(v9 + 6) = v15;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  *(v9 + 9) = v16;
  *(v9 + 10) = v18;
  v9[88] = v20;
  v9[89] = v21;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v6);
  return sub_1A3C52D78(v9, 0, v6, &v10[v11]);
}

uint64_t sub_1A4114A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4114A94()
{
  v1 = sub_1A5243834();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v28 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4C034(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = v24 - v4;
  v5 = sub_1A5243EC4();
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4116904(0, &qword_1EB12B8D0, MEMORY[0x1E697F948]);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  sub_1A3C4C034(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = type metadata accessor for MapSnapshotView(0);
  v24[1] = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  sub_1A5242E34();
  v12 = *(v33 + 16);

  v31 = v12;
  v13 = [v12 transientIdentifier];
  if (!v13)
  {
    sub_1A524C674();
    goto LABEL_7;
  }

  v24[0] = v0;
  v14 = v13;
  v15 = sub_1A524C674();
  v17 = v16;

  v18 = sub_1A524C674();
  if (!v17)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v15 == v18 && v17 == v19)
  {

    goto LABEL_10;
  }

  v23 = sub_1A524EAB4();

  if (v23)
  {
LABEL_10:
    type metadata accessor for MapDataProvider();
    static MapDataProvider.sharedProvider(for:)(*v24[0]);
  }

LABEL_8:
  sub_1A5242E54();
  v33 = 0u;
  v34 = 0u;
  v35 = 1;
  v20 = sub_1A52429A4();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v26 + 104))(v28, *MEMORY[0x1E69C2678], v27);
  sub_1A5243ED4();
  v21 = v29;
  (*(v29 + 16))(v10, v7, v5);
  swift_storeEnumTagMultiPayload();
  sub_1A4117138(&qword_1EB12A5F8, type metadata accessor for MapSnapshotView);
  sub_1A4117138(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
  sub_1A5249744();

  return (*(v21 + 8))(v7, v5);
}

uint64_t sub_1A411517C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524C634();
  v5 = PXLemonadeLocalizedString(v4);

  v6 = sub_1A524C674();
  v8 = v7;

  v9 = sub_1A524C634();
  v10 = PXLemonadeLocalizedString(v9);

  v11 = sub_1A524C674();
  v13 = v12;

  v14 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  LOBYTE(v10) = sub_1A3C5A374();
  v15 = sub_1A3C5A374();
  v16 = sub_1A3C5A374();
  v17 = sub_1A3C5A374();
  v18 = sub_1A3C5A374();
  return sub_1A425463C(v14, v10 & 1, v15 & 1, v16 & 1, v17 & 1, v18 & 1, 0x6C69662E72617473, 0xE90000000000006CLL, a2, v6, v8, v11, v13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

void sub_1A4115348(void **a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = *a1;
  (*(v5 + 104))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C12A8], v4, v6);
  sub_1A4116614(v8, a2);
}

uint64_t sub_1A4115450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[0] = a3;
  v6 = sub_1A5243284();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16[1] = a1;

  sub_1A5242E44();
  sub_1A4114A2C(v3, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_1A4116974(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  (*(v7 + 104))(v9, *MEMORY[0x1E69C23E0], v6);

  sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
  sub_1A40F43F4();
  sub_1A4116904(0, &qword_1EB12B7A8, MEMORY[0x1E697F960]);
  sub_1A4117138(&qword_1EB146DE0, sub_1A40F43F4);
  sub_1A3D6ED8C();
  return sub_1A5242AA4();
}

uint64_t sub_1A411572C()
{
  result = sub_1A5242E44();
  if (!v1)
  {
    return sub_1A3C38BD4();
  }

  return result;
}

uint64_t sub_1A4115770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4116DE0(&qword_1EB125C60, &qword_1EB12A800, type metadata accessor for PhotoKitItem);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A41157FC()
{
  v0 = type metadata accessor for LemonadeNavigationDestination();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1A3C4C034(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F8E10;
  sub_1A4116974(v3, v5 + v4, type metadata accessor for LemonadeNavigationDestination);
  return v5;
}

unint64_t sub_1A4115958(uint64_t a1)
{
  v2 = sub_1A4117138(&qword_1EB129BA0, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);

  return sub_1A42E6E80(a1, v2);
}

id sub_1A41159C4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v63 = a3;
  v6 = sub_1A5244EE4();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    v20 = v63;
    goto LABEL_66;
  }

  v61 = v7;
  v62 = a4;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x1C8);
  v13 = a2;
  if (v12() == 5)
  {
    v14 = 1113;
  }

  else
  {
    v14 = 1985;
  }

  v15 = *((*v11 & *v13) + 0x5E8);
  if (v15())
  {
    v14 = v15();
  }

  sub_1A411689C(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v16 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v17 = *((*v11 & *v13) + 0x640);
  if (v17(1, v14))
  {
    v18 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v16];
    v19 = [v18 firstObject];

    v20 = v63;
    if (v19)
    {
      v21 = v19;
      MEMORY[0x1A5907D70]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v60 = v16;
        sub_1A524CA74();
        v16 = v60;
      }

      sub_1A524CAE4();

      v10 = v64;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v20 = v63;
  }

  if (v17(16, v14))
  {
    v22 = sub_1A45A2BD0(v20, v62, v16);
    if (v22)
    {
      v23 = v22;
      MEMORY[0x1A5907D70]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v60 = v16;
        sub_1A524CA74();
        v16 = v60;
      }

      sub_1A524CAE4();

      v10 = v64;
    }
  }

  if (v17(32, v14))
  {
    v24 = sub_1A4331630(v20, v62, v16);
    if (v24)
    {
      v25 = v24;
      MEMORY[0x1A5907D70]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v60 = v16;
        sub_1A524CA74();
        v16 = v60;
      }

      sub_1A524CAE4();

      v10 = v64;
    }
  }

  if ((v17(64, v14) & 1) == 0)
  {
LABEL_33:
    v36 = &selRef_faceClusteringProperties;
    if (v17(8, v14))
    {
      v37 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:202 options:v16];
      v38 = [v37 firstObject];

      if (v38)
      {
        v39 = v38;
        MEMORY[0x1A5907D70]();
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();

        v10 = v64;
      }
    }

    if (v17(1024, v14))
    {
      v40 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:1000000218 options:v16];
      v41 = [v40 firstObject];
      if (v41)
      {
        v42 = v41;
        MEMORY[0x1A5907D70]();
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
          v36 = &selRef_faceClusteringProperties;
        }

        sub_1A524CAE4();

        v10 = v64;
      }

      else
      {
      }
    }

    if (v17(512, v14))
    {
      v43 = [v20 px_virtualCollections];
      v44 = [v43 recentlyEditedCollection];

      MEMORY[0x1A5907D70]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
        v36 = &selRef_faceClusteringProperties;
      }

      sub_1A524CAE4();
      v10 = v64;
    }

    if (v17(128, v14))
    {
      v45 = [v20 px_virtualCollections];
      v46 = [v45 recentlyViewedCollection];

      MEMORY[0x1A5907D70]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
        v36 = &selRef_faceClusteringProperties;
      }

      sub_1A524CAE4();
      v10 = v64;
    }

    if (v17(256, v14))
    {
      v47 = [v20 px_virtualCollections];
      v48 = [v47 recentlySharedCollection];

      MEMORY[0x1A5907D70]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
        v36 = &selRef_faceClusteringProperties;
      }

      sub_1A524CAE4();
      v10 = v64;
    }

    if (v17(2, v14))
    {
      v49 = [v20 px_virtualCollections];
      v50 = [v49 mapCollection];

      v51 = v50;
      MEMORY[0x1A5907D70]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();

      v10 = v64;
    }

    if ((v17(4, v14) & 1) != 0 && (v52 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:204 options:v16], v53 = objc_msgSend(v52, v36[486]), v52, v53))
    {
      v54 = v53;
      MEMORY[0x1A5907D70]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();

      v10 = v64;
    }

    else
    {
    }

LABEL_66:
    if (v10 >> 62)
    {
      if (sub_1A524E2B4() >= 1)
      {
        goto LABEL_68;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_68:
      sub_1A3EC9890(v10);

      sub_1A524C674();
      v55 = objc_allocWithZone(MEMORY[0x1E69788E0]);
      v56 = sub_1A524CA14();

      v57 = sub_1A524C634();

      v58 = [v55 initWithObjects:v56 photoLibrary:v20 fetchType:v57 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

      return v58;
    }

    return 0;
  }

  [v16 setFetchLimit_];
  v60 = v16;
  result = [v16 photoLibrary];
  if (result)
  {
    (*(v61 + 104))(v9, *MEMORY[0x1E69C12B0], v6);
    sub_1A5244EF4();
    swift_allocObject();
    sub_1A5244ED4();
    sub_1A5244CA4();
    v27 = sub_1A5244C94();
    v28 = objc_opt_self();
    v29 = v27;
    v30 = [v20 librarySpecificFetchOptions];
    v31 = [v28 fetchKeyAssetForEachSuggestion:v29 options:v30];

    if (v31)
    {
      v32 = objc_opt_self();
      sub_1A3C38BD4();
      v33 = sub_1A524C634();

      v34 = [v32 transientAssetCollectionWithAssetFetchResult:v31 title:v33 identifier:@"PXFeaturedPhotosVirtualCollection"];

      v35 = v34;
      MEMORY[0x1A5907D70]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();

      v20 = v63;
      v10 = v64;
    }

    else
    {
    }

    v16 = v60;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

void sub_1A4116614(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_1A524CA14();
  v6 = sub_1A524C634();
  v19 = [v4 transientCollectionListWithCollections:v5 title:v6 identifier:0 photoLibrary:a1];

  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 2;
  if (v7)
  {
    v9 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x258))(v8);
    v10 = v7;
  }

  else
  {
    v11 = v8;
    v10 = 0;
    v9 = 0;
  }

  sub_1A411689C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
  sub_1A3C6C180(&v20);
  v28 = v20;
  v29 = v21;
  sub_1A3C6C18C(&v26);
  v24 = v26;
  v25 = v27;
  v12 = sub_1A3C30368();
  v13 = sub_1A3C5A374();
  v14 = sub_1A3C5A374();
  v15 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v28, 0, &unk_1F16F7D08, 0, 1, &v24, 1, &v30, v23, v12, v13 & 1, v14 & 1, v15 & 1, v9);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = a1;
  v16[4] = a2;
  v17 = v10;
  v18 = a1;

  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v19, v8, v31, v23, &v20, sub_1A4117180, v16);
}

void sub_1A411689C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A4116904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MapSnapshotView(255);
    v7 = sub_1A5243EC4();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4116974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41169DC(uint64_t a1)
{
  result = sub_1A4117138(&unk_1EB129BA8, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4116A84(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A411689C(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4116C60(uint64_t a1)
{
  result = sub_1A4117138(&qword_1EB132940, type metadata accessor for LemonadeSuggestionsFeature);
  *(a1 + 8) = result;
  return result;
}

void sub_1A4116D08()
{
  if (!qword_1EB132950)
  {
    sub_1A40F43F4();
    sub_1A4116904(255, &qword_1EB12B7A8, MEMORY[0x1E697F960]);
    sub_1A4117138(&qword_1EB146DE0, sub_1A40F43F4);
    sub_1A3D6ED8C();
    v0 = sub_1A5242A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132950);
    }
  }
}

uint64_t sub_1A4116DE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A411689C(255, a2, &qword_1EB126AC0, 0x1E6978650, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_27()
{
  v1 = (type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0) - 8);
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

  v8 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
  v9 = sub_1A5241F84();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  return swift_deallocObject();
}

void sub_1A41170C8()
{
  if (!qword_1EB124D00)
  {
    sub_1A5243B94();
    sub_1A3C3637C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124D00);
    }
  }
}

uint64_t sub_1A4117138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4117198@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  sub_1A411FE24(v1 + *(v10 + 24), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
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

uint64_t type metadata accessor for PhotosDetailsSharedWithYouWidgetView()
{
  result = qword_1EB18F1A0;
  if (!qword_1EB18F1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A41173E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4117444@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1A53160F0;
  v4 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  result = swift_allocObject();
  *(result + 16) = a1;
  v8 = a2 + v4[8];
  *v8 = sub_1A403478C;
  *(v8 + 1) = result;
  v8[16] = 0;
  return result;
}

uint64_t sub_1A411752C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_1A524B284();
  *a3 = result;
  return result;
}

uint64_t sub_1A4117574@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  sub_1A4117F18();
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v63 = (&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1E697F948];
  sub_1A411F874(0, &qword_1EB132A68, sub_1A4118B8C, sub_1A4117F18, MEMORY[0x1E697F948]);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v61 - v6;
  v7 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118B8C(0);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A41195C4(0);
  v73 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411F874(0, &qword_1EB132B30, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView, sub_1A41195C4, v4);
  v70 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v61 - v15;
  v71 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  MEMORY[0x1EEE9AC00](v71);
  v64 = v1;
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);
  v16 = sub_1A5247EB4();
  v17 = sub_1A418C934();

  if ((v17 & 1) == 0)
  {
    v18 = sub_1A5247EB4();
    v19 = sub_1A418C970();

    if ((v19 & 1) == 0)
    {
      sub_1A5247EB4();
      swift_beginAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v20 = sub_1A5247EB4();
  v21 = MEMORY[0x1E69E7D40];
  v22 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x140))();

  if (v22 == 5)
  {
    v23 = v64;
    sub_1A411960C(v64, v11);
    v24 = v62;
    sub_1A411FE24(v23, v62, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
    v25 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v26 = swift_allocObject();
    sub_1A411F7A4(v24, v26 + v25, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
    v27 = v67;
    v28 = (v11 + *(v66 + 36));
    *v28 = sub_1A411EB7C;
    v28[1] = v26;
    v28[2] = 0;
    v28[3] = 0;
    sub_1A411FBD4(v11, v27, sub_1A4118B8C);
    swift_storeEnumTagMultiPayload();
    sub_1A411E518();
    sub_1A411F620(&qword_1EB132B68, sub_1A4117F18, sub_1A411E990);
    v29 = v68;
    sub_1A5249744();
    v30 = sub_1A4118B8C;
  }

  else
  {
    v31 = sub_1A5249574();
    v11 = v63;
    *v63 = v31;
    v11[1] = 0;
    *(v11 + 16) = 0;
    sub_1A411E4B0();
    sub_1A411B9FC(v64, v11 + *(v32 + 44));
    v33 = sub_1A5247EB4();
    sub_1A411F874(0, &qword_1EB132960, sub_1A4117FBC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v35 = v11 + *(v34 + 36);
    sub_1A4110614(v33);

    v36 = sub_1A524BC74();
    v38 = v37;
    sub_1A3FA9268();
    v40 = &v35[*(v39 + 36)];
    *v40 = v36;
    v40[1] = v38;
    v41 = sub_1A5247EB4();
    v42 = (*((*v21 & *v41) + 0xC0))();

    [v42 contentGuideInsets];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    v51 = EdgeInsets.init(_:)(v44, v46, v48, v50);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = sub_1A524A064();
    v59 = v11 + *(v69 + 36);
    *v59 = v58;
    *(v59 + 1) = v51;
    *(v59 + 2) = v53;
    *(v59 + 3) = v55;
    *(v59 + 4) = v57;
    v59[40] = 0;
    sub_1A411FBD4(v11, v67, sub_1A4117F18);
    swift_storeEnumTagMultiPayload();
    sub_1A411E518();
    sub_1A411F620(&qword_1EB132B68, sub_1A4117F18, sub_1A411E990);
    v29 = v68;
    sub_1A5249744();
    v30 = sub_1A4117F18;
  }

  sub_1A411FAE4(v11, v30);
  sub_1A411FBD4(v29, v72, sub_1A41195C4);
  swift_storeEnumTagMultiPayload();
  sub_1A411FDDC(&qword_1EB12F8D8, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  sub_1A411EAB4();
  sub_1A5249744();
  return sub_1A411FAE4(v29, sub_1A41195C4);
}

void sub_1A4117F18()
{
  if (!qword_1EB132958)
  {
    sub_1A411F874(255, &qword_1EB132960, sub_1A4117FBC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132958);
    }
  }
}

void sub_1A4117FBC()
{
  if (!qword_1EB132968)
  {
    sub_1A4118050(255);
    sub_1A411FDDC(&qword_1EB132A60, sub_1A4118050);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132968);
    }
  }
}

void sub_1A411808C()
{
  if (!qword_1EB132980)
  {
    sub_1A4118148(255);
    sub_1A411F620(&qword_1EB132A40, sub_1A4118148, sub_1A4118A5C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132980);
    }
  }
}

void sub_1A4118170()
{
  if (!qword_1EB132990)
  {
    sub_1A4118210(255);
    sub_1A411EE2C(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132990);
    }
  }
}

void sub_1A4118238()
{
  if (!qword_1EB1329A0)
  {
    sub_1A41182E0();
    sub_1A411E5DC(&qword_1EB132A18, sub_1A41182E0, sub_1A41188F0);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1329A0);
    }
  }
}

void sub_1A41182E0()
{
  if (!qword_1EB1329A8)
  {
    sub_1A411F874(255, &qword_1EB1329B0, sub_1A411837C, sub_1A41184F8, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1329A8);
    }
  }
}

void sub_1A41183B0()
{
  if (!qword_1EB1329C0)
  {
    sub_1A411841C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1329C0);
    }
  }
}

void sub_1A411848C()
{
  if (!qword_1EB128990)
  {
    v0 = sub_1A5248094();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128990);
    }
  }
}

void sub_1A4118560()
{
  if (!qword_1EB1329E0)
  {
    sub_1A411EDD8(255, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
    sub_1A4118604(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1329E0);
    }
  }
}

void sub_1A411864C()
{
  if (!qword_1EB1329F0)
  {
    sub_1A4118720(255);
    sub_1A3EE1D04();
    sub_1A4118810();
    sub_1A411FDDC(&unk_1EB1263B0, sub_1A3EE1D04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1329F0);
    }
  }
}

void sub_1A4118768()
{
  if (!qword_1EB132A00)
  {
    sub_1A411F874(255, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3D6D248, MEMORY[0x1E697E830]);
    sub_1A3F373F8();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132A00);
    }
  }
}

unint64_t sub_1A4118810()
{
  result = qword_1EB132A08;
  if (!qword_1EB132A08)
  {
    sub_1A4118720(255);
    sub_1A411FDDC(&qword_1EB132A10, sub_1A4118768);
    sub_1A411FDDC(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132A08);
  }

  return result;
}

unint64_t sub_1A41188F0()
{
  result = qword_1EB132A20;
  if (!qword_1EB132A20)
  {
    sub_1A411F874(255, &qword_1EB1329B0, sub_1A411837C, sub_1A41184F8, MEMORY[0x1E697F960]);
    sub_1A411FDDC(&qword_1EB132A28, sub_1A411837C);
    sub_1A411E5DC(&qword_1EB132A30, sub_1A41184F8, sub_1A4118A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132A20);
  }

  return result;
}

unint64_t sub_1A4118A5C()
{
  result = qword_1EB132A48;
  if (!qword_1EB132A48)
  {
    sub_1A4118170();
    sub_1A4118ADC();
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132A48);
  }

  return result;
}

unint64_t sub_1A4118ADC()
{
  result = qword_1EB132A50;
  if (!qword_1EB132A50)
  {
    sub_1A4118210(255);
    sub_1A411FDDC(&qword_1EB132A58, sub_1A4118238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132A50);
  }

  return result;
}

void sub_1A4118BB4()
{
  if (!qword_1EB132A78)
  {
    sub_1A411F874(255, &qword_1EB132A80, sub_1A4118C50, sub_1A4118CDC, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132A78);
    }
  }
}

void sub_1A4118C78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A4118D24()
{
  if (!qword_1EB132A98)
  {
    sub_1A4118E98();
    sub_1A4118FDC();
    sub_1A41190E8();
    sub_1A5249764();
    sub_1A411F620(&qword_1EB132B10, sub_1A41190E8, sub_1A41194A0);
    sub_1A411FDDC(&qword_1EB122360, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132A98);
    }
  }
}

void sub_1A4118E98()
{
  if (!qword_1EB132AA0)
  {
    sub_1A4118FDC();
    sub_1A41190E8();
    sub_1A5249764();
    sub_1A411F620(&qword_1EB132B10, sub_1A41190E8, sub_1A41194A0);
    sub_1A411FDDC(&qword_1EB122360, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132AA0);
    }
  }
}

void sub_1A4118FDC()
{
  if (!qword_1EB132AA8)
  {
    sub_1A41190E8();
    sub_1A5249764();
    sub_1A411F620(&qword_1EB132B10, sub_1A41190E8, sub_1A41194A0);
    sub_1A411FDDC(&qword_1EB122360, MEMORY[0x1E697C658]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132AA8);
    }
  }
}

void sub_1A41190E8()
{
  if (!qword_1EB132AB0)
  {
    sub_1A411F874(255, &qword_1EB132AB8, sub_1A411918C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132AB0);
    }
  }
}

void sub_1A411918C()
{
  if (!qword_1EB132AC0)
  {
    sub_1A4119220(255);
    sub_1A411FDDC(&qword_1EB132B08, sub_1A4119220);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132AC0);
    }
  }
}

void sub_1A411925C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A41192B8(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41192B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A411935C()
{
  if (!qword_1EB132AE0)
  {
    sub_1A41193F0();
    sub_1A411FDDC(&qword_1EB132B00, sub_1A41193F0);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132AE0);
    }
  }
}

void sub_1A41193F0()
{
  if (!qword_1EB132AE8)
  {
    sub_1A411EC6C(255, &qword_1EB132AF0, sub_1A411946C);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132AE8);
    }
  }
}

unint64_t sub_1A41194A0()
{
  result = qword_1EB132B18;
  if (!qword_1EB132B18)
  {
    sub_1A411F874(255, &qword_1EB132AB8, sub_1A411918C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    sub_1A411FDDC(&qword_1EB132B20, sub_1A411918C);
    sub_1A411FDDC(&qword_1EB122308, sub_1A3EC447C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B18);
  }

  return result;
}

uint64_t sub_1A411960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v130 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1A52407E4();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v129 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1A5249524();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1A5249D74();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  v112 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v115 = v9;
  v118 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1A5249764();
  v103 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1A52486A4();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v12 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41190E8();
  v104 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v100 = (v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4118FDC();
  v108 = v15;
  v106 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v105 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118E98();
  v111 = v17;
  v109 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v107 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118D24();
  v117 = v19;
  v114 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v110 = v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118CDC(0);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v113 = v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v122 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v126 = v96 - v27;
  sub_1A411F874(0, &qword_1EB132BE0, sub_1A4118C50, sub_1A4118CDC, MEMORY[0x1E697F948]);
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v96 - v30;
  sub_1A4118C50(0);
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v35 = v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v8;
  v36 = *(v8 + 32);
  v101 = a1;
  v37 = (a1 + v36);
  v38 = *v37;
  v39 = v37[1];
  v40 = *(v37 + 16);
  v41 = type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
  v42 = sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);
  v134 = v39;
  v135 = v38;
  v133 = v40;
  v132 = v41;
  v131 = v42;
  v43 = sub_1A5247EB4();
  LOBYTE(v39) = sub_1A418C934();

  if ((v39 & 1) == 0)
  {
    v96[1] = v29;
    v96[2] = v33;
    v96[3] = v31;
    v96[4] = v22;
    v45 = sub_1A524BC74();
    v46 = v100;
    *v100 = v45;
    *(v46 + 8) = v47;
    sub_1A411F3C4();
    v49 = v101;
    sub_1A411A660(v101, v46 + *(v48 + 44));
    sub_1A411F874(0, &qword_1EB132AB8, sub_1A411918C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    v51 = (v46 + *(v50 + 36));
    v52 = *(sub_1A5248A14() + 20);
    v53 = *MEMORY[0x1E697F468];
    v54 = sub_1A52494A4();
    (*(*(v54 - 8) + 104))(&v51[v52], v53, v54);
    __asm { FMOV            V0.2D, #16.0 }

    *v51 = _Q0;
    sub_1A3EC447C();
    v51[*(v60 + 36)] = 0;
    sub_1A4117198(v12);
    v61 = v99;
    sub_1A4394B64(v12, v99, &off_1EE6D9F20);
    v62 = *(v97 + 8);
    v63 = v98;
    v62(v12, v98);
    sub_1A4117198(v12);
    v64 = sub_1A4394B64(v12, v61, &off_1EE6D9F20);
    (v62)(v12, v63, v64);
    sub_1A524BC74();
    sub_1A52481F4();
    v65 = v104;
    v66 = (v46 + *(v104 + 36));
    v67 = v142;
    *v66 = v141;
    v66[1] = v67;
    v66[2] = v143;
    v68 = v102;
    sub_1A5248B84();
    v69 = sub_1A411F620(&qword_1EB132B10, sub_1A41190E8, sub_1A41194A0);
    v70 = sub_1A411FDDC(&qword_1EB122360, MEMORY[0x1E697C658]);
    v71 = v105;
    v72 = v116;
    sub_1A524A974();
    (*(v103 + 8))(v68, v72);
    sub_1A411FAE4(v46, sub_1A41190E8);
    v73 = v118;
    sub_1A411FE24(v49, v118, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
    v74 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v75 = swift_allocObject();
    sub_1A411F7A4(v73, v75 + v74, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
    v137 = v65;
    v138 = v72;
    v139 = v69;
    v140 = v70;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v77 = v107;
    v78 = v108;
    sub_1A524AA84();

    (*(v106 + 8))(v71, v78);
    v79 = v119;
    sub_1A5249D54();
    v137 = v78;
    v138 = OpaqueTypeConformance2;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = v110;
    v82 = v111;
    sub_1A524ADB4();
    (*(v120 + 8))(v79, v121);
    (*(v109 + 8))(v77, v82);
    v83 = v123;
    sub_1A5249504();
    v137 = v82;
    v138 = v80;
    swift_getOpaqueTypeConformance2();
    v84 = v113;
    v85 = v117;
    sub_1A524AAF4();
    (*(v124 + 8))(v83, v125);
    (*(v114 + 8))(v81, v85);
    v86 = sub_1A5247EB4();
    v87 = v130;
    sub_1A418C748();

    v88 = v127;
    v89 = *(v127 + 48);
    v90 = v128;
    if (v89(v87, 1, v128) == 1)
    {
      sub_1A5240714();
      if (v89(v87, 1, v90) != 1)
      {
        sub_1A411FE8C(v87, sub_1A3F31320);
      }
    }

    else
    {
      (*(v88 + 32))(v129, v87, v90);
    }

    v91 = sub_1A524A454();
    v93 = v92;
    v95 = v94;
    sub_1A52487A4();
    sub_1A3E04DF4(v91, v93, v95 & 1);

    sub_1A411FAE4(v84, sub_1A4118CDC);
    sub_1A5247EB4();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A524AAE4();
  sub_1A411FE24(v35, v31, sub_1A4118C50);
  swift_storeEnumTagMultiPayload();
  sub_1A411E710();
  sub_1A411E7C0();
  sub_1A5249744();
  return sub_1A411FE8C(v35, sub_1A4118C50);
}

uint64_t sub_1A411A660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v67 = a2;
  v69 = sub_1A52486A4();
  v3 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v5 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EC3E2C(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v56[-v10];
  v11 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  v12 = (a1 + *(v11 + 32));
  v13 = *v12;
  v61 = v12[1];
  v62 = v13;
  v60 = *(v12 + 16);
  v59 = type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
  v58 = sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);
  v14 = sub_1A5247EB4();
  sub_1A4110614(v14);

  sub_1A4117198(v5);
  sub_1A4394B64(v5, v11, &off_1EE6D9F20);
  v15 = *(v3 + 8);
  v16 = v69;
  v15(v5, v69);
  sub_1A4117198(v5);
  v17 = sub_1A4394B64(v5, v11, &off_1EE6D9F20);
  (v15)(v5, v16, v17);
  sub_1A524BC74();
  sub_1A52481F4();
  v18 = *(v7 + 44);
  v19 = v68;
  v20 = &v68[v18];
  v21 = v74;
  *v20 = v73;
  v20[1] = v21;
  v20[2] = v75;
  v22 = sub_1A5249574();
  LOBYTE(v77) = 0;
  sub_1A411ABD8(&v84);
  v23 = v85;
  v24 = v86;
  v69 = v87;
  v65 = v88;
  v66 = v84;
  v64 = v89;
  v63 = v90;
  LOBYTE(v15) = v77;
  v57 = v77;
  v25 = sub_1A5247EB4();
  v26 = (*((*MEMORY[0x1E69E7D40] & *v25) + 0xC0))();

  [v26 contentGuideInsets];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = EdgeInsets.init(_:)(v28, v30, v32, v34);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v5) = sub_1A524A064();
  v42 = v70;
  sub_1A411FBD4(v19, v70, sub_1A3EC3E2C);
  v43 = v67;
  sub_1A411FBD4(v42, v67, sub_1A3EC3E2C);
  sub_1A41192B8(0, &qword_1EB132AD0, sub_1A3EC3E2C, sub_1A4119334);
  v45 = (v43 + *(v44 + 48));
  *&v77 = v22;
  *(&v77 + 1) = 0x4028000000000000;
  LOBYTE(v78) = v15;
  *(&v78 + 1) = *v76;
  DWORD1(v78) = *&v76[3];
  v46 = v65;
  v47 = v66;
  *(&v78 + 1) = v66;
  *&v79 = v23;
  *(&v79 + 1) = v24;
  *&v80 = v69;
  v48 = v64;
  *(&v80 + 1) = v65;
  *&v81 = v64;
  LOBYTE(v43) = v63;
  BYTE8(v81) = v63;
  *(&v81 + 9) = *v72;
  HIDWORD(v81) = *&v72[3];
  LOBYTE(v82) = v5;
  DWORD1(v82) = *&v71[3];
  *(&v82 + 1) = *v71;
  *(&v82 + 1) = v35;
  *&v83[0] = v37;
  *(&v83[0] + 1) = v39;
  *&v83[1] = v41;
  BYTE8(v83[1]) = 0;
  v49 = v77;
  v50 = v78;
  v51 = v80;
  v45[2] = v79;
  v45[3] = v51;
  *v45 = v49;
  v45[1] = v50;
  v52 = v81;
  v53 = v82;
  v54 = v83[0];
  *(v45 + 105) = *(v83 + 9);
  v45[5] = v53;
  v45[6] = v54;
  v45[4] = v52;
  sub_1A411FE24(&v77, &v84, sub_1A4119334);
  sub_1A411FAE4(v68, sub_1A3EC3E2C);
  v84 = v22;
  v85 = 0x4028000000000000;
  LOBYTE(v86) = v57;
  *(&v86 + 1) = *v76;
  HIDWORD(v86) = *&v76[3];
  v87 = v47;
  v88 = v23;
  v89 = v24;
  v90 = v69;
  v91 = v46;
  v92 = v48;
  v93 = v43;
  *v94 = *v72;
  *&v94[3] = *&v72[3];
  v95 = v5;
  *&v96[3] = *&v71[3];
  *v96 = *v71;
  v97 = v35;
  v98 = v37;
  v99 = v39;
  v100 = v41;
  v101 = 0;
  sub_1A411FE8C(&v84, sub_1A4119334);
  return sub_1A411FAE4(v70, sub_1A3EC3E2C);
}

uint64_t sub_1A411ABD8@<X0>(uint64_t a1@<X8>)
{
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A52407E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1A411AF10(&v21);
  v20 = v21;
  type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);
  v12 = sub_1A5247EB4();
  sub_1A418CDB0(v4);

  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    v13 = sub_1A524A454();
    v15 = v14;
    v17 = v16;
    (*(v6 + 8))(v11, v5);
    swift_getKeyPath();
    sub_1A3E75E68(v13, v15, v17 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A411FE8C(v4, sub_1A3F31320);
  v18 = v20;

  sub_1A411F518(0, 0, 0, 0);
  sub_1A411F568(0, 0, 0, 0);
  *a1 = v18;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_1A411F568(0, 0, 0, 0);
}

uint64_t sub_1A411AF10@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v27 = sub_1A524B554();
  v1 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411F5B8(0);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v7;
  type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);
  v8 = sub_1A5247EB4();
  v9 = sub_1A418C6AC();

  if (v9)
  {
    v10 = sub_1A524B524();
  }

  else
  {
    v10 = sub_1A524B544();
  }

  v32 = v10;
  v11 = sub_1A5247EB4();
  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x140))();

  if (v13 != 5)
  {
    v20 = v12;
    v21 = v27;
    (*(v1 + 104))(v3, *MEMORY[0x1E6981630], v27);
    v26 = sub_1A524B5C4();
    (*(v1 + 8))(v3, v21);
    if (qword_1EB1A9470 != -1)
    {
      swift_once();
    }

    v22 = qword_1EB1EBB88;
    KeyPath = swift_getKeyPath();

    v24 = sub_1A5247EB4();
    (*((*v20 & *v24) + 0x140))();

    v25 = sub_1A5247EB4();
    (*((*v20 & *v25) + 0x140))();

    sub_1A524BC74();
    sub_1A52481F4();
    v38 = 1;
    v33 = v26;
    LOWORD(v34) = 257;
    v35 = KeyPath;
    *&v36 = v22;
    v37 = 256;
    sub_1A5247EB4();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v14 = sub_1A5247EB4();
  v15 = (*((*v12 & *v14) + 0x140))();

  if (v15 == 5)
  {
    v16 = 80.0;
  }

  else
  {
    v16 = 32.0;
  }

  v17 = sub_1A5247EB4();
  v18 = sub_1A418CB00();

  *&v33 = v32;
  *(&v33 + 1) = v16;
  v34 = v18;
  v35 = 0x4034000000000000;
  sub_1A411F750();
  result = sub_1A524B8E4();
  *v31 = result;
  return result;
}

void sub_1A411B63C()
{
  v15 = objc_opt_self();
  v1 = sub_1A524C634();
  sub_1A3F37DA4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v3;
  v16[3] = type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  sub_1A411FE24(v0, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
  String.init(forType:)(v16);
  v5 = sub_1A524C634();

  *(inited + 48) = v5;
  *(inited + 56) = sub_1A524C674();
  *(inited + 64) = v6;
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);
  v7 = sub_1A5247EB4();
  v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x88))();

  *(inited + 72) = v8;
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A411EC6C(0, &qword_1EB126F80, sub_1A3C7B6A4);
  swift_arrayDestroy();
  sub_1A3C7B6A4();
  v9 = sub_1A524C3D4();

  [v15 sendEvent:v1 withPayload:v9];

  v10 = sub_1A5247EB4();
  LOBYTE(v8) = sub_1A418C970();

  if (v8)
  {
    v11 = sub_1A5247EB4();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_1A5247EB4();
      swift_beginAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A524D244();
    v13 = sub_1A475874C();
    swift_beginAccess();
    v14 = *v13;
    sub_1A5246DF4();
  }
}

uint64_t sub_1A411B9FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v103 = a2;
  v2 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  v98 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v100 = v3;
  v102 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1A52486A4();
  v86 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v85 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118238();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118210(0);
  v89 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118170();
  v88 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118148(0);
  v94 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411808C();
  v101 = v13;
  v99 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v78 - v16;
  v83 = sub_1A524B9A4();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE16E8(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8D64(0);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v93 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v78 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v104 = &v78 - v29;
  sub_1A524B994();
  v92 = v2;
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
  v81 = sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);
  v30 = sub_1A5247EB4();
  v31 = (*((*MEMORY[0x1E69E7D40] & *v30) + 0x108))();

  v32 = (v31 & 1) == 0;
  v33 = v84;
  if (v32)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = 0.8;
  }

  (*(v82 + 32))(v21, v79, v83);
  *&v21[*(v19 + 44)] = v34;
  v35 = sub_1A524A094();
  v36 = v80;
  v37 = *v80;
  sub_1A5247BC4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_1A411F7A4(v21, v27, sub_1A3EE16E8);
  v46 = *(v23 + 44);
  v47 = v36;
  v48 = &v27[v46];
  *v48 = v35;
  *(v48 + 1) = v39;
  *(v48 + 2) = v41;
  *(v48 + 3) = v43;
  *(v48 + 4) = v45;
  v48[40] = 0;
  sub_1A411F7A4(v27, v104, sub_1A3FA8D64);
  *v33 = sub_1A5249314();
  *(v33 + 8) = 0x4028000000000000;
  *(v33 + 16) = 0;
  sub_1A411F80C();
  sub_1A411C588(v36, v33 + *(v49 + 44));
  v50 = sub_1A5247EB4();
  v51 = (*((*MEMORY[0x1E69E7D40] & *v50) + 0x140))();

  if (v51 == 5)
  {
    v52 = v85;
    sub_1A4117198(v85);
    sub_1A4394B64(v52, v92, &off_1EE6D9F20);
    (*(v86 + 8))(v52, v91);
  }

  v53 = sub_1A5247EB4();
  v54 = (*((*MEMORY[0x1E69E7D40] & *v53) + 0x140))();

  if (v54 == 5)
  {
    v55 = v85;
    sub_1A4117198(v85);
    v56 = sub_1A4394B64(v55, v92, &off_1EE6D9F20);
    (*(v86 + 8))(v55, v91, v56);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v57 = v90;
  sub_1A411FCC4(v33, v90, sub_1A4118238);
  v58 = (v57 + *(v89 + 36));
  v59 = v106;
  *v58 = v105;
  v58[1] = v59;
  v58[2] = v107;
  v60 = v87;
  sub_1A411FCC4(v57, v87, sub_1A4118210);
  *(v60 + *(v88 + 36)) = 0;
  v61 = *(v47 + 8);
  LOBYTE(v57) = sub_1A524A064();
  v62 = v95;
  sub_1A411FCC4(v60, v95, sub_1A4118170);
  v63 = v62 + *(v94 + 36);
  *v63 = v57;
  *(v63 + 8) = v61;
  *(v63 + 16) = v37;
  *(v63 + 24) = v61;
  *(v63 + 32) = v37;
  *(v63 + 40) = 0;
  v64 = v102;
  sub_1A411FE24(v47, v102, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
  v65 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v66 = swift_allocObject();
  sub_1A411F7A4(v64, v66 + v65, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
  sub_1A411F620(&qword_1EB132A40, sub_1A4118148, sub_1A4118A5C);
  v67 = v96;
  sub_1A524AA84();

  sub_1A411FAE4(v62, sub_1A4118148);
  v68 = v104;
  v69 = v93;
  sub_1A411FE24(v104, v93, sub_1A3FA8D64);
  v70 = v99;
  v71 = *(v99 + 16);
  v72 = v97;
  v73 = v101;
  v71(v97, v67, v101);
  v74 = v103;
  sub_1A411FE24(v69, v103, sub_1A3FA8D64);
  sub_1A41192B8(0, &qword_1EB132978, sub_1A3FA8D64, sub_1A411808C);
  v71((v74 + *(v75 + 48)), v72, v73);
  v76 = *(v70 + 8);
  v76(v67, v73);
  sub_1A411FE8C(v68, sub_1A3FA8D64);
  v76(v72, v73);
  return sub_1A411FE8C(v69, sub_1A3FA8D64);
}

uint64_t sub_1A411C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  sub_1A411852C(0);
  v108 = v3;
  v107 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v94 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE1D04();
  v92 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118768();
  v101 = v7;
  v100 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118720(0);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411864C();
  v90 = v11;
  v89 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118604(0);
  v88 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v81 - v18;
  v19 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  v20 = v19 - 8;
  v96 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v97 = v21;
  v98 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411EDD8(0, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v86 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v105 = &v81 - v25;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v109 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v95 = &v81 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  v112 = sub_1A52407E4();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v104 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41184F8(0);
  v116 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v106 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411F874(0, &qword_1EB132C10, sub_1A411837C, sub_1A41184F8, MEMORY[0x1E697F948]);
  v113 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v115 = &v81 - v37;
  sub_1A411837C(0);
  v114 = v38;
  MEMORY[0x1EEE9AC00](v38);
  sub_1A4118464(0);
  v40 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v81 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411841C(0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v45 = *(v20 + 40);
  v110 = a1;
  v46 = (a1 + v45);
  v47 = *v46;
  v48 = v46[1];
  v49 = *(v46 + 16);
  v50 = type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
  v51 = sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);
  v119 = v48;
  v120 = v47;
  v118 = v49;
  v52 = v50;
  v53 = v51;
  v54 = sub_1A5247EB4();
  LOBYTE(v48) = sub_1A418C934();

  if (v48)
  {
    sub_1A5248074();
    sub_1A524BC74();
    sub_1A52481F4();
    v55 = &v42[*(v40 + 36)];
    v56 = v122[1];
    *v55 = v122[0];
    *(v55 + 1) = v56;
    *(v55 + 2) = v122[2];
    sub_1A5247EB4();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v57 = sub_1A5247EB4();
  v58 = sub_1A418C970();

  if (v58)
  {
    v59 = sub_1A5247EB4();
    sub_1A418CDB0(v32);

    v60 = v111;
    v61 = v112;
    if ((*(v111 + 48))(v32, 1, v112) != 1)
    {
      v68 = v104;
      (*(v60 + 32))(v104, v32, v61);
      v69 = v110;
      sub_1A411AF10(v122);
      v121 = *&v122[0];
      v70 = v95;
      (*(v60 + 16))(v95, v68, v61);
      v71 = *(v60 + 56);
      v71(v70, 0, 1, v61);
      v71(v109, 1, 1, v61);
      v72 = sub_1A524C634();
      v73 = PXLocalizedSharedLibraryString(v72);

      v83 = sub_1A524C674();
      v82 = v74;

      v75 = v98;
      sub_1A411FE24(v69, v98, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
      v76 = (*(v96 + 80) + 16) & ~*(v96 + 80);
      v77 = swift_allocObject();
      sub_1A411F7A4(v75, v77 + v76, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
      sub_1A42F9768(&v121, v70, 0, 0, 0, v109, v83, v82, v105, sub_1A411FEEC, v77, 3);
      sub_1A411FE24(v110, v75, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
      v78 = swift_allocObject();
      sub_1A411F7A4(v75, v78 + v76, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
      sub_1A411F874(0, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3D6D248, MEMORY[0x1E697E830]);
      sub_1A3F373F8();
      sub_1A524B704();
      v109 = v52;
      v110 = v53;
      sub_1A5247EB4();
      swift_beginAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A411FE8C(v32, sub_1A3F31320);
    v62 = v117;
    v63 = v106;
    (*(v107 + 56))(v106, 1, 1, v108);
    sub_1A411FBD4(v63, v115, sub_1A41184F8);
    swift_storeEnumTagMultiPayload();
    sub_1A411FDDC(&qword_1EB132A28, sub_1A411837C);
    sub_1A411E5DC(&qword_1EB132A30, sub_1A41184F8, sub_1A4118A28);
    sub_1A5249744();
    sub_1A411FAE4(v63, sub_1A41184F8);
    sub_1A411F874(0, &qword_1EB1329B0, sub_1A411837C, sub_1A41184F8, MEMORY[0x1E697F960]);
    return (*(*(v79 - 8) + 56))(v62, 0, 1, v79);
  }

  else
  {
    sub_1A411F874(0, &qword_1EB1329B0, sub_1A411837C, sub_1A41184F8, MEMORY[0x1E697F960]);
    v65 = *(*(v64 - 8) + 56);
    v66 = v64;
    v67 = v117;

    return v65(v67, 1, 1, v66);
  }
}

uint64_t sub_1A411DB84@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v35 = a1;
  v3 = sub_1A524B394();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524B554();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x1E6981630];
  v31 = *(v6 + 104);
  v31(v9, v10, v5, v7);
  v36 = sub_1A524B5C4();
  v30 = *(v6 + 8);
  v30(v9, v5);
  sub_1A524BC74();
  sub_1A52481F4();
  LOBYTE(v66) = 1;
  *&v65[3] = *&v65[27];
  *&v65[11] = *&v65[35];
  *&v65[19] = *&v65[43];
  if (v35)
  {
    (v31)(v9, v10, v5);

    v11 = sub_1A524B5C4();
    v30(v9, v5);
    sub_1A524BC74();
    sub_1A52481F4();
    LOBYTE(v66) = 1;
    *&v37[6] = *&v65[51];
    *&v37[22] = *&v65[59];
    *&v37[38] = *&v65[67];
    (*(v33 + 104))(v32, *MEMORY[0x1E69814C8], v34);
    v12 = sub_1A524B4C4();

    *(v61 + 2) = *v37;
    v60 = v11;
    LOWORD(v61[0]) = 257;
    *(&v61[1] + 2) = *&v37[16];
    *(&v61[2] + 2) = *&v37[32];
    *&v61[3] = *&v37[46];
    WORD4(v61[3]) = 256;
    __asm { FMOV            V0.2D, #-3.0 }

    v62 = _Q0;
    *&v63 = v12;
    *(&v63 + 1) = 0x4010000000000000;
    v64 = 0uLL;
    PXDisplayCollectionDetailedCountsMake(&v60);
    v70 = v61[3];
    v71 = v62;
    v72 = v63;
    v73 = v64;
    v66 = v60;
    v67 = v61[0];
    v68 = v61[1];
    v69 = v61[2];
  }

  else
  {
    sub_1A411F3AC(&v66);
  }

  v61[3] = v70;
  v62 = v71;
  v63 = v72;
  v64 = v73;
  v60 = v66;
  v61[0] = v67;
  v61[1] = v68;
  v61[2] = v69;
  v18 = v36;
  v57[0] = v36;
  v57[1] = 0;
  LOWORD(v58[0]) = 257;
  *(v58 + 2) = *v65;
  *&v58[3] = *&v65[23];
  *(&v58[2] + 2) = *&v65[16];
  *(&v58[1] + 2) = *&v65[8];
  WORD4(v58[3]) = 256;
  v45 = v36;
  v46 = v58[0];
  v47 = v58[1];
  v48[0] = v58[2];
  *(v48 + 10) = *(&v58[2] + 10);
  v59[2] = v68;
  v59[3] = v69;
  v59[0] = v66;
  v59[1] = v67;
  v59[6] = v72;
  v59[7] = v73;
  v59[4] = v70;
  v59[5] = v71;
  v51 = v68;
  v52 = v69;
  v49 = v66;
  v50 = v67;
  v55 = v72;
  v56 = v73;
  v53 = v70;
  v54 = v71;
  v19 = v36;
  v20 = v58[0];
  v21 = v48[0];
  a2[2] = v58[1];
  a2[3] = v21;
  *a2 = v19;
  a2[1] = v20;
  v22 = v48[1];
  v23 = v49;
  v24 = v51;
  a2[6] = v50;
  a2[7] = v24;
  a2[4] = v22;
  a2[5] = v23;
  v25 = v52;
  v26 = v53;
  v27 = v56;
  a2[11] = v55;
  a2[12] = v27;
  v28 = v54;
  a2[9] = v26;
  a2[10] = v28;
  a2[8] = v25;
  sub_1A411FE24(v57, v38, sub_1A411ED14);
  sub_1A411FE24(v59, v38, sub_1A411EE94);
  sub_1A411FE8C(&v60, sub_1A411EE94);
  v38[0] = v18;
  v38[1] = 0;
  v39 = 1;
  v40 = 1;
  v41 = *v65;
  v42 = *&v65[8];
  *v43 = *&v65[16];
  *&v43[14] = *&v65[23];
  v44 = 256;
  return sub_1A411FE8C(v38, sub_1A411ED14);
}

__n128 sub_1A411E0B4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524BC34();
  v6 = v5;
  sub_1A411DB84(v3, &v14);
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v27 = v14;
  v28 = v15;
  v40[10] = v24;
  v40[11] = v25;
  v40[12] = v26;
  v40[6] = v20;
  v40[7] = v21;
  v40[8] = v22;
  v40[9] = v23;
  v40[2] = v16;
  v40[3] = v17;
  v40[4] = v18;
  v40[5] = v19;
  v40[0] = v14;
  v40[1] = v15;
  sub_1A411FE24(&v27, &v13, sub_1A411ECD8);
  sub_1A411FE8C(v40, sub_1A411ECD8);
  *a1 = v4;
  *(a1 + 8) = v6;
  v7 = v38;
  *(a1 + 176) = v37;
  *(a1 + 192) = v7;
  *(a1 + 208) = v39;
  v8 = v34;
  *(a1 + 112) = v33;
  *(a1 + 128) = v8;
  v9 = v36;
  *(a1 + 144) = v35;
  *(a1 + 160) = v9;
  v10 = v30;
  *(a1 + 48) = v29;
  *(a1 + 64) = v10;
  v11 = v32;
  *(a1 + 80) = v31;
  *(a1 + 96) = v11;
  result = v28;
  *(a1 + 16) = v27;
  *(a1 + 32) = result;
  return result;
}

void sub_1A411E210(uint64_t *a1@<X8>)
{
  v2 = sub_1A524B544();
  sub_1A3EE213C();
  v4 = (a1 + *(v3 + 36));
  sub_1A3F32A14(0);
  v6 = *(v5 + 28);
  v7 = *MEMORY[0x1E69816E0];
  v8 = sub_1A524B5B4();
  (*(*(v8 - 8) + 104))(v4 + v6, v7, v8);
  *v4 = swift_getKeyPath();
  *a1 = v2;
  v9 = sub_1A524B3C4();
  KeyPath = swift_getKeyPath();
  sub_1A411F874(0, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3D6D248, MEMORY[0x1E697E830]);
  v12 = (a1 + *(v11 + 36));
  *v12 = KeyPath;
  v12[1] = v9;
}

uint64_t sub_1A411E348@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  *a3 = xmmword_1A53160F0;
  v6 = a2[6];
  *(a3 + v6) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v7 = a2[7];
  *(a3 + v7) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  result = swift_allocObject();
  *(result + 16) = v5;
  v9 = a3 + a2[8];
  *v9 = sub_1A411FEF0;
  *(v9 + 1) = result;
  v9[16] = 0;
  return result;
}

uint64_t sub_1A411E414()
{
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);

  return sub_1A5247EB4();
}

void sub_1A411E4B0()
{
  if (!qword_1EB132B38)
  {
    sub_1A4118050(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132B38);
    }
  }
}

unint64_t sub_1A411E518()
{
  result = qword_1EB132B40;
  if (!qword_1EB132B40)
  {
    sub_1A4118B8C(255);
    sub_1A411E5DC(&qword_1EB132B48, sub_1A4118BB4, sub_1A411E64C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B40);
  }

  return result;
}

uint64_t sub_1A411E5DC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A411E64C()
{
  result = qword_1EB132B50;
  if (!qword_1EB132B50)
  {
    sub_1A411F874(255, &qword_1EB132A80, sub_1A4118C50, sub_1A4118CDC, MEMORY[0x1E697F960]);
    sub_1A411E710();
    sub_1A411E7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B50);
  }

  return result;
}

unint64_t sub_1A411E710()
{
  result = qword_1EB132B58;
  if (!qword_1EB132B58)
  {
    sub_1A4118C50(255);
    sub_1A411FDDC(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B58);
  }

  return result;
}

unint64_t sub_1A411E7C0()
{
  result = qword_1EB132B60;
  if (!qword_1EB132B60)
  {
    sub_1A4118CDC(255);
    sub_1A4118E98();
    sub_1A4118FDC();
    sub_1A41190E8();
    sub_1A5249764();
    sub_1A411F620(&qword_1EB132B10, sub_1A41190E8, sub_1A41194A0);
    sub_1A411FDDC(&qword_1EB122360, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A411FDDC(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B60);
  }

  return result;
}

unint64_t sub_1A411E990()
{
  result = qword_1EB132B70;
  if (!qword_1EB132B70)
  {
    sub_1A411F874(255, &qword_1EB132960, sub_1A4117FBC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    sub_1A411FDDC(&qword_1EB132B78, sub_1A4117FBC);
    sub_1A411FDDC(&qword_1EB12F910, sub_1A3FA9268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B70);
  }

  return result;
}

unint64_t sub_1A411EAB4()
{
  result = qword_1EB132B80;
  if (!qword_1EB132B80)
  {
    sub_1A41195C4(255);
    sub_1A411E518();
    sub_1A411F620(&qword_1EB132B68, sub_1A4117F18, sub_1A411E990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B80);
  }

  return result;
}

void sub_1A411EB6C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1A411EB7C()
{
  type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);
  v0 = sub_1A5247EB4();
  sub_1A418CC88();
}

void sub_1A411EC6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A411ED34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A411EE2C(255, &qword_1EB1289E0, sub_1A3FA9580, MEMORY[0x1E69817E8], MEMORY[0x1E697DDA0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A411EDD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A411EE2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A411EE94()
{
  if (!qword_1EB132BA0)
  {
    sub_1A411EF38(255, &qword_1EB132BA8, sub_1A411EF10);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132BA0);
    }
  }
}

void sub_1A411EF38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A411EFB8(uint64_t a1)
{
  result = sub_1A411FDDC(&qword_1EB12C498, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
  *(a1 + 8) = result;
  return result;
}

void sub_1A411F054()
{
  sub_1A41173E0(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A41173E0(319, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A411F160();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A411F160()
{
  if (!qword_1EB124660)
  {
    type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
    sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);
    v0 = sub_1A5247ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124660);
    }
  }
}

unint64_t sub_1A411F224()
{
  result = qword_1EB132BB8;
  if (!qword_1EB132BB8)
  {
    sub_1A411F874(255, &qword_1EB132BC0, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView, sub_1A41195C4, MEMORY[0x1E697F960]);
    sub_1A411FDDC(&qword_1EB12F8D8, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
    sub_1A411EAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132BB8);
  }

  return result;
}

void sub_1A411F318()
{
  if (!qword_1EB132BD0)
  {
    sub_1A411ECD8(255);
    sub_1A411FDDC(&qword_1EB132BD8, sub_1A411ECD8);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132BD0);
    }
  }
}

double sub_1A411F3AC(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1A411F3C4()
{
  if (!qword_1EB132BE8)
  {
    sub_1A4119220(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132BE8);
    }
  }
}

void sub_1A411F42C()
{
  type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel();
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel);
  v0 = sub_1A5247EB4();
  v1 = sub_1A418C934();

  if ((v1 & 1) == 0)
  {
    sub_1A411B63C();
  }
}

uint64_t sub_1A411F518(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A3E75E68(result, a2, a3 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A411F568(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A3E04DF4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1A411F620(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A411F6A0()
{
  result = qword_1EB132BF8;
  if (!qword_1EB132BF8)
  {
    sub_1A411F5B8(255);
    sub_1A3FA9DC0();
    sub_1A411FDDC(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132BF8);
  }

  return result;
}

unint64_t sub_1A411F750()
{
  result = qword_1EB132C00;
  if (!qword_1EB132C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C00);
  }

  return result;
}

uint64_t sub_1A411F7A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A411F80C()
{
  if (!qword_1EB132C08)
  {
    sub_1A41182E0();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132C08);
    }
  }
}

void sub_1A411F874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t objectdestroy_4Tm_1()
{
  v1 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[6];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[7];
  sub_1A3FA5378(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248334();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_1A411EB6C(*(v2 + v1[8]), *(v2 + v1[8] + 8), *(v2 + v1[8] + 16));

  return swift_deallocObject();
}

uint64_t sub_1A411FAE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A411FB44(uint64_t a1, uint64_t a2)
{
  sub_1A411EDD8(0, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A411FBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A411FC3C(uint64_t a1)
{
  sub_1A411EDD8(0, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A411FCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A411FD2C()
{
  result = qword_1EB141760;
  if (!qword_1EB141760)
  {
    sub_1A4118464(255);
    sub_1A411FDDC(&qword_1EB1289A0, sub_1A411848C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141760);
  }

  return result;
}

uint64_t sub_1A411FDDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A411FE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A411FE8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A411FF2C()
{
  sub_1A524EC94();
  v0 = sub_1A524C584();
  MEMORY[0x1A590A010](v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A411FF88()
{
  sub_1A524EC94();
  sub_1A411FF00();
  return sub_1A524ECE4();
}

uint64_t sub_1A411FFF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A4120044(uint64_t a1)
{
  v2 = sub_1A52486A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697E718])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x1E697E6F0])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x1E697E6F8])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x1E697E6E8])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x1E697E708])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x1E697E720])
  {
    return 6;
  }

  if (v7 == *MEMORY[0x1E697E728])
  {
    return 7;
  }

  if (v7 == *MEMORY[0x1E697E6C0])
  {
    return 8;
  }

  if (v7 == *MEMORY[0x1E697E6C8])
  {
    return 9;
  }

  if (v7 == *MEMORY[0x1E697E6D0])
  {
    return 10;
  }

  if (v7 == *MEMORY[0x1E697E6D8])
  {
    return 11;
  }

  if (v7 != *MEMORY[0x1E697E6E0])
  {
    (*(v3 + 8))(v6, v2);
    return 4;
  }

  return 12;
}

uint64_t sub_1A412028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A52486A4();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 - 1) > 0xB)
  {
    v6 = MEMORY[0x1E697E6F8];
  }

  else
  {
    v6 = qword_1E772A218[a1 - 1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_1A412031C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A41203B4, v4, v3);
}

uint64_t sub_1A41203B4()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1A4120BE0();
  *v1 = v0;
  v1[1] = sub_1A3DEB8E8;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A531C268);
}

uint64_t sub_1A41204A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A5240E64();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1A5246F24();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1A52401A4();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  sub_1A524CC54();
  v2[13] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v2[14] = v7;
  v2[15] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A412064C, v7, v6);
}

void sub_1A412064C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  sub_1A523FF44();
  sub_1A5240194();
  (*(v2 + 8))(v1, v3);
  v7 = sub_1A3CB648C();
  (*(v6 + 16))(v4, v7, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A412089C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1A4120A94;
  }

  else
  {
    v5 = sub_1A41209D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A41209D8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  sub_1A523FDD4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A4120A94()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A4120B44(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return sub_1A41204A0(a1, v1);
}

unint64_t sub_1A4120BE0()
{
  result = qword_1EB132C18;
  if (!qword_1EB132C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C18);
  }

  return result;
}

void sub_1A4120C34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4120C88()
{
  if (!qword_1EB132C20)
  {
    sub_1A52401A4();
    sub_1A412147C(&qword_1EB132C28, MEMORY[0x1E695A3A0]);
    v0 = sub_1A5240044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132C20);
    }
  }
}

uint64_t sub_1A4120D1C()
{
  v0 = sub_1A5240334();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  sub_1A4120C88();
  v10 = sub_1A5240BB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_1A523FDB4();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  (*(v1 + 104))(v3, *MEMORY[0x1E695A500], v0);
  return sub_1A523FFE4();
}

uint64_t sub_1A4120F44(uint64_t a1)
{
  v2 = sub_1A4121620();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4120F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A4121034, v7, v6);
}

uint64_t sub_1A4121034()
{
  v0[2] = v0[6];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DED2C4;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A531C3F0);
}

uint64_t sub_1A4121114@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  sub_1A4120C88();
  v12 = sub_1A5240BB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = sub_1A523FDB4();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  result = sub_1A523FFE4();
  *a1 = result;
  return result;
}

uint64_t sub_1A4121348(uint64_t a1)
{
  v2 = sub_1A4120BE0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A4121388()
{
  result = qword_1EB132C30;
  if (!qword_1EB132C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C30);
  }

  return result;
}

unint64_t sub_1A41213E0()
{
  result = qword_1EB132C38;
  if (!qword_1EB132C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C38);
  }

  return result;
}

uint64_t sub_1A412147C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A4121518()
{
  result = qword_1EB132C40;
  if (!qword_1EB132C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C40);
  }

  return result;
}

uint64_t sub_1A4121584(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A41204A0(a1, v1);
}

unint64_t sub_1A4121620()
{
  result = qword_1EB132C48;
  if (!qword_1EB132C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C48);
  }

  return result;
}

unint64_t FetchResultSortOrder.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1A412168C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1A41216A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id sub_1A41218FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXSharedCollectionAddToViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4121930(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696873696C627570;
  }

  else
  {
    v3 = 0x6E69726170657270;
  }

  if (v2)
  {
    v4 = 0xE900000000000067;
  }

  else
  {
    v4 = 0xEA0000000000676ELL;
  }

  if (*a2)
  {
    v5 = 0x696873696C627570;
  }

  else
  {
    v5 = 0x6E69726170657270;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000676ELL;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();
  }

  return v8 & 1;
}

uint64_t sub_1A41219E0()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A4121A6C()
{
  sub_1A524C794();
}

uint64_t sub_1A4121AE4()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A4121B6C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A524E824();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1A4121BCC(uint64_t *a1@<X8>)
{
  v2 = 0x6E69726170657270;
  if (*v1)
  {
    v2 = 0x696873696C627570;
  }

  v3 = 0xE900000000000067;
  if (*v1)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1A4121C14(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_1A5247E04();
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A4126E98(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4126DE0(0);
  v12[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1A4126DAC(0);
  v12[1] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v16 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v15 = sub_1A524B3D4();
  v14 = sub_1A5248874();
  v13 = sub_1A524A064();
  *v5 = sub_1A5249574();
  *(v5 + 1) = 0x4034000000000000;
  v5[16] = 0;
  sub_1A4129BE8();
  sub_1A41220B8(&v5[*(v11 + 44)]);
}

void sub_1A41220B8(uint64_t a1@<X8>)
{
  sub_1A4127004(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31[-v6];
  type metadata accessor for SharedCollectionActionProgressView(0);
  v8 = sub_1A524C634();
  v9 = PXLocalizedSharedCollectionsString(v8);

  v10 = sub_1A524C674();
  v12 = v11;

  v34 = v10;
  v35 = v12;
  sub_1A3D5F9DC();
  v13 = sub_1A524A464();
  v15 = v14;
  v17 = v16;
  sub_1A524A184();
  v18 = sub_1A524A344();
  v20 = v19;
  v32 = v21;
  v23 = v22;
  sub_1A3E04DF4(v13, v15, v17 & 1);

  sub_1A5248074();
  v24 = &v7[*(v3 + 44)];
  sub_1A3E74608(0);
  v26 = *(v25 + 28);
  v27 = *MEMORY[0x1E697DC10];
  v28 = sub_1A5247E14();
  (*(*(v28 - 8) + 104))(v24 + v26, v27, v28);
  *v24 = swift_getKeyPath();
  v29 = v33;
  sub_1A4127D3C(v7, v33, sub_1A4127004);
  *a1 = v18;
  *(a1 + 8) = v20;
  LOBYTE(v24) = v32 & 1;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v23;
  sub_1A4126F9C();
  sub_1A4127D3C(v29, a1 + *(v30 + 48), sub_1A4127004);
  sub_1A3E75E68(v18, v20, v24);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t SharedCollectionAddToView.viewModel.getter()
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t sub_1A41224DC@<X0>(void *a1@<X8>)
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  *a1 = v3;
  return result;
}

uint64_t sub_1A4122574(void **a1)
{
  v1 = *a1;
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v2 = v1;
  return sub_1A524B6B4();
}

uint64_t SharedCollectionAddToView.viewModel.setter()
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void (*SharedCollectionAddToView.viewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + *(type metadata accessor for SharedCollectionAddToView(0) + 24);
  v7 = *v5;
  v6 = *(v5 + 8);
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v4[8] = v8;
  v9 = v7;

  sub_1A524B6A4();
  return sub_1A3D9CCC4;
}

uint64_t SharedCollectionAddToView.$viewModel.getter()
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return v1;
}

uint64_t SharedCollectionAddToView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SharedCollectionAddToView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A41270A0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4127A68(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_1A524BC74();
  v7[1] = v12;
  sub_1A4127CD4();
  sub_1A4122AD0(v1, (v7 + *(v13 + 44)));
  sub_1A4127D3C(v1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedCollectionAddToView);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_1A4127038(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SharedCollectionAddToView);
  sub_1A4129538(&qword_1EB132D58, sub_1A41270A0);
  sub_1A524AA84();

  sub_1A4129A1C(v7, sub_1A41270A0);
  v16 = sub_1A524BC74();
  v18 = v17;
  v19 = &v11[*(v9 + 36)];
  sub_1A4123B80(v1, v19);
  sub_1A4127BC4();
  v21 = (v19 + *(v20 + 36));
  *v21 = v16;
  v21[1] = v18;
  sub_1A4127F24();
  sub_1A524AEF4();
  return sub_1A4129A1C(v11, sub_1A4127A68);
}

uint64_t sub_1A4122AD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v88 = a2;
  sub_1A41278A0();
  v87 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v85 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedCollectionAddToView(0);
  v79 = *(v5 - 8);
  v90 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF58();
  v84 = v9;
  v86 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5249284();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41275F4(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4127554();
  v74 = v19;
  v75 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A412741C();
  v78 = v21;
  v80 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4127204(0);
  v82 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23 - 8);
  v83 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v71 = &v65 - v26;
  v81 = sub_1A524B354();
  v77 = sub_1A5248874();
  v76 = sub_1A524A064();
  v91 = a1;
  sub_1A524A044();
  sub_1A41276C4(0);
  sub_1A4129538(&qword_1EB132D20, sub_1A41276C4);
  sub_1A5247D14();
  v27 = sub_1A524A054();
  sub_1A5247BC4();
  v28 = &v18[*(v16 + 36)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v92 = sub_1A3C38BD4();
  v93 = v33;
  (*(v12 + 104))(v14, *MEMORY[0x1E697C438], v11);
  v34 = sub_1A41277F0();
  v35 = sub_1A3D5F9DC();
  sub_1A524ACF4();
  (*(v12 + 8))(v14, v11);

  sub_1A4129CA0(v18, sub_1A41275F4);
  v36 = v72;
  sub_1A5247B34();
  v69 = type metadata accessor for SharedCollectionAddToView;
  v65 = a1;
  v37 = v89;
  sub_1A4127D3C(a1, v89, type metadata accessor for SharedCollectionAddToView);
  v79 = *(v79 + 80);
  v38 = (v79 + 16) & ~v79;
  v67 = v38;
  v39 = swift_allocObject();
  v68 = type metadata accessor for SharedCollectionAddToView;
  sub_1A4127038(v37, v39 + v38, type metadata accessor for SharedCollectionAddToView);
  v40 = v73;
  MEMORY[0x1A5906A80](v36, sub_1A4129810, v39);
  v41 = v85;
  sub_1A41237E4(v85);
  v92 = v16;
  v93 = MEMORY[0x1E69E6158];
  v94 = v34;
  v95 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_1A4129538(&qword_1EB121B60, sub_1A3D6DF58);
  v44 = sub_1A4127958();
  v45 = v70;
  v46 = v40;
  v47 = v41;
  v48 = v74;
  v49 = v84;
  v50 = v87;
  v51 = v66;
  sub_1A524ACC4();
  sub_1A4129CA0(v47, sub_1A41278A0);
  (*(v86 + 8))(v46, v49);
  (*(v75 + 8))(v51, v48);
  v92 = v48;
  v93 = v49;
  v94 = v50;
  v95 = OpaqueTypeConformance2;
  v96 = v43;
  v97 = v44;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v71;
  v54 = v78;
  sub_1A425D400(0, v78, v52);
  (*(v80 + 8))(v45, v54);
  v55 = v89;
  sub_1A4127D3C(v65, v89, v69);
  v56 = v67;
  v57 = swift_allocObject();
  sub_1A4127038(v55, v57 + v56, v68);
  v58 = v83;
  v59 = (v53 + *(v82 + 44));
  *v59 = sub_1A4129918;
  v59[1] = v57;
  v59[2] = 0;
  v59[3] = 0;
  sub_1A3CDD988(v53, v58);
  v60 = v88;
  v61 = v77;
  *v88 = v81;
  v60[1] = v61;
  *(v60 + 16) = v76;
  v62 = v60;
  sub_1A4127168();
  sub_1A3CDD988(v58, v62 + *(v63 + 48));

  sub_1A4129A1C(v53, sub_1A4127204);
  sub_1A4129A1C(v58, sub_1A4127204);
}

uint64_t sub_1A41233E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A412777C(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v46 - v9);
  v11 = type metadata accessor for SharedCollectionPreviewsSection();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v46 - v15);
  v17 = (a1 + *(type metadata accessor for SharedCollectionAddToView(0) + 24));
  v19 = v17[1];
  v48 = *v17;
  v18 = v48;
  v49 = v19;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A43270C0(v16);
  v48 = v18;
  v49 = v19;
  sub_1A524B6A4();
  v20 = v47;
  *v10 = swift_getKeyPath();
  sub_1A41294D4(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for CommentSection(0);
  v22 = (v10 + v21[5]);
  v47 = v20;
  type metadata accessor for SharedCollectionActionViewModel();
  sub_1A524B694();
  v23 = v49;
  *v22 = v48;
  v22[1] = v23;
  v24 = v10 + v21[6];
  *v24 = sub_1A5247C34() & 1;
  *(v24 + 1) = v25;
  v24[16] = v26 & 1;
  v27 = v21[7];
  *(v10 + v27) = [objc_opt_self() maxCharactersPerComment];
  v28 = sub_1A524B2E4();
  LOBYTE(v24) = sub_1A524A064();
  sub_1A41277B0(0);
  v30 = v10 + *(v29 + 36);
  *v30 = v28;
  v30[8] = v24;
  v31 = v10 + *(v5 + 44);
  v32 = *(sub_1A5248A14() + 20);
  v33 = *MEMORY[0x1E697F468];
  v34 = sub_1A52494A4();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  __asm { FMOV            V0.2D, #10.0 }

  *v31 = _Q0;
  sub_1A3E42C88();
  *&v31[*(v40 + 36)] = 256;
  sub_1A4127D3C(v16, v13, type metadata accessor for SharedCollectionPreviewsSection);
  sub_1A4127D3C(v10, v7, sub_1A412777C);
  sub_1A4127D3C(v13, a2, type metadata accessor for SharedCollectionPreviewsSection);
  sub_1A41276F8();
  v42 = v41;
  v43 = a2 + *(v41 + 48);
  *v43 = 0x4034000000000000;
  *(v43 + 8) = 0;
  sub_1A4127D3C(v7, a2 + *(v41 + 64), sub_1A412777C);
  v44 = a2 + *(v42 + 80);
  *v44 = 0x4034000000000000;
  *(v44 + 8) = 0;
  sub_1A4129CA0(v10, sub_1A412777C);
  sub_1A4129CA0(v16, type metadata accessor for SharedCollectionPreviewsSection);
  sub_1A4129CA0(v7, sub_1A412777C);
  return sub_1A4129CA0(v13, type metadata accessor for SharedCollectionPreviewsSection);
}

void sub_1A41237E4(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for SharedCollectionAddToView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A4128CC4(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  sub_1A4127D3C(v1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedCollectionAddToView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1A4127038(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SharedCollectionAddToView);
  sub_1A524B704();
  v13 = (v1 + *(v3 + 32));
  v14 = *v13;
  v15 = v13[1];
  v30 = *v13;
  v31 = v15;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v16 = sub_1A524B6A4();
  v17 = v29;
  v18 = MEMORY[0x1E69E7D40];
  v19 = (*((*MEMORY[0x1E69E7D40] & *v29) + 0x4C0))(v16);

  if (v19 < 1)
  {
    v22 = 1;
  }

  else
  {
    v30 = v14;
    v31 = v15;
    v20 = sub_1A524B6A4();
    v21 = v29;
    v22 = (*((*v18 & *v29) + 0x458))(v20);
  }

  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22 & 1;
  v25 = v28;
  (*(v8 + 32))(v28, v10, v7);
  sub_1A41278A0();
  v27 = (v25 + *(v26 + 36));
  *v27 = KeyPath;
  v27[1] = sub_1A3E07024;
  v27[2] = v24;
}

uint64_t sub_1A4123B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SharedCollectionActionProgressView(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (a1 + *(type metadata accessor for SharedCollectionAddToView(0) + 24));
  v10 = *v8;
  v9 = v8[1];
  v18 = v10;
  v19 = v9;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v11 = sub_1A524B6A4();
  v12 = v17;
  v13 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x428))(v11);

  if (v13)
  {
    *v7 = swift_getKeyPath();
    sub_1A41294D4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(v4 + 20)) = 0;
    sub_1A4127038(v7, a2, type metadata accessor for SharedCollectionActionProgressView);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return (*(v5 + 56))(a2, v14, 1, v4);
}

uint64_t sub_1A4123D90()
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4124350(&qword_1EB128A80, sub_1A3D63A58, sub_1A3D63A58, v3);
  sub_1A3D63A8C(0);
  v5 = v4;
  v6 = *(*(v4 - 8) + 48);
  if (v6(v3, 1, v4) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A4129CA0(v3, sub_1A3D63A58);
  v7 = *(v0 + *(type metadata accessor for SharedCollectionAddToView(0) + 20));
  if (v7)
  {
    v8 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
    swift_beginAccess();
    if (v6((v7 + v8), 1, v5))
    {
      swift_endAccess();
      PXPresentationEnvironmentForSender();
    }

    sub_1A5245C94();
  }

  type metadata accessor for HostingViewControllerProvider();
  sub_1A4129538(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider);
  result = sub_1A5248BA4();
  __break(1u);
  return result;
}

uint64_t sub_1A4124050(uint64_t a1)
{
  v2 = type metadata accessor for SharedCollectionAddToView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = sub_1A4123D90();
  v7 = (a1 + *(v3 + 32));
  v9 = *v7;
  v8 = v7[1];
  v16[2] = v9;
  v16[3] = v8;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if (v6)
  {
    v11 = v16[1];
    sub_1A4127D3C(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedCollectionAddToView);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    sub_1A4127038(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SharedCollectionAddToView);
    v14 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x4D8);
    v15 = swift_unknownObjectRetain();
    v14(v15, sub_1A4129ADC, v13);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4124254@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXLemonadeLocalizedString(v2);

  sub_1A524C674();
  sub_1A3D5F9DC();
  v4 = sub_1A524A464();
  v6 = v5;
  v8 = v7;
  v9 = sub_1A524A3A4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1A3E04DF4(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_1A4124350@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41294D4(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_1A4129580(v8, &v19 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A4127038(v16, a4, a3);
  }

  sub_1A524D254();
  v18 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A412453C@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = sub_1A5249A94();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DD0DCC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62[-v9];
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v62[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v62[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v62[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62[-v23];
  v73 = v1;
  sub_1A4124350(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, &v62[-v23]);
  v25 = v3[13];
  v68 = *MEMORY[0x1E697FF38];
  v67 = v25;
  v25(v21);
  v66 = v3[7];
  v66(v21, 0, 1, v2);
  v69 = v6;
  v26 = *(v6 + 48);
  sub_1A3F188F8(v24, v10);
  sub_1A3F188F8(v21, &v10[v26]);
  v77 = v3;
  v27 = v3[6];
  if (v27(v10, 1, v2) == 1)
  {
    sub_1A4129CA0(v21, sub_1A3DC7D88);
    sub_1A4129CA0(v24, sub_1A3DC7D88);
    if (v27(&v10[v26], 1, v2) == 1)
    {
      sub_1A4129CA0(v10, sub_1A3DC7D88);
      v28 = 2;
LABEL_7:
      v75 = v28;
      v29 = v73;
      v30 = v76;
      goto LABEL_11;
    }

LABEL_6:
    sub_1A4129CA0(v10, sub_1A3DD0DCC);
    v28 = 5;
    goto LABEL_7;
  }

  sub_1A3F188F8(v10, v75);
  v64 = v27;
  if (v27(&v10[v26], 1, v2) == 1)
  {
    sub_1A4129CA0(v21, sub_1A3DC7D88);
    sub_1A4129CA0(v24, sub_1A3DC7D88);
    (v77[1])(v75, v2);
    v27 = v64;
    goto LABEL_6;
  }

  v31 = v65;
  (v77[4])(v65, &v10[v26], v2);
  sub_1A4129538(&qword_1EB127B70, MEMORY[0x1E697FF50]);
  v63 = sub_1A524C594();
  v32 = v77[1];
  v32(v31, v2);
  sub_1A4129CA0(v21, sub_1A3DC7D88);
  sub_1A4129CA0(v24, sub_1A3DC7D88);
  v32(v75, v2);
  sub_1A4129CA0(v10, sub_1A3DC7D88);
  v33 = 5;
  if (v63)
  {
    v33 = 2;
  }

  v75 = v33;
  v29 = v73;
  v30 = v76;
  v27 = v64;
LABEL_11:
  sub_1A4124350(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, v30);
  v34 = v70;
  v67(v70, v68, v2);
  v66(v34, 0, 1, v2);
  v35 = *(v69 + 48);
  v36 = v72;
  sub_1A3F188F8(v30, v72);
  sub_1A3F188F8(v34, &v36[v35]);
  if (v27(v36, 1, v2) != 1)
  {
    sub_1A3F188F8(v36, v71);
    if (v27(&v36[v35], 1, v2) != 1)
    {
      v38 = v71;
      v39 = v77;
      v40 = v65;
      (v77[4])(v65, &v36[v35], v2);
      sub_1A4129538(&qword_1EB127B70, MEMORY[0x1E697FF50]);
      sub_1A524C594();
      v41 = v39[1];
      v41(v40, v2);
      sub_1A4129CA0(v34, sub_1A3DC7D88);
      sub_1A4129CA0(v76, sub_1A3DC7D88);
      v41(v38, v2);
      v37 = sub_1A4129CA0(v36, sub_1A3DC7D88);
      goto LABEL_18;
    }

    sub_1A4129CA0(v34, sub_1A3DC7D88);
    sub_1A4129CA0(v30, sub_1A3DC7D88);
    (v77[1])(v71, v2);
    goto LABEL_16;
  }

  sub_1A4129CA0(v34, sub_1A3DC7D88);
  sub_1A4129CA0(v30, sub_1A3DC7D88);
  if (v27(&v36[v35], 1, v2) != 1)
  {
LABEL_16:
    v37 = sub_1A4129CA0(v36, sub_1A3DD0DCC);
    goto LABEL_18;
  }

  v37 = sub_1A4129CA0(v36, sub_1A3DC7D88);
LABEL_18:
  MEMORY[0x1EEE9AC00](v37);
  v42 = v75;
  *&v62[-32] = v29;
  *&v62[-24] = v42;
  *&v62[-16] = v43;
  sub_1A4128724();
  sub_1A4128898();
  v45 = v44;
  sub_1A41289E4();
  v47 = v46;
  sub_1A4128AE4();
  v49 = v48;
  sub_1A4128BB4();
  v51 = v50;
  sub_1A4128C38();
  v53 = v52;
  v54 = sub_1A4128D18();
  v78 = v53;
  v79 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = v51;
  v79 = MEMORY[0x1E69E6158];
  v80 = OpaqueTypeConformance2;
  v81 = MEMORY[0x1E69E6180];
  v56 = swift_getOpaqueTypeConformance2();
  v78 = v49;
  v79 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = MEMORY[0x1E69E6370];
  v78 = v47;
  v79 = MEMORY[0x1E69E6370];
  v59 = MEMORY[0x1E69E6388];
  v80 = v57;
  v81 = MEMORY[0x1E69E6388];
  v60 = swift_getOpaqueTypeConformance2();
  v78 = v45;
  v79 = v58;
  v80 = v60;
  v81 = v59;
  swift_getOpaqueTypeConformance2();
  return sub_1A524BA54();
}

uint64_t sub_1A4124E9C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a2;
  v83 = a3;
  v80 = a4;
  v5 = type metadata accessor for CommentSection(0);
  v81 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v88 = v6;
  v86 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128C38();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128BB4();
  v70 = v11;
  v68 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v67 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128AE4();
  v74 = v13;
  v72 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v69 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41289E4();
  v76 = v15;
  v75 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v73 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128898();
  v78 = *(v17 - 8);
  v79 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v77 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1A3C38BD4();
  v97 = v19;
  v71 = v5;
  v20 = *(v5 + 20);
  v87 = a1;
  v21 = (a1 + v20);
  v23 = *v21;
  v22 = v21[1];
  v84 = v23;
  v85 = v22;
  v93 = v23;
  v94 = v22;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v25 = v24;
  sub_1A524B6C4();
  v26 = v89;
  v27 = v90;
  v28 = v91;
  swift_getKeyPath();
  v93 = v26;
  v94 = v27;
  v95 = v28;
  sub_1A41294D4(0, &qword_1EB132E08, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  sub_1A3D5F9DC();
  v29 = v82;
  sub_1A524BE04();
  result = sub_1A524A064();
  v31 = &v10[*(v8 + 36)];
  *v31 = result;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  if (v83 < v29)
  {
    __break(1u);
  }

  else
  {
    v32 = sub_1A4128D18();
    v33 = v67;
    sub_1A524B1D4();
    sub_1A4129CA0(v10, sub_1A4128C38);
    v89 = v84;
    v90 = v85;
    v66[1] = v25;
    v34 = sub_1A524B6A4();
    v35 = v93;
    v36 = (*((*MEMORY[0x1E69E7D40] & *v93) + 0x2A8))(v34);
    v38 = v37;

    v89 = v36;
    v90 = v38;
    v66[0] = type metadata accessor for CommentSection;
    v39 = v86;
    v40 = v87;
    sub_1A4127D3C(v87, v86, type metadata accessor for CommentSection);
    v83 = *(v81 + 80);
    v41 = (v83 + 16) & ~v83;
    v81 = v41;
    v42 = swift_allocObject();
    v82 = type metadata accessor for CommentSection;
    sub_1A4127038(v39, v42 + v41, type metadata accessor for CommentSection);
    v93 = v8;
    v94 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v69;
    v45 = v70;
    sub_1A524B144();

    (*(v68 + 8))(v33, v45);
    v46 = (v40 + *(v71 + 24));
    LODWORD(v71) = *v46;
    v47 = *(v46 + 1);
    LOBYTE(v32) = v46[16];
    LOBYTE(v89) = v71;
    v90 = v47;
    LOBYTE(v91) = v32;
    sub_1A4128CC4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
    sub_1A5247C24();
    v89 = v45;
    v90 = MEMORY[0x1E69E6158];
    v91 = OpaqueTypeConformance2;
    v92 = MEMORY[0x1E69E6180];
    v48 = swift_getOpaqueTypeConformance2();
    v49 = v73;
    v50 = v74;
    sub_1A524B074();

    (*(v72 + 8))(v44, v50);
    LOBYTE(v89) = v71;
    v90 = v47;
    LOBYTE(v91) = v32;
    sub_1A5247C04();
    v51 = v86;
    v52 = v66[0];
    sub_1A4127D3C(v87, v86, v66[0]);
    v53 = v81;
    v54 = swift_allocObject();
    sub_1A4127038(v51, v54 + v53, v82);
    v89 = v50;
    v90 = v48;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = MEMORY[0x1E69E6388];
    v57 = v77;
    v58 = v76;
    v59 = MEMORY[0x1E69E6370];
    sub_1A524B154();

    (*(v75 + 8))(v49, v58);
    v89 = v84;
    v90 = v85;
    v60 = sub_1A524B6A4();
    v61 = v93;
    v62 = (*((*MEMORY[0x1E69E7D40] & *v93) + 0x2D8))(v60);

    LOBYTE(v93) = v62 & 1;
    sub_1A4127D3C(v87, v51, v52);
    v63 = v81;
    v64 = swift_allocObject();
    sub_1A4127038(v51, v64 + v63, v82);
    v89 = v58;
    v90 = v59;
    v91 = v55;
    v92 = v56;
    swift_getOpaqueTypeConformance2();
    v65 = v79;
    sub_1A524B154();

    return (*(v78 + 8))(v57, v65);
  }

  return result;
}

uint64_t sub_1A41258B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A524BEE4();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A524BF64();
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CommentSection(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  result = sub_1A524C7A4();
  if (*(a2 + *(v10 + 36)) < result)
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v14 = sub_1A524D474();
    sub_1A4127D3C(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommentSection);
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    sub_1A4127038(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for CommentSection);
    aBlock[4] = sub_1A41292F0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_104;
    v17 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A4129538(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C38394();
    sub_1A4129538(&qword_1EB12B1B0, sub_1A3C38394);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v8, v5, v17);
    _Block_release(v17);

    (*(v19 + 8))(v5, v3);
    return (*(v6 + 8))(v8, v18);
  }

  return result;
}

void sub_1A4125C7C()
{
  sub_1A41294D4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v11 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v12 = sub_1A5240D44();
  v13 = [v11 initWithPhotoLibraryURL_];

  (*(v7 + 8))(v9, v6);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  type metadata accessor for LemonadePhotoLibraryContext();
  v15 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v13, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v18);
  sub_1A3C799F0(v5, 0, 0, 0, v2, &v18, v15, 2);
  type metadata accessor for SharedCollectionActionViewModel();

  SharedCollectionActionViewModel.__allocating_init(navigationContext:extensionContext:sharedCollection:sharedCollections:assets:mediaSources:albumName:batchComment:perAssetCreationOptions:updateCallback:doneCallback:)(v16, 0, 0, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_1A4126078(uint64_t a1)
{
  v2 = sub_1A4129600();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A41260C4(uint64_t a1)
{
  v2 = sub_1A4129600();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A4126110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v26 = a2;
  v27 = type metadata accessor for SharedCollectionAddToView(0);
  MEMORY[0x1EEE9AC00](v27);
  sub_1A41294D4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v16 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v17 = sub_1A5240D44();
  v18 = [v16 initWithPhotoLibraryURL_];

  (*(v12 + 8))(v14, v11);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  type metadata accessor for LemonadePhotoLibraryContext();
  v20 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v18, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v28);
  sub_1A3C799F0(v10, 0, 0, 0, v7, &v28, v20, 2);
  type metadata accessor for SharedCollectionActionViewModel();
  sub_1A4129C50(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A52F9790;
  *(v21 + 32) = a1;
  v22 = a1;

  sub_1A3C66EE8(v24);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4126630(uint64_t a1, uint64_t a2)
{
  sub_1A41294D4(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A41266E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v26 = a2;
  v27 = type metadata accessor for SharedCollectionAddToView(0);
  MEMORY[0x1EEE9AC00](v27);
  sub_1A41294D4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v16 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v17 = sub_1A5240D44();
  v18 = [v16 initWithPhotoLibraryURL_];

  (*(v12 + 8))(v14, v11);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  type metadata accessor for LemonadePhotoLibraryContext();
  v20 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v18, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v28);
  sub_1A3C799F0(v10, 0, 0, 0, v7, &v28, v20, 2);
  type metadata accessor for SharedCollectionActionViewModel();
  sub_1A4129C50(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A52F9790;
  *(v21 + 32) = a1;
  v22 = a1;

  sub_1A3C66EE8(v24);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4126CB0()
{
  if (!qword_1EB132C68)
  {
    sub_1A4126D20();
    sub_1A4126DAC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB132C68);
    }
  }
}

void sub_1A4126D20()
{
  if (!qword_1EB132C70)
  {
    sub_1A4128CC4(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132C70);
    }
  }
}

void sub_1A4126E00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4128CC4(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4126ED4()
{
  if (!qword_1EB132C90)
  {
    sub_1A4126F68(255);
    sub_1A4129538(&qword_1EB132CB0, sub_1A4126F68);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132C90);
    }
  }
}

void sub_1A4126F9C()
{
  if (!qword_1EB132CA0)
  {
    sub_1A4127004(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB132CA0);
    }
  }
}

uint64_t sub_1A4127038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A41270A0()
{
  if (!qword_1EB132CB8)
  {
    sub_1A4127134(255);
    sub_1A4129538(&qword_1EB132D40, sub_1A4127134);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132CB8);
    }
  }
}

void sub_1A4127168()
{
  if (!qword_1EB132CC8)
  {
    sub_1A4128CC4(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A4127204(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB132CC8);
    }
  }
}

void sub_1A4127240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A41272AC()
{
  if (!qword_1EB132CD8)
  {
    sub_1A412741C();
    sub_1A4127554();
    sub_1A3D6DF58();
    sub_1A41278A0();
    sub_1A41275F4(255);
    sub_1A41277F0();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A4129538(&qword_1EB121B60, sub_1A3D6DF58);
    sub_1A4127958();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132CD8);
    }
  }
}

void sub_1A412741C()
{
  if (!qword_1EB132CE0)
  {
    sub_1A4127554();
    sub_1A3D6DF58();
    sub_1A41278A0();
    sub_1A41275F4(255);
    sub_1A41277F0();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A4129538(&qword_1EB121B60, sub_1A3D6DF58);
    sub_1A4127958();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132CE0);
    }
  }
}

void sub_1A4127554()
{
  if (!qword_1EB132CE8)
  {
    sub_1A41275F4(255);
    sub_1A41277F0();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132CE8);
    }
  }
}

void sub_1A4127630()
{
  if (!qword_1EB132CF8)
  {
    sub_1A41276C4(255);
    sub_1A4129538(&qword_1EB132D20, sub_1A41276C4);
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132CF8);
    }
  }
}

void sub_1A41276F8()
{
  if (!qword_1EB132D08)
  {
    type metadata accessor for SharedCollectionPreviewsSection();
    sub_1A412777C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB132D08);
    }
  }
}

unint64_t sub_1A41277F0()
{
  result = qword_1EB132D28;
  if (!qword_1EB132D28)
  {
    sub_1A41275F4(255);
    sub_1A4129538(&qword_1EB132D30, sub_1A4127630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132D28);
  }

  return result;
}

void sub_1A41278A0()
{
  if (!qword_1EB132D38)
  {
    sub_1A4128CC4(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A4129C50(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132D38);
    }
  }
}

unint64_t sub_1A4127958()
{
  result = qword_1EB141EE0;
  if (!qword_1EB141EE0)
  {
    sub_1A41278A0();
    sub_1A4127A10(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E697D670]);
    sub_1A3E72758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141EE0);
  }

  return result;
}

uint64_t sub_1A4127A10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4128CC4(255, a2, MEMORY[0x1E6981148], MEMORY[0x1E6981138], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4127A9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A4127B10()
{
  if (!qword_1EB132D50)
  {
    sub_1A41270A0();
    sub_1A4129538(&qword_1EB132D58, sub_1A41270A0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132D50);
    }
  }
}

void sub_1A4127BC4()
{
  if (!qword_1EB132D60)
  {
    sub_1A4127C6C(255);
    sub_1A4128500(&qword_1EB132D70, sub_1A4127C6C, sub_1A4127CA0);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132D60);
    }
  }
}

void sub_1A4127CD4()
{
  if (!qword_1EB132D80)
  {
    sub_1A4127134(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132D80);
    }
  }
}

uint64_t sub_1A4127D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4127DA4()
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2D8))(v0);

  if (v2)
  {
    sub_1A524B6A4();
    (*((*v1 & *v3) + 0x2E0))(0);
  }
}

unint64_t sub_1A4127F24()
{
  result = qword_1EB132D88;
  if (!qword_1EB132D88)
  {
    sub_1A4127A68(255);
    sub_1A41270A0();
    sub_1A4129538(&qword_1EB132D58, sub_1A41270A0);
    swift_getOpaqueTypeConformance2();
    sub_1A4129538(&qword_1EB132D90, sub_1A4127BC4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132D88);
  }

  return result;
}

unint64_t sub_1A4128038()
{
  result = qword_1EB132D98;
  if (!qword_1EB132D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132D98);
  }

  return result;
}

unint64_t sub_1A41280C8()
{
  result = qword_1EB132DA0;
  if (!qword_1EB132DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132DA0);
  }

  return result;
}

void sub_1A4128170()
{
  sub_1A41294D4(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A412823C()
{
  sub_1A41294D4(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A4128338();
    if (v1 <= 0x3F)
    {
      sub_1A41294D4(319, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4128338()
{
  if (!qword_1EB132DA8)
  {
    type metadata accessor for HostingViewControllerProvider();
    sub_1A4129538(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider);
    v0 = sub_1A5248BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132DA8);
    }
  }
}

unint64_t sub_1A41283DC()
{
  result = qword_1EB132DB0;
  if (!qword_1EB132DB0)
  {
    sub_1A4127A9C(255, &qword_1EB132C50, sub_1A4126C48, sub_1A400F5B4);
    sub_1A4128500(&qword_1EB132DB8, sub_1A4126C48, sub_1A4128570);
    sub_1A4129538(&qword_1EB127C68, sub_1A400F5B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132DB0);
  }

  return result;
}

uint64_t sub_1A4128500(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A41285CC()
{
  sub_1A41294D4(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A41294D4(319, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A4128CC4(319, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4128724()
{
  if (!qword_1EB132DD0)
  {
    sub_1A4128898();
    sub_1A41289E4();
    sub_1A4128AE4();
    sub_1A4128BB4();
    sub_1A4128C38();
    sub_1A4128D18();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132DD0);
    }
  }
}

void sub_1A4128898()
{
  if (!qword_1EB132DD8)
  {
    sub_1A41289E4();
    sub_1A4128AE4();
    sub_1A4128BB4();
    sub_1A4128C38();
    sub_1A4128D18();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132DD8);
    }
  }
}

void sub_1A41289E4()
{
  if (!qword_1EB132DE0)
  {
    sub_1A4128AE4();
    sub_1A4128BB4();
    sub_1A4128C38();
    sub_1A4128D18();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132DE0);
    }
  }
}

void sub_1A4128AE4()
{
  if (!qword_1EB132DE8)
  {
    sub_1A4128BB4();
    sub_1A4128C38();
    sub_1A4128D18();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132DE8);
    }
  }
}

void sub_1A4128BB4()
{
  if (!qword_1EB132DF0)
  {
    sub_1A4128C38();
    sub_1A4128D18();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132DF0);
    }
  }
}

void sub_1A4128C38()
{
  if (!qword_1EB132DF8)
  {
    sub_1A4128CC4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132DF8);
    }
  }
}

void sub_1A4128CC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A4128D18()
{
  result = qword_1EB132E00;
  if (!qword_1EB132E00)
  {
    sub_1A4128C38();
    sub_1A4127A10(&qword_1EB141610, &unk_1EB143960, MEMORY[0x1E697D7D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E00);
  }

  return result;
}

uint64_t sub_1A4128DD0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CommentSection(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1A41258B8(a2, v5);
}

void sub_1A4128E40()
{
  type metadata accessor for CommentSection(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A4128CC4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  sub_1A5247C04();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2E0))(v0);
}

uint64_t sub_1A4128FB8()
{
  type metadata accessor for CommentSection(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2D8))(v0);

  sub_1A4128CC4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  return sub_1A5247C14();
}

uint64_t objectdestroy_42Tm_0()
{
  v1 = type metadata accessor for CommentSection(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A41294D4(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5249A94();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v0 + v2, 1, v3))
    {
      (*(v4 + 8))(v0 + v2, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A41292F0()
{
  v1 = (type metadata accessor for CommentSection(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v3 = sub_1A524B6A4();
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x2A8))(v3);

  v5 = sub_1A3DD1E84(*(v2 + v1[9]));
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x1A5907AC0](v5, v7, v9, v11);
  v14 = v13;

  (*((*v4 & *v15) + 0x2B0))(v12, v14);
}

void sub_1A41294D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4129538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4129580(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A41294D4(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A4129600()
{
  result = qword_1EB132E10;
  if (!qword_1EB132E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E10);
  }

  return result;
}

uint64_t objectdestroyTm_28()
{
  v1 = type metadata accessor for SharedCollectionAddToView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A41294D4(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
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

  return swift_deallocObject();
}

void sub_1A4129810()
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x550))(0);
}

void sub_1A4129918()
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x4C8))(v0);
}

uint64_t sub_1A4129A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4129A7C()
{
  v1 = *(type metadata accessor for SharedCollectionAddToView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4124050(v2);
}

void sub_1A4129ADC(uint64_t a1)
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x550))(a1);
}

void sub_1A4129BE8()
{
  if (!qword_1EB132E18)
  {
    sub_1A4126F68(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132E18);
    }
  }
}

void sub_1A4129C50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4129CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A4129D00()
{
  result = qword_1EB132E20;
  if (!qword_1EB132E20)
  {
    sub_1A4129EA4();
    sub_1A4128898();
    sub_1A41289E4();
    sub_1A4128AE4();
    sub_1A4128BB4();
    sub_1A4128C38();
    sub_1A4128D18();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E20);
  }

  return result;
}

void sub_1A4129EA4()
{
  if (!qword_1EB132E28)
  {
    sub_1A4128724();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132E28);
    }
  }
}

id sub_1A4129F64()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_2();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A4129FCC()
{
  result = qword_1EB126A30;
  if (!qword_1EB126A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126A30);
  }

  return result;
}

uint64_t sub_1A412A018()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1EBB90);
  __swift_project_value_buffer(v6, qword_1EB1EBB90);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A412A204()
{
  result = qword_1EB132E48;
  if (!qword_1EB132E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E48);
  }

  return result;
}

void sub_1A412A258()
{
  if (!qword_1EB132E58)
  {
    sub_1A412B768(255, &qword_1EB132E60, sub_1A4104288, &type metadata for MemoryEntity, MEMORY[0x1E695A1A0]);
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132E58);
    }
  }
}

uint64_t sub_1A412A2F0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A412A388, v4, v3);
}

uint64_t sub_1A412A388()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1A412A204();
  *v1 = v0;
  v1[1] = sub_1A3DEB8E8;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A531C9A0);
}

uint64_t sub_1A412A474(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1A5240E64();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1A524CC54();
  v2[9] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A412A568, v5, v4);
}

uint64_t sub_1A412A568()
{
  v1 = v0[8];
  sub_1A523FF44();
  v2 = v0[2];

  sub_1A412A92C(v2, v1);

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1A412A628;
  v4 = v0[8];

  return sub_1A489B910(v4);
}

uint64_t sub_1A412A628()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A412A800;
  }

  else
  {
    v5 = sub_1A412A764;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A412A764()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  sub_1A523FDD4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A412A800()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A412A890(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return sub_1A412A474(a1, v1);
}

uint64_t sub_1A412A92C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3DB7B48(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1A524E404();

  v7 = [a1 localIdentifier];
  v8 = sub_1A524C674();
  v10 = v9;

  MEMORY[0x1A5907B60](v8, v10);

  sub_1A5240E34();

  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v6, 1, v11);
  if (result != 1)
  {
    return (*(v12 + 32))(a2, v6, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A412AAD4()
{
  v0 = sub_1A5240334();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB7B48(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v22 - v5;
  sub_1A3DB7B48(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = &v22 - v7;
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v23 = sub_1A5240BB4();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  sub_1A412B768(0, &qword_1EB132E60, sub_1A4104288, &type metadata for MemoryEntity, MEMORY[0x1E695A1A0]);
  v24 = v15;
  sub_1A524C5B4();
  sub_1A5241244();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v9 + 104);
  v17(v11, v16, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v17(v11, v16, v8);
  v18 = v25;
  sub_1A5240BC4();
  (*(v14 + 56))(v18, 0, 1, v23);
  v19 = sub_1A523FDB4();
  v31 = 0;
  v32 = 0;
  v20 = *(*(v19 - 8) + 56);
  v20(v26, 1, 1, v19);
  v20(v27, 1, 1, v19);
  (*(v29 + 104))(v28, *MEMORY[0x1E695A500], v30);
  sub_1A4105350();
  return sub_1A523FFB4();
}

void (*sub_1A412B048(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A412B0BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1A9F90 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1EBB90);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A412B17C()
{
  sub_1A412B768(0, &qword_1EB132E40, sub_1A412A204, &type metadata for OpenMemoryIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A412B768(0, &qword_1EB132E50, sub_1A412A204, &type metadata for OpenMemoryIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A412A258();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A412B364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A412B404, v7, v6);
}

uint64_t sub_1A412B404()
{
  v0[2] = v0[6];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DED2C4;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A531CB48);
}

uint64_t sub_1A412B4E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A412AAD4();
  *a1 = result;
  return result;
}

uint64_t sub_1A412B50C(uint64_t a1)
{
  v2 = sub_1A412A204();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A412B54C()
{
  result = qword_1EB132E68;
  if (!qword_1EB132E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E68);
  }

  return result;
}

unint64_t sub_1A412B5A4()
{
  result = qword_1EB132E70;
  if (!qword_1EB132E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E70);
  }

  return result;
}

unint64_t sub_1A412B600()
{
  result = qword_1EB132E78;
  if (!qword_1EB132E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E78);
  }

  return result;
}

unint64_t sub_1A412B658()
{
  result = qword_1EB132E80;
  if (!qword_1EB132E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E80);
  }

  return result;
}

unint64_t sub_1A412B6D8()
{
  result = qword_1EB132E88;
  if (!qword_1EB132E88)
  {
    sub_1A412B768(255, &qword_1EB132E90, sub_1A412A204, &type metadata for OpenMemoryIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E88);
  }

  return result;
}

void sub_1A412B768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A412B7D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A412A474(a1, v1);
}

id DataSectionItemListManager.observable.getter()
{
  v0 = sub_1A3F636E4();

  return v0;
}

uint64_t DataSectionItemListManager.itemList.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A412B9E4();

  v3 = *(*v1 + 104);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t DataSectionItemListManager.changeDetailsRepository.getter()
{
  sub_1A412C6F0();
}

uint64_t sub_1A412BBE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v11 - v8;
  v11[1] = *(a1 + *(v2 + 112));
  (*(v3 + 32))(v4, v3, v7);
  sub_1A412C648();
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_1A412BD44()
{
  swift_getKeyPath();
  sub_1A412BA84();

  return swift_unknownObjectRelease();
}

uint64_t sub_1A412BE30@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A412CE5C();
  a1[1] = v2;

  return swift_unknownObjectRetain();
}

id *DataSectionItemListManager.deinit()
{
  v1 = *(*v0 + 13);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  swift_unknownObjectRelease();
  v3 = *(*v0 + 17);
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DataSectionItemListManager.__deallocating_deinit()
{
  DataSectionItemListManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A412C058()
{
  sub_1A412C6F0();
}

void sub_1A412C080()
{
  swift_getWitnessTable();

  sub_1A5245C54();
}

uint64_t DataSectionItemListProtocol<>.item(at:)(uint64_t a1)
{
  [v1 objectAtIndex_];
  sub_1A4036910();
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t DataSectionItemListProtocol<>.itemIdentifiers.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v12[8] = 0;
    v12[9] = result;
    MEMORY[0x1EEE9AC00](result);
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = v3;
    sub_1A3D868AC();
    v8 = v7;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = sub_1A412CA00();
    return sub_1A3F3DF4C(sub_1A412C9D0, v12, v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  }

  return result;
}

void sub_1A412C2F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1A59016D0](*a1, a3, v6, v8);
  swift_getAssociatedConformanceWitness();
  sub_1A5246224();
}

uint64_t DataSectionItemListProtocol<>.subscript.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1A524D104();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v10 = v1;
  (*(v6 + 16))(&v9 - v5, a1, v4);
  v7 = v1;
  return sub_1A524EC54();
}

uint64_t DataSectionItemListProtocol<>.index(after:)(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A412C648()
{
  swift_getKeyPath();
  sub_1A412BA84();
}

void sub_1A412C70C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  *(v0 + 16) = [objc_allocWithZone(off_1E77217D8) init];
  sub_1A5246194();
}

unint64_t sub_1A412CA00()
{
  result = qword_1EB132E98;
  if (!qword_1EB132E98)
  {
    sub_1A3D868AC();
    sub_1A3DE7848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E98);
  }

  return result;
}

uint64_t sub_1A412CB60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A412CBA8()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1A412CCF4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v4 = *(Strong + 16);
      aBlock[4] = sub_1A412CEE8;
      aBlock[5] = Strong;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3DC72D4;
      aBlock[3] = &block_descriptor_105;
      v5 = _Block_copy(aBlock);
      v6 = v4;

      [v6 performChanges_];

      _Block_release(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_1A412CE04()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 128)) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A412CE5C()
{
  swift_getKeyPath();
  sub_1A412B9E4();

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_1A412CEF0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(*v2 + 104);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v2 + v3, v1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView()
{
  result = qword_1EB1AA5D0;
  if (!qword_1EB1AA5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A412D028@<X0>(void *a1@<X8>)
{
  *a1 = 0x4040000000000000;
  v2 = type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView();
  v3 = *(v2 + 20);
  *(a1 + v3) = swift_getKeyPath();
  sub_1A412F844(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v4 = (a1 + *(v2 + 24));
  type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel();
  sub_1A412F5FC(&qword_1EB136640, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel);
  result = sub_1A5248494();
  *v4 = result;
  v4[1] = v6;
  return result;
}

void sub_1A412D148(uint64_t a1)
{
  sub_1A3EE1618();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE15DC(0);
  MEMORY[0x1EEE9AC00](v5);
  *v4 = sub_1A5249584();
  *(v4 + 1) = 0x4028000000000000;
  v4[16] = 0;
  sub_1A412F7D8(0, &qword_1EB1244B0, sub_1A3EE16AC);
  sub_1A412D834(a1, &v4[*(v6 + 44)]);
}

void sub_1A412D478()
{
  if (!qword_1EB132EA0)
  {
    sub_1A412D4E0();
    sub_1A412D698();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132EA0);
    }
  }
}

void sub_1A412D4E0()
{
  if (!qword_1EB132EA8)
  {
    sub_1A412D5D8(255, &qword_1EB123548, sub_1A3EE15DC);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132EA8);
    }
  }
}

void sub_1A412D55C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A412D5D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A412D63C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A412D698()
{
  if (!qword_1EB128008)
  {
    sub_1A412D63C(255, &qword_1EB1267C8, &unk_1EB1267D0, off_1E771F078, sub_1A3C52C70);
    sub_1A412D728();
    v0 = sub_1A52494B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128008);
    }
  }
}

unint64_t sub_1A412D728()
{
  result = qword_1EB1267C0;
  if (!qword_1EB1267C0)
  {
    sub_1A412D63C(255, &qword_1EB1267C8, &unk_1EB1267D0, off_1E771F078, sub_1A3C52C70);
    sub_1A412D7CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1267C0);
  }

  return result;
}

unint64_t sub_1A412D7CC()
{
  result = qword_1EB1267B8;
  if (!qword_1EB1267B8)
  {
    sub_1A3C52C70(255, &unk_1EB1267D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1267B8);
  }

  return result;
}

void sub_1A412D834(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[8] = a2;
  sub_1A3EE179C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A3EE1760(0);
  v28[1] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28[4] = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE1724(0);
  v28[3] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v28[7] = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[2] = v28 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v28[6] = v28 - v11;
  v12 = sub_1A524B9A4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE16E8(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v28[5] = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v28 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v28 - v23;
  sub_1A524B994();
  v25 = type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView();
  v26 = *((*MEMORY[0x1E69E7D40] & **(a1 + *(v25 + 24) + 8)) + 0x138);
  v28[0] = (*MEMORY[0x1E69E7D40] & **(a1 + *(v25 + 24) + 8)) + 312;
  if (v26(v25))
  {
    v27 = 0.8;
  }

  else
  {
    v27 = 0.0;
  }

  (*(v13 + 32))(v21, v15, v12);
  *&v21[*(v17 + 44)] = v27;
  sub_1A412F644(v21, v24);
  sub_1A412DE84();
}

void sub_1A412DE84()
{
  sub_1A3EE16E8(0);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A3EE18A8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - v4;
  *v5 = sub_1A5249314();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_1A412F7D8(0, &qword_1EB124550, sub_1A3EE193C);
  sub_1A412E0E8(&v5[*(v6 + 44)]);
}

void sub_1A412E0E8(uint64_t a1@<X8>)
{
  v19[5] = a1;
  sub_1A3EE20B8(0, &qword_1EB1282C0, sub_1A3EE213C);
  v2 = *(v1 - 8);
  v19[2] = v1;
  v19[3] = v2;
  MEMORY[0x1EEE9AC00](v1);
  v19[0] = v19 - v3;
  sub_1A412D63C(0, &qword_1EB1282B8, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3EE20B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v19[4] = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v19[1] = v19 - v7;
  v8 = MEMORY[0x1E69E6720];
  sub_1A412F844(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  sub_1A412F844(0, &qword_1EB121598, sub_1A3EE1A7C, v8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (v19 - v12);
  sub_1A3EE19E8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  *v13 = sub_1A524BC74();
  v13[1] = v16;
  sub_1A412F7D8(0, &qword_1EB124438, sub_1A3EE1B10);
  sub_1A412E93C(v13 + *(v17 + 44));
  sub_1A3EE1A7C();
  (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  sub_1A412E758();
}

void sub_1A412E758()
{
  v0 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView();
  sub_1A4944D18();
  PXCappedFontWithTextStyle();
}

uint64_t sub_1A412E93C@<X0>(char *a1@<X8>)
{
  v67 = a1;
  sub_1A3EE4C14(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE1D04();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE1BA8();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView();
  sub_1A4944D34();
  v12 = sub_1A524B574();
  v13 = sub_1A524A0E4();
  KeyPath = swift_getKeyPath();
  sub_1A524BC74();
  sub_1A52481F4();
  if (qword_1EB1AA4B8 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB1EBBB0;
  v16 = swift_getKeyPath();
  *&v79 = v12;
  *(&v79 + 1) = KeyPath;
  *(v80 + 8) = v91;
  *(&v80[1] + 8) = v92;
  *(&v80[2] + 8) = v93;
  *&v80[0] = v13;
  *(&v80[3] + 1) = v16;
  v81 = v15;
  v17 = *MEMORY[0x1E697E6E8];
  v18 = sub_1A52486A4();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  sub_1A412F5FC(&unk_1EB1288C0, MEMORY[0x1E697E730]);

  if (sub_1A524C594())
  {
    sub_1A3EE20B8(0, &qword_1EB1281C0, sub_1A3EC1864);
    sub_1A3EE1DE0();
    sub_1A412F5FC(&unk_1EB1263B0, sub_1A3EE1D04);
    sub_1A524AB84();
    sub_1A412F778(v6, sub_1A3EE1D04);
    v94[2] = v80[1];
    v94[3] = v80[2];
    v94[4] = v80[3];
    v95 = v81;
    v94[0] = v79;
    v94[1] = v80[0];
    sub_1A3EE4F74(v94);
    v19 = *sub_1A4758698();
    sub_1A524B5D4();
    v20 = *MEMORY[0x1E6981698];
    v21 = sub_1A524B594();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v3, v20, v21);
    (*(v22 + 56))(v3, 0, 1, v21);
    v66 = sub_1A524B564();

    sub_1A412F778(v3, sub_1A3EE4C14);
    if (qword_1EB1AA4B0 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v23 = qword_1EB1EBBA8;
  v64 = swift_getKeyPath();
  v65 = v23;

  v24 = sub_1A524A094();
  v25 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v24)
  {
    v25 = sub_1A524A0A4();
  }

  sub_1A5247BC4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v86 = 0;
  v34 = sub_1A524A074();
  v35 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v34)
  {
    v35 = sub_1A524A0A4();
  }

  sub_1A5247BC4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v88 = 0;
  v44 = v68;
  v45 = *(v68 + 16);
  v46 = v70;
  v47 = v11;
  v48 = v11;
  v49 = v69;
  v45(v70, v48, v69);
  v50 = v67;
  v45(v67, v46, v49);
  sub_1A412D55C(0, &qword_1EB1275B8, sub_1A3EE1BA8, sub_1A3EE1F24);
  v52 = &v50[*(v51 + 48)];
  v54 = v65;
  v53 = v66;
  v55 = v64;
  *&v71 = v66;
  *(&v71 + 1) = v64;
  *&v72 = v65;
  BYTE8(v72) = v25;
  LODWORD(v67) = v25;
  *(&v72 + 9) = *v87;
  HIDWORD(v72) = *&v87[3];
  *&v73 = v27;
  *(&v73 + 1) = v29;
  *&v74 = v31;
  *(&v74 + 1) = v33;
  LOBYTE(v75) = 0;
  *(&v75 + 1) = *v90;
  DWORD1(v75) = *&v90[3];
  BYTE8(v75) = v35;
  HIDWORD(v75) = *&v89[3];
  *(&v75 + 9) = *v89;
  *&v76 = v37;
  *(&v76 + 1) = v39;
  *&v77 = v41;
  *(&v77 + 1) = v43;
  v78 = 0;
  v56 = v75;
  v57 = v76;
  v58 = v77;
  v52[112] = 0;
  *(v52 + 5) = v57;
  *(v52 + 6) = v58;
  v59 = v71;
  v60 = v72;
  v61 = v73;
  *(v52 + 3) = v74;
  *(v52 + 4) = v56;
  *(v52 + 1) = v60;
  *(v52 + 2) = v61;
  *v52 = v59;
  sub_1A412F710(&v71, &v79, sub_1A3EE1F24);
  v62 = *(v44 + 8);
  v62(v47, v49);
  *&v79 = v53;
  *(&v79 + 1) = v55;
  *&v80[0] = v54;
  BYTE8(v80[0]) = v67;
  *(v80 + 9) = *v87;
  HIDWORD(v80[0]) = *&v87[3];
  *&v80[1] = v27;
  *(&v80[1] + 1) = v29;
  *&v80[2] = v31;
  *(&v80[2] + 1) = v33;
  LOBYTE(v80[3]) = 0;
  *(&v80[3] + 1) = *v90;
  DWORD1(v80[3]) = *&v90[3];
  BYTE8(v80[3]) = v35;
  HIDWORD(v80[3]) = *&v89[3];
  *(&v80[3] + 9) = *v89;
  v81 = v37;
  v82 = v39;
  v83 = v41;
  v84 = v43;
  v85 = 0;
  sub_1A412F778(&v79, sub_1A3EE1F24);
  return (v62)(v70, v49);
}

uint64_t sub_1A412F0D8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0x4040000000000000;
  v4 = *(a1 + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_1A412F844(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v5 = (a2 + *(a1 + 24));
  type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel();
  sub_1A412F5FC(&qword_1EB136640, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel);
  result = sub_1A5248494();
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t sub_1A412F1C8(uint64_t a1)
{
  result = sub_1A412F5FC(&qword_1EB132EB0, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView);
  *(a1 + 8) = result;
  return result;
}

void sub_1A412F2C8()
{
  sub_1A412F844(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A412F38C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A412F38C()
{
  if (!qword_1EB132EB8)
  {
    type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel();
    sub_1A412F5FC(&qword_1EB136640, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132EB8);
    }
  }
}

unint64_t sub_1A412F430()
{
  result = qword_1EB132EC0;
  if (!qword_1EB132EC0)
  {
    sub_1A412D478();
    sub_1A412F4E0();
    sub_1A412F5FC(&qword_1EB128010, sub_1A412D698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132EC0);
  }

  return result;
}

unint64_t sub_1A412F4E0()
{
  result = qword_1EB132EC8;
  if (!qword_1EB132EC8)
  {
    sub_1A412D4E0();
    sub_1A412F558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132EC8);
  }

  return result;
}

unint64_t sub_1A412F558()
{
  result = qword_1EB123550;
  if (!qword_1EB123550)
  {
    sub_1A412D5D8(255, &qword_1EB123548, sub_1A3EE15DC);
    sub_1A3EE4B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123550);
  }

  return result;
}

uint64_t sub_1A412F5FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A412F644(uint64_t a1, uint64_t a2)
{
  sub_1A3EE16E8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A412F6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A412F710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A412F778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A412F7D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A412F844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A412F8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A412F910(uint64_t a1, uint64_t a2)
{
  sub_1A412D63C(0, &qword_1EB1282B8, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3EE20B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A412F9AC(uint64_t a1)
{
  sub_1A412D63C(0, &qword_1EB1282B8, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3EE20B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A412FA40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LemonadeMapConfiguration.init(photoLibrary:representedItem:collectionConfiguration:libraryFilterViewMode:boundingRegion:centerCoordinate:wantsDismissButton:enableGridView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14)
{
  v14 = *(a2 + 16);
  *(a9 + 8) = *a2;
  v15 = *a3;
  v16 = *(a3 + 8);
  *a9 = result;
  *(a9 + 24) = v14;
  *(a9 + 40) = *(a2 + 32);
  *(a9 + 48) = v15;
  *(a9 + 56) = v16;
  *(a9 + 64) = a4;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  *(a9 + 104) = a5;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7 & 1;
  *(a9 + 121) = a8;
  *(a9 + 122) = a14;
  return result;
}

uint64_t LemonadeMapConfiguration.hash(into:)()
{
  sub_1A524DC04();
  MEMORY[0x1A590A010](*(v0 + 64));
  v1 = *(v0 + 72);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1A590A040](*&v1);
  v2 = *(v0 + 80);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1A590A040](*&v2);
  v3 = *(v0 + 88);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1A590A040](*&v3);
  v4 = *(v0 + 96);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1A590A040](*&v4);
}

uint64_t LemonadeMapConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  LemonadeMapConfiguration.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A412FBE0()
{
  sub_1A524EC94();
  LemonadeMapConfiguration.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A412FC24()
{
  sub_1A524EC94();
  LemonadeMapConfiguration.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A412FC64@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  sub_1A3C4B7E8(0, &qword_1EB120A30, &qword_1EB126AC0);
  sub_1A524B694();
  *(a2 + 16) = v10;
  sub_1A3C4B7E8(0, &qword_1EB1206A0, &qword_1EB1206A8);
  sub_1A524B694();
  *(a2 + 32) = v10;
  sub_1A3C4B7E8(0, &qword_1EB1208F0, &qword_1EB1208F8);
  sub_1A524B694();
  *(a2 + 48) = v10;
  sub_1A3C4B7E8(0, &qword_1EB120630, &qword_1EB120638);
  sub_1A524B694();
  *(a2 + 64) = v10;
  sub_1A524B694();
  *(a2 + 80) = v10;
  sub_1A524B694();
  *(a2 + 96) = v10;
  sub_1A4134F34(0, v4, v5);
  sub_1A524B694();
  *(a2 + 112) = v10;
  sub_1A524B694();
  *(a2 + 128) = v10;
  *(a2 + 136) = *(&v10 + 1);
  sub_1A524B694();
  *(a2 + 144) = v10;
  *(a2 + 152) = *(&v10 + 1);
  sub_1A3EED680(a1, a2 + 160);
  v6 = *a1;
  *(a2 + 288) = *a1;
  v7 = a1[8];
  v8 = v6;
  result = sub_1A3EED784(a1);
  *(a2 + 296) = v7;
  return result;
}

uint64_t sub_1A412FE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeMapView();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41350C8();
  v8 = v7;
  v79 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4135028();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v64 - v15;
  v80[0] = *(a1 + 32);
  sub_1A4138FF8(0, &qword_1EB121B90, &qword_1EB1206A0, &qword_1EB1206A8);
  sub_1A524B6A4();
  v16 = *&v83[0];
  if (!*&v83[0])
  {
    goto LABEL_8;
  }

  v75 = v8;
  v80[0] = *(a1 + 48);
  sub_1A4138FF8(0, &qword_1EB121BD8, &qword_1EB1208F0, &qword_1EB1208F8);
  sub_1A524B6A4();
  v17 = *&v83[0];
  if (!*&v83[0])
  {
LABEL_7:

LABEL_8:
    v63 = 1;
    return (*(v12 + 56))(a2, v63, 1, v11);
  }

  v74 = v11;
  v80[0] = *(a1 + 112);
  sub_1A4134F68(0, &qword_1EB121C60, 255, sub_1A4134F34, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v18 = *&v83[0];
  if (!*&v83[0])
  {

    v16 = v17;
    v11 = v74;
    goto LABEL_7;
  }

  v66 = v4;
  v67 = v12;
  v19 = *(a1 + 232);
  v20 = *(a1 + 240);
  v21 = *(a1 + 248);
  v22 = *(a1 + 256);
  v24 = *(a1 + 264);
  v23 = *(a1 + 272);
  v70 = a2;
  v71 = v24;
  v73 = v23;
  LODWORD(v72) = *(a1 + 280);
  v25 = *(a1 + 281);
  v26 = *(a1 + 136);
  LODWORD(v65) = *(a1 + 128);
  LOBYTE(v80[0]) = v65;
  v64 = v26;
  *(&v80[0] + 1) = v26;
  sub_1A3CA6BB4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v28 = v27;
  v29 = v17;
  v68 = v28;
  sub_1A524B6A4();
  v30 = v83[0];
  v31 = *(a1 + 288);
  v32 = v18;
  v33 = v16;
  v69 = v32;
  v34 = v71;
  v35 = v73;
  v36 = v72;
  v72 = v33;
  v73 = v29;
  LODWORD(v71) = v25;
  sub_1A45CC8E4(v34, v35, v36, v29, v25, v30, v31, v33, v83, v19, v20, v21, v22, v32);
  v80[0] = *(a1 + 96);
  sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0);
  result = sub_1A524B6A4();
  v38 = v81;
  if (v81)
  {
    v39 = *(a1 + 282);
    LOBYTE(v80[0]) = v65;
    *(&v80[0] + 1) = v64;
    sub_1A524B6A4();
    v40 = v81;
    v42 = *(a1 + 152);
    LOBYTE(v81) = *(a1 + 144);
    v41 = v81;
    v82 = v42;
    sub_1A524B6C4();
    v65 = *(&v80[0] + 1);
    v43 = *&v80[0];
    LODWORD(v64) = LOBYTE(v80[1]);
    v44 = v83[3];
    *(v6 + 2) = v83[2];
    *(v6 + 3) = v44;
    v45 = v83[5];
    *(v6 + 4) = v83[4];
    *(v6 + 5) = v45;
    v46 = v83[1];
    *v6 = v83[0];
    *(v6 + 1) = v46;
    *(v6 + 12) = v38;
    v6[104] = v39;
    v6[105] = v71;
    v6[106] = v40;
    v47 = v66;
    v48 = v66[9];
    *&v6[v48] = swift_getKeyPath();
    sub_1A4137EE8(0);
    swift_storeEnumTagMultiPayload();
    v49 = &v6[v47[10]];
    *v49 = swift_getKeyPath();
    v49[8] = 0;
    v50 = v47[11];
    *&v6[v50] = swift_getKeyPath();
    sub_1A4134F68(0, &qword_1EB124898, 255, MEMORY[0x1E697CC88], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    v51 = &v6[v47[12]];
    *v51 = swift_getKeyPath();
    v51[8] = 0;
    v52 = &v6[v47[13]];
    v81 = 0;
    sub_1A4138BB0(v83, v80);
    sub_1A524B694();
    v53 = *(&v80[0] + 1);
    *v52 = *&v80[0];
    *(v52 + 1) = v53;
    v54 = &v6[v47[14]];
    LOBYTE(v81) = 0;
    sub_1A524B694();
    v55 = *(&v80[0] + 1);
    *v54 = v80[0];
    *(v54 + 1) = v55;
    v56 = &v6[v47[15]];
    v57 = v65;
    *v56 = v43;
    *(v56 + 1) = v57;
    v56[16] = v64;
    LOBYTE(v80[0]) = v41;
    *(&v80[0] + 1) = v42;
    sub_1A524B6A4();
    sub_1A4135258(a1, v80);
    v58 = swift_allocObject();
    memcpy((v58 + 16), v80, 0x130uLL);
    sub_1A41351AC();
    v59 = v78;
    sub_1A524B154();

    sub_1A4138C0C(v83);

    sub_1A4137E18(v6, type metadata accessor for LemonadeMapView);
    v60 = v77;
    (*(v79 + 32))(v77, v59, v75);
    v11 = v74;
    v60[*(v74 + 36)] = 0;
    v61 = v60;
    v62 = v76;
    sub_1A4139790(v61, v76, sub_1A4135028);
    a2 = v70;
    sub_1A4139790(v62, v70, sub_1A4135028);
    v63 = 0;
    v12 = v67;
    return (*(v12 + 56))(a2, v63, 1, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41305C8(int a1)
{
  v2 = v1;
  v24 = a1;
  v26 = sub_1A524BEE4();
  v29 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v32[0] = *(v1 + 32);
  v11 = v32[0];
  v32[1] = v12;
  sub_1A4138FF8(0, &qword_1EB121B90, &qword_1EB1206A0, &qword_1EB1206A8);
  sub_1A524B6A4();
  v13 = v31[0];
  [v31[0] preloadMap];

  sub_1A3C52C70(0, &qword_1EB12B180);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F90], v7);
  v23 = sub_1A524D4C4();
  (*(v8 + 8))(v10, v7);
  v14 = swift_allocObject();
  v32[0] = v11;
  v32[1] = v12;
  sub_1A524B6A4();
  v15 = v31[0];
  swift_unknownObjectWeakInit();

  sub_1A4135258(v2, v32);
  v16 = swift_allocObject();
  memcpy((v16 + 16), v32, 0x130uLL);
  *(v16 + 320) = v14;
  *(v16 + 328) = v24;
  v31[4] = sub_1A4139054;
  v31[5] = v16;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  v31[2] = sub_1A3C2E0D0;
  v31[3] = &block_descriptor_106;
  v17 = _Block_copy(v31);

  sub_1A524BF14();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1A3C9AD6C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3C9AD6C(&qword_1EB12B1B0, sub_1A3C38394);
  v19 = v25;
  v18 = v26;
  sub_1A524E224();
  v20 = v23;
  MEMORY[0x1A5908800](0, v6, v19, v17);
  _Block_release(v17);

  (*(v29 + 8))(v19, v18);
  (*(v27 + 8))(v6, v28);
}

void sub_1A4130A48()
{
  v1 = v0;
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[4];
  v7 = v0[5];
  *&v65 = v6;
  *(&v65 + 1) = v7;
  sub_1A4138FF8(0, &qword_1EB121B90, &qword_1EB1206A0, &qword_1EB1206A8);
  sub_1A524B6A4();
  v8 = v61;
  if (v61)
  {
LABEL_16:

    return;
  }

  v56 = v5;
  v57 = v3;
  v58 = v2;
  v9 = v0[36];
  v10 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  v11 = [objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_];

  v65 = *(v0 + 3);
  *&v61 = v11;
  sub_1A4138FF8(0, &qword_1EB121BD8, &qword_1EB1208F0, &qword_1EB1208F8);
  v12 = v11;
  sub_1A524B6B4();
  PHPhotoLibrary.fetcher.getter();
  sub_1A4147DF0(&v65);
  v61 = v65;
  v62 = v66;
  v63 = v67;
  v64 = v68;
  v13 = PhotoKitFetcher.fetchPlacesAlbum(for:)(&v61);

  v14 = v64;

  v15 = [v13 firstObject];
  v59 = v12;
  if (!v15)
  {
    v40 = [objc_opt_self() px_deprecated_appPhotoLibrary];
    if (v40)
    {
      v41 = v40;
      PHPhotoLibrary.fetcher.getter();
      sub_1A4147DF0(&v65);
      v61 = v65;
      v62 = v66;
      v63 = v67;
      v64 = v68;
      v42 = PhotoKitFetcher.fetchPlacesAlbum(for:)(&v61);

      v43 = v64;

      v44 = [v42 firstObject];
      if (v44)
      {
        v45 = v1[2];
        v54 = v1[3];
        v55 = v45;
        *&v65 = v45;
        *(&v65 + 1) = v54;
        *&v61 = v44;
        sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0);
        v46 = v44;
        sub_1A524B6B4();
        v47 = objc_allocWithZone(PXPlacesMapFetchResultController);
        v48 = [v47 initWithLibraryFilterState:v59 photoLibrary:v41];
        *&v65 = v6;
        *(&v65 + 1) = v7;
        *&v61 = v48;

        v49 = v6;
        sub_1A524B6B4();

        goto LABEL_4;
      }
    }

    if (qword_1EB15AEF0 != -1)
    {
      swift_once();
    }

    v50 = sub_1A5246F24();
    __swift_project_value_buffer(v50, qword_1EB1EAD58);
    v51 = sub_1A5246F04();
    v52 = sub_1A524D244();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *&v65 = swift_slowAlloc();
      *v53 = 136315138;
      sub_1A3C2EF94();
    }

    return;
  }

  v16 = v1[2];
  v54 = v1[3];
  v55 = v16;
  *&v65 = v16;
  *(&v65 + 1) = v54;
  *&v61 = v15;
  sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0);
  v17 = v15;
  sub_1A524B6B4();
  v18 = [objc_allocWithZone(PXPlacesMapFetchResultController) initWithLibraryFilterState:v12 photoLibrary:v9];
  *&v65 = v6;
  *(&v65 + 1) = v7;
  *&v61 = v18;

  v19 = v6;
  sub_1A524B6B4();

LABEL_4:
  v20 = [objc_allocWithZone(PXPlacesMapThumbnailLocationCurator) init];
  v22 = v1[8];
  v21 = v1[9];
  *&v65 = v22;
  *(&v65 + 1) = v21;
  *&v61 = v20;
  sub_1A4138FF8(0, &qword_1EB121B88, &qword_1EB120630, &qword_1EB120638);
  sub_1A524B6B4();
  *&v65 = v6;
  *(&v65 + 1) = v7;
  sub_1A524B6A4();
  v23 = v61;
  if (v61)
  {
    *&v65 = v22;
    *(&v65 + 1) = v21;
    sub_1A524B6A4();
    v24 = v61;
    [v23 setThumbnailLocationCurator_];

    v25 = *v1;
    v26 = *(v1 + 8);

    if ((v26 & 1) == 0)
    {
      sub_1A524D254();
      v27 = sub_1A524A014();
      sub_1A5246DF4();

      v28 = v56;
      sub_1A5249224();
      swift_getAtKeyPath();
      j__swift_release(v25, 0);
      (*(v57 + 8))(v28, v58);
      v25 = v65;
    }

    if (v25)
    {
      v29 = type metadata accessor for PhotosViewControllerPresentationDelegate();
      v30 = objc_allocWithZone(v29);
      *&v30[OBJC_IVAR____TtC12PhotosUICoreP33_128B04DDBCBA4CE932CB50ACF858600440PhotosViewControllerPresentationDelegate_navigationContext] = v25;
      v60.receiver = v30;
      v60.super_class = v29;

      v31 = objc_msgSendSuper2(&v60, sel_init);
      v33 = v1[15];
      *&v65 = v1[14];
      v32 = v65;
      *(&v65 + 1) = v33;
      *&v61 = v31;
      sub_1A4134F68(0, &qword_1EB121C60, 255, sub_1A4134F34, MEMORY[0x1E6981790]);
      v34 = v32;

      sub_1A524B6B4();
    }

    v35 = v1[26];
    if (v35)
    {
      v36 = *(v1 + 216);
      v65 = *(v1 + 5);
      *&v61 = v35;
      sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0);
      v37 = v35;
      sub_1A524B6B4();
      v65 = *(v1 + 6);
      *&v61 = v35;
      sub_1A524B6B4();
      v38 = *(v1 + 128);
      v39 = v1[17];
      LOBYTE(v65) = v38;
      *(&v65 + 1) = v39;
      LOBYTE(v61) = v36 & 1;
      sub_1A3CA6BB4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

      sub_1A524B6B4();
    }

    else
    {
      v65 = *(v1 + 5);
      *&v61 = 0;
      sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0);
      sub_1A524B6B4();
      *&v65 = v55;
      *(&v65 + 1) = v54;
      sub_1A524B6A4();
      v65 = *(v1 + 6);
      sub_1A524B6B4();
      v38 = *(v1 + 128);
      v39 = v1[17];
      LOBYTE(v65) = v38;
      *(&v65 + 1) = v39;
      LOBYTE(v61) = 0;
      sub_1A3CA6BB4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      sub_1A524B6B4();
    }

    LOBYTE(v65) = v38;
    *(&v65 + 1) = v39;
    sub_1A3CA6BB4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    sub_1A41305C8(v61);
    v8 = v59;
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1A4131374(char a1, uint64_t a2)
{
  v4 = sub_1A524BEE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v12 = sub_1A524D474();
    aBlock[4] = sub_1A4139410;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_84_2;
    v13 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C9AD6C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C38394();
    sub_1A3C9AD6C(&qword_1EB12B1B0, sub_1A3C38394);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v11, v7, v13);
    _Block_release(v13);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

void sub_1A4131650(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A4137DAC(0, &qword_1EB124458, sub_1A4134FF0);
  sub_1A412FE74(v1, a1 + *(v3 + 44));
  sub_1A4135258(v1, v7);
  v4 = swift_allocObject();
  memcpy((v4 + 16), v7, 0x130uLL);
  sub_1A4136200(0, &qword_1EB123A48, sub_1A41352B4);
  v6 = (a1 + *(v5 + 36));
  *v6 = sub_1A41399A8;
  v6[1] = v4;
  v6[2] = 0;
  v6[3] = 0;
}

void sub_1A4131754(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for LemonadeMapView();
  v53 = *(v3 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A5249284();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41360BC();
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A41367D4(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1E697D448];
  sub_1A4136B78(0, &qword_1EB132FD8, sub_1A41367D4, sub_1A4136808);
  v16 = v15;
  v47 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - v17;
  sub_1A41368E8();
  v20 = *(v19 - 8);
  v48 = v19;
  v49 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = sub_1A524BC74();
  v10[1] = v23;
  sub_1A4137DAC(0, &qword_1EB133068, sub_1A4136150);
  sub_1A4131E54(v2, v10 + *(v24 + 44));
  v55 = sub_1A3C38BD4();
  v56 = v25;
  sub_1A3C9AD6C(&unk_1EB132FE8, sub_1A41360BC);
  sub_1A3D5F9DC();
  sub_1A524AC94();

  sub_1A4137E18(v10, sub_1A41360BC);
  v26 = v46;
  (*(v5 + 104))(v7, *MEMORY[0x1E697C438], v46);
  v27 = sub_1A4136808();
  sub_1A524AF34();
  (*(v5 + 8))(v7, v26);
  sub_1A4137E18(v14, sub_1A41367D4);
  v28 = v43;
  v54 = v43;
  sub_1A4136A2C();
  v30 = v29;
  v55 = v12;
  v56 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_1A3C9AD6C(&qword_1EB133060, sub_1A4136A2C);
  sub_1A524B0E4();
  (*(v47 + 8))(v18, v16);
  sub_1A4134F68(0, &qword_1EB126218, 255, MEMORY[0x1E697C290], MEMORY[0x1E69E6F90]);
  sub_1A5248AB4();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1A52F8E10;
  sub_1A5248AA4();
  v55 = v16;
  v56 = v30;
  v57 = OpaqueTypeConformance2;
  v58 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v51;
  v36 = v48;
  MEMORY[0x1A5905FC0](2, v33, v48, v34);

  (*(v49 + 8))(v22, v36);
  v37 = v50;
  sub_1A4137E80(v28, v50, type metadata accessor for LemonadeMapView);
  v38 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v39 = swift_allocObject();
  sub_1A413895C(v37, v39 + v38, type metadata accessor for LemonadeMapView);
  sub_1A4137FDC();
  v41 = (v35 + *(v40 + 36));
  *v41 = sub_1A413375C;
  v41[1] = 0;
  v41[2] = sub_1A4137F20;
  v41[3] = v39;
}

uint64_t sub_1A4131E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_1A4136374();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  sub_1A41361D8(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v51 - v13);
  *v14 = sub_1A524BC74();
  v14[1] = v15;
  sub_1A4137DAC(0, &qword_1EB124440, sub_1A41362F8);
  v17 = (v14 + *(v16 + 44));
  v18 = *(a1 + 48);
  v65 = *(a1 + 32);
  v66 = v18;
  v19 = *(a1 + 80);
  v67 = *(a1 + 64);
  v68 = v19;
  v20 = *(a1 + 16);
  v63 = *a1;
  v64 = v20;
  sub_1A4138BB0(&v63, &v76);
  *v8 = sub_1A5249574();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_1A4137DAC(0, &qword_1EB1244A8, sub_1A4136408);
  sub_1A41326A0(a1, &v8[*(v21 + 44)]);
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v57 = v63;
  v58 = v64;
  sub_1A4137E80(v8, v5, sub_1A4136374);
  v22 = v60;
  v69[2] = v59;
  v69[3] = v60;
  v23 = v61;
  v24 = v62;
  v69[4] = v61;
  v69[5] = v62;
  v25 = v57;
  v26 = v58;
  v69[0] = v57;
  v69[1] = v58;
  v17[2] = v59;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  *v17 = v25;
  v17[1] = v26;
  sub_1A4136608(0, &qword_1EB1257E0, sub_1A4136374);
  sub_1A4137E80(v5, v17 + *(v27 + 48), sub_1A4136374);
  sub_1A4138BB0(v69, &v76);
  sub_1A4137E18(v8, sub_1A4136374);
  sub_1A4137E18(v5, sub_1A4136374);
  v70[2] = v59;
  v70[3] = v60;
  v70[4] = v61;
  v70[5] = v62;
  v70[0] = v57;
  v70[1] = v58;
  sub_1A4138C0C(v70);
  v28 = sub_1A5248874();
  v29 = sub_1A524A064();
  v30 = v14 + *(v10 + 44);
  *v30 = v28;
  v30[8] = v29;
  v52 = sub_1A5249314();
  v56 = 1;
  v31 = sub_1A5249574();
  v86 = 1;
  sub_1A47C23F0([*(a1 + 80) mapView], *(a1 + 80), &v76);
  v32 = v76;
  v33 = v77;
  v34 = *v78;
  v35 = *&v78[8];
  LOBYTE(a1) = sub_1A524A064();
  sub_1A5247BC4();
  *v72 = v32;
  *&v72[8] = v33;
  *&v72[16] = v34;
  *&v72[24] = v35;
  v72[32] = a1;
  *&v72[40] = v36;
  *&v72[48] = v37;
  *&v72[56] = v38;
  *&v72[64] = v39;
  v72[72] = 0;
  *(&v75[2] + 9) = *&v72[57];
  v75[1] = *&v72[32];
  v75[2] = *&v72[48];
  v74 = *v72;
  v75[0] = *&v72[16];
  LOBYTE(v92[0]) = 1;
  v76 = v32;
  v77 = v33;
  *v78 = v34;
  *&v78[8] = v35;
  v78[16] = a1;
  *(v79 + 7) = v36;
  *(v79 + 15) = v37;
  *(&v79[1] + 7) = v38;
  *(&v79[1] + 15) = v39;
  BYTE7(v79[2]) = 0;
  sub_1A4138C60(v72, v71);
  sub_1A4138CF0(&v76);
  v89 = v75[1];
  v90 = v75[2];
  v91[0] = v75[3];
  v88 = v75[0];
  v87 = v74;
  *&v91[1] = 0;
  BYTE8(v91[1]) = 1;
  v92[3] = v75[2];
  v92[4] = v75[3];
  v92[1] = v75[0];
  v92[2] = v75[1];
  v92[0] = v74;
  v93 = 0;
  v94 = 1;
  sub_1A4137E80(&v87, &v76, sub_1A4136708);
  sub_1A4137E18(v92, sub_1A4136708);
  *&v71[39] = v89;
  *&v71[55] = v90;
  *&v71[71] = v91[0];
  *&v71[80] = *(v91 + 9);
  *&v71[7] = v87;
  *&v71[23] = v88;
  v74 = v31;
  LOBYTE(v75[0]) = v86;
  *(v75 + 1) = *v71;
  *(&v75[1] + 1) = *&v71[16];
  *(&v75[5] + 1) = *(v91 + 9);
  *(&v75[4] + 1) = *&v71[64];
  *(&v75[3] + 1) = *&v71[48];
  *(&v75[2] + 1) = *&v71[32];
  *&v85[55] = v75[2];
  *&v85[39] = v75[1];
  *&v85[23] = v75[0];
  *&v85[7] = v31;
  *&v85[103] = v75[5];
  *&v85[87] = v75[4];
  *&v85[71] = v75[3];
  v79[0] = *&v71[16];
  *&v78[1] = *v71;
  v86 = 1;
  v85[119] = BYTE8(v91[1]);
  v76 = v31;
  v77 = 0;
  v78[0] = v75[0];
  v81 = *(v91 + 9);
  v80 = *&v71[64];
  v79[2] = *&v71[48];
  v79[1] = *&v71[32];
  sub_1A4137E80(&v74, v72, sub_1A4136674);
  sub_1A4137E18(&v76, sub_1A4136674);
  *&v71[73] = *&v85[64];
  *&v71[89] = *&v85[80];
  *&v71[105] = *&v85[96];
  *&v71[9] = *v85;
  *&v71[25] = *&v85[16];
  *&v71[41] = *&v85[32];
  *&v71[57] = *&v85[48];
  *&v72[73] = *&v85[64];
  *&v72[89] = *&v85[80];
  *&v72[105] = *&v85[96];
  *&v72[9] = *v85;
  *&v72[25] = *&v85[16];
  *&v72[41] = *&v85[32];
  *&v71[121] = *&v85[112];
  *v71 = 0;
  v71[8] = 1;
  *v72 = 0;
  v72[8] = 1;
  v73 = *&v85[112];
  *&v72[57] = *&v85[48];
  sub_1A4137E80(v71, &v76, sub_1A413658C);
  sub_1A4137E18(v72, sub_1A413658C);
  *&v55[87] = *&v71[80];
  *&v55[103] = *&v71[96];
  *&v55[119] = *&v71[112];
  *&v55[23] = *&v71[16];
  *&v55[39] = *&v71[32];
  *&v55[55] = *&v71[48];
  *&v55[71] = *&v71[64];
  v55[135] = v71[128];
  *&v55[7] = *v71;
  LOBYTE(v31) = v56;
  v40 = v53;
  sub_1A4137E80(v14, v53, sub_1A41361D8);
  v41 = v54;
  sub_1A4137E80(v40, v54, sub_1A41361D8);
  sub_1A4136AB4(0, &unk_1EB132F70, sub_1A41361D8, sub_1A41364F8);
  v43 = *(v42 + 48);
  *(&v75[5] + 1) = *&v55[80];
  *(&v75[6] + 1) = *&v55[96];
  *(&v75[7] + 1) = *&v55[112];
  *(&v75[1] + 1) = *&v55[16];
  *(&v75[2] + 1) = *&v55[32];
  *(&v75[3] + 1) = *&v55[48];
  v44 = (v41 + v43);
  v45 = v52;
  v74 = v52;
  LOBYTE(v75[0]) = v31;
  *(&v75[8] + 1) = *&v55[128];
  *(&v75[4] + 1) = *&v55[64];
  *(v75 + 1) = *v55;
  v46 = v75[6];
  v44[6] = v75[5];
  v44[7] = v46;
  v44[8] = v75[7];
  *(v44 + 137) = *(&v75[7] + 9);
  v47 = v75[2];
  v44[2] = v75[1];
  v44[3] = v47;
  v48 = v75[4];
  v44[4] = v75[3];
  v44[5] = v48;
  v49 = v75[0];
  *v44 = v74;
  v44[1] = v49;
  sub_1A4137E80(&v74, &v76, sub_1A41364F8);
  sub_1A4137E18(v14, sub_1A41361D8);
  v81 = *&v55[80];
  v82 = *&v55[96];
  v83 = *&v55[112];
  v79[0] = *&v55[16];
  v79[1] = *&v55[32];
  v79[2] = *&v55[48];
  v80 = *&v55[64];
  v76 = v45;
  v77 = 0;
  v78[0] = v31;
  v84 = *&v55[128];
  *&v78[1] = *v55;
  sub_1A4137E18(&v76, sub_1A41364F8);
  return sub_1A4137E18(v40, sub_1A41361D8);
}

uint64_t sub_1A41326A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A41364A8(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  sub_1A413286C(&v19 - v9);
  v11 = (a1 + *(type metadata accessor for LemonadeMapView() + 52));
  v12 = *v11;
  v13 = v11[1];
  *&v20 = v12;
  *(&v20 + 1) = v13;
  sub_1A3CA6BB4(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A524BC74();
  sub_1A52481F4();
  v14 = &v10[*(v5 + 44)];
  v15 = v21;
  *v14 = v20;
  *(v14 + 1) = v15;
  *(v14 + 2) = v22;
  sub_1A4137E80(v10, v7, sub_1A41364A8);
  sub_1A4137E80(v7, a2, sub_1A41364A8);
  sub_1A4136440();
  v17 = a2 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_1A4137E18(v10, sub_1A41364A8);
  return sub_1A4137E18(v7, sub_1A41364A8);
}

void sub_1A413286C(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_1A5243664();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1A5243654();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5243674();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v10 enableNavigationBarBlur];
  [v10 navigationBarBlurRadius];
  [v10 navigationBarBlurDistanceToBaseline];
  [v10 navigationBarTintCurve];
  [v10 navigationBarTintOpacity];
  (*(v6 + 104))(v8, *MEMORY[0x1E69C2570], v5);
  sub_1A4138D78();
  v12 = *(v11 + 48);
  *v4 = sub_1A524B404();
  v13 = *MEMORY[0x1E6981DF0];
  v14 = sub_1A524BD64();
  (*(*(v14 - 8) + 104))(v4 + v12, v13, v14);
  (*(v2 + 104))(v4, *MEMORY[0x1E69C2588], v1);
  sub_1A5243644();
  v15 = v18;
  sub_1A5243084();

  sub_1A41364D0(0);
  *(v15 + *(v16 + 36)) = 0;
}

uint64_t sub_1A4132B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_1A4136AB4(0, &qword_1EB133008, sub_1A4136B30, sub_1A4136D6C);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - v4;
  sub_1A4136DA4();
  v7 = v6;
  v54 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A4136F6C();
  v11 = v10;
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4136EB8(0, &qword_1EB133038, sub_1A4136F6C, &qword_1EB133058, sub_1A4136F6C);
  v50 = v14;
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  sub_1A4136D6C(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v43 - v21;
  sub_1A4136B30(0);
  v52 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A413328C(v25);
  if (*(a1 + 106) == 1)
  {
    v26 = sub_1A5249894();
    v43 = &v43;
    MEMORY[0x1EEE9AC00](v26);
    v44 = v7;
    v45 = v16;
    *(&v43 - 2) = a1;
    sub_1A413700C(0);
    sub_1A3C9AD6C(&qword_1EB133050, sub_1A413700C);
    sub_1A5247F24();
    v27 = sub_1A3C9AD6C(&qword_1EB133058, sub_1A4136F6C);
    v28 = v45;
    MEMORY[0x1A5904CD0](v13, v11, v27);
    (*(v47 + 8))(v13, v11);
    v55 = v11;
    v56 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = v48;
    v31 = v28;
    v32 = v50;
    MEMORY[0x1A5904CD0](v31, v50, OpaqueTypeConformance2);
    v33 = v54;
    v34 = v44;
    (*(v54 + 16))(v19, v30, v44);
    (*(v33 + 56))(v19, 0, 1, v34);
    v55 = v32;
    v56 = OpaqueTypeConformance2;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = v53;
    MEMORY[0x1A5904D00](v19, v34, v35);
    sub_1A4138AE8(v19, sub_1A4136D6C);
    (*(v33 + 8))(v30, v34);
    (*(v46 + 8))(v45, v32);
  }

  else
  {
    (*(v54 + 56))(v19, 1, 1, v7);
    v37 = sub_1A3C9AD6C(&qword_1EB133058, sub_1A4136F6C);
    v55 = v11;
    v56 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    v55 = v50;
    v56 = v38;
    v39 = swift_getOpaqueTypeConformance2();
    v36 = v53;
    MEMORY[0x1A5904D00](v19, v7, v39);
    sub_1A4138AE8(v19, sub_1A4136D6C);
  }

  v40 = *(v49 + 48);
  v41 = v52;
  (*(v23 + 16))(v5, v25, v52);
  sub_1A3CDDFD8(v36, &v5[v40]);
  sub_1A52495D4();
  sub_1A4138AE8(v36, sub_1A4136D6C);
  return (*(v23 + 8))(v25, v41);
}

uint64_t sub_1A413328C@<X0>(uint64_t a1@<X8>)
{
  sub_1A4136EB8(0, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - v6;
  v8 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1A3F1E8D8();
  v10 = v9;
  v28 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4136C04();
  v29 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v27 - v18;
  if (*(v1 + 105) == 1)
  {
    v20 = sub_1A5249824();
    v27[0] = v27;
    MEMORY[0x1EEE9AC00](v20);
    v27[1] = a1;
    v27[-2] = v1;
    sub_1A3D6DF58();
    sub_1A3C9AD6C(&qword_1EB121B60, sub_1A3D6DF58);
    sub_1A5247F24();
    v21 = sub_1A3C9AD6C(&qword_1EB124628, sub_1A3F1E8D8);
    MEMORY[0x1A5904CD0](v12, v10, v21);
    (*(v5 + 16))(v15, v7, v4);
    (*(v5 + 56))(v15, 0, 1, v4);
    v30 = v10;
    v31 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v15, v4, OpaqueTypeConformance2);
    sub_1A4138AE8(v15, sub_1A4136C04);
    (*(v5 + 8))(v7, v4);
    (*(v28 + 8))(v12, v10);
  }

  else
  {
    (*(v5 + 56))(v15, 1, 1, v4, v17);
    v23 = sub_1A3C9AD6C(&qword_1EB124628, sub_1A3F1E8D8);
    v30 = v10;
    v31 = v23;
    v24 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v15, v4, v24);
    sub_1A4138AE8(v15, sub_1A4136C04);
  }

  v25 = sub_1A4136C94();
  MEMORY[0x1A5904CD0](v19, v29, v25);
  return sub_1A4138AE8(v19, sub_1A4136C04);
}

uint64_t sub_1A413375C@<X0>(void *a1@<X8>)
{
  result = sub_1A52482A4();
  *a1 = v3;
  return result;
}

uint64_t sub_1A4133788(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeMapView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B24();
  sub_1A4137E80(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMapView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A413895C(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for LemonadeMapView);
  return MEMORY[0x1A5906A80](v7, sub_1A4138B50, v9);
}

uint64_t sub_1A4133904(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137EE8(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeMapView();
  sub_1A4137E80(a1 + *(v13 + 36), v8, sub_1A4137EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

void sub_1A4133B84(uint64_t a1@<X8>)
{
  v109 = a1;
  sub_1A3EC2854();
  v106 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v93 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v92 - v5;
  v111 = sub_1A52486A4();
  v114 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v92 - v8;
  sub_1A3EC1A14();
  v107 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1A524A204();
  v11 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for LemonadeMapView();
  v14 = *(v108 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v108);
  sub_1A41374F8(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41374D0(0);
  v115 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41373C4();
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v94 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A413726C();
  v103 = v25;
  v102 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v99 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41371F8(0, &qword_1EB123F90, sub_1A413726C, sub_1A4137910);
  v92 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v98 = &v92 - v28;
  sub_1A4137168();
  v97 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v105 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137E80(v1, &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMapView);
  v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v32 = swift_allocObject();
  sub_1A413895C(&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for LemonadeMapView);
  v100 = v1;
  v116 = v1;
  sub_1A4137648();
  sub_1A3C9AD6C(&qword_1EB121580, sub_1A4137648);
  sub_1A524B704();
  sub_1A524A0E4();
  v33 = v110;
  (*(v11 + 104))(v13, *MEMORY[0x1E6980EA8], v110);
  sub_1A524A234();

  v34 = v13;
  v35 = v112;
  (*(v11 + 8))(v34, v33);
  sub_1A524A184();
  v36 = sub_1A524A1F4();

  KeyPath = swift_getKeyPath();
  sub_1A4137520();
  v39 = &v19[*(v38 + 36)];
  *v39 = KeyPath;
  v39[1] = v36;
  v40 = v113;
  LOBYTE(v36) = sub_1A524A054();
  sub_1A5247BC4();
  v41 = &v19[*(v17 + 44)];
  *v41 = v36;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  sub_1A524BC74();
  sub_1A5248AD4();
  v46 = v19;
  v47 = v114;
  sub_1A413895C(v46, v22, sub_1A41374F8);
  v48 = *(v115 + 36);
  v110 = v22;
  v49 = &v22[v48];
  v50 = v127;
  *(v49 + 4) = v126;
  *(v49 + 5) = v50;
  *(v49 + 6) = v128;
  v51 = v123;
  *v49 = v122;
  *(v49 + 1) = v51;
  v52 = v125;
  *(v49 + 2) = v124;
  *(v49 + 3) = v52;
  v53 = v47[13];
  v54 = v111;
  v53(v35, *MEMORY[0x1E697E718], v111);
  v53(v40, *MEMORY[0x1E697E728], v54);
  sub_1A3C9AD6C(&qword_1EB1288D0, MEMORY[0x1E697E730]);
  if (sub_1A524C544())
  {
    v55 = v47[4];
    v56 = v101;
    v55(v101, v35, v54);
    v57 = v106;
    v55((v56 + *(v106 + 48)), v40, v54);
    v58 = v93;
    sub_1A4137E80(v56, v93, sub_1A3EC2854);
    v59 = *(v57 + 48);
    v60 = v104;
    v55(v104, v58, v54);
    v61 = v47[1];
    v61(v58 + v59, v54);
    sub_1A413895C(v56, v58, sub_1A3EC2854);
    v62 = *(v57 + 48);
    v63 = v107;
    v55((v60 + *(v107 + 36)), (v58 + v62), v54);
    v61(v58, v54);
    v64 = sub_1A41377E0(&qword_1EB1232E8, sub_1A41374D0, sub_1A41377A4);
    v65 = sub_1A3C9AD6C(&qword_1EB126FC0, sub_1A3EC1A14);
    v66 = v94;
    v67 = v115;
    v68 = v110;
    sub_1A524AB84();
    sub_1A4137E18(v60, sub_1A3EC1A14);
    v69 = sub_1A4137E18(v68, sub_1A41374D0);
    MEMORY[0x1EEE9AC00](v69);
    v70 = v100;
    v118 = v67;
    v119 = v63;
    v120 = v64;
    v121 = v65;
    swift_getOpaqueTypeConformance2();
    v71 = v99;
    v72 = v96;
    sub_1A524AF54();
    (*(v95 + 8))(v66, v72);
    v73 = sub_1A524BC74();
    v75 = v74;
    v76 = v98;
    v77 = &v98[*(v92 + 36)];
    PXDisplayCollectionDetailedCountsMake(v73);
    v78 = *MEMORY[0x1E697F468];
    v79 = sub_1A52494A4();
    (*(*(v79 - 8) + 104))(v77, v78, v79);
    sub_1A3F8C700();
    *&v77[*(v80 + 36)] = 256;
    sub_1A4137910(0);
    v82 = &v77[*(v81 + 36)];
    *v82 = v73;
    v82[1] = v75;
    (*(v102 + 32))(v76, v71, v103);
    sub_1A524B404();
    v83 = sub_1A524B474();

    v84 = v105;
    sub_1A3CDE03C(v76, v105);
    v85 = v84 + *(v97 + 36);
    *v85 = v83;
    *(v85 + 8) = xmmword_1A531CF00;
    *(v85 + 24) = 0x4000000000000000;
    v86 = (v70 + *(v108 + 60));
    v87 = *v86;
    v88 = v86[1];
    LOBYTE(v86) = *(v86 + 16);
    v118 = v87;
    v119 = v88;
    LOBYTE(v120) = v86;
    sub_1A3CA6BB4(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x1A5906C60](&v117);
    LOBYTE(v73) = v117;
    v89 = v109;
    sub_1A4139790(v84, v109, sub_1A4137168);
    sub_1A41370D4();
    v91 = v89 + *(v90 + 36);
    *v91 = 0;
    *(v91 + 8) = v73;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4134894@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4729090();
  *a1 = v3;
  return result;
}

uint64_t sub_1A4134910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137E80(a1, v8, type metadata accessor for LemonadeNavigationDestination);

  return sub_1A487864C(v8, a2, 0, a3);
}

id PXLemonadeMapView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXLemonadeMapView.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXLemonadeMapView();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_1A4134B30(void *a1)
{
  sub_1A3EC2B6C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));

  v6 = [a1 dataSourceManager];
  v7 = [v6 dataSource];

  v8 = [v7 containerCollection];
  if (v8)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v9 = a1;
    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(v5);
  }

  __break(1u);
}

id sub_1A4134E2C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s12PhotosUICore24LemonadeMapConfigurationV2eeoiySbAC_ACtFZ_0()
{
  sub_1A3C52C70(0, &qword_1EB12B160);
  if (sub_1A524DBF4())
  {
    sub_1A52465D4();
  }

  return 0;
}

void sub_1A4134F68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4135028()
{
  if (!qword_1EB123E08)
  {
    sub_1A41350C8();
    sub_1A41381F0(255, &unk_1EB1221A8, sub_1A4135204, &type metadata for LemonadeDismissButtonPreferenceKey, MEMORY[0x1E6980750]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123E08);
    }
  }
}

void sub_1A41350C8()
{
  if (!qword_1EB121D60)
  {
    type metadata accessor for LemonadeMapView();
    sub_1A41351AC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D60);
    }
  }
}

uint64_t type metadata accessor for LemonadeMapView()
{
  result = qword_1EB16E060;
  if (!qword_1EB16E060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A41351AC()
{
  result = qword_1EB16E070;
  if (!qword_1EB16E070)
  {
    type metadata accessor for LemonadeMapView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16E070);
  }

  return result;
}

unint64_t sub_1A4135204()
{
  result = qword_1EB1295D0;
  if (!qword_1EB1295D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1295D0);
  }

  return result;
}

unint64_t sub_1A41352FC()
{
  result = qword_1EB123DF8;
  if (!qword_1EB123DF8)
  {
    sub_1A4134FF0(255);
    sub_1A4135374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123DF8);
  }

  return result;
}

unint64_t sub_1A4135374()
{
  result = qword_1EB123E10;
  if (!qword_1EB123E10)
  {
    sub_1A4135028();
    type metadata accessor for LemonadeMapView();
    sub_1A41351AC();
    swift_getOpaqueTypeConformance2();
    sub_1A4135438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E10);
  }

  return result;
}

unint64_t sub_1A4135438()
{
  result = qword_1EB1221B8;
  if (!qword_1EB1221B8)
  {
    sub_1A41381F0(255, &unk_1EB1221A8, sub_1A4135204, &type metadata for LemonadeDismissButtonPreferenceKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1221B8);
  }

  return result;
}

id _s12PhotosUICore17PXLemonadeMapViewC04makeE012photoLibrary10collection013libraryFilterE4Mode23initialCenterCoordinate18wantsDismissButton0P22NearbyAssetsAffordance010enableGridE0So16UIViewControllerCSo07PHPhotoH0C_So17PHAssetCollectionCSgSo09PXLibrarykeL0VSo22CLLocationCoordinate2DVS3btFZ_0(void *a1, void *a2, uint64_t a3, int a4, char a5, int a6, double a7, double a8)
{
  v43 = a6;
  v42 = a4;
  sub_1A4138EC8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v41 - v18);
  sub_1A4134F68(0, &unk_1EB12A160, 255, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v41 - v21;
  v23 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v41 - v27;
  v49 = 0u;
  v48 = 0u;
  v29 = *(MEMORY[0x1E696F068] + 16);
  v54 = *MEMORY[0x1E696F068];
  v55 = v29;
  v47 = a1;
  v50 = 0;
  v51 = a2;
  v52 = (a2 != 0) & a5;
  v53 = a3;
  v56 = a7;
  v57 = a8;
  v58 = 0;
  v59 = v42;
  v60 = v43;
  sub_1A3EED680(&v47, &v41 - v27);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LemonadePhotoLibraryContext();
  v30 = a1;
  v31 = a2;
  v32 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v30, 0, 0);
  type metadata accessor for LemonadeNavigationContext(0);
  sub_1A4137E80(v28, v25, type metadata accessor for LemonadeNavigationDestination);
  v33 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v33 - 8) + 56))(v22, 1, 1, v33);

  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v46);
  v34 = sub_1A3C799F0(v25, 0, 0, 0, v22, &v46, v32, 2);
  v44 = v28;
  v45 = v34;
  type metadata accessor for LemonadeNavigationDestinationView();
  sub_1A3C9AD6C(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);

  LemonadeNavigationContainer.init(navigationContext:content:)(v35, sub_1A4138F5C, v19);
  sub_1A4137E80(v19, v16, sub_1A4138EC8);
  sub_1A4138F64();
  v37 = objc_allocWithZone(v36);
  v38 = sub_1A5249624();
  [v38 setModalPresentationStyle_];
  v39 = v38;
  sub_1A3C7A150(v38);

  sub_1A4137E18(v19, sub_1A4138EC8);
  sub_1A3EED784(&v47);
  sub_1A4137E18(v28, type metadata accessor for LemonadeNavigationDestination);
  return v39;
}

unint64_t sub_1A4135934()
{
  result = qword_1EB132EE0;
  if (!qword_1EB132EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132EE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s12Identifiable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy123_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1A41359E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 123))
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

uint64_t sub_1A4135A30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 122) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 123) = 1;
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

    *(result + 123) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A4135AA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_1A4135AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A4135B4C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1A4135B84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A4135BCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A4135C6C()
{
  result = qword_1EB123A50;
  if (!qword_1EB123A50)
  {
    sub_1A4136200(255, &qword_1EB123A48, sub_1A41352B4);
    sub_1A3C9AD6C(&qword_1EB1217C8, sub_1A41352B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123A50);
  }

  return result;
}

void sub_1A4135D68()
{
  sub_1A3C52C70(319, &qword_1EB126AC0);
  if (v0 <= 0x3F)
  {
    sub_1A4134F68(319, &qword_1EB124730, 255, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A4134F68(319, &unk_1EB1247C0, 255, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A4134F68(319, &unk_1EB1246F0, 255, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A4135FDC(319, &qword_1EB124770, &unk_1EB125548, &type metadata for LemonadeDetailsNavigationType, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A3CA6BB4(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1A3CA6BB4(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1A3CA6BB4(319, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
                if (v7 <= 0x3F)
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
}

void sub_1A4135FDC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3CA6BB4(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A41360BC()
{
  if (!qword_1EB132F60)
  {
    sub_1A4136150();
    sub_1A3C9AD6C(&qword_1EB132FC8, sub_1A4136150);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132F60);
    }
  }
}

void sub_1A4136150()
{
  if (!qword_1EB132F68)
  {
    sub_1A4136AB4(255, &unk_1EB132F70, sub_1A41361D8, sub_1A41364F8);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132F68);
    }
  }
}

void sub_1A4136200(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A4136264()
{
  if (!qword_1EB1215B0)
  {
    sub_1A41362F8();
    sub_1A3C9AD6C(&qword_1EB121358, sub_1A41362F8);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1215B0);
    }
  }
}

void sub_1A41362F8()
{
  if (!qword_1EB121348)
  {
    sub_1A4136608(255, &qword_1EB1257E0, sub_1A4136374);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121348);
    }
  }
}

void sub_1A4136374()
{
  if (!qword_1EB121728)
  {
    sub_1A4136408(255);
    sub_1A3C9AD6C(&qword_1EB1211B0, sub_1A4136408);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121728);
    }
  }
}

void sub_1A4136440()
{
  if (!qword_1EB123928)
  {
    sub_1A41364A8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB123928);
    }
  }
}

void sub_1A41364F8()
{
  if (!qword_1EB132F80)
  {
    sub_1A413658C();
    sub_1A3C9AD6C(&qword_1EB132FC0, sub_1A413658C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132F80);
    }
  }
}

void sub_1A413658C()
{
  if (!qword_1EB132F88)
  {
    sub_1A4136608(255, &qword_1EB132F90, sub_1A4136674);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132F88);
    }
  }
}

void sub_1A4136608(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4136674()
{
  if (!qword_1EB132F98)
  {
    sub_1A4136708(255);
    sub_1A3C9AD6C(&qword_1EB132FB8, sub_1A4136708);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB132F98);
    }
  }
}

void sub_1A4136740()
{
  if (!qword_1EB132FA8)
  {
    sub_1A4137ABC(255, &qword_1EB124280, &type metadata for MapOptions, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB132FA8);
    }
  }
}

unint64_t sub_1A4136808()
{
  result = qword_1EB132FE0;
  if (!qword_1EB132FE0)
  {
    sub_1A41367D4(255);
    sub_1A3C9AD6C(&unk_1EB132FE8, sub_1A41360BC);
    sub_1A3C9AD6C(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132FE0);
  }

  return result;
}

void sub_1A41368E8()
{
  if (!qword_1EB132FF8)
  {
    sub_1A4136B78(255, &qword_1EB132FD8, sub_1A41367D4, sub_1A4136808);
    sub_1A4136A2C();
    sub_1A41367D4(255);
    sub_1A4136808();
    swift_getOpaqueTypeConformance2();
    sub_1A3C9AD6C(&qword_1EB133060, sub_1A4136A2C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132FF8);
    }
  }
}

void sub_1A4136A2C()
{
  if (!qword_1EB133000)
  {
    sub_1A4136AB4(255, &qword_1EB133008, sub_1A4136B30, sub_1A4136D6C);
    v0 = sub_1A52495C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133000);
    }
  }
}

void sub_1A4136AB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4136B78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A4136C04()
{
  if (!qword_1EB133018)
  {
    sub_1A4136EB8(255, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133018);
    }
  }
}

unint64_t sub_1A4136C94()
{
  result = qword_1EB133020;
  if (!qword_1EB133020)
  {
    sub_1A4136C04();
    sub_1A3F1E8D8();
    sub_1A3C9AD6C(&qword_1EB124628, sub_1A3F1E8D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133020);
  }

  return result;
}

void sub_1A4136DA4()
{
  if (!qword_1EB133030)
  {
    sub_1A4136EB8(255, &qword_1EB133038, sub_1A4136F6C, &qword_1EB133058, sub_1A4136F6C);
    sub_1A4136F6C();
    sub_1A3C9AD6C(&qword_1EB133058, sub_1A4136F6C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133030);
    }
  }
}

void sub_1A4136EB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3C9AD6C(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A4136F6C()
{
  if (!qword_1EB133040)
  {
    sub_1A413700C(255);
    sub_1A3C9AD6C(&qword_1EB133050, sub_1A413700C);
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133040);
    }
  }
}

void sub_1A4137054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A41370D4()
{
  if (!qword_1EB123400)
  {
    sub_1A4137168();
    sub_1A4137ABC(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123400);
    }
  }
}

void sub_1A4137168()
{
  if (!qword_1EB123808)
  {
    sub_1A41371F8(255, &qword_1EB123F90, sub_1A413726C, sub_1A4137910);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123808);
    }
  }
}

void sub_1A41371F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A413726C()
{
  if (!qword_1EB121DE8)
  {
    sub_1A41373C4();
    sub_1A41374D0(255);
    sub_1A3EC1A14();
    sub_1A41377E0(&qword_1EB1232E8, sub_1A41374D0, sub_1A41377A4);
    sub_1A3C9AD6C(&qword_1EB126FC0, sub_1A3EC1A14);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DE8);
    }
  }
}

void sub_1A41373C4()
{
  if (!qword_1EB121E50)
  {
    sub_1A41374D0(255);
    sub_1A3EC1A14();
    sub_1A41377E0(&qword_1EB1232E8, sub_1A41374D0, sub_1A41377A4);
    sub_1A3C9AD6C(&qword_1EB126FC0, sub_1A3EC1A14);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E50);
    }
  }
}

void sub_1A4137520()
{
  if (!qword_1EB123C68)
  {
    sub_1A41375B4();
    sub_1A4135FDC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123C68);
    }
  }
}

void sub_1A41375B4()
{
  if (!qword_1EB121A50)
  {
    sub_1A4137648();
    sub_1A3C9AD6C(&qword_1EB121580, sub_1A4137648);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121A50);
    }
  }
}

void sub_1A4137648()
{
  if (!qword_1EB121578)
  {
    sub_1A41376DC(255);
    sub_1A3C9AD6C(&qword_1EB121258, sub_1A41376DC);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121578);
    }
  }
}

void sub_1A4137714()
{
  if (!qword_1EB124058)
  {
    sub_1A4137ABC(255, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124058);
    }
  }
}

uint64_t sub_1A41377E0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4137860()
{
  result = qword_1EB123C78;
  if (!qword_1EB123C78)
  {
    sub_1A4137520();
    sub_1A3C9AD6C(&qword_1EB121A60, sub_1A41375B4);
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123C78);
  }

  return result;
}

void sub_1A4137958()
{
  if (!qword_1EB1241F0)
  {
    sub_1A3F8C700();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1241F0);
    }
  }
}

unint64_t sub_1A41379B8()
{
  result = qword_1EB1241F8;
  if (!qword_1EB1241F8)
  {
    sub_1A4137958();
    sub_1A4137A68();
    sub_1A3C9AD6C(&qword_1EB1245F0, sub_1A3F8C700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1241F8);
  }

  return result;
}

unint64_t sub_1A4137A68()
{
  result = qword_1EB1255F0;
  if (!qword_1EB1255F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1255F0);
  }

  return result;
}

void sub_1A4137ABC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A4137B10()
{
  result = qword_1EB123408;
  if (!qword_1EB123408)
  {
    sub_1A41370D4();
    sub_1A41377E0(&qword_1EB123810, sub_1A4137168, sub_1A4137BC8);
    sub_1A3E734D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123408);
  }

  return result;
}

unint64_t sub_1A4137BC8()
{
  result = qword_1EB123F98;
  if (!qword_1EB123F98)
  {
    sub_1A41371F8(255, &qword_1EB123F90, sub_1A413726C, sub_1A4137910);
    sub_1A41373C4();
    sub_1A41374D0(255);
    sub_1A3EC1A14();
    sub_1A41377E0(&qword_1EB1232E8, sub_1A41374D0, sub_1A41377A4);
    sub_1A3C9AD6C(&qword_1EB126FC0, sub_1A3EC1A14);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C9AD6C(&qword_1EB122D70, sub_1A4137910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F98);
  }

  return result;
}

void sub_1A4137DAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A4137E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4137E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4137F20()
{
  type metadata accessor for LemonadeMapView();
  sub_1A3CA6BB4(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A4137FDC()
{
  if (!qword_1EB133070)
  {
    sub_1A413807C();
    sub_1A41381F0(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133070);
    }
  }
}