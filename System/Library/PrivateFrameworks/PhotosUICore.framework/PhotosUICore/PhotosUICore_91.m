void sub_1A47DE60C()
{
  swift_getKeyPath();
  sub_1A47DFCD8(qword_1F1724E18);
  sub_1A47DFE98();
  swift_arrayDestroy();
  sub_1A47DFF28();
  sub_1A3F3E83C(0x746E656D65766F4DLL, 0xED00006570795420, &v0);
}

void sub_1A47DEBBC()
{
  swift_getKeyPath();
  sub_1A47DFCD8(qword_1F1724F48);
  sub_1A47DFE98();
  swift_arrayDestroy();
  sub_1A47DFF28();
  sub_1A3F3E83C(0x746E656D65766F4DLL, 0xED00006570795420, &v0);
}

void sub_1A47DF16C()
{
  swift_getKeyPath();
  sub_1A47DFCD8(qword_1F1725078);
  sub_1A47DFE98();
  swift_arrayDestroy();
  sub_1A47DFF28();
  sub_1A3F3E83C(0x746E656D65766F4DLL, 0xED00006570795420, &v0);
}

void sub_1A47DF71C()
{
  swift_getKeyPath();
  sub_1A47DFCD8(qword_1F17251A8);
  sub_1A47DFE98();
  swift_arrayDestroy();
  sub_1A47DFF28();
  sub_1A3F3E83C(0x746E656D65766F4DLL, 0xED00006570795420, &v0);
}

uint64_t sub_1A47DFCD8(void *a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  v2 = a1[2];
  sub_1A3F41E2C(v2, 0);
  sub_1A47DDCF4(0, v2, 0);
  if (v2)
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = *(v9 + 16);
    if (v5)
    {
      v6 = (v9 + 40);
      do
      {
        v7 = *(v6 - 1) == v4 && *v6 == v3;
        if (v7 || (sub_1A524EAB4() & 1) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

void sub_1A47DFE98()
{
  if (!qword_1EB142850)
  {
    type metadata accessor for PXLemonadeShelvesAnimationType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB142850);
    }
  }
}

unint64_t sub_1A47DFF28()
{
  result = qword_1EB142858;
  if (!qword_1EB142858)
  {
    type metadata accessor for PXLemonadeShelvesAnimationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142858);
  }

  return result;
}

void sub_1A47DFFBC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A47E0028(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A47E0028(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A47E0078()
{
  if (!qword_1EB142860)
  {
    type metadata accessor for PXLemonadeShelvesAnimationType(255);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142860);
    }
  }
}

void sub_1A47E0228(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1;
  sub_1A3C5A374();
  PXDisplayCollectionDetailedCountsMake(v3);
  v5 = v4;
  *(v2 + 16) = v4;
  *(v2 + 24) = v6;
  sub_1A3C411C8();
  sub_1A3C65064(&qword_1EB12A7D8, sub_1A3C41244);
  v7 = v5;
  sub_1A3C64F88();
}

uint64_t sub_1A47E0320(uint64_t a1)
{
  sub_1A3C50BAC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A47E037C()
{
  sub_1A47E0320(v0 + OBJC_IVAR____TtC12PhotosUICore29LemonadeMemoriesShelfProvider_wrappedProvider);

  return swift_deallocClassInstance();
}

void *sub_1A47E03E8()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t MemoryCreationLemonadeMemoriesShelfProvider.__allocating_init(photoLibrary:positionManager:forceCardVisibilityState:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1A47E0C98(a1, v12, a3, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v14;
}

uint64_t MemoryCreationLemonadeMemoriesShelfProvider.init(photoLibrary:positionManager:forceCardVisibilityState:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1A47E0C98(a1, v12, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v14;
}

uint64_t sub_1A47E0650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_1A524CC54();
  *(v4 + 72) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47E06E8, v6, v5);
}

uint64_t sub_1A47E06E8()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3C6AB14();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A52415B4();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47E07E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C56A4C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;

  sub_1A3D4D930(0, 0, v6, a3, v10);
}

uint64_t sub_1A47E0988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47E0A20, v6, v5);
}

uint64_t sub_1A47E0A20()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3C6AB14();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47E0B38()
{
  sub_1A524CC54();
  *(v0 + 24) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47E0BCC, v2, v1);
}

uint64_t sub_1A47E0C98(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  LOBYTE(a3) = *a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v12 = OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider____lazy_storage___wrappedProvider;
  sub_1A3C50BAC();
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider____lazy_storage___prependItemListManager) = 0;
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider____lazy_storage___appendItemListManager) = 0;
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_availabilityManager) = 0;
  v14 = OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_logger;
  v15 = sub_1A3C4A780();
  v16 = sub_1A5246F24();
  (*(*(v16 - 8) + 16))(a4 + v14, v15, v16);
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_forceCardVisibilityState) = 3;
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_photoLibrary) = a1;
  sub_1A3C34460(&v18, a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_positionManager);
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_forceCardVisibilityState) = a3;
  return a4;
}

void sub_1A47E0E44()
{
  sub_1A3C50BAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A47E109C()
{
  v1 = *(v0 + 16);
  type metadata accessor for GenerativeStoryBackgroundAssetsManager();
  v2 = *sub_1A4A071A0(v1);
  (*(v2 + 304))();
}

uint64_t sub_1A47E1158()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A47E0988(v3, v4, v5, v2);
}

uint64_t sub_1A47E11EC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56A4C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A47E12A4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47E0650(v3, v4, v5, v2);
}

uint64_t sub_1A47E134C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A47E13B0(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x772D646572616873;
  a2[1] = 0xEF756F792D687469;
  v3 = type metadata accessor for LemonadeSharedWithYouFeature();
  sub_1A40B51E0(a2 + *(v3 + 20));
}

uint64_t sub_1A47E1480(uint64_t a1)
{
  result = sub_1A47E14D8(&qword_1EB129998, type metadata accessor for LemonadeSharedWithYouFeature);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A47E14D8(unint64_t *a1, void (*a2)(uint64_t))
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

id UIViewController.pxView.getter()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void UIViewController.px_addChild(_:constraints:)(void *a1, void (*a2)(void))
{
  [v2 addChildViewController_];
  v9 = [a1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = [v2 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 addSubview_];

  if (a2)
  {
    a2();
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = objc_opt_self();
    sub_1A4129FCC();
    v8 = sub_1A524CA14();

    [v7 activateConstraints_];
  }

  [a1 didMoveToParentViewController_];
}

Swift::Void __swiftcall UIViewController.px_removeFromParent()()
{
  [v0 willMoveToParentViewController_];
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 removeFromSuperview];

    [v0 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }
}

id PXSensitivityAssetMoreHelpMenuManager.init(asset:sharedAlbum:presenting:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAsset:a1 sharedAlbum:a2 presentingViewController:a3];

  return v6;
}

{
  v6 = sub_1A47E27B0(a1, a2);

  return v6;
}

void __swiftcall PXSensitivityAssetMoreHelpMenuManager.createMenuIfNeeded()(UIMenu_optional *__return_ptr retstr)
{
  v2 = v1;
  v38[2] = *MEMORY[0x1E69E9840];
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 asset];
  v9 = [v8 px_containsPotentiallySensitiveContent];

  if (v9)
  {
    v10 = [v2 asset];
    v11 = [v10 compactSCSensitivityAnalysis];

    v12 = objc_allocWithZone(MEMORY[0x1E697B670]);
    v38[0] = 0;
    v13 = [v12 initFromCompactAnalysis:v11 error:v38];
    v14 = v38[0];
    if (v13)
    {
      v15 = v13;
      v16 = objc_opt_self();
      v17 = v14;
      v18 = [v2 sharedAlbum];
      LODWORD(v16) = [v16 sharedAlbumIsOwned_];

      if (v16)
      {
        v19 = 512;
      }

      else
      {
        v19 = 768;
      }

      v20 = objc_opt_self();
      v21 = [v2 delegateHandler];
      v38[0] = 0;
      v22 = [v20 menuWithAnalysis:v15 delegate:v21 additionalOptions:v19 error:v38];

      v23 = v38[0];
      if (v22)
      {

        return;
      }

      v26 = v23;
      v25 = sub_1A5240B84();

      swift_willThrow();
    }

    else
    {
      v24 = v38[0];
      v25 = sub_1A5240B84();

      swift_willThrow();
    }

    v38[0] = v25;
    sub_1A3DBD9A0();
    sub_1A3C52C70(0, &qword_1EB12C740);
    swift_dynamicCast();
    v27 = v37;
    v28 = [v37 code];
    if (v28 == *sub_1A45D8288())
    {
    }

    else
    {
      v29 = sub_1A45D8754();
      (*(v4 + 16))(v7, v29, v3);
      v30 = v27;
      v31 = sub_1A5246F04();
      v32 = sub_1A524D244();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v36 = v4;
        v38[1] = v34;
        *v33 = 136315138;
        v35 = [v30 localizedDescription];
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      (*(v4 + 8))(v7, v3);
    }
  }
}

id PXSensitivityAssetMoreHelpMenuManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1A47E1F74(char a1, void *a2, void *a3, void *a4)
{
  v61 = a4;
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = sub_1A45D8754();
  v18 = *(v8 + 16);
  if (a1)
  {
    v58 = *(v8 + 16);
    v18(v16, v17, v7);
    v19 = a3;
    v20 = sub_1A5246F04();
    v21 = sub_1A524D264();

    v22 = os_log_type_enabled(v20, v21);
    v59 = v13;
    v60 = v7;
    v62 = v8;
    v57 = v19;
    if (v22)
    {
      v23 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v23 = 136315138;
      v24 = [v19 localizedTitle];
      if (v24)
      {
        v25 = v24;
        sub_1A524C674();
      }

      sub_1A3C2EF94();
    }

    v34 = *(v8 + 8);
    v34(v16, v7);
    v35 = v61;
    v36 = [v61 navigationController];
    v37 = v36;
    if (v36)
    {
      v38 = [v36 topViewController];
      if (v38)
      {
        v39 = v38;
        aBlock[6] = &unk_1F1B457E0;
        v40 = swift_dynamicCastObjCProtocolConditional();
        if (v40)
        {
          v41 = [v40 originTransitionType];

          if (v41 == 1)
          {

            return;
          }

          if (v41 == 2)
          {
            v42 = [v35 navigationController];
            if (v42)
            {
              v43 = v42;
              v44 = [v42 presentingViewController];
            }

            else
            {
              v44 = 0;
            }

            v52 = swift_allocObject();
            *(v52 + 16) = v44;
            aBlock[4] = sub_1A47E2D1C;
            aBlock[5] = v52;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1A3C2E0D0;
            aBlock[3] = &block_descriptor_20_5;
            v53 = _Block_copy(aBlock);
            v54 = v44;
            v55 = v37;

            [v55 dismissViewControllerAnimated:1 completion:v53];

            _Block_release(v53);
            return;
          }
        }

        else
        {
        }
      }
    }

    v45 = v59;
    v58(v59, v17, v7);
    v46 = v57;
    v47 = sub_1A5246F04();
    v48 = sub_1A524D244();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v49 = 136315138;
      v50 = [v46 localizedTitle];
      if (v50)
      {
        v51 = v50;
        sub_1A524C674();
      }

      sub_1A3C2EF94();
    }

    v34(v45, v7);
  }

  else
  {
    v18(v10, v17, v7);
    v26 = v7;
    v27 = a3;
    v28 = a2;
    v29 = sub_1A5246F04();
    v30 = sub_1A524D244();

    if (os_log_type_enabled(v29, v30))
    {
      v62 = v8;
      v31 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v31 = 136315394;
      v32 = [v27 localizedTitle];
      if (v32)
      {
        v33 = v32;
        sub_1A524C674();
      }

      sub_1A3C2EF94();
    }

    (*(v8 + 8))(v10, v26);
  }
}

id sub_1A47E276C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXSensitivityMoreHelpMenuDelegateHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A47E27B0(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___PXSensitivityAssetMoreHelpMenuManager_delegateHandler;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for PXSensitivityMoreHelpMenuDelegateHandler()) init];
  *&v2[OBJC_IVAR___PXSensitivityAssetMoreHelpMenuManager_asset] = a1;
  *&v2[OBJC_IVAR___PXSensitivityAssetMoreHelpMenuManager_sharedAlbum] = a2;
  swift_unknownObjectWeakAssign();
  v10.receiver = v2;
  v10.super_class = PXSensitivityAssetMoreHelpMenuManager;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectWeakAssign();
  return v8;
}

