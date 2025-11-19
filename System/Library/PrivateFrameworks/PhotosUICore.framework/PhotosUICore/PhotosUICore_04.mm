uint64_t PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(void *a1)
{
  v1 = a1;
  v2 = [v1 assetCollectionType] - 4;
  if (v2 < 0xA && ((0x215u >> v2) & 1) != 0)
  {
    ShouldShowUnsavedAssetsForAssetCollectionSubtype = 1;
  }

  else
  {
    ShouldShowUnsavedAssetsForAssetCollectionSubtype = _PXContentSyndicationShouldShowUnsavedAssetsForAssetCollectionSubtype([v1 assetCollectionSubtype]);
  }

  return ShouldShowUnsavedAssetsForAssetCollectionSubtype;
}

void sub_1A3CB0084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a3;
  v4 = sub_1A524BEE4();
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v11 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v10 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v8[6] = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BFC4();
  v8[5] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v8[4] = v8 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotoKitItemListManager();
  sub_1A5245E14();
}

uint64_t sub_1A3CB0728(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C37A4C(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v6 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  [v6 setIncludeScreenRecordingsSmartAlbum_];
  [v6 setIncludeProResSmartAlbum_];
  sub_1A3CA5F64(a2, v5, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = *v5;
    v8 = v5[1];
    v10 = objc_opt_self();
    sub_1A3C37060(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    *(v11 + 32) = v9;
    *(v11 + 40) = v8;
    v12 = sub_1A524CA14();

    v13 = [v10 fetchAssetCollectionsWithLocalIdentifiers:v12 options:v6];

LABEL_5:
    return v13;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v14 = *v5;
    v15 = objc_opt_self();
    v13 = [v15 fetchAssetCollectionsWithType:2 subtype:PXDisplayCollectionDetailedCountsMake(v14) options:v6];
    goto LABEL_5;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1A524E404();

  v18 = 0xD00000000000001BLL;
  v19 = 0x80000001A53B42A0;
  sub_1A41D2ED0(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v17 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v17);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3CB0A08(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A3CB0728(a1, v4);
}

uint64_t sub_1A3CB0A78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3CB0AC0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3CB0C38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v2, 0);
    v25 = v26;
    v3 = a1 + 64;
    v4 = sub_1A524E234();
    v5 = 0;
    v6 = *(a1 + 36);
    v22 = v2;
    v23 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v24 = v5;
      v9 = *(*(a1 + 56) + 8 * v4);
      MEMORY[0x1A5907B60](40, 0xE100000000000000);
      sub_1A524E624();
      MEMORY[0x1A5907B60](8250, 0xE200000000000000);
      [v9 count];
      v10 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v10);

      MEMORY[0x1A5907B60](41, 0xE100000000000000);

      v11 = v25;
      v13 = *(v25 + 16);
      v12 = *(v25 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A3C57108((v12 > 1), v13 + 1, 1);
        v11 = v25;
      }

      *(v11 + 16) = v13 + 1;
      v14 = v11 + 16 * v13;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0xE000000000000000;
      v7 = 1 << *(a1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v15 = *(a1 + 64 + 8 * v8);
      if ((v15 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v25 = v11;
      v6 = v23;
      if (v23 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v16 = v15 & (-2 << (v4 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v8 << 6;
        v18 = v8 + 1;
        v19 = (a1 + 72 + 8 * v8);
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1A3CAD6E8(v4, v23, 0);
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_1A3CAD6E8(v4, v23, 0);
      }

LABEL_4:
      v5 = v24 + 1;
      v4 = v7;
      if (v24 + 1 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1A3CB0F20()
{
  v0 = sub_1A3CAAD44();
  v1 = *(*v0 + *MEMORY[0x1E69E6B68] + 16);
  v2 = (*(*v0 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v2));
  sub_1A3CB0FE0(v0 + v1);
}

id PHObject.itemID.getter()
{
  v1 = [v0 px_opaqueIdentifier];

  return v1;
}

void sub_1A3CB1050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A43FC0E4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1A3CAB9BC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1A43FC22C();
        v11 = v13;
      }

      sub_1A3CB1208(v9, v11);
      *v3 = v11;
    }
  }
}

void sub_1A3CB11F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A3CB1208(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A524E244() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1A524EC84();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A3CB1378(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A3CAB9BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A3CAFD18(v14, a3 & 1);
      result = sub_1A3CAB9BC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A3F91160();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1A3CB1988()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A3CB1A20(v4, v5, v6, v2, v3);
}

uint64_t sub_1A3CB1A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = sub_1A5243B64();
  v5[10] = swift_task_alloc();
  sub_1A524CC54();
  v5[11] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3CB1AF8, v7, v6);
}

uint64_t sub_1A3CB1AF8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[5] = Strong;
    v2 = v0[8];
    v3 = Strong;

    swift_getAtKeyPath();

    v4 = v0[6];
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    v6 = swift_task_alloc();
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    sub_1A52415B4();

    sub_1A5248604();
  }

  v7 = v0[1];

  return v7();
}

id sub_1A3CB1C50@<X0>(void *a1@<X8>)
{
  result = sub_1A3CB1C7C();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_117Tm()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for LemonadeShelfContents.VisibilityTracker() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CB1E3C(uint64_t a1)
{
  if (*(v1 + 104))
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
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415C4();
  }

  *(v1 + 104) = 0;

  if (*(v1 + 112))
  {

    sub_1A5245804();
  }

  __break(1u);
  return result;
}

void *sub_1A3CB2058()
{
  if (*(v0 + 56))
  {
    return 0;
  }

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1A3CB237C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A3CB23D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A3CB2430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v60 = a6;
  v67 = a3;
  v8 = sub_1A5246EA4();
  v70 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1A5246E54();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1A524BEE4();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1A524BF64();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v68 = v8;
    v69 = v9;
    *&aBlock = 0;
    sub_1A5245824();
  }

  v58[1] = Strong;
  v66 = a2;
  v59 = v10;
  isUniquelyReferenced_nonNull_native = PHPhotoLibrary.fetcher.getter();
  v15 = sub_1A3CB2E20(MEMORY[0x1E69E7CC0]);
  v80 = v15;
  v68 = a5;
  if (a5 >> 62)
  {
LABEL_42:
    v16 = sub_1A524E2B4();
  }

  else
  {
    v16 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = v67;
  v18 = v66;
  v69 = isUniquelyReferenced_nonNull_native;
  if (!v16)
  {
LABEL_35:
    sub_1A3C52C70(0, &qword_1EB12B180);
    v49 = sub_1A524D474();
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = swift_allocObject();
    v51[2] = v50;
    v51[3] = v18;
    v51[4] = v17;
    v51[5] = v15;
    v51[6] = v60;
    v76 = sub_1A3FB88DC;
    v77 = v51;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v75 = sub_1A3C2E0D0;
    *(&v75 + 1) = &block_descriptor_125;
    v52 = _Block_copy(&aBlock);

    v53 = v61;
    sub_1A524BF14();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v54 = MEMORY[0x1E69E7F60];
    sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
    sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v54);
    v55 = v63;
    v56 = v59;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v53, v55, v52);

    _Block_release(v52);

    (*(v65 + 8))(v55, v56);
    return (*(v62 + 8))(v53, v64);
  }

  v15 = 0;
  v19 = v68;
  v20 = v68 & 0xC000000000000001;
  v21 = v68 & 0xFFFFFFFFFFFFFF8;
  v70 = v16;
  while (1)
  {
    if (v20)
    {
      v23 = MEMORY[0x1A59097F0](v15, v19);
      v24 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v15 >= *(v21 + 16))
      {
        goto LABEL_38;
      }

      v23 = *(v19 + 8 * v15 + 32);
      v24 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    v78 = 4;
    v79 = 0;
    v25 = v23;
    v26 = sub_1A3C6E9EC();
    v27 = sub_1A3C6E9EC();
    PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(v26, v27, 0, 1, 0, &aBlock);
    v71[0] = aBlock;
    v71[1] = v75;
    v72 = v76;
    v73 = v77;
    v28 = PhotoKitFetcher.fetch(_:for:options:)(&v78, v25, v71);
    v29 = v73;

    if (!v28)
    {
      goto LABEL_7;
    }

    v30 = [v28 firstObject];

    if (!v30)
    {
      goto LABEL_7;
    }

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (!v31)
    {

      v16 = v70;
LABEL_7:
      v22 = sub_1A3CBBAF4(v25);

      goto LABEL_8;
    }

    v32 = v31;
    v33 = v80;
    if ((v80 & 0xC000000000000001) != 0)
    {
      if (v80 >= 0)
      {
        v33 = v80 & 0xFFFFFFFFFFFFFF8;
      }

      v34 = sub_1A524E2B4();
      if (__OFADD__(v34, 1))
      {
        goto LABEL_40;
      }

      v33 = sub_1A3FB6C28(v33, v34 + 1);
      v80 = v33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v33;
    v36 = sub_1A3CBBC40(v25);
    v37 = *(v33 + 16);
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_39;
    }

    v40 = v35;
    if (*(v33 + 24) >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A3FB74A8();
      }

      goto LABEL_26;
    }

    sub_1A3FB6E64(v39, isUniquelyReferenced_nonNull_native);
    v41 = sub_1A3CBBC40(v25);
    if ((v40 & 1) != (v42 & 1))
    {
      break;
    }

    v36 = v41;
LABEL_26:
    isUniquelyReferenced_nonNull_native = v69;
    v43 = aBlock;
    if (v40)
    {
      v44 = *(aBlock + 56);
      v45 = *(v44 + 8 * v36);
      *(v44 + 8 * v36) = v32;
    }

    else
    {
      *(aBlock + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v43[6] + 8 * v36) = v25;
      *(v43[7] + 8 * v36) = v32;

      v46 = v43[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_41;
      }

      v43[2] = v48;
    }

    v80 = v43;
    v19 = v68;
    v16 = v70;
LABEL_8:
    ++v15;
    if (v24 == v16)
    {
      v15 = v80;
      v17 = v67;
      v18 = v66;
      goto LABEL_35;
    }
  }

  sub_1A3C52C70(0, &qword_1EB126AC0);
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

