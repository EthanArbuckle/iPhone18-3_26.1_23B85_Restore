void sub_1A48F6310(void *a1)
{
  v1 = a1;
  sub_1A48F6018(v1);
}

void sub_1A48F6358()
{
  v1 = MEMORY[0x1E69E7D40];
  v14.receiver = v0;
  v14.super_class = type metadata accessor for TransparentHostingController();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v2 = *(v0 + *((*v1 & *v0) + 0x78));
  if (v2)
  {
    v3 = v2;
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v3 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A48F6478(void *a1)
{
  v1 = a1;
  sub_1A48F6358();
}

id TransparentHostingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1A48F65C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1A48F6A5C();
}

id TransparentHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransparentHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A48F66A8(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
}

uint64_t sub_1A48F6780(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;

  v7 = sub_1A48F6D40(v6);

  return v7;
}

id sub_1A48F67E4(char a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40];
  v12 = *a3;
  *&v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x78)] = 0;
  *&v5[*((*v10 & *v5) + 0x80)] = 0;
  (*(*(*((v11 & v9) + 0x50) - 8) + 16))(&v5[*((*v10 & *v5) + 0x60)], a5, *((v11 & v9) + 0x50));
  v5[*((*v10 & *v5) + 0x68)] = a1;
  v5[*((*v10 & *v5) + 0x70)] = a2;
  *&v5[*((*v10 & *v5) + 0x88)] = v12;
  *&v5[*((*v10 & *v5) + 0x90)] = a4;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for TransparentHostingController();
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A48F69A0()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x78)) = 0;
  *(v0 + *((*v1 & *v0) + 0x80)) = 0;
  sub_1A524E6E4();
  __break(1u);
}

unint64_t sub_1A48F6A90()
{
  result = qword_1EB144D10;
  if (!qword_1EB144D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144D10);
  }

  return result;
}

unint64_t sub_1A48F6AE8()
{
  result = qword_1EB144D18;
  if (!qword_1EB144D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144D18);
  }

  return result;
}

unint64_t sub_1A48F6B40()
{
  result = qword_1EB12A5C8;
  if (!qword_1EB12A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5C8);
  }

  return result;
}

unint64_t sub_1A48F6B98()
{
  result = qword_1EB12A5C0;
  if (!qword_1EB12A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5C0);
  }

  return result;
}

uint64_t sub_1A48F6BFC()
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

uint64_t sub_1A48F6D40(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *Strong;
  v5 = *(Strong + *(v4 + 0x78));
  if (!v5 || (sub_1A441CDE8(), v6 = v5, v7 = a1, v8 = sub_1A524DBF4(), v7, v6, v4 = *v3 & *Strong, (v8 & 1) == 0))
  {
    v10 = *(Strong + *(v4 + 136));
    if (v10)
    {
      v11 = [a1 isUserInteractionEnabled];
      if ((v10 & 2) == 0)
      {
        if (v11)
        {
LABEL_14:
          v9 = 0;
          goto LABEL_16;
        }

LABEL_15:
        v9 = 2;
        goto LABEL_16;
      }

      if (!v11)
      {
        goto LABEL_15;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_14;
    }

    [a1 alpha];
    if (v12 > 0.0)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (*(Strong + *((*v3 & *Strong) + 0x68)))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

LABEL_16:

  return v9;
}

void sub_1A48F6EE0()
{
  v1 = v0;
  sub_1A42D6224(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SharedAlbumCreationView();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48[1] = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48[3] = v48 - v8;
  v9 = type metadata accessor for SharedCollectionActionView();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48[0] = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48[2] = v48 - v12;
  sub_1A48F7B90(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v48 - v17;
  v19 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v25 = v48 - v24;
  v26 = [v0 assetCollection];
  v27 = [v26 px_isSharedAlbum];

  if (v27)
  {
    v28 = [v0 &selRef_alreadyCollected];
    v29 = [v28 px_isCloudKitSharedAlbum];

    if (v29)
    {
      swift_storeEnumTagMultiPayload();
      v30 = type metadata accessor for LemonadeDetailsContext();
      (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
      v31 = [v0 &selRef_alreadyCollected];
      v32 = [v31 photoLibrary];

      if (v32)
      {
        type metadata accessor for LemonadeNavigationContext(0);
        type metadata accessor for LemonadePhotoLibraryContext();
        v33 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v32, 0, 0);
        j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v49);
        v34 = sub_1A3C799F0(v25, 0, 0, 0, v18, &v49, v33, 2);
        type metadata accessor for SharedCollectionActionViewModel();

        v35 = [v1 &selRef_alreadyCollected];
        SharedCollectionActionViewModel.__allocating_init(navigationContext:extensionContext:sharedCollection:sharedCollections:assets:mediaSources:albumName:batchComment:perAssetCreationOptions:updateCallback:doneCallback:)(v34, 0, v35, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      }

      __break(1u);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v40 = type metadata accessor for LemonadeDetailsContext();
      (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
      v41 = [v0 &selRef_alreadyCollected];
      v42 = [v41 photoLibrary];

      if (v42)
      {
        type metadata accessor for LemonadeNavigationContext(0);
        type metadata accessor for LemonadePhotoLibraryContext();
        v43 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v42, 0, 0);
        j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v50);
        v44 = sub_1A3C799F0(v21, 0, 0, 0, v15, &v50, v43, 2);
        type metadata accessor for SharedAlbumActionViewModel();

        v45 = [v1 &selRef_alreadyCollected];
        v46 = sub_1A3C30368();
        SharedAlbumActionViewModel.__allocating_init(navigationContext:extensionContext:sharedAlbum:sharedAlbums:assets:mediaSources:collectionShareAssetSources:albumName:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:clientAlreadyHasSensitivityProtectionLogic:updateCallback:doneCallback:)(v44, 0, v45, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, v46 & 1, 0, 0, 0, 0);
      }
    }

    __break(1u);
  }

  else
  {
    sub_1A48F7BE4(0, &qword_1EB137738, type metadata accessor for LemonadeCollectionCustomizationViewModel);
    sub_1A42D6244();
    v52 = LemonadeCollectionCustomizationAlbumsModel.__allocating_init(collection:)([v0 &selRef_alreadyCollected]);
    v51 = 1;
    v36 = sub_1A4407D6C(&v52, &v51, 0, 0);
    sub_1A42D6348();
    v37 = v36;
    sub_1A478C8F8(v37, v4);
    v38 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v4);

    v39 = v38;
    [v39 setModalPresentationStyle_];
    v47 = [v1 presentViewController_];

    [v1 completeUserInteractionTaskWithSuccess:v47 error:0];
  }
}

id sub_1A48F7AA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotoKitAssetCollectionCustomizeActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A48F7ADC(void *a1)
{
  v1 = [a1 assetCollection];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v2;
  if (v2)
  {
    if ([v2 assetCollectionType] == 4)
    {
      v3 = 0;
    }

    else if ([v3 px_isSharedAlbum])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v3 canPerformEditOperation_];
    }
  }

  swift_unknownObjectRelease();
  return v3;
}

void sub_1A48F7B90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A48F7BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A42D6244();
    v7 = v6;
    v8 = sub_1A48F7C80(&qword_1EB137730, sub_1A42D6244);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A48F7C80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A48F7CC8()
{
  if (!qword_1EB144D80)
  {
    type metadata accessor for SharedCollectionActionView();
    sub_1A48F7C80(&qword_1EB12BF68, type metadata accessor for SharedCollectionActionView);
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144D80);
    }
  }
}

uint64_t sub_1A48F7D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A48F7DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A48F7E24(void *a1)
{
  [objc_msgSend(a1 assetCollection)];
  swift_unknownObjectRelease();
  v1 = sub_1A524C634();
  v2 = PXLocalizedString(v1);

  v3 = sub_1A524C674();
  return v3;
}

void sub_1A48F7EE4()
{
  v0 = sub_1A5243834();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A48F7B90(0, &unk_1EB129180, MEMORY[0x1E69C2060]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A5245BA4();
}

unint64_t sub_1A48F8634()
{
  result = qword_1EB1DF820;
  if (!qword_1EB1DF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1DF820);
  }

  return result;
}

unint64_t sub_1A48F86F0()
{
  result = qword_1EB1DF828[0];
  if (!qword_1EB1DF828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DF828);
  }

  return result;
}

uint64_t sub_1A48F8774(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1A3C34460(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

void sub_1A48F87CC(void *a1)
{
  v18 = [a1 view];
  [a1 translationInView_];
  v4 = v3;
  v6 = v5;
  [a1 velocityInView_];
  v8 = v7;
  v10 = v9;
  v11 = [a1 state];
  if (v11 > 3)
  {
    v14 = 0;
    if (v11 == 4)
    {
      goto LABEL_10;
    }

    if (v11 == 5)
    {
      v15 = v1[7];
      if (v15)
      {
LABEL_11:
        v15(v14);
      }
    }
  }

  else
  {
    if ((v11 - 1) < 2)
    {
      v12 = v1[5];
      v13 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
      (*(v13 + 8))(v12, v13, v4, v6, v8, v10);
      goto LABEL_12;
    }

    if (v11 == 3)
    {
      v14 = v10 < 0.0;
LABEL_10:
      v16 = v1[5];
      v17 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
      (*(v17 + 16))(v14, v16, v17, v4, v6, v8, v10);
      v15 = v1[7];
      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
}

uint64_t sub_1A48F8978()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  sub_1A3C784D4(*(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1A48F89FC(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1A48F8AAC;

  return sub_1A48FBB2C();
}

uint64_t sub_1A48F8AAC(uint64_t a1)
{
  v3 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  v5 = sub_1A524CBC4();
  v3[8] = v5;
  v3[9] = v4;
  if (v1)
  {
    v6 = sub_1A47CA4A4;
  }

  else
  {
    v6 = sub_1A48F8C10;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1A48F8C10()
{
  v1 = v0[7];
  UIViewController.mainScrollView.getter();
  v0[10] = v2;
  if (v1)
  {
    v3 = v0[6];
  }

  else
  {
    v6 = v2;
    v7 = [v6 window];
    v0[11] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = [v6 superview];
      v0[12] = v9;
      if (v9)
      {
        [v6 safeAreaInsets];
        sub_1A524D1E4();
      }

      v3 = v0[6];

      sub_1A48FC284();
      swift_allocError();
      *v11 = 1;
      swift_willThrow();
    }

    else
    {
      v3 = v0[6];

      sub_1A48FC284();
      swift_allocError();
      *v10 = 1;
      swift_willThrow();
    }
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A48F8FC4()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 216) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9EC0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F90EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F90EC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v10 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_1A48F91F0;
  v4.n128_u64[0] = *(v0 + 120);
  v5.n128_u64[0] = *(v0 + 128);
  v6.n128_u64[0] = *(v0 + 104);
  v7.n128_u64[0] = *(v0 + 112);
  v8 = *(v0 + 88);

  return v10(1, v8, v6, v7, v4, v5);
}

uint64_t sub_1A48F91F0()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 216) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9EC0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9318;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F9318()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v10 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_1A48F941C;
  v4.n128_u64[0] = *(v0 + 120);
  v5.n128_u64[0] = *(v0 + 128);
  v6.n128_u64[0] = *(v0 + 104);
  v7.n128_u64[0] = *(v0 + 112);
  v8 = *(v0 + 88);

  return v10(1, v8, v6, v7, v4, v5);
}

uint64_t sub_1A48F941C()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 216) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9EC0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9544;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F9544()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v10 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_1A48F9648;
  v4.n128_u64[0] = *(v0 + 120);
  v5.n128_u64[0] = *(v0 + 128);
  v6.n128_u64[0] = *(v0 + 104);
  v7.n128_u64[0] = *(v0 + 112);
  v8 = *(v0 + 88);

  return (v10)(0, v8, v6, v7, v4, v5);
}

uint64_t sub_1A48F9648()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 224) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9F50;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9770;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F9770()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v10 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_1A48F9874;
  v4.n128_u64[0] = *(v0 + 120);
  v5.n128_u64[0] = *(v0 + 128);
  v6.n128_u64[0] = *(v0 + 104);
  v7.n128_u64[0] = *(v0 + 112);
  v8 = *(v0 + 88);

  return (v10)(0, v8, v6, v7, v4, v5);
}

uint64_t sub_1A48F9874()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 224) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9F50;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F999C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F999C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v10 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_1A48F9AA0;
  v4.n128_u64[0] = *(v0 + 120);
  v5.n128_u64[0] = *(v0 + 128);
  v6.n128_u64[0] = *(v0 + 104);
  v7.n128_u64[0] = *(v0 + 112);
  v8 = *(v0 + 88);

  return (v10)(0, v8, v6, v7, v4, v5);
}

uint64_t sub_1A48F9AA0()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 224) = v0;
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9F50;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A48F9BC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48F9BC8()
{
  v4 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x70) + **((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x70));
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_1A48F9CF8;
  v2 = *(v0 + 80);

  return v4(v2);
}

uint64_t sub_1A48F9CF8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1A48F9FE0;
  }

  else
  {
    v5 = sub_1A48F9E34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A48F9E34()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A48F9EC0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A48F9F50()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A48F9FE0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A48FA068()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A48F89FC(v2);
}

uint64_t sub_1A48FA13C(uint64_t a1)
{
  v1[2] = a1;
  sub_1A524CC54();
  v1[3] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A48FA1D4, v3, v2);
}

uint64_t sub_1A48FA1D4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x98))();
  v3 = sub_1A3C52C70(0, &qword_1EB144D90);
  v4 = UIViewController.descendant<A>(ofType:)(v3, v3);
  *(v0 + 48) = v4;

  v7 = sub_1A46E5F3C();
  *(v0 + 56) = v7;
  if (v7)
  {
    v8 = v7;
    v9 = *(v0 + 16);
    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    v10[2] = v8;
    v10[3] = v4;
    v10[4] = v9;
    v11 = *((*v1 & *v9) + 0x80);
    v14 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    *v12 = v0;
    v12[1] = sub_1A48FA45C;

    return (v14)(4, 0, &unk_1A5373188, v10);
  }

  else
  {

    sub_1A48FC284();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1A48FA45C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A48FA5EC;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A48FA578;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48FA578()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A48FA5EC()
{
  v1 = v0[7];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A48FA670()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A48FA13C(v2);
}

uint64_t sub_1A48FA704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  sub_1A524CC54();
  v3[28] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[29] = v5;
  v3[30] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A48FA7A0, v5, v4);
}