void sub_1A47E28AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong presentingViewController])
    {
      v1 = [v2 sharedAlbum];
      type metadata accessor for PXSensitivityContentHelper();
      sub_1A45D8420(v1);
      sub_1A45D857C(v1);
      sub_1A45D830C();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

void sub_1A47E2BB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A3C4D548(0, &qword_1EB126180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F9790;
  *(v3 + 32) = v1;
  sub_1A3C52C70(0, &qword_1EB126AC0);
  v4 = v1;
  v5 = sub_1A524CA14();

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v10[4] = sub_1A47E2D14;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3D6084C;
  v10[3] = &block_descriptor_14_6;
  v7 = _Block_copy(v10);
  v8 = v4;
  v9 = v2;

  PXSharedAlbumsDeleteSharedAlbums(v5, 0, v7);
  _Block_release(v7);
}

id sub_1A47E2D1C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_1A47E2D44(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for LemonadeAnalyticsViewTimeTracker();
  type metadata accessor for LemonadeViewTimeTracker();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47E2DDC(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  type metadata accessor for LemonadeViewTimeTracker();
  v5 = swift_allocObject();
  v5[3] = v3;
  v5[4] = 0;
  v5[2] = v4;
  *a1 = v5;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t type metadata accessor for LemonadeAnalyticsViewTimeTracker()
{
  result = qword_1EB17C0A0;
  if (!qword_1EB17C0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1A47E2EA8(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = 0;
  result[2] = a1;
  return result;
}

void sub_1A47E2EEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[0] = a2;
  v9[1] = a1;
  v3 = type metadata accessor for LemonadeAnalyticsViewTimeTracker();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v2[1];
  v9[2] = *v2;
  v9[3] = v6;
  sub_1A47E3164(v2, v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1A47E322C(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_1A47E33B8();
  sub_1A47E344C(&qword_1EB127C30, sub_1A47E33B8);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47E3164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeAnalyticsViewTimeTracker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A47E31C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1A47E322C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeAnalyticsViewTimeTracker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47E3290(uint64_t *a1, void *a2)
{
  type metadata accessor for LemonadeAnalyticsViewTimeTracker();
  result = *a1;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    result = sub_1A524EAB4();
    if ((result & 1) == 0)
    {
      sub_1A47E31C8(0, &qword_1EB1429A0, v6, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E697DA80]);
      sub_1A5247C84();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return result;
}

void sub_1A47E33B8()
{
  if (!qword_1EB127C28)
  {
    type metadata accessor for LemonadeAnalyticsViewTimeTracker();
    sub_1A47E344C(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker);
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127C28);
    }
  }
}

uint64_t sub_1A47E344C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A47E3494()
{
  type metadata accessor for LemonadeAnalyticsViewTimeTracker();
  sub_1A47E31C8(0, &qword_1EB1429A0, v0, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E697DA80]);
  v1 = sub_1A5247C84();
  (*(*v3 + 128))(v1);
}

void sub_1A47E358C()
{
  if (!qword_1EB1275A0)
  {
    sub_1A47E33B8();
    sub_1A47E344C(&qword_1EB127C30, sub_1A47E33B8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275A0);
    }
  }
}

uint64_t objectdestroy_6Tm_2()
{
  v1 = (type metadata accessor for LemonadeAnalyticsViewTimeTracker() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  sub_1A47E31C8(0, &qword_1EB1272C8, v4, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E6981E90]);
  (*(*(v5 - 8) + 8))(v3, v5);
  sub_1A47E31C8(0, &qword_1EB127258, v6, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A47E37A8()
{
  type metadata accessor for LemonadeAnalyticsViewTimeTracker();
  sub_1A47E31C8(0, &qword_1EB1429A0, v0, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E697DA80]);
  v1 = sub_1A5247C84();
  (*(*v3 + 136))(v1);
}

void sub_1A47E3880(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A47E38DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(v2 + 16) != a1 || *(v2 + 24) != a2)
  {
    sub_1A524EAB4();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47E39C4(uint64_t *a1)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  v5 = *(v1 + 24);
  *(v4 + 24) = *(v1 + 16);
  *(v4 + 32) = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47E3A58(uint64_t a1, char a2)
{
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24) == *(v2 + 16) && *(*a1 + 32) == *(v2 + 24);
  if (a2)
  {
    if (v4)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A524EAB4();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v4)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A524EAB4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47E3C18()
{
  v1 = v0;
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v22[0] = (*(*v0 + 104))();
    v22[1] = v2;
    MEMORY[0x1EEE9AC00](v22[0]);
    v21[2] = v22;
    v3 = sub_1A3D3E5DC(sub_1A3D3E6C0, v21, qword_1F17255F0);

    if (v3)
    {
      v4 = objc_opt_self();
      v5 = *MEMORY[0x1E6991CD0];
      sub_1A47E31C8(0, &qword_1EB126200, 255, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = sub_1A524C674();
      *(inited + 40) = v7;
      sub_1A3C52C70(0, &unk_1EB1265F0);
      v8 = v5;
      *(inited + 48) = sub_1A524DC24();
      sub_1A3E75770(inited);
      swift_setDeallocating();
      sub_1A3F37E0C(inited + 32);
      sub_1A3C52C70(0, &qword_1EB12B160);
      v9 = sub_1A524C3D4();

      [v4 sendEvent:v8 withPayload:v9];
    }
  }

  if (!v0[4])
  {
    v10 = objc_opt_self();
    v0[4] = [v10 startSignpost];
    v11 = *MEMORY[0x1E6991CD8];
    sub_1A47E31C8(0, &qword_1EB126200, 255, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1A52FC9F0;
    *(v12 + 32) = sub_1A524C674();
    *(v12 + 40) = v13;
    v14 = *(*v1 + 104);
    v15 = v11;
    v14();
    v16 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v17 = sub_1A524C634();

    v18 = [v16 initWithString_];

    *(v12 + 48) = v18;
    *(v12 + 56) = sub_1A524C674();
    *(v12 + 64) = v19;
    *(v12 + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    sub_1A3E75770(v12);
    swift_setDeallocating();
    sub_1A3F24E98();
    swift_arrayDestroy();
    sub_1A3C52C70(0, &qword_1EB12B160);
    v20 = sub_1A524C3D4();

    [v10 sendEvent:v15 withPayload:v20];
  }
}

void sub_1A47E4020()
{
  v1 = v0[4];
  if (v1)
  {
    v21 = objc_opt_self();
    v2 = *MEMORY[0x1E6991E90];
    sub_1A47E31C8(0, &qword_1EB126200, 255, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(inited + 32) = sub_1A524C674();
    *(inited + 40) = v4;
    v5 = *(*v0 + 104);
    v20 = v5;
    v6 = v2;
    v5();
    v7 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v8 = sub_1A524C634();

    v9 = [v7 initWithString_];

    *(inited + 48) = v9;
    sub_1A3E75770(inited);
    swift_setDeallocating();
    sub_1A3F37E0C(inited + 32);
    sub_1A3C52C70(0, &qword_1EB12B160);
    v10 = sub_1A524C3D4();

    [v21 endSignpost:v1 forEventName:v6 withPayload:v10];

    v11 = *MEMORY[0x1E6991CE0];
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1A52FC9F0;
    *(v12 + 32) = sub_1A524C674();
    *(v12 + 40) = v13;
    v14 = v11;
    v20();
    v15 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v16 = sub_1A524C634();

    v17 = [v15 initWithString_];

    *(v12 + 48) = v17;
    *(v12 + 56) = sub_1A524C674();
    *(v12 + 64) = v18;
    *(v12 + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    sub_1A3E75770(v12);
    swift_setDeallocating();
    sub_1A3F24E98();
    swift_arrayDestroy();
    v19 = sub_1A524C3D4();

    [v21 sendEvent:v14 withPayload:v19];

    v0[4] = 0;
  }
}

uint64_t sub_1A47E435C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A47E4394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A47E31C8(0, &qword_1EB126200, 255, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1A533E260;
  *(inited + 40) = 0x80000001A53EC3C0;
  result = sub_1A524CBB4();
  *(inited + 48) = result;
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x80000001A53EC3E0;
  v10 = *(a2 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1A524CFC4();
  *(inited + 72) = result;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000001A53EC400;
  if (v10 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1A524CFC4();
  *(inited + 96) = result;
  *(inited + 104) = 0xD00000000000001BLL;
  *(inited + 112) = 0x80000001A53EC420;
  if (v10 < 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1A524CFC4();
  *(inited + 120) = result;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x80000001A53EC440;
  v11 = *(a3 + 16);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1A524CFC4();
  *(inited + 144) = result;
  *(inited + 152) = 0xD00000000000001CLL;
  *(inited + 160) = 0x80000001A53EC460;
  if (v11 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1A524CFC4();
  *(inited + 168) = result;
  *(inited + 176) = 0xD00000000000001CLL;
  *(inited + 184) = 0x80000001A53EC480;
  if (v11 >= 3)
  {
    *(inited + 192) = sub_1A524CFC4();
    *(inited + 200) = 0xD000000000000019;
    *(inited + 208) = 0x80000001A53EC4A0;
    *(inited + 216) = Int.nsNumberValue.getter(a4);
    v12 = sub_1A3E75770(inited);
    swift_setDeallocating();
    sub_1A3F24E98();
    swift_arrayDestroy();
    swift_beginAccess();
    *(v4 + 16) = v12;

    objc_opt_self();
    sub_1A524C634();
    sub_1A3C52C70(0, &qword_1EB12B160);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1A47E4688(void *a1, uint64_t a2, void *a3, void *a4)
{
  sub_1A47E31C8(0, &qword_1EB126200, 255, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A531D3E0;
  *(inited + 32) = 0x697463615F617063;
  *(inited + 40) = 0xEA00000000006E6FLL;
  *(inited + 48) = a1;
  strcpy((inited + 56), "cpa_upleveled");
  *(inited + 70) = -4864;
  v9 = a1;
  *(inited + 72) = sub_1A524CBB4();
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001A53EC4F0;
  *(inited + 96) = a3;
  *(inited + 104) = 0x746E6F635F617063;
  *(inited + 112) = 0xEF65707954746E65;
  *(inited + 120) = a4;
  v10 = a3;
  v11 = a4;
  v12 = sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A3F24E98();
  swift_arrayDestroy();
  swift_beginAccess();
  *(v4 + 16) = v12;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47E4F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A3C52C70(0, &unk_1EB1265F0);
  v12 = sub_1A524DC24();
  (*(*v6 + 128))(a1, 0, a3, a4, v12, a5, a6);
}

uint64_t sub_1A47E4FF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A47E502C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = 3;
  return v0;
}

PhotosUICore::LemonadeCustomizationAnalyticsName_optional __swiftcall LemonadeCustomizationAnalyticsName.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

PhotosUICore::LemonadeCustomizationAction_optional __swiftcall LemonadeCustomizationAction.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void sub_1A47E513C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A47E51A0()
{
  if (!qword_1EB142970)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142970);
    }
  }
}

void sub_1A47E51F0()
{
  if (!qword_1EB142980)
  {
    sub_1A3C52C70(255, &qword_1EB12B160);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142980);
    }
  }
}

unint64_t sub_1A47E5278()
{
  result = qword_1EB142988;
  if (!qword_1EB142988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142988);
  }

  return result;
}

unint64_t sub_1A47E52D0()
{
  result = qword_1EB142990;
  if (!qword_1EB142990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142990);
  }

  return result;
}

unint64_t sub_1A47E5328()
{
  result = qword_1EB142998;
  if (!qword_1EB142998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142998);
  }

  return result;
}

void sub_1A47E53A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A47E31C8(319, &qword_1EB1429A0, a3, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E697DA80]);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for LemonadeCustomizationAnalyticsName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LemonadeCustomizationAnalyticsName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A47E55EC()
{
  result = qword_1EB128358;
  if (!qword_1EB128358)
  {
    sub_1A47E3880(255, &qword_1EB128350, sub_1A47E356C);
    sub_1A47E5688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128358);
  }

  return result;
}

unint64_t sub_1A47E5688()
{
  result = qword_1EB128640;
  if (!qword_1EB128640)
  {
    sub_1A47E356C(255);
    sub_1A47E33B8();
    sub_1A47E344C(&qword_1EB127C30, sub_1A47E33B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128640);
  }

  return result;
}

uint64_t sub_1A47E5794@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v3 = a2 + *(type metadata accessor for LemonadePresentationRoot() + 40);
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  sub_1A3C7A370(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);

  v4 = sub_1A524BAC4();
  a1(v4);
}

uint64_t sub_1A47E58BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  sub_1A47E7548(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v88 = v3;
  v97 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v95 = *(a1 + 16);
  v96 = &v63 - v4;
  v94 = a1;
  sub_1A3D639BC(255);
  v5 = sub_1A5248804();
  v81 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v63 - v6;
  v7 = type metadata accessor for LemonadeNavigationContext(255);
  sub_1A47E6458(255, &qword_1EB128468, sub_1A457B820);
  v9 = v8;
  v93 = *(a1 + 24);
  v10 = v93;
  v11 = sub_1A3C7A370(&qword_1EB127950, sub_1A3D639BC);
  v112 = v10;
  v113 = v11;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1A3C7A370(&qword_1EB129D48, type metadata accessor for LemonadeNavigationContext);
  v14 = sub_1A457B848();
  v105 = v5;
  v106 = v7;
  v68 = v5;
  v65 = v9;
  v107 = v9;
  v108 = WitnessTable;
  v67 = WitnessTable;
  v109 = v13;
  v110 = v14;
  v15 = v13;
  v16 = v14;
  v66 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v91 = &v63 - v18;
  sub_1A47E6458(255, &qword_1EB1288B0, sub_1A457B99C);
  v20 = v19;
  v105 = v5;
  v106 = v7;
  v64 = v7;
  v107 = v9;
  v108 = WitnessTable;
  v109 = v13;
  v110 = v16;
  v90 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_1A457B9F4();
  v23 = sub_1A457BA48();
  v105 = OpaqueTypeMetadata2;
  v106 = &type metadata for LemonadeNavigationContext.SheetContent;
  v74 = OpaqueTypeMetadata2;
  v107 = v20;
  v108 = OpaqueTypeConformance2;
  v70 = v20;
  v73 = OpaqueTypeConformance2;
  v109 = v22;
  v110 = v23;
  v72 = v22;
  v71 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v80 = v24;
  v85 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v63 - v25;
  sub_1A457B820(255);
  v27 = v26;
  v76 = v26;
  v105 = OpaqueTypeMetadata2;
  v106 = &type metadata for LemonadeNavigationContext.SheetContent;
  v107 = v20;
  v108 = OpaqueTypeConformance2;
  v109 = v22;
  v110 = v23;
  v28 = swift_getOpaqueTypeConformance2();
  v78 = v28;
  v77 = sub_1A457B8EC();
  v105 = v24;
  v106 = v7;
  v107 = v27;
  v108 = v28;
  v109 = v15;
  v110 = v77;
  v83 = swift_getOpaqueTypeMetadata2();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v75 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v79 = &v63 - v31;
  swift_getKeyPath();
  v32 = v89;
  v33 = v88;
  sub_1A524BAA4();
  v34 = v69;
  v35 = v95;
  v36 = v93;
  sub_1A524A964();

  v37 = v96;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v38 = *(v97 + 8);
  v97 += 8;
  v87 = v38;
  v38(v37, v33);
  v98 = v105;
  v99 = v106;
  v100 = v107;
  v39 = sub_1A47E6BA4(v32, v35, v36);
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1A47E7874;
  *(v40 + 24) = v39;
  v64 = swift_checkMetadataState();
  swift_checkMetadataState();
  v41 = v68;
  sub_1A524B004();

  (*(v81 + 8))(v34, v41);
  v42 = v96;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v87(v42, v33);
  v43 = v107;
  v44 = v108;
  v98 = v105;
  v99 = v106;
  v100 = v107;
  v101 = v108;
  v102 = v109;
  v103 = v110;
  v104 = v111;
  v45 = sub_1A47E6BA4(v32, v95, v93);
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1A47E77F0;
  *(v46 + 24) = v45;
  swift_checkMetadataState();
  v47 = v74;
  v48 = v91;
  sub_1A524B004();

  sub_1A3DD2224(v43, v44);
  (*(v84 + 8))(v48, v47);
  v49 = v89;
  v50 = v96;
  v51 = v88;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v87(v50, v51);
  v98 = v105;
  v99 = v106;
  v100 = v107;
  v52 = sub_1A47E6BA4(v49, v95, v93);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1A47E75AC;
  *(v53 + 24) = v52;
  swift_checkMetadataState();
  v54 = v75;
  v55 = v80;
  v56 = v92;
  sub_1A524AB94();

  (*(v85 + 8))(v56, v55);
  v57 = v82;
  v58 = *(v82 + 16);
  v59 = v79;
  v60 = v83;
  v58(v79, v54, v83);
  v61 = *(v57 + 8);
  v61(v54, v60);
  v58(v86, v59, v60);
  return (v61)(v59, v60);
}

void sub_1A47E6458(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

double sub_1A47E64BC@<D0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A457B820(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LemonadeNavigationDestinationView();
  sub_1A3C7A370(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);

  LemonadeNavigationContainer.init(navigationContext:content:)(v14, sub_1A47E78F0, v13);
  v15 = (v13 + *(v11 + 44));
  *v15 = sub_1A457F3D8;
  v15[1] = a1;
  v15[2] = 0;
  v15[3] = 0;
  v16 = v3 + *(a2 + 40);
  v18 = *v16;
  v17 = *(v16 + 8);
  v19 = *(v16 + 16);
  v20 = *(v16 + 17);

  if (v20 != 1)
  {
    sub_1A457F3E0(v18, v17, v19, 0);
    sub_1A524D254();
    v21 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3EF9960(v18, v17, v19, 0);
    v29 = *(v7 + 8);
    v29(v9, v6);
    v30 = v32;

    sub_1A524D254();
    v22 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3EF9960(v18, v17, v19, 0);
    v29(v9, v6);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v23 = v31;
  sub_1A457F3EC(v13, v31, sub_1A457B820);
  sub_1A47E6458(0, &qword_1EB128468, sub_1A457B820);
  v25 = (v23 + *(v24 + 36));
  v26 = v33;
  *v25 = v32;
  v25[1] = v26;
  result = *&v34;
  v25[2] = v34;
  return result;
}

double sub_1A47E6868@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A457B99C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 32);
  v31 = a1;
  sub_1A4546738(0, 0, v14, sub_1A47E786C, v13);
  v15 = v3 + *(a2 + 40);
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (*(v15 + 17) != 1)
  {

    sub_1A524D254();
    v19 = sub_1A524A014();
    v30 = a3;
    v20 = v19;
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3EF9960(v17, v16, v18, 0);
    v21 = *(v8 + 8);
    v21(v10, v7);
    v28 = v7;
    v29 = v32;

    sub_1A524D254();
    v22 = sub_1A524A014();
    sub_1A5246DF4();

    a3 = v30;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3EF9960(v17, v16, v18, 0);
    v21(v10, v28);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A457F3EC(v13, a3, sub_1A457B99C);
  sub_1A47E6458(0, &qword_1EB1288B0, sub_1A457B99C);
  v24 = (a3 + *(v23 + 36));
  v25 = v33;
  *v24 = v32;
  v24[1] = v25;
  result = *&v34;
  v24[2] = v34;
  return result;
}

uint64_t sub_1A47E6BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadePresentationRoot();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return v12;
}

uint64_t sub_1A47E6D0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(a1 + 16))(v10);
  v3 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v7 = sub_1A524B8E4();
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  *a2 = v7;
  return result;
}

uint64_t sub_1A47E6E04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v6);

  return sub_1A487864C(v6, a1, 0, a2);
}

void sub_1A47E6EB0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A47E7548(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
    if (v1 <= 0x3F)
    {
      sub_1A47E7548(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A47E6FB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  sub_1A47E7548(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v12;
  v14 = *(*(v8 - 8) + 64) + 7;
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((v14 + (v13 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v15 <= 3)
  {
    v16 = ((a2 - v11 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v15);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v11 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v15);
    if (*(a1 + v15))
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v7 == v11)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, v5);
  }

  else
  {
    v24 = (a1 + v13) & ~v12;
    if (v10 == v11)
    {
      v25 = *(v9 + 48);

      return v25(v24);
    }

    else
    {
      v26 = *(((v14 + v24) & 0xFFFFFFFFFFFFFFF8) + 17);
      if (v26 > 1)
      {
        return (v26 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1A47E7248(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v30 = *(v7 - 8);
  v8 = *(v30 + 84);
  sub_1A47E7548(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v30 + 64);
  if (v11 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v9 - 8) + 64);
  if (v13 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v13;
  }

  v17 = v12 + v14;
  v18 = (v12 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v16 >= a3)
  {
    v23 = 0;
    if (v16 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v16 >= a2)
    {
LABEL_20:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v8 == v16)
      {
        v26 = *(v30 + 56);

        v26(a1, a2, v8, v7);
      }

      else
      {
        v27 = (a1 + v17) & ~v14;
        if (v11 == v16)
        {
          v28 = *(v10 + 56);

          v28(v27, a2);
        }

        else
        {
          v29 = (v19 + v27) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v29 + 16) = 0;
            *v29 = (a2 - 255);
            *(v29 + 8) = 0;
          }

          else
          {
            *(v29 + 17) = -a2;
          }
        }
      }

      return;
    }
  }

  v24 = ~v16 + a2;
  bzero(a1, v20);
  if (v20 <= 3)
  {
    v25 = HIWORD(v24) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_30:
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void sub_1A47E7548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A47E75AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadeNavigationDestinationView();
  sub_1A3C7A370(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);

  LemonadeNavigationContainer.init(navigationContext:content:)(v4, sub_1A47E790C, a2);
  sub_1A457B820(0);
  v6 = (a2 + *(v5 + 36));
  *v6 = sub_1A457F654;
  v6[1] = a1;
  v6[2] = 0;
  v6[3] = 0;
}

uint64_t objectdestroy_23Tm_1()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for LemonadePresentationRoot() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  v4 = v2[11];
  sub_1A47E7548(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  sub_1A3EF9960(*(v3 + v2[12]), *(v3 + v2[12] + 8), *(v3 + v2[12] + 16), *(v3 + v2[12] + 17));

  return swift_deallocObject();
}

uint64_t sub_1A47E7910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5249B24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A47EE6B4();
  v9 = v8;
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EE5EC();
  v13 = v12;
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 + *(type metadata accessor for AccountViewTipModifier(0) + 24));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v36) = v16;
  v37 = v17;
  sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v33 == 1)
  {
    v28 = sub_1A524B414();
    v40 = v28;
    sub_1A47EEA30(0, &qword_1EB124968, &type metadata for AccountViewTip, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v38 = &type metadata for AccountViewTip;
    v39 = sub_1A3D810D4();
    v18 = *(a1 + 8);
    v19 = *(a1 + 16);
    v33 = *a1;
    v34 = v18;
    v35 = v19;
    sub_1A47EEA30(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    sub_1A524B924();
    v29 = v9;
    *v7 = sub_1A524B6E4();
    (*(v5 + 104))(v7, *MEMORY[0x1E697C8C0], v4);
    sub_1A524A834();

    (*(v5 + 8))(v7, v4);

    sub_1A47EDCA0(&v36, sub_1A47EE9FC);
    v20 = [objc_opt_self() secondaryLabelColor];
    v33 = sub_1A524B284();
    v36 = MEMORY[0x1E69815C0];
    v37 = MEMORY[0x1E6981580];
    swift_getOpaqueTypeConformance2();
    v21 = v29;
    v22 = v30;
    sub_1A524A854();

    (*(v31 + 8))(v11, v21);
    v23 = v32;
    (*(v32 + 32))(a2, v22, v13);
    v24 = 0;
    v25 = v23;
  }

  else
  {
    v24 = 1;
    v25 = v32;
  }

  return (*(v25 + 56))(a2, v24, 1, v13);
}

uint64_t sub_1A47E7DE0()
{
  sub_1A524CC54();
  *(v0 + 40) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47E7E74, v2, v1);
}

uint64_t sub_1A47E7E74()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for AccountViewTipModifier(0) + 24));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 48) = 1;
  sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A47E7F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22[1] = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1A47EE47C(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BC74();
  v14 = v13;
  v15 = &v11[*(v9 + 36)];
  sub_1A47E7910(v4, v15);
  sub_1A47EE558();
  v17 = (v15 + *(v16 + 36));
  *v17 = v12;
  v17[1] = v14;
  sub_1A47EE4C4();
  (*(*(v18 - 8) + 16))(v11, a1, v18);
  sub_1A47ED8A8(v4, v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountViewTipModifier);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_1A47EDD00(v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AccountViewTipModifier);
  sub_1A47EE91C();
  sub_1A524A634();

  return sub_1A47EDA10(v11, sub_1A47EE47C);
}