unint64_t sub_1A3CB2E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3FB8960();
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1A3CBBC40(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1A3CB2F0C(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = *(a3 + 32);
  v10 = a3[5];
  if (*(a1 + 8) != 1)
  {
    if (v4 >= 4)
    {
      if (v4 - 4 >= 2)
      {
        MEMORY[0x1A5907B60](0x7463657078656E55, 0xEB00000000206465);
        type metadata accessor for PXDisplayAssetCollectionCurationKind(0);
        sub_1A524E624();
        result = sub_1A524E6E4();
        __break(1u);
        return result;
      }

      v12 = a2;
      if ([a2 isTransient])
      {
        v15 = v10;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v13 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
      [v13 setCurationKind_];
      [v13 setFetchLimit_];
      v16 = PXPhotosDataSourceOptionsAdjustedForCurationContext(0, v8);
      [v13 setOptions_];
      if (v7)
      {
        sub_1A3C52C70(0, &qword_1EB1265C0);
        v7 = sub_1A524CA14();
      }
    }

    else
    {
      v12 = a2;
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
    }

    [v13 setReferencePersons_];

    [v13 setReverseSortOrder_];
    [v13 setLibraryFilter_];
    [v13 setFilterPredicate_];
    v17 = [*(v3 + 24) fetchAssetsInContainer:v12 configuration:v13];

    return v17;
  }

  if (v4 < 2)
  {
    return 0;
  }

  v20 = a3[5];
  v21 = 0;
  v22 = 0;
  v18[0] = v6;
  v18[1] = v5;
  v18[2] = v7;
  v18[3] = v8;
  v19 = v9;
  return sub_1A3CB2F0C(&v21, a2, v18);
}

uint64_t sub_1A3CB32F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(a3 + 16);
  if (!(*v3 >> 62))
  {
    v10 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = sub_1A524E2B4();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1A3CB34F8(result);
  v4 = *v3;
  v5 = *v3 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v5 + 0x10);
  v14 = (*(v5 + 0x18) >> 1) - v13;
  result = sub_1A3CB35E8(&v31, v5 + 8 * v13 + 32, v14, a1, a2, a3);
  if (result < v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result >= 1)
  {
    v15 = *(v5 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
LABEL_26:
      *(v30 + 16) = v5;
      goto LABEL_8;
    }

    *(v5 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_8:

    *v3 = v4;
    return result;
  }

LABEL_13:
  v18 = v32;
  v19 = *(v32 + 16);
  if (v33 == v19)
  {
    goto LABEL_8;
  }

  if (v33 < v19)
  {
    v20 = *(v5 + 16);
    v21 = v32 + 32;
    v22 = v33 + 1;
    v23 = *(v32 + 32 + 8 * v33);

    while (1)
    {
LABEL_17:
      if (v20 + 1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        result = sub_1A524CA74();
      }

      v4 = *v3;
      v24 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      v25 = v24 - v20;
      if (v24 > v20)
      {
        break;
      }

      *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v20;
    }

    v29 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    v30 = *v3 & 0xFFFFFFFFFFFFFF8;
    v26 = (v30 + 8 * v20 + 32);
    v5 = v20 + 1;
    while (1)
    {
      *v26 = v23;
      v27 = *(v18 + 16);
      if (v22 == v27)
      {
        goto LABEL_26;
      }

      if (v22 >= v27)
      {
        __break(1u);
        break;
      }

      v28 = v22 + 1;
      v23 = *(v21 + 8 * v22);

      ++v26;
      ++v5;
      ++v22;
      if (!--v25)
      {
        v20 = v29;
        v22 = v28;
        *(v30 + 16) = v29;
        goto LABEL_17;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3CB34F8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1A524E2B4();
    }

    result = sub_1A524E494();
    *v1 = result;
  }

  return result;
}

void *sub_1A3CB35E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a6 + 16);
    if (v6)
    {
      v8 = a4;
      v9 = result;
      v10 = a5;
      v11 = 0;
      v12 = a6;
      v13 = a6 + 32;
      v14 = a3;
      v15 = a3 - 1;
      while (1)
      {
        *(a2 + 8 * v11) = *(v13 + 8 * v11);
        if (v15 == v11)
        {
          break;
        }

        if (v6 == ++v11)
        {
          a3 = v6;
          a6 = v12;
          a5 = v10;
          result = v9;
          a4 = v8;
          goto LABEL_12;
        }
      }

      a6 = v12;
      a5 = v10;
      result = v9;
      a4 = v8;
      a3 = v14;
    }

    else
    {
      a3 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3CB36CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A524E2B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3CB34F8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A3CB3820(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1A3CB37BC(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v3 = sub_1A524C634();

  return v3;
}

uint64_t sub_1A3CB3820(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1A3FB8118(0, &qword_1EB126EF8, type metadata accessor for LemonadeSuggestedSearchCollection);
          sub_1A3C9AC88(&qword_1EB12F978, &qword_1EB126EF8, type metadata accessor for LemonadeSuggestedSearchCollection);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3E5C4E4(v13, i, a3);
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
        type metadata accessor for LemonadeSuggestedSearchCollection(0);
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

void sub_1A3CB39F8(uint64_t a1, uint64_t (*a2)(void), void *a3, void *a4)
{
  v6 = a2();
  v8 = *v6;
  v7 = v6[1];
  *a3 = v8;
  *a4 = v7;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3CB3A40(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1A524E2B4();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v41 = v3 & 0xFFFFFFFFFFFFFF8;
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
  v40 = a2 & 0xFFFFFFFFFFFFFF8;
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
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v46 = a2 & 0xC000000000000001;
    v47 = v3 & 0xC000000000000001;
    v43 = v5;
    v11 = 4;
    v44 = v3;
    v45 = a2;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v5 = sub_1A524E2B4();
        goto LABEL_3;
      }

      if (v47)
      {
        v4 = MEMORY[0x1A59097F0](v11 - 4, v3);
        if (v46)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v12 >= *(v41 + 16))
        {
          goto LABEL_42;
        }

        v4 = *(v3 + 8 * v11);

        if (v46)
        {
LABEL_22:
          v14 = MEMORY[0x1A59097F0](v11 - 4, a2);
          if (v4 == v14)
          {
            goto LABEL_17;
          }

          goto LABEL_28;
        }
      }

      if (v12 >= *(v40 + 16))
      {
        goto LABEL_43;
      }

      v14 = *(a2 + 8 * v11);

      if (v4 == v14)
      {
        goto LABEL_17;
      }

LABEL_28:
      v15 = *(v4 + 32);
      if (*(v4 + 56))
      {
        v16 = v15;
        strcpy(v48, "user-search-");
        BYTE5(v48[1]) = 0;
        HIWORD(v48[1]) = -5120;
        v17 = [v16 string];
        v18 = sub_1A524C674();
        v20 = v19;

        MEMORY[0x1A5907B60](v18, v20);
      }

      else
      {
        v22 = *(v4 + 40);
        v21 = *(v4 + 48);
        v23 = v15;
        sub_1A524E404();

        v48[0] = 0xD000000000000011;
        v48[1] = 0x80000001A53BFEA0;
        v24 = [v23 uuid];
        v25 = sub_1A524C674();
        v27 = v26;

        MEMORY[0x1A5907B60](v25, v27);

        sub_1A3FAE3DC(v15, v22, v21, 0);
      }

      v29 = v48[0];
      v28 = v48[1];
      v30 = *(v14 + 32);
      if (*(v14 + 56))
      {
        v4 = v30;
        strcpy(v48, "user-search-");
        BYTE5(v48[1]) = 0;
        HIWORD(v48[1]) = -5120;
        v31 = [v4 string];
        v32 = sub_1A524C674();
        v34 = v33;

        MEMORY[0x1A5907B60](v32, v34);
      }

      else
      {
        v35 = *(v14 + 40);
        v42 = *(v14 + 48);
        v36 = v30;
        sub_1A524E404();

        v48[0] = 0xD000000000000011;
        v48[1] = 0x80000001A53BFEA0;
        v4 = [v36 uuid];
        v37 = sub_1A524C674();
        v39 = v38;

        MEMORY[0x1A5907B60](v37, v39);

        sub_1A3FAE3DC(v30, v35, v42, 0);
      }

      v3 = v44;
      a2 = v45;
      v5 = v43;
      v13 = v11 - 3;
      if (v29 == v48[0] && v28 == v48[1])
      {

LABEL_17:

        goto LABEL_18;
      }

      v4 = sub_1A524EAB4();

      if ((v4 & 1) == 0)
      {
        return 0;
      }

LABEL_18:
      ++v11;
      if (v13 == v5)
      {
        return 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12PhotosUICore16PXGridTipsHelperC6setTip_13isPresentableySS_SbtFZ_0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1A3CB40B4();
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (sub_1A524EAB4() & 1) != 0)
  {

    return sub_1A3FD53B8(a3 & 1);
  }

  else
  {
    v9 = sub_1A3CB3EC8();
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1A524EAB4() & 1) != 0)
    {

      return sub_1A3CB40D8(a3 & 1);
    }

    else
    {
      v11 = sub_1A3C92168();
      if (*v11 == a1 && v11[1] == a2 || (sub_1A524EAB4() & 1) != 0)
      {

        return sub_1A3FD5B54(a3 & 1);
      }

      else
      {
        v12 = sub_1A3C92768();
        if (*v12 == a1 && v12[1] == a2 || (result = sub_1A524EAB4(), (result & 1) != 0))
        {

          return sub_1A3FD5D18(a3 & 1);
        }
      }
    }
  }

  return result;
}

void sub_1A3CB40FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xC8))();

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = *((*v1 & *v3) + 0x90);
      v6 = sub_1A3CB44DC();
      v5(v6, &type metadata for SwitchLibraryTip, v6);
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    (*((*v1 & *v7) + 0xE0))();

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = *((*v1 & *v9) + 0x90);
      v12 = sub_1A3CB5C68();
      v11(v12, &type metadata for SyndicatedAssetsTip, v12);
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    (*((*v1 & *v13) + 0xF8))();

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = *((*v1 & *v15) + 0x90);
      v18 = sub_1A3CB5D80();
      v17(v18, &type metadata for FilterAllPhotosTip, v18);
    }
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    (*((*v1 & *v19) + 0x110))();

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = *((*v1 & *v21) + 0x90);
      v24 = sub_1A3CB6438();
      v23(v24, &type metadata for FilterScreenshotsHiddenTip, v24);
    }
  }
}

uint64_t _PXContentSyndicationShouldShowUnsavedAssetsForAssetCollectionSubtype(uint64_t a1)
{
  v1 = 0;
  if (a1 > 1000000204)
  {
    if ((a1 - 1000000301) < 4)
    {
      v3 = +[PXContentSyndicationSettings sharedInstance];
      v1 = [v3 enableFilteringCuratedGridsForContentSyndication] ^ 1;

      return v1;
    }

    if (a1 == 1000000212 || a1 == 1000000205)
    {
      return 1;
    }
  }

  else if ((a1 - 201) <= 0x14 && ((1 << (a1 + 55)) & 0x177FC3) != 0)
  {
    return 1;
  }

  return v1;
}

unint64_t sub_1A3CB44DC()
{
  result = qword_1EB12A478;
  if (!qword_1EB12A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A478);
  }

  return result;
}

uint64_t sub_1A3CB4530(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_1A3CB4D08();
  __swift_project_value_buffer(v4, a3);
  swift_beginAccess();
  sub_1A52477A4();
  return swift_endAccess();
}

unint64_t sub_1A3CB45FC()
{
  result = qword_1EB12A470;
  if (!qword_1EB12A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A470);
  }

  return result;
}

uint64_t sub_1A3CB4650(uint64_t a1, uint64_t *a2)
{
  sub_1A3CB4D08();
  v4 = v3;
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v4, a2);
  sub_1A3CB4D68(0, &qword_1EB12B120, MEMORY[0x1E6982AA0], MEMORY[0x1E69E6F90]);
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}

