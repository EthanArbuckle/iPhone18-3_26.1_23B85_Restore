void sub_1A45A27E8(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_1A524CA14();
  v6 = sub_1A524C634();
  v7 = [v4 transientCollectionListWithCollections:v5 title:v6 identifier:0 photoLibrary:*(a2 + 16)];

  v8 = *(a2 + 24);
  sub_1A459EC38(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = 2;
  v9 = v7;
  v10 = v8;
  sub_1A3C6C180(&v17);
  v25 = v17;
  v26 = v18;
  sub_1A3C6C18C(&v23);
  v21 = v23;
  v22 = v24;
  LOBYTE(v7) = sub_1A3C5A374();
  v11 = sub_1A3C30368();
  v12 = sub_1A3C5A374();
  v13 = sub_1A3C5A374();
  v14 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v25, 0, &unk_1F17170C0, 0, 1, &v21, v7 & 1, &v27, v20, v11, v12 & 1, v13 & 1, v14 & 1, 0);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a1;

  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v9, v8, v28, v20, &v17, sub_1A45A2A28, v15);
}

id sub_1A45A2A28()
{
  v1 = *(v0 + 24);
  sub_1A459EC38(0, &qword_1EB12A020, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v2 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v3 = sub_1A45A6D74(v1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    sub_1A3C48B8C(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52F8E10;
    *(v6 + 56) = sub_1A3C52C70(0, &qword_1EB126AC0);
    *(v6 + 32) = v4;
    v7 = v4;
    v8 = sub_1A524CA14();

    v9 = [v5 transientCollectionListWithCollections:v8 title:0 identifier:0];

    sub_1A3C52C70(0, &qword_1EB120A70);
    v10 = [swift_getObjCClassFromMetadata() fetchCollectionsInCollectionList:v9 options:v2];
  }

  else
  {

    return 0;
  }

  return v10;
}

uint64_t sub_1A45A2BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v33 = *MEMORY[0x1E69E9840];
  v3 = sub_1A5244EE4();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A3C38BD4();
  v29 = v8;
  v30 = v7;
  v32 = 8;
  v27 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  v28 = v9;
  v10 = MEMORY[0x1E69C12C8];
  sub_1A459E8C0(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
  v11 = *(v4 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = v12 + 2 * v11;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A52FC9F0;
  v15 = v14 + v12;
  v16 = *(v5 + 104);
  v16(v15, *MEMORY[0x1E69C12A8], v3);
  v16(v15 + v11, *MEMORY[0x1E69C12C0], v3);
  v17 = v26;
  v16(v26, *MEMORY[0x1E69C12A0], v3);
  v18 = sub_1A45A6954(1uLL, 3, 1, v14, &qword_1EB126230, v10, MEMORY[0x1E69C12C8]);
  *(v18 + 16) = 3;
  v19 = (*(v5 + 32))(v13 + v18, v17, v3);
  v20 = MEMORY[0x1A590D320](v19);
  v21 = v30;
  *a2 = v31;
  *(a2 + 8) = 1;
  v22 = v29;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22;
  v24 = v27;
  v23 = v28;
  *(a2 + 32) = v18;
  *(a2 + 40) = v24;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = v23;
  *(a2 + 72) = v20 ^ 1;
  type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A45A2EA4@<X0>(uint64_t a1@<X8>)
{
  sub_1A459E8C0(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {

    return sub_1A42E7F0C(2, 1, 2, a1);
  }

  else
  {
    v9 = sub_1A3C47918();
    v11 = v10;
    v12 = sub_1A3C47918();
    v14 = v13;
    v15 = sub_1A3C52D68();
    v17 = v16;
    v21 = a1;
    v19 = v18;
    v20 = sub_1A3C4ED50();
    v22 = 1;
    *v7 = sub_1A45A3090;
    *(v7 + 1) = 0;
    v7[16] = 2;
    *(v7 + 3) = 6;
    v7[32] = 1;
    *(v7 + 5) = v9;
    *(v7 + 6) = v11;
    *(v7 + 7) = v12;
    *(v7 + 8) = v14;
    *(v7 + 9) = v15;
    *(v7 + 10) = v17;
    v7[88] = v19;
    v7[89] = v20;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v4);
    return sub_1A3C52D78(v7, 2, v4, v21);
  }
}

uint64_t sub_1A45A3090(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F8])
  {
    return 7;
  }

  if (v7 == *MEMORY[0x1E69C2210])
  {
    return 0;
  }

  (*(v3 + 8))(v6, v2);
  return 1;
}

uint64_t sub_1A45A31C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CGSize(0);
  sub_1A524B694();
  *(a2 + 24) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v4 = *(type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0) + 40);
  *(a2 + v4) = swift_getKeyPath();
  sub_1A459E8C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = 1;
}

void sub_1A45A3600(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = type metadata accessor for LemonadeNavigationDestination();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  if (sub_1A3DBEE68(a2 & 1, 0))
  {
    v19[3] = a5;
    sub_1A45A2BDC(a3, v15);
    sub_1A45A986C(v15, v12, type metadata accessor for LemonadeNavigationDestination);
    v16 = sub_1A45A6954(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1A45A6954(v17 > 1, v18 + 1, 1, v16, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
    }

    sub_1A45A74A4(v15, type metadata accessor for LemonadeNavigationDestination);
    v16[2] = v18 + 1;
    sub_1A45A6F90(v12, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, type metadata accessor for LemonadeNavigationDestination);
  }

  sub_1A45A32B8();
}

uint64_t sub_1A45A3968()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459E8C0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  sub_1A5242E54();
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  v7 = sub_1A52429A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

uint64_t sub_1A45A3B90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 px_isMemoriesVirtualCollection])
  {
    sub_1A45A2BDC(a2, a3);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for LemonadeNavigationDestination();
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, v5, 1, v6);
}

uint64_t sub_1A45A3C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A45A2BDC(a1, a2);
  v3 = type metadata accessor for LemonadeNavigationDestination();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_1A45A3CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3C6F83C(&qword_1EB12A7D8, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A45A3D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v4 = *(type metadata accessor for LemonadeMemoriesFeature.MemoriesPlaceHolderView(0) + 24);
  v5 = sub_1A5244EE4();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *a2 = v3;
  *(a2 + 8) = 1;
}

unint64_t sub_1A45A3E0C(uint64_t a1)
{
  v2 = sub_1A3C411C8();

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A45A3E48()
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A459ECA0(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A45A3EF4()
{
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A459ECA0(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
  return sub_1A524C4B4();
}

uint64_t sub_1A45A3F84()
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A459ECA0(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

id sub_1A45A4030()
{
  v1 = [*(*v0 + 16) px_virtualCollections];
  v2 = [v1 memoriesCollection];

  return v2;
}

void sub_1A45A408C(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeMemoriesFeature.FeedProvider(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v1 + 16);
  v7 = *(*v1 + 40);
  v9 = *(v8 + 24);
  v10 = sub_1A5244EE4();
  (*(*(v10 - 8) + 16))(&v5[v9], a1, v10);
  *v5 = v6;
  *(v5 + 1) = v7;
  sub_1A459ECA0(&qword_1EB12A0A8, type metadata accessor for LemonadeMemoriesFeature.FeedProvider);
  sub_1A3C6F83C(&qword_1EB12A7D8, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem);
  v11 = v6;
  v12 = v7;
  sub_1A4997A44(v5);
}

uint64_t sub_1A45A4230()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A459ECA0(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524ECB4();
  if (*(v0 + 24))
  {
    sub_1A524ECB4();
    sub_1A524C794();
  }

  else
  {
    sub_1A524ECB4();
  }

  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  MEMORY[0x1A590A010](v2);
  if (v2)
  {
    v3 = *(sub_1A5244EE4() - 8);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    sub_1A459ECA0(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
    do
    {
      sub_1A524C4B4();
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  sub_1A524C794();
  sub_1A3F3D084();
  return sub_1A524C4B4();
}

uint64_t sub_1A45A441C()
{
  sub_1A524EC94();
  sub_1A45A4230();
  return sub_1A524ECE4();
}

uint64_t sub_1A45A4460()
{
  sub_1A524EC94();
  sub_1A45A4230();
  return sub_1A524ECE4();
}

uint64_t sub_1A45A449C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1A45A6C78(v7, v9) & 1;
}

uint64_t sub_1A45A44F8()
{
  v1 = sub_1A5244EE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeMemoriesFeature.FeedProvider(0);
  (*(v2 + 16))(v4, v0 + *(v5 + 24), v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 != *MEMORY[0x1E69C12A8] && v6 != *MEMORY[0x1E69C12C0] && v6 != *MEMORY[0x1E69C12B8] && v6 != *MEMORY[0x1E69C12B0])
  {
    if (v6 == *MEMORY[0x1E69C12A0])
    {
      v7 = sub_1A524C634();
      v8 = PXMemoryCreationLocalizedString(v7);

      v9 = sub_1A524C674();
      return v9;
    }

    (*(v2 + 8))(v4, v1);
  }

  return sub_1A3C38BD4();
}

uint64_t sub_1A45A4708@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 8))
  {
    v6 = sub_1A437C79C();
    return sub_1A45A986C(v6, a1, type metadata accessor for LemonadeFeedBodyStyle);
  }

  else
  {
    v8 = sub_1A3C47918();
    v10 = v9;
    v11 = sub_1A3C47918();
    v13 = v12;
    v14 = sub_1A3C52D68();
    v16 = v15;
    v18 = v17;
    v19 = sub_1A3C4ED50();
    v22[8] = 1;
    *v5 = sub_1A45A4864;
    *(v5 + 1) = 0;
    v5[16] = 2;
    *(v5 + 3) = 6;
    v5[32] = 1;
    *(v5 + 5) = v8;
    *(v5 + 6) = v10;
    *(v5 + 7) = v11;
    *(v5 + 8) = v13;
    *(v5 + 9) = v14;
    *(v5 + 10) = v16;
    v5[88] = v18;
    v5[89] = v19;
    swift_storeEnumTagMultiPayload();
    v20 = sub_1A3DC1AF8();
    return sub_1A437C3B8(v5, 3, v20, v21 & 1, a1);
  }
}

uint64_t sub_1A45A4864()
{
  if (shouldUseNewCollectionsLayout()())
  {
    return 41;
  }

  else
  {
    return 14;
  }
}

uint64_t sub_1A45A4890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v40 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A52486A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5242D14();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x1E69C2210], v11, v13);
  sub_1A459ECA0(&qword_1EB129148, MEMORY[0x1E69C2218]);
  v16 = sub_1A524C594();
  v17 = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) != 0 || (MEMORY[0x1EEE9AC00](v17), *(&v40 - 2) = a1, sub_1A3F2A5C4(v10), v18 = sub_1A41875F0(sub_1A45A7504, (&v40 - 4), a1, v10), (*(v8 + 8))(v10, v7), (v18 & 1) == 0))
  {
    if (*(v3 + 8))
    {
      v32 = sub_1A437C79C();
      return sub_1A45A986C(v32, v41, type metadata accessor for LemonadeFeedBodyStyle);
    }

    v19 = sub_1A3C47918();
    v21 = v34;
    v22 = sub_1A3C47918();
    v24 = v35;
    v25 = sub_1A3C52D68();
    v27 = v36;
    v29 = v37;
    v30 = sub_1A3C4ED50();
    v43 = 1;
    v31 = sub_1A45A4864;
  }

  else
  {
    v19 = sub_1A43A1980(12.0);
    v21 = v20;
    v22 = sub_1A43A1980(32.0);
    v24 = v23;
    v25 = sub_1A3C52D68();
    v27 = v26;
    v29 = v28;
    v30 = sub_1A3C4ED50();
    v42 = 1;
    v31 = sub_1A45A4C40;
  }

  *v6 = v31;
  *(v6 + 1) = 0;
  v6[16] = 2;
  *(v6 + 3) = 6;
  v6[32] = 1;
  *(v6 + 5) = v19;
  *(v6 + 6) = v21;
  *(v6 + 7) = v22;
  *(v6 + 8) = v24;
  *(v6 + 9) = v25;
  *(v6 + 10) = v27;
  v6[88] = v29;
  v6[89] = v30;
  swift_storeEnumTagMultiPayload();
  v38 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v6, 3, v38, v39 & 1, v41);
}

uint64_t sub_1A45A4C40(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C2200] || v7 == *MEMORY[0x1E69C21F8])
  {
    return 16;
  }

  (*(v3 + 8))(v6, v2);
  return 13;
}

uint64_t sub_1A45A4D8C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() defaultHelper];
  [v2 clearAnyPendingNotificationsFromMemories_];
  [v2 clearAnyPendingStateFromMemories_];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A45A4E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF80(0, &qword_1EB13E130, sub_1A45A7620, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell, MEMORY[0x1E697F948]);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1A5243284();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A7620();
  v30 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + 8);
  if (v18)
  {
    v19 = *MEMORY[0x1E69E7D40] & *v18;
    v28 = v4;
    v20 = *(v19 + 1344);
    v27 = v18;
    v20();
    *&v34 = a1;

    sub_1A5242E44();
    v26 = v21;
    (*(v11 + 104))(v13, *MEMORY[0x1E69C23E0], v10);

    sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
    sub_1A3F93438();
    sub_1A5243EC4();
    sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438);
    sub_1A459ECA0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5242AA4();
    v22 = v30;
    (*(v15 + 16))(v9, v17, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E140, sub_1A45A7620);
    sub_1A459ECA0(&qword_1EB12A0C0, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
    sub_1A5249744();

    return (*(v15 + 8))(v17, v22);
  }

  else
  {
    type metadata accessor for CGSize(0);
    v32 = 0;
    v33 = 0;
    sub_1A524B694();
    v24 = v35;
    *(v6 + 24) = v34;
    *(v6 + 5) = v24;
    *(v6 + 6) = swift_getKeyPath();
    v6[56] = 0;
    v25 = *(v4 + 40);
    *&v6[v25] = swift_getKeyPath();
    sub_1A459E8C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    *v6 = a1;
    *(v6 + 1) = 0;
    v6[16] = 1;
    *(v6 + 17) = 257;
    sub_1A45A986C(v6, v9, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E140, sub_1A45A7620);
    sub_1A459ECA0(&qword_1EB12A0C0, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);

    sub_1A5249744();
    return sub_1A45A74A4(v6, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  }
}

uint64_t sub_1A45A5440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42[1] = a1;
  v45 = a2;
  sub_1A424ADF0();
  v48 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424AE74();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A7714();
  v47 = v10;
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1A45A77C8();
  v14 = v13;
  v42[0] = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A7868(0);
  v46 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMemoryCreationEnabled] && (sub_1A3C52C70(0, &qword_1EB126860), v20 = objc_msgSend(swift_getObjCClassFromMetadata(), sel_sharedInstance), v21 = objc_msgSend(v20, sel_showFreeformMemoryCreationButtonInMemoryFeed), v20, v21))
  {
    v22 = [objc_opt_self() currentDevice];
    v23 = [v22 userInterfaceIdiom];

    if (v23 == 1 || (sub_1A3C52C70(0, &qword_1EB126A10), v24 = [swift_getObjCClassFromMetadata() sharedInstance], v25 = objc_msgSend(v24, sel_defaultPhoneFeedNavigationType), v24, v25))
    {
      sub_1A5249834();
    }

    else
    {
      sub_1A5249824();
    }

    v26 = v45;
    type metadata accessor for LemonadeMemoriesCreationButton();
    sub_1A459ECA0(&qword_1EB1297B0, type metadata accessor for LemonadeMemoriesCreationButton);
    sub_1A5247F24();
    v27 = sub_1A459ECA0(&unk_1EB128A20, sub_1A45A77C8);
    v28 = v43;
    MEMORY[0x1A5904CD0](v16, v14, v27);
    v49 = v14;
    v50 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = sub_1A45A8E5C(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0);
    v49 = v7;
    v50 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    v32 = v47;
    MEMORY[0x1A5904CE0](v28, v47, v48, OpaqueTypeConformance2, v31);
    (*(v44 + 8))(v28, v32);
    (*(v42[0] + 8))(v16, v14);
  }

  else
  {
    sub_1A3F930BC();
    (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
    v34 = sub_1A45A8E5C(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0);
    MEMORY[0x1A5904CD0](v9, v7, v34);
    v35 = sub_1A459ECA0(&unk_1EB128A20, sub_1A45A77C8);
    v49 = v14;
    v50 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v49 = v7;
    v50 = v34;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = v48;
    MEMORY[0x1A5904CF0](v5, v47, v48, v36, v37);
    (*(v3 + 8))(v5, v38);
    sub_1A45A74A4(v9, sub_1A424AE74);
    v26 = v45;
  }

  v39 = sub_1A45A78B0();
  MEMORY[0x1A5904CD0](v19, v46, v39);
  sub_1A45A94FC(v19, sub_1A45A7868);
  sub_1A45A7A00();
  return (*(*(v40 - 8) + 56))(v26, 0, 1, v40);
}