uint64_t sub_1A47E8168@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31578(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProfileButton(0);
  sub_1A47ED8A8(v1 + *(v10 + 36), v9, sub_1A3F31578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5247E04();
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

void sub_1A47E8388(uint64_t a1@<X8>)
{
  v2 = v1;
  v96 = sub_1A5247E04();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v88 - v6;
  v105 = sub_1A5243524();
  v98 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v97 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EA9D4(0);
  v99 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EBEB4();
  v103 = *(v11 - 8);
  v104 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EC304(0);
  v106 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EC34C();
  v109 = *(v15 - 8);
  v110 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1A5246E54();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProfileButton(0);
  v95 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - v22;
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A47EAFFC(&qword_1EB12A660, type metadata accessor for ProfileButton);
  v112 = v19;
  MEMORY[0x1A5905890](v19, v27);
  v28 = sub_1A5246E94();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v26, 1, v28);
  v111 = a1;
  v113 = v2;
  if (v30 == 1)
  {
    sub_1A47EDCA0(v26, sub_1A3E73E5C);
  }

  else
  {
    sub_1A47ED8A8(v2, v23, type metadata accessor for ProfileButton);
    sub_1A5246E44();
    v31 = sub_1A5246E84();
    v89 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v32 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v114 = v88;
      *v32 = 136446210;
      sub_1A524A694();
      sub_1A47EDCA0(v23, type metadata accessor for ProfileButton);
      sub_1A3C2EF94();
    }

    (*(v90 + 8))(v18, v91);
    sub_1A47EDCA0(v23, type metadata accessor for ProfileButton);
    (*(v29 + 8))(v26, v28);
  }

  *v10 = sub_1A524BC74();
  *(v10 + 1) = v33;
  sub_1A47EC514();
  sub_1A47E90E4(v2, &v10[*(v34 + 44)]);
  v35 = v2 + *(v112 + 64);
  v36 = *v35;
  v37 = *(v35 + 8);
  v118 = v36;
  v119 = v37;
  sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v91 = v38;
  sub_1A524B6C4();
  v39 = v114;
  v40 = v115;
  v41 = v116;
  sub_1A47EAB00(0, &qword_1EB1239F0, sub_1A47EAB84, type metadata accessor for AccountViewTipModifier, MEMORY[0x1E697E830]);
  v43 = &v10[*(v42 + 36)];
  *v43 = v39;
  *(v43 + 1) = v40;
  v43[16] = v41;
  v44 = type metadata accessor for AccountViewTipModifier(0);
  sub_1A5247C74();
  v45 = &v43[*(v44 + 24)];
  v118 = 0;
  sub_1A524B694();
  v46 = v115;
  *v45 = v114;
  *(v45 + 1) = v46;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v47 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v47 profileButtonShapeOutset];
  v49 = v48;

  sub_1A47EAA1C();
  v51 = &v10[*(v50 + 36)];
  *v51 = -v49;
  *(v51 + 8) = 0;
  v52 = sub_1A524BC14();
  v54 = v53;
  v55 = v99;
  v56 = &v10[*(v99 + 36)];
  sub_1A47EA1BC(v56);
  sub_1A47EB124();
  v58 = (v56 + *(v57 + 36));
  *v58 = v52;
  v58[1] = v54;
  v59 = v92;
  sub_1A47E8168(v92);
  v60 = v94;
  v61 = v93;
  v62 = v96;
  (*(v94 + 104))(v93, *MEMORY[0x1E697DBA8], v96);
  sub_1A5247DF4();
  v63 = *(v60 + 8);
  v63(v61, v62);
  v63(v59, v62);
  v114 = sub_1A524B3A4();
  sub_1A5248204();
  v64 = v97;
  sub_1A5243514();
  v65 = sub_1A47EBF88();
  v66 = sub_1A47EAFFC(&unk_1EB1290A0, MEMORY[0x1E69C2500]);
  v67 = v100;
  v68 = v105;
  sub_1A524A944();
  (*(v98 + 8))(v64, v68);
  sub_1A47EDA10(v10, sub_1A47EA9D4);
  v114 = sub_1A3C38BD4();
  v115 = v69;
  sub_1A3D5F9DC();
  v70 = sub_1A524A464();
  v72 = v71;
  LOBYTE(v59) = v73;
  v114 = v55;
  v115 = v68;
  v116 = v65;
  v117 = v66;
  swift_getOpaqueTypeConformance2();
  v74 = v107;
  v75 = v104;
  sub_1A524AC84();
  sub_1A3E04DF4(v70, v72, v59 & 1);

  (*(v103 + 8))(v67, v75);
  v76 = v113;
  v77 = (v113 + *(v112 + 60));
  v78 = *v77;
  v79 = *(v77 + 1);
  LOBYTE(v114) = v78;
  v115 = v79;
  sub_1A524B6A4();
  LOBYTE(v114) = v118;
  v80 = v102;
  sub_1A47ED8A8(v76, v102, type metadata accessor for ProfileButton);
  v81 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v82 = swift_allocObject();
  sub_1A47EDD00(v80, v82 + v81, type metadata accessor for ProfileButton);
  sub_1A47EC3E4();
  v83 = v108;
  sub_1A524B144();

  sub_1A47EDA10(v74, sub_1A47EC304);
  sub_1A47ED8A8(v113, v80, type metadata accessor for ProfileButton);
  v84 = swift_allocObject();
  sub_1A47EDD00(v80, v84 + v81, type metadata accessor for ProfileButton);
  v85 = v111;
  (*(v109 + 32))(v111, v83, v110);
  sub_1A47EB044(0, &qword_1EB123E28, sub_1A47EC34C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  v87 = (v85 + *(v86 + 36));
  *v87 = 0;
  v87[1] = 0;
  v87[2] = sub_1A47EDBE8;
  v87[3] = v84;
}

uint64_t sub_1A47E90E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  sub_1A47EADD4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for ProfileButton(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A47EAD20();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  sub_1A47ED8A8(a1, &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileButton);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_1A47EDD00(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for ProfileButton);
  type metadata accessor for ProfileIcon(0);
  sub_1A47EC22C(qword_1EB16F080, type metadata accessor for ProfileIcon);
  sub_1A524B704();
  sub_1A47E99C0(v8);
  v22 = *(v14 + 16);
  v22(v16, v19, v13);
  sub_1A47EED90(v8, v5, sub_1A47EADD4);
  v23 = v28;
  v22(v28, v16, v13);
  sub_1A47EACB0();
  sub_1A47EED90(v5, &v23[*(v24 + 48)], sub_1A47EADD4);
  sub_1A47EDA10(v8, sub_1A47EADD4);
  v25 = *(v14 + 8);
  v25(v19, v13);
  sub_1A47EDA10(v5, sub_1A47EADD4);
  return (v25)(v16, v13);
}

uint64_t sub_1A47E945C(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A524CC54();
  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  sub_1A3D4D930(0, 0, v8, &unk_1A5363728, v11);

  v13 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 24);

  if ((a1 & 1) == 0)
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v13, 0);
    result = (*(v3 + 8))(v5, v2);
    v13 = v16[1];
  }

  if (v13)
  {
    sub_1A5245A84();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A47E9698()
{
  v1 = sub_1A5247634();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47E9788, v3, v2);
}

uint64_t sub_1A47E9788()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  v5 = PXDisplayCollectionDetailedCountsMake(v4);
  (*(v3 + 104))(v1, *MEMORY[0x1E6982AE0], v2, v5);
  sub_1A3D810D4();
  sub_1A5247424();
  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A47E9858()
{
  v0 = sub_1A5247E14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524A274();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = 0x4040000000000000;
  (*(v1 + 104))(v3, *MEMORY[0x1E697DC28], v0, v5);
  sub_1A52434F4();
  (*(v1 + 8))(v3, v0);
  sub_1A3F93828();
  return sub_1A52480B4();
}

uint64_t sub_1A47E99C0@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v62 = type metadata accessor for ProfileButton(0);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = v2;
  v61 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1A52492A4();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EEA80();
  v58 = v5;
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  v10 = sub_1A52443B4();
  v53 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EB648(0, &qword_1EB128990, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697BF30]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - v16;
  sub_1A47EAB00(0, &qword_1EB1231C0, sub_1A47EAE70, sub_1A43D0964, MEMORY[0x1E697E830]);
  v63 = *(v18 - 8);
  v64 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = v1;
  v22 = sub_1A47EC57C();
  if ((v22 & 0x100000000) != 0)
  {
    v49 = v64;
    v50 = *(v63 + 56);
    v51 = v65;

    return v50(v51, 1, 1, v49);
  }

  else
  {
    LODWORD(v66) = v22;
    BYTE4(v66) = 0;
    v68 = 1065353216;
    sub_1A47EEDF8();
    sub_1A5248064();
    sub_1A3C52C70(0, &unk_1EB120A50);
    v23 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v23 minimumDisplayedProgress];

    v52 = v21;
    [*v21 isPaused];
    sub_1A524B3C4();
    sub_1A52492B4();

    sub_1A4775C00();
    sub_1A47EAFFC(&qword_1EB128FA8, MEMORY[0x1E69C2E80]);
    sub_1A524A8B4();
    (*(v53 + 8))(v12, v10);
    (*(v15 + 8))(v17, v14);
    sub_1A5249294();
    sub_1A524BD54();
    v24 = sub_1A47EAFFC(&qword_1EB128030, MEMORY[0x1E697F260]);
    v25 = v57;
    sub_1A5247D44();

    (*(v55 + 8))(v4, v25);
    v26 = v56;
    v27 = v58;
    (*(v56 + 16))(v54, v9, v58);
    v66 = v25;
    v67 = v24;
    swift_getOpaqueTypeConformance2();
    v28 = sub_1A5248264();
    (*(v26 + 8))(v9, v27);
    sub_1A47EAB00(0, &qword_1EB128680, sub_1A47EAEFC, sub_1A400F5B4, MEMORY[0x1E697E830]);
    *&v20[*(v29 + 36)] = v28;
    v30 = v61;
    sub_1A47ED8A8(v52, v61, type metadata accessor for ProfileButton);
    v31 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v32 = swift_allocObject();
    sub_1A47EDD00(v30, v32 + v31, type metadata accessor for ProfileButton);
    sub_1A47EB388(0, &qword_1EB128368, &qword_1EB128680, sub_1A47EAEFC);
    v34 = &v20[*(v33 + 36)];
    *v34 = sub_1A47EEE4C;
    *(v34 + 1) = v32;
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    v35 = sub_1A524A064();
    sub_1A5247BC4();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_1A47EAE70();
    v45 = &v20[*(v44 + 36)];
    *v45 = v35;
    *(v45 + 1) = v37;
    *(v45 + 2) = v39;
    *(v45 + 3) = v41;
    *(v45 + 4) = v43;
    v45[40] = 0;
    v46 = v64;
    v47 = v65;
    *&v20[*(v64 + 36)] = 0xBFF0000000000000;
    sub_1A3D21DFC(v20, v47);
    return (*(v63 + 56))(v47, 0, 1, v46);
  }
}

uint64_t sub_1A47EA1BC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProfileButton(0);
  v4 = *(v3 - 1);
  v72 = v3;
  v73 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v74 = v5;
  v75 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1A52492A4();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EEA80();
  v68 = v8;
  v66 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v61 - v11;
  sub_1A47EB2FC();
  v69 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EB044(0, &qword_1EB123E48, sub_1A47EB25C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  v76 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v61 - v16;
  v17 = sub_1A5249234();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 32);
  v22 = v1;
  v23 = *(v1 + 40);

  if ((v23 & 1) == 0)
  {
    sub_1A524D254();
    v24 = v15;
    v25 = a1;
    v26 = sub_1A524A014();
    sub_1A5246DF4();

    a1 = v25;
    v15 = v24;
    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v21, 0);
    (*(v18 + 8))(v20, v17);
    v21 = v78;
  }

  if (v21 && (v27 = sub_1A3D35CBC(), , v27 != 4))
  {
    v30 = v70;
    v62 = v22;
    sub_1A47EC7A0(v27, v70);
    sub_1A5249294();
    sub_1A524BD24();
    sub_1A524BCD4();

    v31 = sub_1A47EAFFC(&qword_1EB128030, MEMORY[0x1E697F260]);
    v61 = a1;
    v32 = v31;
    v33 = v64;
    v34 = v67;
    sub_1A5247D44();

    (*(v65 + 8))(v7, v34);
    v35 = v66;
    v36 = v68;
    (*(v66 + 16))(v63, v33, v68);
    v78 = v34;
    v79 = v32;
    swift_getOpaqueTypeConformance2();
    v37 = sub_1A5248264();
    (*(v35 + 8))(v33, v36);
    v68 = v15;
    sub_1A47EAB00(0, &qword_1EB123D20, sub_1A47EB41C, sub_1A400F5B4, MEMORY[0x1E697E830]);
    *(v30 + *(v38 + 36)) = v37;
    v39 = v72;
    v40 = v62;
    v41 = (v62 + *(v72 + 14));
    v42 = *v41;
    v43 = v41[1];
    v78 = v42;
    v79 = v43;
    sub_1A47EEA30(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v44 = v77;
    sub_1A524BE94();
    v46 = v45;
    v48 = v47;
    sub_1A47EB388(0, &qword_1EB1236E8, &qword_1EB123D20, sub_1A47EB41C);
    v50 = (v30 + *(v49 + 36));
    *v50 = v44;
    v50[1] = v44;
    v50[2] = v46;
    v50[3] = v48;
    v51 = *(v40 + *(v39 + 12));
    v52 = (v30 + *(v69 + 36));
    *v52 = v51;
    v52[1] = -v51;
    LOBYTE(v78) = v27;
    v72 = type metadata accessor for ProfileButton;
    v53 = v75;
    sub_1A47ED8A8(v40, v75, type metadata accessor for ProfileButton);
    v54 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v55 = swift_allocObject();
    sub_1A47EDD00(v53, v55 + v54, type metadata accessor for ProfileButton);
    sub_1A47EB804();
    sub_1A3D3743C();
    v56 = v71;
    sub_1A524B144();

    sub_1A47EDA10(v30, sub_1A47EB2FC);
    sub_1A47ED8A8(v62, v53, v72);
    v57 = swift_allocObject();
    a1 = v61;
    sub_1A47EDD00(v53, v57 + v54, type metadata accessor for ProfileButton);
    v58 = v76;
    v59 = (v56 + *(v76 + 36));
    *v59 = sub_1A47EF084;
    v59[1] = v57;
    v15 = v68;
    v59[2] = 0;
    v59[3] = 0;
    sub_1A3D21D60(v56, a1);
    v29 = v58;
    v28 = 0;
  }

  else
  {
    v28 = 1;
    v29 = v76;
  }

  return (*(v15 + 56))(a1, v28, 1, v29);
}

void sub_1A47EAA1C()
{
  if (!qword_1EB123500)
  {
    sub_1A47EAB00(255, &qword_1EB1239F0, sub_1A47EAB84, type metadata accessor for AccountViewTipModifier, MEMORY[0x1E697E830]);
    sub_1A47EE324(255, &qword_1EB127C88, sub_1A47EB0D0, MEMORY[0x1E69817C8], MEMORY[0x1E697FD48]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123500);
    }
  }
}

void sub_1A47EAB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A47EAB84()
{
  if (!qword_1EB121510)
  {
    sub_1A47EAC18(255);
    sub_1A47EAFFC(&qword_1EB121050, sub_1A47EAC18);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121510);
    }
  }
}