uint64_t sub_1A48FA7A0()
{
  v1 = *(v0 + 208);
  v2 = [objc_allocWithZone(PXProgrammaticNavigationDestination) initWithType:7 revealMode:1 asset:objc_msgSend(*(v0 + 200) assetCollection:{sel_asset), objc_msgSend(*(v0 + 200), sel_assetCollection)}];
  *(v0 + 248) = v2;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 184;
  *(v0 + 24) = sub_1A48FA940;
  v3 = swift_continuation_init();
  sub_1A43A6C50();
  *(v0 + 136) = v4;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A43A6168;
  *(v0 + 104) = &block_descriptor_300;
  *(v0 + 112) = v3;
  [v1 navigateToDestination:v2 options:2 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A48FA940()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_1A48FB6C4;
  }

  else
  {
    v5 = sub_1A48FAA70;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A48FAA70()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 216)) + 0x98))();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = [v4 selectedViewController];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8 && (v9 = v8, (v10 = [v8 topViewController]) != 0))
      {
        v11 = v10;
        *(v0 + 176) = swift_getObjectType();
        sub_1A48FC584();
        if (sub_1A524C714() == 0xD000000000000015 && 0x80000001A53F25C0 == v12)
        {

LABEL_16:

LABEL_23:
          *(v0 + 264) = v9;
          goto LABEL_24;
        }

        v21 = sub_1A524EAB4();

        if (v21)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v5;
    }
  }

  v13 = [v2 presentedViewController];
  if (v13)
  {
    v14 = v13;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v9 = v15;
      v16 = [v15 topViewController];
      if (v16)
      {
        v11 = v16;
        *(v0 + 168) = swift_getObjectType();
        sub_1A48FC584();
        if (sub_1A524C714() == 0xD000000000000015 && 0x80000001A53F25C0 == v17)
        {
          goto LABEL_16;
        }

        v18 = sub_1A524EAB4();

        if (v18)
        {
          goto LABEL_23;
        }
      }
    }
  }

  sub_1A48FC284();
  v9 = swift_allocError();
  *v19 = 0;
  swift_willThrow();
  if (!v9)
  {
LABEL_24:

    sub_1A48FC380(v9);
    v24 = *((*v1 & **(v0 + 216)) + 0xA0);
    v27 = (*v1 & **(v0 + 216)) + 160;
    *(v0 + 272) = v24;
    *(v0 + 280) = v27 & 0xFFFFFFFFFFFFLL | 0xA51D000000000000;
    v28 = (v24 + *v24);
    v25 = swift_task_alloc();
    *(v0 + 288) = v25;
    *v25 = v0;
    v25[1] = sub_1A48FAEC0;
    v26.n128_u64[0] = 1.0;

    return v28(v26);
  }

  v20 = *(v0 + 248);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1A48FAEC0()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_1A48FB73C;
  }

  else
  {
    v5 = sub_1A48FAFFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A48FAFFC()
{
  v1 = *(v0 + 296);
  sub_1A48FC380(*(v0 + 264));
  v2 = *(v0 + 264);
  if (v1)
  {
    v3 = *(v0 + 248);

LABEL_11:

    v16 = *(v0 + 8);

    return v16();
  }

  v4 = [*(v0 + 264) topViewController];
  if (!v4)
  {
LABEL_10:

    v2 = *(v0 + 264);
    v3 = *(v0 + 248);
    sub_1A48FC284();
    swift_allocError();
    *v15 = 4;
    swift_willThrow();
    goto LABEL_11;
  }

  v5 = v4;
  *(v0 + 192) = &unk_1F1B457E0;
  v6 = swift_dynamicCastObjCProtocolConditional();
  if (!v6)
  {

    goto LABEL_10;
  }

  v7 = *(v0 + 264);
  v8 = *(v0 + 216);
  v9 = [v6 originTransitionType];

  v10 = swift_allocObject();
  *(v0 + 304) = v10;
  *(v10 + 16) = 0;
  v11 = swift_task_alloc();
  *(v0 + 312) = v11;
  v11[2] = v9;
  v11[3] = v7;
  v11[4] = v10;
  v12 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x88);
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v0 + 320) = v13;
  *v13 = v0;
  v13[1] = sub_1A48FB2AC;

  return (v17)(0x79636E6574614CLL, 0xE700000000000000, &unk_1A5373198, v11);
}

uint64_t sub_1A48FB2AC()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {
    v3 = v2[29];
    v4 = v2[30];

    return MEMORY[0x1EEE6DFA0](sub_1A48FB7B0, v3, v4);
  }

  else
  {
    v5 = v2[34];

    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    v2[42] = v6;
    *v6 = v2;
    v6[1] = sub_1A48FB484;
    v7.n128_u64[0] = 1.0;

    return v9(v7);
  }
}

uint64_t sub_1A48FB484()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_1A48FB840;
  }

  else
  {
    v5 = sub_1A48FB5C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A48FB5C0()
{
  v1 = v0[38];

  swift_beginAccess();
  v2 = v0[33];
  v3 = v0[31];
  if (*(v1 + 16) != 1)
  {
    sub_1A48FC284();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A48FB6C4()
{
  v1 = *(v0 + 248);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A48FB73C()
{
  v1 = v0[33];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A48FB7B0()
{
  v1 = v0[33];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A48FB840()
{
  v1 = v0[33];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A48FB8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  sub_1A524CC54();
  v3[11] = sub_1A524CC44();
  v5 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A48FB964, v5, v4);
}

uint64_t sub_1A48FB964()
{
  v1 = *(v0 + 64);

  if (v1 == 1)
  {
    v5 = *(v0 + 80);
    v6 = [*(v0 + 72) popViewControllerAnimated_];

    swift_beginAccess();
    *(v5 + 16) = v6 != 0;
    goto LABEL_5;
  }

  if (v1 == 2)
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    *(v0 + 48) = sub_1A48FC52C;
    *(v0 + 56) = v2;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1A3C2E0D0;
    *(v0 + 40) = &block_descriptor_38_1;
    v4 = _Block_copy((v0 + 16));

    [v3 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
LABEL_5:
    v7 = *(v0 + 8);
    goto LABEL_7;
  }

  sub_1A48FC284();
  swift_allocError();
  *v8 = 5;
  swift_willThrow();
  v7 = *(v0 + 8);
LABEL_7:

  return v7();
}

uint64_t sub_1A48FBB2C()
{
  v1[2] = v0;
  sub_1A3EE53E0(0);
  v1[3] = swift_task_alloc();
  sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A48FBBF0, v3, v2);
}

uint64_t sub_1A48FBBF0()
{
  v1 = v0[3];
  sub_1A5240E34();
  v2 = sub_1A5240E64();
  v0[7] = v2;
  v3 = *(v2 - 8);
  v0[8] = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    v6 = sub_1A3C6E9EC();
    v7 = sub_1A3C5A374();
    v8 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_1A48FBDC0;
    v10 = v0[3];

    return (v11)(v10, v6, v7 & 1);
  }

  return result;
}

uint64_t sub_1A48FBDC0(void *a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1A48FC034;
  }

  else
  {
    v8 = v4[7];
    v9 = v4[8];
    v10 = v4[3];

    (*(v9 + 8))(v10, v8);
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1A48FBF0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A48FBF0C()
{
  v1 = v0[10];
  v2 = v0[2];

  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x98))(v3);
  if (v1)
  {

    v8 = v0[1];

    return v8();
  }

  else
  {
    v5 = v4;
    v6 = sub_1A3C52C70(0, &qword_1EB144D90);
    v7 = UIViewController.descendant<A>(ofType:)(v6, v6);

    v10 = v0[1];

    return v10(v7);
  }
}

uint64_t sub_1A48FC034()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[3];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

id sub_1A48FC0C4(uint64_t a1)
{
  v3 = type metadata accessor for PhotosPPTTestRunner();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_1A3DE0CA0(a1, v5);
  v7 = sub_1A3FA4E54(v5);
  sub_1A3DE0D04(a1);
  return v7;
}

id sub_1A48FC164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeAllPhotosPPTTests();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LemonadeAllPhotosPPTTests()
{
  result = qword_1EB1DF930;
  if (!qword_1EB1DF930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A48FC1F0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A48F89FC(v2);
}

unint64_t sub_1A48FC284()
{
  result = qword_1EB1DF940;
  if (!qword_1EB1DF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1DF940);
  }

  return result;
}

uint64_t sub_1A48FC2D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A48FA704(v2, v3, v4);
}

void sub_1A48FC380(void *a1)
{
  v1 = [a1 topViewController];
  if (!v1)
  {
    goto LABEL_7;
  }

  swift_getObjectType();
  sub_1A48FC584();
  if (sub_1A524C714() == 0xD000000000000015 && 0x80000001A53F25C0 == v2)
  {

    return;
  }

  v3 = sub_1A524EAB4();

  if (v3)
  {
  }

  else
  {
LABEL_7:
    sub_1A48FC284();
    swift_allocError();
    *v4 = v1;
    swift_willThrow();
  }
}

uint64_t sub_1A48FC484()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A48FB8C8(v2, v3, v4);
}

uint64_t sub_1A48FC52C()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

uint64_t block_copy_helper_36_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A48FC584()
{
  result = qword_1EB144D98;
  if (!qword_1EB144D98)
  {
    sub_1A3C52C70(255, &qword_1EB126B10);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB144D98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore011LemonadeAllA8PPTTestsC5Error33_433FA65461314A07739F517E4E3C9BEFLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A48FC600(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 6)
  {
    return (v3 - 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A48FC660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void sub_1A48FC6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  v17 = sub_1A45C1604();
  v18 = swift_beginAccess();
  if (*v17 == 1)
  {
    v19 = MEMORY[0x1E69E7D40];
    v20 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))(v18);
    if (v20)
    {

      return;
    }

    (*((*v19 & *v3) + 0x60))();
    if (v21)
    {
      goto LABEL_5;
    }

    v22 = sub_1A45C1040();
    swift_beginAccess();
    v23 = *v22;
    if (v23)
    {
      v24 = sub_1A5247414();
      if (!*(v23 + 16))
      {
LABEL_5:

        return;
      }

      v65 = a3;
      v64 = sub_1A3C5DCA4(v24, v25);
      v27 = v26;

      if (v27)
      {
        v28 = *(*(v23 + 56) + 8 * v64);
        if ([swift_unknownObjectRetain() respondsToSelector_] && (sub_1A5247414(), v29 = sub_1A524C634(), , v30 = objc_msgSend(v28, sel_presentationControllerForTipID_, v29), v29, (v64 = v30) != 0))
        {
          if ([v28 respondsToSelector_])
          {
            sub_1A5247414();
            v31 = sub_1A524C634();

            v32 = [v28 sourceItemForTipID_];

            v33 = v65;
            if (v32)
            {
              v63 = v28;
              sub_1A52474D4();
              v67 = a2;
              v68 = v33;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
              v35 = *(v8 + 16);
              v35(boxed_opaque_existential_1, a1, a2);
              swift_unknownObjectRetain();
              v36 = sub_1A52474E4();
              v37 = sub_1A5249A14();
              v67 = MEMORY[0x1E697FE80];
              v68 = MEMORY[0x1E697FE70];
              LODWORD(v66[0]) = v37;
              sub_1A52474B4();
              swift_unknownObjectRetain();
              sub_1A52474C4();
              v38 = sub_1A52474A4();
              if (v38)
              {
                v39 = v38;
                v62 = v32;
                v40 = v63;
                if ([v63 respondsToSelector_])
                {
                  sub_1A5247414();
                  v41 = sub_1A524C634();

                  [v40 prepareTipPopover:v39 tipID:v41];
                }

                v42 = [v39 barButtonItem];
                v43 = v64;
                v44 = MEMORY[0x1E69E7D40];
                if (v42)
                {

                  v45 = [v43 navigationController];
                  if (!v45)
                  {
                    swift_unknownObjectRelease();

                    swift_unknownObjectRelease();
                    return;
                  }
                }

                v61 = v39;
                v46 = v36;
                [v43 presentViewController:v46 animated:1 completion:0];
                (*((*v44 & *v4) + 0x80))(v46);
                v47 = sub_1A5247414();
                (*((*v44 & *v4) + 0x68))(v47);
                if ([v40 respondsToSelector_])
                {
                  swift_unknownObjectRetain();
                  sub_1A5247414();
                  v48 = sub_1A524C634();

                  [v40 tipPopoverDidPresentWithTipID_];

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease_n();
                }

                else
                {

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                }

                return;
              }

              v57 = sub_1A524D244();
              v58 = PLTipsGetLog();
              if (v58)
              {
                v59 = v58;
                v35(v16, a1, a2);
                if (os_log_type_enabled(v59, v57))
                {
                  v60 = swift_slowAlloc();
                  v66[0] = swift_slowAlloc();
                  *v60 = 136315138;
                  sub_1A5247414();
                  v62 = v32;
                  (*(v8 + 8))(v16, a2);
                  sub_1A3C2EF94();
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                (*(v8 + 8))(v16, a2);
                return;
              }

LABEL_39:
              __break(1u);
              return;
            }
          }

          v53 = sub_1A524D244();
          v54 = PLTipsGetLog();
          if (v54)
          {
            v55 = v54;
            (*(v8 + 16))(v13, a1, a2);
            if (os_log_type_enabled(v55, v53))
            {
              v56 = swift_slowAlloc();
              v66[0] = swift_slowAlloc();
              *v56 = 136315138;
              sub_1A5247414();
              (*(v8 + 8))(v13, a2);
              sub_1A3C2EF94();
            }

            swift_unknownObjectRelease();
            (*(v8 + 8))(v13, a2);
            return;
          }
        }

        else
        {
          v49 = sub_1A524D244();
          v50 = PLTipsGetLog();
          if (v50)
          {
            v51 = v50;
            (*(v8 + 16))(v10, a1, a2);
            if (os_log_type_enabled(v51, v49))
            {
              v52 = swift_slowAlloc();
              v66[0] = swift_slowAlloc();
              *v52 = 136315138;
              sub_1A5247414();
              (*(v8 + 8))(v10, a2);
              sub_1A3C2EF94();
            }

            swift_unknownObjectRelease();
            (*(v8 + 8))(v10, a2);
            return;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_39;
      }
    }
  }
}

void sub_1A48FD084(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))();
  if (v10)
  {
    v23 = v10;
    v11 = (*((*v9 & *v3) + 0x60))();
    v13 = v12;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_1A5247414();
    if (v13)
    {
      if (v11 == v14 && v13 == v15)
      {
      }

      else
      {
        v17 = sub_1A524EAB4();

        if ((v17 & 1) == 0)
        {
          if (!a2)
          {
LABEL_10:

            return;
          }

LABEL_9:
          a2(v18);
          goto LABEL_10;
        }
      }

      sub_1A3C341C8(a1, v25);
      v20 = swift_allocObject();
      sub_1A3C34460(v25, (v20 + 2));
      v20[7] = v4;
      v20[8] = a2;
      v20[9] = a3;
      v20[10] = ObjectType;
      aBlock[4] = sub_1A48FD5B0;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_301;
      v21 = _Block_copy(aBlock);
      v22 = v4;
      sub_1A3D607F0(a2);

      [v23 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);

      return;
    }

    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v19 = (*((*v9 & *v3) + 0x68))(0, 0);
  if (a2)
  {
    a2(v19);
  }
}

Swift::Void __swiftcall PXTipsHelper.updatePopoverTip(_:sourceRect:)(Swift::String _, __C::CGRect sourceRect)
{
  height = sourceRect.size.height;
  width = sourceRect.size.width;
  y = sourceRect.origin.y;
  x = sourceRect.origin.x;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))();
  if (v11)
  {
    if (v10 == countAndFlagsBits && v11 == object)
    {
    }

    else
    {
      v13 = sub_1A524EAB4();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v15 = (*((*v9 & *v2) + 0x78))(v14);
    v16 = [v15 popoverPresentationController];

    [v16 setSourceRect_];
  }
}

uint64_t sub_1A48FD5B0()
{
  v1 = v0;
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = sub_1A45C1040();
  v5 = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v7 = sub_1A5247414();
    if (*(v6 + 16))
    {
      v9 = sub_1A3C5DCA4(v7, v8);
      v11 = v10;

      if (v11)
      {
        v12 = *(*(v6 + 56) + 8 * v9);
        v5 = [v12 respondsToSelector_];
        if (v5)
        {
          swift_unknownObjectRetain_n();
          sub_1A5247414();
          v13 = sub_1A524C634();

          [v12 tipPopoverDidDismissWithTipID_];

          v5 = swift_unknownObjectRelease_n();
        }
      }
    }

    else
    {
    }
  }

  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x60))(v5);
  v17 = v16;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v18 = sub_1A5247414();
  if (!v17)
  {

    goto LABEL_15;
  }

  if (v15 == v18 && v17 == v19)
  {

    goto LABEL_19;
  }

  v21 = sub_1A524EAB4();

  if ((v21 & 1) == 0)
  {
LABEL_15:
    if (!v2)
    {
      return result;
    }

    return v2(result);
  }