uint64_t sub_1A3CB47B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1A3C567C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  result = swift_beginAccess();
  if (byte_1EB1EB7E1 == 1)
  {
    v39 = v3;
    v40 = v7;
    swift_beginAccess();
    v13 = qword_1EB1EB798;
    if (qword_1EB1EB798)
    {
      v14 = sub_1A5247414();
      if (*(v13 + 16))
      {
        v38 = a3;
        v16 = sub_1A3C5DCA4(v14, v15);
        v18 = v17;

        if (v18)
        {
          sub_1A3C341C8(*(v13 + 56) + 40 * v16, &v42);
        }

        else
        {
          v44 = 0;
          v42 = 0u;
          v43 = 0u;
        }

        a3 = v38;
      }

      else
      {

        v44 = 0;
        v42 = 0u;
        v43 = 0u;
      }

      swift_endAccess();
      if (*(&v43 + 1))
      {
        return sub_1A3CB4E58(&v42, &qword_1EB128BC8, sub_1A3CB4F50);
      }
    }

    else
    {
      swift_endAccess();
      v42 = 0u;
      v43 = 0u;
      v44 = 0;
    }

    sub_1A3CB4E58(&v42, &qword_1EB128BC8, sub_1A3CB4F50);
    swift_beginAccess();
    if (qword_1EB1EB798)
    {
      v19 = sub_1A5247414();
      v20 = a3;
      v22 = v21;
      *(&v43 + 1) = a2;
      v44 = v20;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v40 + 16))(boxed_opaque_existential_1, a1, a2);
      v24 = v22;
      a3 = v20;
      sub_1A3CB4FB4(&v42, v19, v24);
    }

    swift_endAccess();
    swift_beginAccess();
    if (qword_1EB1EB7D8)
    {
      v25 = sub_1A5247414();
      v37 = v26;
      v38 = v25;
      v27 = sub_1A524CCB4();
      (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
      v28 = v40;
      (*(v40 + 16))(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
      sub_1A524CC54();
      v29 = v39;
      v30 = sub_1A524CC44();
      v31 = (*(v28 + 80) + 48) & ~*(v28 + 80);
      v32 = swift_allocObject();
      v33 = MEMORY[0x1E69E85E0];
      *(v32 + 2) = v30;
      *(v32 + 3) = v33;
      *(v32 + 4) = a2;
      *(v32 + 5) = a3;
      (*(v28 + 32))(&v32[v31], &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
      *&v32[(v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8] = v29;
      v34 = sub_1A3D4D930(0, 0, v11, &unk_1A534DEE8, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = qword_1EB1EB7D8;
      qword_1EB1EB7D8 = 0x8000000000000000;
      sub_1A3CB5580(v34, v38, v37, isUniquelyReferenced_nonNull_native);

      qword_1EB1EB7D8 = v41;
    }

    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1A3CB4C38()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1A3CB4D08()
{
  if (!qword_1EB12B1E8)
  {
    v0 = sub_1A52477B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B1E8);
    }
  }
}

void sub_1A3CB4D68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3CB4DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56408(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3CB4E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C567C0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A3CB4F50()
{
  result = qword_1EB128BD0;
  if (!qword_1EB128BD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB128BD0);
  }

  return result;
}

uint64_t sub_1A3CB4FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1A3C34460(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1A3CB509C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1A3CB4E58(a1, &qword_1EB128BC8, sub_1A3CB4F50);
    sub_1A45C2244(a2, a3, v9);

    return sub_1A3CB4E58(v9, &qword_1EB128BC8, sub_1A3CB4F50);
  }

  return result;
}

uint64_t sub_1A3CB509C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 < v16 || (a4 & 1) != 0)
  {
    sub_1A3CB51F0(v16, a4 & 1);
    v11 = sub_1A3C5DCA4(a2, a3);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_8;
    }

LABEL_16:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

  v19 = v11;
  sub_1A45C262C();
  v11 = v19;
LABEL_8:
  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    sub_1A3CB5510(v11, a2, a3, a1, v21);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v22 = v21[7] + 40 * v11;
  __swift_destroy_boxed_opaque_existential_0(v22);

  return sub_1A3C34460(a1, v22);
}

uint64_t sub_1A3CB51F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C926A0(0, &qword_1EB126448, sub_1A3CB4F50);
  v33 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 40 * v20);
      if ((v33 & 1) == 0)
      {
        sub_1A3C341C8(v24, v34);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3C34460(v24, v34);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A3C34460(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A3CB5510(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A3C34460(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1A3CB5580(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A3CB56FC(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A45C24AC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v21[6] + 16 * v11);
    *v23 = a2;
    v23[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  *(v21[7] + 8 * v11) = a1;
}

uint64_t sub_1A3CB56FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C926A0(0, &qword_1EB12B128, sub_1A3CB59B4);
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

void sub_1A3CB59B4()
{
  if (!qword_1EB12B1A8)
  {
    v0 = sub_1A524CDB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B1A8);
    }
  }
}

BOOL _s12PhotosUICore12PXTipsHelperC16isTipInvalidatedySbSSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5247794();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (byte_1EB1EB7E1 == 1)
  {
    swift_beginAccess();
    v8 = qword_1EB1EB798;
    if (qword_1EB1EB798)
    {
      if (*(qword_1EB1EB798 + 16) && (v9 = sub_1A3C5DCA4(a1, a2), (v10 & 1) != 0))
      {
        sub_1A3C341C8(*(v8 + 56) + 40 * v9, &v14);
      }

      else
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
      }

      swift_endAccess();
      if (*(&v15 + 1))
      {
        sub_1A3C34460(&v14, v17);
        __swift_project_boxed_opaque_existential_1(v17, v17[3]);
        sub_1A5247474();
        v11 = (*(v5 + 88))(v7, v4) == *MEMORY[0x1E6982B68];
        (*(v5 + 8))(v7, v4);
        __swift_destroy_boxed_opaque_existential_0(v17);
        return v11;
      }
    }

    else
    {
      swift_endAccess();
      v14 = 0u;
      v15 = 0u;
      v16 = 0;
    }

    sub_1A3CB4E58(&v14, &qword_1EB128BC8, sub_1A3CB4F50);
  }

  return 0;
}

unint64_t sub_1A3CB5C68()
{
  result = qword_1EB12A3A8;
  if (!qword_1EB12A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A3A8);
  }

  return result;
}

unint64_t sub_1A3CB5CC0()
{
  result = qword_1EB12A3A0;
  if (!qword_1EB12A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A3A0);
  }

  return result;
}

unint64_t sub_1A3CB5D80()
{
  result = qword_1EB12ACF8;
  if (!qword_1EB12ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ACF8);
  }

  return result;
}

void PXAppIntentsSetViewAnnotationDelegate(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  if (v8)
  {
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXAppIntentsSetViewAnnotationDelegate(UIView *__strong _Nonnull, __strong id<PXAppIntentsViewAnnotationDelegate> _Nonnull)"}];
    [v4 handleFailureInFunction:v5 file:@"PXAppIntentsUtilities.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"view"}];

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXAppIntentsSetViewAnnotationDelegate(UIView *__strong _Nonnull, __strong id<PXAppIntentsViewAnnotationDelegate> _Nonnull)"}];
  [v6 handleFailureInFunction:v7 file:@"PXAppIntentsUtilities.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

LABEL_3:
  [_TtC12PhotosUICore33PXAppIntentsViewAnnotationsBridge setViewAnnotationDelegate:v3 for:v8];
}

unint64_t sub_1A3CB5F20()
{
  result = qword_1EB12ACF0;
  if (!qword_1EB12ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ACF0);
  }

  return result;
}

uint64_t static PXAppIntentsViewAnnotations.setDelegate(_:for:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A3CB648C();
  (*(v7 + 16))(v9, v10, v6);
  swift_unknownObjectRetain();
  v11 = a2;
  v12 = sub_1A5246F04();
  v13 = sub_1A524D264();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = v13;
    v15 = v14;
    v21[1] = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v15 = 136446466;
    v16 = [a1 appIntentsDebugDescription];
    v24 = v6;
    v17 = v16;
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  (*(v7 + 8))(v9, v6);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v3;
  v19[4] = v3;

  sub_1A524DB14();
}

uint64_t sub_1A3CB633C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CB6374()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CB63AC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB194508);
  __swift_project_value_buffer(v0, qword_1EB194508);
  if (qword_1EB18D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB18D6F8;
  return sub_1A5246F34();
}

unint64_t sub_1A3CB6438()
{
  result = qword_1EB1256D0;
  if (!qword_1EB1256D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1256D0);
  }

  return result;
}

uint64_t sub_1A3CB648C()
{
  if (qword_1EB194500 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB194508);
}

uint64_t sub_1A3CB64F8()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB18D6F8 = result;
  return result;
}

unint64_t sub_1A3CB656C()
{
  result = qword_1EB1256C8;
  if (!qword_1EB1256C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1256C8);
  }

  return result;
}

uint64_t sub_1A3CB65E4(uint64_t a1)
{
  sub_1A3CB67E8(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3CB666C(unint64_t a1)
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v6 = sub_1A524E2B4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    v8 = (v3 + 8);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](v7, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      ++v7;
      sub_1A5241494();
      v11 = sub_1A5241414();
      (*v8)(v5, v2);
      [v10 prefetchObjectsAtIndexes_];
    }

    while (v6 != v7);
  }
}