void sub_1A47EAC4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A47EACB0()
{
  if (!qword_1EB121B68)
  {
    sub_1A47EAD20();
    sub_1A47EADD4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB121B68);
    }
  }
}

void sub_1A47EAD20()
{
  if (!qword_1EB121B70)
  {
    type metadata accessor for ProfileIcon(255);
    sub_1A47EC22C(qword_1EB16F080, type metadata accessor for ProfileIcon);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121B70);
    }
  }
}

void sub_1A47EADD4()
{
  if (!qword_1EB1231B8)
  {
    sub_1A47EAB00(255, &qword_1EB1231C0, sub_1A47EAE70, sub_1A43D0964, MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1231B8);
    }
  }
}

void sub_1A47EAE70()
{
  if (!qword_1EB1233F0)
  {
    sub_1A47EB388(255, &qword_1EB128368, &qword_1EB128680, sub_1A47EAEFC);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1233F0);
    }
  }
}

void sub_1A47EAEFC()
{
  if (!qword_1EB1275F0)
  {
    sub_1A47EB648(255, &qword_1EB128990, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697BF30]);
    sub_1A52443B4();
    sub_1A4775C00();
    sub_1A47EAFFC(&qword_1EB128FA8, MEMORY[0x1E69C2E80]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275F0);
    }
  }
}

uint64_t sub_1A47EAFFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A47EB044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A47EB0D0()
{
  result = qword_1EB127430;
  if (!qword_1EB127430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127430);
  }

  return result;
}

void sub_1A47EB124()
{
  if (!qword_1EB122F18)
  {
    sub_1A47EB1CC();
    sub_1A47EBD40(&qword_1EB123E38, sub_1A47EB1CC, sub_1A47EBDB0);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122F18);
    }
  }
}

void sub_1A47EB1CC()
{
  if (!qword_1EB123E40)
  {
    sub_1A47EB044(255, &qword_1EB123E48, sub_1A47EB25C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123E40);
    }
  }
}

void sub_1A47EB25C()
{
  if (!qword_1EB121DA0)
  {
    sub_1A47EB2FC();
    sub_1A47EB804();
    sub_1A3D3743C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DA0);
    }
  }
}

void sub_1A47EB2FC()
{
  if (!qword_1EB123338)
  {
    sub_1A47EB388(255, &qword_1EB1236E8, &qword_1EB123D20, sub_1A47EB41C);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123338);
    }
  }
}

void sub_1A47EB388(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A47EAB00(255, a3, a4, sub_1A400F5B4, MEMORY[0x1E697E830]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A47EB41C()
{
  if (!qword_1EB121CF0)
  {
    sub_1A47EAB00(255, &qword_1EB122458, sub_1A47EB4B8, sub_1A47EB72C, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121CF0);
    }
  }
}

void sub_1A47EB4EC()
{
  if (!qword_1EB1275E8)
  {
    sub_1A47EB5B4();
    sub_1A47EC07C(&qword_1EB128318, sub_1A47EB5B4, sub_1A43D4E28, sub_1A47EB6A8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275E8);
    }
  }
}

void sub_1A47EB5B4()
{
  if (!qword_1EB128310)
  {
    sub_1A429B8A0();
    sub_1A47EB648(255, &qword_1EB127AC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E69805F0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128310);
    }
  }
}

void sub_1A47EB648(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void *))
{
  if (!*a2)
  {
    v10[6] = v5;
    v10[7] = v6;
    v10[0] = a3;
    v10[1] = a3;
    v10[2] = a4;
    v10[3] = a4;
    v8 = a5(0, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A47EB6A8()
{
  result = qword_1EB127AC8;
  if (!qword_1EB127AC8)
  {
    sub_1A47EB648(255, &qword_1EB127AC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E69805F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127AC8);
  }

  return result;
}

void sub_1A47EB760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A47EB804()
{
  result = qword_1EB123340;
  if (!qword_1EB123340)
  {
    sub_1A47EB2FC();
    sub_1A47EB884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123340);
  }

  return result;
}

unint64_t sub_1A47EB884()
{
  result = qword_1EB1236F0;
  if (!qword_1EB1236F0)
  {
    sub_1A47EB388(255, &qword_1EB1236E8, &qword_1EB123D20, sub_1A47EB41C);
    sub_1A47EB930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1236F0);
  }

  return result;
}

unint64_t sub_1A47EB930()
{
  result = qword_1EB123D28;
  if (!qword_1EB123D28)
  {
    sub_1A47EAB00(255, &qword_1EB123D20, sub_1A47EB41C, sub_1A400F5B4, MEMORY[0x1E697E830]);
    sub_1A47EBD40(&qword_1EB121CF8, sub_1A47EB41C, sub_1A47EBA68);
    sub_1A47EAFFC(&qword_1EB127C68, sub_1A400F5B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123D28);
  }

  return result;
}

unint64_t sub_1A47EBA68()
{
  result = qword_1EB122460;
  if (!qword_1EB122460)
  {
    sub_1A47EAB00(255, &qword_1EB122458, sub_1A47EB4B8, sub_1A47EB72C, MEMORY[0x1E697F960]);
    sub_1A47EBB2C();
    sub_1A47EBC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122460);
  }

  return result;
}

unint64_t sub_1A47EBB2C()
{
  result = qword_1EB1226F0;
  if (!qword_1EB1226F0)
  {
    sub_1A47EB4B8(255);
    sub_1A47EB5B4();
    sub_1A47EC07C(&qword_1EB128318, sub_1A47EB5B4, sub_1A43D4E28, sub_1A47EB6A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1226F0);
  }

  return result;
}

unint64_t sub_1A47EBC18()
{
  result = qword_1EB1227F0;
  if (!qword_1EB1227F0)
  {
    sub_1A47EB72C(255);
    sub_1A47EBC90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1227F0);
  }

  return result;
}

unint64_t sub_1A47EBC90()
{
  result = qword_1EB128778;
  if (!qword_1EB128778)
  {
    sub_1A47EB7C8(255);
    sub_1A47EAFFC(&qword_1EB128AC0, sub_1A421FEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128778);
  }

  return result;
}

uint64_t sub_1A47EBD40(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A47EBDB0()
{
  result = qword_1EB123E50;
  if (!qword_1EB123E50)
  {
    sub_1A47EB044(255, &qword_1EB123E48, sub_1A47EB25C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A47EB2FC();
    sub_1A47EB804();
    sub_1A3D3743C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E50);
  }

  return result;
}

void sub_1A47EBEB4()
{
  if (!qword_1EB121F00)
  {
    sub_1A47EA9D4(255);
    sub_1A5243524();
    sub_1A47EBF88();
    sub_1A47EAFFC(&unk_1EB1290A0, MEMORY[0x1E69C2500]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F00);
    }
  }
}

unint64_t sub_1A47EBF88()
{
  result = qword_1EB123270;
  if (!qword_1EB123270)
  {
    sub_1A47EA9D4(255);
    sub_1A47EC07C(&qword_1EB123508, sub_1A47EAA1C, sub_1A47EC108, sub_1A47EC274);
    sub_1A47EAFFC(&qword_1EB122F20, sub_1A47EB124);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123270);
  }

  return result;
}

uint64_t sub_1A47EC07C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A47EC108()
{
  result = qword_1EB1239F8;
  if (!qword_1EB1239F8)
  {
    sub_1A47EAB00(255, &qword_1EB1239F0, sub_1A47EAB84, type metadata accessor for AccountViewTipModifier, MEMORY[0x1E697E830]);
    sub_1A47EAFFC(&qword_1EB121518, sub_1A47EAB84);
    sub_1A47EC22C(qword_1EB186E58, type metadata accessor for AccountViewTipModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1239F8);
  }

  return result;
}

uint64_t sub_1A47EC22C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A47EC274()
{
  result = qword_1EB127C90;
  if (!qword_1EB127C90)
  {
    sub_1A47EE324(255, &qword_1EB127C88, sub_1A47EB0D0, MEMORY[0x1E69817C8], MEMORY[0x1E697FD48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127C90);
  }

  return result;
}

void sub_1A47EC34C()
{
  if (!qword_1EB121D98)
  {
    sub_1A47EC304(255);
    sub_1A47EC3E4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D98);
    }
  }
}

unint64_t sub_1A47EC3E4()
{
  result = qword_1EB123F30;
  if (!qword_1EB123F30)
  {
    sub_1A47EC304(255);
    sub_1A47EA9D4(255);
    sub_1A5243524();
    sub_1A47EBF88();
    sub_1A47EAFFC(&unk_1EB1290A0, MEMORY[0x1E69C2500]);
    swift_getOpaqueTypeConformance2();
    sub_1A47EAFFC(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F30);
  }

  return result;
}

void sub_1A47EC514()
{
  if (!qword_1EB124408)
  {
    sub_1A47EAC18(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124408);
    }
  }
}

unint64_t sub_1A47EC57C()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &unk_1EB120A50);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v5 simulateDisplayedProgress])
  {
    [v5 simulatedProgressValue];
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);

    if ((v8 & 1) == 0)
    {
      sub_1A524D254();
      v10 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      j__swift_release(v7, 0);
      v9 = (*(v2 + 8))(v4, v1);
      v7 = v17[1];
    }

    if (!v7 || (v11 = v0, v12 = (*(*v7 + 192))(v9), , (v12 & 1) == 0))
    {

      v15 = 0;
      v14 = 1;
      return v15 | (v14 << 32);
    }

    [*v11 progress];
  }

  v13 = v6;

  v14 = 0;
  v15 = v13;
  return v15 | (v14 << 32);
}

uint64_t sub_1A47EC7A0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_1A47EAB00(0, &qword_1EB1429F0, sub_1A47EB4B8, sub_1A47EB72C, MEMORY[0x1E697F948]);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  sub_1A47EB760(0, &qword_1EB1429F8, sub_1A47EB4EC, MEMORY[0x1E697F948]);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v39 - v8;
  sub_1A47EB4B8(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524B554();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EB4EC();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v33 = sub_1A524B464();
      type metadata accessor for ProfileButton(0);
      sub_1A524BC74();
      sub_1A52481F4();
      *(v54 + 6) = v58;
      *(&v54[1] + 6) = v59;
      *(&v54[2] + 6) = v60;
      *v56 = v33;
      *&v56[8] = 256;
      *&v56[10] = v54[0];
      *&v56[26] = v54[1];
      *&v56[42] = v54[2];
      *&v56[56] = *(&v60 + 1);
      v49 = *v56;
      v50 = *&v56[16];
      v51 = *&v56[32];
      v52 = *&v56[48];
      v57 = 0;
      LOBYTE(v53) = 0;
    }

    else
    {
      v36 = sub_1A524B3C4();
      type metadata accessor for ProfileButton(0);
      sub_1A524BC74();
      sub_1A52481F4();
      *(v54 + 6) = v58;
      *(&v54[1] + 6) = v59;
      *(&v54[2] + 6) = v60;
      *v56 = v36;
      *&v56[8] = 256;
      *&v56[10] = v54[0];
      *&v56[26] = v54[1];
      *&v56[42] = v54[2];
      *&v56[56] = *(&v60 + 1);
      v49 = *v56;
      v50 = *&v56[16];
      v51 = *&v56[32];
      v52 = *&v56[48];
      v57 = 1;
      LOBYTE(v53) = 1;
    }

    sub_1A47ED8A8(v56, v54, sub_1A47EB7C8);
    sub_1A47EB7C8(0);
    sub_1A47EBC90();
    sub_1A5249744();
    v37 = v54[3];
    *(v6 + 2) = v54[2];
    *(v6 + 3) = v37;
    v6[64] = v55;
    v38 = v54[1];
    *v6 = v54[0];
    *(v6 + 1) = v38;
    swift_storeEnumTagMultiPayload();
    sub_1A47EB72C(0);
    sub_1A47EBB2C();
    sub_1A47EBC18();
    sub_1A5249744();
    return sub_1A47EDCA0(v56, sub_1A47EB7C8);
  }

  else
  {
    v41 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v19;
    v43 = v10;
    v44 = a2;
    sub_1A524B544();
    (*(v13 + 104))(v15, *MEMORY[0x1E6981630], v12);
    v40 = sub_1A524B5C4();

    (*(v13 + 8))(v15, v12);
    type metadata accessor for ProfileButton(0);
    sub_1A524BC74();
    sub_1A52481F4();
    v20 = *v56;
    v21 = v56[8];
    if (a1)
    {
      v22 = *&v56[16];
      v23 = v56[24];
      v24 = *&v56[32];
      v25 = *&v56[40];
      v26 = sub_1A524B434();
      v27 = sub_1A524B464();
    }

    else
    {
      v22 = *&v56[16];
      v23 = v56[24];
      v24 = *&v56[32];
      v25 = *&v56[40];
      v26 = sub_1A524B434();
      v27 = sub_1A524B3B4();
    }

    LOBYTE(v58) = v21;
    v57 = v23;
    *&v49 = v40;
    *(&v49 + 1) = v20;
    LOBYTE(v50) = v21;
    *(&v50 + 1) = v22;
    LOBYTE(v51) = v23;
    *(&v51 + 1) = v24;
    *&v52 = v25;
    *(&v52 + 1) = v26;
    v53 = v27;
    sub_1A524A164();
    sub_1A47EB5B4();
    v29 = v28;
    v30 = sub_1A47EC07C(&qword_1EB128318, sub_1A47EB5B4, sub_1A43D4E28, sub_1A47EB6A8);
    v31 = v41;
    sub_1A524A8F4();
    v54[2] = v51;
    v54[3] = v52;
    v55 = v53;
    v54[0] = v49;
    v54[1] = v50;
    sub_1A47EDCA0(v54, sub_1A47EB5B4);
    v32 = v42;
    (*(v42 + 16))(v46, v31, v17);
    swift_storeEnumTagMultiPayload();
    *&v49 = v29;
    *(&v49 + 1) = v30;
    swift_getOpaqueTypeConformance2();
    v34 = v47;
    sub_1A5249744();
    sub_1A47EED90(v34, v6, sub_1A47EB4B8);
    swift_storeEnumTagMultiPayload();
    sub_1A47EB72C(0);
    sub_1A47EBB2C();
    sub_1A47EBC18();
    sub_1A5249744();
    sub_1A47EDA10(v34, sub_1A47EB4B8);
    return (*(v32 + 8))(v31, v17);
  }
}