LABEL_19:
  (*((*v14 & *v3) + 0x80))(0);
  result = (*((*v14 & *v3) + 0x68))(0, 0);
  if (!v2)
  {
    return result;
  }

  return v2(result);
}

void _s12PhotosUICore12PXTipsHelperC32presentationControllerDidDismissyySo014UIPresentationF0CF_0()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = sub_1A45C1040();
    swift_beginAccess();
    v6 = *v5;
    if (v6 && *(v6 + 16) && (v7 = sub_1A3C5DCA4(v3, v4), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), ([v9 respondsToSelector_] & 1) != 0))
    {
      swift_unknownObjectRetain_n();
      v10 = sub_1A524C634();

      [v9 tipPopoverDidDismissWithTipID_];
      swift_unknownObjectRelease_n();
    }

    else
    {
    }
  }
}

uint64_t sub_1A48FD948()
{
  v1 = v0 + qword_1EB144E10;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A48FD994(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + qword_1EB144E10;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1A48FDA58()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x878))(KeyPath);

  v3 = v0 + qword_1EB144E10;
  swift_beginAccess();
  return *v3;
}

uint64_t sub_1A48FDB30@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1A48FDC08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A490DF80(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = v4 + qword_1EB144E10;
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
    (*((*v8 & *v4) + 0x880))(v13);
  }

  return result;
}

void (*sub_1A48FDE1C(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FD9F8();
  return sub_1A48FDFD4;
}

uint64_t sub_1A48FE01C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3B8))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 localIdentifier];

  v4 = sub_1A524C674();
  return v4;
}

uint64_t sub_1A48FE15C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A48FE268(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FE0E8();
  return sub_1A48FE420;
}

uint64_t sub_1A48FE42C()
{
  v1 = qword_1EB144E20;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A48FE470(char a1)
{
  v3 = qword_1EB144E20;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A48FE534@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x208))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A48FE624(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FE4C0();
  return sub_1A48FE7DC;
}

uint64_t sub_1A48FE87C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x238))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A48FE988(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FE808();
  return sub_1A48FEB40;
}

uint64_t sub_1A48FEB4C()
{
  v1 = qword_1EB144E30;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A48FEB90(char a1)
{
  v3 = qword_1EB144E30;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A48FEC54@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x268))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A48FED44(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FEBE0();
  return sub_1A48FEEFC;
}

uint64_t sub_1A48FEF88()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x878))(KeyPath);

  v3 = (v0 + qword_1EB144E38);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

uint64_t sub_1A48FF06C@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x298))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1A3DDBE10;
  a2[1] = result;
  return result;
}

uint64_t sub_1A48FF108(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2A0);

  return v6(sub_1A3E30F88, v5);
}

uint64_t sub_1A48FF1C8(uint64_t a1, uint64_t a2)
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
  (*((*v6 & *v2) + 0x880))(KeyPath, sub_1A490D680, &v10, MEMORY[0x1E69E7CA8] + 8);
}

void (*sub_1A48FF2DC(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FEF28();
  return sub_1A48FF494;
}

uint64_t sub_1A48FF4A0()
{
  v1 = qword_1EB144E40;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A48FF4E4(char a1)
{
  v3 = qword_1EB144E40;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A48FF5A8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2C8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A48FF698(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FF534();
  return sub_1A48FF850;
}

uint64_t sub_1A48FF85C()
{
  v1 = qword_1EB144E48;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A48FF8A0(char a1)
{
  v3 = qword_1EB144E48;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A48FF964@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A48FFA54(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FF8F0();
  return sub_1A48FFC0C;
}

uint64_t sub_1A48FFC18@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EB144E50;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A48FFC6C(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB144E50;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void *sub_1A48FFD30@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x328))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A48FFDA4(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x330))(&v4);
}

uint64_t sub_1A48FFE14(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA5E8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144E50;
    result = swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x880))(v9);
  }

  return result;
}

void (*sub_1A48FFFC4(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A48FFCBC();
  return sub_1A490017C;
}

void sub_1A4900188(uint64_t a1)
{
  v3 = qword_1EB144E58;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A4900254@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x358))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49002B8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x360);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A4900350(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49001E0();
  return sub_1A4900508;
}

uint64_t sub_1A4900514(uint64_t a1)
{
  v3 = qword_1EB144E60;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A49005CC()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x878))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49006A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x388))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4900770(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3DC9268();
  sub_1A3DC92EC();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144E60;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x880))(v9);
  }
}

void (*sub_1A4900930(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A490056C();
  return sub_1A4900AE8;
}

void sub_1A4900AF4(uint64_t a1)
{
  v3 = qword_1EB144E68;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A4900BC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3B8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4900C24(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3C0);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A4900CBC(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4900B4C();
  return sub_1A4900E74;
}

uint64_t sub_1A4900E80()
{
  v1 = qword_1EB144E70;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4900EC4(char a1)
{
  v3 = qword_1EB144E70;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4900F88@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3E8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4901078(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4900F14();
  return sub_1A4901230;
}

uint64_t sub_1A490123C@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EB144E78;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A4901290(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB144E78;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A4901354@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  v5 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v2) + 0x878))(KeyPath);

  v7 = *a1;
  result = swift_beginAccess();
  *a2 = *(v2 + v7);
  return result;
}

void *sub_1A490142C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x418))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A49014A0(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x420))(&v4);
}

uint64_t sub_1A4901510(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA3F8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144E78;
    result = swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x880))(v9);
  }

  return result;
}

void (*sub_1A49016C0(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49012E0();
  return sub_1A4901878;
}

uint64_t sub_1A4901918@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x448))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A4901A24(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49018A4();
  return sub_1A4901BDC;
}

uint64_t sub_1A4901C68@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x478))();
  *a2 = result;
  return result;
}

void (*sub_1A4901D60(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4901BF4();
  return sub_1A4901F18;
}

uint64_t sub_1A4901FA4@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4A8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A490204C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4B0);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A490211C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB144E90);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3C7146C;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x880))(v14);
  sub_1A3C33378(a1);
}

void (*sub_1A490235C(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4901F30();
  return sub_1A4902514;
}

void sub_1A4902520(uint64_t a1)
{
  v3 = qword_1EB144E98;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A49025EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4D8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4902650(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4E0);
  v4 = *a1;
  return v3(v2);
}

void sub_1A49026E8(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3ECD7F0(0, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
  sub_1A3EBA4B8();
  v7 = sub_1A524C594();
  if (v7)
  {
    v8 = *a2;
    swift_beginAccess();
    v9 = *(v4 + v8);
    *(v4 + v8) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v6 & *v2) + 0x880))(v11);
  }
}

void (*sub_1A49028CC(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4902578();
  return sub_1A4902A84;
}

void sub_1A4902A90()
{
  v1 = v0;
  v2 = sub_1A52404F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x508);
  v27[1] = v8(v4);
  v27[2] = v9;
  sub_1A52404C4();
  sub_1A3D5F9DC();
  v10 = sub_1A524DFB4();
  v12 = v11;
  (*(v3 + 8))(v6, v2);

  v13 = (v1 + qword_1EB144EA0);
  swift_beginAccess();
  *v13 = v10;
  v13[1] = v12;

  v15 = (*((*v7 & *v1) + 0x7D8))(v14);
  v16 = (v8)();
  (*((*v7 & *v15) + 0x280))(v16);

  v17 = (*((*v7 & *v1) + 0x3B8))();
  if (v17)
  {
    v18 = v17;
    v19 = (v8)();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v18 = v18;
      sub_1A4909FD8(v18);
    }
  }

  else
  {
    v23 = (v8)();
    v25 = v24;

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    (*((*v7 & *v1) + 0x728))(v26 != 0);
  }
}

void sub_1A4902DCC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB144EA0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_1A4902A90();
}

uint64_t (*sub_1A4902E30(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4902E94;
}

uint64_t sub_1A4902EC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x508))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A4902FA4(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v6 = sub_1A524C594();
  if (v6)
  {
    sub_1A4902DCC(a1, a2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v5 & *v2) + 0x880))(v8);
  }
}

void (*sub_1A4903158(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4902E30(v4);
  return sub_1A4903310;
}

uint64_t sub_1A490331C()
{
  v1 = qword_1EB144EA8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4903360(char a1)
{
  v3 = qword_1EB144EA8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4903424@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x538))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4903514(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49033B0();
  return sub_1A49036CC;
}

uint64_t sub_1A49036D8()
{
  v1 = qword_1EB144EB0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A490371C(char a1)
{
  v3 = qword_1EB144EB0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A49037E0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x568))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A49038D0(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A490376C();
  return sub_1A4903A88;
}

uint64_t sub_1A4903A94()
{
  v1 = qword_1EB144EB8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4903AD8(uint64_t a1)
{
  v3 = qword_1EB144EB8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4903B9C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x598))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4903C60(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for _PHPickerSourceType(0);
  sub_1A490D950(&qword_1EB12DB98, type metadata accessor for _PHPickerSourceType);
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144EB8;
    result = swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x880))(v9);
  }

  return result;
}

void (*sub_1A4903E40(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4903B28();
  return sub_1A4903FF8;
}

uint64_t sub_1A4904004()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x5C8))();
  (*((*v1 & *v0) + 0x858))();
}

uint64_t sub_1A49040BC(uint64_t a1)
{
  v3 = qword_1EB144EC0;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1A4904004();
}

uint64_t (*sub_1A4904118(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A490417C;
}

uint64_t sub_1A4904194(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1A49041EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5C8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49042BC(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A490DF80(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v4 = sub_1A524C594();
  if (v4)
  {
    return sub_1A49040BC(a1);
  }

  MEMORY[0x1EEE9AC00](v4);
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*v3 & *v1) + 0x880))(v7);
}

void (*sub_1A4904488(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4904118(v4);
  return sub_1A4904640;
}

uint64_t sub_1A49046CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5F8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A490479C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A490DF80(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144EC8;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x880))(v9);
  }
}

void (*sub_1A490498C(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4904658();
  return sub_1A4904B44;
}

uint64_t sub_1A4904B50()
{
  v1 = qword_1EB144ED0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4904B94(char a1)
{
  v3 = qword_1EB144ED0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4904C58@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x628))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4904D48(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4904BE4();
  return sub_1A4904F00;
}

uint64_t sub_1A4904F8C@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x658))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A4905034(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x660);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A4905104(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB144ED8);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x880))(v14);
  sub_1A3C33378(a1);
}

void (*sub_1A4905344(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4904F18();
  return sub_1A49054FC;
}

void sub_1A490559C()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x878))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4905678@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x688))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A4905784(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = (v3 + *a3);
    swift_beginAccess();
    *v9 = a1;
    v9[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v3) + 0x880))(v12);
  }
}