id sub_1A45A5B5C(uint64_t a1)
{
  sub_1A44CB134(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_1A52453A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMemoryCreationEnabled];
  if (result)
  {
    v13 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 56);
    if (v13)
    {
      v14 = *(*v13 + 192);

      v14(v15);
      (*(v9 + 56))(v4, 0, 1, v8);
      sub_1A475C0F0(v4, v7);
      sub_1A45A74A4(v4, sub_1A44CB134);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {

        sub_1A45A74A4(v7, sub_1A44CB134);
      }

      else
      {
        (*(v9 + 32))(v11, v7, v8);
        v16 = sub_1A475C3A0(v11);

        (*(v9 + 8))(v11, v8);
        if (v16)
        {
          return (*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext) < 2u);
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1A45A5DEC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1;
  v3 = a2;
  sub_1A5245BA4();
}

uint64_t sub_1A45A6194()
{
  MEMORY[0x1A5907B60](0x736569726F6D656DLL, 0xE90000000000002DLL);
  sub_1A5244EE4();
  sub_1A524E624();
  return 0;
}

uint64_t sub_1A45A6224(uint64_t a1)
{
  v3 = sub_1A5244EE4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + *(a1 + 24), v3, v5);
  if ((*(v4 + 88))(v7, v3) == *MEMORY[0x1E69C12A0])
  {
    return 7169887;
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

void sub_1A45A6398(uint64_t a1)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*a1 + 24);
  if (v5)
  {
    v6 = v5;
    sub_1A524CC64();
    v7 = sub_1A524CCB4();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_1A3D4D930(0, 0, v4, &unk_1A534D110, v8);
  }
}

uint64_t sub_1A45A64D8@<X0>(uint64_t a1@<X8>)
{

  return sub_1A3FF28EC(v2, a1);
}

uint64_t sub_1A45A6510@<X0>(void *a1@<X8>)
{
  MEMORY[0x1A5907B60](0x736569726F6D656DLL, 0xE90000000000002DLL);
  sub_1A5244EE4();
  result = sub_1A524E624();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

id sub_1A45A65A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v8 = *v2;
  v4 = *(a1 + 24);
  v5 = *(type metadata accessor for LemonadeMemoriesFeature.MemoriesListManagerOptions(0) + 20);
  v6 = sub_1A5244EE4();
  (*(*(v6 - 8) + 16))(&a2[v5], v2 + v4, v6);
  *a2 = v8;

  return v8;
}

uint64_t sub_1A45A6654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v7 = *(type metadata accessor for LemonadeMemoriesFeature.MemoriesPlaceHolderView(0) + 24);
  v8 = *(a2 + 24);
  v9 = sub_1A5244EE4();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a3 + v7, v3 + v8, v9);
  (*(v10 + 56))(a3 + v7, 0, 1, v9);
  *a3 = v6;
  *(a3 + 8) = 0;
}

uint64_t sub_1A45A6740()
{
  sub_1A459ECA0(&qword_1EB12A0A0, type metadata accessor for LemonadeMemoriesFeature.FeedProvider);

  return sub_1A3C47918();
}

id sub_1A45A67AC()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 memoriesCollection];

  return v2;
}

void sub_1A45A6804()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B4D0);
  __swift_project_value_buffer(v0, qword_1EB15B4D0);
  sub_1A5246EF4();
}

uint64_t PXStoryTitleInternationalStyle.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 0x6164696873616BLL;
    case 1:
      return 0x6C61636974726576;
  }

  v2 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v2);

  MEMORY[0x1A5907B60](62, 0xE100000000000000);
  return 0x6E776F6E6B6E753CLL;
}

size_t sub_1A45A6954(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A459E8C0(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1A45A6B48()
{
  sub_1A3C52C70(0, &qword_1EB12B160);
  if (sub_1A524DBF4())
  {
    type metadata accessor for LemonadeMemoriesFeature.MemoriesListManagerOptions(0);
    sub_1A5244EE4();
    sub_1A459ECA0(&qword_1EB128F98, MEMORY[0x1E69C12C8]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v4 == v2 && v5 == v3)
    {
      v0 = 1;
    }

    else
    {
      v0 = sub_1A524EAB4();
    }
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1A45A6C78(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext();
  if (static LemonadePhotoLibraryContext.== infix(_:_:)(*a1, *a2) & 1) == 0 || ((*(a1 + 8) ^ *(a2 + 8)))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6 || (*(a1 + 16) != *(a2 + 16) || v5 != v6) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((sub_1A4333BDC(*(a1 + 32), *(a2 + 32)) & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a1 + 72);

  return sub_1A457F668(v7, v8, v12, v9, v10, v11);
}

id sub_1A45A6D74(uint64_t a1, void *a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 setFetchLimit_];
  v9 = *(a1 + 16);
  (*(v5 + 104))(v8, *MEMORY[0x1E69C12A8], v4);
  sub_1A5244EF4();
  swift_allocObject();
  v10 = v9;
  v11 = a2;
  sub_1A5244ED4();
  sub_1A5244B94();
  v12 = sub_1A5244B84();
  v13 = [v12 firstObject];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v13 options:v11];
    if (v15)
    {
      v16 = v15;
      v17 = [v10 px_virtualCollections];
      v18 = [v17 featuredMemoriesCollectionsWithAssetFetchResult_];

      return v18;
    }
  }

  return 0;
}

uint64_t sub_1A45A6F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45A6FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45A986C(a1, v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 9)
  {
    v12 = *(a2 + 16);
    (*(v5 + 104))(v7, *MEMORY[0x1E69C12B0], v4);
    sub_1A3C6BD20(v12, a2, v7, 1, 0);
  }

  if (!EnumCaseMultiPayload)
  {
    v13 = *v10;
    v14 = v10[1];
    v15 = objc_opt_self();
    v16 = sub_1A524CA14();
    v17 = [v15 transientCollectionListWithCollections:v16 title:0 identifier:0 photoLibrary:*(a2 + 16)];

    v18 = *(a2 + 24);
    sub_1A459EC38(0, &qword_1EB129F88, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager);
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    v39 = 2;
    v19 = v17;
    v20 = v18;
    sub_1A3C6C180(&v28);
    v37 = v28;
    v38 = v29;
    sub_1A3C6C18C(&v35);
    v33 = v35;
    v34 = v36;
    LOBYTE(v17) = sub_1A3C5A374();
    v21 = sub_1A3C30368();
    v22 = sub_1A3C5A374();
    v23 = sub_1A3C5A374();
    v24 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v37, 0, &unk_1F1717110, 0, 1, &v33, v17 & 1, &v39, &v31, v21, v22 & 1, v23 & 1, v24 & 1, 0);
    v29 = 0;
    v28 = 0;
    v30 = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = v13;
    *(v25 + 24) = v14;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v19, v18, v40, &v31, &v28, sub_1A45A9334, v25);
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1A524E404();

  v31 = 0xD00000000000001BLL;
  v32 = 0x80000001A53B42A0;
  sub_1A459ECA0(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v26 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v26);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A45A74A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A45A7504@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for LemonadeFeedStyleOptions(0);
  *a1 = *(v3 + *(result + 20));
  return result;
}

void sub_1A45A753C(void **a1, uint64_t a2)
{
  if ([objc_opt_self() isMemoryCreationEnabled])
  {
    v4 = *(a2 + 56);
    if (v4)
    {
      sub_1A524CC54();

      sub_1A3C67884(sub_1A45A92E4, v4);
    }
  }

  v5 = *a1;
  v6 = a1 + *(type metadata accessor for LemonadeMemoriesFeature.MemoriesListManagerOptions(0) + 20);

  sub_1A3C6BD20(v5, a2, v6, 0, 1);
}

void sub_1A45A7620()
{
  if (!qword_1EB13E138)
  {
    sub_1A3F93438();
    sub_1A5243EC4();
    sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438);
    sub_1A459ECA0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    v0 = sub_1A5242A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E138);
    }
  }
}

void sub_1A45A7714()
{
  if (!qword_1EB127CA0)
  {
    sub_1A45A77C8();
    sub_1A459ECA0(&unk_1EB128A20, sub_1A45A77C8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127CA0);
    }
  }
}

void sub_1A45A77C8()
{
  if (!qword_1EB128A18)
  {
    type metadata accessor for LemonadeMemoriesCreationButton();
    sub_1A459ECA0(&qword_1EB1297B0, type metadata accessor for LemonadeMemoriesCreationButton);
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128A18);
    }
  }
}

unint64_t sub_1A45A78B0()
{
  result = qword_1EB127D78;
  if (!qword_1EB127D78)
  {
    sub_1A45A7868(255);
    sub_1A45A77C8();
    sub_1A459ECA0(&unk_1EB128A20, sub_1A45A77C8);
    swift_getOpaqueTypeConformance2();
    sub_1A424AE74();
    sub_1A45A8E5C(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127D78);
  }

  return result;
}

void sub_1A45A7A00()
{
  if (!qword_1EB127CA8)
  {
    sub_1A45A7868(255);
    sub_1A45A78B0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127CA8);
    }
  }
}

uint64_t sub_1A45A7A84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 56);

  return sub_1A41DEA74(v4, v3, a1);
}

unint64_t sub_1A45A7AEC()
{
  result = qword_1EB13E148;
  if (!qword_1EB13E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E148);
  }

  return result;
}