uint64_t sub_1A47ED104(_BYTE *a1, char *a2, uint64_t a3)
{
  v6 = sub_1A5249DE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ProfileButton(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = *a2;
  v18[15] = *a1;
  v18[14] = v13;
  sub_1A3D3743C();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    sub_1A524BCF4();
    sub_1A524BCA4();

    sub_1A524BCD4();

    MEMORY[0x1EEE9AC00](v15);
    *&v18[-16] = a3;
    sub_1A47ED8A8(a3, &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ProfileButton);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = swift_allocObject();
    sub_1A47EDD00(&v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16, type metadata accessor for ProfileButton);
    sub_1A5249DD4();
    sub_1A52483C4();

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_1A47ED3C4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A3F31578(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A47ED418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  *(a4 + 32) = swift_getKeyPath();
  *(a4 + 40) = 0;
  *(a4 + 48) = swift_getKeyPath();
  *(a4 + 56) = 0;
  v6 = type metadata accessor for ProfileButton(0);
  sub_1A47EDD00(a3, a4 + v6[9], sub_1A47EDD68);
  *(a4 + v6[10]) = 0x402C000000000000;
  *(a4 + v6[11]) = 0x402A000000000000;
  *(a4 + v6[12]) = 0x3FF0000000000000;
  *(a4 + v6[13]) = 0x3FF0000000000000;
  v7 = (a4 + v6[14]);
  sub_1A524B694();
  *v7 = v11;
  v7[1] = v12;
  v8 = a4 + v6[15];
  sub_1A524B694();
  *v8 = v11;
  *(v8 + 8) = v12;
  v9 = a4 + v6[16];
  result = sub_1A524B694();
  *v9 = v11;
  *(v9 + 8) = v12;
  return result;
}

double sub_1A47ED57C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LemonadeProfileIconView();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A4321AA0();
  if ((MEMORY[0x1A590D320](v5) & 1) == 0)
  {
    sub_1A47EE324(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
    sub_1A52480D4();
    v7 = *v12;
    sub_1A5243504();
    v6.n128_f64[0] = v7 + v6.n128_f64[0] + v6.n128_f64[0];
  }

  if ((MEMORY[0x1A590D320](v6) & 1) == 0)
  {
    sub_1A47EE324(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
    sub_1A52480D4();
    sub_1A5243504();
  }

  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A47EDD00(v4, a1, type metadata accessor for LemonadeProfileIconView);
  sub_1A47EB044(0, &qword_1EB124220, type metadata accessor for LemonadeProfileIconView, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
  v9 = (a1 + *(v8 + 36));
  v10 = v12[1];
  *v9 = v12[0];
  v9[1] = v10;
  result = *&v13;
  v9[2] = v13;
  return result;
}

uint64_t sub_1A47ED7A4()
{
  sub_1A47EDD9C();
  result = sub_1A5247FA4();
  if (v4 == 1)
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v1 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v1 navigationBarAnimationDuration];
    v3 = v2;

    MEMORY[0x1A5907080](v3, 1.0, 0.0);
    return sub_1A5247F94();
  }

  return result;
}

uint64_t sub_1A47ED8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A47ED910(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = type metadata accessor for ProfileButton(0);
  if (*a1 != *a2)
  {
    sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    result = sub_1A524B6A4();
    if (v5 == 1)
    {
      sub_1A524B6A4();
      return sub_1A3D7F1A8(v5);
    }
  }

  return result;
}

uint64_t sub_1A47EDA10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_77()
{
  v1 = type metadata accessor for ProfileButton(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  j__swift_release(*(v2 + 16), *(v2 + 24));
  j__swift_release(*(v2 + 32), *(v2 + 40));
  j__swift_release(*(v2 + 48), *(v2 + 56));
  v3 = *(v1 + 36);
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

uint64_t sub_1A47EDBE8()
{
  type metadata accessor for ProfileButton(0);
  sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A47EDCA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A47EDD00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A47EDD9C()
{
  result = qword_1EB17B890[0];
  if (!qword_1EB17B890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17B890);
  }

  return result;
}

void sub_1A47EDE34()
{
  sub_1A3C52C70(319, &qword_1EB120A10);
  if (v0 <= 0x3F)
  {
    sub_1A47EAC4C(319, &qword_1EB129720, type metadata accessor for LemonadeCuratedLibraryViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A47EAC4C(319, &qword_1EB1429A8, sub_1A4276AB8, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A47EAC4C(319, &unk_1EB124780, sub_1A47EE06C, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A47EAC4C(319, &qword_1EB124778, sub_1A47EE0A0, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A47EDD68(319);
            if (v5 <= 0x3F)
            {
              sub_1A47EEA30(319, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1A47EEA30(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

unint64_t sub_1A47EE0D4()
{
  result = qword_1EB123E30;
  if (!qword_1EB123E30)
  {
    sub_1A47EB044(255, &qword_1EB123E28, sub_1A47EC34C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A47EC304(255);
    sub_1A47EC3E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E30);
  }

  return result;
}

void sub_1A47EE208()
{
  sub_1A47EEA30(319, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1A47EEA30(319, &qword_1EB124968, &type metadata for AccountViewTip, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      sub_1A47EEA30(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A47EE324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A47EE3A0()
{
  sub_1A47EE324(319, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A47EE4C4()
{
  if (!qword_1EB127BC8)
  {
    type metadata accessor for AccountViewTipModifier(255);
    sub_1A47EC22C(qword_1EB186E58, type metadata accessor for AccountViewTipModifier);
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127BC8);
    }
  }
}

void sub_1A47EE558()
{
  if (!qword_1EB1429B8)
  {
    sub_1A47EAC4C(255, &qword_1EB1429C0, sub_1A47EE5EC, MEMORY[0x1E69E6720]);
    sub_1A47EE734();
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1429B8);
    }
  }
}

void sub_1A47EE5EC()
{
  if (!qword_1EB1429C8)
  {
    sub_1A47EE6B4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1429C8);
    }
  }
}

void sub_1A47EE6B4()
{
  if (!qword_1EB1429D0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1429D0);
    }
  }
}

unint64_t sub_1A47EE734()
{
  result = qword_1EB1429D8;
  if (!qword_1EB1429D8)
  {
    sub_1A47EAC4C(255, &qword_1EB1429C0, sub_1A47EE5EC, MEMORY[0x1E69E6720]);
    sub_1A47EE6B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1429D8);
  }

  return result;
}

uint64_t sub_1A47EE850()
{
  v2 = *(type metadata accessor for AccountViewTipModifier(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A47E7DC0(v0 + v3);
}

unint64_t sub_1A47EE91C()
{
  result = qword_1EB1429E0;
  if (!qword_1EB1429E0)
  {
    sub_1A47EE47C(255);
    sub_1A47EAFFC(&qword_1EB127BD0, sub_1A47EE4C4);
    sub_1A47EAFFC(&qword_1EB1429E8, sub_1A47EE558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1429E0);
  }

  return result;
}

void sub_1A47EEA30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A47EEA80()
{
  if (!qword_1EB128AE8)
  {
    sub_1A52492A4();
    sub_1A47EAFFC(&qword_1EB128030, MEMORY[0x1E697F260]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB128AE8);
    }
  }
}

uint64_t sub_1A47EEB34(_BYTE *a1, char *a2)
{
  v5 = *(type metadata accessor for ProfileButton(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A47ED104(a1, a2, v6);
}

uint64_t sub_1A47EEBD0()
{
  type metadata accessor for ProfileButton(0);
  sub_1A524BD04();
  sub_1A52483D4();
}

uint64_t sub_1A47EEC94()
{
  type metadata accessor for ProfileButton(0);
  sub_1A47EEA30(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A47EED30()
{
  v1 = *(type metadata accessor for ProfileButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A47E945C(v2);
}

uint64_t sub_1A47EED90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A47EEDF8()
{
  result = qword_1EB142A00;
  if (!qword_1EB142A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142A00);
  }

  return result;
}

uint64_t sub_1A47EEE50()
{
  type metadata accessor for ProfileButton(0);
  sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A47EEF0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A47E9698();
}

unint64_t sub_1A47EEF98()
{
  result = qword_1EB124228;
  if (!qword_1EB124228)
  {
    sub_1A47EB044(255, &qword_1EB124220, type metadata accessor for LemonadeProfileIconView, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A47EAFFC(&qword_1EB12A070, type metadata accessor for LemonadeProfileIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124228);
  }

  return result;
}

id sub_1A47EF08C()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x1E6978830]) init];
  [v2 setFetchLimit_];
  v3 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v1 options:v2];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 firstObject];
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1A47EF140()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = objc_allocWithZone(MEMORY[0x1E6978830]);
    v5 = v1;
    v6 = [v4 init];
    [v6 setFetchLimit_];
    v7 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v3 options:v6];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 firstObject];

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1A47EF274()
{

  v0 = PhotoKitItem.keyAsset.getter();

  return v0;
}

id sub_1A47EF2E0()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 16);

  v3 = PhotoKitItem.keyAsset.getter();
  sub_1A4267BB4(v2, v1);
  return v3;
}

uint64_t sub_1A47EF338()
{
  result = *(v0 + 24);
  if (*(v0 + 24))
  {
    v2 = *(v0 + 16);
    if (result == 1)
    {
      v3 = v2[2];
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        v4 = result;
        v5 = objc_allocWithZone(MEMORY[0x1E6978830]);
        v6 = v3;
        sub_1A46B1CB4(v2, 1);
        v7 = [v5 init];
        [v7 setFetchLimit_];
        v8 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v4 options:v7];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 firstObject];
          sub_1A4267BB4(v2, 1);

          return v10;
        }

        else
        {
          sub_1A4267BB4(v2, 1);

          return 0;
        }
      }
    }

    else
    {

      v11 = sub_1A47EF08C();
      sub_1A4267BB4(v2, 2);
      return v11;
    }
  }

  return result;
}

uint64_t sub_1A47EF4D0(uint64_t a1)
{
  sub_1A47EF5DC(a1, v5);
  if (v5[3])
  {
    sub_1A3C34400(0, &qword_1EB12AAC0);
    if (swift_dynamicCast())
    {
      v1 = *(&v7 + 1);
      if (*(&v7 + 1))
      {
        v2 = v8;
        __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
        v3 = (*(v2 + 16))(v1, v2);
        __swift_destroy_boxed_opaque_existential_0(&v6);
        return v3;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {
    sub_1A3C35B00(v5);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  sub_1A3EA8D18(&v6, &unk_1EB12D9C8, &qword_1EB12AAC0);
  return 0;
}

uint64_t sub_1A47EF5DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = *(a1 + 24);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = (*(v16 + 88))(v19, a1);
  if (v20 == *off_1E7720FE8)
  {
    (*(v16 + 96))(v19, a1);
    v21 = *(v12 + 32);
    v21(v14, v19, v11);
    v22 = v33;
    v33[3] = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    return (v21)(boxed_opaque_existential_1, v14, v11);
  }

  else
  {
    v25 = v33;
    if (v20 == *off_1E7720FF8)
    {
      (*(v16 + 96))(v19, a1);
      v26 = *(v32 + 32);
      v26(v5, v19, v3);
      v25[3] = v3;
      v27 = __swift_allocate_boxed_opaque_existential_1(v25);
      return (v26)(v27, v5, v3);
    }

    else if (v20 == *off_1E7720FF0)
    {
      (*(v16 + 96))(v19, a1);
      v28 = *(v31 + 32);
      v28(v9, v19, v7);
      v25[3] = v7;
      v29 = __swift_allocate_boxed_opaque_existential_1(v25);
      return (v28)(v29, v9, v7);
    }

    else
    {
      result = sub_1A524E6E4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A47EF9BC(uint64_t a1)
{
  sub_1A47EF5DC(a1, v5);
  if (v5[3])
  {
    sub_1A3C34400(0, &qword_1EB12AA70);
    if (swift_dynamicCast())
    {
      v1 = *(&v7 + 1);
      if (*(&v7 + 1))
      {
        v2 = v8;
        __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
        v3 = (*(v2 + 16))(v1, v2);
        __swift_destroy_boxed_opaque_existential_0(&v6);
        return v3;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {
    sub_1A3C35B00(v5);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  sub_1A3EA8D18(&v6, &qword_1EB12D9D8, &qword_1EB12AA70);
  return 0;
}

uint64_t sub_1A47EFAC8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A47EFB04(uint64_t a1)
{
  result = sub_1A47EFBB4(&qword_1EB12A450, type metadata accessor for PeopleUnifiedItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A47EFB5C(uint64_t a1)
{
  result = sub_1A47EFBB4(&qword_1EB12A4C0, type metadata accessor for SearchResultItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A47EFBB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A47EFC00(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_1A47EFC4C(uint64_t a1)
{
  v2 = [objc_opt_self() px_sharedApplication];
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = [v3 importViewControllerForImportSource_];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
      [v6 setModalPresentationStyle_];
      v7 = [v6 sheetPresentationController];
      if (v7)
      {
        v8 = v7;
        [v7 setPrefersGrabberVisible_];
      }

      v9 = [v5 navigationItem];
      sub_1A47EFDF8();
      v10 = sub_1A47AC200();
      [v9 setLeftBarButtonItem_];
    }

    else
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
    }
  }

  else
  {

    return [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  }

  return v6;
}

unint64_t sub_1A47EFDF8()
{
  result = qword_1EB126B80;
  if (!qword_1EB126B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126B80);
  }

  return result;
}

void sub_1A47EFE68(void *a1@<X8>)
{
  v3 = *v1;
  *(swift_allocObject() + 16) = v3;
  v4 = v3;
  PXDisplayCollectionDetailedCountsMake(sub_1A47EFF38);
  *a1 = v5;
  a1[1] = v6;
}

unint64_t sub_1A47EFEE4()
{
  result = qword_1EB129878;
  if (!qword_1EB129878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129878);
  }

  return result;
}

void sub_1A47EFF3C()
{
  if (!qword_1EB142A68)
  {
    sub_1A47EFF98();
    v0 = sub_1A5249FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142A68);
    }
  }
}

unint64_t sub_1A47EFF98()
{
  result = qword_1EB142A70;
  if (!qword_1EB142A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142A70);
  }

  return result;
}

id sub_1A47EFFF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentViewController];
  *a2 = result;
  return result;
}

void sub_1A47F0034(id *a1)
{
  v1 = *a1;
  v2 = [*a1 parentViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 title];
    [v3 setTitle_];
  }
}

void *sub_1A47F00F8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1A47F013C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1A47F0188()
{
  v1 = (*v0)();
  sub_1A47EFF3C();
  sub_1A5249FD4();
  swift_getKeyPath();
  v2 = sub_1A5240C84();

  (*(*v4 + 96))(v2);

  return v1;
}

uint64_t sub_1A47F0264@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeViewControllerWrapper.ParentChangeObservingCoordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1A47F029C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47EFF98();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A47F0300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47EFF98();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A47F0364()
{
  sub_1A47EFF98();
  sub_1A5249ED4();
  __break(1u);
}

void sub_1A47F03E4(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A47F0440(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

void sub_1A47F051C(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatusView];
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatus] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v19.receiver = v2;
  v19.super_class = type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();

  v6 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatusView];
  v9 = *&v6[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatusView];
  v10 = *&v6[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatusView + 8];
  *v8 = a1;
  *(v8 + 1) = sub_1A47F0770;
  *(v8 + 2) = v7;
  swift_retain_n();
  v11 = v6;

  sub_1A47F082C(v9, v10);
  sub_1A47F1754(0, &unk_1EB142AA8, sub_1A47F0874, &type metadata for PhotosSearchIndexingStatusView, type metadata accessor for ZeroSafeAreaInsetsHostingView);
  v13 = objc_allocWithZone(v12);
  v18 = v7;
  v14 = sub_1A52485F4();
  v15 = OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView;
  v16 = *&v11[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView];
  *&v11[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView] = v14;
  v17 = v14;

  sub_1A52485D4();
  if (*&v11[v15])
  {
    [v11 addSubview_];
    [v11 setHideBackButton_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A47F0770()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x78))())
    {
      sub_1A47F0F20();
    }
  }
}

uint64_t sub_1A47F082C(uint64_t result, uint64_t a2)
{
  if (result)
  {

    return sub_1A3C33378(a2);
  }

  return result;
}

unint64_t sub_1A47F0874()
{
  result = qword_1EB1D4C20;
  if (!qword_1EB1D4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D4C20);
  }

  return result;
}

uint64_t sub_1A47F08E0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1A47F166C(a1);
  (*(*(*(v2 + qword_1EB1D4C28) - 8) + 8))(a1);
  return v5;
}

void sub_1A47F0A04()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
  objc_msgSendSuper2(&v33, sel_layoutSubviews);
  v2 = [v0 effectiveUserInterfaceLayoutDirection];
  v3 = sub_1A4370EDC();
  v4 = OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView;
  v5 = *&v0[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView];
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      [v5 setHidden_];
      *&v0[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY] = 0;
      v14 = 0.0;
LABEL_22:
      [v1 setHeight_];
      return;
    }

    goto LABEL_24;
  }

  if (!v5)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v5 intrinsicContentSize];
  v7 = v6;
  v8 = [v0 overlays];
  if (v8)
  {
    v9 = v8;
    sub_1A524D964();
    v10 = v34;
    v11 = v35;
    v12 = v36;
    v13 = v37;

    if (v38)
    {
      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
    }
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  v15 = OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY;
  if (*&v1[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY] == 0.0)
  {
    v39.origin.x = v10;
    v39.origin.y = v11;
    v39.size.width = v12;
    v39.size.height = v13;
    *&v1[v15] = CGRectGetMaxY(v39);
  }

  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  if (v2 == 1)
  {
    MinX = CGRectGetMaxX(*&v16) - v7;
    v21 = -2.0;
  }

  else
  {
    MinX = CGRectGetMinX(*&v16);
    v21 = 2.0;
  }

  v22 = MinX + v21;
  v23 = *&v1[v4];
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = v23;
  [v24 frame];
  [v24 setFrame_];

  v25 = *&v1[v4];
  if (!v25)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v25;
  [v26 frame];
  [v26 setFrame_];

  v27 = *&v1[v4];
  if (!v27)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = v27;
  [v1 bounds];
  CGRectGetWidth(v40);
  [v28 frame];
  [v28 setFrame_];

  v29 = *&v1[v4];
  if (!v29)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v30 = v29;
  [v30 frame];
  [v30 setFrame_];

  v31 = *&v1[v4];
  if (!v31)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v31 setHidden_];
  v32 = *&v1[v4];
  if (v32)
  {
    [v32 frame];
    v14 = CGRectGetMaxY(v41) + 5.0;
    goto LABEL_22;
  }

LABEL_30:
  __break(1u);
}

void sub_1A47F0DB4(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  *&v7[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY] = 0;
}

void sub_1A47F0F20()
{
  v0 = sub_1A5249F84();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A47F1754(0, &qword_1EB142AB8, sub_1A47F17BC, &type metadata for PhotosSearchProgressInfoView, MEMORY[0x1E697C5F0]);
  v2 = objc_allocWithZone(v1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A47F11B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A47F1270(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ZeroSafeAreaInsetsHostingView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1A47F1348()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ZeroSafeAreaInsetsHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1A47F13C4()
{
  result = sub_1A437125C();
  if (result)
  {
    sub_1A4371304();
    sub_1A43708CC();
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_So6UIViewCSSIeggg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A47F166C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_1A52485F4();
}

void sub_1A47F1754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A47F17BC()
{
  result = qword_1EB1D4D40[0];
  if (!qword_1EB1D4D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D4D40);
  }

  return result;
}

unint64_t sub_1A47F183C()
{
  result = qword_1EB142AC0;
  if (!qword_1EB142AC0)
  {
    sub_1A47F18EC();
    sub_1A47F1A04();
    sub_1A47F1B28(&qword_1EB127B20, sub_1A3DA3064);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142AC0);
  }

  return result;
}

void sub_1A47F18EC()
{
  if (!qword_1EB142AC8)
  {
    sub_1A47F19A0(255, &qword_1EB142AD0, sub_1A47F1978);
    sub_1A3DA3064();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142AC8);
    }
  }
}

void sub_1A47F19A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A47F1A04()
{
  result = qword_1EB142AE8;
  if (!qword_1EB142AE8)
  {
    sub_1A47F19A0(255, &qword_1EB142AD0, sub_1A47F1978);
    sub_1A47F1AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142AE8);
  }

  return result;
}

unint64_t sub_1A47F1AA8()
{
  result = qword_1EB142AF0;
  if (!qword_1EB142AF0)
  {
    sub_1A47F1978(255);
    sub_1A405D574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142AF0);
  }

  return result;
}

uint64_t sub_1A47F1B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A47F1B70()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[2];
}