void (*sub_1A490594C(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4905528();
  return sub_1A4905B04;
}

void sub_1A4905B90()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x878))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4905C5C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6B8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4905D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v15 = *((v9 & v7) + 0x50);
  KeyPath = swift_getKeyPath();
  v13 = v4;
  v14 = a1;
  (*((*v8 & *v4) + 0x880))(KeyPath, a4, &v12, MEMORY[0x1E69E7CA8] + 8);
}

void (*sub_1A4905E58(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4905B1C();
  return sub_1A4906010;
}

uint64_t sub_1A490601C()
{
  v1 = qword_1EB144EF0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4906060(uint64_t a1)
{
  v3 = qword_1EB144EF0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4906124(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x878))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A49061EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6E8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49062B0(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB144EF0;
    result = swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x880))(v9);
  }

  return result;
}

void (*sub_1A490645C(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49060B0();
  return sub_1A4906614;
}

void sub_1A4906620()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x7D8))();
  (*((*v1 & *v0) + 0x3B8))(v2);
  sub_1A4909008();
}

uint64_t sub_1A4906704()
{
  v1 = qword_1EB144EF8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4906748(char a1)
{
  v3 = qword_1EB144EF8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A490680C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x720))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A49068FC(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4906798();
  return sub_1A4906AB4;
}

uint64_t sub_1A4906AC0()
{
  v1 = qword_1EB144F00;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4906B04(char a1)
{
  v3 = qword_1EB144F00;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4906BC8(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x878))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A4906C90@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x750))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4906D80(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v7 = a1 & 1;
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = *a2;
    result = swift_beginAccess();
    *(v4 + v9) = v7;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v6 & *v4) + 0x880))(v12);
  }

  return result;
}

void (*sub_1A4906F30(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4906B54();
  return sub_1A49070E8;
}

uint64_t sub_1A4907174(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x878))(KeyPath);

  v6 = (v2 + *a2);
  swift_beginAccess();
  v7 = *v6;
  sub_1A3C66EE8(*v6);
  return v7;
}

uint64_t sub_1A4907254@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x780))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A49072FC(uint64_t *a1, void **a2)
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

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x788);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A49073CC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB144F08);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x880))(v14);
  sub_1A3C33378(a1);
}

void (*sub_1A490760C(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4907100();
  return sub_1A49077C4;
}

uint64_t sub_1A49077D0()
{
  v1 = qword_1EB144E00;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4907814(char a1)
{
  v3 = qword_1EB144E00;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void (*sub_1A49078C4(char a1, uint64_t a2, uint64_t (*a3)(uint64_t, void)))(void)
{
  if (a1)
  {
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x728))(0);
    v7 = (*((*v5 & *v3) + 0x7D8))(v6);
    (*((*v5 & *v3) + 0x508))(v7);
    sub_1A4909008();
  }

  sub_1A490817C(1);
  result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x780))();
  if (result)
  {
    v9 = result;
    result();
    result = sub_1A3C33378(v9);
    if (a3)
    {
      return a3(1, 0);
    }
  }

  return result;
}

void sub_1A4907B08(uint64_t a1, void (*a2)(void, void))
{
  sub_1A490817C(0);
  if (a2)
  {
    a2(0, 0);
  }
}

void sub_1A4907B54(uint64_t a1)
{
  v3 = qword_1EB144F18;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1A4907C0C()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x878))(KeyPath);

  v3 = qword_1EB144F18;
  swift_beginAccess();
  v4 = *(v0 + v3);

  return v4;
}

uint64_t sub_1A4907CEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7D8))();
  *a2 = result;
  return result;
}

void sub_1A4907DBC(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = qword_1EB144F18;
  swift_beginAccess();
  v6 = *(v1 + v5);
  type metadata accessor for SharedCollectionActionViewModel();
  sub_1A490D950(&qword_1EB144E08, type metadata accessor for SharedCollectionActionViewModel);
  v13 = v6;
  v7 = sub_1A524C594();

  if (v7)
  {
    v9 = qword_1EB144F18;
    swift_beginAccess();
    v10 = *(v2 + v9);
    *(v2 + v9) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v2) + 0x880))(v12);
  }
}

void (*sub_1A4907FB8(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4907BAC();
  return sub_1A4908170;
}

void sub_1A490817C(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7D8))();
  (*((*v3 & *v4) + 0x550))(a1);
}

void sub_1A490824C(uint64_t a1)
{
  v3 = qword_1EB144F10;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1A4908318(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x878))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = v7;
  return v7;
}

uint64_t sub_1A49083E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x810))();
  *a2 = result;
  return result;
}

uint64_t sub_1A490844C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x818);
  v4 = *a1;
  return v3(v2);
}

void sub_1A49084E4(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A524DF24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v7 = sub_1A524C594();
  if (v7)
  {
    v8 = *a2;
    swift_beginAccess();
    v9 = *(v4 + v8);
    *(v4 + v8) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v6 & *v2) + 0x880))(v11);
  }
}

void (*sub_1A49086DC(uint64_t *a1))(void *a1)
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
  (*((*v5 & *v1) + 0x878))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A49082A4();
  return sub_1A4908894;
}

void sub_1A49088A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v1);
}

id sub_1A49089C8(void *a1, void *a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = &v2[qword_1EB144E10];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_1A3C38BD4();
  v8 = &v2[qword_1EB144E18];
  *v8 = v7;
  v8[1] = v9;
  v2[qword_1EB144E20] = 0;
  v10 = &v2[qword_1EB144E28];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v2[qword_1EB144E30] = 0;
  v11 = &v2[qword_1EB144E38];
  *v11 = PXDisplayCollectionDetailedCountsMake;
  v11[1] = 0;
  v2[qword_1EB144E40] = 0;
  v2[qword_1EB144E48] = 0;
  v2[qword_1EB144E50] = 0;
  *&v2[qword_1EB144E58] = 0;
  *&v2[qword_1EB144E60] = 0;
  *&v2[qword_1EB144E68] = 0;
  v2[qword_1EB144E70] = 1;
  v2[qword_1EB144E78] = 0;
  v12 = sub_1A3C38BD4();
  v13 = &v2[qword_1EB144E80];
  *v13 = v12;
  v13[1] = v14;
  v15 = MEMORY[0x1E69E7CC0];
  *&v2[qword_1EB144E88] = MEMORY[0x1E69E7CC0];
  v16 = &v2[qword_1EB144E90];
  *v16 = 0;
  v16[1] = 0;
  *&v2[qword_1EB144E98] = 0;
  v17 = &v2[qword_1EB144EA0];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v2[qword_1EB144EA8] = 0;
  v2[qword_1EB144EB0] = 0;
  *&v2[qword_1EB144EB8] = 0;
  *&v2[qword_1EB144EC0] = v15;
  *&v2[qword_1EB144EC8] = v15;
  v2[qword_1EB144ED0] = 1;
  v18 = &v2[qword_1EB144ED8];
  *v18 = PXDisplayCollectionDetailedCountsMake;
  v18[1] = 0;
  v19 = sub_1A3C38BD4();
  v20 = &v2[qword_1EB144EE0];
  *v20 = v19;
  v20[1] = v21;
  *&v2[qword_1EB144EE8] = v15;
  *&v2[qword_1EB144EF0] = 0;
  v2[qword_1EB144EF8] = 0;
  v2[qword_1EB144F00] = 0;
  v22 = &v2[qword_1EB144F08];
  *v22 = 0;
  v22[1] = 0;
  v2[qword_1EB144E00] = 0;
  *&v2[qword_1EB144F10] = 0;
  sub_1A5241604();
  *&v2[qword_1EB144F18] = a1;
  v33.receiver = v2;
  v33.super_class = type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  v23 = a1;
  v24 = objc_msgSendSuper2(&v33, sel_init);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v26 = *((*v5 & *v23) + 0x3D0);
  v27 = v24;
  v26(sub_1A490DFE4, v25);
  v28 = a2;
  sub_1A4900C94(a2);
  v29 = v28;
  sub_1A49084BC(a2);
  v30 = a2 == 0;
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  sub_1A49068D4(v31);
  sub_1A48FF670(v30);
  sub_1A48FFA2C(v30);
  sub_1A4906D58(v30);
  sub_1A490913C();
  sub_1A49093A0();
  sub_1A4909EAC();

  return v27;
}

id sub_1A4908DB4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3B8))();
  if (v2)
  {
    v3 = v2;
    result = [v2 photoLibrary];
    if (result)
    {
      v5 = result;

      return v5;
    }

    goto LABEL_16;
  }

  v6 = *((*v1 & *v0) + 0x7D8);
  v7 = v6();
  v8 = (*((*v1 & *v7) + 0x1D0))();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_13:

    v12 = (v6)(v11);
    v13 = (*((*v1 & *v12) + 0x110))();

    v14 = *(v13 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

    v15 = *(v14 + 16);

    return v15;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1A59097F0](0, v8);
LABEL_9:
    v10 = v9;

    result = [v10 photoLibrary];
    if (result)
    {
      v5 = result;

      return v5;
    }

    goto LABEL_17;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_1A4909008()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x7D8))();
  (*((*v1 & *v2) + 0x110))();

  sub_1A4654ADC();

  PXPresentationEnvironmentForSender();
}

id sub_1A49090E4()
{
  v0 = sub_1A4908DB4();
  v1 = [v0 librarySpecificFetchOptions];

  [v1 setIncludeGuestAssets_];
  return v1;
}

void sub_1A490913C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3B8))();
  if (v2)
  {
    v3 = v2;
    v4 = 0xE000000000000000;
    (*((*v1 & *v0) + 0x1E0))(0, 0xE000000000000000);
    v5 = v3;
    v6 = [v5 localizedTitle];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1A524C674();
      v4 = v9;
    }

    else
    {
      v8 = 0;
    }

    (*((*v1 & *v0) + 0x510))(v8, v4);
    v10 = [v5 px_isOwnedCloudKitSharedAlbum];

    (*((*v1 & *v0) + 0x3F0))(v10);
    v11 = objc_opt_self();
    v15 = v5;
    v12 = sub_1A49090E4();
    v13 = [v11 fetchAssetsInAssetCollection:v15 options:v12];

    v14 = [v13 count];
    (*((*v1 & *v0) + 0x6F0))(v14);
  }
}

uint64_t sub_1A49093A0()
{
  v2 = v1;
  v39 = sub_1A523FBB4();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v40 = &v33 - v8;
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3B8))(v7);
  v38 = v1;
  if (!v10)
  {
    v23 = (*((*v9 & *v1) + 0x7D8))();
    v24 = (*((*v9 & *v23) + 0x1D0))();

    if (v24 >> 62)
    {
      v25 = sub_1A524E2B4();
      if (v25)
      {
LABEL_19:
        v26 = 0;
        v40 = (v24 & 0xC000000000000001);
        v37 = v24 & 0xFFFFFFFFFFFFFF8;
        v35 = v3 + 32;
        v18 = MEMORY[0x1E69E7CC0];
        v36 = v25;
        do
        {
          if (v40)
          {
            v27 = MEMORY[0x1A59097F0](v26, v24);
          }

          else
          {
            if (v26 >= *(v37 + 16))
            {
              goto LABEL_35;
            }

            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_34;
          }

          v30 = [v27 localIdentifier];
          sub_1A524C674();

          sub_1A523FB54();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1A3D5BB08(0, v18[2] + 1, 1, v18);
          }

          v2 = v38;
          v9 = MEMORY[0x1E69E7D40];
          v0 = v18[2];
          v31 = v18[3];
          if (v0 >= v31 >> 1)
          {
            v18 = sub_1A3D5BB08(v31 > 1, v0 + 1, 1, v18);
          }

          v18[2] = v0 + 1;
          (*(v3 + 32))(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v0, v5, v39);
          ++v26;
        }

        while (v29 != v36);
        goto LABEL_41;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_19;
      }
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_41:

    return (*((*v9 & *v2) + 0x5D0))(v18);
  }

  v11 = v10;
  v12 = objc_opt_self();
  v0 = v11;
  v13 = sub_1A49090E4();
  v5 = [v12 fetchAssetsInAssetCollection:v0 options:v13];

  v14 = [v5 fetchedObjects];
  if (v14)
  {
    v15 = v14;
    sub_1A3C52C70(0, &qword_1EB126660);
    v2 = sub_1A524CA34();

    if (v2 >> 62)
    {
      goto LABEL_36;
    }

    v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v5;
    for (i = v0; v16; i = v0)
    {
      v17 = 0;
      v36 = v2 & 0xFFFFFFFFFFFFFF8;
      v37 = v2 & 0xC000000000000001;
      v35 = v3 + 32;
      v18 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v37)
        {
          v19 = MEMORY[0x1A59097F0](v17, v2);
        }

        else
        {
          if (v17 >= *(v36 + 16))
          {
            goto LABEL_33;
          }

          v19 = *(v2 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v5 = [v19 localIdentifier];
        sub_1A524C674();

        sub_1A523FB54();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1A3D5BB08(0, v18[2] + 1, 1, v18);
        }

        v0 = v18[2];
        v22 = v18[3];
        if (v0 >= v22 >> 1)
        {
          v18 = sub_1A3D5BB08(v22 > 1, v0 + 1, 1, v18);
        }

        v18[2] = v0 + 1;
        (*(v3 + 32))(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v0, v40, v39);
        ++v17;
        if (v21 == v16)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v16 = sub_1A524E2B4();
      v33 = v5;
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v2 = v38;
    v9 = MEMORY[0x1E69E7D40];
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  return (*((*v9 & *v2) + 0x5D0))(v18);
}

uint64_t sub_1A4909998(uint64_t a1)
{
  v2 = sub_1A523FBB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = *(v3 + 16);
    v38[1] = v3 + 16;
    v39 = v9;
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    v12 = (v3 + 8);
    (v9)(v6, v10, v2, v4);
    while (1)
    {
      v14 = sub_1A523FB64();
      v16 = v15;
      (*v12)(v6, v2);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A3D3D914(0, *(v8 + 2) + 1, 1, v8);
        }

        v19 = *(v8 + 2);
        v18 = *(v8 + 3);
        v20 = v8;
        if (v19 >= v18 >> 1)
        {
          v20 = sub_1A3D3D914((v18 > 1), v19 + 1, 1, v8);
        }

        *(v20 + 2) = v19 + 1;
        v8 = v20;
        v13 = &v20[16 * v19];
        *(v13 + 4) = v14;
        *(v13 + 5) = v16;
      }

      v10 += v11;
      if (!--v7)
      {
        break;
      }

      (v39)(v6, v10, v2, v17);
    }
  }

  v21 = objc_opt_self();
  v22 = sub_1A524CA14();
  v23 = sub_1A49090E4();
  v24 = [v21 fetchAssetsWithLocalIdentifiers:v22 options:v23];

  v25 = [v24 fetchedObjects];
  if (!v25)
  {
  }

  sub_1A3C52C70(0, &qword_1EB126660);
  v26 = sub_1A524CA34();

  v41 = MEMORY[0x1E69E7CC8];
  if (v26 >> 62)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1A4165BCC(0, &qword_1EB1335D0, MEMORY[0x1E69E5E28]);
    sub_1A524C404();
    sub_1A4160A34(v26, &v41);
    v39 = v8;
    v40 = v27;
    v28 = *(v8 + 2);
    if (!v28)
    {
      break;
    }

    v8 += 40;
    v29 = v8;
    v30 = 0;
    while (v30 < v28)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_24;
      }

      if (*(v41 + 16))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      ++v30;
      v29 += 16;
      if (v31 == v28)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_1A524E2B4();
  }