uint64_t sub_1A45A7B5C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A459EC38(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45A7C18(uint64_t a1)
{
  result = sub_1A3C411C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A45A7CC4()
{
  result = qword_1EB13E158;
  if (!qword_1EB13E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E158);
  }

  return result;
}

uint64_t sub_1A45A7D18(uint64_t a1)
{
  *(a1 + 8) = sub_1A459ECA0(&qword_1EB12A0A0, type metadata accessor for LemonadeMemoriesFeature.FeedProvider);
  result = sub_1A459ECA0(&qword_1EB12A0B8, type metadata accessor for LemonadeMemoriesFeature.FeedProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A45A7F44(uint64_t a1)
{
  result = sub_1A459ECA0(&qword_1EB12A0B0, type metadata accessor for LemonadeMemoriesFeature.FeedProvider);
  *(a1 + 8) = result;
  return result;
}

void sub_1A45A8054()
{
  sub_1A3F93438();
  if (v0 <= 0x3F)
  {
    sub_1A3C48B8C(319, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A459E8C0(319, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A3C48B8C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A459E8C0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A45A8218()
{
  result = sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v1 <= 0x3F)
  {
    result = sub_1A5244EE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A45A82AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1A45A82F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A45A8380()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    sub_1A459E8C0(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A5244EE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A45A845C()
{
  result = qword_1EB13E160;
  if (!qword_1EB13E160)
  {
    sub_1A459EF80(255, &qword_1EB13E100, sub_1A459FBA4, sub_1A410AB24, MEMORY[0x1E697E830]);
    sub_1A459ECA0(&qword_1EB13E168, sub_1A459FBA4);
    sub_1A459ECA0(&unk_1EB127B30, sub_1A410AB24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E160);
  }

  return result;
}

unint64_t sub_1A45A8580()
{
  result = qword_1EB169410[0];
  if (!qword_1EB169410[0])
  {
    type metadata accessor for LemonadeMemoriesFeature.MemoriesPlaceHolderView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB169410);
  }

  return result;
}

unint64_t sub_1A45A85D8()
{
  result = qword_1EB13E170;
  if (!qword_1EB13E170)
  {
    sub_1A459EF80(255, &qword_1EB13E178, sub_1A45A7620, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell, MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB13E140, sub_1A45A7620);
    sub_1A459ECA0(&qword_1EB12A0C0, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E170);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_65Tm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_index_66Tm_0(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1A45A88D8()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  if (v0 <= 0x3F)
  {
    sub_1A45A87E8(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A45A8A18()
{
  if (!qword_1EB1298A8)
  {
    type metadata accessor for PhotosPreviewableCollectionPlaceholder(255);
    sub_1A459ECA0(&qword_1EB12A9A0, type metadata accessor for PhotosPreviewableCollectionPlaceholder);
    v0 = type metadata accessor for LemonadeInlineStoryPlayerView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1298A8);
    }
  }
}

void sub_1A45A8AC8()
{
  if (!qword_1EB13E190)
  {
    sub_1A3F93438();
    sub_1A459ECA0(&qword_1EB13E198, sub_1A3F93438);
    v0 = sub_1A5243604();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E190);
    }
  }
}

uint64_t sub_1A45A8B5C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return sub_1A45A17E8(a1, a2, v6);
}

unint64_t sub_1A45A8C40()
{
  result = qword_1EB1C8420[0];
  if (!qword_1EB1C8420[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C8420);
  }

  return result;
}

uint64_t objectdestroy_103Tm()
{

  sub_1A3C53AEC(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

void sub_1A45A8CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A45A8D84(255, &unk_1EB122940, MEMORY[0x1E697F960]);
    v7 = v6;
    v8 = type metadata accessor for LemonadePlaceholderView();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A45A8D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LemonadePlaceholderView();
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A45A8DE8()
{
  if (!qword_1EB1224D8)
  {
    sub_1A45A8CF8(255, &qword_1EB1224E0, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1224D8);
    }
  }
}

uint64_t sub_1A45A8E5C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A45A8ECC()
{
  result = qword_1EB1224E8;
  if (!qword_1EB1224E8)
  {
    sub_1A45A8CF8(255, &qword_1EB1224E0, MEMORY[0x1E697F960]);
    sub_1A45A8F98();
    sub_1A459ECA0(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1224E8);
  }

  return result;
}

unint64_t sub_1A45A8F98()
{
  result = qword_1EB122950;
  if (!qword_1EB122950)
  {
    sub_1A45A8D84(255, &unk_1EB122940, MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122950);
  }

  return result;
}

uint64_t sub_1A45A905C(uint64_t a1, uint64_t a2)
{
  sub_1A45A8CF8(0, &qword_1EB1224E0, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45A90DC(uint64_t a1, uint64_t a2)
{
  sub_1A45A8D84(0, &unk_1EB122940, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45A915C(uint64_t a1)
{
  sub_1A45A8D84(0, &unk_1EB122940, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A45A91D4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A45A4D6C(v3, v4, v5, v2);
}

void sub_1A45A9268(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A45A9334()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1A459EC38(0, &unk_1EB129FF0, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v3 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  sub_1A3C48B8C(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  *(v4 + 32) = sub_1A524C674();
  *(v4 + 40) = v5;
  v6 = sub_1A524CA14();

  [v3 setFetchPropertySets_];

  [v3 setIncludePendingMemories_];
  [v3 setIncludeStoryMemories_];
  objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52F8E10;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45A94FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A45A9580()
{
  if (!qword_1EB13E1D8)
  {
    sub_1A459E88C(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E1D8);
    }
  }
}

uint64_t objectdestroyTm_63()
{
  v1 = (type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1A3C53AEC(*(v2 + 48), *(v2 + 56));
  v3 = v1[12];
  sub_1A459E8C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
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

void sub_1A45A973C()
{
  type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);

  sub_1A45A0024();
}

uint64_t sub_1A45A979C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45A9804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45A986C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A45A98E4()
{
  result = qword_1EB127DE0;
  if (!qword_1EB127DE0)
  {
    sub_1A459EF80(255, &qword_1EB127DD8, sub_1A45A8A18, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A459ECA0(&unk_1EB1298B0, sub_1A45A8A18);
    sub_1A459ECA0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127DE0);
  }

  return result;
}

unint64_t sub_1A45A9A08()
{
  result = qword_1EB13E1E0;
  if (!qword_1EB13E1E0)
  {
    sub_1A459EF80(255, &qword_1EB13E1E8, MEMORY[0x1E69C2858], sub_1A45A8AC8, MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB13E1A8, MEMORY[0x1E69C2858]);
    sub_1A459ECA0(&qword_1EB13E1B0, sub_1A45A8AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E1E0);
  }

  return result;
}

unint64_t sub_1A45A9B2C()
{
  result = qword_1EB13E1F0;
  if (!qword_1EB13E1F0)
  {
    sub_1A459E9D0(255, &qword_1EB13E1F8, type metadata accessor for LemonadeMemoryCellPlayButtonView, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB12E058, type metadata accessor for LemonadeMemoryCellPlayButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E1F0);
  }

  return result;
}

unint64_t sub_1A45A9C14()
{
  result = qword_1EB1228D8;
  if (!qword_1EB1228D8)
  {
    sub_1A459EF80(255, &qword_1EB1228D0, type metadata accessor for LemonadeShelfPlaceholderView, sub_1A45A8DE8, MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
    sub_1A45A8E5C(&qword_1EB1224D0, sub_1A45A8DE8, sub_1A45A8ECC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228D8);
  }

  return result;
}

void Image.makeSharedAlbumPreview()(uint64_t a1@<X8>)
{
  v2 = sub_1A524B554();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2, v4);
  v7 = sub_1A524B5C4();
  (*(v3 + 8))(v6, v2);
  sub_1A524BC74();
  sub_1A52481F4();
  v31 = 1;
  *&v30[8] = v32;
  *&v30[24] = v33;
  *&v30[40] = v34;
  sub_1A432388C();
  v9 = (a1 + *(v8 + 36));
  v10 = *(sub_1A5248A14() + 20);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1A52494A4();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #20.0 }

  *v9 = _Q0;
  sub_1A3E42C88();
  *&v9[*(v18 + 36)] = 256;
  v19 = *&v30[18];
  *(a1 + 18) = *&v30[2];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 257;
  *(a1 + 34) = v19;
  *(a1 + 50) = *&v30[34];
  *(a1 + 64) = *&v30[48];
  LOBYTE(v7) = sub_1A524A074();
  sub_1A5247BC4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1A4323920(0);
  v29 = a1 + *(v28 + 36);
  *v29 = v7;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
}

void sub_1A45AA004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A45AA070@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A4327BBC(0, &unk_1EB138428, sub_1A4327B00);
  return sub_1A45AA0D8(a1 + *(v2 + 44));
}

uint64_t sub_1A45AA0D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524B554();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4323920(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v36[-v12];
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2, v11);
  v14 = sub_1A524B5C4();
  (*(v3 + 8))(v5, v2);
  sub_1A524BC74();
  sub_1A52481F4();
  v38 = 1;
  *&v37[6] = v39;
  *&v37[22] = v40;
  *&v37[38] = v41;
  sub_1A432388C();
  v16 = &v13[*(v15 + 36)];
  v17 = *(sub_1A5248A14() + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1A52494A4();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #20.0 }

  *v16 = _Q0;
  sub_1A3E42C88();
  *&v16[*(v25 + 36)] = 256;
  v26 = *&v37[16];
  *(v13 + 18) = *v37;
  *v13 = v14;
  *(v13 + 1) = 0;
  *(v13 + 8) = 257;
  *(v13 + 34) = v26;
  *(v13 + 50) = *&v37[32];
  *(v13 + 8) = *&v37[46];
  LOBYTE(v14) = sub_1A524A074();
  sub_1A5247BC4();
  v27 = &v13[*(v7 + 44)];
  *v27 = v14;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_1A45AF504(v13, v9, sub_1A4323920);
  *a1 = 0;
  *(a1 + 8) = 1;
  sub_1A4327B34(0);
  v33 = v32;
  sub_1A45AF504(v9, a1 + *(v32 + 48), sub_1A4323920);
  v34 = a1 + *(v33 + 64);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_1A45AEA1C(v13, sub_1A4323920);
  return sub_1A45AEA1C(v9, sub_1A4323920);
}

uint64_t sub_1A45AA408@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5242264();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 0x6F746F6870;
  v6[1] = 0xE500000000000000;
  (*(v3 + 104))(v6, *MEMORY[0x1E69C1D38], v2, v4);
  v7 = sub_1A5242B94();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_1A45AA518@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_1A5243834();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5243844();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12[0] = sub_1A5243374();
  MEMORY[0x1EEE9AC00](v12[0]);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 32);
  swift_unknownObjectRetain_n();
  sub_1A5243384();
  (*(v3 + 104))(v5, *MEMORY[0x1E69C2680], v2);
  swift_unknownObjectRetain();
  v10 = v9;
  sub_1A5243814();
  sub_1A4327924(v7, v8);
  sub_1A4327A6C();
  sub_1A45AC828(&qword_1EB138418, MEMORY[0x1E69C2440]);
  sub_1A45AC828(&qword_1EB138420, sub_1A4327A6C);
  return sub_1A5241E04();
}

uint64_t sub_1A45AA7DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4323920(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42[-v13];
  v15 = a1;
  sub_1A524B524();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v16 = sub_1A524B5C4();
  (*(v5 + 8))(v7, v4);
  sub_1A524BC74();
  sub_1A52481F4();
  v44 = 1;
  *&v43[6] = v45;
  *&v43[22] = v46;
  *&v43[38] = v47;
  sub_1A432388C();
  v18 = &v14[*(v17 + 36)];
  v19 = *(sub_1A5248A14() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1A52494A4();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #20.0 }

  *v18 = _Q0;
  sub_1A3E42C88();
  *&v18[*(v27 + 36)] = 256;
  v28 = *&v43[16];
  *(v14 + 18) = *v43;
  *v14 = v16;
  *(v14 + 1) = 0;
  *(v14 + 8) = 257;
  *(v14 + 34) = v28;
  *(v14 + 50) = *&v43[32];
  *(v14 + 8) = *&v43[46];
  LOBYTE(v16) = sub_1A524A074();
  sub_1A5247BC4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = &v14[*(v9 + 44)];
  *v37 = v16;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_1A45AF504(v14, v11, sub_1A4323920);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1A4327B34(0);
  v39 = v38;
  sub_1A45AF504(v11, a2 + *(v38 + 48), sub_1A4323920);
  v40 = a2 + *(v39 + 64);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_1A45AEA1C(v14, sub_1A4323920);
  return sub_1A45AEA1C(v11, sub_1A4323920);
}

uint64_t sub_1A45AAB40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697DBD0];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A45AAEB8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1A45AF56C(v2, &v16 - v11, &qword_1EB128A70, v8, v9, sub_1A45AAEB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5247E04();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A45AAD80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A4327BBC(0, &unk_1EB138428, sub_1A4327B00);
  return sub_1A45AA7DC(v3, a1 + *(v4 + 44));
}

uint64_t SharedAlbumPreviewsSection.viewModel.getter()
{
  type metadata accessor for SharedAlbumPreviewsSection();
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t type metadata accessor for SharedAlbumPreviewsSection()
{
  result = qword_1EB1C8560;
  if (!qword_1EB1C8560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A45AAEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A45AAF1C@<X0>(void *a1@<X8>)
{
  type metadata accessor for SharedAlbumPreviewsSection();
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  *a1 = v3;
  return result;
}

uint64_t sub_1A45AAFB4(void **a1)
{
  v1 = *a1;
  type metadata accessor for SharedAlbumPreviewsSection();
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v2 = v1;
  return sub_1A524B6B4();
}

uint64_t SharedAlbumPreviewsSection.viewModel.setter()
{
  type metadata accessor for SharedAlbumPreviewsSection();
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void (*SharedAlbumPreviewsSection.viewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = v1 + *(type metadata accessor for SharedAlbumPreviewsSection() + 20);
  v7 = *v5;
  v6 = *(v5 + 8);
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v4[8] = v8;
  v9 = v7;

  sub_1A524B6A4();
  return sub_1A3D9CCC4;
}

uint64_t SharedAlbumPreviewsSection.$viewModel.getter()
{
  type metadata accessor for SharedAlbumPreviewsSection();
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return v1;
}

uint64_t sub_1A45AB24C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A45AAEB8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SharedAlbumPreviewsSection();
  v5 = a2 + v4[6];
  sub_1A524B694();
  *v5 = v18;
  *(v5 + 1) = v19;
  v6 = v4[8];
  v7 = [objc_allocWithZone(MEMORY[0x1E6978718]) init];
  v8 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager_];

  *(a2 + v6) = v8;
  v9 = v4[9];
  v10 = [objc_allocWithZone(off_1E7721750) init];
  [v10 setNetworkAccessAllowed_];
  [v10 setAllowSecondaryDegradedImage_];
  [v10 setDeliveryMode_];
  *(a2 + v9) = v10;
  v11 = (a2 + v4[5]);
  type metadata accessor for SharedAlbumActionViewModel();
  v12 = a1;
  v13 = sub_1A524B694();
  *v11 = v18;
  v11[1] = v19;
  v14 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x148))(v13);

  v15 = *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

  v16 = *(v15 + 16);

  *(a2 + v4[7]) = v16;
  return result;
}

void SharedAlbumPreviewsSection.body.getter(uint64_t a1@<X8>)
{
  v67 = a1;
  v56 = sub_1A5249544();
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45ACDD0(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v54 = v3;
  v55 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v51 = v40 - v4;
  sub_1A45AC74C(0);
  v58 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AC870(0);
  v59 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AA004(0, &unk_1EB13E230, sub_1A45AC870, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v66 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = v40 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v65 = v40 - v14;
  v50 = sub_1A523FBA4();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v45 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1A523FBD4();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AC8AC(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v43 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SharedAlbumPreviewsSection();
  v41 = *(v19 - 8);
  v20 = *(v41 + 64);
  v21 = v19 - 8;
  v40[6] = v19 - 8;
  v72 = v20;
  MEMORY[0x1EEE9AC00](v19 - 8);
  v69 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AC8E0(0);
  v70 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v68 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AD3BC();
  v62 = v25;
  v61 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v60 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v71 = v40 - v28;
  v73 = v1;
  v40[4] = sub_1A5249314();
  v75 = 1;
  v29 = (v1 + *(v21 + 28));
  v31 = v29[1];
  v76 = *v29;
  v30 = v76;
  v77 = v31;
  v42 = type metadata accessor for SharedAlbumActionViewModel;
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v40[5] = v32;
  v33 = sub_1A524B6A4();
  v34 = v74;
  v35 = MEMORY[0x1E69E7D40];
  v36 = (*((*MEMORY[0x1E69E7D40] & *v74) + 0x648))(v33);

  v76 = v30;
  v77 = v31;
  v37 = sub_1A524B6A4();
  v38 = v74;
  v39 = (*((*v35 & *v74) + 0x3A0))(v37);

  PXLocalizedAssetCountForUsage(v36, v39, 0, 0);
}

void sub_1A45AC794()
{
  if (!qword_1EB13E200)
  {
    sub_1A419A588(255);
    sub_1A45ACDD0(255, &qword_1EB13E220, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980BC0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E200);
    }
  }
}

uint64_t sub_1A45AC828(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A45AC964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A45ACA30()
{
  if (!qword_1EB13E258)
  {
    sub_1A45AC964(255, &unk_1EB13E260, sub_1A4326158, sub_1A45ACAE4, MEMORY[0x1E697F960]);
    sub_1A3FF7634();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E258);
    }
  }
}

void sub_1A45ACAE4()
{
  if (!qword_1EB13E270)
  {
    sub_1A45AC964(255, &qword_1EB13E278, sub_1A45ACB8C, sub_1A45ACBD0, MEMORY[0x1E697F960]);
    sub_1A45ACE24();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E270);
    }
  }
}

void sub_1A45ACBF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A45ACDD0(255, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    a3(255);
    sub_1A3DE77C8();
    v5 = sub_1A524B9D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A45ACCDC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A45ACD50(255, a3, a4, a5);
    sub_1A41EF370(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A45ACD50(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A45ACDD0(255, a3, a4, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A45ACDD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A45ACE24()
{
  result = qword_1EB13E2D0;
  if (!qword_1EB13E2D0)
  {
    sub_1A45AC964(255, &qword_1EB13E278, sub_1A45ACB8C, sub_1A45ACBD0, MEMORY[0x1E697F960]);
    sub_1A45AD09C(&qword_1EB13E2D8, sub_1A45ACB8C, sub_1A45ACF48);
    sub_1A45AD09C(&qword_1EB13E300, sub_1A45ACBD0, sub_1A45AD118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E2D0);
  }

  return result;
}

unint64_t sub_1A45ACF7C()
{
  result = qword_1EB13E2E8;
  if (!qword_1EB13E2E8)
  {
    sub_1A45ACD50(255, &qword_1EB13E298, &unk_1EB13E2A0, &type metadata for SharedAlbumAssetPreview);
    sub_1A45AD2CC(&unk_1EB13E2F0, &unk_1EB13E2A0, &type metadata for SharedAlbumAssetPreview, sub_1A45AD048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E2E8);
  }

  return result;
}

unint64_t sub_1A45AD048()
{
  result = qword_1EB1C84B8;
  if (!qword_1EB1C84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C84B8);
  }

  return result;
}

uint64_t sub_1A45AD09C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A45AD14C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A45AC828(&unk_1EB127C50, sub_1A41EF370);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45AD200()
{
  result = qword_1EB13E310;
  if (!qword_1EB13E310)
  {
    sub_1A45ACD50(255, &qword_1EB13E2C0, &qword_1EB13E2C8, &type metadata for SharedAlbumSourcePreview);
    sub_1A45AD2CC(&qword_1EB13E318, &qword_1EB13E2C8, &type metadata for SharedAlbumSourcePreview, sub_1A45AD368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E310);
  }

  return result;
}

uint64_t sub_1A45AD2CC(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A45ACDD0(255, a2, a3, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45AD368()
{
  result = qword_1EB1C84C0[0];
  if (!qword_1EB1C84C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C84C0);
  }

  return result;
}

void sub_1A45AD3BC()
{
  if (!qword_1EB13E330)
  {
    sub_1A45AC8E0(255);
    sub_1A45AF030(&qword_1EB13E338, sub_1A45AC8E0, sub_1A45AD478);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E330);
    }
  }
}

unint64_t sub_1A45AD478()
{
  result = qword_1EB13E340;
  if (!qword_1EB13E340)
  {
    sub_1A45AC91C(255);
    sub_1A45AD528();
    sub_1A45AC828(&qword_1EB1383F0, sub_1A3F332F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E340);
  }

  return result;
}

unint64_t sub_1A45AD528()
{
  result = qword_1EB13E348;
  if (!qword_1EB13E348)
  {
    sub_1A45AC9E8(255);
    sub_1A45AD5D8();
    sub_1A45AC828(&qword_1EB1302A0, sub_1A3F33AEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E348);
  }

  return result;
}

unint64_t sub_1A45AD5D8()
{
  result = qword_1EB13E350;
  if (!qword_1EB13E350)
  {
    sub_1A45ACA30();
    sub_1A45AD694();
    sub_1A45AC828(&qword_1EB13AFA0, sub_1A3FF7634);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E350);
  }

  return result;
}

unint64_t sub_1A45AD694()
{
  result = qword_1EB13E358;
  if (!qword_1EB13E358)
  {
    sub_1A45AC964(255, &unk_1EB13E260, sub_1A4326158, sub_1A45ACAE4, MEMORY[0x1E697F960]);
    sub_1A45AC828(&qword_1EB13E360, sub_1A4326158);
    sub_1A45AC828(&qword_1EB13E368, sub_1A45ACAE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E358);
  }

  return result;
}

uint64_t sub_1A45AD7B8(uint64_t a1)
{
  sub_1A45ACAE4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45AC964(0, &unk_1EB13E3A0, sub_1A4326158, sub_1A45ACAE4, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  sub_1A4326158();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for SharedAlbumPreviewsSection() + 20));
  v13 = *v11;
  v12 = v11[1];
  v25 = v13;
  v26 = v12;
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v14 = sub_1A524B6A4();
  v15 = v24;
  v16 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0x648))(v14);

  if (v16 <= 0)
  {
    *v10 = sub_1A5249314();
    *(v10 + 1) = 0;
    v10[16] = 1;
    sub_1A4327BBC(0, &qword_1EB138440, sub_1A43261EC);
    sub_1A45ADBF4(a1, &v10[*(v21 + 44)]);
    sub_1A45AF504(v10, v7, sub_1A4326158);
    swift_storeEnumTagMultiPayload();
    sub_1A45AC828(&qword_1EB13E360, sub_1A4326158);
    sub_1A45AC828(&qword_1EB13E368, sub_1A45ACAE4);
    sub_1A5249744();
    v19 = sub_1A4326158;
    v20 = v10;
  }

  else
  {
    *v4 = sub_1A524BC74();
    v4[1] = v17;
    sub_1A45AF13C();
    sub_1A45AE058(a1, v4 + *(v18 + 44));
    sub_1A45AF504(v4, v7, sub_1A45ACAE4);
    swift_storeEnumTagMultiPayload();
    sub_1A45AC828(&qword_1EB13E360, sub_1A4326158);
    sub_1A45AC828(&qword_1EB13E368, sub_1A45ACAE4);
    sub_1A5249744();
    v19 = sub_1A45ACAE4;
    v20 = v4;
  }

  return sub_1A45AEA1C(v20, v19);
}

uint64_t sub_1A45ADBF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = a1;
  v46 = a2;
  v2 = sub_1A5247E04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v9 = sub_1A5242264();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4326240(0);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v44 = sub_1A5249574();
  *v12 = 0x6F746F6870;
  v12[1] = 0xE500000000000000;
  (*(v10 + 104))(v12, *MEMORY[0x1E69C1D38], v9);
  v42 = sub_1A5242B94();
  (*(v10 + 8))(v12, v9);
  sub_1A524BC74();
  sub_1A52481F4();
  v47 = 1;
  sub_1A45AAB40(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E697DBB8], v2);
  LOBYTE(v9) = sub_1A5247DF4();
  v22 = *(v3 + 8);
  v22(v5, v2);
  v22(v8, v2);
  if (v9)
  {
    v23 = sub_1A524B2E4();
  }

  else
  {
    v23 = sub_1A524B2A4();
  }

  v24 = v23;
  v25 = sub_1A524A064();
  v26 = &v18[*(v43 + 36)];
  v27 = *(sub_1A5248A14() + 20);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_1A52494A4();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #20.0 }

  *v26 = _Q0;
  sub_1A3E42C88();
  *&v26[*(v35 + 36)] = 256;
  *v18 = v44;
  *(v18 + 1) = 0;
  v18[16] = 1;
  *(v18 + 3) = v42;
  v36 = v49;
  *(v18 + 2) = v48;
  *(v18 + 3) = v36;
  *(v18 + 4) = v50;
  *(v18 + 10) = v24;
  v18[88] = v25;
  sub_1A45AF49C(v18, v21, sub_1A4326240);
  sub_1A45AF504(v21, v15, sub_1A4326240);
  v37 = v46;
  *v46 = 0;
  *(v37 + 8) = 1;
  sub_1A4326220(0);
  v39 = v38;
  sub_1A45AF504(v15, v37 + *(v38 + 48), sub_1A4326240);
  v40 = v37 + *(v39 + 64);
  *v40 = 0;
  v40[8] = 1;
  sub_1A45AEA1C(v21, sub_1A4326240);
  return sub_1A45AEA1C(v15, sub_1A4326240);
}

unint64_t sub_1A45AE058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_1A45ACBD0(0);
  v49 = v3;
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AC964(0, &qword_1EB13E3B8, sub_1A45ACB8C, sub_1A45ACBD0, MEMORY[0x1E697F948]);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v41 - v6;
  v7 = type metadata accessor for SharedAlbumPreviewsSection();
  v8 = v7 - 8;
  v43 = *(v7 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1A45ACB8C(0);
  v46 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v8 + 28);
  v44 = a1;
  v15 = (a1 + v14);
  v17 = *v15;
  v16 = v15[1];
  v51 = *v15;
  v52 = v16;
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v19 = v18;
  v20 = sub_1A524B6A4();
  v21 = v50;
  v22 = MEMORY[0x1E69E7D40];
  v23 = (*((*MEMORY[0x1E69E7D40] & *v50) + 0x208))(v20);

  if (v23 >> 62)
  {
    v24 = sub_1A524E2B4();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 >= 1)
  {
    v51 = v17;
    v52 = v16;
    v25 = sub_1A524B6A4();
    v26 = v50;
    v27 = (*((*v22 & *v50) + 0x208))(v25);

    if (!(v27 >> 62))
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      if (v28 >= 3)
      {
        v29 = 3;
      }

      else
      {
        v29 = v28;
      }

      v51 = 0;
      v52 = v29;
      swift_getKeyPath();
      sub_1A45AF504(v44, &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumPreviewsSection);
      v30 = (*(v43 + 80) + 24) & ~*(v43 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v27;
      sub_1A45AF49C(&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for SharedAlbumPreviewsSection);
      *(v31 + ((v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
      sub_1A45ACDD0(0, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
      sub_1A45ACBAC(0);
      sub_1A3DE77C8();
      sub_1A45ACF48();
      sub_1A524B9B4();
      v32 = v46;
      (*(v11 + 16))(v47, v13, v46);
      swift_storeEnumTagMultiPayload();
      sub_1A45AD09C(&qword_1EB13E2D8, sub_1A45ACB8C, sub_1A45ACF48);
      sub_1A45AD09C(&qword_1EB13E300, sub_1A45ACBD0, sub_1A45AD118);
      sub_1A5249744();
      return (*(v11 + 8))(v13, v32);
    }

    v28 = sub_1A524E2B4();
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_20;
  }

  v51 = v17;
  v52 = v16;
  v34 = sub_1A524B6A4();
  v35 = v50;
  v19 = (*((*v22 & *v50) + 0x3D0))(v34);

  if (v19 >> 62)
  {
LABEL_20:
    result = sub_1A524E2B4();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    goto LABEL_12;
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  if (result >= 3)
  {
    v36 = 3;
  }

  else
  {
    v36 = result;
  }

  v51 = 0;
  v52 = v36;
  swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v19;
  *(v37 + 24) = v36;
  sub_1A45ACDD0(0, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  sub_1A45ACCB8(0);
  sub_1A3DE77C8();
  sub_1A45AD118();
  v38 = v41;
  sub_1A524B9B4();
  v39 = v42;
  v40 = v49;
  (*(v42 + 16))(v47, v38, v49);
  swift_storeEnumTagMultiPayload();
  sub_1A45AD09C(&qword_1EB13E2D8, sub_1A45ACB8C, sub_1A45ACF48);
  sub_1A45AD09C(&qword_1EB13E300, sub_1A45ACBD0, sub_1A45AD118);
  sub_1A5249744();
  return (*(v39 + 8))(v38, v40);
}

void sub_1A45AE848()
{
  type metadata accessor for SharedAlbumPreviewsSection();
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x650))(v0);
}

uint64_t sub_1A45AE94C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x220))();
  *a2 = result;
  return result;
}

uint64_t sub_1A45AEA1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_64()
{
  v1 = type metadata accessor for SharedAlbumPreviewsSection();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
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

uint64_t sub_1A45AEC08()
{
  type metadata accessor for SharedAlbumPreviewsSection();
  sub_1A45AED04(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  sub_1A524B6B4();
}

void sub_1A45AED04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A45AED54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A45AEDBC()
{
  if (!qword_1EB13E378)
  {
    sub_1A45AD3BC();
    sub_1A45AA004(255, &unk_1EB13E230, sub_1A45AC870, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13E378);
    }
  }
}

void sub_1A45AEEA8()
{
  sub_1A45AAEB8(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A45AAEB8(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A45AED04(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A3C52C70(319, &qword_1EB126BF0);
        if (v3 <= 0x3F)
        {
          sub_1A4327388();
          if (v4 <= 0x3F)
          {
            sub_1A3C52C70(319, &qword_1EB13E380);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A45AF030(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void sub_1A45AF13C()
{
  if (!qword_1EB13E3B0)
  {
    sub_1A45AC964(255, &qword_1EB13E278, sub_1A45ACB8C, sub_1A45ACBD0, MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E3B0);
    }
  }
}

uint64_t sub_1A45AF1E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SharedAlbumPreviewsSection();
  v6 = result;
  v7 = (*(*(result - 8) + 80) + 24) & ~*(*(result - 8) + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(*(result - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1A59097F0](*a1);
  }

  else
  {
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v11 = *(v8 + 8 * v10 + 32);
  }

  v12 = v11;
  v13 = *(v6 + 36);
  v14 = *(v2 + v7 + *(v6 + 32));
  v15 = *(v2 + v7 + v13);
  result = swift_getKeyPath();
  v16 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (!v17)
  {
    v19 = result;
    v20 = v10 * -0.1 + 1.0;
    v21 = v18;
    v22 = v10 * 10.0 * -2.0;
    swift_unknownObjectRetain();
    v23 = v15;
    sub_1A524BE94();
    v28[88] = 0;
    *&v29 = v19;
    BYTE8(v29) = 0;
    *&v30 = v12;
    *(&v30 + 1) = v14;
    v31 = v23;
    *&v32 = v22;
    *(&v32 + 1) = v20;
    *&v33 = v20;
    *(&v33 + 1) = v24;
    v34 = v25;
    v46 = v29;
    v47 = v30;
    v51 = v25;
    v49 = v32;
    v50 = v33;
    v48 = v23;
    v35 = v19;
    v36 = 0;
    v37 = v12;
    v38 = v14;
    v39 = v23;
    v40 = 0;
    v41 = v22;
    v42 = v20;
    v43 = v20;
    v44 = v24;
    v45 = v25;
    sub_1A45AF56C(&v29, v28, &qword_1EB13E298, &unk_1EB13E2A0, &type metadata for SharedAlbumAssetPreview, sub_1A45ACD50);
    result = sub_1A45AF428(&v35);
    v26 = v49;
    *(a2 + 32) = v48;
    *(a2 + 48) = v26;
    *(a2 + 64) = v50;
    *(a2 + 80) = v51;
    v27 = v47;
    *a2 = v46;
    *(a2 + 16) = v27;
    *(a2 + 88) = v21;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1A45AF428(uint64_t a1)
{
  sub_1A45ACD50(0, &qword_1EB13E298, &unk_1EB13E2A0, &type metadata for SharedAlbumAssetPreview);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A45AF49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45AF504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45AF56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A45AF74C()
{
  v1 = [v0 spec];
  type metadata accessor for PhotosPagingLayoutSpec();

  return swift_dynamicCastClassUnconditional();
}

id sub_1A45AF81C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A45AF8A8@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [*(a2 + 24) viewMode];
  v7 = *v3;
  v19[3] = type metadata accessor for MapItem();
  v19[4] = sub_1A3CA3F30(&qword_1EB124FF0, type metadata accessor for MapItem);
  v19[0] = a1;
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = v7;

  sub_1A3C6C180(&v17);
  v15 = v17;
  v16 = v18;
  LOBYTE(a1) = sub_1A3C5A374();
  v13 = sub_1A3C30368();
  LemonadeMapConfiguration.init(photoLibrary:representedItem:collectionConfiguration:libraryFilterViewMode:boundingRegion:centerCoordinate:wantsDismissButton:enableGridView:)(v12, v19, &v15, v6, 0, 0, 1, a1 & 1, a3, v8, v9, v10, v11, v13 & 1);
  type metadata accessor for LemonadeNavigationDestination();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A45AF9EC@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C4C2E0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-1] - v3;
  v13[0] = sub_1A3F2CCA4();
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v7;
  v14 = 0;
  v8 = sub_1A3C47918();
  v10 = v9;
  sub_1A417147C(v8);
  return sub_1A416D188(v13, v8, v10, v4, a1);
}

void sub_1A45AFB20(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for MapDataProvider();
  static MapDataProvider.sharedProvider(for:)(v1);
}

uint64_t sub_1A45AFB6C(uint64_t a1)
{
  v2 = type metadata accessor for MapSnapshotView(0);
  v3 = sub_1A3CA3F30(&qword_1EB12A5F8, type metadata accessor for MapSnapshotView);

  return MEMORY[0x1EEE2BCF8](sub_1A45B02A0, a1, v2, v3);
}

uint64_t sub_1A45AFC3C(uint64_t a1)
{
  sub_1A3C2F0BC(a1, v4);
  sub_1A3DB7F50();
  sub_1A3C52C70(0, &qword_1EB126CD0);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = [v3 px_isPlacesSmartAlbum];

    return v2;
  }

  return result;
}

uint64_t sub_1A45AFCC8(double **a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LemonadeNavigationDestination();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AF8A8(*a1, a3, v8);
  sub_1A3C4C2E0(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  sub_1A40B671C(v8, v10 + v9);
  return v10;
}

unint64_t sub_1A45AFE10(uint64_t a1)
{
  v2 = sub_1A3CA3F30(&qword_1EB12A3D0, type metadata accessor for LemonadeMapFeature.ShelfProvider);

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A45AFE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(a1 + 24) viewMode];
  v5 = *(a1 + 16);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v6 = v5;
  sub_1A3C6C180(&v19);
  v17 = v19;
  v18 = v20;
  v7 = sub_1A412FAA0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1A3C5A374();
  v15 = sub_1A3C30368();
  LemonadeMapConfiguration.init(photoLibrary:representedItem:collectionConfiguration:libraryFilterViewMode:boundingRegion:centerCoordinate:wantsDismissButton:enableGridView:)(v6, v21, &v17, v4, 0, 0, 1, v14 & 1, a2, v7, v9, v11, v13, v15 & 1);
  type metadata accessor for LemonadeNavigationDestination();

  return swift_storeEnumTagMultiPayload();
}

id sub_1A45AFFC0()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 mapCollection];

  return v2;
}

uint64_t sub_1A45B0160(uint64_t a1)
{
  result = sub_1A3CA3F30(&qword_1EB13E3F0, type metadata accessor for LemonadeMapFeature);
  *(a1 + 8) = result;
  return result;
}

void sub_1A45B0208()
{
  if (!qword_1EB13E400)
  {
    type metadata accessor for MapSnapshotView(255);
    sub_1A3CA3F30(&qword_1EB12A5F8, type metadata accessor for MapSnapshotView);
    v0 = sub_1A5243D74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E400);
    }
  }
}

uint64_t sub_1A45B02A4()
{
  v1 = [v0 px_localizedName];
  sub_1A524C674();

  String.validatedForGenerativeStory.getter();
  v3 = v2;

  return v3;
}

void String.validatedForGenerativeStory.getter()
{
  v0 = sub_1A52404F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C634();
  v5 = CEMCreateStringByStrippingEmojiCharacters();

  if (v5)
  {
    v6 = v5;
    v7 = sub_1A524C674();
    v9 = v8;

    v17[0] = v7;
    v17[1] = v9;
    sub_1A5240474();
    sub_1A3D5F9DC();
    v10 = sub_1A524DF74();
    (*(v1 + 8))(v3, v0);

    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = (v10 + 40);
    while (1)
    {
      if (*(v10 + 16) == v11)
      {

        v17[0] = v12;
        sub_1A3C2DE64(0, &qword_1EB126ED0, MEMORY[0x1E69E62F8]);
        sub_1A3CAD85C();
        sub_1A524C514();

        return;
      }

      if (v11 >= *(v10 + 16))
      {
        break;
      }

      ++v11;
      v15 = *(v13 - 1);
      v14 = *v13;
      v13 += 2;
      v16 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v16 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A45B0594()
{
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A45B063C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + 32);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A45B06EC()
{
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
  sub_1A52415C4();
}

void sub_1A45B07DC()
{
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45B0880(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + 64);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45B0AF4(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 168) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
    sub_1A52415C4();
  }
}

uint64_t sub_1A45B0C1C(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_27:
    v7 = MEMORY[0x1E69E7CC8];
LABEL_28:
    v30 = swift_allocObject();
    *(v30 + 16) = MEMORY[0x1E69E7CC0];
    [a1 firstItemIndexPath];
    v41 = v45;
    v43 = aBlock;
    v31 = swift_allocObject();
    v31[2] = a1;
    v31[3] = v7;
    v31[4] = v35;
    v31[5] = a3;
    v31[6] = a4;
    v31[7] = v30;
    v46 = sub_1A45B33D4;
    v47 = v31;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v45 = sub_1A3E4F338;
    *(&v45 + 1) = &block_descriptor_215;
    v32 = _Block_copy(&aBlock);
    v33 = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    aBlock = v43;
    v45 = v41;
    [v33 enumerateItemIndexPathsStartingAtIndexPath:&aBlock reverseDirection:0 usingBlock:v32];
    _Block_release(v32);
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_3:
  v6 = 0;
  v42 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC8];
  v39 = isUniquelyReferenced_nonNull_native;
  v40 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v42)
    {
      v10 = MEMORY[0x1A59097F0](v6, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v6 >= *(v40 + 16))
      {
        goto LABEL_23;
      }

      v10 = *(isUniquelyReferenced_nonNull_native + 8 * v6 + 32);
    }

    v11 = v10;
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v5 = sub_1A524E2B4();
      if (!v5)
      {
        goto LABEL_27;
      }

      goto LABEL_3;
    }

    v13 = [objc_msgSend(*&v10[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item] assetCollection)];
    swift_unknownObjectRelease();
    v14 = sub_1A524C674();
    v16 = v15;

    v17 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v7;
    v19 = sub_1A3C5DCA4(v14, v16);
    v20 = v7[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_24;
    }

    v23 = v18;
    if (v7[3] < v22)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1A45B2394();
      if (v23)
      {
LABEL_4:

        v7 = aBlock;
        v8 = *(aBlock + 56);
        v9 = *(v8 + 8 * v19);
        *(v8 + 8 * v19) = v17;

        goto LABEL_5;
      }
    }

LABEL_17:
    v7 = aBlock;
    *(aBlock + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v26 = (v7[6] + 16 * v19);
    *v26 = v14;
    v26[1] = v16;
    *(v7[7] + 8 * v19) = v17;

    v27 = v7[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_25;
    }

    v7[2] = v29;
LABEL_5:
    ++v6;
    isUniquelyReferenced_nonNull_native = v39;
    if (v12 == v5)
    {
      goto LABEL_28;
    }
  }

  sub_1A45B20FC(v22, isUniquelyReferenced_nonNull_native);
  v24 = sub_1A3C5DCA4(v14, v16);
  if ((v23 & 1) == (v25 & 1))
  {
    v19 = v24;
    if (v23)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  result = sub_1A524EB84();
  __break(1u);
  return result;
}

void sub_1A45B0FEC()
{
  v1 = [*(v0 + 24) dataSource];
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45B12A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

char *sub_1A45B13FC(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v24 = a2;
    v25 = sub_1A524E2B4();
    a2 = v24;
    v3 = v25;
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = a2;
    v30 = MEMORY[0x1E69E7CC0];
    result = sub_1A45B24F4(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v4 = v30;
    v8 = v5;
    v26 = a1;
    v27 = v5 & 0xC000000000000001;
    v28 = v5;
    do
    {
      if (v27)
      {
        v9 = MEMORY[0x1A59097F0](v7, v8);
      }

      else
      {
        v9 = *(v8 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item;
      v12 = *&v9[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item];
      v13 = sub_1A41445F4();
      v14 = sub_1A414424C();
      if (!v14)
      {
        v14 = [*&v10[v11] assetCollection];
      }

      v15 = v14;
      v16 = sub_1A4143E20();
      sub_1A435E89C(v12, v13, v15, v16, v29);

      v17 = v29[0];
      v18 = v29[1];
      v19 = v29[2];
      v20 = v29[3];
      v30 = v4;
      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1A45B24F4((v21 > 1), v22 + 1, 1);
        v4 = v30;
      }

      ++v7;
      *(v4 + 16) = v22 + 1;
      v23 = (v4 + 32 * v22);
      v23[4] = v17;
      v23[5] = v18;
      v23[6] = v19;
      v23[7] = v20;
      v8 = v28;
    }

    while (v3 != v7);
    a1 = v26;
  }

  *a1 = v4;
}

uint64_t sub_1A45B15C0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
  sub_1A52415D4();

  swift_beginAccess();
  return sub_1A45B2C6C(v1 + 72, a1);
}

uint64_t sub_1A45B1680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
  sub_1A52415D4();

  swift_beginAccess();
  return sub_1A45B2C6C(v3 + 72, a2);
}

uint64_t sub_1A45B1740(uint64_t a1)
{
  sub_1A45B2C6C(a1, v2);
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
  sub_1A52415C4();

  return sub_1A45B2C18(v2);
}

uint64_t sub_1A45B1954()
{
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
  sub_1A52415D4();

  swift_beginAccess();
}

uint64_t sub_1A45B1A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 168);
}

void sub_1A45B1AF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

uint64_t sub_1A45B1B70()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore28SharedWithYouItemListManagerP33_B4CB001E2627E9987899D619ED555A877Mutator__itemList;
  v2 = sub_1A45B3120();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A45B1C14(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A45B2C6C(a1, &v2);

  sub_1A52456B4();
}

void sub_1A45B1C94(uint64_t *a1)
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
  sub_1A5245694();
}

id *sub_1A45B1D38()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1A45B2C18((v0 + 9));

  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedWithYouItemListManager___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A45B1DE0()
{
  sub_1A45B1D38();

  return swift_deallocClassInstance();
}

void sub_1A45B1E38()
{
  type metadata accessor for SharedWithYouItemListManager.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A45B2CE8();
  sub_1A52456D4();
}

void sub_1A45B1EDC()
{
  sub_1A45B2D88(&qword_1EB13E450, type metadata accessor for SharedWithYouItemListManager);

  sub_1A5245F44();
}

id sub_1A45B1F60@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 176);
  *a1 = v2;
  return v2;
}

void sub_1A45B1F70()
{
  sub_1A45B2D88(&qword_1EB13E418, type metadata accessor for SharedWithYouItemListManager);

  sub_1A5245C54();
}

void sub_1A45B1FF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A45B2070(uint64_t a1)
{
  sub_1A45B2C6C(a1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A45B2C6C(v2, &v1);

  sub_1A52456B4();
}

uint64_t sub_1A45B20FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A45B3600();
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A45B2394()
{
  v1 = v0;
  sub_1A45B3600();
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

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
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

char *sub_1A45B24F4(char *a1, int64_t a2, char a3)
{
  result = sub_1A45B2514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A45B2514(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A45B3384();
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

uint64_t sub_1A45B2614(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for SharedWithYouItemObserver();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1A59097F0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1A59097F0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1A524DBF4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1A524DBF4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1A524E2B4();
  }

  result = sub_1A524E2B4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A45B2B88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 168) = v1;
}

unint64_t sub_1A45B2CE8()
{
  result = qword_1EB1C87A0[0];
  if (!qword_1EB1C87A0[0])
  {
    type metadata accessor for SharedWithYouItemListManager.Mutator(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C87A0);
  }

  return result;
}

uint64_t sub_1A45B2D88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A45B2E64()
{
  result = qword_1EB13E430;
  if (!qword_1EB13E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E430);
  }

  return result;
}

uint64_t sub_1A45B2F98()
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

uint64_t sub_1A45B3080()
{
  result = sub_1A45B3120();
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

uint64_t sub_1A45B3120()
{
  result = qword_1EB13E440;
  if (!qword_1EB13E440)
  {
    type metadata accessor for SharedWithYouItemListManager.Mutator(255);
    sub_1A45B2CE8();
    sub_1A52456C4();
  }

  return result;
}

uint64_t sub_1A45B31F4(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      sub_1A45B0FEC();
    }
  }

  return result;
}

uint64_t sub_1A45B3250()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A45B0FEC();
  }

  return result;
}

uint64_t (*sub_1A45B32A4())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_1A3D607F0(v1);
  return sub_1A45B3354;
}

uint64_t sub_1A45B3354()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1A45B3384()
{
  if (!qword_1EB13E458)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E458);
    }
  }
}