uint64_t sub_1A47F1BF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1A47F1C84(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[2] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 432))(v5);
  }

  return result;
}

uint64_t sub_1A47F1D7C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 16) = v1;
  return result;
}

void (*sub_1A47F1DCC(uint64_t *a1))(void *a1)
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
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A47F1EEC;
}

unint64_t sub_1A47F1EF8()
{
  result = qword_1EB125888;
  if (!qword_1EB125888)
  {
    type metadata accessor for TimelineTextEngineSpec();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125888);
  }

  return result;
}

uint64_t type metadata accessor for TimelineTextEngineSpec()
{
  result = qword_1EB169700;
  if (!qword_1EB169700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A47F1F9C()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[3];
}

uint64_t sub_1A47F201C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_1A47F20B0(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[3] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 432))(v5);
  }

  return result;
}

void (*sub_1A47F21A8(uint64_t *a1))(void *a1)
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
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4();
  return sub_1A47F22C8;
}

double sub_1A47F22D4()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[4];
}

uint64_t sub_1A47F23F8(double a1)
{
  result = swift_beginAccess();
  if (v1[4] == a1)
  {
    v1[4] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 432))(v5);
  }

  return result;
}

void (*sub_1A47F24FC(uint64_t *a1))(void *a1)
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
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A4197AC8();
  return sub_1A47F261C;
}

double sub_1A47F2628()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[5];
}

uint64_t sub_1A47F274C(double a1)
{
  result = swift_beginAccess();
  if (v1[5] == a1)
  {
    v1[5] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 432))(v5);
  }

  return result;
}

void (*sub_1A47F2850(uint64_t *a1))(void *a1)
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
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C();
  return sub_1A47F2970;
}

uint64_t sub_1A47F2994()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[6];
}

uint64_t sub_1A47F2A14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  return result;
}

uint64_t sub_1A47F2AB8(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[6] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 432))(v5);
  }

  return result;
}

uint64_t sub_1A47F2BB0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 48) = v1;
  return result;
}

void (*sub_1A47F2C00(uint64_t *a1))(void *a1)
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
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A47ADC18();
  return sub_1A47F2D20;
}

double sub_1A47F2D2C()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[7];
}

uint64_t sub_1A47F2E50(double a1)
{
  result = swift_beginAccess();
  if (v1[7] == a1)
  {
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 432))(v5);
  }

  return result;
}

void (*sub_1A47F2F54(uint64_t *a1))(void *a1)
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
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A3DE3FB4();
  return sub_1A47F3074;
}

uint64_t sub_1A47F3100(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A524B394();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v4);
  result = sub_1A524B4B4();
  *a2 = result;
  return result;
}

uint64_t sub_1A47F31F4()
{
  sub_1A468A74C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A531D3E0;
  if (qword_1EB169730 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EB1EAEE8;
  v1 = qword_1EB169718;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1EB1EAED8;
  v2 = qword_1EB169740;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_1EB1EAEF0;
  v3 = qword_1EB169720;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = qword_1EB1EAEE0;
  qword_1EB1EAEF8 = v0;
}

uint64_t *sub_1A47F3348()
{
  if (qword_1EB169748 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EAEF8;
}

uint64_t sub_1A47F33D4()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524A184();
  v3 = *MEMORY[0x1E6980E20];
  v4 = sub_1A524A154();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_1A524A1B4();
  result = sub_1A441183C(v2);
  qword_1EB1EAF00 = v6;
  return result;
}

uint64_t *sub_1A47F34F8()
{
  if (qword_1EB1697E0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EAF00;
}

uint64_t sub_1A47F36B8()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A47F3754()
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A5363CC0;
  *(v0 + 32) = xmmword_1A5363CD0;
  *(v0 + 48) = 2;
  *(v0 + 56) = 0x400A666666666666;
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A47F37C4()
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

void sub_1A47F3900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + qword_1EB17FFF0);
  *v4 = a2;
  v4[1] = a3;
  type metadata accessor for SharedAlbumsAvailabilityObserver();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A47F3BB8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = (*(**(v0 + 16) + 136))();
  sub_1A3C52C70(0, &qword_1EB126A10);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = [v5 simulateEmptyShelves];

  if (v4 & 1) == 0 || (v6)
  {
    return [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  }

  else
  {
    return sub_1A47F42B4(v1, v2, v3);
  }
}

uint64_t (*sub_1A47F3C98())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A47F456C;
}

uint64_t sub_1A47F3CF0()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_1A3D4D930(0, 0, v2, &unk_1A5363F70, v6);
}

uint64_t sub_1A47F3E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47F3F00, v6, v5);
}

uint64_t sub_1A47F3F00()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1EB15B5E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1A5246F24();
    __swift_project_value_buffer(v1, qword_1EB15B5E8);
    v2 = sub_1A5246F04();
    v3 = sub_1A524D224();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, v2, v3, "Updating SharedAlbumsItemListManager because of shared albums availability change", v4, 2u);
      MEMORY[0x1A590EEC0](v4, -1, -1);
    }

    sub_1A43F8A20();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A47F40C0()
{
}

uint64_t SharedAlbumsItemListManager.deinit()
{
  v0 = PhotoKitItemListManager.deinit();

  return v0;
}

uint64_t SharedAlbumsItemListManager.__deallocating_deinit()
{
  PhotoKitItemListManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1A47F41EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A3C33378(a6);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1A47F4228()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B5E8);
  v1 = __swift_project_value_buffer(v0, qword_1EB15B5E8);
  v2 = sub_1A3C56D80();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1A47F42B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 librarySpecificFetchOptions];
  if (a3)
  {
    objc_opt_self();
    sub_1A3D9E6B8();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52F8E10;
    *(v6 + 32) = a2;
    *(v6 + 40) = a3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = sub_1A5241C44();
  v12[3] = v7;
  v12[4] = sub_1A47F4514();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v7);
  LOBYTE(v7) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (v7)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 102;
  }

  sub_1A3C52C70(0, &unk_1EB120A20);
  v10 = [swift_getObjCClassFromMetadata() fetchAssetCollectionsWithType:12 subtype:v9 options:v5];

  return v10;
}

uint64_t type metadata accessor for SharedAlbumsItemListManager()
{
  result = qword_1EB17FFE0;
  if (!qword_1EB17FFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A47F4514()
{
  result = qword_1EB1292F0;
  if (!qword_1EB1292F0)
  {
    sub_1A5241C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1292F0);
  }

  return result;
}

uint64_t sub_1A47F4574()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A47F3E68(v3, v4, v5, v2);
}

id sub_1A47F4678(void *a1)
{
  v1 = a1;
  v2 = [v1 appViewModel];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 hidesViewOptionsToolbar];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1A47F46E4(void *a1)
{
  v1 = a1;
  v2 = [v1 appViewModel];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 libraryFilterState];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1A47F47AC(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 appViewModel];
  v6 = [v5 *a3];

  return v6;
}

void sub_1A47F4824(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  v5 = [v6 appViewModel];
  [v5 setSearchQueryMatchInfo_];
}

id sub_1A47F48A0(void *a1)
{
  v1 = a1;
  v2 = [v1 appViewModel];
  if (v2 && (v3 = v2, v4 = [v2 searchContextualVideoThumbnailIdentifiers], v3, v4))
  {
    sub_1A524C3E4();

    v5 = sub_1A524C3D4();

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

void sub_1A47F4980(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1A524C3E4();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_1A47F4A00(v4);
}

uint64_t sub_1A47F4A00(uint64_t a1)
{
  v3 = [v1 appViewModel];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    [v3 setSearchContextualVideoThumbnailIdentifiers_];
  }

  v5 = [v1 mediaProvider];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    if (a1)
    {
      v7 = v6;
      v8 = sub_1A524C3D4();
      v6 = v7;
    }

    else
    {
      v8 = 0;
    }

    [v6 setSearchResultContextualVideoThumbnailIdentifiers_];

    v5 = v8;
  }
}

id sub_1A47F4B4C(void *a1, uint64_t a2, SEL *a3)
{
  v3 = [a1 *a3];
  if (v3)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();
  }

  return v3;
}

id PXPhotosViewModel.additionalLeadingNavigationBarButtonItemsAfterExisting.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

unint64_t sub_1A47F5374()
{
  result = qword_1EB120780;
  if (!qword_1EB120780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB120780);
  }

  return result;
}

id sub_1A47F53C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
  return result;
}

id PXPhotosViewModel.additionalTrailingNavigationBarButtonItemsBeforeExisting.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

id sub_1A47F5624@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
  return result;
}

id PXPhotosViewModel.additionalTrailingNavigationBarButtonItemsAfterExisting.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

id sub_1A47F58B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
  return result;
}

id PXPhotosViewModel.additionalCenterToolbarBarButtonItemsAfterExisting.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

id sub_1A47F5B44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
  return result;
}

id PXPhotosViewModel.searchQueryFetcher.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

id sub_1A47F5DD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1A47F5E98(uint64_t a1, void **a2)
{
  v2 = *a2;

  if ([v2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }
}

id PXPhotosViewModel.currentCurationKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 6;
  return result;
}

id sub_1A47F60A4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 6;
  return result;
}

id sub_1A47F617C(uint64_t a1, id *a2)
{
  result = [*a2 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

id PXPhotosViewModel.defaultCurationKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 6;
  return result;
}

id sub_1A47F6340@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 6;
  return result;
}

id sub_1A47F6418(uint64_t a1, id *a2)
{
  result = [*a2 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

uint64_t PXPhotosViewModel.availableCurationKinds.getter()
{
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1A47F65A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = MEMORY[0x1E69E7CC0];
  return result;
}

BOOL sub_1A47F678C(void *a1)
{
  v1 = a1;
  PXPhotosViewModel.otherCurationKind.getter(&v3);

  return v3 != 6;
}

id PXPhotosViewModel.otherCurationKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 6;
  return result;
}

id PXPhotosViewModel.curationModel.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

id PXPhotosViewModel.candidateOtherCurationKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 6;
  return result;
}