void sub_1A3CB67E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6850(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB68B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6920(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6988(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB69F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A3CB6A4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A3CB6AA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6B10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6B78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CB6BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1A3CB6C44(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  [v3 setIncludeAssetSourceTypes_];
  [v3 setIncludeHiddenAssets_];
  [v3 setIncludeGuestAssets_];

  return v3;
}

uint64_t sub_1A3CB6CB4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v5 = *(v0 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A3CB6DC0(v6, v7, v8, v0 + v4, v5, v2, v3);
}

uint64_t sub_1A3CB6DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = MEMORY[0x1E6982B80];
  sub_1A3C567C0(0, &qword_1EB128B68, MEMORY[0x1E6982B80], MEMORY[0x1E69E6720]);
  v7[15] = swift_task_alloc();
  v9 = sub_1A5247794();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  sub_1A3C567C0(0, &qword_1EB126DA0, v8, MEMORY[0x1E69E8698]);
  v7[19] = v10;
  v7[20] = swift_task_alloc();
  sub_1A3C567C0(0, &qword_1EB126DA8, v8, MEMORY[0x1E69E8688]);
  v7[21] = v11;
  v7[22] = swift_task_alloc();
  sub_1A3CB70AC(0, &qword_1EB1264B8, MEMORY[0x1E69E8870]);
  v7[23] = v12;
  v7[24] = *(v12 - 8);
  v7[25] = swift_task_alloc();
  sub_1A3CB70AC(0, &unk_1EB1264C0, MEMORY[0x1E69E8860]);
  v7[26] = v13;
  v7[27] = *(v13 - 8);
  v7[28] = swift_task_alloc();
  v7[29] = sub_1A524CC54();
  v7[30] = sub_1A524CC44();
  v15 = sub_1A524CBC4();
  v7[31] = v15;
  v7[32] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1A3CB71F4, v15, v14);
}

void sub_1A3CB70AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69E8698];
    sub_1A3C567C0(255, &qword_1EB126DA0, MEMORY[0x1E6982B80], MEMORY[0x1E69E8698]);
    v8 = v7;
    v9 = sub_1A3CB7198(&qword_1EB126D98, &qword_1EB126DA0, v6);
    v10 = a3(a1, v8, MEMORY[0x1E69E6370], v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A3CB7198(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C567C0(255, a2, MEMORY[0x1E6982B80], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CB71F4()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_1A5247434();
  MEMORY[0x1A59099A0](v3);
  sub_1A3CB7198(&qword_1EB126D98, &qword_1EB126DA0, MEMORY[0x1E69E8698]);
  sub_1A524CE24();
  sub_1A524E654();
  (*(v2 + 8))(v1, v3);
  sub_1A524E664();
  v4 = sub_1A524CC44();
  v0[33] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_1A524CBC4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[34] = v5;
  v0[35] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A3CB849C, v5, v7);
}

uint64_t sub_1A3CB7380()
{
  sub_1A3CB775C(0, &qword_1EB128B88, &qword_1EB128BA8);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - v3;
  sub_1A3CB767C(0, &qword_1EB128BA8, MEMORY[0x1E6982AC8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  sub_1A3CB4D68(0, &qword_1EB126220, MEMORY[0x1E6982AC8], MEMORY[0x1E69E6F90]);
  v10 = sub_1A52475E4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475D4();
  v11 = MEMORY[0x1E6982AC0];
  sub_1A5247534();

  v15 = v10;
  v16 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A59028E0](v9, v6, OpaqueTypeConformance2);
  v15 = v6;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = sub_1A5247554();
  (*(v2 + 8))(v4, v1);
  (*(v7 + 8))(v9, v6);
  return v13;
}

void sub_1A3CB767C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A3CB775C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3CB767C(255, a3, MEMORY[0x1E6982AC8]);
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A3CB788C()
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
  if (qword_1EB18AA00[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_1EB1EB448);
  swift_beginAccess();
  (*(v2 + 16))(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  (*(v6 + 8))(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3CB7AE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3CB7B30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3CB7B84@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6370];
  sub_1A3CB7AE0(0, &qword_1EB12B088, MEMORY[0x1E69E6370], MEMORY[0x1E6968D10]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-v6];
  sub_1A3CB7AE0(0, &qword_1EB12B010, v2, MEMORY[0x1E6968D98]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-v11];
  sub_1A3CB7DF4(&qword_1EB12B018);
  sub_1A5240AB4();
  v15[15] = 1;
  sub_1A5240AA4();
  sub_1A3CB7F40();
  a1[3] = v13;
  a1[4] = sub_1A3CB80BC();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_1A3CB81F4(&qword_1EB12B090, &qword_1EB12B088, v2);
  sub_1A5240A44();
  (*(v5 + 8))(v7, v4);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A3CB7DF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB7AE0(255, &qword_1EB12B010, MEMORY[0x1E69E6370], MEMORY[0x1E6968D98]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CB7E5C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB7B30(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CB7EA0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB806C(255, a2, MEMORY[0x1E69E6370], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CB7EF0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4153160(255, a2, MEMORY[0x1E69E6370], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3CB7F40()
{
  if (!qword_1EB12B0A0)
  {
    v0 = MEMORY[0x1E69E6370];
    sub_1A3CB7AE0(255, &qword_1EB12B010, MEMORY[0x1E69E6370], MEMORY[0x1E6968D98]);
    sub_1A3CB7AE0(255, &qword_1EB12B088, v0, MEMORY[0x1E6968D10]);
    sub_1A3CB7DF4(&qword_1EB12B018);
    sub_1A3CB81F4(&qword_1EB12B090, &qword_1EB12B088, v0);
    v1 = sub_1A5240A84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12B0A0);
    }
  }
}

void sub_1A3CB806C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A3CB80BC()
{
  result = qword_1EB12B0A8;
  if (!qword_1EB12B0A8)
  {
    sub_1A3CB7F40();
    sub_1A3CB7DF4(&qword_1EB12B020);
    sub_1A3CB8158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B0A8);
  }

  return result;
}

unint64_t sub_1A3CB8158()
{
  result = qword_1EB12B098;
  if (!qword_1EB12B098)
  {
    sub_1A3CB7AE0(255, &qword_1EB12B088, MEMORY[0x1E69E6370], MEMORY[0x1E6968D10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B098);
  }

  return result;
}

uint64_t sub_1A3CB81F4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB7AE0(255, a2, a3, MEMORY[0x1E6968D10]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3CB83A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1A3CB849C()
{
  v1 = v0[33];
  v0[36] = sub_1A524E644();
  sub_1A3CB7198(&qword_1EB126DB0, &qword_1EB126DA8, MEMORY[0x1E69E8688]);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_1A45C1798;
  v3 = v0[15];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_1A3CB85AC()
{
  sub_1A3CB775C(0, &qword_1EB128B80, &qword_1EB128B98);
  v19 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1A52475E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6982AC0];
  sub_1A3CB767C(0, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  sub_1A52475D4();
  MEMORY[0x1A59028B0](v7, v4, v8);
  (*(v5 + 8))(v7, v4);
  v20 = v4;
  v21 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A59028E0](v13, v10, OpaqueTypeConformance2);
  v20 = v10;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = v19;
  v16 = sub_1A5247554();
  (*(v1 + 8))(v3, v15);
  (*(v11 + 8))(v13, v10);
  return v16;
}

void sub_1A3CB8878()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB8D98(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5247704();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB189740 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_1EB1EB3D0);
  (*(v7 + 16))(v9, v14, v6);
  sub_1A5247524();
  v15 = MEMORY[0x1E6982A40];
  sub_1A3CB0A78(&unk_1EB128BB0, MEMORY[0x1E6982A40]);
  sub_1A3CB0A78(&qword_1EB128BC0, v15);
  sub_1A5247714();
  v20[1] = sub_1A52474F4();
  v16 = *(v11 + 8);
  v16(v13, v10);
  if (qword_1EB1896B0[0] != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_1EB1EB3B8);
  swift_beginAccess();
  v18 = *(v2 + 16);
  v18(v4, v17, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v16(v13, v10);
  if (qword_1EB16C058 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v1, qword_1EB1EAF38);
  swift_beginAccess();
  v18(v4, v19, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v16(v13, v10);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3CB8D34()
{
  if (qword_1EB15AEF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB1EAD58);
}

void sub_1A3CB8DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5247524();
    v7 = MEMORY[0x1E6982A40];
    v8 = sub_1A3CB0A78(&unk_1EB128BB0, MEMORY[0x1E6982A40]);
    v9 = sub_1A3CB0A78(&qword_1EB128BC0, v7);
    v10 = a3(a1, v6, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A3CB8E8C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EAD58);
  __swift_project_value_buffer(v0, qword_1EB1EAD58);
  sub_1A524C814();
  return sub_1A5246F14();
}

uint64_t sub_1A3CB8F04()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB3D0);
  __swift_project_value_buffer(v1, qword_1EB1EB3D0);
  return sub_1A5247734();
}

void sub_1A3CB8F68()
{
  if (!qword_1EB126180)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126180);
    }
  }
}

uint64_t MapItem.__allocating_init(id:assets:region:localizedTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  result = swift_allocObject();
  *(result + 56) = a1;
  *(result + 64) = a2;
  *(result + 16) = a3;
  *(result + 24) = a6;
  *(result + 32) = a7;
  *(result + 40) = a8;
  *(result + 48) = a9;
  *(result + 72) = a4;
  *(result + 80) = a5;
  return result;
}

void sub_1A3CB9044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3CB90DC(void *a1@<X8>)
{
  v2 = *(*v1 + 64);
  *a1 = *(*v1 + 56);
  a1[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3CB90EC()
{
  if (!qword_1EB12B058)
  {
    sub_1A3CB90A8(255);
    sub_1A3CB9044(255, &qword_1EB126ED8, sub_1A3CB9518, MEMORY[0x1E69E62F8]);
    sub_1A3CB0A78(&qword_1EB12B038, sub_1A3CB90A8);
    v0 = sub_1A5240A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B058);
    }
  }
}

uint64_t sub_1A3CB91C8(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v15 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BF64();
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C29A58();
  v8 = sub_1A524D474();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1A3CBA7F8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_8_0;
  v11 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3CA4C68(&qword_1EB12B1E0, 255, MEMORY[0x1E69E7F60]);
  v12 = MEMORY[0x1E69E7F60];
  sub_1A3C29F88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v12);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v7, v4, v11);
  _Block_release(v11);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

uint64_t sub_1A3CB94D8()
{

  return swift_deallocObject();
}

void sub_1A3CB95E4()
{
  if (!qword_1EB12B040)
  {
    sub_1A3CB90EC();
    sub_1A3CB0A78(&qword_1EB12B068, sub_1A3CB90EC);
    v0 = sub_1A5240A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B040);
    }
  }
}

void sub_1A3CB9680()
{
  if (!qword_1EB12B0B0)
  {
    sub_1A3CB95E4();
    v0 = MEMORY[0x1E69E6530];
    sub_1A3CB7AE0(255, &qword_1EB12B070, MEMORY[0x1E69E6530], MEMORY[0x1E6968D10]);
    sub_1A3CB0A78(&qword_1EB12B050, sub_1A3CB95E4);
    sub_1A3CB81F4(&qword_1EB12B078, &qword_1EB12B070, v0);
    v1 = sub_1A5240A34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12B0B0);
    }
  }
}

uint64_t sub_1A3CB97A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB806C(255, &qword_1EB12B070, MEMORY[0x1E69E6530], MEMORY[0x1E6968D10]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CB9808(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A3CB9884()
{
  result = qword_1EB12B0B8;
  if (!qword_1EB12B0B8)
  {
    sub_1A3CB9680();
    sub_1A3CB9808(&qword_1EB12B048, sub_1A3CB95E4, sub_1A3CB99A4);
    sub_1A3CB81F4(&qword_1EB12B080, &qword_1EB12B070, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B0B8);
  }

  return result;
}

void sub_1A3CB99D8()
{
  if (!qword_1EB128B90)
  {
    sub_1A3CBA0BC();
    sub_1A3F46578(255, &qword_1EB128BA0, MEMORY[0x1E6982A98]);
    sub_1A3F46578(255, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5247584();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB128B90);
    }
  }
}

uint64_t sub_1A3CB9B48()
{
  sub_1A3CB99D8();
  v1 = *(v0 - 8);
  v41 = v0;
  v42 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB775C(0, &qword_1EB128B80, &qword_1EB128B98);
  v38 = v3;
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - v4;
  v5 = sub_1A5247584();
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB767C(0, &qword_1EB128BA0, MEMORY[0x1E6982A98]);
  v35 = v8;
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = sub_1A52475E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E6982AC0];
  sub_1A3CB767C(0, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
  v17 = v16;
  v34 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  sub_1A52475D4();
  MEMORY[0x1A59028B0](v14, v11, v15);
  (*(v12 + 8))(v14, v11);
  sub_1A5247594();
  v20 = MEMORY[0x1E6982A88];
  MEMORY[0x1A59028B0](v7, v5, MEMORY[0x1E6982A88]);
  (*(v33 + 8))(v7, v5);
  v43 = v11;
  v44 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v36;
  MEMORY[0x1A59028E0](v19, v17, OpaqueTypeConformance2);
  v43 = v17;
  v44 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v43 = v5;
  v44 = v20;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v39;
  v26 = v22;
  v27 = v10;
  v28 = v38;
  v29 = v35;
  sub_1A5247564();
  v43 = v28;
  v44 = v29;
  v45 = v23;
  v46 = v24;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  v31 = sub_1A5247554();
  (*(v42 + 8))(v25, v30);
  (*(v40 + 8))(v26, v28);
  (*(v37 + 8))(v27, v29);
  (*(v34 + 8))(v19, v17);
  return v31;
}

void sub_1A3CBA0BC()
{
  if (!qword_1EB128B80)
  {
    sub_1A3F46578(255, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB128B80);
    }
  }
}