LABEL_20:
  v32 = v38[0];
  v33 = MEMORY[0x1E69E7D40];
  v34 = (*((*MEMORY[0x1E69E7D40] & *v38[0]) + 0x390))(v27);
  v35 = (*((*v33 & *v32) + 0x7D8))(v34);
  result = (*((*v33 & *v32) + 0x388))();
  if (result)
  {
    v37 = result;

    (*((*v33 & *v35) + 0x1D8))(v37);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4909EAC()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *((v3 & v1) + 0x50);
  *(v5 + 24) = v4;
  v6 = *((*v2 & *v0) + 0x660);

  v6(sub_1A490DEC4, v5);
}

uint64_t sub_1A4909FB0()
{
  sub_1A49093A0();

  return sub_1A4909EAC();
}

void sub_1A4909FD8(uint64_t a1)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x508))();
  v3 = objc_allocWithZone(PXRenameCollectionAction);
  v4 = sub_1A524C634();

  v5 = [v3 initWithCollection:a1 title:v4];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v9[4] = sub_1A490DEBC;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1A3D6084C;
    v9[3] = &block_descriptor_302;
    v7 = _Block_copy(v9);
    v8 = v1;

    [v5 executeWithUndoManager:0 completionHandler:v7];
    _Block_release(v7);
  }
}

uint64_t sub_1A490A150(char a1, void *a2, void *a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  if (a1)
  {
    SharedCollectionsLogger.getter();
    v13 = a3;
    v14 = sub_1A5246F04();
    v15 = sub_1A524D264();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v16 = 136315138;
      (*((*MEMORY[0x1E69E7D40] & *v13) + 0x508))();
      sub_1A3C2EF94();
    }

    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    SharedCollectionsLogger.getter();
    v18 = a3;
    v19 = a2;
    v20 = sub_1A5246F04();
    v21 = sub_1A524D244();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v22 = 136315394;
      (*((*MEMORY[0x1E69E7D40] & *v18) + 0x508))();
      sub_1A3C2EF94();
    }

    return (*(v7 + 8))(v9, v6);
  }
}

id sub_1A490A6CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A490A728(uint64_t a1)
{

  sub_1A3C33378(*(a1 + qword_1EB144E90));

  sub_1A3C33378(*(a1 + qword_1EB144ED8));

  sub_1A3C33378(*(a1 + qword_1EB144F08));

  v2 = qword_1EB1DF950;
  v3 = sub_1A5241614();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1A490A8E8@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3B8))();
  *a1 = result;
  return result;
}

void (*sub_1A490A9AC(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3C8))();
  return sub_1A3E658B0;
}

void (*sub_1A490ABC8(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1E8))();
  return sub_1A3E658B0;
}

void (*sub_1A490AD30(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x218))();
  return sub_1A3E658B0;
}

void (*sub_1A490AE94(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x248))();
  return sub_1A3E658B0;
}

void (*sub_1A490AFF8(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x2A8))();
  return sub_1A3E658B0;
}

void (*sub_1A490B160(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3F8))();
  return sub_1A3E658B0;
}

void (*sub_1A490B320(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x518))();
  return sub_1A3E658B0;
}

void (*sub_1A490B498(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x428))();
  return sub_1A3E658B0;
}

void (*sub_1A490B5FC(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x488))();
  return sub_1A3E658B0;
}

void (*sub_1A490B760(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4B8))();
  return sub_1A3E658B0;
}

void (*sub_1A490B8C4(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4E8))();
  return sub_1A3E658B0;
}

void (*sub_1A490BAEC(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x368))();
  return sub_1A3E658B0;
}

void (*sub_1A490BC58(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1A0))();
  return sub_1A3E658B0;
}

void (*sub_1A490BDD0(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x338))();
  return sub_1A3E658B0;
}

void (*sub_1A490BF94(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x548))();
  return sub_1A3E658B0;
}

void (*sub_1A490C0FC(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x578))();
  return sub_1A3E658B0;
}

void (*sub_1A490C264(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x278))();
  return sub_1A3E658B0;
}

void (*sub_1A490C3C8(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5D8))();
  return sub_1A3E658B0;
}

void (*sub_1A490C52C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x608))();
  return sub_1A3E658B0;
}

void (*sub_1A490C690(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5A8))();
  return sub_1A3E658B0;
}

void (*sub_1A490C7F8(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x638))();
  return sub_1A3E62A10;
}

void (*sub_1A490C95C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x668))();
  return sub_1A3E658B0;
}

void (*sub_1A490CAC0(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x698))();
  return sub_1A3E658B0;
}

void (*sub_1A490CC24(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6C8))();
  return sub_1A3E658B0;
}

void (*sub_1A490CDE4(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6F8))();
  return sub_1A3E658B0;
}

void (*sub_1A490CF4C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x730))();
  return sub_1A3E658B0;
}

void (*sub_1A490D0B4(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x760))();
  return sub_1A3E658B0;
}

void (*sub_1A490D218(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x790))();
  return sub_1A3E658B0;
}

void (*sub_1A490D380(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7A8))();
  return sub_1A3E658B0;
}

uint64_t sub_1A490D514@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1A8))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A490D578()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB144E10;
  result = swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

uint64_t sub_1A490D680()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB144E38);

  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_1A490D950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A490DA58(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1A3C66EE8(v3);
  return a1(v3, v4);
}

void (*sub_1A490DB84(uint64_t a1))(void)
{
  v2 = *(v1 + 16);
  sub_1A490817C(a1);
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x780))();
  if (result)
  {
    v4 = result;
    result();

    return sub_1A3C33378(v4);
  }

  return result;
}

void sub_1A490DC28()
{
  v1 = *(v0 + 16);
  v2 = qword_1EB144F18;
  v3 = *(v0 + 24);
  swift_beginAccess();
  v4 = *(v1 + v2);
  *(v1 + v2) = v3;
}

unint64_t sub_1A490DCE4()
{
  result = qword_1EB144F20;
  if (!qword_1EB144F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144F20);
  }

  return result;
}

uint64_t sub_1A490DD38(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A490DD90()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1A490DEC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x548))(v4);
    *v3 = !*v3;
    v2(v4, 0);
  }
}

void sub_1A490DF80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A490E030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  *a4 = a1;
  *(a4 + 8) = a3;
  type metadata accessor for LemonadePeoplePlaceholderView(0);
  v6 = v5;

  sub_1A5247C74();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = v6;
  type metadata accessor for LemonadePeopleProgressStatus();
  v8 = v6;

  sub_1A5247C74();
  *(swift_allocObject() + 16) = v8;
  type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel(0);
  sub_1A5247C74();
}

void sub_1A490E18C(_BYTE *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    wapiCapability = MobileGestalt_get_wapiCapability();

    *a1 = wapiCapability;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A490E1FC@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = *(v1 + 24);
    type metadata accessor for LemonadePeopleProgressStatus();
    v3 = sub_1A3F53C40(v4);
  }

  *a1 = v3;
}

uint64_t sub_1A490E260@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel(0);
  v4 = swift_allocObject();
  sub_1A5241604();
  v4[2] = v3;
  v5 = v3;
  v6 = sub_1A524C634();
  v7 = PXLocalizedString(v6);

  v8 = sub_1A524C674();
  v10 = v9;

  v4[3] = v8;
  v4[4] = v10;
  result = sub_1A3C38BD4();
  v4[5] = result;
  v4[6] = v12;
  *a1 = v4;
  return result;
}

uint64_t sub_1A490E338()
{
  v1 = v0;
  sub_1A3C7E8B0();
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 simulateEmptyShelves];

  if (v3)
  {
    goto LABEL_2;
  }

  type metadata accessor for LemonadePeoplePlaceholderView(0);
  sub_1A3C56B68(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v7 = sub_1A3F546F4();

  if (v7 <= 4)
  {
    if (v7 != 2)
    {
      v8 = sub_1A524C634();
      v9 = PXLocalizedString(v8);

      sub_1A524C674();
      sub_1A4910054(0, &qword_1EB124900, MEMORY[0x1E697DA80]);
      sub_1A5247C84();
      v6 = sub_1A524C634();

LABEL_6:
      v10 = PXLocalizedString(v6);

      sub_1A524C674();
      sub_1A490F838();
      MEMORY[0x1EEE9AC00](v11 - 8);
      v14[4] = v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A490EA98(v1);
    }

LABEL_2:
    v4 = sub_1A524C634();
    v5 = PXLocalizedString(v4);

    sub_1A524C674();
    v6 = sub_1A524C634();
    goto LABEL_6;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A490EA98(unsigned __int8 *a1)
{
  v6 = type metadata accessor for LemonadePlaceholderView();
  MEMORY[0x1EEE9AC00](v6);
  sub_1A49104BC(0, &qword_1EB127F50, type metadata accessor for LemonadeShelfPlaceholderView, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v2);
  v5 = type metadata accessor for LemonadeShelfPlaceholderView();
  MEMORY[0x1EEE9AC00](v5);
  v3 = a1[8];
  v4 = *(*a1 + 16);
  type metadata accessor for LemonadePeoplePlaceholderView(0);
  if (v3 == 1)
  {
    sub_1A3C56B68(0, &qword_1EB124928, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E697DA80]);
    v4;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C56B68(0, &qword_1EB124928, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E697DA80]);
  v4;
  sub_1A5247C84();
  swift_getKeyPath();
  sub_1A4910424();
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A490F12C()
{
  swift_getKeyPath();
  sub_1A4910424();
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A490F1AC()
{
  swift_getKeyPath();
  sub_1A4910424();
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A490F22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  sub_1A524CC54();
  v3[4] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A490F2C4, v5, v4);
}

uint64_t sub_1A490F2C4()
{
  type metadata accessor for LemonadePeoplePlaceholderView(0);
  sub_1A3C56B68(0, &qword_1EB124928, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1A490F3AC;

  return sub_1A490F550();
}

uint64_t sub_1A490F3AC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1A490F4F0, v3, v2);
}

uint64_t sub_1A490F4F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A490F550()
{
  *(v1 + 16) = v0;
  sub_1A3DB4F20();
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A490F5E0, 0, 0);
}

uint64_t sub_1A490F5E0()
{
  v1 = v0[3];
  v2 = [*(v0[2] + 16) px_peoplePetsHomeVisibility];
  v3 = sub_1A524C634();
  v4 = PXLocalizedStringForPersonOrPetAndVisibility(0, v2, v3);

  v5 = sub_1A524C674();
  v7 = v6;

  v8 = objc_opt_self();
  v9 = sub_1A524C634();
  v10 = [v8 locKeyForPersonOrPet:0 withVisibility:v2 key:v9];

  sub_1A524C674();
  v11 = sub_1A3C38BD4();
  v13 = v12;

  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v1, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1A524CC54();

  v16 = sub_1A524CC44();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  v17[5] = v5;
  v17[6] = v7;
  v17[7] = v11;
  v17[8] = v13;

  sub_1A3D4D930(0, 0, v1, &unk_1A5373C40, v17);

  v19 = v0[1];

  return v19();
}

void sub_1A490F838()
{
  if (!qword_1EB127548)
  {
    sub_1A49104BC(255, &qword_1EB127DE8, type metadata accessor for LemonadeShelfPlaceholderView, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127548);
    }
  }
}

uint64_t sub_1A490F8D4()
{
  v2 = *(type metadata accessor for LemonadePeoplePlaceholderView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A490F22C(v4, v5, v0 + v3);
}

uint64_t sub_1A490F99C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A490FA04(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4910424();
  sub_1A52415D4();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A490FA98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4910424();
    sub_1A52415C4();
  }
}

void sub_1A490FBC8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4910424();
  sub_1A52415D4();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A490FCA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4910424();
    sub_1A52415C4();
  }
}

uint64_t sub_1A490FDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  sub_1A524CC54();
  v8[13] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A490FE74, v10, v9);
}

uint64_t sub_1A490FE74()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A490FF6C()
{

  v1 = OBJC_IVAR____TtCV12PhotosUICore29LemonadePeoplePlaceholderViewP33_419C98D6938A4A9A86638F0A04B048CC16PlaceholderModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A4910054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1A49100BC()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  if (v0 <= 0x3F)
  {
    sub_1A4910054(319, &qword_1EB124900, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      sub_1A3C56B68(319, &qword_1EB124928, type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel, MEMORY[0x1E697DA80]);
      if (v2 <= 0x3F)
      {
        sub_1A3C56B68(319, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A49101FC()
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

unint64_t sub_1A49102A8()
{
  result = qword_1EB127550;
  if (!qword_1EB127550)
  {
    sub_1A490F838();
    sub_1A424B944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127550);
  }

  return result;
}

uint64_t sub_1A4910320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4910368()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A490FDD4(v7, v8, v9, v2, v3, v4, v5, v6);
}

unint64_t sub_1A4910424()
{
  result = qword_1EB17DFF8;
  if (!qword_1EB17DFF8)
  {
    type metadata accessor for LemonadePeoplePlaceholderView.PlaceholderModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB17DFF8);
  }

  return result;
}

void sub_1A491047C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49104BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A4910540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49105A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A4910704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalSettingsObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A4910738()
{
  if (*(v0 + 8) <= 1u && *(v0 + 8))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return [objc_opt_self() transientAssetCollectionWithAssetFetchResult:result title:0];
    }
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v2 = result;
      swift_unknownObjectRetain();
      return v2;
    }
  }

  return result;
}