double PXPhotosViewModel.bannerModel.getter@<D0>(uint64_t a1@<X8>)
{
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1A47F6CF8@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1A47F6DE0(uint64_t a1, id *a2)
{
  sub_1A3F1B4DC(a1, v4, &qword_1EB12ACC8, &qword_1EB12ACD0);
  if ([*a2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return sub_1A3EA8D18(v4, &qword_1EB12ACC8, &qword_1EB12ACD0);
}

double PXPhotosViewModel.bannerProvider.getter@<D0>(uint64_t a1@<X8>)
{
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1A47F7008@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1A47F70F0(uint64_t a1, id *a2)
{
  sub_1A3F1B4DC(a1, v4, &qword_1EB12AC28, &qword_1EB12AC30);
  if ([*a2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return sub_1A3EA8D18(v4, &qword_1EB12AC28, &qword_1EB12AC30);
}

void PXPhotosViewModel.setBanner<A>(model:provider:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v11 = *(a2 + 3);
  v8 = a2[3];
  v9 = __swift_project_boxed_opaque_existential_1(a2, v8);
  v13 = v11;
  v10 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  sub_1A47F734C(v14);
}

void sub_1A47F734C(uint64_t a1)
{
  sub_1A3F1B4DC(a1, &v5, &qword_1EB12ACC8, &qword_1EB12ACD0);
  if (*(&v6 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    v4[3] = swift_getAssociatedTypeWitness();
    v4[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v4);
    sub_1A52462D4();
  }

  sub_1A3EA8D18(&v5, &qword_1EB12ACC8, &qword_1EB12ACD0);
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  v3 = 0;
  memset(v2, 0, sizeof(v2));
  sub_1A3EA8D18(v2, &qword_1EB12ACC8, &qword_1EB12ACD0);
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  sub_1A5246794();
}

Swift::Void __swiftcall PXPhotosViewModel.removeBanner()()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  sub_1A47F734C(v3);
}

uint64_t PXPhotosViewModel.storyConfigurationProvider.getter()
{
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return 0;
}

id sub_1A47F7D84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1A47F7E8C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A47F9E7C;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  sub_1A3C66EE8(v3);
  if ([v7 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return sub_1A3C33378(v6);
}

uint64_t PXPhotosViewModel.storyConfigurationProvider.setter(uint64_t a1)
{
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return sub_1A3C33378(a1);
}

uint64_t (*PXPhotosViewModel.storyConfigurationProvider.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 0;
  a1[1] = 0;
  return sub_1A47F8200;
}

uint64_t sub_1A47F8200(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1A3C66EE8(*a1);
    if ([v3 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }

    sub_1A3C33378(v2);
  }

  else if ([*(a1 + 16) appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return sub_1A3C33378(v2);
}

id sub_1A47F83E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1A47F84A8(uint64_t a1, void **a2)
{
  v2 = *a2;

  if ([v2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }
}

uint64_t PXPhotosViewModel.curationModel.setter()
{
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }
}

uint64_t (*PXPhotosViewModel.curationModel.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 0;
  return sub_1A47F87A8;
}

uint64_t sub_1A47F87A8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    if ([v2 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }
  }

  else if ([*(a1 + 8) appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }
}

id PXPhotosViewModel.sortOrderPersistenceController.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

uint64_t sub_1A47F8A20()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return 0;
}

void sub_1A47F8AFC(uint64_t a1)
{
  v2 = sub_1A47F8A20();
  if (a1)
  {
    if (v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  if ([v3 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  [v3 signalChange_];
}

uint64_t sub_1A47F8C8C()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return 0;
}

void sub_1A47F8D7C(uint64_t a1)
{
  v2 = sub_1A47F8C8C();
  if (a1)
  {
    if (v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  if ([v3 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  [v3 signalChange_];
}

uint64_t sub_1A47F8F20()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return 0;
}

void sub_1A47F9010(uint64_t a1)
{
  v2 = sub_1A47F8F20();
  if (a1)
  {
    if (v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  if ([v3 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  [v3 signalChange_];
}

uint64_t sub_1A47F91B4()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return 0;
}

void sub_1A47F92A4(uint64_t a1)
{
  v2 = sub_1A47F91B4();
  if (a1)
  {
    if (v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  if ([v3 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  [v3 signalChange_];
}

uint64_t sub_1A47F9448()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }
}

void sub_1A47F9580(unsigned __int8 *a1)
{
  v1 = *a1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  if ([v2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  if (v1 != 6)
  {
    if ([v2 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }

    if ([v2 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }
  }
}

void sub_1A47F9800(unsigned __int8 *a1)
{
  v1 = *a1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  if ([v2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  if (v1 != 6)
  {
    if ([v2 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }

    if ([v2 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }
  }
}

void sub_1A47F9A80(uint64_t a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  if ([v3 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  v2 = sub_1A3F61A0C(a1, MEMORY[0x1E69E7CC0]);

  if (v2)
  {
  }

  else
  {
    if ([v3 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }

    if ([v3 appViewModel])
    {
      sub_1A47F5374();
      sub_1A4651E18();
      sub_1A5245CB4();
    }
  }
}

uint64_t sub_1A47F9CF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v47 = v2;
  v48 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v34 = *(v5 + 64);
    v35 = v8;
    v36 = *(v5 + 96);
    v9 = *(v5 + 16);
    v31[0] = *v5;
    v31[1] = v9;
    v10 = *(v5 + 48);
    v32 = *(v5 + 32);
    v33 = v10;
    v24 = v31[0];
    v25 = v9;
    v26 = v32;
    v27 = v10;
    v28 = v34;
    v29 = v8;
    v30 = v36;
    v11 = *(v6 + 80);
    v40 = *(v6 + 64);
    v41 = v11;
    v42 = *(v6 + 96);
    v12 = *(v6 + 16);
    v37[0] = *v6;
    v37[1] = v12;
    v13 = *(v6 + 48);
    v38 = *(v6 + 32);
    v39 = v13;
    v17 = v37[0];
    v18 = v12;
    v19 = v38;
    v20 = v13;
    v21 = v40;
    v22 = v11;
    v23 = v42;
    sub_1A42E6274(v31, v16);
    sub_1A42E6274(v37, v16);
    sub_1A47F9EB4();
    v14 = sub_1A524C594();
    v43[4] = v21;
    v43[5] = v22;
    v44 = v23;
    v43[0] = v17;
    v43[1] = v18;
    v43[2] = v19;
    v43[3] = v20;
    sub_1A42E62D0(v43);
    v45[4] = v28;
    v45[5] = v29;
    v46 = v30;
    v45[0] = v24;
    v45[1] = v25;
    v45[2] = v26;
    v45[3] = v27;
    sub_1A42E62D0(v45);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

unint64_t sub_1A47F9EB4()
{
  result = qword_1EB125F90;
  if (!qword_1EB125F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125F90);
  }

  return result;
}

id sub_1A47F9F08()
{
  v1 = *(v0 + 16);
  sub_1A3F1B4DC(v0 + 24, v3, &qword_1EB12ACC8, &qword_1EB12ACD0);
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  sub_1A3EA8D18(v3, &qword_1EB12ACC8, &qword_1EB12ACD0);
  sub_1A3F1B4DC(v0 + 64, v3, &qword_1EB12AC28, &qword_1EB12AC30);
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  sub_1A3EA8D18(v3, &qword_1EB12AC28, &qword_1EB12AC30);
  return [v1 signalChange_];
}

uint64_t ParallaxAssetDebugView.init(viewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A47FC8A8(0, &qword_1EB1202A0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A533E260;
  *(v4 + 32) = sub_1A524B3C4();
  *(v4 + 40) = sub_1A524B404();
  *(v4 + 48) = sub_1A524B424();
  *(v4 + 56) = sub_1A524B434();
  *(v4 + 64) = sub_1A524B3F4();
  *(v4 + 72) = sub_1A524B3B4();
  *(v4 + 80) = sub_1A524B454();
  result = sub_1A524B3D4();
  *(v4 + 88) = result;
  *a2 = a1;
  a2[1] = v4;
  return result;
}

uint64_t ParallaxAssetDebugView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1A47FA4D4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v1;
  v9 = v1[1];
  (*(**v1 + 544))(v16, v6);
  memcpy(v22, v16, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v22) == 1)
  {
    memcpy(v15, v16, 0x123uLL);
    sub_1A47FB818(v15, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage);
  }

  else
  {
    *&v14[32] = *&v16[9];
    *&v14[48] = *&v16[11];
    *&v14[64] = *&v16[13];
    v14[80] = v16[15];
    *v14 = *&v16[5];
    *&v14[16] = *&v16[7];
    memcpy(v15, v16, 0x123uLL);
    sub_1A43DDA74(v14, &v17);
    sub_1A47FB818(v15, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage);
    if (*v14)
    {
      v17 = *v14;
      v19 = *&v14[24];
      v20 = *&v14[40];
      v21[0] = *&v14[56];
      *(v21 + 9) = *&v14[65];
      v18 = *&v14[8];
      *v8 = sub_1A524BC04();
      v8[1] = v11;
      sub_1A47FC718(0, &qword_1EB142C10, sub_1A47FA510);
      sub_1A47FAD34(&v17, v10, v9, v8 + *(v12 + 44));
      sub_1A47FB818(v14, &unk_1EB139AF0, &type metadata for ParallaxAssetDebugInfo);
      sub_1A47FC78C(v8, a1, sub_1A47FA4D4);
      return (*(v5 + 56))(a1, 0, 1, v4);
    }
  }

  return (*(v5 + 56))(a1, 1, 1, v4);
}

void sub_1A47FA544()
{
  if (!qword_1EB142B70)
  {
    sub_1A47FA5D8(255);
    sub_1A47FA664();
    sub_1A47FA98C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB142B70);
    }
  }
}

void sub_1A47FA60C()
{
  if (!qword_1EB142B80)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142B80);
    }
  }
}

void sub_1A47FA664()
{
  if (!qword_1EB142B88)
  {
    sub_1A47FC8A8(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A47FA9DC(255, &qword_1EB142B90, sub_1A47FA740);
    sub_1A4035564();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142B88);
    }
  }
}

void sub_1A47FA7A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A47FC670(a4, a5);
    v8 = sub_1A524B8B4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A47FA86C()
{
  if (!qword_1EB142BB0)
  {
    sub_1A47FA8D4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB142BB0);
    }
  }
}

void sub_1A47FA8FC()
{
  if (!qword_1EB142BC0)
  {
    sub_1A3D6F4A4();
    v0 = sub_1A52488F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142BC0);
    }
  }
}

void sub_1A47FA9DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A47FAA40()
{
  if (!qword_1EB142BE0)
  {
    sub_1A47FAAC0();
    sub_1A47FACC8(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142BE0);
    }
  }
}

void sub_1A47FAAC0()
{
  if (!qword_1EB142BE8)
  {
    sub_1A47FAB40();
    sub_1A47FACC8(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142BE8);
    }
  }
}

void sub_1A47FAB40()
{
  if (!qword_1EB142BF0)
  {
    sub_1A47FABA4();
    sub_1A47FAC58();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142BF0);
    }
  }
}

void sub_1A47FABA4()
{
  if (!qword_1EB142BF8)
  {
    sub_1A47FC8A8(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A4035564();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142BF8);
    }
  }
}

unint64_t sub_1A47FAC58()
{
  result = qword_1EB142C00;
  if (!qword_1EB142C00)
  {
    sub_1A47FABA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C00);
  }

  return result;
}

void sub_1A47FACC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A47FC8A8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A47FAD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v56 = a2;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47FAA40();
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47FA9B4(0);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47FA98C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v41 - v21;
  sub_1A47FA664();
  v52 = *(v22 - 8);
  v53 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v50 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v66 = &v41 - v25;
  v51 = sub_1A524B404();
  if ((*(a1 + 56) & 1) != 0 || (v26 = *(a1 + 16)) == 0)
  {
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v63 = 1;
    v64 = 0;
  }

  else
  {
    v27 = *(a1 + 24);
    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v31 = v26;
    v32 = sub_1A3C6E9EC();
    sub_1A41CE0F4(v26, v32, v68);
    v63 = v68[0];
    v64 = v68[1];
    v70.origin.x = v27;
    v70.origin.y = v28;
    v70.size.width = v29;
    v70.size.height = v30;
    CGRectGetWidth(v70);
    v71.origin.x = v27;
    v71.origin.y = v28;
    v71.size.width = v29;
    v71.size.height = v30;
    CGRectGetHeight(v71);
    sub_1A524BC74();
    sub_1A52481F4();

    v61 = v67[14];
    v62 = v67[13];
    v59 = v67[16];
    v60 = v67[15];
    v57 = v67[18];
    v58 = v67[17];
  }

  v47 = v14;
  v48 = v12;
  v49 = v19;
  v54 = v16;
  v69 = *a1;
  v33 = v69;
  v34 = *(v69 + 16);
  if (!v34)
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v67[0] = v35;
    swift_getKeyPath();
    v38 = swift_allocObject();
    v39 = *(a1 + 48);
    *(v38 + 72) = *(a1 + 32);
    *(v38 + 88) = v39;
    *(v38 + 104) = *(a1 + 64);
    v40 = *(a1 + 16);
    *(v38 + 40) = *a1;
    *(v38 + 16) = v56;
    *(v38 + 24) = a3;
    *(v38 + 32) = v35;
    *(v38 + 120) = *(a1 + 80);
    *(v38 + 56) = v40;

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v42 = a3;
  v35 = sub_1A3C51BF0(v34, 0);
  v36 = sub_1A47FBFB0(v68, v35 + 4, v34, v33);
  sub_1A47FC108(&v69, v67, sub_1A47FC170);
  result = sub_1A3C42540();
  if (v36 == v34)
  {
    a3 = v42;
    goto LABEL_9;
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1A47FB818(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A47FC8A8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A47FB8A4()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47FBCF4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (*(*(a2 + 8) + 16))
  {
    sub_1A3C5DCA4(*a1, a1[1]);
    if (v7)
    {
      sub_1A5249414();
      sub_1A5249404();
      sub_1A52493F4();
      sub_1A5249404();
      sub_1A47FC7F4();
      sub_1A52493B4();
      sub_1A5249404();
      sub_1A5249444();
      *a3 = sub_1A524A444();
      *(a3 + 8) = v8;
      *(a3 + 16) = v9 & 1;
      *(a3 + 24) = v10;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1A47FBE74()
{
  result = qword_1EB142C18;
  if (!qword_1EB142C18)
  {
    sub_1A47FBF4C(255, &qword_1EB142C20, sub_1A47FA4D4, MEMORY[0x1E69E6720]);
    sub_1A47FC670(&qword_1EB142C28, sub_1A47FA4D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C18);
  }

  return result;
}

void sub_1A47FBF4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1A47FBFB0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
    v15 = 0;
    v9 = 0;
LABEL_21:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v15;
    v4[4] = v8;
    return v9;
  }

  v9 = a3;
  if (!a3)
  {
    v15 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = 0;
    v10 = 0;
    if (v8)
    {
      goto LABEL_13;
    }

    v11 = 0;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v12 >= ((63 - v6) >> 6))
      {
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v10 = v12;
LABEL_13:
        v13 = (*(a4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
        v14 = v13[1];
        *a2 = *v13;
        a2[1] = v14;
        if (a3 != 1)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v8 = 0;
    if ((63 - v6) >> 6 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v15 = v16 - 1;
    v9 = 0;
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1A47FC108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A47FC170()
{
  if (!qword_1EB130D80)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_1A524C454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130D80);
    }
  }
}

unint64_t sub_1A47FC1D8(unint64_t result)
{
  v2 = v1[4];
  v3 = v2[2];
  if (!v3)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = v1[3];
  v5 = *result;
  v6 = *(result + 8);
  result = v2[4];
  if (result != v5 || v2[5] != v6)
  {
    result = sub_1A524EAB4();
    if ((result & 1) == 0)
    {
      v10 = v2 + 7;
      v11 = 1;
      while (v3 != v11)
      {
        v8 = v11;
        result = *(v10 - 1);
        if (result != v5 || *v10 != v6)
        {
          result = sub_1A524EAB4();
          v11 = v8 + 1;
          v10 += 2;
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  v8 = 0;
LABEL_8:
  if (v8 >= *(v4 + 16))
  {
    goto LABEL_22;
  }

  if (!*(v1[5] + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_1A3C5DCA4(v5, v6);
  if (v9)
  {
    sub_1A524BC04();
    sub_1A47FB8A4();
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1A47FC51C()
{
  result = qword_1EB142C30;
  if (!qword_1EB142C30)
  {
    sub_1A47FA9DC(255, &qword_1EB142B90, sub_1A47FA740);
    sub_1A47FC5C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C30);
  }

  return result;
}

unint64_t sub_1A47FC5C0()
{
  result = qword_1EB142C38;
  if (!qword_1EB142C38)
  {
    sub_1A47FA740(255);
    sub_1A47FC670(&qword_1EB142C40, sub_1A47FA768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C38);
  }

  return result;
}

uint64_t sub_1A47FC670(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A47FC6B8()
{
  if (!qword_1EB130D98)
  {
    v0 = sub_1A524C454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130D98);
    }
  }
}

void sub_1A47FC718(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A47FC78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A47FC7F4()
{
  result = qword_1EB142C50;
  if (!qword_1EB142C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C50);
  }

  return result;
}

uint64_t sub_1A47FC848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A47FC8A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t PhotosPreviewableCollectionKeyAssetModel.__allocating_init(collection:initialKeyAsset:)(uint64_t *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1A47FD740(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t PhotosPreviewableCollectionKeyAssetModel.init(collection:initialKeyAsset:)(uint64_t *a1, uint64_t a2)
{
  v2 = sub_1A47FD740(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1A47FC988()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3E5387C;

  return sub_1A47FCF54();
}

void sub_1A47FCA34()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 232))(KeyPath, v2);

  if (v0[5] >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47FCCB0()
{
  swift_getKeyPath();
  (*(*v0 + 232))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A47FCD1C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 232))();

  *a2 = v3[4];

  return swift_unknownObjectRetain();
}

void sub_1A47FCDBC()
{
  swift_getKeyPath();
  (*(*v0 + 232))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47FCE28(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 232))();

  *a2 = v3[5];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47FCEC8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_getKeyPath();
  (*(*v2 + 240))();
}

uint64_t sub_1A47FCF74()
{
  v16 = v0;
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1A3C52C70(0, &qword_1EB1269B0);
  v14 = v2;
  v15 = v3;
  swift_unknownObjectRetain();
  v4 = PXStoryConfiguration.init(previewFor:)(&v14);
  v5 = [v4 assetCollection];
  v0[9] = v5;

  if (!v5)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_14:
    v12 = v0[1];

    return v12();
  }

  v0[6] = sub_1A4A15A74();
  v6 = 0;
  v0[7] = sub_1A4A15C94();
  v7 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v0[10] = v7;
  while (v6 != 2)
  {
    v8 = v0[v6++ + 6];
    if (v8)
    {
      v9 = v8;
      MEMORY[0x1A5907D70]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v7 = v14;
      goto LABEL_4;
    }
  }

  sub_1A3F56EDC();
  swift_arrayDestroy();
  sub_1A524CC54();
  v0[11] = sub_1A524CC44();
  v11 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47FD19C, v11, v10);
}

uint64_t sub_1A47FD19C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  KeyPath = swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = 0;
  v5 = *(*v2 + 240);
  v6 = MEMORY[0x1E69E7CA8];
  v5(KeyPath, sub_1A47FDA64, v4, MEMORY[0x1E69E7CA8] + 8);

  if (v1 >> 62)
  {
    v7 = sub_1A524E2B4();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  v19 = MEMORY[0x1E69E7CC0];
  v8 = sub_1A524E554();
  if (v7 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  v11 = *(v0 + 80);
  type metadata accessor for PhotoKitFetchResultFirstAssetModel();
  v12 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1A59097F0](v12, *(v0 + 80));
    }

    else
    {
      v13 = *(v11 + 32 + 8 * v12);
    }

    ++v12;
    PhotoKitFetchResultFirstAssetModel.__allocating_init(fetchResult:)(v13);
    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
  }

  while (v7 != v12);

  v14 = v19;
  v6 = MEMORY[0x1E69E7CA8];
LABEL_12:
  v15 = *(v0 + 64);
  v16 = swift_getKeyPath();
  v17 = swift_task_alloc();
  *(v17 + 16) = v15;
  *(v17 + 24) = v14;
  v5(v16, sub_1A47FDA7C, v17, v6 + 8);

  v8 = sub_1A47FD420;
  v9 = 0;
  v10 = 0;

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1A47FD420()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47FD480()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A3C52C70(0, &qword_1EB1269B0);
  v6 = v1;
  LOBYTE(v7) = v2;
  swift_unknownObjectRetain();
  v3 = PXStoryConfiguration.init(previewFor:)(&v6);
  v4 = [v3 assetCollection];

  if (v4)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t PhotosPreviewableCollectionKeyAssetModel.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore40PhotosPreviewableCollectionKeyAssetModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosPreviewableCollectionKeyAssetModel.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore40PhotosPreviewableCollectionKeyAssetModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A47FD740(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  *(v3 + 32) = 0;
  sub_1A5241604();
  *(v3 + 16) = v9;
  *(v3 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v10 = MEMORY[0x1E69E7CC0];
  *(v3 + 32) = a2;
  *(v3 + 40) = v10;
  v11 = sub_1A524CCB4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_1A524CC54();

  v12 = sub_1A524CC44();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v3;
  sub_1A3D4D930(0, 0, v8, &unk_1A53641B0, v13);

  return v3;
}

unint64_t sub_1A47FD8B4()
{
  result = qword_1EB142C58;
  if (!qword_1EB142C58)
  {
    type metadata accessor for PhotosPreviewableCollectionKeyAssetModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C58);
  }

  return result;
}

uint64_t type metadata accessor for PhotosPreviewableCollectionKeyAssetModel()
{
  result = qword_1EB1D4F60;
  if (!qword_1EB1D4F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A47FD960()
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

uint64_t sub_1A47FDA94()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A47FDB0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A47FC988();
}

void sub_1A47FDBD0()
{
  if (!qword_1EB127320)
  {
    v0 = sub_1A524B974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127320);
    }
  }
}

uint64_t sub_1A47FDC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v38 = a2;
  v37 = a1;
  v36 = a3;
  sub_1A47FE0A0();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v33 - v8;
  v9 = sub_1A524A3A4();
  v11 = v10;
  v13 = v12;
  v47[0] = sub_1A524B404();
  v39 = sub_1A524A374();
  v43 = v14;
  v16 = v15;
  v40 = v17;
  sub_1A3E04DF4(v9, v11, v13 & 1);

  LOBYTE(v11) = sub_1A524A074();
  v18 = sub_1A524A0A4();
  sub_1A524A0A4();
  v19 = sub_1A524A0A4();
  if (v19 != v11)
  {
    v19 = sub_1A524A0A4();
    v18 = v19;
  }

  v34 = v18;
  v59 = v16 & 1;
  v20 = v16 & 1;
  v35 = v16 & 1;
  v56 = 1;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v38;
  *(&v33 - 2) = v37;
  *(&v33 - 1) = v21;
  sub_1A524A044();
  sub_1A47FE104();
  sub_1A47FE338();
  v22 = v41;
  sub_1A5247D14();
  v23 = *(v5 + 16);
  v24 = v42;
  v23(v42, v22, v4);
  v25 = v39;
  *&v44 = v39;
  *(&v44 + 1) = v43;
  LOBYTE(v45) = v20;
  *(&v45 + 1) = *v58;
  DWORD1(v45) = *&v58[3];
  v26 = v40;
  *(&v45 + 1) = v40;
  v46[0] = v18;
  *&v46[1] = *v57;
  *&v46[4] = *&v57[3];
  memset(&v46[8], 0, 32);
  v46[40] = 1;
  v27 = *&v46[16];
  v28 = v36;
  v36[2] = *v46;
  v28[3] = v27;
  *(v28 + 57) = *&v46[25];
  v29 = v45;
  *v28 = v44;
  v28[1] = v29;
  sub_1A47FE4E0(0, &qword_1EB142CB8, sub_1A4268678, sub_1A47FE0A0);
  v23(v28 + *(v30 + 48), v24, v4);
  sub_1A47FF840(&v44, v47, sub_1A4268678);
  v31 = *(v5 + 8);
  v31(v22, v4);
  v31(v24, v4);
  v47[0] = v25;
  v47[1] = v43;
  v48 = v35;
  *v49 = *v58;
  *&v49[3] = *&v58[3];
  v50 = v26;
  v51 = v34;
  *v52 = *v57;
  *&v52[3] = *&v57[3];
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  return sub_1A47FF8A8(v47, sub_1A4268678);
}

void sub_1A47FE0A0()
{
  if (!qword_1EB142C60)
  {
    sub_1A47FE104();
    sub_1A47FE338();
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142C60);
    }
  }
}

void sub_1A47FE104()
{
  if (!qword_1EB142C68)
  {
    sub_1A47FE1CC(255);
    sub_1A47FE200(255);
    sub_1A47FE2F0(&qword_1EB142C90, sub_1A47FE1CC);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142C68);
    }
  }
}

void sub_1A47FE23C()
{
  if (!qword_1EB142C80)
  {
    sub_1A40745F4();
    sub_1A47FE2F0(&qword_1EB142C88, sub_1A40745F4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB142C80);
    }
  }
}

uint64_t sub_1A47FE2F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A47FE338()
{
  result = qword_1EB142C98;
  if (!qword_1EB142C98)
  {
    sub_1A47FE104();
    sub_1A47FE2F0(&qword_1EB142CA0, sub_1A47FE200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142C98);
  }

  return result;
}

void sub_1A47FE3E0()
{
  if (!qword_1EB142CA8)
  {
    sub_1A47FE448(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142CA8);
    }
  }
}

void sub_1A47FE484(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A47FE4E0(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A47FE4E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

uint64_t sub_1A47FE55C(uint64_t a1, uint64_t a2)
{
  v4 = (*(**a1 + 136))();
  v5 = *(a1 + 8);
  v10 = v4;
  v11 = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = *(a1 + 16);
  *(v6 + 24) = *a1;
  *(v6 + 40) = v7;
  *(v6 + 56) = *(a1 + 32);

  sub_1A3DB8180(&v11, v9);
  sub_1A47FE1CC(0);
  sub_1A47FE200(0);
  sub_1A47FE2F0(&qword_1EB142C90, sub_1A47FE1CC);
  sub_1A47FE2F0(&qword_1EB142CA0, sub_1A47FE200);
  sub_1A47FE2F0(&qword_1EB142CE8, MEMORY[0x1E69C10C8]);

  return sub_1A524B9C4();
}

void sub_1A47FE748(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v10[2] = a1;
  v12 = a2;
  v11 = sub_1A524B9A4();
  v16 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v10[5] = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v14 = v10 - v4;
  v5 = sub_1A5244A54();
  MEMORY[0x1EEE9AC00](v5);
  sub_1A47FE23C();
  v10[4] = v6;
  v15 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10[3] = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v13 = v10 - v9;
  sub_1A5249574();
  v17 = 1;
  sub_1A47FEC74(&v18);
}

void sub_1A47FEC74(uint64_t a1@<X8>)
{
  v2 = sub_1A5244A24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1A5244914();
  v44 = v6;
  sub_1A3D5F9DC();
  v7 = sub_1A524A464();
  v9 = v8;
  v11 = v10;
  if (sub_1A5244A44())
  {
    v12 = sub_1A524B424();
  }

  else
  {
    v12 = sub_1A524B3B4();
  }

  v43 = v12;
  v13 = sub_1A524A374();
  v38 = v14;
  v39 = v13;
  v37 = v15;
  v40 = v16;
  sub_1A3E04DF4(v7, v9, v11 & 1);

  v43 = 0x203A656372756F53;
  v44 = 0xE800000000000000;
  sub_1A5244A34();
  v17 = sub_1A52449F4();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1A5907B60](v17, v19);

  sub_1A524B404();
  v20 = sub_1A524B474();

  v43 = v20;
  v21 = sub_1A524A374();
  v23 = v22;
  v25 = v24;

  sub_1A524A224();
  v26 = sub_1A524A3C4();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_1A3E04DF4(v21, v23, v25 & 1);

  v33 = v37 & 1;
  v41 = v37 & 1;
  LOBYTE(v43) = v37 & 1;
  LOBYTE(v21) = v30 & 1;
  v42 = v30 & 1;
  v35 = v38;
  v34 = v39;
  *a1 = v39;
  *(a1 + 8) = v35;
  *(a1 + 16) = v33;
  *(a1 + 24) = v40;
  *(a1 + 32) = v26;
  *(a1 + 40) = v28;
  *(a1 + 48) = v21;
  *(a1 + 56) = v32;
  sub_1A3E75E68(v34, v35, v33);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47FEF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A5244984();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A47FF9FC(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-v8];
  v10 = sub_1A5244A24();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4499C00(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = swift_projectBox();
  sub_1A5244914();
  sub_1A5244A34();
  v17 = sub_1A5244A54();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v18 = sub_1A5244954();
  v19 = sub_1A417F5DC(v18);
  sub_1A417DCE4(v19, v20, v12, v9, v6, 0, v15, 0);
  v21 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v21 - 8) + 56))(v15, 0, 1, v21);
  swift_beginAccess();
  sub_1A47FFA60(v15, v16);
  v23 = *(a3 + 8);
  v22 = *(a3 + 16);
  LOBYTE(v15) = *(a3 + 24);
  v34 = v23;
  v30 = v23;
  v31 = v22;
  v32 = v15;
  sub_1A3DB8180(&v34, v28);
  sub_1A47FDBD0();
  v25 = v24;

  MEMORY[0x1A5906C60](&v33, v25);
  v28[0] = v23;
  v28[1] = v22;
  v29 = v15;
  v27[15] = (v33 & 1) == 0;
  sub_1A524B904();
  sub_1A3DB81DC(&v34);
}

uint64_t sub_1A47FF288(uint64_t a1, uint64_t a2)
{
  sub_1A4499C00(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for GenerativeStorySuggestion(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  swift_beginAccess();
  sub_1A47FF840(v13, v8, sub_1A4499C00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v14 = sub_1A4499C00;
    v15 = v8;
  }

  else
  {
    sub_1A417F008(v8, v12);
    v16 = *(a2 + 32);
    sub_1A47FF840(v12, v5, type metadata accessor for GenerativeStorySuggestion);
    (*(v10 + 56))(v5, 0, 1, v9);
    v16(v5);
    sub_1A47FF8A8(v5, sub_1A4499C00);
    v14 = type metadata accessor for GenerativeStorySuggestion;
    v15 = v12;
  }

  return sub_1A47FF8A8(v15, v14);
}

void sub_1A47FF4C8()
{
  if (!qword_1EB142CC0)
  {
    sub_1A47FF528(255);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142CC0);
    }
  }
}

void sub_1A47FF564(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A47FE2F0(a4, a5);
    v8 = sub_1A524B894();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A47FF5F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 25) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t sub_1A47FF62C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  v17 = v1[2];
  sub_1A4499C00(0);
  v4 = swift_allocBox();
  v6 = v5;
  v7 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A47FE3E0();
  sub_1A47FDC20(&v15, v4, (a1 + *(v8 + 44)));
  v18 = *(&v15 + 1);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v10 = v16;
  *(v9 + 24) = v15;
  *(v9 + 40) = v10;
  *(v9 + 56) = v17;
  sub_1A47FF4C8();
  v12 = (a1 + *(v11 + 36));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = sub_1A47FFAC4;
  v12[3] = v9;

  sub_1A3DB8180(&v18, v14);
}

unint64_t sub_1A47FF790()
{
  result = qword_1EB142CD8;
  if (!qword_1EB142CD8)
  {
    sub_1A47FF4C8();
    sub_1A47FE2F0(&qword_1EB142CE0, sub_1A47FF528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142CD8);
  }

  return result;
}

uint64_t sub_1A47FF840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A47FF8A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_78()
{

  return swift_deallocObject();
}

uint64_t sub_1A47FF96C()
{
  v1 = *(sub_1A5244A54() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1A47FEF8C(v3, v0 + v2, v4);
}

void sub_1A47FF9FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A47FFA60(uint64_t a1, uint64_t a2)
{
  sub_1A4499C00(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static UIApplication.navigate(to:options:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return sub_1A48003E4(a1, a2);
}

uint64_t sub_1A47FFC10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v8 = sub_1A524C674();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *(*(v7 + 64) + 40);
  *v10 = a2;
  v10[1] = v8;
  v10[2] = v9;
  v10[3] = a4;
  v11 = a4;

  return MEMORY[0x1EEE6DED8](v7);
}

uint64_t static UIApplication.navigate(to:options:ignoreNavigationFailure:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 112) = a3;
  *(v3 + 16) = a1;
  v6 = sub_1A5240E64();
  *(v3 + 24) = v6;
  *(v3 + 32) = *(v6 - 8);
  *(v3 + 40) = swift_task_alloc();
  v7 = sub_1A5246F24();
  *(v3 + 48) = v7;
  *(v3 + 56) = *(v7 - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = sub_1A524CC54();
  *(v3 + 80) = sub_1A524CC44();
  v8 = swift_task_alloc();
  *(v3 + 88) = v8;
  *v8 = v3;
  v8[1] = sub_1A47FFE30;

  return sub_1A48003E4(a1, a2);
}

uint64_t sub_1A47FFE30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_1A524CBC4();
    v7 = v6;
    v8 = sub_1A4800030;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_1A524CBC4();
    v7 = v9;
    v8 = sub_1A47FFFB0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1A47FFFB0()
{

  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A4800030()
{
  v1 = *(v0 + 112);

  if (v1 == 1)
  {
    sub_1A5246EF4();
  }

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

id UIViewController.descendant<A>(ofType:)(uint64_t a1, uint64_t a2)
{
  result = UIViewController.firstDescendant<A>(ofType:)(a2, a2);
  if (!result)
  {
    sub_1A4800DEC();
    swift_allocError();
    *v5 = v2;
    v5[1] = a2;
    swift_willThrow();
    return v2;
  }

  return result;
}

uint64_t sub_1A48003E4(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_1A5240E64();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v4 = sub_1A5246F24();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  sub_1A524CC54();
  v2[33] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v2[34] = v6;
  v2[35] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A4800558, v6, v5);
}

uint64_t sub_1A480087C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1A4800984, v2, v1);
}

uint64_t sub_1A4800984()
{
  v1 = v0[40];

  v2 = v0[18];
  v3 = v0[21];

  if (v2 != 1)
  {
    sub_1A5246EF4();
  }

  if (!v3)
  {
    sub_1A5246EF4();
  }

  v4 = v0[1];

  return v4(v3);
}

unint64_t sub_1A4800DEC()
{
  result = qword_1EB1D4FF0[0];
  if (!qword_1EB1D4FF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D4FF0);
  }

  return result;
}

void sub_1A4800E50()
{
  if (!qword_1EB142CF0)
  {
    sub_1A4800EB8();
    v0 = sub_1A524CDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142CF0);
    }
  }
}

void sub_1A4800EB8()
{
  if (!qword_1EB142CF8)
  {
    type metadata accessor for PXProgrammaticNavigationResult(255);
    sub_1A3C4EF08(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1A3C4B7E8(255, &qword_1EB120A40, &qword_1EB126B10);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB142CF8);
    }
  }
}

unint64_t sub_1A4800F7C()
{
  result = qword_1EB1D5080[0];
  if (!qword_1EB1D5080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D5080);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So13UIApplicationC12PhotosUICoreE5Error33_17874B6F6717EDD42A710C8F0C3FCFA2LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_1A4800FF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

void *sub_1A4801050(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

_OWORD *sub_1A4801090(_OWORD *a1)
{
  v2 = swift_allocObject();
  sub_1A5241604();
  v3 = a1[9];
  v2[9] = a1[8];
  v2[10] = v3;
  v2[11] = a1[10];
  v4 = a1[5];
  v2[5] = a1[4];
  v2[6] = v4;
  v5 = a1[7];
  v2[7] = a1[6];
  v2[8] = v5;
  v6 = a1[1];
  v2[1] = *a1;
  v2[2] = v6;
  v7 = a1[3];
  v2[3] = a1[2];
  v2[4] = v7;
  return v2;
}

uint64_t sub_1A4801108(_OWORD *a1)
{
  v2 = a1[9];
  v10[8] = a1[8];
  v10[9] = v2;
  v10[10] = a1[10];
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  swift_getKeyPath();
  v8 = v1;
  v9 = v10;
  (*(*v1 + 176))();
  sub_1A440594C(v10);
}

uint64_t sub_1A48011D8@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 168))();

  swift_beginAccess();
  v3 = v1[8];
  v4 = v1[10];
  v26 = v1[9];
  v27 = v4;
  v5 = v1[10];
  v28 = v1[11];
  v6 = v1[4];
  v7 = v1[6];
  v22 = v1[5];
  v8 = v22;
  v23 = v7;
  v9 = v1[6];
  v10 = v1[8];
  v24 = v1[7];
  v11 = v24;
  v25 = v10;
  v12 = v1[2];
  v19[0] = v1[1];
  v19[1] = v12;
  v13 = v1[4];
  v15 = v1[1];
  v14 = v1[2];
  v20 = v1[3];
  v16 = v20;
  v21 = v13;
  a1[8] = v26;
  a1[9] = v5;
  a1[10] = v1[11];
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v11;
  a1[7] = v3;
  *a1 = v15;
  a1[1] = v14;
  a1[2] = v16;
  a1[3] = v6;
  return sub_1A41855E8(v19, v18);
}

__n128 sub_1A48012C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 128))(v8);
  v3 = v8[9];
  *(a2 + 128) = v8[8];
  *(a2 + 144) = v3;
  *(a2 + 160) = v8[10];
  v4 = v8[5];
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v4;
  v5 = v8[7];
  *(a2 + 96) = v8[6];
  *(a2 + 112) = v5;
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  result = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1A480134C(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v25 = a1[8];
  v26 = v3;
  v4 = a1[9];
  v27 = a1[10];
  v5 = a1[3];
  v6 = a1[5];
  v21 = a1[4];
  v22 = v6;
  v7 = a1[5];
  v8 = a1[7];
  v23 = a1[6];
  v24 = v8;
  v9 = a1[1];
  v18[0] = *a1;
  v18[1] = v9;
  v10 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v19 = a1[2];
  v20 = v10;
  v17[8] = v25;
  v17[9] = v4;
  v17[10] = a1[10];
  v17[4] = v21;
  v17[5] = v7;
  v17[6] = v23;
  v17[7] = v2;
  v17[0] = v12;
  v17[1] = v11;
  v13 = *a2;
  v17[2] = v19;
  v17[3] = v5;
  v14 = *(*v13 + 136);
  sub_1A41855E8(v18, &v16);
  return v14(v17);
}

uint64_t sub_1A4801410()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = v2[9];
  v18[7] = v2[8];
  v18[8] = v3;
  v4 = v2[11];
  v18[9] = v2[10];
  v18[10] = v4;
  v5 = v2[5];
  v18[3] = v2[4];
  v18[4] = v5;
  v6 = v2[7];
  v18[5] = v2[6];
  v18[6] = v6;
  v7 = v2[2];
  v18[0] = v2[1];
  v18[1] = v7;
  v18[2] = v2[3];
  v9 = v1[9];
  v8 = v1[10];
  v10 = v1[8];
  v2[8] = v1[7];
  v2[9] = v10;
  v2[10] = v9;
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1[6];
  v2[4] = v1[3];
  v2[5] = v11;
  v2[6] = v12;
  v2[7] = v13;
  v15 = v1[1];
  v14 = v1[2];
  v2[1] = *v1;
  v2[2] = v15;
  v2[3] = v14;
  v2[11] = v8;
  sub_1A41855E8(v1, v17);
  return sub_1A440594C(v18);
}

void (*sub_1A48014E0(uint64_t *a1))(void *a1)
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
  swift_getKeyPath();
  (*(*v1 + 168))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23LemonadeiCloudLinkModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4801B7C(&qword_1EB12A030);
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84();
  return sub_1A4801608;
}