void sub_1A45B33D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = v4[2];
  v7 = v4[3];
  v8 = v5[5];
  v9 = v5[6];
  v10 = v5[7];
  v27[0] = a1;
  v27[1] = a2;
  v27[2] = a3;
  v27[3] = a4;
  v11 = [v6 contentSyndicationItemAtItemIndexPath_];
  v12 = [objc_msgSend(v11 assetCollection)];
  swift_unknownObjectRelease();
  v13 = sub_1A524C674();
  v15 = v14;

  if (!*(v7 + 16))
  {

    goto LABEL_6;
  }

  v16 = sub_1A3C5DCA4(v13, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_6:
    v21 = 0;
    goto LABEL_7;
  }

  v19 = *(*(v7 + 56) + 8 * v16);
  v20 = *&v19[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item];
  v21 = v19;
  v22 = [v20 assetCollection];
  v23 = [v11 assetCollection];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v22 == v23)
  {
    v24 = v21;
    v21 = v24;
    goto LABEL_8;
  }

LABEL_7:
  type metadata accessor for SharedWithYouItemObserver();
  v25 = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = sub_1A4144D80(v25, v8, v9);
LABEL_8:
  swift_beginAccess();
  v26 = v24;
  MEMORY[0x1A5907D70]();
  if (*((*(v10 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A524CA74();
  }

  sub_1A524CAE4();
  swift_endAccess();
}

void sub_1A45B3600()
{
  if (!qword_1EB13E460)
  {
    type metadata accessor for SharedWithYouItemObserver();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E460);
    }
  }
}