void sub_1A3CBA198(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A3CBA614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A3CBA7F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3CA4D98(0);
    sub_1A3CA4C68(&qword_1EB124B18, 255, sub_1A3CA4D98);

    sub_1A5245F44();
  }

  return result;
}

void sub_1A3CBA8F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong viewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
      v3 = [v2 px_barAppearance];
      aBlock[4] = sub_1A44047E8;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A421179C;
      aBlock[3] = &block_descriptor_46_6;
      v4 = _Block_copy(aBlock);
      [v3 performChangesWithAnimationOptions:0 changes:v4];
      _Block_release(v4);
    }
  }
}

void sub_1A3CBAA3C()
{
  type metadata accessor for LemonadeShelvesLoader.ShelfState();

  swift_getWitnessTable();
  sub_1A5245F44();
}

id sub_1A3CBAAFC()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = *(v0 + 18);
  *(v0 + 18) = v1;
  if (v1 != v2)
  {
    return [*(v0 + 40) signalChange_];
  }

  return result;
}

uint64_t sub_1A3CBAEBC@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1A524BFC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for PhotoKitItemListManager.MetadataFetchState();
  v9 = *(State + 36);
  v10 = *&a1[v9];
  *&a1[v9] = MEMORY[0x1E69E7CC8];
  *a1 = 0;
  sub_1A524BFA4();
  result = (*(v5 + 40))(&a1[*(State + 28)], v7, v4);
  *a2 = v10;
  return result;
}

void PhotoKitItemListImplementation.merging(_:)()
{
  v3[11] = *v0;
  v1 = sub_1A52414C4();
  MEMORY[0x1EEE9AC00](v1);
  v3[12] = v3 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5245EC4();
}

void sub_1A3CBB978(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A3CBB984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524CA14();

  v5 = [swift_getObjCClassFromMetadata() changeDetailsFromFetchResult:a1 toFetchResult:a2 changedObjects:v4];

  return v5;
}

id sub_1A3CBBA08()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  v1 = [objc_opt_self() changeDetailsFromFetchResultChangeDetails_];

  return v1;
}