id sub_1A49107E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PhotosDynamicHeaderView();
  sub_1A419C37C(a1, &v13);
  v4 = v14;
  if (v14 == 255)
  {
    if (qword_1EB1DF9F8 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB1DFA00);
    v7 = a1;
    v8 = sub_1A5246F04();
    v9 = sub_1A524D244();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "missing valid container asset collection for %@, falling back to assets in the first section", v10, 0xCu);
      sub_1A3CB65E4(v11);
      MEMORY[0x1A590EEC0](v11, -1, -1);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    if ([v7 numberOfSections] < 1)
    {
      PXDisplayAssetFetchResultEmpty();
    }

    [v7 firstSectionIndexPath];
    result = [v7 assetsInSectionIndexPath_];
    v4 = 1;
  }

  else
  {
    result = v13;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

void sub_1A49109AC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1DFA00);
  __swift_project_value_buffer(v0, qword_1EB1DFA00);
  sub_1A5246EF4();
}

void sub_1A4910AB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & **(v4 + *a3)) + 0xE0))(0.0);
  v10 = *(v4 + *a4);
  (*((*v8 & *v10) + 0xE0))(v9, 1.0);
  sub_1A44E9734(a1, &v13);
  if (v14)
  {
    sub_1A3C34460(&v13, v15);
    (*((*v8 & *v10) + 0x1F8))(v15);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    sub_1A403E594(&v13);
    if (a2)
    {
      v11 = *((*v8 & *v10) + 0x200);
      v12 = a2;
      v11();
    }
  }
}

uint64_t sub_1A4910C28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = *MEMORY[0x1E69E7D40];
  v22 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1A524DF24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  if (a1)
  {
    (*((**(v2 + qword_1EB144FA0) & v4) + 0x208))(v11);
    v14 = *(AssociatedTypeWitness - 8);
    if ((*(v14 + 48))(v9, 1, AssociatedTypeWitness) == 1)
    {
      result = (*(v7 + 8))(v9, v6);
LABEL_6:
      v17 = v23;
      *(v23 + 32) = 0;
      *v17 = 0u;
      v17[1] = 0u;
      return result;
    }

    v18 = v23;
    *(v23 + 24) = AssociatedTypeWitness;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v18[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    return (*(v14 + 32))(boxed_opaque_existential_1, v9, AssociatedTypeWitness);
  }

  else
  {
    (*((**(v2 + qword_1EB144FA8) & v4) + 0x208))(v11);
    v16 = *(AssociatedTypeWitness - 8);
    if ((*(v16 + 48))(v13, 1, AssociatedTypeWitness) == 1)
    {
      result = (*(v7 + 8))(v13, v6);
      goto LABEL_6;
    }

    v20 = v23;
    *(v23 + 24) = AssociatedTypeWitness;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v20[4] = swift_getAssociatedConformanceWitness();
    v21 = __swift_allocate_boxed_opaque_existential_1(v20);
    return (*(v16 + 32))(v21, v13, AssociatedTypeWitness);
  }
}

id sub_1A49110A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightsRootLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4911118(uint64_t a1)
{
  v2 = *(a1 + qword_1EB144FA8);
}

void sub_1A4911164(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v7 - v5;
  type metadata accessor for HighlightsLevelLayout();
  (*(v4 + 16))(v6, a1, v3);
  sub_1A429D724(1, v6);
}

uint64_t sub_1A49115A8()
{
  v1 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A49116AC(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))(v4);
  if (v5 < 1 == result > 0)
  {
    return [v1 invalidatePlaybackEnabled];
  }

  return result;
}

uint64_t sub_1A491175C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

void (*sub_1A4911810(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A49118A4;
}

void sub_1A49118A4(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[4];
  v2 = (*a1)[5];
  v4 = *&v2[v3];
  *&v2[v3] = (*a1)[3];
  if (v4 < 1 == (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))() > 0)
  {
    [v1[4] invalidatePlaybackEnabled];
  }

  free(v1);
}

uint64_t sub_1A4911998()
{
  v1 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A4911A4C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 removeAllRecords];
  }

  return result;
}

uint64_t sub_1A4911ABC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4911B74(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A4911C08;
}

void sub_1A4911C08(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] removeAllRecords];
  }

  free(v1);
}

void *sub_1A4911D20()
{
  v1 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A4911DEC(void *a1)
{
  v3 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1A4911F1C(v4);
}

uint64_t sub_1A4911E58@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4911EB4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);
  v4 = *a1;
  return v3(v2);
}

id sub_1A4911F1C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  result = swift_beginAccess();
  v6 = *&v2[v4];
  if (v6)
  {
    if (v6 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  v7 = &v2[OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometerObservation];
  if (*&v2[OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometerObservation])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  if (v6)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6;

    sub_1A524D1A4();
  }

  *v7 = 0;
  *(v7 + 1) = 0;
  swift_unknownObjectRelease();
  return [v2 invalidatePlaybackEnabled];
}

void (*sub_1A4912064(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A4912100;
}

void sub_1A4912100(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_1A4911F1C(v8);

    v8 = *v5;
  }

  else
  {
    sub_1A4911F1C(v8);
  }

  free(v3);
}

uint64_t sub_1A491229C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A49122FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4912358(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1A49123BC(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___PXPhotosContentInlinePlaybackController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

id sub_1A4912454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [v3 checkOutPlaybackRecordForDisplayAsset:a1 mediaProvider:a2 geometryReference:a3 spriteSize:? displayScale:?];
  if (result)
  {
    v5 = result;
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void sub_1A491253C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v3 = 0;
  }

  sub_1A3D435C4();
  v4 = sub_1A524CA14();
  [v2 checkInPlaybackRecordForDisplayAssets:v4 record:v3];
}

uint64_t sub_1A4912768(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x90))();
  if (result)
  {
    type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord();
    sub_1A3C2F0BC(a3, v23);
    v15 = a2;
    v16 = swift_unknownObjectRetain();
    return sub_1A469C24C(v16, a2, v23, a4, a5, a6);
  }

  else if (a2)
  {
    sub_1A3C2F0BC(a3, v23);
    sub_1A3C52C70(0, &unk_1EB1209A8);
    v17 = a2;
    v18 = swift_dynamicCast();
    v19 = (*((*v13 & *v6) + 0xC0))(v18);
    if (v19)
    {
      v20 = [v19 isDisplayAssetEligibleForPlaybackWithSettlingEffect_];
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
    }

    v21 = [objc_allocWithZone(PXGridInlineVideoSessionAssetPlaybackRecord) initWithDisplayAsset:a1 mediaProvider:v17 spriteReference:v22 playLivePhotosWithSettlingEffectIfPossible:v20];

    [v21 setDiscardVideoOnPause_];
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4912B8C()
{
  swift_getObjectType();
  sub_1A4912D78();
  v1 = sub_1A524C714();
  v3 = v2;
  sub_1A3C71268(0, &qword_1EB12B110, sub_1A3D78B5C);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52FF950;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1A3D710E8();
  *(v4 + 64) = v6;
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 96) = type metadata accessor for PhotosContentInlinePlaybackController();
  *(v4 + 104) = sub_1A4915158(&qword_1EB144FE0, v7, type metadata accessor for PhotosContentInlinePlaybackController);
  *(v4 + 72) = v0;
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  v9 = v0;
  v10 = v8();
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  if (([v10 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v16 = (v4 + 112);
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    goto LABEL_7;
  }

  v12 = [v11 debugDescription];
  swift_unknownObjectRelease();
  v13 = sub_1A524C674();
  v15 = v14;

  v16 = (v4 + 112);
  *(v4 + 136) = v5;
  *(v4 + 144) = v6;
  if (!v15)
  {
LABEL_7:
    *v16 = 0x74657320746F6ELL;
    v15 = 0xE700000000000000;
    goto LABEL_8;
  }

  *v16 = v13;
LABEL_8:
  *(v4 + 120) = v15;
  return sub_1A524C6C4();
}

unint64_t sub_1A4912D78()
{
  result = qword_1EB144FD0;
  if (!qword_1EB144FD0)
  {
    type metadata accessor for PhotosContentInlinePlaybackController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB144FD0);
  }

  return result;
}

id sub_1A4912EE4(void *a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC0))();
  if (result)
  {
    v6 = result;
    result = [a1 geometryReference];
    if (result)
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();
      sub_1A3C57128(&v8, &v9);
      sub_1A3C52C70(0, &unk_1EB1209A8);
      swift_dynamicCast();
      [v6 frameFor:v7 outMinPlayableSize:a2];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1A49130CC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xC0);
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = v7();
  if (v9)
  {
    v10 = [v9 *a4];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  swift_unknownObjectRelease();

  return v10;
}

unint64_t sub_1A4913180(unint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  if (!v3)
  {

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = [v3 filterSortedRecordsStrategy];
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 == 1)
  {
    sub_1A491336C(a1);
  }

  if (v4 != 2)
  {
LABEL_9:
    sub_1A49134A4(a1, 0);
  }

  v5 = sub_1A4913A38(a1);
  swift_unknownObjectRelease();
  return v5;
}

void sub_1A491336C(unint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 scrollViewController];
    v6 = [v5 scrollView];

    v7 = v6;
    swift_unknownObjectRelease();
    if (v7)
    {
      [v7 px_contentOffsetYFraction];
      v9 = v8;
      [v7 contentSize];
      sub_1A4913810(a1, v9 * v10);
    }
  }

  sub_1A49134A4(a1, 0);
}