void sub_1A45B368C()
{
  v1 = sub_1A5244EE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC12PhotosUICore38SocialGroupReorderGroupActionPerformer_sourceGroup;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6 && (v7 = &v0[OBJC_IVAR____TtC12PhotosUICore38SocialGroupReorderGroupActionPerformer_destinationIndex], swift_beginAccess(), (v7[8] & 1) == 0))
  {
    v9 = v0;
    v10 = *v7;
    v11 = v6;
    v12 = [v11 photoLibrary];
    if (v12)
    {
      v13 = v12;
      (*(v2 + 104))(v4, *MEMORY[0x1E69C12A8], v1);
      sub_1A5244EF4();
      swift_allocObject();
      v14 = v13;
      sub_1A5244ED4();
      sub_1A5244BF4();
      v15 = sub_1A5244BE4();

      type metadata accessor for SocialGroupReorderAction();
      v16 = v11;
      v17 = v15;
      v18 = sub_1A471E5FC(v16, v17, v10);
      v19 = [v9 undoManager];
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v16;
      *(v21 + 24) = v20;
      aBlock[4] = sub_1A45B3E6C;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D6084C;
      aBlock[3] = &block_descriptor_216;
      v22 = _Block_copy(aBlock);
      v23 = v16;

      [v18 executeWithUndoManager:v19 completionHandler:v22];
      _Block_release(v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1A524D244();
    v8 = *sub_1A3CAA3FC();
    sub_1A5246DF4();

    [v0 completeBackgroundTaskWithSuccess:0 error:0];
  }
}

uint64_t sub_1A45B39D4(char a1, void *a2, void *a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_1A524BEE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524BF64();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524D224();
  v15 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v15, v14))
  {
    v23[2] = v10;
    v23[3] = v11;
    v23[4] = v8;
    v23[5] = v7;
    v23[1] = v15;
    v16 = swift_slowAlloc();
    swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315650;
    v17 = [a3 localIdentifier];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  sub_1A3C52C70(0, &qword_1EB12B180);
  v18 = sub_1A524D474();
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  *(v19 + 24) = a1 & 1;
  *(v19 + 32) = a2;
  aBlock[4] = sub_1A45B4030;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_10_9;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C38304(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3C38304(&qword_1EB12B1B0, sub_1A3C38394);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v13, v10, v20);
  _Block_release(v20);

  (*(v8 + 8))(v10, v7);
  return (*(v25 + 8))(v13, v11);
}

void sub_1A45B4030()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v2 = sub_1A5240B74();
    }

    [v4 completeBackgroundTaskWithSuccess:v1 error:v2];
  }
}

void LemonadeAccountViewSpecs.init(cornerRadius:buttonPadding:toggleButtonPadding:avatarSizeDimension:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, uint64_t a10, uint64_t a11)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 72) = a11;
}

uint64_t sub_1A45B4140(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A45B4160(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t EnvironmentValues.containerViewControllerReference.getter()
{
  sub_1A45B41F8();

  return sub_1A5249244();
}

unint64_t sub_1A45B41F8()
{
  result = qword_1EB1822A0[0];
  if (!qword_1EB1822A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1822A0);
  }

  return result;
}

void (*EnvironmentValues.containerViewControllerReference.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1A3D63A58(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v7);
    v5[2] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[3] = v8;
  v5[4] = sub_1A45B41F8();
  sub_1A5249244();
  return sub_1A45B4390;
}

uint64_t EnvironmentValues.selectionLimit.getter()
{
  sub_1A45B43EC();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A45B43EC()
{
  result = qword_1EB189FD8[0];
  if (!qword_1EB189FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB189FD8);
  }

  return result;
}

uint64_t (*EnvironmentValues.selectionLimit.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A45B43EC();
  sub_1A5249244();
  return sub_1A45B44DC;
}

uint64_t EnvironmentValues.detailsContext.getter()
{
  sub_1A45B4530();

  return sub_1A5249244();
}

unint64_t sub_1A45B4530()
{
  result = qword_1EB1C8B80[0];
  if (!qword_1EB1C8B80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C8B80);
  }

  return result;
}

uint64_t sub_1A45B45BC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = a2(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1A45B4678(a1, &v11 - v8, a3);
  a4(v9);
  sub_1A5249254();
  return sub_1A45B46E0(a1, a3);
}

uint64_t sub_1A45B4678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45B46E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*EnvironmentValues.detailsContext.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1A40730A4(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v7);
    v5[2] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[3] = v8;
  v5[4] = sub_1A45B4530();
  sub_1A5249244();
  return sub_1A45B484C;
}

void sub_1A45B486C(uint64_t **a1, char a2, uint64_t (*a3)(void))
{
  v5 = *a1;
  sub_1A45B4678((*a1)[3], (*a1)[2], a3);
  v6 = v5[3];
  v7 = v5[1];
  v8 = v5[2];
  if (a2)
  {
    sub_1A45B4678(v5[2], v5[1], a3);
    sub_1A5249254();
    sub_1A45B46E0(v8, a3);
  }

  else
  {
    sub_1A5249254();
  }

  sub_1A45B46E0(v6, a3);
  free(v6);
  free(v8);
  free(v7);

  free(v5);
}

uint64_t EnvironmentValues.collectionPreviewRepository.getter()
{
  sub_1A45B4988();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A45B4988()
{
  result = qword_1EB17D758[0];
  if (!qword_1EB17D758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17D758);
  }

  return result;
}

uint64_t (*EnvironmentValues.collectionPreviewRepository.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A45B4988();
  sub_1A5249244();
  return sub_1A45B4A78;
}

uint64_t sub_1A45B4A78(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1A5249254();
  }

  sub_1A5249254();
}

uint64_t EnvironmentValues.sceneOrientation.getter()
{
  sub_1A45B4B48();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A45B4B48()
{
  result = qword_1EB189750[0];
  if (!qword_1EB189750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB189750);
  }

  return result;
}

uint64_t (*EnvironmentValues.sceneOrientation.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A45B4B48();
  sub_1A5249244();
  return sub_1A45B4C38;
}

uint64_t sub_1A45B4CF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB182330 != -1)
  {
    swift_once();
  }

  sub_1A3D63A58(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB182338);
  return sub_1A45B4678(v3, a1, sub_1A3D63A58);
}

uint64_t sub_1A45B4D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4269A68();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A45B4E28(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = a4(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(v7, 1, 1, v8);
}

uint64_t sub_1A45B4ECC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1C8B60 != -1)
  {
    swift_once();
  }

  sub_1A40730A4(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB1C8B68);
  return sub_1A45B4678(v3, a1, sub_1A40730A4);
}

uint64_t sub_1A45B4F4C()
{
  sub_1A524CC54();
  result = sub_1A45B4FF8(sub_1A45B4FC0, 0, "PhotosUICore/EnvironmentValues+Photos.swift", 43);
  qword_1EB17D7E8 = result;
  return result;
}

uint64_t sub_1A45B4FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1A3C75D98(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v12 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v12);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A45B51B0@<X0>(void *a1@<X8>)
{
  if (qword_1EB17D7E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB17D7E8;
}

uint64_t sub_1A45B5220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A45B52B4(&unk_1EB126838, type metadata accessor for PXUserInterfaceOrientation);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A45B52B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A45B52FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_1A45B53B0(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  v7 = *((v5 & v3) + 0x50);
  v8 = *(v7 - 8);
  (*(v8 + 24))(&v1[v6], a1, v7);
  swift_endAccess();
  [*&v1[*((*v4 & *v1) + 0x70)] viewContentDidChange];
  return (*(v8 + 8))(a1, v7);
}

id (*sub_1A45B54CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A45B554C;
}

id sub_1A45B554C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(*(a1 + 24) + *((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x70));

    return [v5 viewContentDidChange];
  }

  return result;
}

uint64_t sub_1A45B55C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  sub_1A45B6A2C(a1, a2, a3, a4);
  v12 = v11;

  (*(*(*(v5 + 10) - 8) + 8))(a1);
  return v12;
}

unint64_t sub_1A45B5670()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1A45B573C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_1A45B576C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

id sub_1A45B579C()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0));
  if (result)
  {
    [result updateIfNeeded];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for PhotosPageLayout();
    return objc_msgSendSuper2(&v2, sel_update);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A45B5844(void *a1)
{
  v1 = a1;
  sub_1A45B579C();
}

id sub_1A45B588C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPageLayout();
  objc_msgSendSuper2(&v2, sel_referenceSizeDidChange);
  return sub_1A45B5C10();
}

void sub_1A45B5900(void *a1)
{
  v1 = a1;
  sub_1A45B588C();
}

id sub_1A45B5948(void *a1)
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_1A45B5A34();

  v7 = sub_1A5241414();
  (*(v3 + 8))(v5, v2);

  return v7;
}

void sub_1A45B5AB0(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 168))(v3);
  sub_1A5245C84();
}

id sub_1A45B5C10()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0));
  if (result)
  {
    return [result setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

uint64_t sub_1A45B5C54()
{
  [v0 referenceSize];
  v2 = v1;
  v4 = v3;
  [v0 setFrame:0 forSublayoutAtIndex:{0.0, 0.0, v1, v3}];
  [v0 referenceDepth];
  [v0 setReferenceDepth:0 forSublayoutAtIndex:?];
  v5 = [v0 localNumberOfSprites] << 32;
  v6 = swift_allocObject();
  v6[3] = 0.0;
  v6[4] = 0.0;
  *(v6 + 2) = v0;
  v6[5] = v2;
  v6[6] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A45B7600;
  *(v7 + 24) = v6;
  v11[4] = sub_1A41FF85C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A41FBEA8;
  v11[3] = &block_descriptor_217;
  v8 = _Block_copy(v11);
  v9 = v0;

  [v9 modifySpritesInRange:v5 state:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    [v9 referenceSize];
    [v9 setContentSize_];
  }

  return result;
}

void sub_1A45B5E54(void *a1)
{
  v1 = a1;
  sub_1A45B5C54();
}

void *sub_1A45B5EA4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1A45B6DE4(v5);

  return v6;
}

void sub_1A45B5F00(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 168))(v3);
  sub_1A5246244();
}

void sub_1A45B60C0(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A45B5F00(&v3);
}

void sub_1A45B613C(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 168))(v3);
  sub_1A5246244();
}

void sub_1A45B6410(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A45B613C(v4);
}

void sub_1A45B64A4(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x90));
  if (v6)
  {
    v8 = v6;
    sub_1A45B6628(a2, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    [v8 setPlacementOverride:a1 forItemReference:sub_1A524EA94()];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v12);
    v5 = *v4;
  }

  v9 = *((v5 & *v2) + 0x88);
  v10 = *(v2 + v9);
  *(v2 + v9) = a1;
  v11 = a1;

  sub_1A45B5C10();
}

uint64_t sub_1A45B65A4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A45B64A4(a3, v8);

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_1A45B6628@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A3C2F0BC(a1, v7);
  sub_1A45B77BC();
  swift_dynamicCast();
  v3 = *(v6 + 16);
  a2[3] = sub_1A42C381C();
  v4 = v3;

  *a2 = v4;
  return result;
}

id sub_1A45B66B4(void *a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  v8 = sub_1A45B7404(a3);

  return v8;
}

void sub_1A45B6718(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1A45B74C8();
}

id sub_1A45B67C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPageLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A45B6838(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  MEMORY[0x1A590F020](&a1[*((*v2 & *a1) + 0x80)]);

  v3 = *&a1[*((*v2 & *a1) + 0xA0)];
}

void sub_1A45B69C8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B730);
  __swift_project_value_buffer(v0, qword_1EB15B730);
  sub_1A5246EF4();
}

void sub_1A45B6A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = MEMORY[0x1E69E7D40];
  v10 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  *&v4[*((*v9 & *v4) + 0x88)] = 0;
  *&v4[*((*v9 & *v4) + 0x90)] = 0;
  *&v4[*((*v9 & *v4) + 0x98)] = 0;
  *&v4[*((*v9 & *v4) + 0xA0)] = 0;
  (*(*(*((v10 & v8) + 0x50) - 8) + 16))(&v4[*((*v9 & *v4) + 0x60)], a1, *((v10 & v8) + 0x50));
  swift_unknownObjectWeakAssign();
  v11 = &v4[*((*v9 & *v4) + 0x78)];
  *v11 = a3;
  *(v11 + 1) = a4;
  v12 = objc_allocWithZone(off_1E77216B8);

  *&v4[*((*v9 & *v4) + 0x70)] = [v12 init];
  *&v4[*((*v9 & *v4) + 0x68)] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for PhotosPageLayout();
  v13 = objc_msgSendSuper2(&v20, sel_init);
  [v13 setContentSource_];
  [v13 addSpriteCount:1 withInitialState:0];
  v14 = [objc_allocWithZone(off_1E7721940) initWithTarget:sub_1A524EA94() needsUpdateSelector:sel_setNeedsUpdate];

  swift_unknownObjectRelease();
  v15 = *((*v9 & *v13) + 0xA0);
  v16 = *(v13 + v15);
  *(v13 + v15) = v14;
  v17 = v14;

  if (v17)
  {
    [v17 addUpdateSelector:sel_updateContentLayout needsUpdate:1];

    v18 = *((*v9 & *v13) + 0x70);
    v19 = *(v13 + v18);
    type metadata accessor for PhotosPageContainerView();
    [v19 setContentViewClass_];
    [*(v13 + v18) setStyle_];
    [*(v13 + v18) setDelegate_];
    [v13 addSublayout_];
    sub_1A45B5C10();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1A45B6DE4(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  v5 = v4[10];
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v42 - v8;
  v10 = v4[21];
  v11 = *(v1 + v4[15]);
  v10(v7);
  v12 = v11(v9);
  (*(v6 + 8))(v9, v5);
  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClassUnconditional();
    v14 = *((*v3 & *v2) + 0x90);
    v15 = *(v2 + v14);
    *(v2 + v14) = v13;
    v16 = v12;

    v17 = [v13 contentController];
    v18 = [v17 layout];

    v19 = *((*v3 & *v2) + 0x98);
    v20 = *(v2 + v19);
    *(v2 + v19) = v18;

    type metadata accessor for PhotosPageContainerView.Configuration();
    v21 = v16;
    v22 = sub_1A42B3278(v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v25;
    v27 = *((*v3 & *v22) + 0xB8);

    v27(sub_1A45B7814, v26);

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    v31 = *((*v3 & *v22) + 0xD0);

    v31(sub_1A45B78A4, v30);

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = *((*v3 & *v22) + 0xE8);

    v33(sub_1A45B7930, v32);

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v35 = *((*v3 & *v22) + 0x100);

    v35(sub_1A45B798C, v34);
  }

  else
  {
    if (qword_1EB1C8C10 != -1)
    {
      swift_once();
    }

    v36 = sub_1A5246F24();
    __swift_project_value_buffer(v36, qword_1EB15B730);
    v37 = v2;
    v38 = sub_1A5246F04();
    v39 = sub_1A524D244();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v42[1] = swift_slowAlloc();
      *v40 = 136315138;
      (v10)();
      sub_1A524C714();
      sub_1A3C2EF94();
    }

    return 0;
  }

  return v22;
}