void sub_1A4801608(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t type metadata accessor for LemonadeiCloudLinkModel()
{
  result = qword_1EB185840;
  if (!qword_1EB185840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4801718(uint64_t (*a1)(void *))
{
  v3 = (*(*v1 + 128))(&v6);
  v4 = a1(v3);
  sub_1A440594C(&v6);
  return v4;
}

uint64_t sub_1A48018DC()
{
  v1 = *(v0 + 10);
  v9[8] = *(v0 + 9);
  v9[9] = v1;
  v9[10] = *(v0 + 11);
  v2 = *(v0 + 6);
  v9[4] = *(v0 + 5);
  v9[5] = v2;
  v3 = *(v0 + 8);
  v9[6] = *(v0 + 7);
  v9[7] = v3;
  v4 = *(v0 + 2);
  v9[0] = *(v0 + 1);
  v9[1] = v4;
  v5 = *(v0 + 4);
  v9[2] = *(v0 + 3);
  v9[3] = v5;
  sub_1A440594C(v9);
  v6 = OBJC_IVAR____TtC12PhotosUICore23LemonadeiCloudLinkModel___observationRegistrar;
  v7 = sub_1A5241614();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return swift_deallocClassInstance();
}

void (*sub_1A4801A40(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A3D3D728;
}

uint64_t sub_1A4801B7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeiCloudLinkModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4801BC4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 152))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4801C18()
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

void sub_1A4801CCC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1A4801CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = sub_1A524BC74();
  v9 = v8;
  sub_1A48028C4(0, &qword_1EB142D00, sub_1A4801E90, &type metadata for PXAvailableSizeReadingModifier, MEMORY[0x1E697FDE8]);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  sub_1A4802210();
  v12 = (a2 + *(v11 + 36));
  *v12 = sub_1A4801CC8;
  v12[1] = 0;
  v12[2] = v7;
  v12[3] = v9;
  v18 = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v5;
  *(v13 + 32) = *(v2 + 1);
  *(v13 + 48) = *(v2 + 32);
  sub_1A4802568();
  v15 = (a2 + *(v14 + 36));
  *v15 = sub_1A4802564;
  v15[1] = v13;
  sub_1A3DB8180(&v18, &v17);
}

uint64_t sub_1A4801E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 16);
  v9 = v5 & 1;
  return MEMORY[0x1A5906490](v7, a2, a4, a3);
}

unint64_t sub_1A4801E90()
{
  result = qword_1EB1D51A0[0];
  if (!qword_1EB1D51A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D51A0);
  }

  return result;
}