void sub_1A49134A4(unint64_t a1, char a2)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v36[0] = 0;
  v36[1] = 0;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1A59097F0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v5 = *(a1 + 32);
    }

    v6 = v5;
    if (i == 1)
    {
LABEL_28:
      [v2 frameForPlaybackRecord:v6 minPlayableSize:v36];
      CGRectGetMinY(v43);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v7 = 1;
LABEL_8:
    v8 = v6;
    v9 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1A59097F0](v9, a1);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v6 = v11;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v12 = [v8 visibilityScore];
      if (v12 == [v6 visibilityScore])
      {
        [v2 frameForPlaybackRecord:v8 minPlayableSize:v36];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [v2 frameForPlaybackRecord:v6 minPlayableSize:v36];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v37.origin.x = v14;
        v37.origin.y = v16;
        v37.size.width = v18;
        rect = v20;
        v37.size.height = v20;
        MinY = CGRectGetMinY(v37);
        v38.origin.x = v22;
        v38.origin.y = v24;
        v38.size.width = v26;
        v35 = v28;
        v38.size.height = v28;
        if (MinY == CGRectGetMinY(v38))
        {
          v39.origin.x = v14;
          v39.origin.y = v16;
          v39.size.width = v18;
          v39.size.height = rect;
          MinX = CGRectGetMinX(v39);
          v40.origin.x = v22;
          v40.origin.y = v24;
          v40.size.width = v26;
          v40.size.height = v28;
          if (CGRectGetMinX(v40) < MinX)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v41.origin.x = v14;
          v41.origin.y = v16;
          v41.size.width = v18;
          v41.size.height = rect;
          v31 = CGRectGetMinY(v41);
          v42.origin.x = v22;
          v42.origin.y = v24;
          v42.size.width = v26;
          v42.size.height = v35;
          v32 = CGRectGetMinY(v42);
          if (a2)
          {
            if (v31 < v32)
            {
              goto LABEL_25;
            }
          }

          else if (v32 < v31)
          {
LABEL_25:

            if (v7 == i)
            {
              goto LABEL_28;
            }

            goto LABEL_8;
          }
        }
      }

      else
      {
        v10 = [v8 visibilityScore];
        if (v10 < [v6 visibilityScore])
        {
          goto LABEL_25;
        }
      }

      ++v9;
      if (v7 == i)
      {
        v6 = v8;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4913810(unint64_t a1, double a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a2 == 0.0)
  {
    goto LABEL_2;
  }

  v12[0] = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v11 = v2;
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A59097F0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 visibilityScore] <= 1)
      {
      }

      else
      {
        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        v2 = v12;
        sub_1A524E524();
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v12[0];
        v2 = v11;
        if ((v12[0] & 0x8000000000000000) != 0)
        {
LABEL_24:
          if (!sub_1A524E2B4())
          {
            goto LABEL_25;
          }

LABEL_23:
          v12[0] = 0;
          v12[1] = 0;
          v10 = v2;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

LABEL_21:
        if ((v9 & 0x4000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (*(v9 + 16))
        {
          goto LABEL_23;
        }

LABEL_25:

LABEL_2:
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v9 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  goto LABEL_21;
}

unint64_t sub_1A4913A38(unint64_t a1)
{
  v1 = a1;
  v59 = *MEMORY[0x1E69E9840];
  v55[0] = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    if (i)
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1A59097F0](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        [v4 videoStickerSuggestionScore];
        v8 = v7;
        PLLiveStickerSuggestionConfidenceThreshold();
        if (v9 > v8)
        {
        }

        else
        {
          sub_1A524E514();
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
        }

        ++v3;
      }

      while (v6 != i);
      v1 = v55[0];
      v55[0] = MEMORY[0x1E69E7CC0];
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
      v55[0] = MEMORY[0x1E69E7CC0];
      if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((v1 & 0x4000000000000000) == 0)
        {
          v10 = *(v1 + 16);
          goto LABEL_19;
        }
      }
    }

    v10 = sub_1A524E2B4();
LABEL_19:
    v11 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      break;
    }

    v12 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1A59097F0](v12, v1);
      }

      else
      {
        if (v12 >= *(v1 + 16))
        {
          goto LABEL_64;
        }

        v13 = *(v1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ([v13 visibilityScore] <= 1)
      {
      }

      else
      {
        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        sub_1A524E524();
      }

      ++v12;
      if (v15 == v10)
      {
        v16 = v55[0];
        if ((v55[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_69;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v16 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_33:
    if ((v16 & 0x4000000000000000) == 0)
    {
      v17 = *(v16 + 16);
      goto LABEL_35;
    }
  }

LABEL_69:
  v17 = sub_1A524E2B4();
LABEL_35:
  if (!v17)
  {
    v16 = v1;
  }

  sub_1A3CB8F68();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A52F9DE0;
  v19 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v20 = sub_1A524C634();
  v21 = [v19 initWithKey:v20 ascending:0];

  *(v18 + 32) = v21;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v23 = sub_1A524C634();
  v24 = [v22 initWithKey:v23 ascending:0];

  *(v18 + 40) = v24;
  sub_1A3C52C70(0, &qword_1EB145058);
  v25 = sub_1A524CA14();

  sub_1A3C52C70(0, &qword_1EB126B60);
  v26 = sub_1A524CA14();

  v27 = [v25 sortedArrayUsingDescriptors_];

  v28 = sub_1A524CA34();
  v1 = sub_1A4914138(v28);

  if (!v1)
  {
    return v16;
  }

  v58 = v11;
  v56 = MEMORY[0x1E69E7CD0];
  v57 = MEMORY[0x1E69E7CD0];
  v55[0] = 0;
  v55[1] = 0;
  if (v1 >> 62)
  {
    v29 = sub_1A524E2B4();
    if (!v29)
    {
      goto LABEL_71;
    }

LABEL_40:
    v30 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1A59097F0](v30, v1);
      }

      else
      {
        if (v30 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v31 = *(v1 + 32 + 8 * v30);
      }

      v32 = v31;
      if (__OFADD__(v30++, 1))
      {
        goto LABEL_65;
      }

      [v53 frameForPlaybackRecord:v31 minPlayableSize:v55];
      x = v60.origin.x;
      y = v60.origin.y;
      width = v60.size.width;
      height = v60.size.height;
      v38 = fabs(round(CGRectGetMinX(v60)));
      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = height;
      MinY = CGRectGetMinY(v61);
      v40 = v57;
      if (*(v57 + 16))
      {
        v41 = sub_1A524EC84();
        v42 = -1 << *(v40 + 32);
        v43 = v41 & ~v42;
        if ((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
        {
          break;
        }
      }

LABEL_52:
      v45 = fabs(round(MinY));
      v46 = v56;
      if (*(v56 + 16) && (v47 = sub_1A524EC84(), v48 = -1 << *(v46 + 32), v49 = v47 & ~v48, ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0))
      {
        v50 = ~v48;
        while (*(*(v46 + 48) + 8 * v49) != v45)
        {
          v49 = (v49 + 1) & v50;
          if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
          {
            goto LABEL_57;
          }
        }

LABEL_41:

        if (v30 == v29)
        {
          goto LABEL_60;
        }
      }

      else
      {
LABEL_57:
        sub_1A491473C(&v54, v38);
        sub_1A491473C(&v54, v45);
        v51 = v32;
        MEMORY[0x1A5907D70]();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();

        v16 = v58;
        if (v30 == v29)
        {
LABEL_60:

          goto LABEL_72;
        }
      }
    }

    v44 = ~v42;
    while (*(*(v40 + 48) + 8 * v43) != v38)
    {
      v43 = (v43 + 1) & v44;
      if (((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_41;
  }

  v29 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
    goto LABEL_40;
  }

LABEL_71:

  v16 = MEMORY[0x1E69E7CC0];
LABEL_72:

  return v16;
}

uint64_t sub_1A4914138(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1A524E554();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1A3C2F0BC(i, v5);
    sub_1A3C52C70(0, &qword_1EB145058);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id PhotosContentInlinePlaybackController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosContentInlinePlaybackController.init()()
{
  *&v0[OBJC_IVAR___PXPhotosContentInlinePlaybackController_numberOfItemsToPlay] = 0;
  v0[OBJC_IVAR___PXPhotosContentInlinePlaybackController_enableSpatialPhotoPlayback] = 0;
  *&v0[OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometer] = 0;
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR___PXPhotosContentInlinePlaybackController_scrollViewSpeedometerObservation];
  v2 = type metadata accessor for PhotosContentInlinePlaybackController();
  *v1 = 0;
  v1[1] = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id PhotosContentInlinePlaybackController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosContentInlinePlaybackController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A491473C(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1A524EC84();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1A4914A58(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A4914830()
{
  v1 = v0;
  v2 = *v0;
  sub_1A49151A0();
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
      result = sub_1A524EC84();
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

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1A4914A58(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1A4914830();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1A4914B84();
      result = v7;
      goto LABEL_12;
    }

    sub_1A4914CB8();
  }

  v8 = *v3;
  v9 = sub_1A524EC84();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A524EB74();
  __break(1u);
  return result;
}

void *sub_1A4914B84()
{
  v1 = v0;
  sub_1A49151A0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1A4914CB8()
{
  v1 = v0;
  v2 = *v0;
  sub_1A49151A0();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
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
      result = sub_1A524EC84();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A4914EAC(unint64_t a1)
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
  v5 = sub_1A40C9D70(v3, 0);
  sub_1A4914F40((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A4914F40(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1A49150F0();
          sub_1A4915158(&qword_1EB145068, 255, sub_1A49150F0);
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
        sub_1A3C52C70(0, &qword_1EB145058);
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

void sub_1A49150F0()
{
  if (!qword_1EB145060)
  {
    sub_1A3C52C70(255, &qword_1EB145058);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145060);
    }
  }
}

uint64_t sub_1A4915158(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1A49151A0()
{
  if (!qword_1EB145070)
  {
    sub_1A3FBE730();
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145070);
    }
  }
}

void sub_1A49151FC(uint64_t *a1, id *a2, uint64_t *a3, void *a4, uint64_t a5, double a6)
{
  v7 = *a1;
  v70 = a4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_60;
  }

  while (1)
  {
    *a1 = v7;
    v9 = (v7 + 16);
    v8 = *(v7 + 16);
    if (v8 < 2)
    {
      break;
    }

    v74 = a2;
    v61 = v7;
    v62 = (v7 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {

        __break(1u);
        return;
      }

      v67 = v8;
      v11 = 2 * v8;
      v66 = (v7 + v11 * 8);
      v12 = *(v7 + v11 * 8);
      __dst = &v9[v11];
      v14 = &v9[v11];
      v13 = v9[v11];
      v68 = v14[1];
      v69 = v12;
      v15 = 8 * v12;
      v16 = (v10 + 8 * v12);
      v17 = 8 * v13;
      v18 = (v10 + 8 * v13);
      v19 = (v10 + 8 * v68);
      v20 = 8 * v13 - 8 * v12;
      v7 = 8 * v68 - 8 * v13;
      if (v20 >= v7)
      {
        if (v18 != a2 || v19 <= a2)
        {
          memmove(a2, (v10 + 8 * v13), 8 * v68 - 8 * v13);
        }

        v73 = v70;
        v24 = a2;
        v23 = (a2 + v7);
        if (v7 >= 1 && v17 > v15)
        {
LABEL_35:
          v43 = v18 - 1;
          v44 = v19;
          v7 = v23;
          v71 = v18 - 1;
          do
          {
            v45 = *(v7 - 8);
            v7 -= 8;
            v46 = *v43;
            v47 = v45;
            v48 = v46;
            [v73 frameForPlaybackRecord:v47 minPlayableSize:a5];
            width = v85.size.width;
            height = v85.size.height;
            y = v85.origin.y;
            x = v85.origin.x;
            v51 = vabdd_f64(a6, CGRectGetMinY(v85));
            [v73 frameForPlaybackRecord:v48 minPlayableSize:a5];
            v52 = v86.origin.x;
            v53 = v86.origin.y;
            v54 = v86.size.width;
            v55 = v86.size.height;
            v56 = vabdd_f64(a6, CGRectGetMinY(v86));
            if (v51 == v56)
            {
              v87.origin.y = y;
              v87.origin.x = x;
              v87.size.width = width;
              v87.size.height = height;
              MinX = CGRectGetMinX(v87);
              v88.origin.x = v52;
              v88.origin.y = v53;
              v88.size.width = v54;
              v88.size.height = v55;
              v58 = CGRectGetMinX(v88);

              v19 = v44 - 1;
              if (MinX < v58)
              {
                goto LABEL_43;
              }
            }

            else
            {

              v19 = v44 - 1;
              if (v51 < v56)
              {
LABEL_43:
                if (v44 != v18)
                {
                  *v19 = *v71;
                }

                if (v23 <= v74 || (--v18, v16 >= v71))
                {
                  v24 = v74;
                  v18 = v71;
                  goto LABEL_49;
                }

                goto LABEL_35;
              }
            }

            v43 = v18 - 1;
            if (v23 != v44)
            {
              *v19 = *v7;
            }

            v23 = v7;
            v44 = v19;
          }

          while (v7 > v74);
          v23 = v7;
          v24 = v74;
        }
      }

      else
      {
        v21 = v16 == a2 && v18 > a2;
        if (!v21)
        {
          memmove(a2, (v10 + 8 * v12), 8 * v13 - 8 * v12);
        }

        v72 = v70;
        v22 = a2;
        v23 = (a2 + v20);
        v21 = v20 < 1;
        v24 = v22;
        if (!v21 && 8 * v68 > v17)
        {
          do
          {
            v26 = *v24;
            v27 = *v18;
            v28 = v26;
            v7 = &selRef_flashFiredValues;
            [v72 frameForPlaybackRecord:v27 minPlayableSize:a5];
            v29 = v81.size.width;
            v30 = v81.size.height;
            v75 = v81.origin.y;
            v77 = v81.origin.x;
            v31 = vabdd_f64(a6, CGRectGetMinY(v81));
            [v72 frameForPlaybackRecord:v28 minPlayableSize:a5];
            v32 = v82.origin.x;
            v33 = v82.origin.y;
            v34 = v82.size.width;
            v35 = v82.size.height;
            v36 = vabdd_f64(a6, CGRectGetMinY(v82));
            if (v31 == v36)
            {
              v83.origin.y = v75;
              v83.origin.x = v77;
              v83.size.width = v29;
              v83.size.height = v30;
              v37 = CGRectGetMinX(v83);
              v84.origin.x = v32;
              v84.origin.y = v33;
              v84.size.width = v34;
              v84.size.height = v35;
              v38 = CGRectGetMinX(v84);

              if (v37 >= v38)
              {
                goto LABEL_21;
              }
            }

            else
            {

              if (v31 >= v36)
              {
LABEL_21:
                v39 = v24;
                v40 = v16 == v24++;
                if (v40)
                {
                  goto LABEL_23;
                }

LABEL_22:
                *v16 = *v39;
                goto LABEL_23;
              }
            }

            v39 = v18;
            v40 = v16 == v18++;
            if (!v40)
            {
              goto LABEL_22;
            }

LABEL_23:
            ++v16;
          }

          while (v24 < v23 && v18 < v19);
        }

        v18 = v16;
      }

LABEL_49:
      if (v18 != v24 || v18 >= (v24 + ((v23 - v24 + (v23 - v24 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v18, v24, 8 * (v23 - v24));
      }

      a2 = v74;
      if (v68 < v69)
      {
        break;
      }

      v9 = v62;
      v59 = *v62;
      if ((v67 - 2) >= *v62)
      {
        goto LABEL_58;
      }

      *v66 = v69;
      v66[1] = v68;
      if (v59 < v67)
      {
        goto LABEL_59;
      }

      v60 = v59 - 1;
      memmove(__dst, __dst + 16, 16 * (v59 - v67));
      v7 = v61;
      *(v61 + 16) = v60;
      *a1 = v61;
      v8 = *(v61 + 16);
      if (v8 <= 1)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v7 = sub_1A3D86884(v7);
  }

LABEL_56:
}

void sub_1A4915708(void **a1, double a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v205 = MEMORY[0x1E69E7CC0];
  v7 = a4[1];
  v182 = a6;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v12 = *a4;
        v184 = v8;
        v13 = *(*a4 + 8 * v8);
        v14 = *(*a4 + 8 * v11);
        v15 = v13;
        [v182 frameForPlaybackRecord:v14 minPlayableSize:a7];
        width = v206.size.width;
        height = v206.size.height;
        y = v206.origin.y;
        __dst = v206.origin.x;
        v18 = vabdd_f64(a2, CGRectGetMinY(v206));
        [v182 frameForPlaybackRecord:v15 minPlayableSize:a7];
        x = v207.origin.x;
        v20 = v207.origin.y;
        v21 = v207.size.width;
        v22 = v207.size.height;
        v23 = vabdd_f64(a2, CGRectGetMinY(v207));
        if (v18 == v23)
        {
          v208.origin.y = y;
          v208.origin.x = __dst;
          v208.size.width = width;
          v208.size.height = height;
          MinX = CGRectGetMinX(v208);
          v209.origin.x = x;
          v209.origin.y = v20;
          v209.size.width = v21;
          v209.size.height = v22;
          v25 = CGRectGetMinX(v209);

          v26 = MinX < v25;
        }

        else
        {

          v26 = v18 < v23;
        }

        v27 = v26;
        __src = v27;
        v173 = v9;
        v28 = (v12 + 8 * v184 + 16);
        v29 = 8 * v184 + 8;
        v30 = v7;
        do
        {
          v34 = v11;
          v35 = v29;
          if (++v11 >= v30)
          {
            break;
          }

          v36 = *(v28 - 1);
          v37 = *v28;
          v38 = v36;
          [v182 frameForPlaybackRecord:v37 minPlayableSize:a7];
          v39 = v210.size.width;
          v40 = v210.size.height;
          v195 = v210.origin.y;
          __dsta = v210.origin.x;
          v41 = vabdd_f64(a2, CGRectGetMinY(v210));
          [v182 frameForPlaybackRecord:v38 minPlayableSize:a7];
          v42 = v211.origin.x;
          v43 = v211.origin.y;
          v44 = v211.size.width;
          v45 = v211.size.height;
          v46 = vabdd_f64(a2, CGRectGetMinY(v211));
          if (v41 == v46)
          {
            v212.origin.y = v195;
            v212.origin.x = __dsta;
            v212.size.width = v39;
            v212.size.height = v40;
            v47 = CGRectGetMinX(v212);
            v213.origin.x = v42;
            v213.origin.y = v43;
            v213.size.width = v44;
            v213.size.height = v45;
            v48 = CGRectGetMinX(v213);

            v31 = v47 < v48;
          }

          else
          {

            v31 = v41 < v46;
          }

          v32 = v31;
          ++v28;
          v29 = v35 + 8;
          v33 = __src == v32;
          v30 = v7;
        }

        while (v33);
        if (__src)
        {
          v10 = v184;
          if (v11 < v184)
          {
            goto LABEL_164;
          }

          if (v184 < v11)
          {
            v49 = v184;
            v50 = 8 * v184;
            do
            {
              if (v49 != v34)
              {
                v53 = *a4;
                if (!*a4)
                {
                  goto LABEL_169;
                }

                v51 = *(v53 + v50);
                *(v53 + v50) = *(v53 + v35);
                *(v53 + v35) = v51;
              }

              ++v49;
              v35 -= 8;
              v50 += 8;
            }

            while (v49 < v34--);
          }

          v9 = v173;
        }

        else
        {
          v9 = v173;
          v10 = v184;
        }
      }

      v54 = a4[1];
      if (v11 >= v54)
      {
        goto LABEL_174;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_163;
      }

      if (v11 - v10 >= a5)
      {
        goto LABEL_174;
      }

      v55 = &v10[a5];
      if (__OFADD__(v10, a5))
      {
        goto LABEL_165;
      }

      if (v55 >= v54)
      {
        v55 = a4[1];
      }

      if (v55 < v10)
      {
        goto LABEL_166;
      }

      if (v11 == v55)
      {
LABEL_174:
        if (v11 < v10)
        {
          goto LABEL_162;
        }
      }

      else
      {
        v174 = v9;
        v56 = *a4;
        v57 = *a4 + 8 * v11 - 8;
        v185 = v10;
        __srca = v55;
        v58 = &v10[-v11];
        do
        {
          v170 = v11;
          v59 = *(v56 + 8 * v11);
          v60 = v58;
          v191 = v57;
          do
          {
            v61 = *v57;
            v62 = v59;
            v63 = v61;
            [v182 frameForPlaybackRecord:v62 minPlayableSize:a7];
            v64 = v214.size.width;
            v65 = v214.size.height;
            v196 = v214.origin.y;
            __dstb = v214.origin.x;
            v66 = vabdd_f64(a2, CGRectGetMinY(v214));
            [v182 frameForPlaybackRecord:v63 minPlayableSize:a7];
            v67 = v215.origin.x;
            v68 = v215.origin.y;
            v69 = v215.size.width;
            v70 = v215.size.height;
            v71 = vabdd_f64(a2, CGRectGetMinY(v215));
            if (v66 == v71)
            {
              v216.origin.y = v196;
              v216.origin.x = __dstb;
              v216.size.width = v64;
              v216.size.height = v65;
              v72 = CGRectGetMinX(v216);
              v217.origin.x = v67;
              v217.origin.y = v68;
              v217.size.width = v69;
              v217.size.height = v70;
              v73 = CGRectGetMinX(v217);

              if (v72 >= v73)
              {
                break;
              }
            }

            else
            {

              if (v66 >= v71)
              {
                break;
              }
            }

            if (!v56)
            {
              goto LABEL_167;
            }

            v74 = *v57;
            v59 = *(v57 + 8);
            *v57 = v59;
            *(v57 + 8) = v74;
            v57 -= 8;
          }

          while (!__CFADD__(v60++, 1));
          ++v11;
          v57 = v191 + 8;
          --v58;
        }

        while ((v170 + 1) != __srca);
        v11 = __srca;
        v9 = v174;
        v10 = v185;
        if (__srca < v185)
        {
          goto LABEL_162;
        }
      }

      v171 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1A3D8598C(0, *(v9 + 2) + 1, 1, v9);
      }

      v77 = *(v9 + 2);
      v76 = *(v9 + 3);
      v78 = v77 + 1;
      v79 = v11;
      if (v77 >= v76 >> 1)
      {
        v165 = sub_1A3D8598C((v76 > 1), v77 + 1, 1, v9);
        v79 = v11;
        v9 = v165;
      }

      *(v9 + 2) = v78;
      v80 = v9 + 32;
      v81 = &v9[16 * v77 + 32];
      *v81 = v10;
      *(v81 + 1) = v79;
      v205 = v9;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_170;
      }

      if (v77)
      {
        break;
      }

LABEL_3:
      v7 = a4[1];
      v8 = v171;
      if (v171 >= v7)
      {
        goto LABEL_145;
      }
    }

    __srcb = *a1;
    v172 = v9 + 32;
    v175 = v9;
    while (1)
    {
      v83 = v78 - 1;
      if (v78 >= 4)
      {
        break;
      }

      if (v78 == 3)
      {
        v84 = *(v9 + 4);
        v85 = *(v9 + 5);
        v94 = __OFSUB__(v85, v84);
        v86 = v85 - v84;
        v87 = v94;
LABEL_73:
        if (v87)
        {
          goto LABEL_153;
        }

        v100 = &v9[16 * v78];
        v102 = *v100;
        v101 = *(v100 + 1);
        v103 = __OFSUB__(v101, v102);
        v104 = v101 - v102;
        v105 = v103;
        if (v103)
        {
          goto LABEL_156;
        }

        v106 = &v80[16 * v83];
        v108 = *v106;
        v107 = *(v106 + 1);
        v94 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v94)
        {
          goto LABEL_159;
        }

        if (__OFADD__(v104, v109))
        {
          goto LABEL_160;
        }

        if (v104 + v109 >= v86)
        {
          if (v86 < v109)
          {
            v83 = v78 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_87;
      }

      v110 = &v9[16 * v78];
      v112 = *v110;
      v111 = *(v110 + 1);
      v94 = __OFSUB__(v111, v112);
      v104 = v111 - v112;
      v105 = v94;
LABEL_87:
      if (v105)
      {
        goto LABEL_155;
      }

      v113 = &v80[16 * v83];
      v115 = *v113;
      v114 = *(v113 + 1);
      v94 = __OFSUB__(v114, v115);
      v116 = v114 - v115;
      if (v94)
      {
        goto LABEL_158;
      }

      if (v116 < v104)
      {
        goto LABEL_3;
      }

LABEL_94:
      if (v83 - 1 >= v78)
      {
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:

        __break(1u);
LABEL_168:

        __break(1u);
LABEL_169:

        __break(1u);
LABEL_170:

        __break(1u);
LABEL_171:

        __break(1u);
        return;
      }

      v121 = *a4;
      if (!*a4)
      {
        goto LABEL_168;
      }

      v178 = &v80[16 * v83 - 16];
      v179 = v83;
      v177 = &v80[16 * v83];
      v122 = *v177;
      v180 = *(v177 + 1);
      v181 = *v178;
      v123 = 8 * *v178;
      v124 = (v121 + v123);
      v125 = 8 * *v177;
      v126 = (v121 + v125);
      v127 = (v121 + 8 * v180);
      v128 = v125 - v123;
      v129 = 8 * v180 - v125;
      if (v125 - v123 >= v129)
      {
        if (v126 != v82 || v127 <= v82)
        {
          memmove(v82, (v121 + 8 * v122), 8 * v180 - 8 * v122);
        }

        v187 = v182;
        v130 = (v82 + v129);
        if (v129 < 1 || v125 <= v123)
        {
          v131 = __srcb;
          v163 = v126;
          goto LABEL_135;
        }

        while (1)
        {
          v146 = v126 - 1;
          v147 = v127;
          v148 = v130;
          v183 = v126 - 1;
          while (1)
          {
            v149 = *--v148;
            v150 = *v146;
            v151 = v149;
            v152 = v150;
            [v187 frameForPlaybackRecord:v151 minPlayableSize:a7];
            v153 = v222.size.width;
            v154 = v222.size.height;
            v193 = v222.origin.y;
            v198 = v222.origin.x;
            v155 = vabdd_f64(a2, CGRectGetMinY(v222));
            [v187 frameForPlaybackRecord:v152 minPlayableSize:a7];
            v156 = v223.origin.x;
            v157 = v223.origin.y;
            v158 = v223.size.width;
            v159 = v223.size.height;
            v160 = vabdd_f64(a2, CGRectGetMinY(v223));
            if (v155 != v160)
            {
              break;
            }

            v224.origin.y = v193;
            v224.origin.x = v198;
            v224.size.width = v153;
            v224.size.height = v154;
            v161 = CGRectGetMinX(v224);
            v225.origin.x = v156;
            v225.origin.y = v157;
            v225.size.width = v158;
            v225.size.height = v159;
            v162 = CGRectGetMinX(v225);

            v127 = v147 - 1;
            if (v161 < v162)
            {
              goto LABEL_126;
            }

LABEL_124:
            v146 = v126 - 1;
            if (v130 != v147)
            {
              *v127 = *v148;
            }

            v130 = v148;
            v147 = v127;
            if (v148 <= __srcb)
            {
              v130 = v148;
              v131 = __srcb;
              v163 = v126;
              goto LABEL_135;
            }
          }

          v127 = v147 - 1;
          if (v155 >= v160)
          {
            goto LABEL_124;
          }

LABEL_126:
          v163 = v126 - 1;
          if (v147 != v126)
          {
            *v127 = *v183;
          }

          v131 = __srcb;
          if (v130 > __srcb)
          {
            --v126;
            if (v124 < v183)
            {
              continue;
            }
          }

          goto LABEL_135;
        }
      }

      if (v124 != v82 || v126 <= v82)
      {
        memmove(v82, (v121 + 8 * *v178), 8 * v122 - 8 * *v178);
      }

      v186 = v182;
      v130 = (v82 + v128);
      if (v128 >= 1 && 8 * v180 > v125)
      {
        v131 = __srcb;
        while (1)
        {
          __dstc = v126;
          v132 = *v131;
          v133 = *v126;
          v134 = v132;
          [v186 frameForPlaybackRecord:v133 minPlayableSize:a7];
          v135 = v218.size.width;
          v136 = v218.size.height;
          v192 = v218.origin.y;
          v197 = v218.origin.x;
          v137 = vabdd_f64(a2, CGRectGetMinY(v218));
          [v186 frameForPlaybackRecord:v134 minPlayableSize:a7];
          v138 = v219.origin.x;
          v139 = v219.origin.y;
          v140 = v219.size.width;
          v141 = v219.size.height;
          v142 = vabdd_f64(a2, CGRectGetMinY(v219));
          if (v137 == v142)
          {
            v220.origin.y = v192;
            v220.origin.x = v197;
            v220.size.width = v135;
            v220.size.height = v136;
            v143 = CGRectGetMinX(v220);
            v221.origin.x = v138;
            v221.origin.y = v139;
            v221.size.width = v140;
            v221.size.height = v141;
            v144 = CGRectGetMinX(v221);

            if (v143 >= v144)
            {
              goto LABEL_108;
            }
          }

          else
          {

            if (v137 >= v142)
            {
LABEL_108:
              v145 = v131;
              v33 = v124 == v131++;
              if (v33)
              {
                goto LABEL_110;
              }

LABEL_109:
              *v124 = *v145;
              goto LABEL_110;
            }
          }

          v145 = v126++;
          if (v124 != __dstc)
          {
            goto LABEL_109;
          }

LABEL_110:
          ++v124;
          if (v131 >= v130 || v126 >= v127)
          {
            goto LABEL_132;
          }
        }
      }

      v131 = __srcb;
LABEL_132:
      v163 = v124;
LABEL_135:
      if (v163 != v131 || v163 >= (v131 + ((v130 - v131 + (v130 - v131 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v163, v131, 8 * (v130 - v131));
      }

      v82 = __srcb;
      if (v180 < v181)
      {
        goto LABEL_148;
      }

      v9 = v175;
      v164 = *(v175 + 16);
      if (v179 > v164)
      {
        goto LABEL_149;
      }

      *v178 = v181;
      *(v178 + 1) = v180;
      if (v179 >= v164)
      {
        goto LABEL_150;
      }

      v78 = v164 - 1;
      memmove(v177, v177 + 16, 16 * (v164 - 1 - v179));
      *(v175 + 16) = v164 - 1;
      v205 = v175;
      v80 = v172;
      if (v164 <= 2)
      {
        goto LABEL_3;
      }
    }

    v88 = &v80[16 * v78];
    v89 = *(v88 - 8);
    v90 = *(v88 - 7);
    v94 = __OFSUB__(v90, v89);
    v91 = v90 - v89;
    if (v94)
    {
      goto LABEL_151;
    }

    v93 = *(v88 - 6);
    v92 = *(v88 - 5);
    v94 = __OFSUB__(v92, v93);
    v86 = v92 - v93;
    v87 = v94;
    if (v94)
    {
      goto LABEL_152;
    }

    v95 = &v9[16 * v78];
    v97 = *v95;
    v96 = *(v95 + 1);
    v94 = __OFSUB__(v96, v97);
    v98 = v96 - v97;
    if (v94)
    {
      goto LABEL_154;
    }

    v94 = __OFADD__(v86, v98);
    v99 = v86 + v98;
    if (v94)
    {
      goto LABEL_157;
    }

    if (v99 >= v91)
    {
      v117 = &v80[16 * v83];
      v119 = *v117;
      v118 = *(v117 + 1);
      v94 = __OFSUB__(v118, v119);
      v120 = v118 - v119;
      if (v94)
      {
        goto LABEL_161;
      }

      if (v86 < v120)
      {
        v83 = v78 - 2;
      }

      goto LABEL_94;
    }

    goto LABEL_73;
  }

LABEL_145:
  v166 = *a1;
  if (!*a1)
  {
    goto LABEL_171;
  }

  v167 = v182;
  sub_1A49151FC(&v205, v166, a4, v167, a7, a2);
}