id sub_1A45B7404(int a1)
{
  if (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68)) == a1)
  {
    v2 = [objc_opt_self() systemBackgroundColor];

    return v2;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A45B7528()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1A45B7600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 2);
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = MEMORY[0x1E69E7D40];
  v14 = *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x68));
  v32.origin.x = v9;
  v32.origin.y = v10;
  v32.size.width = v11;
  v32.size.height = v12;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = v9;
  v33.origin.y = v10;
  v33.size.width = v11;
  v33.size.height = v12;
  MidY = CGRectGetMidY(v33);
  v34.origin.x = v9;
  v34.origin.y = v10;
  v34.size.width = v11;
  v34.size.height = v12;
  Width = CGRectGetWidth(v34);
  v35.origin.x = v9;
  v35.origin.y = v10;
  v35.size.width = v11;
  v35.size.height = v12;
  Height = CGRectGetHeight(v35);
  v18.f64[0] = Width;
  v18.f64[1] = Height;
  v19 = (a2 + 32 * v14);
  *v19 = MidX;
  *&v19[1] = MidY;
  v19[2] = 0x3FF0000000000000;
  v19[3] = vcvt_f32_f64(v18);
  v20 = (a3 + 160 * *(v8 + *((*v13 & *v8) + 0x68)));
  v21 = *(off_1E7722048 + 1);
  *v20 = *off_1E7722048;
  v20[1] = v21;
  v22 = *(off_1E7722048 + 5);
  v20[4] = *(off_1E7722048 + 4);
  v20[5] = v22;
  v23 = *(off_1E7722048 + 3);
  v20[2] = *(off_1E7722048 + 2);
  v20[3] = v23;
  v24 = *(off_1E7722048 + 9);
  v20[8] = *(off_1E7722048 + 8);
  v20[9] = v24;
  v25 = *(off_1E7722048 + 7);
  v20[6] = *(off_1E7722048 + 6);
  v20[7] = v25;
  *(a4 + 40 * *(v8 + *((*v13 & *v8) + 0x68)) + 1) = 5;
  __asm { FMOV            V0.2S, #1.0 }

  *(a4 + 40 * *(v8 + *((*v13 & *v8) + 0x68)) + 8) = result;
  return result;
}

void sub_1A45B77BC()
{
  if (!qword_1EB125C40)
  {
    sub_1A42C381C();
    v0 = type metadata accessor for PhotoKitItem();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125C40);
    }
  }
}

void sub_1A45B7814()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      [v1 addChildViewController_];

      v1 = v3;
    }
  }
}

void sub_1A45B78A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      [v2 didMoveToParentViewController_];

      v1 = v3;
    }
  }
}

void sub_1A45B7930()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong willMoveToParentViewController_];
  }
}

void sub_1A45B798C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong removeFromParentViewController];
}

void sub_1A45B79E0()
{
  swift_getKeyPath();
  (*(*v0 + 472))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45B7A54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1A45B7C00()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager____lazy_storage___suggestionProvider;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager____lazy_storage___suggestionProvider);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1A45B7C70(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_1A41B617C(v4);
  }

  sub_1A41EDCF0(v2);
  return v3;
}

uint64_t sub_1A45B7C70(uint64_t a1)
{
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  sub_1A5244F64();
  v5 = *(a1 + 24);
  v6 = sub_1A5244F34();
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_1A524CC54();

  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = v6;

  sub_1A3D4D930(0, 0, v4, &unk_1A534DEB0, v10);

  return v6;
}

void sub_1A45B7F40()
{
  swift_getKeyPath();
  (*(*v0 + 472))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45B7FBC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 472))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__initialSuggestions);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45B81B4()
{
  swift_getKeyPath();
  (*(*v0 + 472))();
}

uint64_t sub_1A45B8230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 472))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__currentFetchTask);
}

uint64_t sub_1A45B82C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 480))(KeyPath, sub_1A45C0FA4, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A45B8370@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 472))();

  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  swift_beginAccess();
  return sub_1A3C5DBA4(v1 + v3, a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A45B8428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 472))();

  v4 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  swift_beginAccess();
  return sub_1A3C5DBA4(v3 + v4, a2, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A45B84E4(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1A3C5DBA4(a1, &v7 - v4, &qword_1EB12AFE0, v2);
  return sub_1A45B85B4(v5);
}

uint64_t sub_1A45B85B4(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  swift_beginAccess();
  sub_1A3C5DBA4(v1 + v7, v6, &qword_1EB12AFE0, v3);
  v8 = sub_1A45BF410(v6, a1);
  sub_1A3C42DA0(v6, &qword_1EB12AFE0, v3);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 480))(v10);
  }

  else
  {
    sub_1A3C5DBA4(a1, v6, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    swift_beginAccess();
    sub_1A3DBE288(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1A3C42DA0(a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A45B87D8(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1A3C5DBA4(a2, &v10 - v6, &qword_1EB12AFE0, v4);
  v8 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  swift_beginAccess();
  sub_1A3DBE288(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t sub_1A45B88D0()
{
  v0 = [objc_opt_self() weakToStrongObjectsMapTable];
  sub_1A3C4A700();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EB15EC98 = result;
  return result;
}

uint64_t GenerativeStoryPromptSuggestionManager.CacheInvalidationIntent.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A45B89BC(_BYTE *a1)
{
  *(v2 + 40) = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v2 + 48) = swift_task_alloc();
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v4);
  *(v2 + 56) = swift_task_alloc();
  v5 = sub_1A5241144();
  *(v2 + 64) = v5;
  *(v2 + 72) = *(v5 - 8);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 136) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1A45B8B40, 0, 0);
}

uint64_t sub_1A45B8B40()
{
  if (!*(v0 + 136))
  {
    goto LABEL_5;
  }

  if (*(v0 + 136) == 1)
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    v4 = *(v0 + 40);
    KeyPath = swift_getKeyPath();
    (*(*v4 + 472))(KeyPath);

    v6 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
    swift_beginAccess();
    sub_1A3C5DBA4(v4 + v6, v3, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_1A3C42DA0(*(v0 + 56), &qword_1EB12AFE0, MEMORY[0x1E6969530]);
LABEL_5:
      v7 = 1;
      goto LABEL_8;
    }

    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = *(v0 + 40);
    (*(v11 + 32))(v8, *(v0 + 56), v10);
    sub_1A5241104();
    sub_1A5241054();
    v14 = v13;
    v15 = *(v11 + 8);
    v15(v9, v10);
    v15(v8, v10);
    v7 = v14 < *(v12 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_refetchCooldownInterval);
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  *(v0 + 137) = v7;
  v16 = **(v0 + 40) + 200;
  *(v0 + 96) = *v16;
  *(v0 + 104) = v16 & 0xFFFFFFFFFFFFLL | 0x7120000000000000;
  *(v0 + 112) = sub_1A524CC54();
  *(v0 + 120) = sub_1A524CC44();
  v18 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45B8D9C, v18, v17);
}

uint64_t sub_1A45B8D9C()
{
  v1 = *(v0 + 96);

  *(v0 + 128) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A45B8E1C, 0, 0);
}

uint64_t sub_1A45B8E1C()
{
  v1 = *(v0 + 137);
  v2 = *(*(v0 + 128) + 16);

  v3 = *(v0 + 40);
  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (*(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_wantsMockSuggestions) == 1)
    {
      v5 = *(v0 + 48);
      v6 = sub_1A45BF9F4();
      v7 = sub_1A524CCB4();
      (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
      v8 = swift_allocObject();
      swift_weakInit();

      v9 = sub_1A524CC44();
      v10 = swift_allocObject();
      v11 = MEMORY[0x1E69E85E0];
      v10[2] = v9;
      v10[3] = v11;
      v10[4] = v8;
      v10[5] = v6;

      sub_1A3D4D930(0, 0, v5, &unk_1A534DCF8, v10);
    }

    else
    {
      v12 = *(v0 + 137);
      KeyPath = swift_getKeyPath();
      (*(*v3 + 472))(KeyPath);

      v14 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__currentFetchTask);
      v15 = swift_task_alloc();
      *(v15 + 16) = v3;
      *(v15 + 24) = v12;

      os_unfair_lock_lock((v14 + 24));
      sub_1A45BD6CC((v14 + 16));
      os_unfair_lock_unlock((v14 + 24));
    }
  }

  else
  {
    sub_1A45BA3EC();
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_1A45B9090(uint64_t *a1, uint64_t a2, char a3)
{
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1A45B7C00();
  if (v8)
  {
    v9 = v8;
    v10 = *a1;
    if ((a3 & 1) != 0 && v10)
    {
      v11 = sub_1A5246F04();
      v12 = sub_1A524D264();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1A3C1C000, v11, v12, "Ignoring new request to fetch suggestions, because previous task did not finish", v13, 2u);
        MEMORY[0x1A590EEC0](v13, -1, -1);
      }
    }

    else
    {
      sub_1A524CC74();
      v17 = sub_1A524CCB4();
      (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v18;
      v19[5] = v10;
      v19[6] = v9;

      v20 = sub_1A4064334(0, 0, v7, &unk_1A534DED0, v19);

      sub_1A3C42DA0(v7, &qword_1EB12B270, MEMORY[0x1E69E85F0]);

      *a1 = v20;
    }
  }

  else
  {
    v22 = sub_1A5246F04();
    v14 = sub_1A524D244();
    if (os_log_type_enabled(v22, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A3C1C000, v22, v14, "Missing an instance of PromptSuggestionProvider", v15, 2u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    v16 = v22;
  }
}

uint64_t sub_1A45B93A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A45B9468, 0, 0);
}

uint64_t sub_1A45B9468()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (!Strong)
  {
LABEL_4:

    v2 = v0[1];

    return v2();
  }

  if (sub_1A524CDC4())
  {
LABEL_3:

    goto LABEL_4;
  }

  v4 = v0[8];
  if (v4)
  {

    v5 = sub_1A5246F04();
    v6 = sub_1A524D264();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, v6, "Waiting for previous prompt suggestion fetch to finish before starting a new fetch", v7, 2u);
      MEMORY[0x1A590EEC0](v7, -1, -1);
    }

    v8 = sub_1A3DBD9A0();
    v9 = MEMORY[0x1E69E7CA8];
    v10 = MEMORY[0x1E69E7288];
    sub_1A524CD94();
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_1A45B9778;

    return MEMORY[0x1EEE6DA20](v0 + 5, v4, v9 + 8, v8, v10);
  }

  else
  {
    v0[13] = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_logger;
    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1A3C1C000, v12, v13, "Starting new prompt suggestions fetch", v14, 2u);
      MEMORY[0x1A590EEC0](v14, -1, -1);
    }

    v15 = v0[11];

    v16 = v15 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest;
    v17 = *(v15 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest);
    if (v17)
    {
      v18 = *(v16 + 8);

      v17(v19);
      sub_1A3C784D4(v17, v18);
      goto LABEL_3;
    }

    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_1A45B9A44;
    v21 = v0[9];

    return sub_1A45BAF5C(v21);
  }
}

uint64_t sub_1A45B9778()
{
  v1 = *v0;

  sub_1A452FD58(*(v1 + 40), *(v1 + 48));

  return MEMORY[0x1EEE6DFA0](sub_1A45B9898, 0, 0);
}

uint64_t sub_1A45B9898()
{

  v0[13] = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_logger;
  v1 = sub_1A5246F04();
  v2 = sub_1A524D264();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A3C1C000, v1, v2, "Starting new prompt suggestions fetch", v3, 2u);
    MEMORY[0x1A590EEC0](v3, -1, -1);
  }

  v4 = v0[11];

  v5 = v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest;
  v6 = *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest);
  if (v6)
  {
    v7 = *(v5 + 8);

    v6(v8);
    sub_1A3C784D4(v6, v7);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_1A45B9A44;
    v12 = v0[9];

    return sub_1A45BAF5C(v12);
  }
}

uint64_t sub_1A45B9A44(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A45B9B44, 0, 0);
}

uint64_t sub_1A45B9B44()
{
  if ((sub_1A524CDC4() & 1) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45B9D78(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_1A45C0E40(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  v3[6] = swift_task_alloc();
  v4 = sub_1A5244A54();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A45B9E98, 0, 0);
}

uint64_t sub_1A45B9E98()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for GenerativeStorySuggestion(0);
  sub_1A3C5DBA4(v4 + *(v5 + 28), v3, &qword_1EB124C68, MEMORY[0x1E69C10C8]);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1A3C42DA0(v0[6], &qword_1EB124C68, MEMORY[0x1E69C10C8]);
LABEL_8:

    v10 = v0[1];

    return v10();
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  v6 = sub_1A45B7C00();
  v0[10] = v6;
  if (!v6)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    goto LABEL_8;
  }

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1A45BA054;
  v8 = v0[9];
  v9 = v0[4];

  return MEMORY[0x1EEE2A1A8](v8, v9);
}

uint64_t sub_1A45BA054()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1A45BA1F4;
  }

  else
  {

    v2 = sub_1A45BA170;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A45BA170()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A45BA1F4()
{
  v1 = *(v0 + 96);

  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136315138;
    *(v0 + 16) = v5;
    v7 = v5;
    sub_1A3DBD9A0();
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 56);

  (*(v9 + 8))(v8, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A45BA3EC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v32 - v4;
  v5 = MEMORY[0x1E6969530];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = sub_1A5241144();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 472))(KeyPath);

  v20 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  swift_beginAccess();
  sub_1A3C5DBA4(v1 + v20, v11, &qword_1EB12AFE0, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1A3C42DA0(v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  }

  (*(v13 + 32))(v18, v11, v12);
  sub_1A5241104();
  sub_1A5241054();
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v15, v12);
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_expirationInterval) < v23)
  {
    (*(v13 + 56))(v8, 1, 1, v12);
    sub_1A45B85B4(v8);
    v25 = sub_1A5246F04();
    v26 = sub_1A524D264();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1A3C1C000, v25, v26, "Previously fetched suggestions have expired", v27, 2u);
      MEMORY[0x1A590EEC0](v27, -1, -1);
    }

    v28 = sub_1A524CCB4();
    v29 = v32;
    (*(*(v28 - 8) + 56))(v32, 1, 1, v28);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v30;
    sub_1A3D4D930(0, 0, v29, &unk_1A534DEB8, v31);
  }

  return (v24)(v18, v12);
}

uint64_t sub_1A45BA89C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    *(v0 + 64) = 2;
    v5 = (*(*Strong + 400) + **(*Strong + 400));
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1A45BAA2C;

    return v5(v0 + 64);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1A45BAA2C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4341028, 0, 0);
}

uint64_t sub_1A45BAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5[7] = swift_task_alloc();
  sub_1A524CC54();
  v5[8] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45BAC1C, v7, v6);
}

uint64_t sub_1A45BAC1C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[6];
    v3 = v0[7];
    sub_1A5241134();
    v5 = sub_1A5241144();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = sub_1A45B85B4(v3);
    v7 = (*(*v2 + 200))(v6);
    LOBYTE(v4) = sub_1A45BD3E8(v4, v7);

    if (v4)
    {
    }

    else
    {
      v8 = v0[6];
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      sub_1A524BD24();
      sub_1A45C0DF0(0, &qword_1EB126120, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
      sub_1A52483D4();
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A45BAE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45BAEB4, v7, v6);
}

uint64_t sub_1A45BAEB4()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for GenerativeStoryPromptSuggestionManager();
    sub_1A5244F54();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45BAF5C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_1A5244924();
  v2[11] = swift_task_alloc();
  v3 = MEMORY[0x1E69E6720];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2[12] = swift_task_alloc();
  v4 = sub_1A5244A24();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_1A5245494();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  sub_1A45C0E40(0, &qword_1EB124BD8, MEMORY[0x1E69C14D0], v3);
  v2[19] = swift_task_alloc();
  sub_1A45C0E40(0, &qword_1EB124BE0, MEMORY[0x1E69C14C8], v3);
  v2[20] = swift_task_alloc();
  v6 = sub_1A5241144();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v7 = sub_1A52411C4();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = sub_1A524BFF4();
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();
  v9 = sub_1A5244984();
  v2[30] = v9;
  v2[31] = *(v9 - 8);
  v2[32] = swift_task_alloc();
  v10 = sub_1A524E5E4();
  v2[33] = v10;
  v2[34] = *(v10 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A45BB368, 0, 0);
}