unint64_t sub_1A3CBBA80()
{
  result = qword_1EB120E30;
  if (!qword_1EB120E30)
  {
    sub_1A3CAFF98(255, &qword_1EB127000, MEMORY[0x1E69E5D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120E30);
  }

  return result;
}

uint64_t sub_1A3CBBAF4(void *a1)
{
  v2 = v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1A524E6B4();

    if (v4)
    {
      swift_unknownObjectRelease();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    return 0;
  }

  v5 = sub_1A3CBBC40(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v1;
  v12 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A3FB74A8();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v7);
  sub_1A3FB731C(v7, v9);
  *v2 = v9;
  return v10;
}

unint64_t sub_1A3CBBC40(uint64_t a1)
{
  v2 = sub_1A524DBE4();

  return sub_1A3CBBC84(a1, v2);
}

unint64_t sub_1A3CBBC84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A3C52C70(0, &qword_1EB126AC0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A524DBF4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A3CBBD58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBBD90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBBDC8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBBE00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBBE38()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBBE78()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBBEB0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBBEF0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBBF3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3D4344C(0, &qword_1EB124978, sub_1A3D42328, MEMORY[0x1E697DA80]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_1A3CBC028(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_1A3D4344C(0, &qword_1EB124978, sub_1A3D42328, MEMORY[0x1E697DA80]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CBC0FC()
{
  sub_1A5249A34();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  sub_1A5249A34();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeInlineStoryPlayer();
  sub_1A3D41BF8();
  sub_1A3D422DC(&qword_1EB129DB8, type metadata accessor for LemonadeInlineStoryPlayer);
  sub_1A3D41C4C();
  sub_1A52428F4();
  sub_1A5249A34();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A5248AE4();
  sub_1A5248804();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3D41ECC();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CBC4A8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1A5243834();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CBC560(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1A5243834();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CBC604()
{
  v1 = (type metadata accessor for ColorGradedAssetView(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  swift_unknownObjectRelease();
  v3 = v1[7];
  v4 = sub_1A5243834();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1A3CBC6F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CBC794()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBC7EC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBC824()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CBC8F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBC930()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBC970()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBC9C4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBC9FC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCA5C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCAB4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCB14()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCB7C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCBD4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCC0C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCC4C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCC94()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCCCC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBCD44()
{
  v1 = (type metadata accessor for LemonadeVisionPeopleShelfCell() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_1A3D61C18(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
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

uint64_t sub_1A3CBCE84(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3D61C18(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CBCF64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3D61C18(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CBD038()
{
  sub_1A3D6133C();
  sub_1A3D61B44(&qword_1EB12B688, sub_1A3D6133C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CBD0F0()
{
  type metadata accessor for LemonadeFeedSpec();
  type metadata accessor for LemonadeSpecsProviderView();
  sub_1A3D639BC(255);
  sub_1A5248804();
  sub_1A3D63A24(255);
  sub_1A5248804();
  sub_1A3D63B0C(255);
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A3D63DAC(&qword_1EB127950, sub_1A3D639BC);
  swift_getWitnessTable();
  sub_1A3D63DAC(&qword_1EB1278C0, sub_1A3D63A24);
  swift_getWitnessTable();
  sub_1A3D63DAC(&qword_1EB127A20, sub_1A3D63B0C);
  swift_getWitnessTable();
  type metadata accessor for LemonadeNavigationContainer();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CBD2C8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3CBD34C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD4D4(uint64_t a1, uint64_t a2)
{
  sub_1A3D6D1A0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CBD538(uint64_t a1, uint64_t a2)
{
  sub_1A3D6DA14(0, &qword_1EB123950, sub_1A3D6D1A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CBD5E4()
{
  type metadata accessor for LemonadeAccessibilityViewModifier();
  sub_1A5248804();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CBD678()
{
  type metadata accessor for LemonadeAccessibilityViewModifier();
  swift_getWitnessTable();
  sub_1A52499C4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249F54();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A3D72360();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CBD790()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD7D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBD810()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD868()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD8A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD8E0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD920()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD968()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBD9A8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDA08()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CBDA40()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDA88()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDAC0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDB10()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDB50()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDBB4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDBEC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDC2C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBDC64()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDDF4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDE2C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBDE84()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDEC4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBDF04()
{
  sub_1A3D933A0();
  sub_1A3D93850();
  sub_1A3D93A2C(255, &qword_1EB12BDA8, sub_1A3D92AE0);
  sub_1A3D93A8C(&qword_1EB12BDB0, &qword_1EB12BDA8, sub_1A3D92AE0);
  swift_getOpaqueTypeConformance2();
  sub_1A3D6E520();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CBE00C()
{
  sub_1A3D93954();
  sub_1A3D93850();
  sub_1A3D93A2C(255, &qword_1EB12BDC0, sub_1A3D92BA4);
  sub_1A3D93A8C(&qword_1EB12BDC8, &qword_1EB12BDC0, sub_1A3D92BA4);
  swift_getOpaqueTypeConformance2();
  sub_1A3D6E520();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CBE114()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBE14C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE190()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE1C8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE200()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CBE238()
{
  sub_1A3D97240(0, &qword_1EB12BE98, type metadata accessor for PXAppleMusicCapabilityStatus, MEMORY[0x1E69E8548]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CBE2FC()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBE334()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE36C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBE3C4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(sub_1A524DF24() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(AssociatedTypeWitness - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v0 + v3, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBE538(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3D9D3F0(0, &qword_1EB12BF20, type metadata accessor for LemonadeCollectionCustomizationView);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CBE604(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3D9D3F0(0, &qword_1EB12BF20, type metadata accessor for LemonadeCollectionCustomizationView);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CBE710()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE758()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE790()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE7D0()
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

uint64_t sub_1A3CBE89C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBE8D8()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CBE930()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE970()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE9B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBE9F8()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1A3CBEA48()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CBEAB0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEAF0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEB28()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBEB60()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEBA0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CBEBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C41108(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1A3CBECAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3C41108(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }
}

uint64_t sub_1A3CBED68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBEDA0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEDD8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEE58()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEE98()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEED0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBEF08()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CBEF44()
{
  v1 = (type metadata accessor for GenerativeStoryVFXViewRepresentable(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v1[8];
  v7 = sub_1A5246E94();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_1A3CBF07C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CBF0B4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A3DC7DBC(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1A3DC7DBC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[8]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1A5246F24();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

void sub_1A3CBF284(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A3DC7DBC(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    v13(a1 + v11, a2, a2, v9);
    return;
  }

  sub_1A3DC7DBC(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v14 = sub_1A5246F24();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[12];

    v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1A3CBF454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5246F24();
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
    v11 = sub_1A5246E94();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A3CBF578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5246F24();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1A5246E94();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1A3CBF69C()
{
  sub_1A3DC85F0();
  sub_1A3DC86C4();
  sub_1A3DC9268();
  sub_1A3DC91B8(&qword_1EB12C5E8, sub_1A3DC86C4);
  sub_1A3DC92EC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CBF77C()
{
  v1 = (type metadata accessor for GenerativeStoryVFXViewRepresentable(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = sub_1A5246F24();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = v1[8];
  v5 = sub_1A5246E94();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1A3CBF8A8()
{
  v1 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1A3C53AEC(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[5];
  sub_1A3DC7DBC(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
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

  v7 = v1[6];
  sub_1A3DC7DBC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  v9 = v1[12];
  v10 = sub_1A5246F24();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1A3CBFBA0()
{
  v1 = sub_1A52482C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v6 = *(*(v5 - 1) + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + ((v3 + v4 + v6) & ~v6);
  sub_1A3C53AEC(*v7, *(v7 + 8));
  v8 = v5[5];
  sub_1A3DC7DBC(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
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

  v11 = v5[6];
  sub_1A3DC7DBC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v7 + v5[7]), *(v7 + v5[7] + 8));

  v13 = v5[12];
  v14 = sub_1A5246F24();
  (*(*(v14 - 8) + 8))(v7 + v13, v14);

  return swift_deallocObject();
}

uint64_t sub_1A3CBFF04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CBFF3C()
{
  v1 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  sub_1A3C53AEC(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[5];
  sub_1A3DC7DBC(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
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

  v7 = v1[6];
  sub_1A3DC7DBC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  v9 = v1[12];
  v10 = sub_1A5246F24();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1A3CC0224(uint64_t a1, uint64_t a2)
{
  sub_1A3DC9040(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC0288()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC03A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC03E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC0420()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0458()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC04D8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0518()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0568()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC05B8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC05F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0638()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0688()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC06D0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC074C()
{

  v1 = *(v0 + 40);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC07F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0868()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC08A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC08D8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0924()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC095C()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC0998()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC09E0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0A20()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC0A58()
{
  v1 = sub_1A5246F24();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CC0B04()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0B3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5248714();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CC0BE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5248714();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CC0C8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC0CC4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC0D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524BAE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 36));
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
    sub_1A3E09AF8(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 48);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1A3CC0E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A524BAE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  else
  {
    sub_1A3E09AF8(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 48);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1A3CC0FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524BAE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_1A3CC109C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A524BAE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore49LemonadeSharedAlbumsActivityOneUpBrowsingDelegate_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A3CC1170()
{
  sub_1A524B9A4();
  v0 = MEMORY[0x1E697E5E0];
  v1 = MEMORY[0x1E697E830];
  sub_1A3E055C8(255, &qword_1EB12C988, sub_1A3DF11FC, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView();
  sub_1A5248804();
  type metadata accessor for SharedAlbumsAssetsCollageView();
  sub_1A5249754();
  sub_1A524B514();
  sub_1A5248A14();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3DF19A4(&qword_1EB128080, MEMORY[0x1E697EAF0]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  sub_1A5242C04();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A3DF19A4(&qword_1EB129158, MEMORY[0x1E69C2160]);
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  sub_1A3E055C8(255, &qword_1EB12CA40, sub_1A3DF1B60, v0, v1);
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A3DF1F90();
  sub_1A5248804();
  sub_1A3E09208(255, &unk_1EB12CAC8, &type metadata for SharedAlbumsAssetViewNavigationEnvironment, MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3E09AF8(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3DF19A4(&qword_1EB12CAD8, sub_1A3DF1F90);
  swift_getWitnessTable();
  sub_1A3DF2108();
  swift_getWitnessTable();
  sub_1A3DF2184();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC16A0()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A524B784();
  sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5249754();
  sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A3E000AC(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getWitnessTable();
  sub_1A5248414();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A524B514();
  sub_1A3E0479C(255, &qword_1EB12CB28, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E6980460]);
  sub_1A5248804();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3E004D4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC1D40()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC1D98()
{
  if (*(v0 + 16))
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC1DE8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC1E28()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC1E70()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC1ED0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC1F08()
{
  swift_unknownObjectRelease();
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  }

  sub_1A3E04274(*(v0 + 136), *(v0 + 144));
  v1 = *(v0 + 200);

  if (v1 == 1 && *(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 160);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC1FB0()
{
  swift_unknownObjectRelease();
  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  }

  sub_1A3E04274(*(v0 + 144), *(v0 + 152));
  v1 = *(v0 + 208);

  if (v1 == 1 && *(v0 + 192))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 168);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC2058()
{
  v1 = (type metadata accessor for SharedAlbumsAssetsCollageView() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_1A524BAE4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + v2 + v1[12];
  LODWORD(v1) = *(v4 + 48);

  if (v1 == 1 && *(v4 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(v4 + 8);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC21E0()
{
  v1 = (type metadata accessor for SharedAlbumsAssetsCollageView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = sub_1A524BAE4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + v2 + v1[12];
  LODWORD(v1) = *(v4 + 48);

  if (v1 == 1 && *(v4 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(v4 + 8);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC2310(uint64_t a1, uint64_t a2)
{
  sub_1A3E09AF8(0, &qword_1EB12CA88, sub_1A3DF1E58, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC23A4(uint64_t a1)
{
  sub_1A3E09AF8(0, &qword_1EB12CA88, sub_1A3DF1E58, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CC2430()
{
  v1 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = sub_1A524BAE4();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  v6 = v0 + v2 + v1[10];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = v4 + v1[11];

  if (*(v7 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(v7 + 8);
  }

  v8 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v4 + v1[12];
  v10 = MEMORY[0x1E69C24E0];
  sub_1A3E09AF8(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  (*(*(v11 - 8) + 8))(v9, v11);
  sub_1A3E09AF8(0, &qword_1EB127288, v10, MEMORY[0x1E6981E98]);

  sub_1A3D35BAC(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3CC263C()
{
  v1 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = sub_1A524BAE4();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = v0 + v2 + v1[10];
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = v3 + v1[11];

  if (*(v6 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(v6 + 8);
  }

  v7 = v3 + v1[12];
  v8 = MEMORY[0x1E69C24E0];
  sub_1A3E09AF8(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  (*(*(v9 - 8) + 8))(v7, v9);
  sub_1A3E09AF8(0, &qword_1EB127288, v8, MEMORY[0x1E6981E98]);

  sub_1A3D35BAC(*(v3 + v1[14]), *(v3 + v1[14] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3CC2834(uint64_t a1, uint64_t a2)
{
  sub_1A3DF15C8(0, &qword_1EB12C9D8, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC28B4(uint64_t a1)
{
  sub_1A3DF15C8(0, &qword_1EB12C9D8, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CC292C()
{
  v1 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80));
  v3 = sub_1A524BAE4();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v2 + v1[10];
  if (*(v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  v5 = v2 + v1[11];

  if (*(v5 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(v5 + 8);
  }

  v6 = v2 + v1[12];
  v7 = MEMORY[0x1E69C24E0];
  sub_1A3E09AF8(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  (*(*(v8 - 8) + 8))(v6, v8);
  sub_1A3E09AF8(0, &qword_1EB127288, v7, MEMORY[0x1E6981E98]);

  sub_1A3D35BAC(*(v2 + v1[14]), *(v2 + v1[14] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3CC2B48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC2B80()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2BC0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2C08()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2C40()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2C8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2CD4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2D1C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC2DA0(uint64_t a1, uint64_t a2)
{
  sub_1A3E33AF4(0, &qword_1EB123A78, sub_1A3E330F0, sub_1A3E33BA0, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC2E4C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1A3E31688(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1A3E31688(0, &qword_1EB124708, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
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

void sub_1A3CC2FB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1A3E31688(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    sub_1A3E31688(0, &qword_1EB124708, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3CC3120()
{
  sub_1A3E36840();
  sub_1A3E424FC();
  sub_1A3E36818(255);
  sub_1A5249554();
  sub_1A3E35908(&qword_1EB123128, sub_1A3E36818, sub_1A3E42340);
  sub_1A3E33CB8(&qword_1EB127FE0, MEMORY[0x1E697F6A0]);
  swift_getOpaqueTypeConformance2();
  sub_1A3E426FC();
  sub_1A3E42A30();
  sub_1A3E42888(255);
  sub_1A3E33CB8(&qword_1EB1270A8, sub_1A3E42888);
  swift_getOpaqueTypeConformance2();
  sub_1A3E33CB8(&qword_1EB127160, sub_1A3E42A30);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC33C4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3414()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC344C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3484()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC34BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC34F4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3534()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC357C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC35B4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC35EC()
{

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC3654()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3694()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC36DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC3724()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC3768()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC37A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC37E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC3820()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC3870()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC38AC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC38F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC3934()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3980()
{
  sub_1A3E739EC(255);
  type metadata accessor for LemonadeShelfHeaderHeightReporterModifier();
  sub_1A5248804();
  sub_1A3E75CCC(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3E73A2C();
  sub_1A5248804();
  sub_1A3E73C5C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3E73DE0();
  swift_getWitnessTable();
  sub_1A3E76368(&qword_1EB128040, sub_1A3E73A2C);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249F54();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A3E76368(&qword_1EB127710, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC3C08()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC3C50(uint64_t a1, uint64_t a2)
{
  sub_1A3E75EBC(0, &qword_1EB12D230, sub_1A3E74254, sub_1A3E74608, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC3CF8(uint64_t a1, uint64_t a2)
{
  sub_1A3E72C00(0, &qword_1EB1212C8, &qword_1EB121EF0, sub_1A3E72C58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC3D80(uint64_t a1, uint64_t a2)
{
  sub_1A3E72DD0(0, &qword_1EB127DA0, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC3E00(uint64_t a1, uint64_t a2)
{
  sub_1A3E75980(0, &qword_1EB122880, sub_1A3E71CDC, &type metadata for LemonadeShelfVisionHeaderTitleView, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC3EB0()
{
  type metadata accessor for LemonadeShelfHeaderHeightReporterModifier();
  swift_getWitnessTable();
  sub_1A52499C4();
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A3E754D0();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC3FC8()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4000()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC4040()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4078()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CC40B0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC40F8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC414C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3E7CD50(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
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
      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CC42D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3E7CD50(0, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
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
      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CC4468(uint64_t a1, uint64_t a2)
{
  sub_1A3E7D9A8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC44CC(uint64_t a1, uint64_t a2)
{
  sub_1A3E7DAC0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CC456C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC45BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC45F4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC462C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC466C()
{
  v1 = (type metadata accessor for OneUpSharePlayNavigateMessagePayload() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v22 = *(*v1 + 64);
  v4 = sub_1A5241C04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();

  v7 = v0 + v3 + v1[8];

  v8 = v7 + *(type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0) + 24);
  v9 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  v11 = v22;
  if (!v10)
  {
    v19 = v6;
    v20 = (v2 + 56) & ~v2;
    v21 = v4;
    v12 = v8 + *(v9 + 24);
    v13 = sub_1A52414C4();
    v14 = *(v13 - 8);
    v15 = *(v14 + 8);
    v15(v12, v13);
    v16 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
    v15(v12 + v16[5], v13);
    v18 = v16[6];
    if (!(*(v14 + 48))(v12 + v18, 1, v13))
    {
      v15(v12 + v18, v13);
    }

    v15(v12 + v16[8], v13);

    v4 = v21;
    v3 = v20;
    v11 = v22;
    v6 = v19;
  }

  (*(v5 + 8))(v0 + ((v3 + v11 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4950()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4A54()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CC4A8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4AD0()
{
  sub_1A3C41108(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 26) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1A5241534();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);

  v8 = sub_1A5241144();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4C70()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4CA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC4CE8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4D4C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4D84()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4E08()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC4F78()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC4FFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC5038()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5164()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC519C()
{
  v1 = type metadata accessor for PhotosDetailsSearchView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  sub_1A3EBE3CC(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v7 = *(v6 + 32);
    v8 = sub_1A52489C4();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(v4 + v1[7]);
  if (*(v4 + v1[8]))
  {
  }

  if (*(v4 + v1[9] + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC53AC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC53E4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5420()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CC5458()
{
  v1 = type metadata accessor for PhotosDetailsSearchView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  sub_1A3EBE3CC(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v7 = *(v6 + 32);
    v8 = sub_1A52489C4();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(v4 + v1[7]);
  if (*(v4 + v1[8]))
  {
  }

  if (*(v4 + v1[9] + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5670(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A3EC2038(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3CC5750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1A3EC2038(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CC5834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3EC6C44(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

void sub_1A3CC5924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3EC6C44(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3CC5A5C()
{
  v1 = type metadata accessor for PhotosDetailsNoLocationWidgetView();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A52486A4();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5B98()
{
  if (*(v0 + 24))
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC5BE8()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5C38()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5C90()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5CD0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC5D18()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC5D54()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5D8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5DE4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5E34()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5E8C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5EEC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC5F34()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CC6010()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6050()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6098()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC60D0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6128()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3EE5414(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
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

void sub_1A3CC6250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3EE5414(0, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3CC6340()
{
  v1 = type metadata accessor for PhotosDetailsShazamEventsWidgetView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A3EE5414(0, &qword_1EB128A58, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5248334();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC6488()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC64D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5241144();
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A3CC6594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5241144();
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3CC66F8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC6740()
{
  v1 = *(type metadata accessor for LemonadeNavigationDestination() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v0 + v2);
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
      goto LABEL_43;
    case 0x10u:

      if (v4[10])
      {
      }

      type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
      goto LABEL_43;
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
LABEL_43:
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

  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC6D50()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CC6D88()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CC6DC8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6E10()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6E70()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6EB0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6EE8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6F20()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CC6F68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CC6FA0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TimelineEngineCell();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CC704C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TimelineEngineCell();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1A3CC70FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3CC712C()
{
  type metadata accessor for LemonadeCollectionCustomizationPhotosPickerModifier();
  swift_getWitnessTable();
  sub_1A52499C4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC73E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84) == a2)
  {
    v4 = *(v3 + 48);
LABEL_14:

    return v4();
  }

  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + *(a3 + 36));
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  v10 = type metadata accessor for LemonadeModelFactory();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = *(v10 - 8);
LABEL_13:
    v4 = *(v11 + 48);
    goto LABEL_14;
  }

  sub_1A3EFDB80(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v11 = *(v12 - 8);
    goto LABEL_13;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v13 = sub_1A5247CB4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v11 = *(v13 - 8);
    goto LABEL_13;
  }

  sub_1A3EFC5C8();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a2)
  {
    v4 = *(v15 + 48);
    goto LABEL_14;
  }

  sub_1A3EFDB80(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + *(a3 + 68);

  return v18(v19, a2, v17);
}

uint64_t sub_1A3CC7770(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a2;
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84) == a3)
  {
    v6 = *(v5 + 56);
    v7 = a2;
    v8 = *(a4 + 16);
LABEL_14:

    return v6(result, a2, v7, v8);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 36)) = (a2 - 1);
    return result;
  }

  v10 = result;
  v12 = type metadata accessor for LemonadeModelFactory();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v8 = v12;
    v13 = *(v12 - 8);
    v14 = *(a4 + 52);
LABEL_13:
    v6 = *(v13 + 56);
    result = v10 + v14;
    a2 = v4;
    v7 = v4;
    goto LABEL_14;
  }

  sub_1A3EFDB80(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v8 = v15;
    v13 = *(v15 - 8);
    v14 = *(a4 + 56);
    goto LABEL_13;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v16 = sub_1A5247CB4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v8 = v16;
    v13 = *(v16 - 8);
    v14 = *(a4 + 60);
    goto LABEL_13;
  }

  sub_1A3EFC5C8();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v8 = v17;
    v13 = *(v17 - 8);
    v14 = *(a4 + 64);
    goto LABEL_13;
  }

  sub_1A3EFDB80(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = v10 + *(a4 + 68);

  return v20(v21, v4, v4, v19);
}

uint64_t sub_1A3CC7AEC()
{
  type metadata accessor for LemonadeShelfContents();
  v0 = MEMORY[0x1E6980B20];
  sub_1A3F1C93C(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  sub_1A5248804();
  swift_getWitnessTable();
  sub_1A3F17CC4(&qword_1EB127700, &qword_1EB1276F0, v0);
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC7BE0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeShelfContents();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v3 + v2[13];
  if (*(v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  v5 = v2[16];
  v6 = sub_1A52434D4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  if (*(v3 + v2[18] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + v2[18]);
  }

  v7 = v2[19];
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[20]), *(v3 + v2[20] + 8));
  sub_1A3D35BAC(*(v3 + v2[21]), *(v3 + v2[21] + 8));
  sub_1A3C53AEC(*(v3 + v2[22]), *(v3 + v2[22] + 8));
  sub_1A3C53AEC(*(v3 + v2[23]), *(v3 + v2[23] + 8));
  v9 = v3 + v2[24];
  sub_1A3D35A84(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
  v10 = v2[25];
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  v12 = v2[26];
  sub_1A3EFDB80(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5248714();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[27]), *(v3 + v2[27] + 8));
  v14 = v3 + v2[28];
  sub_1A3D35A84(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A3CC7FBC()
{
  v1 = sub_1A5242334();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CC8044()
{
  type metadata accessor for LemonadeShelfHeader();
  sub_1A5248804();
  sub_1A3F17A98();
  sub_1A5249754();
  sub_1A3F18928(255, &qword_1EB1225A0, MEMORY[0x1E697F960]);
  sub_1A5249754();
  sub_1A5249754();
  type metadata accessor for LemonadeShelfBody();
  sub_1A3F17B44(255, &qword_1EB123108, sub_1A3F17B1C);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98);
  swift_getWitnessTable();
  sub_1A3F17BF8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A5243DD4();
  type metadata accessor for LemonadeShelfContents.bottomPadding();
  sub_1A5248804();
  v0 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1C93C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v0);
  sub_1A5248804();
  v1 = MEMORY[0x1E69C24E0];
  sub_1A3EFDB80(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5242D14();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v0);
  swift_getWitnessTable();
  sub_1A3F1B380(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  swift_getWitnessTable();
  sub_1A3F1B31C(&qword_1EB1279F8, &qword_1EB1279F0, v1);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3F1D360(&qword_1EB129148, MEMORY[0x1E69C2218]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A3F17D14();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeShelfContents.VisibilityTracker();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC86C4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CC87C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CC889C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeShelfBody();
  v3 = *(*(v2 - 1) + 64);
  v4 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v5 = v0 + v4;
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  v6 = v0 + v4 + v2[14];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  sub_1A3F1B54C(*(v5 + v2[15]), *(v5 + v2[15] + 8));
  sub_1A3C53AEC(*(v5 + v2[16]), *(v5 + v2[16] + 8));
  sub_1A3C53AEC(*(v5 + v2[17]), *(v5 + v2[17] + 8));
  v7 = v5 + v2[18];
  sub_1A3EFDB80(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
    v9 = sub_1A5242D14();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v5 + v2[19]), *(v5 + v2[19] + 8));
  v10 = v5 + v2[20];
  sub_1A3D35A84(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));

  v11 = v2[23];
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  sub_1A3F1B4C4(*(v5 + v2[24]), *(v5 + v2[24] + 8), *(v5 + v2[24] + 9));
  v13 = v2[25];
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A52486A4();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  v15 = v2[26];
  sub_1A3EFDB80(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1A5249A94();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v5 + v2[28]), *(v5 + v2[28] + 8));
  sub_1A3C53AEC(*(v5 + v2[29]), *(v5 + v2[29] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3CC8D6C()
{
  type metadata accessor for LemonadeShelfContents.bottomPadding();
  swift_getWitnessTable();
  sub_1A52499C4();
  sub_1A5248804();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC8E30()
{
  type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler();
  swift_getWitnessTable();
  sub_1A52499C4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC8ED4()
{
  type metadata accessor for LemonadeShelfContents.VisibilityTracker();
  swift_getWitnessTable();
  sub_1A52499C4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CC8FE4()
{
  sub_1A3F1AFEC();
  swift_getAssociatedTypeWitness();
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F1B0E0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A52497A4();
  swift_getOpaqueTypeConformance2();
  sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  sub_1A5249754();
  swift_getWitnessTable();
  sub_1A3F18B84();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v0 = MEMORY[0x1E6980A08];
  v3 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeConformance2();
  sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v0);
  swift_getWitnessTable();
  sub_1A5243E24();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LemonadeShelfItemLoadingStatusModifier();
  sub_1A5248804();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A52420C4();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3EFDB80(255, &qword_1EB120960, type metadata accessor for PHCollectionSortKey, MEMORY[0x1E69E6720]);
  swift_getOpaqueTypeConformance2();
  sub_1A3F1B1BC();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B8B4();
  type metadata accessor for LemonadeShelfBody.ContentBackground();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v1 = MEMORY[0x1E69C2948];
  sub_1A3EFDB80(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1B2AC();
  sub_1A5248804();
  sub_1A3F1C93C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v3);
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5249A34();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A3F1B31C(&qword_1EB1279C8, &qword_1EB1279C0, v1);
  swift_getWitnessTable();
  sub_1A3F1D360(&qword_1EB1279E8, sub_1A3F1B2AC);
  swift_getWitnessTable();
  sub_1A3F1B380(&qword_1EB1279B0, &qword_1EB1279A8, MEMORY[0x1E69E7DE0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC9E00()
{
  type metadata accessor for LemonadeShelfItemLoadingStatusModifier();
  swift_getWitnessTable();
  sub_1A52499C4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CC9EAC()
{
  type metadata accessor for LemonadeShelfBody.ContentBackground();
  swift_getWitnessTable();
  sub_1A52499C4();
  sub_1A5248804();
  sub_1A3F1D1FC(255, &qword_1EB12E7C0, sub_1A3F1D27C, sub_1A3F1D32C, MEMORY[0x1E697F930]);
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3F1D3A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CCA094(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1A3F25650(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3CCA174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1A3F25650(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CCA248()
{
  sub_1A3F1ECE8();
  sub_1A3F1D5F0();
  sub_1A5249C44();
  sub_1A3F256B4(&qword_1EB12E950, sub_1A3F1D5F0);
  sub_1A3F256B4(&qword_1EB13A710, MEMORY[0x1E697C938]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CCA364()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCA3AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCA3E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCA41C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCA70C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCA744()
{
  sub_1A3F2D9A8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1A3CCA790()
{
  v1 = sub_1A5243934();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  sub_1A3D35BAC(*(v0 + 16), *(v0 + 24));
  j__swift_release(*(v0 + 32), *(v0 + 40));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CCA8B8()
{
  sub_1A3F2F228();
  sub_1A3F2E88C();
  sub_1A3F2ED3C(&qword_1EB12EAB8, sub_1A3F2E88C);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CCA978(char *a1, uint64_t a2, int *a3)
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

  sub_1A3F3732C(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  sub_1A3F3732C(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_1A3F3732C(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[8]];

  return v16(v17, a2, v15);
}

char *sub_1A3CCAB74(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1A3F3732C(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1A3F3732C(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_1A3F3732C(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[8]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A3CCADBC()
{
  v1 = type metadata accessor for LemonadeReorderView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(*(type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8) + 80);
  v5 = v3 + v4;
  v6 = v0 + v2;

  v7 = v1[5];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A52486A4();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v2 + v5;
  sub_1A3C53AEC(*(v6 + v1[6]), *(v6 + v1[6] + 8));
  v10 = v1[7];
  sub_1A3F31578(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5247E04();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  v12 = v9 & ~v4;
  v13 = v1[8];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A5242D14();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
  }

  v15 = v0 + v12;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      sub_1A3C53AEC(*(v15 + 56), *(v15 + 64));
      sub_1A3C53AEC(*(v15 + 72), *(v15 + 80));
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
      v15 += *(v19 + 40);

      v17 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider() + 28);
      goto LABEL_33;
    case 5u:

      break;
    case 7u:

      swift_unknownObjectRelease();
      break;
    case 8u:

      v15 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
      v18 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
      goto LABEL_32;
    case 9u:

      v83 = type metadata accessor for LemonadeICloudLinksFeature();
      v34 = (v15 + *(v83 + 20));

      v35 = type metadata accessor for LemonadeICloudLinksShelfProvider();
      v36 = *(v35 + 24);
      v37 = sub_1A5243334();
      (*(*(v37 - 8) + 8))(v34 + v36, v37);
      v81 = v35;
      v38 = v34 + *(v35 + 28);
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v38, *(v38 + 1), v38[16]);
      if (EnumCaseMultiPayload == 1)
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

      v68 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v69 = sub_1A5241F84();
      v70 = *(v69 - 8);
      if (!(*(v70 + 48))(&v38[v68], 1, v69))
      {
        (*(v70 + 8))(&v38[v68], v69);
      }

      v71 = *(v81 + 32);
      v72 = sub_1A5244094();
      (*(*(v72 - 8) + 8))(v34 + v71, v72);
      v67 = *(v15 + *(v83 + 28));
      goto LABEL_75;
    case 0xAu:

      break;
    case 0xBu:

      v20 = (v15 + *(type metadata accessor for LemonadeSharedWithYouFeature() + 20));

      v21 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
      v22 = *(v21 + 24);
      v23 = sub_1A5243334();
      (*(*(v23 - 8) + 8))(v20 + v22, v23);
      v24 = v20 + *(v21 + 28);
      goto LABEL_34;
    case 0xCu:

      v16 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
      v17 = v16 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
      goto LABEL_33;
    case 0xDu:

      v82 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
      v25 = (v15 + *(v82 + 20));

      v26 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
      v27 = *(v26 + 24);
      v28 = sub_1A5243334();
      (*(*(v28 - 8) + 8))(v25 + v27, v28);
      v80 = v26;
      v29 = v25 + *(v26 + 28);
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v30 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v29, *(v29 + 1), v29[16]);
      if (v30 == 1)
      {
        sub_1A3C4208C(*(v29 + 3), *(v29 + 4), v29[40]);
        sub_1A3C47A98();
        v32 = *(v31 + 64);
        v33 = sub_1A5242C84();
        (*(*(v33 - 8) + 8))(&v29[v32], v33);
      }

      else
      {
        if (*(v29 + 5) >= 3uLL)
        {
        }

        if (*(v29 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v29 + 9), *(v29 + 10), v29[88]);
      }

      v62 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v63 = sub_1A5241F84();
      v64 = *(v63 - 8);
      if (!(*(v64 + 48))(&v29[v62], 1, v63))
      {
        (*(v64 + 8))(&v29[v62], v63);
      }

      v65 = *(v80 + 32);
      v66 = sub_1A5244094();
      (*(*(v66 - 8) + 8))(v25 + v65, v66);

      v67 = *(v15 + *(v82 + 24));
      goto LABEL_75;
    case 0xFu:

      v43 = (v15 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

      v44 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
      v45 = v43 + v44[7];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v46 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v45, *(v45 + 1), v45[16]);
      if (v46 == 1)
      {
        sub_1A3C4208C(*(v45 + 3), *(v45 + 4), v45[40]);
        sub_1A3C47A98();
        v48 = *(v47 + 64);
        v49 = sub_1A5242C84();
        (*(*(v49 - 8) + 8))(&v45[v48], v49);
      }

      else
      {
        if (*(v45 + 5) >= 3uLL)
        {
        }

        if (*(v45 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v45 + 9), *(v45 + 10), v45[88]);
      }

      v73 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v74 = sub_1A5241F84();
      v75 = *(v74 - 8);
      if (!(*(v75 + 48))(&v45[v73], 1, v74))
      {
        (*(v75 + 8))(&v45[v73], v74);
      }

      goto LABEL_74;
    case 0x10u:

      v15 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
      v18 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
      goto LABEL_32;
    case 0x11u:

      v15 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

      v18 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
      goto LABEL_32;
    case 0x15u:

      v15 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
      v18 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_32:
      v17 = *(v18 + 24);
LABEL_33:
      v24 = (v15 + v17);
LABEL_34:
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v55 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v24, *(v24 + 1), v24[16]);
      if (v55 == 1)
      {
        sub_1A3C4208C(*(v24 + 3), *(v24 + 4), v24[40]);
        sub_1A3C47A98();
        v57 = *(v56 + 64);
        v58 = sub_1A5242C84();
        (*(*(v58 - 8) + 8))(&v24[v57], v58);
      }

      else
      {
        if (*(v24 + 5) >= 3uLL)
        {
        }

        if (*(v24 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v24 + 9), *(v24 + 10), v24[88]);
      }

      v59 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v60 = sub_1A5241F84();
      v61 = *(v60 - 8);
      if (!(*(v61 + 48))(&v24[v59], 1, v60))
      {
        (*(v61 + 8))(&v24[v59], v60);
      }

      break;
    case 0x16u:

      v43 = (v15 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20));
      v44 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
      v50 = v43 + v44[5];
      type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
      v51 = swift_getEnumCaseMultiPayload();
      sub_1A3D6D890(*v50, *(v50 + 1), v50[16]);
      if (v51 == 1)
      {
        sub_1A3C4208C(*(v50 + 3), *(v50 + 4), v50[40]);
        sub_1A3C47A98();
        v53 = *(v52 + 64);
        v54 = sub_1A5242C84();
        (*(*(v54 - 8) + 8))(&v50[v53], v54);
      }

      else
      {
        if (*(v50 + 5) >= 3uLL)
        {
        }

        if (*(v50 + 7) >= 3uLL)
        {
        }

        sub_1A3C4208C(*(v50 + 9), *(v50 + 10), v50[88]);
      }

      v76 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
      v77 = sub_1A5241F84();
      v78 = *(v77 - 8);
      if (!(*(v78 + 48))(&v50[v76], 1, v77))
      {
        (*(v78 + 8))(&v50[v76], v77);
      }

LABEL_74:
      v67 = *(v43 + v44[8]);
LABEL_75:

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CCBB98()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CCBBD0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCBC10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CCBCBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CCBD60()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CCBD98()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCBDD8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCBE20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCBE78(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3CCBF24(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CCBFC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TimelineEngineFrame(0);
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
      v13 = type metadata accessor for TimelineEngineCell();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1A3CCC0EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TimelineEngineFrame(0);
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
      v13 = type metadata accessor for TimelineEngineCell();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A3CCC210()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3CCC248()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC288()
{
  v1 = sub_1A52450C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CCC34C()
{
  v1 = sub_1A5245104();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CCC424()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC464()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC49C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC4E4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC53C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC584()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC5DC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC61C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC698()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC6E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC718()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC758()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCC7A8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC7F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC828()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCC880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5240E64();
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

uint64_t sub_1A3CCC940(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A5240E64();
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

uint64_t sub_1A3CCC9FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCCA3C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCCA74()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCCABC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCCAFC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCCB3C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCCB80(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for InvitationsItem.InvitationType(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CCCC38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for InvitationsItem.InvitationType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CCCCDC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3CCCD88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3CCCE2C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1A3CCCED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1A3CCCF80()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCCFC8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CCD004()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1A3F6D768();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v4 + *(v7 + 80) + 8) & ~*(v7 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1A3CCD198()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3CCD1D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CCD208()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCD248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3F742D0(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

void sub_1A3CCD338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3F742D0(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3CCD428()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCD460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C6B4E8(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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

void sub_1A3CCD54C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3C6B4E8(0, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A3CCD634()
{
  sub_1A3F7565C();
  sub_1A3F7558C();
  type metadata accessor for GenerativeStoryEntryCardCommonView(255);
  sub_1A3C6B8D0(&qword_1EB125350, type metadata accessor for GenerativeStoryEntryCardCommonView);
  sub_1A3D6F4A4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CCD738()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3CCD7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 84) == a2)
  {
    v5 = *(v4 + 48);

    return v5();
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v7 = *(a1 + *(a3 + 44));
    if (v7 >= 0xFFFFFFFF)
    {
      LODWORD(v7) = -1;
    }

    return (v7 + 1);
  }

  else
  {
    type metadata accessor for LemonadeSectionedFeedViewModel();
    v11 = sub_1A5247CB4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A3CCD8E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84) == a3)
  {
    v6 = *(v5 + 56);

    return v6(result, a2, a2);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 44)) = (a2 - 1);
  }

  else
  {
    v7 = result;
    type metadata accessor for LemonadeSectionedFeedViewModel();
    v9 = sub_1A5247CB4();
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 48);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1A3CCDA10()
{
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  type metadata accessor for LemonadeSectionedStackedFeed();
  swift_getWitnessTable();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeSectionedTabbedFeed();
  sub_1A5249754();
  sub_1A524B514();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A5242CE4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeConformance2();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CCE038(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3F8C454(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1A3F8C454(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 60);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1A3CCE1BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3F8C454(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1A3F8C454(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 60);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1A3CCE340(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1A3F8C454(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 52);

    return v10(v11, a2, v9);
  }
}

void *sub_1A3CCE420(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A3F8C454(0, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 52);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A3CCE4F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCE540()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3CCE580()
{
  sub_1A3F88488();
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  sub_1A5249F54();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1A524B9D4();
  swift_getWitnessTable();
  sub_1A3F87E74(&qword_1EB127710, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CCE900()
{
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getAssociatedTypeWitness();
  v0 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v0);
  swift_getWitnessTable();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A3F88B18();
  type metadata accessor for LemonadeSectionedFeedTabBar();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A3F88C24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3CCEDB8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v2);
  v3 = (sub_1A5248804() - 8);
  v4 = v0 + ((*(*v3 + 80) + 40) & ~*(*v3 + 80));
  (*(*(AssociatedTypeWitness - 8) + 8))(v4, AssociatedTypeWitness);

  v5 = v4 + v3[11];

  if (*(v5 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(v5 + 8);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CCEF5C()
{
  v1 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  v7 = swift_getAssociatedTypeWitness();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);

  v8 = v0 + v2 + v1[13];
  sub_1A3D35A84(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
  sub_1A3DD15BC(*(v6 + v1[14]), *(v6 + v1[14] + 8));
  v9 = v1[15];
  sub_1A3F88AE4(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A52440D4();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v12 + v5) & ~v5), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3CCF268()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CCF2A0()
{
  v1 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v2, AssociatedTypeWitness);

  v4 = v2 + v1[13];
  sub_1A3D35A84(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  sub_1A3DD15BC(*(v2 + v1[14]), *(v2 + v1[14] + 8));
  v5 = v1[15];
  sub_1A3F88AE4(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52440D4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3CCF4C4(uint64_t a1, uint64_t a2)
{
  sub_1A3F8C15C(0, &qword_1EB12F4A8, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3CCF544(uint64_t a1)
{
  sub_1A3F8C15C(0, &qword_1EB12F4A8, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CCF5BC()
{
  sub_1A3F8A394();
  swift_getAssociatedTypeWitness();
  v0 = MEMORY[0x1E69E6530];
  v1 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  v2 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v1);
  sub_1A5248804();
  sub_1A3E73A2C();
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F8AB08(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, v0);
  swift_getWitnessTable();
  sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v2);
  swift_getWitnessTable();
  sub_1A3F87E74(&qword_1EB128040, sub_1A3E73A2C);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3F8A464();
  sub_1A3F87E74(&qword_1EB12F478, sub_1A3F8A464);
  sub_1A3D5F9DC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1A5243DD4();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  sub_1A524B514();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CCF9AC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  sub_1A3F8BEF8();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1A524B9D4();
  sub_1A3F8BFFC();
  sub_1A5242084();
  sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC);
  sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3E754D0();
  swift_getWitnessTable();
  sub_1A5247D04();
  sub_1A5248804();
  sub_1A3F8C700();
  sub_1A5248804();
  sub_1A524B984();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3F87E74(&qword_1EB1245F0, sub_1A3F8C700);
  swift_getWitnessTable();
  sub_1A3F87E74(&qword_1EB127310, MEMORY[0x1E6981998]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A3CCFF3C()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3CD0020()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CD0064(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      v13 = type metadata accessor for LemonadeFeedBodyStyle(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}