uint64_t sub_1A45BB368()
{
  v52 = v0;
  sub_1A3C52C70(0, &qword_1EB126860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 288) = ObjCClassFromMetadata;
  v2 = [ObjCClassFromMetadata sharedInstance];
  v3 = [v2 simulateSlowFetchForPromptSuggestion];

  if (!v3)
  {
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 216);
    sub_1A3C52C70(0, &qword_1EB12B180);
    *v9 = sub_1A524D474();
    (*(v10 + 104))(v9, *MEMORY[0x1E69E8018], v11);
    v12 = sub_1A524C024();
    (*(v10 + 8))(v9, v11);
    if (v12)
    {
      v13 = [*(v0 + 288) sharedInstance];
      v14 = [v13 promptSuggestionRefreshOnReload];

      if (v14)
      {
        v16 = *(v0 + 200);
        v15 = *(v0 + 208);
        v17 = *(v0 + 192);
        sub_1A52411B4();
        v18 = sub_1A52411A4();
        (*(v16 + 8))(v15, v17);
        v19 = 0;
        goto LABEL_76;
      }

      v21 = *(v0 + 176);
      v20 = *(v0 + 184);
      v22 = *(v0 + 168);
      v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v23 = sub_1A524C634();
      [v9 setDateFormat_];

      sub_1A5241134();
      v24 = sub_1A5241074();
      (*(v21 + 8))(v20, v22);
      v25 = [v9 stringFromDate_];

      v26 = sub_1A524C674();
      v28 = v27;

      v32 = HIBYTE(v28) & 0xF;
      v33 = v26 & 0xFFFFFFFFFFFFLL;
      if ((v28 & 0x2000000000000000) != 0)
      {
        v34 = HIBYTE(v28) & 0xF;
      }

      else
      {
        v34 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v34)
      {
        if ((v28 & 0x1000000000000000) != 0)
        {
          sub_1A45BD8F8(v26, v28);
        }

        if ((v28 & 0x2000000000000000) != 0)
        {
          v51[0] = v26;
          v51[1] = v28 & 0xFFFFFFFFFFFFFFLL;
          if (v26 == 43)
          {
            if (v32)
            {
              if (--v32)
              {
                v36 = 0;
                v44 = v51 + 1;
                while (1)
                {
                  v45 = *v44 - 48;
                  if (v45 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v36, 0xAuLL))
                  {
                    break;
                  }

                  v39 = __CFADD__(10 * v36, v45);
                  v36 = 10 * v36 + v45;
                  if (v39)
                  {
                    break;
                  }

                  ++v44;
                  if (!--v32)
                  {
                    goto LABEL_73;
                  }
                }
              }

              goto LABEL_72;
            }

LABEL_86:
            __break(1u);
            return MEMORY[0x1EEE2A1B8](v29, v33, v30, v31);
          }

          if (v26 != 45)
          {
            if (v32)
            {
              v36 = 0;
              v47 = v51;
              while (1)
              {
                v48 = *v47 - 48;
                if (v48 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v36, 0xAuLL))
                {
                  break;
                }

                v39 = __CFADD__(10 * v36, v48);
                v36 = 10 * v36 + v48;
                if (v39)
                {
                  break;
                }

                ++v47;
                if (!--v32)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_72;
          }

          if (v32)
          {
            if (--v32)
            {
              v36 = 0;
              v40 = v51 + 1;
              while (1)
              {
                v41 = *v40 - 48;
                if (v41 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v36, 0xAuLL))
                {
                  break;
                }

                v39 = 10 * v36 >= v41;
                v36 = 10 * v36 - v41;
                if (!v39)
                {
                  break;
                }

                ++v40;
                if (!--v32)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_72;
          }
        }

        else
        {
          if ((v26 & 0x1000000000000000) != 0)
          {
            v29 = (v28 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            v29 = sub_1A524E4F4();
          }

          v35 = *v29;
          if (v35 == 43)
          {
            if (v33 >= 1)
            {
              v32 = v33 - 1;
              if (v33 != 1)
              {
                v36 = 0;
                if (v29)
                {
                  v42 = (v29 + 1);
                  while (1)
                  {
                    v43 = *v42 - 48;
                    if (v43 > 9)
                    {
                      goto LABEL_72;
                    }

                    if (!is_mul_ok(v36, 0xAuLL))
                    {
                      goto LABEL_72;
                    }

                    v39 = __CFADD__(10 * v36, v43);
                    v36 = 10 * v36 + v43;
                    if (v39)
                    {
                      goto LABEL_72;
                    }

                    ++v42;
                    if (!--v32)
                    {
                      goto LABEL_73;
                    }
                  }
                }

                goto LABEL_64;
              }

              goto LABEL_72;
            }

            goto LABEL_85;
          }

          if (v35 != 45)
          {
            if (v33)
            {
              v36 = 0;
              if (v29)
              {
                while (1)
                {
                  v46 = *v29 - 48;
                  if (v46 > 9)
                  {
                    goto LABEL_72;
                  }

                  if (!is_mul_ok(v36, 0xAuLL))
                  {
                    goto LABEL_72;
                  }

                  v39 = __CFADD__(10 * v36, v46);
                  v36 = 10 * v36 + v46;
                  if (v39)
                  {
                    goto LABEL_72;
                  }

                  ++v29;
                  if (!--v33)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_64;
            }

LABEL_72:
            v36 = 0;
            LOBYTE(v32) = 1;
LABEL_73:
            v19 = v32;

            if (v19)
            {
              v18 = 0;
            }

            else
            {
              v18 = v36;
            }

LABEL_76:
            v49 = PXSharingFilterFromPhotoLibrary(*(*(v0 + 80) + 24));
            v50 = swift_task_alloc();
            *(v0 + 304) = v50;
            *v50 = v0;
            v50[1] = sub_1A45BC0F0;
            v31 = v19 & 1;
            v29 = 3;
            v33 = v49;
            v30 = v18;

            return MEMORY[0x1EEE2A1B8](v29, v33, v30, v31);
          }

          if (v33 >= 1)
          {
            v32 = v33 - 1;
            if (v33 != 1)
            {
              v36 = 0;
              if (v29)
              {
                v37 = (v29 + 1);
                while (1)
                {
                  v38 = *v37 - 48;
                  if (v38 > 9)
                  {
                    goto LABEL_72;
                  }

                  if (!is_mul_ok(v36, 0xAuLL))
                  {
                    goto LABEL_72;
                  }

                  v39 = 10 * v36 >= v38;
                  v36 = 10 * v36 - v38;
                  if (!v39)
                  {
                    goto LABEL_72;
                  }

                  ++v37;
                  if (!--v32)
                  {
                    goto LABEL_73;
                  }
                }
              }

LABEL_64:
              LOBYTE(v32) = 0;
              goto LABEL_73;
            }

            goto LABEL_72;
          }

          __break(1u);
        }

        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    else
    {
      __break(1u);
    }

    v18 = 0;
    v19 = 1;
    goto LABEL_76;
  }

  v4 = sub_1A5246F04();
  v5 = sub_1A524D264();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "Simulating slow fetch for prompt suggestions", v6, 2u);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  sub_1A524EBB4();
  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = sub_1A45BBA1C;

  return sub_1A3DCFAB0(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1A45BBA1C()
{
  v2 = *v1;

  v3 = v2[35];
  v4 = v2[34];
  v5 = v2[33];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1A45C1030;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1A45BBBB4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A45BBBB4()
{
  v45 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1A3C52C70(0, &qword_1EB12B180);
  *v1 = sub_1A524D474();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1A524C024();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
LABEL_74:

    v10 = 0;
    v11 = 1;
    goto LABEL_70;
  }

  v5 = [*(v0 + 288) sharedInstance];
  v6 = [v5 promptSuggestionRefreshOnReload];

  if (v6)
  {
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 192);
    sub_1A52411B4();
    v10 = sub_1A52411A4();
    (*(v8 + 8))(v7, v9);
    v11 = 0;
    goto LABEL_70;
  }

  v13 = *(v0 + 176);
  v12 = *(v0 + 184);
  v14 = *(v0 + 168);
  v1 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v15 = sub_1A524C634();
  [v1 setDateFormat_];

  sub_1A5241134();
  v16 = sub_1A5241074();
  (*(v13 + 8))(v12, v14);
  v17 = [v1 stringFromDate_];

  v18 = sub_1A524C674();
  v20 = v19;

  v24 = HIBYTE(v20) & 0xF;
  v25 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v26 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    goto LABEL_74;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    sub_1A45BD8F8(v18, v20);
  }

  if ((v20 & 0x2000000000000000) != 0)
  {
    v44[0] = v18;
    v44[1] = v20 & 0xFFFFFFFFFFFFFFLL;
    if (v18 == 43)
    {
      if (v24)
      {
        if (--v24)
        {
          v28 = 0;
          v36 = v44 + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              break;
            }

            v31 = __CFADD__(10 * v28, v37);
            v28 = 10 * v28 + v37;
            if (v31)
            {
              break;
            }

            ++v36;
            if (!--v24)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_80:
      __break(1u);
      return MEMORY[0x1EEE2A1B8](v21, v25, v22, v23);
    }

    if (v18 != 45)
    {
      if (v24)
      {
        v28 = 0;
        v39 = v44;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          if (!is_mul_ok(v28, 0xAuLL))
          {
            break;
          }

          v31 = __CFADD__(10 * v28, v40);
          v28 = 10 * v28 + v40;
          if (v31)
          {
            break;
          }

          ++v39;
          if (!--v24)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v24)
    {
      if (--v24)
      {
        v28 = 0;
        v32 = v44 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          if (!is_mul_ok(v28, 0xAuLL))
          {
            break;
          }

          v31 = 10 * v28 >= v33;
          v28 = 10 * v28 - v33;
          if (!v31)
          {
            break;
          }

          ++v32;
          if (!--v24)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_78;
  }

  if ((v18 & 0x1000000000000000) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v21 = sub_1A524E4F4();
  }

  v27 = *v21;
  if (v27 == 43)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v28 = 0;
        if (v21)
        {
          v34 = (v21 + 1);
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              goto LABEL_66;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              goto LABEL_66;
            }

            v31 = __CFADD__(10 * v28, v35);
            v28 = 10 * v28 + v35;
            if (v31)
            {
              goto LABEL_66;
            }

            ++v34;
            if (!--v24)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_58;
      }

      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (v27 == 45)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v28 = 0;
        if (v21)
        {
          v29 = (v21 + 1);
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              goto LABEL_66;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              goto LABEL_66;
            }

            v31 = 10 * v28 >= v30;
            v28 = 10 * v28 - v30;
            if (!v31)
            {
              goto LABEL_66;
            }

            ++v29;
            if (!--v24)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_58:
        LOBYTE(v24) = 0;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v25)
  {
    v28 = 0;
    if (v21)
    {
      while (1)
      {
        v38 = *v21 - 48;
        if (v38 > 9)
        {
          goto LABEL_66;
        }

        if (!is_mul_ok(v28, 0xAuLL))
        {
          goto LABEL_66;
        }

        v31 = __CFADD__(10 * v28, v38);
        v28 = 10 * v28 + v38;
        if (v31)
        {
          goto LABEL_66;
        }

        ++v21;
        if (!--v25)
        {
          goto LABEL_58;
        }
      }
    }

    goto LABEL_58;
  }

LABEL_66:
  v28 = 0;
  LOBYTE(v24) = 1;
LABEL_67:
  v11 = v24;

  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = v28;
  }

LABEL_70:
  v41 = PXSharingFilterFromPhotoLibrary(*(*(v0 + 80) + 24));
  v42 = swift_task_alloc();
  *(v0 + 304) = v42;
  *v42 = v0;
  v42[1] = sub_1A45BC0F0;
  v23 = v11 & 1;
  v21 = 3;
  v25 = v41;
  v22 = v10;

  return MEMORY[0x1EEE2A1B8](v21, v25, v22, v23);
}

uint64_t sub_1A45BC0F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = v2;

  if (v2)
  {
    v5 = sub_1A45BC768;
  }

  else
  {
    v5 = sub_1A45BC208;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A45BC768()
{
  v1 = *(v0 + 328);
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 328);
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136315138;
    *(v0 + 64) = v5;
    v7 = v5;
    sub_1A3DBD9A0();
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  v8 = *(v0 + 8);
  v9 = MEMORY[0x1E69E7CC0];

  return v8(v9);
}

void sub_1A45BC974(uint64_t a1@<X0>, _BYTE *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v28 = a4;
  v29 = a5;
  v27 = sub_1A5244984();
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45C0E40(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_1A5244A24();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1 && (sub_1A5244994(), v17) && (, sub_1A52448F4(), v18 = sub_1A524C7A4(), , v18 <= a3))
  {
    v19 = sub_1A52448D4();
    *a2 = 0;
  }

  else
  {
    v19 = sub_1A52448E4();
  }

  v20 = v19;
  v21 = sub_1A52449E4();
  v23 = v22;
  sub_1A5244A34();
  v24 = sub_1A5244A54();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v13, a1, v24);
  (*(v25 + 56))(v13, 0, 1, v24);
  (*(v8 + 16))(v10, v28, v27);
  sub_1A417DAEC(v21, v23, v20, v16, v13, v10, 0, 0, v29);
}

uint64_t sub_1A45BCC14(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for GenerativeStorySuggestion(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1A45BDE7C(0, v10, 0);
  v11 = v21;
  v12 = *(sub_1A5244A54() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1A45BDE7C(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1A417F008(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t GenerativeStoryPromptSuggestionManager.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest), *(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest + 8));
  sub_1A41B617C(*(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager____lazy_storage___suggestionProvider));

  sub_1A3C42DA0(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerativeStoryPromptSuggestionManager.__deallocating_deinit()
{
  GenerativeStoryPromptSuggestionManager.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall GenerativeStoryPromptSuggestionManager.suggestionsDidGetInvalidated()()
{
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "suggestionsDidGetInvalidated, reloading", v5, 2u);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_1A3D4D930(0, 0, v2, &unk_1A534DD10, v8);
}

uint64_t sub_1A45BD2B8(uint64_t a1)
{
  if (qword_1EB15EC90 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB15EC98;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1A45C058C((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  return v4;
}

uint64_t static GenerativeStoryPromptSuggestionManager.managerForTest(for:fetchSuggestions:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GenerativeStoryPromptSuggestionManager();
  v6 = swift_allocObject();

  v7 = a1;
  sub_1A45BF774(v7, a2, a3);

  return v6;
}

uint64_t sub_1A45BD3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySuggestion(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A417EFA4(v13, v10);
        sub_1A417EFA4(v14, v6);
        sub_1A45C0FE8(&qword_1EB1257A0, type metadata accessor for GenerativeStorySuggestion);
        v16 = sub_1A524C594();
        sub_1A45C0C04(v6, type metadata accessor for GenerativeStorySuggestion);
        sub_1A45C0C04(v10, type metadata accessor for GenerativeStorySuggestion);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_1A45BD5C8()
{
  if (!qword_1EB1204E8)
  {
    sub_1A45C0E40(255, &qword_1EB120B90, sub_1A45BD660, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1A524E4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1204E8);
    }
  }
}

void sub_1A45BD660()
{
  if (!qword_1EB120B98)
  {
    sub_1A3DBD9A0();
    v0 = sub_1A524CDB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120B98);
    }
  }
}

size_t sub_1A45BD6FC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A45C0E40(0, &qword_1EB120350, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1A45BD8F8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

size_t sub_1A45BDE7C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A45BDE9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A45BDE9C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A45C0E40(0, &qword_1EB120350, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1A45BE098(void **a1)
{
  v2 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1A45BF3FC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1A45BE140(v5);
  *a1 = v3;
}

void sub_1A45BE140(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A524EA34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for GenerativeStorySuggestion(0);
        v6 = sub_1A524CAC4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1A45BE4BC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A45BE26C(0, v2, 1, a1);
  }
}

void sub_1A45BE26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for GenerativeStorySuggestion(0);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *(v13 + 72);
    v17 = *a4 + v16 * (a3 - 1);
    v18 = -v16;
    v19 = a1 - a3;
    v33 = *a4;
    v27 = v16;
    v20 = v33 + v16 * a3;
LABEL_5:
    v31 = v17;
    v32 = a3;
    v29 = v20;
    v30 = v19;
    v21 = v17;
    while (1)
    {
      sub_1A417EFA4(v20, v15);
      sub_1A417EFA4(v21, v11);
      sub_1A417DA38();
      v22 = sub_1A524C7A4();

      sub_1A417DA38();
      v23 = sub_1A524C7A4();

      sub_1A45C0C04(v11, type metadata accessor for GenerativeStorySuggestion);
      sub_1A45C0C04(v15, type metadata accessor for GenerativeStorySuggestion);
      if (v22 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v17 = v31 + v27;
        v19 = v30 - 1;
        v20 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_1A417F008(v20, v34);
      swift_arrayInitWithTakeFrontToBack();
      sub_1A417F008(v24, v21);
      v21 += v18;
      v20 += v18;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1A45BE4BC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v106 = a1;
  v119 = type metadata accessor for GenerativeStorySuggestion(0);
  v114 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v109 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v118 = &v102 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v102 - v14;
  v115 = a3;
  v15 = *(a3 + 8);
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_95:
    a3 = *v106;
    if (!*v106)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_127:
      v17 = sub_1A3D86884(v17);
    }

    v122 = v17;
    v98 = *(v17 + 2);
    if (v98 >= 2)
    {
      while (*v115)
      {
        v99 = *&v17[16 * v98];
        v100 = *&v17[16 * v98 + 24];
        sub_1A45BEDD0(*v115 + *(v114 + 72) * v99, *v115 + *(v114 + 72) * *&v17[16 * v98 + 16], *v115 + *(v114 + 72) * v100, a3);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v100 < v99)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1A3D86884(v17);
        }

        if (v98 - 2 >= *(v17 + 2))
        {
          goto LABEL_121;
        }

        v101 = &v17[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        v122 = v17;
        sub_1A3D867F8(v98 - 1);
        v17 = v122;
        v98 = *(v122 + 2);
        if (v98 <= 1)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_131;
    }

LABEL_105:

    return;
  }

  v103 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    if (v16 + 1 >= v15)
    {
      v35 = v16 + 1;
    }

    else
    {
      v116 = v15;
      v104 = v5;
      v20 = *v115;
      v21 = *(v114 + 72);
      v22 = *v115 + v21 * v19;
      v23 = v120;
      sub_1A417EFA4(v22, v120);
      v24 = v20 + v21 * v18;
      v25 = v18;
      v26 = v121;
      sub_1A417EFA4(v24, v121);
      sub_1A417DA38();
      a3 = v27;
      v113 = sub_1A524C7A4();

      sub_1A417DA38();
      v112 = sub_1A524C7A4();

      sub_1A45C0C04(v26, type metadata accessor for GenerativeStorySuggestion);
      sub_1A45C0C04(v23, type metadata accessor for GenerativeStorySuggestion);
      v105 = v25;
      v28 = v25 + 2;
      v117 = v21;
      v29 = v20 + v21 * (v25 + 2);
      v111 = v17;
      while (v116 != v28)
      {
        v30 = v113 < v112;
        v31 = v120;
        sub_1A417EFA4(v29, v120);
        v32 = v121;
        sub_1A417EFA4(v22, v121);
        sub_1A417DA38();
        a3 = sub_1A524C7A4();

        sub_1A417DA38();
        v33 = sub_1A524C7A4();

        sub_1A45C0C04(v32, type metadata accessor for GenerativeStorySuggestion);
        sub_1A45C0C04(v31, type metadata accessor for GenerativeStorySuggestion);
        v34 = v30 ^ (a3 >= v33);
        v17 = v111;
        ++v28;
        v29 += v117;
        v22 += v117;
        if ((v34 & 1) == 0)
        {
          v35 = v28 - 1;
          goto LABEL_11;
        }
      }

      v35 = v116;
LABEL_11:
      v5 = v104;
      v18 = v105;
      if (v113 < v112)
      {
        if (v35 < v105)
        {
          goto LABEL_124;
        }

        if (v105 < v35)
        {
          v36 = v117 * (v35 - 1);
          v37 = v35 * v117;
          v38 = v35;
          v39 = v105 * v117;
          do
          {
            if (v18 != --v35)
            {
              v40 = *v115;
              if (!*v115)
              {
                goto LABEL_130;
              }

              a3 = v40 + v39;
              sub_1A417F008(v40 + v39, v109);
              if (v39 < v36 || a3 >= v40 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1A417F008(v109, v40 + v36);
            }

            ++v18;
            v36 -= v117;
            v37 -= v117;
            v39 += v117;
          }

          while (v18 < v35);
          v17 = v111;
          v18 = v105;
          v35 = v38;
        }
      }
    }

    v41 = v115[1];
    if (v35 < v41)
    {
      if (__OFSUB__(v35, v18))
      {
        goto LABEL_123;
      }

      if (v35 - v18 < v103)
      {
        if (__OFADD__(v18, v103))
        {
          goto LABEL_125;
        }

        if (v18 + v103 >= v41)
        {
          v42 = v115[1];
        }

        else
        {
          v42 = v18 + v103;
        }

        if (v42 < v18)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v35 != v42)
        {
          break;
        }
      }
    }

    v16 = v35;
    if (v35 < v18)
    {
      goto LABEL_122;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1A3D8598C(0, *(v17 + 2) + 1, 1, v17);
    }

    a3 = *(v17 + 2);
    v43 = *(v17 + 3);
    v44 = a3 + 1;
    if (a3 >= v43 >> 1)
    {
      v17 = sub_1A3D8598C((v43 > 1), a3 + 1, 1, v17);
    }

    *(v17 + 2) = v44;
    v45 = &v17[16 * a3];
    *(v45 + 4) = v18;
    *(v45 + 5) = v16;
    v46 = *v106;
    if (!*v106)
    {
      goto LABEL_132;
    }

    if (a3)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v17 + 4);
          v49 = *(v17 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_54:
          if (v51)
          {
            goto LABEL_111;
          }

          v64 = &v17[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_114;
          }

          v70 = &v17[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_118;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v74 = &v17[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_68:
        if (v69)
        {
          goto LABEL_113;
        }

        v77 = &v17[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_116;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_75:
        a3 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v115)
        {
          goto LABEL_129;
        }

        v85 = *&v17[16 * a3 + 32];
        v86 = *&v17[16 * v47 + 40];
        sub_1A45BEDD0(*v115 + *(v114 + 72) * v85, *v115 + *(v114 + 72) * *&v17[16 * v47 + 32], *v115 + *(v114 + 72) * v86, v46);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v86 < v85)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1A3D86884(v17);
        }

        if (a3 >= *(v17 + 2))
        {
          goto LABEL_108;
        }

        v87 = &v17[16 * a3];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        v122 = v17;
        sub_1A3D867F8(v47);
        v17 = v122;
        v44 = *(v122 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v17[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_109;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_110;
      }

      v59 = &v17[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_112;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_115;
      }

      if (v63 >= v55)
      {
        v81 = &v17[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_119;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v15 = v115[1];
    if (v16 >= v15)
    {
      goto LABEL_95;
    }
  }

  v111 = v17;
  v104 = v5;
  v105 = v18;
  v88 = *(v114 + 72);
  v89 = *v115 + v88 * (v35 - 1);
  v90 = -v88;
  v91 = v18 - v35;
  v117 = *v115;
  v107 = v88;
  v108 = v42;
  a3 = v117 + v35 * v88;
LABEL_86:
  v116 = v35;
  v110 = a3;
  v112 = v91;
  v113 = v89;
  while (1)
  {
    v92 = v120;
    sub_1A417EFA4(a3, v120);
    v93 = v121;
    sub_1A417EFA4(v89, v121);
    sub_1A417DA38();
    v94 = sub_1A524C7A4();

    sub_1A417DA38();
    v95 = sub_1A524C7A4();

    sub_1A45C0C04(v93, type metadata accessor for GenerativeStorySuggestion);
    sub_1A45C0C04(v92, type metadata accessor for GenerativeStorySuggestion);
    if (v94 >= v95)
    {
LABEL_85:
      v35 = v116 + 1;
      v16 = v108;
      v89 = v113 + v107;
      v91 = v112 - 1;
      a3 = v110 + v107;
      if (v116 + 1 != v108)
      {
        goto LABEL_86;
      }

      v5 = v104;
      v18 = v105;
      v17 = v111;
      if (v108 < v105)
      {
        goto LABEL_122;
      }

      goto LABEL_35;
    }

    if (!v117)
    {
      break;
    }

    v96 = v118;
    sub_1A417F008(a3, v118);
    swift_arrayInitWithTakeFrontToBack();
    sub_1A417F008(v96, v89);
    v89 += v90;
    a3 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

void sub_1A45BEDD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = type metadata accessor for GenerativeStorySuggestion(0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v38 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v51 = a1;
  v50 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v16;
    if (v16 >= 1)
    {
      v26 = -v12;
      v27 = v25;
      v41 = -v12;
      v42 = a1;
      while (2)
      {
        while (1)
        {
          v39 = v25;
          v28 = a2;
          v29 = a2 + v26;
          v43 = v28;
          v44 = v29;
          while (1)
          {
            if (v28 <= a1)
            {
              v51 = v28;
              v49 = v39;
              goto LABEL_59;
            }

            v40 = v25;
            v31 = a3 + v26;
            v32 = v27 + v26;
            v33 = v47;
            sub_1A417EFA4(v32, v47);
            v34 = v29;
            v35 = v48;
            sub_1A417EFA4(v34, v48);
            sub_1A417DA38();
            v45 = sub_1A524C7A4();

            sub_1A417DA38();
            v36 = sub_1A524C7A4();

            sub_1A45C0C04(v35, type metadata accessor for GenerativeStorySuggestion);
            sub_1A45C0C04(v33, type metadata accessor for GenerativeStorySuggestion);
            if (v45 < v36)
            {
              break;
            }

            v25 = v32;
            if (a3 < v27 || v31 >= v27)
            {
              a3 = v31;
              swift_arrayInitWithTakeFrontToBack();
              a1 = v42;
            }

            else
            {
              v37 = a3 == v27;
              a3 = v31;
              a1 = v42;
              if (!v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v27 = v32;
            v30 = v32 > a4;
            v28 = v43;
            v29 = v44;
            v26 = v41;
            if (!v30)
            {
              a2 = v43;
              goto LABEL_58;
            }
          }

          if (a3 < v43 || v31 >= v43)
          {
            break;
          }

          v37 = a3 == v43;
          a3 = v31;
          a2 = v44;
          v26 = v41;
          a1 = v42;
          v25 = v40;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v27 <= a4)
          {
            goto LABEL_58;
          }
        }

        a3 = v31;
        a2 = v44;
        swift_arrayInitWithTakeFrontToBack();
        v26 = v41;
        a1 = v42;
        v25 = v40;
        if (v27 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v51 = a2;
    v49 = v25;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v15;
    v49 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v44 = a3;
      do
      {
        v18 = v47;
        sub_1A417EFA4(a2, v47);
        v19 = a2;
        v20 = v48;
        sub_1A417EFA4(a4, v48);
        v21 = a4;
        sub_1A417DA38();
        v22 = sub_1A524C7A4();

        sub_1A417DA38();
        v23 = sub_1A524C7A4();

        sub_1A45C0C04(v20, type metadata accessor for GenerativeStorySuggestion);
        sub_1A45C0C04(v18, type metadata accessor for GenerativeStorySuggestion);
        if (v22 >= v23)
        {
          a4 = v21 + v12;
          if (a1 < v21 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v44;
            a2 = v19;
          }

          else
          {
            v24 = v44;
            a2 = v19;
            if (a1 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = v21 + v12;
        }

        else
        {
          a2 = v19 + v12;
          a4 = v21;
          if (a1 < v19 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v44;
          }

          else
          {
            v24 = v44;
            if (a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v12;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v24);
    }
  }

LABEL_59:
  sub_1A45BF318(&v51, &v50, &v49);
}

uint64_t sub_1A45BF318(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for GenerativeStorySuggestion(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1A45BF410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969530];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  sub_1A3E99834();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 56);
  sub_1A3C5DBA4(a1, v14, &qword_1EB12AFE0, v8);
  sub_1A3C5DBA4(a2, &v14[v16], &qword_1EB12AFE0, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_1A3C5DBA4(v14, v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_1A45C0FE8(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
      v19 = sub_1A524C594();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v11, v4);
      sub_1A3C42DA0(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_1A45C0C04(v14, sub_1A3E99834);
    v18 = 1;
    return v18 & 1;
  }

  sub_1A3C42DA0(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A45BF774(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_logger;
  v10 = sub_1A3C4A780();
  v11 = sub_1A5246F24();
  (*(*(v11 - 8) + 16))(v4 + v9, v10, v11);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager____lazy_storage___suggestionProvider) = 1;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__initialSuggestions) = v8;
  sub_1A45BD5C8();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__currentFetchTask) = v12;
  v13 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  v14 = sub_1A5241144();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  sub_1A5241604();
  *(v4 + 24) = a1;
  v15 = (v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest);
  *v15 = a2;
  v15[1] = a3;
  sub_1A3C52C70(0, &qword_1EB126860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = a1;
  sub_1A3D607F0(a2);
  v18 = [ObjCClassFromMetadata sharedInstance];
  v19 = [ObjCClassFromMetadata sharedInstance];
  v20 = [v19 preferMockSuggestionsData];

  v21 = [objc_opt_self() sharedState];
  LODWORD(ObjCClassFromMetadata) = [v21 isLaunchedForTesting];

  v22 = 0;
  if (ObjCClassFromMetadata)
  {
    sub_1A5245574();
    v22 = sub_1A5245564();
  }

  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_wantsMockSuggestions) = (v20 | v22) & 1;
  [v18 promptSuggestionCacheExpirationInMinutes];
  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_expirationInterval) = v23 * 60.0;
  [v18 promptSuggestionRefetchCooldown];
  v25 = v24;

  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_refetchCooldownInterval) = v25;
  return v4;
}

void *sub_1A45BF9F4()
{
  v0 = sub_1A5244984();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v80 = v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x1E69E6720];
  sub_1A45C0E40(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = v57 - v4;
  v5 = type metadata accessor for GenerativeStorySuggestion(0);
  v78 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v57 - v9;
  v11 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1A5241284();
  v13 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5244944();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v72 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1A5244904();
  v17 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45C0E40(0, &qword_1EB13E4F0, MEMORY[0x1E69C1080], v2);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v69 = v57 - v20;
  sub_1A45C0E40(0, &qword_1EB13E4F8, MEMORY[0x1E69C1298], v2);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v68 = v57 - v22;
  v89 = sub_1A5244A24();
  v23 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v67 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1A52411C4();
  v25 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A5244A54();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v64 = (v25 + 8);
  v88 = *MEMORY[0x1E69C1098];
  v87 = (v23 + 104);
  v63 = *MEMORY[0x1E69C1058];
  v62 = (v17 + 104);
  v61 = (v13 + 8);
  v60 = (v31 + 16);
  v59 = (v31 + 56);
  v58 = (v31 + 8);
  v32 = MEMORY[0x1E69E7CC0];
  v57[2] = "the last decade.";
  v57[1] = "y.suggestion.summary";
  v77 = v7;
  v73 = v10;
  v33 = v67;
  do
  {
    v85 = v32;
    v86 = v30;
    v34 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v35 = sub_1A524C634();

    v36 = [v34 initWithString_];

    v84 = v36;
    v37 = v65;
    sub_1A52411B4();
    v38 = sub_1A5241164();
    v81 = v39;
    v82 = v38;
    (*v64)(v37, v66);
    v83 = *v87;
    v83(v33, v88, v89);
    v40 = sub_1A5244EC4();
    (*(*(v40 - 8) + 56))(v68, 1, 1, v40);
    v41 = sub_1A52449D4();
    (*(*(v41 - 8) + 56))(v69, 1, 1, v41);
    (*v62)(v70, v63, v71);
    sub_1A5244934();
    v42 = v27;
    v43 = v74;
    sub_1A5241244();
    sub_1A52411F4();
    (*v61)(v43, v75);
    sub_1A5241104();
    v27 = v42;
    v32 = v85;
    v44 = v84;
    v45 = v73;
    sub_1A52449A4();
    v46 = sub_1A52449E4();
    v48 = v47;
    v83(v33, v88, v89);
    v49 = v79;
    (*v60)(v79, v29, v27);
    (*v59)(v49, 0, 1, v27);
    v50 = v44;
    v51 = v80;
    sub_1A5244954();
    v52 = v51;
    v53 = v77;
    sub_1A417DAEC(v46, v48, v50, v33, v49, v52, 0, 0, v45);
    sub_1A417EFA4(v45, v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1A45BD6FC(0, v32[2] + 1, 1, v32);
    }

    v55 = v32[2];
    v54 = v32[3];
    if (v55 >= v54 >> 1)
    {
      v32 = sub_1A45BD6FC(v54 > 1, v55 + 1, 1, v32);
    }

    sub_1A45C0C04(v45, type metadata accessor for GenerativeStorySuggestion);
    (*v58)(v29, v27);
    v32[2] = v55 + 1;
    sub_1A417F008(v53, v32 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v55);
    v30 = v86 + 1;
  }

  while (v86 != 2);
  return v32;
}

uint64_t sub_1A45C0414()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A45BAB28(v4, v5, v6, v2, v3);
}

uint64_t type metadata accessor for GenerativeStoryPromptSuggestionManager()
{
  result = qword_1EB15EC48;
  if (!qword_1EB15EC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A45C04F8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A45BA87C(v3, v4, v5, v2);
}

id sub_1A45C058C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = [*a1 objectForKey_];
  if (!result)
  {
    type metadata accessor for GenerativeStoryPromptSuggestionManager();
    v7 = swift_allocObject();
    v8 = v4;
    sub_1A45BF774(v8, 0, 0);

    [v5 setObject:v7 forKey:v8];
    result = v7;
  }

  *a2 = result;
  return result;
}

unint64_t sub_1A45C0640()
{
  result = qword_1EB13E4E8;
  if (!qword_1EB13E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E4E8);
  }

  return result;
}

void sub_1A45C069C()
{
  sub_1A5246F24();
  if (v0 <= 0x3F)
  {
    sub_1A45C0E40(319, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A5241614();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of GenerativeStoryPromptSuggestionManager.loadSuggestions(cache:)(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return v6(a1);
}

void sub_1A45C0978()
{
  sub_1A5245054();
  v0 = objc_opt_self();
  v1 = sub_1A524C634();
  sub_1A3C52C70(0, &qword_1EB12B160);
  v2 = sub_1A524C3D4();
  [v0 sendEvent:v1 withPayload:v2];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45C0C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A45C0CD4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A45BAE1C(v4, v5, v6, v2, v3);
}

uint64_t sub_1A45C0D6C@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *a1 = 1;
  return result;
}

void sub_1A45C0DF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A45C0E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A45C0EA4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A45B93A4(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_6Tm_1(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_1A45C0FA4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__currentFetchTask) = *(v0 + 24);
}

uint64_t sub_1A45C0FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A45C12C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PXTipsHelper_Swift_presentedTipID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1A45C1484(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A45C14E0(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR___PXTipsHelper_Swift_tipPopover;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

unint64_t sub_1A45C16A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A3CB5580(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1A3C5DCA4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1A45C24AC();
        v14 = v16;
      }

      result = sub_1A3D74B38(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}