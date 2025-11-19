id sub_1A4755C14()
{
  if (v0[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_isNotification] == 1)
  {
    v1 = [objc_opt_self() currentTraitCollection];
    v2 = [v1 preferredContentSizeCategory];

    sub_1A524D734();
    [v0 bounds];
    CGRectGetWidth(v8);
    [v0 directionalLayoutMargins];
    return [v0 directionalLayoutMargins];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == 1 || (v6 = [objc_opt_self() currentDevice], v7 = objc_msgSend(v6, sel_userInterfaceIdiom), v6, !v7))
    {
      [v0 bounds];
      CGRectGetWidth(v11);
      [v0 directionalLayoutMargins];
      return [v0 directionalLayoutMargins];
    }

    else
    {
      [v0 bounds];
      CGRectGetWidth(v9);
      [v0 directionalLayoutMargins];
      [v0 directionalLayoutMargins];
      [v0 bounds];
      CGRectGetWidth(v10);
      [v0 directionalLayoutMargins];
      [v0 directionalLayoutMargins];
      return [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_arrangedSubview] intrinsicContentSize];
    }
  }
}

id sub_1A4755F6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarPaletteContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4755FF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
  }
}

uint64_t sub_1A4756084()
{
  sub_1A4756188(&qword_1EB140E38, type metadata accessor for NSKeyValueChangeKey);
  sub_1A4756188(&qword_1EB140E60, type metadata accessor for NSKeyValueChangeKey);

  return sub_1A524E7E4();
}

uint64_t sub_1A4756188(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4756270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A47562D4()
{
  v1 = objc_allocWithZone(v0);
  sub_1A43BAD80();
  sub_1A4112CF0(0xD000000000000016, 0x80000001A53CAFA0, 0, 0, PXDisplayCollectionDetailedCountsMake, 0);
}

void sub_1A4756634(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC12PhotosUICore29GenerativeStoryFeedbackButton_menuVisibilityStateChangeHandler);
    if (v5)
    {
      v5(a2 & 1);
    }
  }
}

id sub_1A4756818()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeStoryFeedbackButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A47568EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore50PhotoKitClearRecentCollectionAssetsActionPerformer_assetsToProcess;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t static PhotoKitClearRecentCollectionAssetsActionPerformer.canPerformOnImplicitSelection(inContainerCollection:)(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 112);
    v3 = swift_unknownObjectRetain();
    v4 = v2(v3);
    swift_unknownObjectRelease();
    return v4 & 1;
  }

  return result;
}

uint64_t static PhotoKitClearRecentCollectionAssetsActionPerformer.localizedTitle(for:actionManager:)(int a1, id a2)
{
  if (a2)
  {
    v3 = [a2 effectiveSelectionSnapshot];
    v4 = [v3 isAnyItemSelected];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 128);

  return v5(v4);
}

id sub_1A4756CAC()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 selectionSnapshot];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 areAllItemsSelected];
  }

  else
  {
    v4 = 1;
  }

  v5 = [v0 presentationEnvironment];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    *(v7 + 24) = v4;
    *(v7 + 32) = ObjectType;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1A4757D68;
    *(v8 + 24) = v7;
    v13[4] = sub_1A3D78DD0;
    v13[5] = v8;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1A3D35A90;
    v13[3] = &block_descriptor_267;
    v9 = _Block_copy(v13);
    v10 = v0;

    v11 = [v6 presentAlertWithConfigurationHandler_];
    swift_unknownObjectRelease();
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    swift_unknownObjectRelease();

    if (v6)
    {
      __break(1u);
    }
  }

  else
  {

    return [v0 completeUserInteractionTaskWithSuccess:0 error:0];
  }

  return result;
}

void sub_1A4756EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5240C64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  if (!a1)
  {
    goto LABEL_14;
  }

  if ([swift_unknownObjectRetain() count] < 1)
  {
    swift_unknownObjectRelease();
LABEL_14:
    if (a2)
    {
      v12 = sub_1A5240B74();
    }

    else
    {
      v12 = 0;
    }

    [v9 completeUserInteractionTaskWithSuccess:0 error:v12];

    return;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  swift_unknownObjectRetain();
  sub_1A5240C74();
  sub_1A5240C54();
  while (v15)
  {
    sub_1A3C57128(&v14, v16);
    sub_1A3C2F0BC(v16, &v14);
    sub_1A3DB58C8();
    if (swift_dynamicCast())
    {
      v11 = v13[1];
      MEMORY[0x1A5907D70]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();

      __swift_destroy_boxed_opaque_existential_0(v16);
      v10 = v17;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    sub_1A5240C54();
  }

  sub_1A3C35B00(&v14);
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0x60))(v10);
  [v9 completeUserInteractionTaskWithSuccess:1 error:0];
  swift_unknownObjectRelease();

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A4757190(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  swift_unknownObjectRetain();
  v8 = a4;
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_1A4757250()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))())
  {
    v2 = (*((*v1 & *v0) + 0x88))();

    if (v2)
    {
      v3 = v2;
      v4 = [v0 undoManager];
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7[4] = sub_1A47580B4;
      v7[5] = v5;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 1107296256;
      v7[2] = sub_1A3D6084C;
      v7[3] = &block_descriptor_9_9;
      v6 = _Block_copy(v7);

      [v3 executeWithUndoManager:v4 completionHandler:v6];

      _Block_release(v6);
    }
  }

  else
  {

    [v0 completeBackgroundTaskWithSuccess:0 error:0];
  }
}

id PhotoKitClearRecentCollectionAssetsActionPerformer.init(actionType:)()
{
  *&v0[OBJC_IVAR____TtC12PhotosUICore50PhotoKitClearRecentCollectionAssetsActionPerformer_assetsToProcess] = 0;
  v1 = sub_1A524C634();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for PhotoKitClearRecentCollectionAssetsActionPerformer();
  v2 = objc_msgSendSuper2(&v4, sel_initWithActionType_, v1);

  return v2;
}

uint64_t sub_1A4757718()
{
  v0 = sub_1A524C634();

  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

uint64_t sub_1A47577B4(unint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_1A4758114(a1);
  }

  v2 = sub_1A524C634();

  v3 = PXLocalizedString(v2);

  v4 = sub_1A524C674();
  return v4;
}

uint64_t sub_1A475790C()
{
  v0 = sub_1A524C634();

  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

uint64_t sub_1A47579A8(unint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_1A4758114(a1);
  }

  v2 = sub_1A524C634();

  v3 = PXLocalizedString(v2);

  v4 = sub_1A524C674();
  return v4;
}

uint64_t sub_1A4757A84(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  a2(0);
  sub_1A3DB58C8();
  v4 = sub_1A524CA14();
  return a3(v4);
}

id sub_1A4757AE4()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1A524C634();

  v3 = [v1 initWithActionType_];

  return v3;
}

id sub_1A4757B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1A524C634();

  v9.receiver = v3;
  v9.super_class = a3(v6);
  v7 = objc_msgSendSuper2(&v9, sel_initWithActionType_, v5);

  return v7;
}

id sub_1A4757BF4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6.receiver = a1;
  v6.super_class = a4();
  return objc_msgSendSuper2(&v6, sel_initWithActionType_, a3);
}

id sub_1A4757C58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s12PhotosUICore50PhotoKitClearRecentCollectionAssetsActionPerformerC10canPerform4with6person11socialGroupSbSo19PXSelectionSnapshotC_So8PHPersonCSgSo08PHSocialP0CSgtFZ_0(void *a1)
{
  v3 = [a1 dataSource];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && [v4 containerCollection])
  {
    if ((*(v1 + 112))())
    {
      v5 = [a1 isAnyItemSelected];
    }

    else
    {
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1A4757D68(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = [v3 assets];
  sub_1A3DB58C8();
  v7 = sub_1A524CA34();

  (*(v5 + 120))(v7, v4);

  v8 = sub_1A524C634();

  [a1 setTitle_];

  [a1 setStyle_];
  if ([v3 sender])
  {
    v9 = swift_dynamicCastObjCProtocolConditional();
    if (!v9)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = 0;
  }

  [a1 setSourceItem_];
  swift_unknownObjectRelease();
  v10 = sub_1A524C634();
  v11 = PXLocalizedString(v10);

  if (!v11)
  {
    sub_1A524C674();
    v11 = sub_1A524C634();
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1A475839C;
  v22 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A3C2E0D0;
  v20 = &block_descriptor_29_7;
  v13 = _Block_copy(&aBlock);

  [a1 addActionWithTitle:v11 style:1 action:v13];
  _Block_release(v13);

  (*(v5 + 128))(v4 ^ 1);
  v14 = sub_1A524C634();

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1A47583FC;
  v22 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A3C2E0D0;
  v20 = &block_descriptor_33_5;
  v16 = _Block_copy(&aBlock);

  [a1 addActionWithTitle:v14 style:0 action:v16];
  _Block_release(v16);
}

void sub_1A47580B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong completeBackgroundTaskWithSuccess:1 error:0];
  }
}

void sub_1A4758114(unint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1 >> 62)
  {
    v1 = sub_1A524E2B4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6[0] = 0;
  v4 = 0;
  v2 = objc_opt_self();
  sub_1A3DB58C8();
  v3 = sub_1A524CA14();
  [v2 assetTypeCountsForAssets:v3 photosCount:v6 videosCount:&v5 othersCount:&v4];

  if (v6[0] == v1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v5 == v1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A475839C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

void *sub_1A47583FC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result assets];
    if (!v2)
    {
      sub_1A3DB58C8();
      sub_1A524CA34();
      v2 = sub_1A524CA14();
    }

    v3 = [v1 presentationEnvironment];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1A47585A0;
    *(v5 + 24) = v4;
    aBlock[4] = sub_1A47585B0;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A4757190;
    aBlock[3] = &block_descriptor_40_3;
    v6 = _Block_copy(aBlock);

    PXPromptToSaveUnsavedSyndicatedAssetsIfNecessary(v2, v3, v6);
    _Block_release(v6);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A4758628()
{
  v0 = sub_1A524C634();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_1EB1EAD50 = v1;
}

uint64_t *sub_1A4758698()
{
  if (qword_1EB157A10 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EAD50;
}

uint64_t sub_1A47586E8()
{
  sub_1A3EBD0AC();
  result = sub_1A524DEE4();
  qword_1EB1EAFD0 = result;
  return result;
}

uint64_t *sub_1A475874C()
{
  if (qword_1EB16EB80 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EAFD0;
}

uint64_t sub_1A475879C()
{
  type metadata accessor for PhotosCollectionPreviewRepository();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EB18F468 = result;
  return result;
}

uint64_t PhotosCollectionPreviewRepository.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t *sub_1A4758804()
{
  if (qword_1EB18F460 != -1)
  {
    swift_once();
  }

  return &qword_1EB18F468;
}

uint64_t static PhotosCollectionPreviewRepository.shared.getter()
{
  if (qword_1EB18F460 != -1)
  {
    swift_once();
  }
}

uint64_t PhotosCollectionPreviewRepository.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

void sub_1A47588C8(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = v3;
  sub_1A4759084(0, &qword_1EB128C60, sub_1A4759050, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_1A4759050(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v16 = a2[1];
  v26 = *a2;
  v25 = v16;
  v24 = *(a2 + 16);
  v23 = a2[3];
  v22 = *(a2 + 32);
  v21 = a2[5];
  v20 = *(a2 + 48);
  v19 = *a3;
  v27 = v15;
  LOBYTE(v28) = a1;
  swift_unknownObjectRetain();
  sub_1A47590E8(&v27, v29);
  swift_beginAccess();
  if (*(*(v4 + 16) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v18 = *(v14 + 56);
  v18(v11, 1, 1, v13);
  type metadata accessor for PhotosCollectionPreviewPlayer(0);
  sub_1A52464E4();
}

void sub_1A4759084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A47590E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  swift_unknownObjectRetain();
  if (!v4)
  {
    v13 = [v3 uuid];
    v9 = sub_1A524C674();
    v10 = v14;
    swift_unknownObjectRelease();

    v6 = sub_1A485AD1C();
    v8 = v15;
    v11 = 0;
    LOBYTE(v4) = -1;
    goto LABEL_5;
  }

  result = sub_1A485AD1C();
  v6 = result;
  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = v3;
  if ((v4 & 0xFE) == 2)
  {
LABEL_5:
    result = swift_unknownObjectRelease();
    v12 = 0;
    v3 = v11;
    goto LABEL_6;
  }

  v10 = 0;
  v12 = v3;
LABEL_6:
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8 & 1;
  *(a2 + 48) = v12;
  return result;
}

uint64_t sub_1A47591F8(uint64_t a1, uint64_t a2)
{
  sub_1A4759084(0, &qword_1EB128C60, sub_1A4759050, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  sub_1A4759050(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1A475985C(a1);
    sub_1A47598E8(a2, v7);
    sub_1A475AC20(a2);
    return sub_1A475985C(v7);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1A475A2B8(v13, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1A475AC20(a2);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1A47593C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v24 = *a1;
  LOBYTE(v25) = v2;
  swift_unknownObjectRetain();
  sub_1A47590E8(&v24, v31);
  v5 = v32;
  v6 = v33;
  v24 = v31[0];
  v25 = v31[1];
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v11 = v3;
  LOBYTE(v12) = v4;
  swift_unknownObjectRetain();
  sub_1A47590E8(&v11, v18);
  v7 = v19;
  v8 = v20;
  v11 = v18[0];
  v12 = v18[1];
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v9 = sub_1A475A8FC(&v24, &v11);

  sub_1A475AAE4(v7, v8);
  swift_unknownObjectRelease();

  sub_1A475AAE4(v5, v6);
  swift_unknownObjectRelease();
  return v9 & 1;
}

uint64_t sub_1A4759504(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    PXDisplayAssetFetchResultEqualToDisplayAssetFetchResult();
  }

  return 1;
}

uint64_t sub_1A475953C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (*(v0 + 8))
  {
    sub_1A524ECB4();
    sub_1A524C794();
    if (v1 != 255)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1A524ECB4();
    if (v3)
    {
      return sub_1A524ECB4();
    }

    goto LABEL_7;
  }

  sub_1A524ECB4();
  if (v1 == 255)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1A524ECB4();
  sub_1A3D41BF8();
  swift_unknownObjectRetain();
  sub_1A524C4B4();
  swift_unknownObjectRelease();
  if (v3)
  {
    return sub_1A524ECB4();
  }

LABEL_7:
  sub_1A524ECB4();
  return MEMORY[0x1A590A010](v2);
}

uint64_t sub_1A4759648()
{
  sub_1A524EC94();
  sub_1A475953C();
  return sub_1A524ECE4();
}

uint64_t sub_1A47596C0()
{
  sub_1A524EC94();
  sub_1A475953C();
  return sub_1A524ECE4();
}

uint64_t PhotosCollectionPreviewRepository.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1A475978C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176A78);
  __swift_project_value_buffer(v0, qword_1EB176A78);
  sub_1A5246EF4();
}

uint64_t sub_1A47597F0(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A475953C();
  v2 = sub_1A524ECE4();

  return sub_1A475A4F4(a1, v2);
}

uint64_t sub_1A475985C(uint64_t a1)
{
  sub_1A4759084(0, &qword_1EB128C60, sub_1A4759050, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A47598E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A47597F0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A475A61C();
      v9 = v23;
    }

    v10 = *(v9 + 48) + 56 * v7;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);

    sub_1A475AAE4(v11, v12);
    swift_unknownObjectRelease();
    v13 = *(v9 + 56);
    sub_1A4759050(0);
    v15 = v14;
    v22 = *(v14 - 8);
    (*(v22 + 32))(a2, v13 + *(v22 + 72) * v7, v14);
    sub_1A4759F94(v7, v9);
    *v3 = v9;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    sub_1A4759050(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1A4759A80(uint64_t a1, int a2)
{
  v3 = v2;
  sub_1A4759050(0);
  v53 = v5;
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A475AC88();
  v46 = a2;
  v57 = sub_1A524E774();
  v51 = v7;
  if (*(v7 + 16))
  {
    v42 = v2;
    v8 = 0;
    v9 = *(v51 + 64);
    v43 = (v51 + 64);
    v10 = 1 << *(v51 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v9;
    v13 = (v10 + 63) >> 6;
    v44 = (v47 + 16);
    v48 = (v47 + 32);
    v14 = v57 + 64;
    v45 = v13;
    while (1)
    {
      if (!v12)
      {
        v20 = v8;
        result = v43;
        while (1)
        {
          v8 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v8 >= v13)
          {
            break;
          }

          v22 = v43[v8];
          ++v20;
          if (v22)
          {
            v19 = __clz(__rbit64(v22));
            v50 = (v22 - 1) & v22;
            goto LABEL_15;
          }
        }

        if ((v46 & 1) == 0)
        {

          v3 = v42;
          goto LABEL_43;
        }

        v41 = 1 << *(v51 + 32);
        v3 = v42;
        if (v41 >= 64)
        {
          bzero(v43, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v43 = -1 << v41;
        }

        *(v51 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v12));
      v50 = (v12 - 1) & v12;
LABEL_15:
      v23 = v19 | (v8 << 6);
      v24 = *(v51 + 56);
      v25 = *(v51 + 48) + 56 * v23;
      v26 = *(v25 + 8);
      v55 = *v25;
      v27 = *(v25 + 16);
      v28 = *(v25 + 24);
      v29 = *(v25 + 32);
      v30 = *(v25 + 40);
      v31 = *(v25 + 48);
      v49 = *(v47 + 72);
      v32 = v24 + v49 * v23;
      if ((v46 & 1) == 0)
      {
        (*v44)(v52, v32, v53);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*v48)(v52, v32, v53);
      v54 = v27;
      v56 = v28;
      sub_1A524EC94();
      if (v26)
      {
        sub_1A524ECB4();
        v33 = v26;
        sub_1A524C794();
      }

      else
      {
        v33 = 0;
        sub_1A524ECB4();
      }

      if (v56 == 255)
      {
        sub_1A524ECB4();
        if (v30)
        {
LABEL_23:
          sub_1A524ECB4();
          goto LABEL_26;
        }
      }

      else
      {
        v58 = v54;
        v59 = v56;
        sub_1A524ECB4();
        sub_1A3D41BF8();
        swift_unknownObjectRetain();
        v13 = v45;
        sub_1A524C4B4();
        swift_unknownObjectRelease();
        if (v30)
        {
          goto LABEL_23;
        }
      }

      sub_1A524ECB4();
      MEMORY[0x1A590A010](v29);
LABEL_26:
      result = sub_1A524ECE4();
      v34 = -1 << *(v57 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = v57;
      v17 = *(v57 + 48) + 56 * v15;
      v18 = v54;
      *v17 = v55;
      *(v17 + 8) = v33;
      *(v17 + 16) = v18;
      *(v17 + 24) = v56;
      *(v17 + 32) = v29;
      *(v17 + 40) = v30;
      *(v17 + 48) = v31;
      (*v48)((*(v16 + 56) + v49 * v15), v52, v53);
      ++*(v16 + 16);
      v12 = v50;
    }
  }

LABEL_43:
  *v3 = v57;
  return result;
}

unint64_t sub_1A4759F94(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v28 = ~v5;
    v27 = (sub_1A524E244() + 1) & ~v5;
    do
    {
      v7 = *(v2 + 48) + 56 * v6;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v10 = *(v7 + 24);
      v30 = *(v7 + 32);
      v11 = *(v7 + 40);
      sub_1A524EC94();
      if (v8)
      {
        sub_1A524ECB4();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524ECB4();
      sub_1A475AC0C(v9, v10);
      swift_unknownObjectRetain();
      if (v10 == 255)
      {
        sub_1A524ECB4();
        if (v11)
        {
LABEL_9:
          sub_1A524ECB4();
          goto LABEL_13;
        }
      }

      else
      {
        sub_1A524ECB4();
        sub_1A3D41BF8();
        swift_unknownObjectRetain();
        sub_1A524C4B4();
        swift_unknownObjectRelease();
        if (v11)
        {
          goto LABEL_9;
        }
      }

      sub_1A524ECB4();
      MEMORY[0x1A590A010](v30);
LABEL_13:
      v12 = sub_1A524ECE4();

      sub_1A475AAE4(v9, v10);
      result = swift_unknownObjectRelease();
      v13 = v12 & v28;
      if (v3 >= v27)
      {
        v2 = a2;
        if (v13 < v27)
        {
          goto LABEL_5;
        }

LABEL_17:
        if (v3 < v13)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }

      v2 = a2;
      if (v13 < v27)
      {
        goto LABEL_17;
      }

LABEL_18:
      v14 = *(v2 + 48);
      v15 = v14 + 56 * v3;
      v16 = (v14 + 56 * v6);
      if (v3 != v6 || v15 >= v16 + 56)
      {
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        *(v15 + 48) = *(v16 + 6);
        *(v15 + 16) = v18;
        *(v15 + 32) = v19;
        *v15 = v17;
      }

      v20 = *(v2 + 56);
      sub_1A4759050(0);
      v22 = *(*(v21 - 8) + 72);
      v23 = v22 * v3;
      result = v20 + v22 * v3;
      if (v22 * v3 < (v22 * v6) || result >= v20 + v22 * v6 + v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v23 == v22 * v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v28;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(v2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v26;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_1A475A2B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A47597F0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A475A61C();
      goto LABEL_7;
    }

    sub_1A4759A80(v13, a3 & 1);
    v24 = sub_1A47597F0(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A475A42C(v10, a2, a1, v16);
      return sub_1A475AC50(a2, v26);
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  sub_1A4759050(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 40);
  v21 = v18;
  v22 = v17 + *(v19 + 72) * v10;

  return v20(v22, a1, v21);
}

uint64_t sub_1A475A42C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 56 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  v9 = a4[7];
  sub_1A4759050(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_1A475A4F4(uint64_t a1, uint64_t a2)
{
  v3 = a2 & ~(-1 << *(v2 + 32));
  if ((*(v2 + 64 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return a2 & ~(-1 << *(v2 + 32));
}

void *sub_1A475A61C()
{
  v1 = v0;
  sub_1A4759050(0);
  v40 = v2;
  v42 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A475AC88();
  v4 = *v0;
  v5 = sub_1A524E764();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v34, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v41 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = v42 + 32;
    v37 = v42 + 16;
    v35 = v15;
    v38 = v4;
    v16 = v39;
    if (v14)
    {
      v17 = __clz(__rbit64(v14));
      v46 = (v14 - 1) & v14;
      goto LABEL_17;
    }

    v18 = 0;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v33;
        v6 = v41;
        goto LABEL_20;
      }

      v19 = *(v34 + v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v20 = v17 | (v10 << 6);
        v21 = 56 * v20;
        v22 = *(v4 + 56);
        v23 = *(v4 + 48) + 56 * v20;
        v24 = *(v23 + 8);
        v43 = *v23;
        v25 = *(v23 + 16);
        v45 = *(v23 + 32);
        v44 = *(v23 + 40);
        v26 = *(v23 + 48);
        v27 = v42;
        v28 = *(v42 + 72) * v20;
        v29 = *(v23 + 24);
        v30 = v40;
        (*(v42 + 16))(v39, v22 + v28, v40);
        v31 = v41;
        v32 = *(v41 + 48) + v21;
        *v32 = v43;
        *(v32 + 8) = v24;
        *(v32 + 16) = v25;
        *(v32 + 24) = v29;
        *(v32 + 32) = v45;
        *(v32 + 40) = v44;
        *(v32 + 48) = v26;
        (*(v27 + 32))(*(v31 + 56) + v28, v16, v30);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1A475A8FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v5 != 255)
  {
    if (v11 != 255)
    {
      sub_1A475AC0C(v4, v5);
      sub_1A475AC0C(v10, v11);
      sub_1A475AC0C(v4, v5);
      sub_1A3E6531C();
      v15 = sub_1A524C594();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1A475AAE4(v4, v5);
      if ((v15 & 1) == 0)
      {
        return 0;
      }

      if (v7)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

    sub_1A475AC0C(v4, v5);
    sub_1A475AC0C(v10, 255);
    sub_1A475AC0C(v4, v5);
    swift_unknownObjectRelease();
LABEL_17:
    sub_1A475AAE4(v4, v5);
    sub_1A475AAE4(v10, v11);
    return 0;
  }

  sub_1A475AC0C(v4, 255);
  if (v11 != 255)
  {
    sub_1A475AC0C(v10, v11);
    goto LABEL_17;
  }

  sub_1A475AC0C(v10, 255);
  sub_1A475AAE4(v4, 255);
  if ((v7 & 1) == 0)
  {
LABEL_21:
    if (v6 == v12)
    {
      v17 = v13;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_25;
    }

    return 0;
  }

LABEL_12:
  if (!v13)
  {
    return 0;
  }

LABEL_25:
  result = 1;
  if (v8)
  {
    if (v14)
    {
      PXDisplayAssetFetchResultEqualToDisplayAssetFetchResult();
    }
  }

  return result;
}

uint64_t sub_1A475AAE4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore0A21PreviewableCollectionOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1A475ABB8()
{
  result = qword_1EB18F570;
  if (!qword_1EB18F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB18F570);
  }

  return result;
}

uint64_t sub_1A475AC0C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_1A475AC88()
{
  if (!qword_1EB126480)
  {
    sub_1A4759050(255);
    sub_1A475ACF4();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126480);
    }
  }
}

unint64_t sub_1A475ACF4()
{
  result = qword_1EB18F580[0];
  if (!qword_1EB18F580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB18F580);
  }

  return result;
}

unint64_t sub_1A475AD5C()
{
  result = qword_1EB140EB0;
  if (!qword_1EB140EB0)
  {
    type metadata accessor for PFStoryColorGradeKind(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140EB0);
  }

  return result;
}

unint64_t sub_1A475ADB8()
{
  result = qword_1EB1D1320[0];
  if (!qword_1EB1D1320[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D1320);
  }

  return result;
}

id sub_1A475AE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtCC12PhotosUICore19AssetsSectionButton13Configuration_title];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR____TtCC12PhotosUICore19AssetsSectionButton13Configuration_numberOfLines] = a3;
  v13 = &v11[OBJC_IVAR____TtCC12PhotosUICore19AssetsSectionButton13Configuration_action];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_1A475AEC0@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AssetsSectionButton.Configuration();
  *a1 = v3;

  return v3;
}

void sub_1A475AFAC()
{
  v1 = *(v0 + OBJC_IVAR___PXAssetsSectionButton_button);
  v2 = sub_1A475B7C8();
  [v1 setAttributedTitle:v2 forState:0];

  v3 = OBJC_IVAR___PXAssetsSectionButton_configuration;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4)
  {
    v5 = v4;
    v6 = [v1 titleLabel];
    if (v6)
    {
      v7 = v6;
      [v6 setNumberOfLines_];
    }

    v8 = [v1 titleLabel];
    if (v8)
    {
      v9 = v8;
      [v8 setLineBreakMode_];
    }
  }
}

void *sub_1A475B0A4()
{
  v1 = OBJC_IVAR___PXAssetsSectionButton_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A475B0F0(void *a1)
{
  v3 = OBJC_IVAR___PXAssetsSectionButton_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A475AFAC();
}

void (*sub_1A475B158(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A475B1BC;
}

void sub_1A475B1BC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A475AFAC();
  }
}

char *sub_1A475B3B8(double a1, double a2, double a3, double a4)
{
  v9 = sub_1A524DE34();
  MEMORY[0x1EEE9AC00](v9 - 8);
  *&v4[OBJC_IVAR___PXAssetsSectionButton_configuration] = 0;
  *&v4[OBJC_IVAR___PXAssetsSectionButton_userData] = 0;
  v10 = &v4[OBJC_IVAR___PXAssetsSectionButton_clippingRect];
  sub_1A3C52C70(0, &qword_1EB126570);
  *v10 = 0u;
  *(v10 + 1) = 0u;
  sub_1A524DCA4();
  *&v4[OBJC_IVAR___PXAssetsSectionButton_button] = sub_1A524DE44();
  v19.receiver = v4;
  v19.super_class = type metadata accessor for AssetsSectionButton();
  v11 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR___PXAssetsSectionButton_button;
  v13 = *&v11[OBJC_IVAR___PXAssetsSectionButton_button];
  v14 = v11;
  [v14 addSubview_];
  v15 = *&v11[v12];
  sub_1A3C52C70(0, &qword_1EB126590);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v15;
  v17 = sub_1A524DC64();
  [v16 addAction:v17 forControlEvents:0x2000];

  return v14;
}

void sub_1A475B5E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x70))();

    if (v2)
    {
      v3 = *&v2[OBJC_IVAR____TtCC12PhotosUICore19AssetsSectionButton13Configuration_action];

      v3();
    }
  }
}

uint64_t sub_1A475B7C8()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

uint64_t sub_1A475BBA8(uint64_t a1)
{
  v3 = OBJC_IVAR___PXAssetsSectionButton_userData;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  if (!a1)
  {
    goto LABEL_4;
  }

  type metadata accessor for AssetsSectionButton.Configuration();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_4:
    v4 = 0;
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))(v4);
  return swift_unknownObjectRelease();
}

void (*sub_1A475BC70(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___PXAssetsSectionButton_userData;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A475BCF8;
}

void sub_1A475BCF8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + v3[4]))
    {
      type metadata accessor for AssetsSectionButton.Configuration();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        swift_unknownObjectRetain();
        v5 = v6;
      }
    }

    else
    {
      v5 = 0;
    }

    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x78))(v5);
  }

  free(v3);
}

double sub_1A475BDFC()
{
  v1 = v0 + OBJC_IVAR___PXAssetsSectionButton_clippingRect;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A475BEB4(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR___PXAssetsSectionButton_clippingRect);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

id sub_1A475C05C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A475C0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C56110();
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 shouldUseAvailabilityMonitor];

  if (v5)
  {

    return sub_1A475C234(a1, a2);
  }

  else
  {
    v7 = *MEMORY[0x1E69C1498];
    v8 = sub_1A52453A4();
    v10 = *(v8 - 8);
    (*(v10 + 104))(a2, v7, v8);
    v9 = *(v10 + 56);

    return v9(a2, 0, 1, v8);
  }
}

uint64_t sub_1A475C234(uint64_t a1, uint64_t a2)
{
  sub_1A44CB134(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static LemonadeMemoriesCreationAvailabilityUtils.shouldShowMemoryCreationButton(for:)()
{
  v0 = sub_1A52453A4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69C1498], v0, v2);
  v5 = sub_1A5245394();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1A475C3A0(uint64_t a1)
{
  v2 = sub_1A52453A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C1478])
  {
    (*(v3 + 96))(v6, v2);
    v8 = sub_1A52452D4();
    (*(*(v8 - 8) + 8))(v6, v8);
    return 0;
  }

  if (v7 == *MEMORY[0x1E69C1480])
  {
    (*(v3 + 96))(v6, v2);
    v10 = sub_1A5245364();
  }

  else
  {
    if (v7 != *MEMORY[0x1E69C1490])
    {
      if (v7 != *MEMORY[0x1E69C1488] && v7 != *MEMORY[0x1E69C1498])
      {
        (*(v3 + 8))(v6, v2);
      }

      return 0;
    }

    (*(v3 + 96))(v6, v2);
    v10 = sub_1A5245384();
  }

  (*(*(v10 - 8) + 8))(v6, v10);
  return 1;
}

uint64_t static LemonadeMemoriesCreationAvailabilityUtils.canProceedWithNavigationOrShowErrorAlert(photoLibrary:viewController:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = sub_1A52453A4();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[6] = v5;
  v6 = swift_task_alloc();
  v2[7] = v6;
  *v6 = v2;
  v6[1] = sub_1A475C6CC;

  return static LemonadeMemoriesCreationAvailabilityUtils.requestMemoryCreationAvailability(photoLibrary:)(v5, a1);
}

uint64_t sub_1A475C6CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A475C7C8, 0, 0);
}

uint64_t sub_1A475C7C8()
{
  v7 = v0;
  static LemonadeMemoriesCreationAvailabilityUtils.navigationPermission(for:)(v0[6], &v6);
  if (v6)
  {
    if (v6 == 1)
    {
      sub_1A524CC54();
      v0[8] = sub_1A524CC44();
      v2 = sub_1A524CBC4();

      return MEMORY[0x1EEE6DFA0](sub_1A475C8E8, v2, v1);
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1A475C8E8()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];

  static LemonadeMemoriesCreationUnavailableAlert.show(state:viewController:photoLibrary:)(v1, v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A475C970, 0, 0);
}

uint64_t sub_1A475C970()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1(0);
}

uint64_t static LemonadeMemoriesCreationAvailabilityUtils.requestMemoryCreationAvailability(photoLibrary:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A52453A4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_1A5246F24();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A475CB30, 0, 0);
}

uint64_t sub_1A475CB30()
{
  sub_1A3C56110();
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 shouldUseAvailabilityMonitor];

  if (v2)
  {
    v4 = v0[11];
    v3 = v0[12];
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[3];
    v11 = sub_1A3C4A780();
    (*(v4 + 16))(v3, v11, v5);
    type metadata accessor for LemonadeMemoriesCreationAvailabilityManager();
    v12 = sub_1A3C3A660(v10);
    v0[13] = v12;
    v13 = *(*v12 + 192);
    v14 = (*v12 + 192) & 0xFFFFFFFFFFFFLL | 0xBC8C000000000000;
    v0[14] = v13;
    v0[15] = v14;
    v13();
    (*(v9 + 104))(v7, *MEMORY[0x1E69C1488], v8);
    LOBYTE(v3) = sub_1A5245394();
    v15 = *(v9 + 8);
    v0[16] = v15;
    v0[17] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v7, v8);
    v16 = (v15)(v6, v8);
    if (v3)
    {
      v17 = sub_1A5246F04();
      v18 = sub_1A524D264();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1A3C1C000, v17, v18, "requestMemoryCreationAvailability was called while availability state was uninitialized, awaiting update", v19, 2u);
        MEMORY[0x1A590EEC0](v19, -1, -1);
      }

      v37 = (*(*v12 + 640) + **(*v12 + 640));
      v20 = swift_task_alloc();
      v0[18] = v20;
      *v20 = v0;
      v20[1] = sub_1A475D050;

      return v37();
    }

    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[4];
    v25 = v0[5];
    (v0[14])(v16);
    (*(v25 + 16))(v23, v22, v24);
    v26 = sub_1A5246F04();
    v27 = sub_1A524D264();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[16];
    v30 = v0[12];
    v31 = v0[10];
    v32 = v0[11];
    v33 = v0[6];
    v34 = v0[4];
    if (v28)
    {
      v35 = swift_slowAlloc();
      swift_slowAlloc();
      *v35 = 136315138;
      sub_1A475D6C8();
      sub_1A524EA44();
      v29(v33, v34);
      sub_1A3C2EF94();
    }

    v29(v33, v34);
    (*(v32 + 8))(v30, v31);
    (*(v0[5] + 32))(v0[2], v0[7], v0[4]);
  }

  else
  {
    (*(v0[5] + 104))(v0[2], *MEMORY[0x1E69C1498], v0[4]);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1A475D050()
{

  return MEMORY[0x1EEE6DFA0](sub_1A475D14C, 0, 0);
}

uint64_t sub_1A475D14C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v0 + 112))();
  (*(v4 + 16))(v2, v1, v3);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 128);
  v9 = *(v0 + 96);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v0 + 48);
  v13 = *(v0 + 32);
  if (v7)
  {
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    *v14 = 136315138;
    sub_1A475D6C8();
    sub_1A524EA44();
    v8(v12, v13);
    sub_1A3C2EF94();
  }

  v8(v12, v13);
  (*(v11 + 8))(v9, v10);
  (*(*(v0 + 40) + 32))(*(v0 + 16), *(v0 + 56), *(v0 + 32));

  v15 = *(v0 + 8);

  return v15();
}

void static LemonadeMemoriesCreationAvailabilityUtils.navigationPermission(for:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1A52453A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![objc_opt_self() isMemoryCreationEnabled])
  {
    goto LABEL_5;
  }

  sub_1A3C56110();
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  v9 = [v8 shouldUseAvailabilityMonitor];

  if (!v9)
  {
    goto LABEL_13;
  }

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 88))(v7, v4);
  if (v10 != *MEMORY[0x1E69C1478])
  {
    if (v10 == *MEMORY[0x1E69C1480])
    {
      (*(v5 + 96))(v7, v4);
      v13 = sub_1A5245364();
LABEL_10:
      (*(*(v13 - 8) + 8))(v7, v13);
      v12 = 1;
      goto LABEL_14;
    }

    if (v10 == *MEMORY[0x1E69C1490])
    {
      (*(v5 + 96))(v7, v4);
      v13 = sub_1A5245384();
      goto LABEL_10;
    }

    if (v10 == *MEMORY[0x1E69C1488])
    {
      goto LABEL_5;
    }

    if (v10 != *MEMORY[0x1E69C1498])
    {
      (*(v5 + 8))(v7, v4);
      goto LABEL_5;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  (*(v5 + 96))(v7, v4);
  v11 = sub_1A52452D4();
  (*(*(v11 - 8) + 8))(v7, v11);
LABEL_5:
  v12 = 2;
LABEL_14:
  *a2 = v12;
}

uint64_t LemonadeMemoriesCreationAvailabilityUtils.NavigationPermission.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

unint64_t sub_1A475D6C8()
{
  result = qword_1EB124BE8;
  if (!qword_1EB124BE8)
  {
    sub_1A52453A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124BE8);
  }

  return result;
}

unint64_t sub_1A475D724()
{
  result = qword_1EB140F00;
  if (!qword_1EB140F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140F00);
  }

  return result;
}

uint64_t sub_1A475D798()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1D14B8);
  __swift_project_value_buffer(v0, qword_1EB1D14B8);
  return sub_1A5246F14();
}

uint64_t sub_1A475D818()
{
  sub_1A524A134();
  sub_1A524A164();
  v0 = sub_1A524A1F4();

  qword_1EB1D14D8 = v0;
  return result;
}

void sub_1A475D85C()
{
  v0 = [objc_opt_self() px_mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  qword_1EB1D14E8 = CGRectGetWidth(v9);
}

void sub_1A475D8E8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1A524C634();
  v2 = [v0 integerForKey_];

  qword_1EB1D14F8 = v2;
}

CGFloat sub_1A475D978()
{
  v0 = [objc_opt_self() px_mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetWidth(v10) / 3.0;
  qword_1EB1D1508 = *&result;
  return result;
}

uint64_t RetailTransferState.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A475DB8C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A5240E64();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A475DC4C, 0, 0);
}

uint64_t sub_1A475DC4C()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_1A5241CC4();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A475DCE0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1A5240E64();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A475DDD8, 0, 0);
}

uint64_t sub_1A475DDD8()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  MEMORY[0x1A58FD070]();
  sub_1A5240D34();
  v4 = *(v2 + 8);
  v4(v1, v3);
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  v7 = [v6 temporaryDirectory];

  sub_1A5240DE4();
  v8 = v5;
  sub_1A5240D84();

  v4(v1, v3);
  v9 = [v5 defaultManager];
  sub_1A5240E04();
  v10 = sub_1A524C634();

  LODWORD(v5) = [v9 fileExistsAtPath_];

  if (v5)
  {
    v11 = [v8 defaultManager];
    v12 = sub_1A5240D44();
    v0[3] = 0;
    v13 = [v11 removeItemAtURL:v12 error:v0 + 3];

    v14 = v0[3];
    if (!v13)
    {
      goto LABEL_6;
    }

    v15 = v14;
  }

  v16 = v0[9];
  v17 = v0[6];
  v18 = [v8 defaultManager];
  MEMORY[0x1A58FD070]();
  v19 = sub_1A5240D44();
  v4(v16, v17);
  v20 = sub_1A5240D44();
  v0[2] = 0;
  LODWORD(v16) = [v18 copyItemAtURL:v19 toURL:v20 error:v0 + 2];

  v14 = v0[2];
  if (v16)
  {
    (*(v0[7] + 32))(v0[4], v0[8], v0[6]);
    v21 = v14;

    v22 = v0[1];
    goto LABEL_7;
  }

LABEL_6:
  v23 = v14;
  sub_1A5240B84();

  swift_willThrow();
  v4(v0[8], v0[6]);

  v22 = v0[1];
LABEL_7:

  return v22();
}

uint64_t sub_1A475E174(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A5240E64();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A477EA6C, 0, 0);
}

uint64_t sub_1A475E234(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1A5240E64();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A477E9E4, 0, 0);
}

uint64_t sub_1A475E36C(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  v4 = sub_1A5246D14();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  a3(v5);
  return sub_1A5241C94();
}

uint64_t sub_1A475E460()
{
  result = sub_1A523FB64();
  if (!v1)
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A475E4E4()
{
  v1[2] = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1A477E5D8(0, &qword_1EB141720, type metadata accessor for Photo, MEMORY[0x1E69E6720]);
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for Photo(0);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v4 = sub_1A5240E64();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1A477E5D8(0, &qword_1EB141728, type metadata accessor for Movie, v2);
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for Movie(0);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for Attachment.Status(0);
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_1A47760A0(0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  sub_1A524CC54();
  v1[23] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v1[24] = v8;
  v1[25] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A475E800, v8, v7);
}

uint64_t sub_1A475E800()
{
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[16];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v4 = *(v3 + 48);
  LODWORD(v2) = v4(v1, 1, v2);
  sub_1A47786F0(v1, sub_1A47760A0);
  if (v2 == 1)
  {
LABEL_2:
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[15];
    v8 = v0[16];
    *v5 = [objc_opt_self() progressWithTotalUnitCount_];
    swift_storeEnumTagMultiPayload();
    v9 = *(v8 + 56);
    v0[26] = v9;
    v0[27] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v9(v5, 0, 1, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A4778688(v5, v6, sub_1A47760A0);

    sub_1A52479F4();
    sub_1A47786F0(v5, sub_1A47760A0);
    v0[28] = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797210Attachment_pickerItem;
    v10 = swift_task_alloc();
    v0[29] = v10;
    sub_1A4779290(&qword_1EB1D20B0, type metadata accessor for Movie);
    *v10 = v0;
    v10[1] = sub_1A475EC7C;
    v11 = v0[11];

    return MEMORY[0x1EEDE8A88](v11);
  }

  v12 = v0[21];
  v13 = v0[15];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v4(v12, 1, v13))
  {
    v14 = v0[21];

    sub_1A47786F0(v14, sub_1A47760A0);
  }

  else
  {
    v15 = v0[21];
    v17 = v0[17];
    v16 = v0[18];
    sub_1A4778688(v15, v16, type metadata accessor for Attachment.Status);
    sub_1A47786F0(v15, sub_1A47760A0);
    sub_1A477E6A0(v16, v17, type metadata accessor for Attachment.Status);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      goto LABEL_2;
    }

    sub_1A47786F0(v0[17], type metadata accessor for Attachment.Status);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A475EC7C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_1A475F6E4;
  }

  else
  {
    v5 = sub_1A475EDB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A475EDB8()
{
  v1 = v0[11];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    sub_1A4778828(v1, &qword_1EB141728, type metadata accessor for Movie, MEMORY[0x1E69E6720]);
    v2 = swift_task_alloc();
    v0[31] = v2;
    sub_1A4779290(qword_1EB1D20B8, type metadata accessor for Photo);
    *v2 = v0;
    v2[1] = sub_1A475F1A4;
    v3 = v0[3];

    return MEMORY[0x1EEDE8A88](v3);
  }

  else
  {
    v14 = v0[26];
    v4 = v0[20];
    v15 = v0[19];
    v5 = v0[14];
    v13 = v0[15];
    v7 = v0[9];
    v6 = v0[10];
    v9 = v0[7];
    v8 = v0[8];

    sub_1A477E6A0(v1, v5, type metadata accessor for Movie);
    v10 = *(v8 + 16);
    v10(v6, v5, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    v10(v7, v6, v9);

    sub_1A52479F4();
    (*(v8 + 8))(v6, v9);
    sub_1A4778688(v5, v4, type metadata accessor for Movie);
    swift_storeEnumTagMultiPayload();
    v14(v4, 0, 1, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A4778688(v4, v15, sub_1A47760A0);

    sub_1A52479F4();
    sub_1A47786F0(v4, sub_1A47760A0);
    sub_1A47786F0(v5, type metadata accessor for Movie);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1A475F1A4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_1A475F89C;
  }

  else
  {
    v5 = sub_1A475F2E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A475F2E0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1A4778828(v0[3], &qword_1EB141720, type metadata accessor for Photo, MEMORY[0x1E69E6720]);
    sub_1A477E214();
    v4 = swift_allocError();
    swift_willThrow();
    v5 = v0[26];
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[15];
    swift_storeEnumTagMultiPayload();
    v5(v6, 0, 1, v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A4778688(v6, v7, sub_1A47760A0);

    sub_1A52479F4();

    v9 = sub_1A47760A0;
    v10 = v6;
  }

  else
  {
    v21 = v0[26];
    v11 = v0[20];
    v22 = v0[19];
    v13 = v0[9];
    v12 = v0[10];
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    v20 = v0[15];
    sub_1A477E6A0(v0[3], v16, type metadata accessor for Photo);
    v17 = *(v14 + 16);
    v17(v12, v16, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    v17(v13, v12, v15);

    sub_1A52479F4();
    (*(v14 + 8))(v12, v15);
    sub_1A4778688(v16, v11, type metadata accessor for Photo);
    swift_storeEnumTagMultiPayload();
    v21(v11, 0, 1, v20);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A4778688(v11, v22, sub_1A47760A0);

    sub_1A52479F4();
    sub_1A47786F0(v11, sub_1A47760A0);
    v9 = type metadata accessor for Photo;
    v10 = v16;
  }

  sub_1A47786F0(v10, v9);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A475F6E4()
{

  v1 = v0[30];
  v2 = v0[26];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[15];
  swift_storeEnumTagMultiPayload();
  v2(v3, 0, 1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4778688(v3, v4, sub_1A47760A0);

  sub_1A52479F4();

  sub_1A47786F0(v3, sub_1A47760A0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A475F89C()
{

  v1 = v0[32];
  v2 = v0[26];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[15];
  swift_storeEnumTagMultiPayload();
  v2(v3, 0, 1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4778688(v3, v4, sub_1A47760A0);

  sub_1A52479F4();

  sub_1A47786F0(v3, sub_1A47760A0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A475FA54()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797210Attachment_pickerItem;
  v2 = sub_1A523FBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797210Attachment__status;
  v4 = MEMORY[0x1E695C070];
  sub_1A477E5D8(0, &qword_1EB1410D8, sub_1A47760A0, MEMORY[0x1E695C070]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797210Attachment__url;
  sub_1A477E5D8(0, &qword_1EB1410E8, MEMORY[0x1E6968FB0], v4);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t sub_1A475FBCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A475FC40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A523FB64();
  if (v3)
  {
    *a1 = result;
    a1[1] = v3;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A475FCD0(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v13 != v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    if (v12 == 1)
    {
      v3 = [objc_opt_self() sharedState];
      v4 = sub_1A524C634();
      v5 = [v3 beginDisablingIdleTimerForReason_];

      v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_displaySleepToken);
      *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_displaySleepToken) = v5;
      if (v5)
      {
        if (!v6)
        {
          return;
        }

        sub_1A3C52C70(0, &qword_1EB13CD48);
        v7 = v5;
        v6 = v6;
        v8 = sub_1A524DBF4();

        if (v8)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_displaySleepToken);
      *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_displaySleepToken) = 0;
    }

    if (!v6)
    {
      return;
    }

    v7 = 0;
LABEL_10:
    v9 = objc_opt_self();
    v10 = v6;
    v11 = [v9 sharedState];
    [v11 endDisablingIdleTimer_];

    v6 = v7;
    v7 = v11;
LABEL_11:
  }
}

uint64_t sub_1A475FEE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();
}

uint64_t sub_1A475FF58@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

void sub_1A4760010(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  swift_getKeyPath();
  swift_getKeyPath();
  v2[1] = v1;

  sub_1A52479F4();
  v2[0] = v2[2];
  sub_1A475FCD0(v2);
}

uint64_t sub_1A4760104()
{
  v164 = type metadata accessor for Attachment.Status(0);
  v1 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v156 = &v137 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E695C070];
  sub_1A477E5D8(0, &qword_1EB1410E8, MEMORY[0x1E6968FB0], MEMORY[0x1E695C070]);
  v153 = v4;
  v167 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v152 = &v137 - v5;
  v165 = sub_1A5240E64();
  v6 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v154 = &v137 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v151 = &v137 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v150 = &v137 - v13;
  sub_1A477E5D8(0, &qword_1EB1410D8, sub_1A47760A0, v3);
  v149 = v14;
  v143 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v148 = &v137 - v15;
  sub_1A47760A0(0);
  v147 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v161 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v137 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v137 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v145 = &v137 - v23;
  v24 = sub_1A523FBB4();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v168 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v137 - v28;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v170) = 1;

  sub_1A52479F4();
  swift_getKeyPath();
  swift_getKeyPath();
  v160 = v0;
  sub_1A52479E4();

  v30 = v170;
  v31 = v170[2];
  v155 = v6;
  v138 = v1;
  if (!v31)
  {

    v1 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v32 = sub_1A4776C04(MEMORY[0x1E69E7CC0]);
    if (!(v1 >> 62))
    {
      v58 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v58)
      {
LABEL_16:
        v59 = 0;
        v168 = (v1 & 0xFFFFFFFFFFFFFF8);
        v169 = v1 & 0xC000000000000001;
        v166 = v1;
        v167 = v58;
        while (1)
        {
          if (v169)
          {
            v63 = v32;
            v32 = MEMORY[0x1A59097F0](v59, v1);
            v64 = v32;
            v65 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v59 >= *(v168 + 2))
            {
              goto LABEL_88;
            }

            v63 = v32;
            v64 = *(v1 + 8 * v59 + 32);

            v65 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              goto LABEL_87;
            }
          }

          v66 = sub_1A523FB64();
          if (!v67)
          {
            goto LABEL_102;
          }

          v1 = v66;
          v68 = v67;

          v69 = v63;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v170 = v63;
          v32 = sub_1A3C5DCA4(v1, v68);
          v72 = *(v63 + 16);
          v73 = (v71 & 1) == 0;
          v74 = __OFADD__(v72, v73);
          v75 = v72 + v73;
          if (v74)
          {
            goto LABEL_89;
          }

          v76 = v71;
          if (*(v69 + 24) < v75)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_28;
          }

          v83 = v32;
          sub_1A47747A0();
          v32 = v83;
          v78 = v167;
          if ((v76 & 1) == 0)
          {
LABEL_29:
            v79 = v170;
            v170[(v32 >> 6) + 8] |= 1 << v32;
            v80 = (v79[6] + 16 * v32);
            *v80 = v1;
            v80[1] = v68;
            *(v79[7] + 8 * v32) = v64;

            v81 = v79[2];
            v74 = __OFADD__(v81, 1);
            v82 = v81 + 1;
            if (v74)
            {
              goto LABEL_95;
            }

            v32 = v79;
            v79[2] = v82;
            goto LABEL_18;
          }

LABEL_17:
          v60 = v32;

          v61 = v170;
          *(v170[7] + 8 * v60) = v64;

          v32 = v61;
LABEL_18:
          ++v59;
          v62 = v161;
          v1 = v166;
          if (v65 == v78)
          {
            v153 = v32;
            v32 = sub_1A4776D2C(MEMORY[0x1E69E7CC0]);
            v162 = v32;
            v84 = 0;
            v85 = v138;
            v158 = (v138 + 56);
            v159 = (v138 + 48);
            while (1)
            {
              if (v169)
              {
                v32 = MEMORY[0x1A59097F0](v84, v1);
                v88 = v84 + 1;
                if (__OFADD__(v84, 1))
                {
                  goto LABEL_90;
                }
              }

              else
              {
                if (v84 >= *(v168 + 2))
                {
                  goto LABEL_91;
                }

                v88 = v84 + 1;
                if (__OFADD__(v84, 1))
                {
                  goto LABEL_90;
                }
              }

              v89 = sub_1A523FB64();
              if (!v90)
              {
                goto LABEL_102;
              }

              v1 = v89;
              v91 = v90;
              swift_getKeyPath();
              swift_getKeyPath();
              v92 = v157;
              sub_1A52479E4();

              if ((*v159)(v92, 1, v164) == 1)
              {
                sub_1A47786F0(v92, sub_1A47760A0);
                v93 = v162;
                v94 = sub_1A3C5DCA4(v1, v91);
                v96 = v95;

                if (v96)
                {
                  v97 = swift_isUniquelyReferenced_nonNull_native();
                  v170 = v93;
                  v87 = v167;
                  if (!v97)
                  {
                    sub_1A4774524();
                    v93 = v170;
                  }

                  sub_1A477E6A0(*(v93 + 56) + *(v85 + 72) * v94, v62, type metadata accessor for Attachment.Status);
                  v162 = v93;
                  sub_1A4773C4C(v94, v93);

                  v86 = 0;
                }

                else
                {

                  v86 = 1;
                  v87 = v167;
                }

                (*v158)(v62, v86, 1, v164);
                v32 = sub_1A47786F0(v62, sub_1A47760A0);
                v1 = v166;
                goto LABEL_39;
              }

              sub_1A477E6A0(v92, v156, type metadata accessor for Attachment.Status);
              v98 = v162;
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v170 = v98;
              v101 = sub_1A3C5DCA4(v1, v91);
              v102 = v98[2];
              v103 = (v100 & 1) == 0;
              v32 = v102 + v103;
              if (__OFADD__(v102, v103))
              {
                goto LABEL_96;
              }

              v104 = v100;
              if (v98[3] >= v32)
              {
                if (v99)
                {
                  if ((v100 & 1) == 0)
                  {
                    goto LABEL_61;
                  }
                }

                else
                {
                  sub_1A4774524();
                  if ((v104 & 1) == 0)
                  {
                    goto LABEL_61;
                  }
                }
              }

              else
              {
                sub_1A47735E4(v32, v99);
                v105 = sub_1A3C5DCA4(v1, v91);
                if ((v104 & 1) != (v106 & 1))
                {
                  goto LABEL_103;
                }

                v101 = v105;
                if ((v104 & 1) == 0)
                {
LABEL_61:
                  v107 = v170;
                  v170[(v101 >> 6) + 8] |= 1 << v101;
                  v108 = (v107[6] + 16 * v101);
                  *v108 = v1;
                  v108[1] = v91;
                  v85 = v138;
                  sub_1A477E6A0(v156, v107[7] + *(v138 + 72) * v101, type metadata accessor for Attachment.Status);

                  v109 = v107[2];
                  v74 = __OFADD__(v109, 1);
                  v110 = v109 + 1;
                  if (v74)
                  {
                    goto LABEL_98;
                  }

                  v162 = v107;
                  v107[2] = v110;
                  goto LABEL_63;
                }
              }

              v162 = v170;
              v85 = v138;
              sub_1A4778750(v156, v170[7] + *(v138 + 72) * v101);

LABEL_63:
              v62 = v161;
              v1 = v166;
              v87 = v167;
LABEL_39:
              ++v84;
              if (v88 == v87)
              {
                v32 = sub_1A4776F78(MEMORY[0x1E69E7CC0]);
                v111 = v32;
                v112 = 0;
                v161 = (v155 + 32);
                v159 = (v155 + 40);
                while (1)
                {
                  if (v169)
                  {
                    v32 = MEMORY[0x1A59097F0](v112, v1);
                    v114 = v112 + 1;
                    if (__OFADD__(v112, 1))
                    {
                      goto LABEL_92;
                    }
                  }

                  else
                  {
                    if (v112 >= *(v168 + 2))
                    {
                      goto LABEL_93;
                    }

                    v114 = v112 + 1;
                    if (__OFADD__(v112, 1))
                    {
                      goto LABEL_92;
                    }
                  }

                  v164 = v114;
                  v115 = sub_1A523FB64();
                  if (!v116)
                  {
                    goto LABEL_102;
                  }

                  v117 = v115;
                  v1 = v116;
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v118 = v154;
                  sub_1A52479E4();

                  v119 = *v161;
                  (*v161)(v163, v118, v165);
                  v120 = swift_isUniquelyReferenced_nonNull_native();
                  v170 = v111;
                  v122 = sub_1A3C5DCA4(v117, v1);
                  v123 = v111[2];
                  v124 = (v121 & 1) == 0;
                  v32 = v123 + v124;
                  if (__OFADD__(v123, v124))
                  {
                    goto LABEL_94;
                  }

                  v125 = v121;
                  if (v111[3] >= v32)
                  {
                    if (v120)
                    {
                      if ((v121 & 1) == 0)
                      {
                        goto LABEL_78;
                      }
                    }

                    else
                    {
                      sub_1A4774280();
                      if ((v125 & 1) == 0)
                      {
                        goto LABEL_78;
                      }
                    }
                  }

                  else
                  {
                    sub_1A477323C(v32, v120);
                    v126 = sub_1A3C5DCA4(v117, v1);
                    if ((v125 & 1) != (v127 & 1))
                    {
                      goto LABEL_103;
                    }

                    v122 = v126;
                    if ((v125 & 1) == 0)
                    {
LABEL_78:
                      v111 = v170;
                      v170[(v122 >> 6) + 8] |= 1 << v122;
                      v128 = (v111[6] + 16 * v122);
                      *v128 = v117;
                      v128[1] = v1;
                      v119(v111[7] + *(v155 + 72) * v122, v163, v165);

                      v129 = v111[2];
                      v74 = __OFADD__(v129, 1);
                      v130 = v129 + 1;
                      if (v74)
                      {
                        goto LABEL_97;
                      }

                      v111[2] = v130;
                      goto LABEL_66;
                    }
                  }

                  v111 = v170;
                  (*(v155 + 40))(v170[7] + *(v155 + 72) * v122, v163, v165);

LABEL_66:
                  ++v112;
                  v1 = v166;
                  v113 = qword_1EB1D0F10 + 240;
                  if (v164 == v167)
                  {
                    v131 = v162;
                    goto LABEL_101;
                  }
                }
              }
            }
          }
        }

        sub_1A4773980(v75, isUniquelyReferenced_nonNull_native);
        v32 = sub_1A3C5DCA4(v1, v68);
        if ((v76 & 1) != (v77 & 1))
        {
          goto LABEL_103;
        }

LABEL_28:
        v78 = v167;
        if ((v76 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_17;
      }

LABEL_100:
      v153 = v32;
      v133 = MEMORY[0x1E69E7CC0];
      v131 = sub_1A4776D2C(MEMORY[0x1E69E7CC0]);
      v111 = sub_1A4776F78(v133);
      v113 = &qword_1EB1D0F10[30];
LABEL_101:
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v1;
      v134 = v160;

      sub_1A52479F4();
      v135 = v113[241];
      swift_beginAccess();
      *(v134 + v135) = v153;

      swift_getKeyPath();
      swift_getKeyPath();
      v171 = v131;

      sub_1A52479F4();
      swift_getKeyPath();
      swift_getKeyPath();
      v171 = v111;

      return sub_1A52479F4();
    }

LABEL_99:
    v132 = v32;
    v58 = sub_1A524E2B4();
    v32 = v132;
    if (v58)
    {
      goto LABEL_16;
    }

    goto LABEL_100;
  }

  v171 = MEMORY[0x1E69E7CC0];
  v32 = sub_1A524E554();
  v33 = 0;
  v162 = (v30 + ((*(v25 + 80) + 32) & ~*(v25 + 80)));
  v169 = v25 + 16;
  v158 = (v25 + 8);
  v159 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_attachmentByIdentifier;
  v144 = (v1 + 56);
  v143 += 4;
  v142 = (v6 + 16);
  v141 = (v6 + 8);
  v140 = (v167 + 32);
  v139 = (v25 + 32);
  v34 = v25;
  v166 = v31;
  while (1)
  {
    if (v33 >= v30[2])
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v36 = *(v34 + 16);
    v36(v29, v162 + *(v34 + 72) * v33, v24);
    v37 = sub_1A523FB64();
    if (!v38)
    {
      break;
    }

    v39 = v37;
    v40 = v38;
    v42 = v159;
    v41 = v160;
    swift_beginAccess();
    v43 = *(v42 + v41);
    if (!*(v43 + 16))
    {

LABEL_11:
      swift_endAccess();
      v36(v168, v29, v24);
      type metadata accessor for Attachment(0);
      v1 = swift_allocObject();
      v47 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797210Attachment__status;
      v48 = v145;
      (*v144)(v145, 1, 1, v164);
      sub_1A4778688(v48, v146, sub_1A47760A0);
      v49 = v148;
      sub_1A52479A4();
      sub_1A47786F0(v48, sub_1A47760A0);
      (*v143)(v1 + v47, v49, v149);
      v167 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797210Attachment__url;
      v50 = v30;
      v51 = v29;
      v52 = v24;
      v53 = v34;
      v54 = v150;
      sub_1A5240D14();
      v55 = v165;
      (*v142)(v151, v54, v165);
      v56 = v152;
      sub_1A52479A4();
      v57 = v54;
      v34 = v53;
      v24 = v52;
      v29 = v51;
      v30 = v50;
      (*v141)(v57, v55);
      (*v158)(v29, v24);
      (*v140)(v1 + v167, v56, v153);
      (*v139)(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797210Attachment_pickerItem, v168, v24);
      goto LABEL_4;
    }

    v44 = sub_1A3C5DCA4(v39, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }

    v1 = *(*(v43 + 56) + 8 * v44);
    swift_endAccess();
    v35 = *v158;

    v35(v29, v24);
LABEL_4:
    ++v33;
    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    v32 = sub_1A524E524();
    if (v166 == v33)
    {

      v1 = v171;
      goto LABEL_14;
    }
  }

LABEL_102:
  sub_1A524E6E4();
  __break(1u);
LABEL_103:
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

uint64_t sub_1A47613C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A47760A0(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Attachment.Status(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1A47786F0(a1, sub_1A47760A0);
    sub_1A47730BC(a2, a3, v9);

    return sub_1A47786F0(v9, sub_1A47760A0);
  }

  else
  {
    sub_1A477E6A0(a1, v13, type metadata accessor for Attachment.Status);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1A4773FC0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1A4761588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A477E5D8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1A5240E64();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    v15 = MEMORY[0x1E6968FB0];
    v16 = MEMORY[0x1E69E6720];
    sub_1A4778828(a1, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    sub_1A4772F38(a2, a3, v9);

    return sub_1A4778828(v9, &unk_1EB12B250, v15, v16);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1A4773E40(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

void sub_1A47617C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47618F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A47619A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A4761A1C(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  sub_1A477CE3C(0, &qword_1EB141650, sub_1A477671C);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - v5;
  sub_1A477671C(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = sub_1A5246F74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v2;
  sub_1A52479E4();

  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) == 1)
  {
    return sub_1A47786F0(v14, sub_1A477671C);
  }

  v23 = v14;
  v24 = *(v16 + 32);
  v24(v20, v23, v15);
  v25 = *(v16 + 16);
  v34 = v20;
  v25(v11, v20, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  v26 = *(v4 + 48);
  sub_1A4778688(v11, v6, sub_1A477671C);
  sub_1A4778688(v38, &v6[v26], sub_1A477671C);
  if (v21(v6, 1, v15) == 1)
  {
    sub_1A47786F0(v11, sub_1A477671C);
    if (v21(&v6[v26], 1, v15) == 1)
    {
      sub_1A47786F0(v6, sub_1A477671C);
      return (*(v16 + 8))(v34, v15);
    }

    goto LABEL_8;
  }

  v27 = v36;
  sub_1A4778688(v6, v36, sub_1A477671C);
  if (v21(&v6[v26], 1, v15) == 1)
  {
    sub_1A47786F0(v11, sub_1A477671C);
    (*(v16 + 8))(v27, v15);
LABEL_8:
    sub_1A47788D8(v6, &qword_1EB141650, sub_1A477671C);
    v28 = v34;
LABEL_9:
    sub_1A4761F78();
    return (*(v16 + 8))(v28, v15);
  }

  v29 = v35;
  v24(v35, &v6[v26], v15);
  sub_1A4775218(&qword_1EB141658, MEMORY[0x1E69995F8]);
  v30 = v27;
  v31 = sub_1A524C594();
  v32 = *(v16 + 8);
  v32(v29, v15);
  sub_1A47786F0(v11, sub_1A477671C);
  v32(v30, v15);
  sub_1A47786F0(v6, sub_1A477671C);
  v28 = v34;
  if ((v31 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v32)(v34, v15);
}

uint64_t sub_1A4761F78()
{
  sub_1A47766E8(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11[-v2];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5];
  v7 = sub_1A5246F54();
  sub_1A41E36DC(v7, v8, v6);

  v9 = type metadata accessor for VisualPairingAppClipCode();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4778688(v6, v3, sub_1A47766E8);

  sub_1A52479F4();
  sub_1A47786F0(v6, sub_1A47766E8);
  swift_getKeyPath();
  swift_getKeyPath();
  v11[6] = 0;

  return sub_1A52479F4();
}

uint64_t sub_1A4762278(uint64_t a1)
{
  sub_1A477671C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1A4778688(a1, &v12 - v9, sub_1A477671C);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4778688(v10, v4, sub_1A477671C);

  sub_1A52479F4();
  sub_1A4761A1C(v7);
  sub_1A47786F0(v7, sub_1A477671C);
  return sub_1A47786F0(v10, sub_1A477671C);
}

uint64_t sub_1A4762434(uint64_t a1)
{
  sub_1A477CC94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477E5D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A4778688(a1, v5, sub_1A477CC94);
  sub_1A524CC54();

  v11 = sub_1A524CC44();
  v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v11;
  v13[3] = v14;
  v13[4] = v10;
  sub_1A477E6A0(v5, v13 + v12, sub_1A477CC94);

  sub_1A3D4D930(0, 0, v8, &unk_1A535EB90, v13);
}

uint64_t sub_1A47626A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_1A477671C(0);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v6 = sub_1A5246F74();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_1A477CC94();
  v5[16] = v7;
  v5[17] = swift_task_alloc();
  sub_1A524CC54();
  v5[18] = sub_1A524CC44();
  v9 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A476281C, v9, v8);
}

uint64_t sub_1A476281C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1A4778688(v0[8], v0[17], sub_1A477CC94);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v4 = v0[17];
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *v4;
      if (qword_1EB1D14B0 != -1)
      {
        swift_once();
      }

      v6 = sub_1A5246F24();
      __swift_project_value_buffer(v6, qword_1EB1D14B8);
      v7 = v5;
      v8 = sub_1A5246F04();
      v9 = sub_1A524D244();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        v12 = v5;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v13;
        *v11 = v13;
        _os_log_impl(&dword_1A3C1C000, v8, v9, "[Host] Transfer host failed to start the connection. Error: %@.", v10, 0xCu);
        sub_1A47786F0(v11, sub_1A3D3F118);
        MEMORY[0x1A590EEC0](v11, -1, -1);
        MEMORY[0x1A590EEC0](v10, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      (*(v0[13] + 32))(v0[15], v4, v0[12]);
      if (qword_1EB1D14B0 != -1)
      {
        swift_once();
      }

      v15 = v0[14];
      v14 = v0[15];
      v16 = v0[12];
      v17 = v0[13];
      v18 = sub_1A5246F24();
      __swift_project_value_buffer(v18, qword_1EB1D14B8);
      v19 = *(v17 + 16);
      v19(v15, v14, v16);
      v20 = sub_1A5246F04();
      LOBYTE(v16) = sub_1A524D264();
      v21 = os_log_type_enabled(v20, v16);
      v23 = v0[13];
      v22 = v0[14];
      v24 = v0[12];
      if (v21)
      {
        v35 = v0[12];
        v25 = swift_slowAlloc();
        swift_slowAlloc();
        *v25 = 136315138;
        v0[5] = sub_1A5246F64();
        v0[6] = v26;
        sub_1A477CDEC(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        sub_1A524C714();
        (*(v23 + 8))(v22, v35);
        sub_1A3C2EF94();
      }

      v36 = *(v23 + 8);
      v36(v22, v24);
      v34 = v0[15];
      v28 = v0[12];
      v27 = v0[13];
      v30 = v0[10];
      v29 = v0[11];
      v31 = v0[9];
      (v19)(v29);
      (*(v27 + 56))(v29, 0, 1, v28);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1A52479E4();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1A4778688(v29, v31, sub_1A477671C);

      sub_1A52479F4();
      sub_1A4761A1C(v30);
      sub_1A47786F0(v30, sub_1A477671C);
      sub_1A47786F0(v29, sub_1A477671C);
      v36(v34, v28);
    }

    if (*(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferHost))
    {

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_1A4762DF8()
{
  v1 = v0;
  if (qword_1EB1D14B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB1D14B8);
  v3 = sub_1A5246F04();
  v4 = sub_1A524D224();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "[Transfer] Resetting transfer state.", v5, 2u);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferHost))
  {

    sub_1A5246F94();
  }

  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_completeTransferFileCount) = 0;
  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_rejectedFiles) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A4762F2C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__currentState;
  v2 = MEMORY[0x1E695C070];
  sub_1A477CDEC(0, &qword_1EB1410F0, &type metadata for RetailExperienceState, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__transferState;
  sub_1A477CDEC(0, &unk_1EB1410F8, &type metadata for RetailTransferState, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__isPresentingPicker;
  sub_1A477CDEC(0, &qword_1EB128B30, MEMORY[0x1E69E6370], v2);
  v8 = v7;
  v9 = *(*(v7 - 8) + 8);
  v9(v0 + v6, v7);
  v9(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__isContentLoading, v8);
  v10 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__contentSelection;
  v11 = MEMORY[0x1E695C070];
  sub_1A477E5D8(0, &unk_1EB141108, sub_1A47765A4, MEMORY[0x1E695C070]);
  (*(*(v12 - 8) + 8))(v0 + v10, v12);
  v13 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__attachments;
  sub_1A477E5D8(0, &qword_1EB141118, sub_1A47765D8, v11);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__statusesByIdentifier;
  sub_1A477E5D8(0, &qword_1EB141128, sub_1A477660C, v11);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__urlsByIdentifier;
  sub_1A477E5D8(0, &qword_1EB141138, sub_1A4776640, v11);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);

  v9(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__didACCGenerationFail, v8);
  v19 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__appClipCode;
  sub_1A477E5D8(0, &qword_1EB141148, sub_1A47766E8, v11);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v9(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__shouldShowPincodeAlert, v8);
  v21 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__transferProgress;
  sub_1A477CDEC(0, &qword_1EB1249D8, MEMORY[0x1E69E7DE0], v2);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);

  v23 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__sharedSecret;
  sub_1A477E5D8(0, &qword_1EB141160, sub_1A477671C, v11);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);

  sub_1A3C33378(*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_pincodeHandler));

  return swift_deallocClassInstance();
}

uint64_t sub_1A4763414()
{
  v1 = MEMORY[0x1E695C070];
  sub_1A477E5D8(0, &qword_1EB141160, sub_1A477671C, MEMORY[0x1E695C070]);
  v98 = *(v2 - 8);
  v99 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v97 = &v70 - v3;
  sub_1A477671C(0);
  v96 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v94 = &v70 - v7;
  v8 = MEMORY[0x1E695C070];
  sub_1A477CDEC(0, &qword_1EB1249D8, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
  v92 = *(v9 - 8);
  v93 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v70 - v10;
  sub_1A477E5D8(0, &qword_1EB141148, sub_1A47766E8, v1);
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v70 - v12;
  sub_1A47766E8(0);
  v87 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v70 - v16;
  sub_1A477E5D8(0, &qword_1EB141138, sub_1A4776640, v1);
  v83 = *(v17 - 8);
  v84 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v70 - v18;
  sub_1A477E5D8(0, &qword_1EB141128, sub_1A477660C, v1);
  v80 = *(v19 - 8);
  v81 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v70 - v20;
  sub_1A477E5D8(0, &qword_1EB141118, sub_1A47765D8, v1);
  v78 = v21;
  v77 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v70 - v22;
  sub_1A477E5D8(0, &unk_1EB141108, sub_1A47765A4, v1);
  v75 = v23;
  v74 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v73 = &v70 - v24;
  sub_1A477CDEC(0, &qword_1EB128B30, MEMORY[0x1E69E6370], v8);
  v72 = v25;
  v71 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v70 - v26;
  sub_1A477CDEC(0, &unk_1EB1410F8, &type metadata for RetailTransferState, v8);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v70 - v31;
  sub_1A477CDEC(0, &qword_1EB1410F0, &type metadata for RetailExperienceState, v8);
  v34 = v33;
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v70 - v36;
  v38 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__currentState;
  LOBYTE(v100) = 0;
  sub_1A52479A4();
  (*(v35 + 32))(v0 + v38, v37, v34);
  v39 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__transferState;
  LOBYTE(v100) = 0;
  sub_1A52479A4();
  (*(v30 + 32))(v0 + v39, v32, v29);
  v40 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__isPresentingPicker;
  LOBYTE(v100) = 1;
  sub_1A52479A4();
  v41 = *(v71 + 32);
  v42 = v72;
  v41(v0 + v40, v27, v72);
  v43 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__isContentLoading;
  LOBYTE(v100) = 1;
  sub_1A52479A4();
  v41(v0 + v43, v27, v42);
  v44 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__contentSelection;
  v100 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  sub_1A47765A4(0);
  v46 = v73;
  sub_1A52479A4();
  (*(v74 + 32))(v0 + v44, v46, v75);
  v47 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__attachments;
  v100 = v45;
  sub_1A47765D8(0);
  v48 = v76;
  sub_1A52479A4();
  (*(v77 + 32))(v0 + v47, v48, v78);
  v49 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__statusesByIdentifier;
  v50 = MEMORY[0x1E69E7CC8];
  v100 = MEMORY[0x1E69E7CC8];
  sub_1A477660C(0);
  v51 = v79;
  sub_1A52479A4();
  (*(v80 + 32))(v0 + v49, v51, v81);
  v52 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__urlsByIdentifier;
  v100 = v50;
  sub_1A4776640(0);
  v53 = v82;
  sub_1A52479A4();
  v54 = (*(v83 + 32))(v0 + v52, v53, v84);
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_attachmentByIdentifier) = v50;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_displaySleepToken) = 0;
  PXDisplayCollectionDetailedCountsMake(v54);
  v55 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__didACCGenerationFail;
  LOBYTE(v100) = 0;
  sub_1A52479A4();
  v41(v0 + v55, v27, v42);
  v56 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__appClipCode;
  v57 = type metadata accessor for VisualPairingAppClipCode();
  v58 = v85;
  (*(*(v57 - 8) + 56))(v85, 1, 1, v57);
  sub_1A4778688(v58, v86, sub_1A47766E8);
  v59 = v88;
  sub_1A52479A4();
  sub_1A47786F0(v58, sub_1A47766E8);
  (*(v89 + 32))(v0 + v56, v59, v90);
  v60 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__shouldShowPincodeAlert;
  LOBYTE(v100) = 0;
  sub_1A52479A4();
  v41(v0 + v60, v27, v42);
  v61 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__transferProgress;
  v100 = 0;
  v62 = v91;
  sub_1A52479A4();
  (*(v92 + 32))(v0 + v61, v62, v93);
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_completeTransferFileCount) = 0;
  v63 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferFiles) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_rejectedFiles) = v63;
  v64 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel__sharedSecret;
  v65 = sub_1A5246F74();
  v66 = v94;
  (*(*(v65 - 8) + 56))(v94, 1, 1, v65);
  sub_1A4778688(v66, v95, sub_1A477671C);
  v67 = v97;
  sub_1A52479A4();
  sub_1A47786F0(v66, sub_1A477671C);
  (*(v98 + 32))(v0 + v64, v67, v99);
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferHost) = 0;
  v68 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_pincodeHandler);
  *v68 = 0;
  v68[1] = 0;
  return v0;
}

uint64_t sub_1A4763FFC()
{
  type metadata accessor for PickerViewModel(0);
  v0 = swift_allocObject();
  sub_1A4763414();
  return v0;
}

uint64_t sub_1A4764038@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_1A524BB64();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v34 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for PhotosPickerView(0);
  MEMORY[0x1EEE9AC00](v40);
  v37 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A47794E4();
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A477C300(0, &qword_1EB141328, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F948]);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v33 - v8);
  sub_1A477C300(0, &qword_1EB141320, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F960]);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v33 - v11;
  type metadata accessor for PickerViewModel(0);
  sub_1A4779290(qword_1EB1D1510, type metadata accessor for PickerViewModel);
  sub_1A5247EB4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v12 = v47[0];
  sub_1A5247EB4();
  if (v12)
  {
    if (v12 == 1)
    {
      sub_1A5247EC4();
      swift_getKeyPath();
      sub_1A52484B4();

      v13 = *v47;
      v33 = *&v47[8];
      v14 = sub_1A5248494();
      v15 = v37;
      *v37 = v14;
      *(v15 + 8) = v16;
      *(v15 + 16) = v13;
      *(v15 + 24) = v33;
      if (qword_1EB1D1500 != -1)
      {
        swift_once();
      }

      v18 = v34;
      v17 = v35;
      *v34 = qword_1EB1D1508;
      (*(v17 + 104))(v18, *MEMORY[0x1E697D728], v36);
      sub_1A524BB84();
      sub_1A4778688(v15, v9, type metadata accessor for PhotosPickerView);
      swift_storeEnumTagMultiPayload();
      sub_1A4779664();
      sub_1A4779290(&qword_1EB1D2140, type metadata accessor for PhotosPickerView);
      v19 = v39;
      sub_1A5249744();
      sub_1A477970C(v19, v43);
      swift_storeEnumTagMultiPayload();
      sub_1A477957C();
      sub_1A47796B8();
      sub_1A5249744();
      sub_1A47797A8(v19);
      return sub_1A47786F0(v15, type metadata accessor for PhotosPickerView);
    }

    else
    {
      v26 = *(v1 + 24);
      v25 = *(v1 + 32);

      v27 = sub_1A5248494();
      v29 = v28;
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1A524B694();
      v30 = *v47;
      v31 = *&v47[16];
      v32 = v43;
      *v43 = v27;
      v32[1] = v29;
      *(v32 + 1) = v30;
      v32[4] = v31;
      v32[5] = v26;
      v32[6] = v25;
      swift_storeEnumTagMultiPayload();
      sub_1A477957C();
      sub_1A47796B8();
      return sub_1A5249744();
    }
  }

  else
  {
    v22 = *(v1 + 24);
    v21 = *(v1 + 32);

    *v9 = sub_1A5248494();
    v9[1] = v23;
    v9[2] = v22;
    v9[3] = v21;
    swift_storeEnumTagMultiPayload();
    sub_1A4779664();
    sub_1A4779290(&qword_1EB1D2140, type metadata accessor for PhotosPickerView);

    v24 = v39;
    sub_1A5249744();
    sub_1A477970C(v24, v43);
    swift_storeEnumTagMultiPayload();
    sub_1A477957C();
    sub_1A47796B8();
    sub_1A5249744();

    return sub_1A47797A8(v24);
  }
}

void sub_1A4764724(uint64_t a1@<X8>)
{
  v4[1] = a1;
  sub_1A4774CDC();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = sub_1A5249574();
  *(v3 + 1) = 0;
  v3[16] = 1;
  sub_1A4778D4C(0, &qword_1EB1412B0, &qword_1EB140F30, sub_1A4774D90);
  sub_1A47649CC();
}

void sub_1A47649CC()
{
  sub_1A4774DB8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  *(&v3 - v2) = sub_1A524A044();
  sub_1A4778EFC();
  sub_1A4764BD0();
}

void sub_1A4764BD0()
{
  sub_1A4775184();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5249574();
  sub_1A4765328(&v2);
}

uint64_t sub_1A4764F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1A47752C4();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249834();
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v14 = MEMORY[0x1E697D670];
  sub_1A477C598(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  sub_1A4775394(&qword_1EB127490, &qword_1EB127480, v14);
  sub_1A5247F24();
  v15 = sub_1A47753EC();
  MEMORY[0x1A5904CD0](v13, v10, v15);
  return (*(v11 + 8))(v13, v10);
}

void sub_1A47650F0()
{
  sub_1A4778568(0, &qword_1EB141210, &unk_1EB141218, &unk_1EB1265F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v1;
  sub_1A3C52C70(0, &unk_1EB1265F0);
  *(inited + 48) = sub_1A524DC24();
  v2 = sub_1A452D80C(inited, &unk_1EB141228, &unk_1EB1265F0);
  swift_setDeallocating();
  sub_1A477862C(inited + 32, &unk_1EB141218, &unk_1EB1265F0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  objc_opt_self();
  sub_1A524C634();

  sub_1A4771328(v2);
}

void sub_1A4765328(void (*a1)(uint64_t a1)@<X8>)
{
  v111 = a1;
  v1 = sub_1A524B554();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v6 = sub_1A524C634();
  v7 = [v5 initWithContentsOfFile_];

  v112 = v7;
  if (v7)
  {
    v8 = v7;
    sub_1A524B524();
    (*(v2 + 104))(v4, *MEMORY[0x1E6981630], v1);
    v9 = sub_1A524B5C4();

    (*(v2 + 8))(v4, v1);
    sub_1A524BC74();
    sub_1A52481F4();
    LOBYTE(v171) = 1;
    *&v120[6] = v170[11];
    *&v120[22] = v170[12];
    *&v120[38] = v170[13];
    v10 = sub_1A524A074();
    sub_1A5247BC4();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    LOBYTE(v162) = 0;
    v19 = sub_1A524A084();
    sub_1A5247BC4();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    *(v163 + 2) = *v120;
    v162 = v9;
    LOWORD(v163[0]) = 1;
    *(&v163[1] + 2) = *&v120[16];
    *(&v163[2] + 2) = *&v120[32];
    *&v163[3] = *&v120[46];
    BYTE8(v163[3]) = v10;
    *&v164 = v12;
    *(&v164 + 1) = v14;
    *&v165 = v16;
    *(&v165 + 1) = v18;
    LOBYTE(v166) = 0;
    BYTE8(v166) = v19;
    *&v167 = v21;
    *(&v167 + 1) = v23;
    *&v168 = v25;
    *(&v168 + 1) = v27;
    LOBYTE(v169) = 0;
    PXDisplayCollectionDetailedCountsMake(&v162);
    v179 = v167;
    v180 = v168;
    v181 = v169;
    v175 = v163[3];
    v176 = v164;
    v177 = v165;
    v178 = v166;
    v171 = v162;
    v172 = v163[0];
    v173 = v163[1];
    v174 = v163[2];
  }

  else
  {
    sub_1A4779164(&v171);
  }

  v28 = sub_1A524C634();
  v29 = PXLocalizedString(v28);

  v30 = sub_1A524C674();
  v32 = v31;

  *&v162 = v30;
  *(&v162 + 1) = v32;
  sub_1A3D5F9DC();
  v33 = sub_1A524A464();
  v35 = v34;
  v37 = v36;
  if (qword_1EB1D14D0 != -1)
  {
    swift_once();
  }

  v38 = sub_1A524A3C4();
  v108 = v39;
  v109 = v38;
  LODWORD(v107) = v40;
  v110 = v41;
  sub_1A3E04DF4(v33, v35, v37 & 1);

  v42 = sub_1A524C634();
  v43 = PXLocalizedString(v42);

  sub_1A524C674();
  sub_1A3E072BC();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1A52F8E10;
  if (qword_1EB1D14F0 != -1)
  {
    swift_once();
  }

  v45 = qword_1EB1D14F8;
  v46 = MEMORY[0x1E69E65A8];
  *(v44 + 56) = MEMORY[0x1E69E6530];
  *(v44 + 64) = v46;
  *(v44 + 32) = v45;
  v47 = sub_1A524C644();
  v49 = v48;

  *&v162 = v47;
  *(&v162 + 1) = v49;
  v50 = sub_1A524A464();
  v117 = v51;
  v118 = v50;
  LOBYTE(v47) = v52;
  v119 = v53;
  sub_1A524BC74();
  sub_1A52481F4();
  v115 = v47 & 1;
  LOBYTE(v162) = v47 & 1;
  v116 = sub_1A524A074();
  sub_1A5247BC4();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = sub_1A524C634();
  v63 = PXLocalizedString(v62);

  v64 = sub_1A524C674();
  v66 = v65;

  *&v162 = v64;
  *(&v162 + 1) = v66;
  v67 = sub_1A524A464();
  v69 = v68;
  LOBYTE(v64) = v70;
  sub_1A524A224();
  v71 = sub_1A524A3C4();
  v73 = v72;
  v75 = v74;

  sub_1A3E04DF4(v67, v69, v64 & 1);

  LODWORD(v162) = sub_1A5249A14();
  v76 = sub_1A524A374();
  v113 = v77;
  v114 = v76;
  LOBYTE(v69) = v78;
  v80 = v79;
  v106 = v79;
  sub_1A3E04DF4(v71, v73, v75 & 1);

  sub_1A524BC74();
  sub_1A52481F4();
  LOBYTE(v162) = v69 & 1;
  LODWORD(v69) = v69 & 1;
  v105[2] = v69;
  v81 = sub_1A524A0C4();
  v82 = v81;
  v105[3] = v81;
  sub_1A5247BC4();
  v136 = v179;
  v137 = v180;
  v132 = v175;
  v133 = v176;
  v134 = v177;
  v135 = v178;
  v128 = v171;
  v129 = v172;
  v130 = v173;
  v131 = v174;
  v146[8] = v179;
  v146[9] = v180;
  v146[4] = v175;
  v146[5] = v176;
  v146[6] = v177;
  v146[7] = v178;
  v146[0] = v171;
  v146[1] = v172;
  v146[2] = v173;
  v146[3] = v174;
  v167 = v179;
  v168 = v180;
  v163[3] = v175;
  v164 = v176;
  v165 = v177;
  v166 = v178;
  v138 = v181;
  LOBYTE(v73) = v107 & 1;
  v127 = v107 & 1;
  v147 = v181;
  LOBYTE(v169) = v181;
  v162 = v171;
  v163[0] = v172;
  v163[1] = v173;
  v163[2] = v174;
  v123 = v107 & 1;
  *&v148 = v118;
  *(&v148 + 1) = v117;
  LOBYTE(v149) = v115;
  *(&v149 + 1) = v141[0];
  DWORD1(v149) = *(v141 + 3);
  *(&v149 + 1) = v119;
  v150 = v143;
  v151 = v144;
  v152 = v145;
  LOBYTE(v153) = v116;
  DWORD1(v153) = *(v142 + 3);
  *(&v153 + 1) = v142[0];
  *(&v153 + 1) = v55;
  *&v154[0] = v57;
  *(&v154[0] + 1) = v59;
  *&v154[1] = v61;
  BYTE8(v154[1]) = 0;
  v122 = 0;
  *&v155 = v114;
  *(&v155 + 1) = v113;
  LOBYTE(v156) = v69;
  *(&v156 + 1) = v139[0];
  DWORD1(v156) = *(v139 + 3);
  *(&v156 + 1) = v80;
  v157 = v124;
  v158 = v125;
  v159 = v126;
  LOBYTE(v160) = v82;
  *(&v160 + 1) = *v140;
  DWORD1(v160) = *&v140[3];
  *(&v160 + 1) = v83;
  *&v161[0] = v84;
  *(&v161[0] + 1) = v85;
  *&v161[1] = v86;
  BYTE8(v161[1]) = 0;
  *(&v121[4] + 7) = v126;
  *(v121 + 7) = v155;
  *(&v121[1] + 7) = v156;
  *(&v121[2] + 7) = v124;
  *(&v121[3] + 7) = v125;
  *(&v121[6] + 7) = v161[0];
  v121[7] = *(v161 + 9);
  *(&v121[5] + 7) = v160;
  v87 = v107 & 1;
  v88 = v169;
  v89 = v180;
  v90 = v111;
  *(v111 + 8) = v179;
  *(v90 + 9) = v89;
  v91 = v166;
  *(v90 + 6) = v165;
  *(v90 + 7) = v91;
  v92 = v164;
  *(v90 + 4) = v163[3];
  *(v90 + 5) = v92;
  v93 = v163[2];
  *(v90 + 2) = v163[1];
  *(v90 + 3) = v93;
  v94 = v163[0];
  *v90 = v162;
  *(v90 + 1) = v94;
  v96 = v108;
  v95 = v109;
  *(v90 + 20) = v88;
  *(v90 + 21) = v95;
  *(v90 + 22) = v96;
  *(v90 + 184) = v87;
  *(v90 + 24) = v110;
  v97 = v153;
  *(v90 + 264) = v152;
  *(v90 + 280) = v97;
  *(v90 + 296) = v154[0];
  *(v90 + 305) = *(v154 + 9);
  v98 = v149;
  *(v90 + 200) = v148;
  *(v90 + 216) = v98;
  v99 = v151;
  *(v90 + 232) = v150;
  *(v90 + 248) = v99;
  *(v90 + 41) = 0x4048000000000000;
  *(v90 + 336) = 0;
  v100 = v121[5];
  v101 = v121[6];
  *(v90 + 401) = v121[4];
  *(v90 + 417) = v100;
  v102 = v121[3];
  *(v90 + 369) = v121[2];
  *(v90 + 385) = v102;
  v103 = v121[1];
  *(v90 + 337) = v121[0];
  *(v90 + 353) = v103;
  v104 = v121[7];
  *(v90 + 433) = v101;
  *(v90 + 449) = v104;
  v111 = sub_1A4775014;
  v107 = MEMORY[0x1E69E6720];
  sub_1A47787B4(v146, v170, &qword_1EB140F70, sub_1A4775014, MEMORY[0x1E69E6720], sub_1A477E5D8);
  sub_1A3E75E68(v95, v96, v73);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4765E14()
{
  sub_1A4774B1C();
  sub_1A477E8CC(&qword_1EB140FD8, sub_1A4774B1C, sub_1A4775420);
  return sub_1A5248824();
}

void sub_1A4765EC4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = type metadata accessor for PhotosPickerView(0);
  v107 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v117 = v4;
  v108 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1A477E5D8(0, &unk_1EB141450, MEMORY[0x1E6979088], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = v81 - v7;
  v91 = sub_1A523FBD4();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477E5D8(0, &qword_1EB120E58, MEMORY[0x1E6979018], v5);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = v81 - v10;
  sub_1A477A2F8();
  v97 = v11;
  v93 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v92 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477A18C();
  v104 = v13;
  v101 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v100 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1A523FBA4();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v16 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477A538();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477A434();
  v95 = v22;
  v94 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4779FE8();
  v103 = v25;
  v102 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v115 = v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4779E00();
  v106 = v27;
  v105 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v116 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a1;
  sub_1A524A044();
  sub_1A477A5CC();
  sub_1A4775218(&qword_1EB1413E0, sub_1A477A5CC);
  sub_1A5247D14();
  v118 = a1;
  sub_1A477E5D8(0, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
  v30 = v29;
  v31 = sub_1A4775218(&qword_1EB141428, sub_1A477A538);
  v32 = sub_1A477AA7C();
  v114 = v24;
  v84 = v30;
  sub_1A524B0E4();
  v33 = *(v19 + 8);
  v87 = v18;
  v33(v21, v18);
  v34 = *(a1 + 8);
  type metadata accessor for PickerViewModel(0);
  sub_1A4779290(qword_1EB1D1510, type metadata accessor for PickerViewModel);
  v113 = v34;
  sub_1A52484A4();
  swift_getKeyPath();
  sub_1A52484B4();

  v112 = v126;
  v111 = v127;
  v81[3] = v128;
  v120 = *(a1 + 16);
  v110 = a1;
  v121 = *(a1 + 24);
  sub_1A477E5D8(0, &qword_1EB141350, sub_1A47765A4, MEMORY[0x1E6981948]);
  sub_1A524B924();
  v36 = v123;
  v35 = v124;
  v37 = v125;
  if (qword_1EB1D14F0 != -1)
  {
    swift_once();
  }

  v38 = qword_1EB1D14F8;
  sub_1A523FB84();
  v39 = [objc_opt_self() imagePickerPhotoLibrary];
  v86 = v16;
  v85 = v39;
  v40 = sub_1A524C1F4();
  v41 = v88;
  (*(*(v40 - 8) + 56))(v88, 1, 1, v40);
  v42 = v89;
  sub_1A523FBC4();
  v120 = v87;
  *&v121 = v84;
  *(&v121 + 1) = v31;
  v122 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v95;
  v44 = v92;
  v83 = v35;
  v82 = v37;
  v87 = v36;
  sub_1A524A794();
  (*(v90 + 8))(v42, v91);
  v45 = MEMORY[0x1E69E6720];
  sub_1A4778828(v41, &qword_1EB120E58, MEMORY[0x1E6979018], MEMORY[0x1E69E6720]);
  v46 = v96;
  sub_1A524C2D4();
  v47 = sub_1A524C2E4();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v120 = v43;
  *&v121 = OpaqueTypeConformance2;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v100;
  v50 = v97;
  sub_1A524A7C4();
  sub_1A4778828(v46, &unk_1EB141450, MEMORY[0x1E6979088], v45);
  (*(v93 + 8))(v44, v50);
  v51 = sub_1A524C634();
  v52 = PXLocalizedString(v51);

  sub_1A524C674();
  sub_1A3E072BC();
  v53 = swift_allocObject();
  v54 = MEMORY[0x1E69E6530];
  *(v53 + 16) = xmmword_1A52F8E10;
  v55 = MEMORY[0x1E69E65A8];
  *(v53 + 56) = v54;
  *(v53 + 64) = v55;
  *(v53 + 32) = v38;
  sub_1A524C6C4();

  v120 = v50;
  *&v121 = v48;
  v97 = swift_getOpaqueTypeConformance2();
  v56 = v104;
  sub_1A524A7A4();

  (*(v101 + 8))(v49, v56);
  (*(v98 + 8))(v86, v99);
  (*(v94 + 8))(v114, v43);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v57 = *(v120 + 16);

  v123 = v57;
  v112 = type metadata accessor for PhotosPickerView;
  v58 = v110;
  v59 = v108;
  sub_1A4778688(v110, v108, type metadata accessor for PhotosPickerView);
  v60 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v61 = swift_allocObject();
  v114 = type metadata accessor for PhotosPickerView;
  sub_1A477E6A0(v59, v61 + v60, type metadata accessor for PhotosPickerView);
  v120 = v56;
  *&v121 = v97;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v115;
  v64 = v103;
  v65 = MEMORY[0x1E69E6530];
  sub_1A524B154();

  (*(v102 + 8))(v63, v64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v123 = v120;
  v66 = v58;
  v67 = v112;
  sub_1A4778688(v66, v59, v112);
  v68 = swift_allocObject();
  sub_1A477E6A0(v59, v68 + v60, v114);
  sub_1A477660C(0);
  v120 = v64;
  *&v121 = v65;
  *(&v121 + 1) = v62;
  v122 = MEMORY[0x1E69E6550];
  swift_getOpaqueTypeConformance2();
  sub_1A477DF6C(&qword_1EB141438, sub_1A477660C);
  v69 = v109;
  v70 = v106;
  v71 = v116;
  sub_1A524B154();

  (*(v105 + 8))(v71, v70);
  v72 = v110;
  sub_1A4778688(v110, v59, v67);
  v73 = swift_allocObject();
  v74 = v114;
  sub_1A477E6A0(v59, v73 + v60, v114);
  sub_1A4779B68(0);
  v76 = (v69 + *(v75 + 36));
  *v76 = sub_1A477AF18;
  v76[1] = v73;
  v76[2] = 0;
  v76[3] = 0;
  sub_1A4778688(v72, v59, v67);
  v77 = swift_allocObject();
  sub_1A477E6A0(v59, v77 + v60, v74);
  sub_1A4779B2C(0);
  v79 = (v69 + *(v78 + 36));
  *v79 = 0;
  v79[1] = 0;
  v79[2] = sub_1A477AF78;
  v79[3] = v77;
}

uint64_t sub_1A4766F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v3);
  v14[0] = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477E5D8(0, &qword_1EB131870, MEMORY[0x1E697D750], MEMORY[0x1E69E6F90]);
  v5 = sub_1A524BB74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52FF950;
  v10 = v9 + v8;
  v11 = *(type metadata accessor for PhotosPickerView(0) + 24);
  v12 = *(v6 + 16);
  v12(v10, a1 + v11, v5);
  v12(v10 + v7, a1 + v11, v5);
  v12(v10 + 2 * v7, a1 + v11, v5);
  v14[4] = a1;
  sub_1A5249574();
  v15 = 0;
  sub_1A4775218(&qword_1EB122340, MEMORY[0x1E697FCB0]);
  sub_1A524EE64();
  sub_1A477E5D8(0, &qword_1EB1413B8, sub_1A477A680, MEMORY[0x1E6981F40]);
  sub_1A4775260(&qword_1EB1413D8, &qword_1EB1413B8, sub_1A477A680);
  return sub_1A524BD94();
}

uint64_t sub_1A4767208@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for PhotosPickerView(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A477A6A8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  swift_getKeyPath();
  sub_1A4778688(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosPickerView);
  v13 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v14 = swift_allocObject();
  sub_1A477E6A0(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PhotosPickerView);
  sub_1A47765D8(0);
  sub_1A4775218(&qword_1EB1413D0, sub_1A47765D8);
  sub_1A477B574();
  sub_1A524B9B4();
  v15 = *(v7 + 16);
  v15(v9, v12, v6);
  LOBYTE(v25) = 1;
  v16 = v24;
  v15(v24, v9, v6);
  sub_1A477A680(0);
  v18 = &v16[*(v17 + 48)];
  v19 = v25;
  *v18 = 0;
  v18[8] = v19;
  v20 = *(v7 + 8);
  v20(v12, v6);
  return (v20)(v9, v6);
}

uint64_t sub_1A4767540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A523FB64();
  if (v3)
  {
    *a1 = result;
    a1[1] = v3;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A47675D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_1A477A764();
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47752C4();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477A804(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A477A84C();
  v13 = v12;
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477E5D8(0, &qword_1EB1413F8, sub_1A477A804, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v47 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v22 = *(v48 + 16);

  if (v22)
  {
    v23 = sub_1A5249834();
    MEMORY[0x1EEE9AC00](v23);
    *(&v38 - 2) = v47;
    sub_1A477A8D8(0, &qword_1EB141410, MEMORY[0x1E697F960]);
    sub_1A477A974();
    sub_1A5247F24();
    v24 = sub_1A477AA48();
    v25 = v40;
    MEMORY[0x1A5904CD0](v15, v13, v24);
    (*(v9 + 16))(v18, v25, v8);
    (*(v9 + 56))(v18, 0, 1, v8);
    v48 = v13;
    v49 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v18, v8, OpaqueTypeConformance2);
    sub_1A477D35C(v18, &qword_1EB1413F8, sub_1A477A804);
    (*(v9 + 8))(v25, v8);
    (*(v39 + 8))(v15, v13);
  }

  else
  {
    (*(v9 + 56))(v18, 1, 1, v8);
    v27 = sub_1A477AA48();
    v48 = v13;
    v49 = v27;
    v28 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v18, v8, v28);
    sub_1A477D35C(v18, &qword_1EB1413F8, sub_1A477A804);
  }

  v29 = sub_1A5249894();
  MEMORY[0x1EEE9AC00](v29);
  *(&v38 - 2) = v47;
  v30 = MEMORY[0x1E697D670];
  sub_1A477C598(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  sub_1A4775394(&qword_1EB127490, &qword_1EB127480, v30);
  v31 = v41;
  sub_1A5247F24();
  v32 = v44;
  v33 = *(v45 + 48);
  sub_1A477D2DC(v21, v44, &qword_1EB1413F8, sub_1A477A804);
  v34 = v42;
  v35 = v32 + v33;
  v36 = v43;
  (*(v42 + 16))(v35, v31, v43);
  sub_1A52495D4();
  (*(v34 + 8))(v31, v36);
  return sub_1A477D35C(v21, &qword_1EB1413F8, sub_1A477A804);
}

uint64_t sub_1A4767C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for PhotosPickerView(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A477C598(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v31 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v27 - v6;
  sub_1A477A8D8(0, &qword_1EB141468, MEMORY[0x1E697F948]);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  sub_1A411848C();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v33 == 1)
  {
    sub_1A5248074();
    (*(v12 + 16))(v9, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_1A4775C00();
    sub_1A4775394(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E697D670]);
    sub_1A5249744();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v17 = sub_1A524C634();
    v18 = PXLocalizedString(v17);

    v19 = sub_1A524C674();
    v21 = v20;

    v33 = v19;
    v34 = v21;
    sub_1A4778688(v15, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosPickerView);
    v22 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v23 = swift_allocObject();
    sub_1A477E6A0(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for PhotosPickerView);
    sub_1A3D5F9DC();
    v24 = v28;
    sub_1A524B754();
    v25 = v29;
    v26 = v31;
    (*(v29 + 16))(v9, v24, v31);
    swift_storeEnumTagMultiPayload();
    sub_1A4775C00();
    sub_1A4775394(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E697D670]);
    sub_1A5249744();
    return (*(v25 + 8))(v24, v26);
  }
}

uint64_t sub_1A4768148(uint64_t a1)
{
  v2 = type metadata accessor for PhotosPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A4778688(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PhotosPickerView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1A477E6A0(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for PhotosPickerView);
  v9 = a1;
  return sub_1A524B704();
}

uint64_t sub_1A47682CC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52479E4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v1 >> 62)
  {
    sub_1A524E2B4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1A52479F4();
}

uint64_t sub_1A476840C()
{
  sub_1A477AF90();
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v34 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v33 = (v28 - v4);
  MEMORY[0x1EEE9AC00](v5);
  v29 = v28 - v6;
  v7 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v9 = 0;
  v10 = *(v36 + 64);
  v30 = v36;
  v11 = 1 << *(v36 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v28[1] = v36 + 64;
  v28[2] = v7;
  v28[0] = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferFiles;
  if ((v12 & v10) != 0)
  {
LABEL_8:
    v15 = __clz(__rbit64(v13)) | (v9 << 6);
    v16 = *(v30 + 56);
    v17 = (*(v30 + 48) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    v20 = sub_1A5240E64();
    v21 = *(v20 - 8);
    v32 = *(v21 + 72);
    v22 = v16 + v32 * v15;
    v23 = v35;
    v24 = *(v35 + 48);
    v25 = v29;
    (*(v21 + 16))(&v29[v24], v22, v20);
    v26 = *(v23 + 48);
    v27 = v33;
    *v33 = v19;
    *(v27 + 8) = v18;
    v31 = v21;
    (*(v21 + 32))(v27 + v26, &v25[v24], v20);
    sub_1A4778688(v27, v34, sub_1A477AF90);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= ((v11 + 63) >> 6))
    {
    }

    v13 = *(v36 + 64 + 8 * v14);
    ++v9;
    if (v13)
    {
      v9 = v14;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4768798()
{
  sub_1A4779B2C(0);
  sub_1A477E8CC(&qword_1EB141440, sub_1A4779B2C, sub_1A477AB04);
  return sub_1A5248824();
}

id sub_1A4768834@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  sub_1A477DC48(0);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477DC84();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477DD58();
  v74 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477DDFC(0, &qword_1EB1416F0, sub_1A47755AC, sub_1A477DE88);
  v63 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v66 = (&v58 - v11);
  sub_1A47755AC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = sub_1A524BC34();
  v14[1] = v15;
  sub_1A477E004(0, &qword_1EB141710, &qword_1EB141008, sub_1A4775660);
  sub_1A476923C(v1, v14 + *(v16 + 44));
  v17 = *v1;
  v78 = *(v1 + 16);
  v79[0] = v17;
  v18 = *(v1 + 32);
  sub_1A524CC54();
  sub_1A4778688(v79, &v76, sub_1A477E080);
  sub_1A4778688(&v78, &v76, sub_1A4779940);
  v65 = v18;
  v19 = sub_1A524CC44();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  v22 = *(v2 + 16);
  *(v20 + 32) = *v2;
  *(v20 + 48) = v22;
  *(v20 + 64) = *(v2 + 32);
  v64 = sub_1A524CCB4();
  v23 = *(v64 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v58 - v25;
  sub_1A524CC74();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v60 = sub_1A52485C4();
    v61 = &v58;
    v59 = *(v60 - 8);
    MEMORY[0x1EEE9AC00](v60);
    v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1A524E404();

    v76 = 0xD000000000000036;
    v77 = 0x80000001A53E9EF0;
    v75 = 526;
    v29 = sub_1A524EA44();
    v58 = v14;
    MEMORY[0x1A5907B60](v29);

    v62 = v10;
    v31 = MEMORY[0x1EEE9AC00](v30);
    v32 = &v58 - v25;
    v33 = &v58 - v25;
    v34 = v64;
    (*(v23 + 16))(v32, v33, v64, v31);
    sub_1A52485B4();
    (*(v23 + 8))(v26, v34);
    v10 = v62;
    v35 = v66;
    sub_1A477E480(v58, v66, sub_1A47755AC);
    sub_1A47757C0(0, &qword_1EB1410C0, sub_1A47755AC, MEMORY[0x1EEE7B8B8], MEMORY[0x1E697E830]);
    (*(v59 + 32))(v35 + *(v36 + 36), v28, v60);
  }

  else
  {
    sub_1A47757C0(0, &qword_1EB1410C8, sub_1A47755AC, MEMORY[0x1E697C028], MEMORY[0x1E697E830]);
    v35 = v66;
    v38 = v66 + *(v37 + 36);
    v39 = sub_1A5248394();
    (*(v23 + 32))(&v38[*(v39 + 20)], &v58 - v25, v64);
    *v38 = &unk_1A535EEF0;
    *(v38 + 1) = v20;
    sub_1A477E480(v14, v35, sub_1A47755AC);
  }

  v40 = swift_allocObject();
  v41 = *(v2 + 16);
  *(v40 + 16) = *v2;
  *(v40 + 32) = v41;
  *(v40 + 48) = *(v2 + 32);
  v42 = v67;
  (*(v10 + 32))(v67, v35, v63);
  v43 = (v42 + *(v74 + 36));
  *v43 = sub_1A477E1A4;
  v43[1] = v40;
  v43[2] = 0;
  v43[3] = 0;
  sub_1A47760A0(0);
  v66 = &v58;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v58 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4778688(v79, &v76, sub_1A477E080);
  sub_1A4778688(&v78, &v76, sub_1A4779940);
  v47 = v65;
  sub_1A52479E4();

  v48 = swift_allocObject();
  v49 = *(v2 + 16);
  *(v48 + 16) = *v2;
  *(v48 + 32) = v49;
  *(v48 + 48) = *(v2 + 32);
  sub_1A4778688(v79, &v76, sub_1A477E080);
  sub_1A4778688(&v78, &v76, sub_1A4779940);
  sub_1A477DEBC();
  sub_1A477DF6C(&qword_1EB141708, sub_1A47760A0);
  v65 = v47;
  v50 = v68;
  sub_1A524B154();

  sub_1A47786F0(v46, sub_1A47760A0);
  sub_1A477C86C(v42, sub_1A477DD58);
  v51 = swift_allocObject();
  v52 = *(v2 + 16);
  *(v51 + 16) = *v2;
  *(v51 + 32) = v52;
  *(v51 + 48) = *(v2 + 32);
  v53 = v71;
  (*(v69 + 32))(v71, v50, v70);
  v54 = v73;
  v55 = (v53 + *(v72 + 36));
  *v55 = 0;
  v55[1] = 0;
  v55[2] = sub_1A477E208;
  v55[3] = v51;
  sub_1A477E480(v53, v54, sub_1A477DC48);
  sub_1A4778688(v79, &v76, sub_1A477E080);
  sub_1A4778688(&v78, &v76, sub_1A4779940);
  v56 = v65;

  return v56;
}

uint64_t sub_1A476923C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = sub_1A5240E64();
  v114 = *(v3 - 8);
  v115 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v113 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4775C90(0);
  v120 = v5;
  v118 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v112 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1A477E5D8(0, &qword_1EB141080, sub_1A4775C90, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v121 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v117 = v89 - v11;
  v12 = MEMORY[0x1E697F948];
  sub_1A477508C(0, &qword_1EB141730, type metadata accessor for VideoView, MEMORY[0x1E6981748], MEMORY[0x1E697F948]);
  v99 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v101 = (v89 - v14);
  sub_1A4775C34(0);
  v110 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v104 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for VideoView(0);
  MEMORY[0x1EEE9AC00](v100);
  v93 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Movie(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v92 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477E5D8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], v7);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v90 = v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v91 = v89 - v23;
  sub_1A477588C();
  v105 = v24;
  v95 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v94 = v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Photo(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v103 = v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477508C(0, &qword_1EB141738, sub_1A4775778, MEMORY[0x1E6981E70], v12);
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v89 - v30;
  v32 = MEMORY[0x1E697F948];
  sub_1A47757C0(0, &qword_1EB141740, sub_1A4775844, sub_1A4775C34, MEMORY[0x1E697F948]);
  v106 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v108 = v89 - v34;
  sub_1A47757C0(0, &qword_1EB141748, sub_1A4118464, sub_1A477588C, v32);
  v96 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v98 = v89 - v36;
  sub_1A4775844(0);
  v107 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v102 = v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4775778(0);
  v40 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v109 = v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118464(0);
  v97 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v89 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47760A0(0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = v89 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = v89 - v49;
  sub_1A477573C(0);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v116 = v89 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = v89 - v54;
  v119 = a1;
  v56 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v111 = v56;
  sub_1A52479E4();

  v57 = type metadata accessor for Attachment.Status(0);
  if ((*(*(v57 - 8) + 48))(v50, 1, v57) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1A477E268();
    sub_1A5249744();
    goto LABEL_14;
  }

  v89[1] = v40;
  v89[2] = v29;
  sub_1A4778688(v50, v47, sub_1A47760A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *v101 = sub_1A524B544();
      swift_storeEnumTagMultiPayload();
      sub_1A4779290(&qword_1EB1D2518, type metadata accessor for VideoView);

      v81 = v104;
      sub_1A5249744();
      sub_1A4778688(v81, v108, sub_1A4775C34);
      swift_storeEnumTagMultiPayload();
      sub_1A477E2E8();
      sub_1A477E3D0();
      v82 = v109;
      sub_1A5249744();
      sub_1A47786F0(v81, sub_1A4775C34);
      sub_1A4778688(v82, v31, sub_1A4775778);
      swift_storeEnumTagMultiPayload();
      sub_1A477E268();
      sub_1A5249744();

      v67 = sub_1A4775778;
      v68 = v82;
      goto LABEL_13;
    }

    v44 = v92;
    sub_1A477E6A0(v47, v92, type metadata accessor for Movie);
    v64 = v93;
    (*(v114 + 16))(v93, v44, v115);
    sub_1A4778688(v64, v101, type metadata accessor for VideoView);
    swift_storeEnumTagMultiPayload();
    sub_1A4779290(&qword_1EB1D2518, type metadata accessor for VideoView);
    v65 = v104;
    sub_1A5249744();
    sub_1A4778688(v65, v108, sub_1A4775C34);
    swift_storeEnumTagMultiPayload();
    sub_1A477E2E8();
    sub_1A477E3D0();
    v66 = v109;
    sub_1A5249744();
    sub_1A47786F0(v65, sub_1A4775C34);
    sub_1A4778688(v66, v31, sub_1A4775778);
    swift_storeEnumTagMultiPayload();
    sub_1A477E268();
    sub_1A5249744();
    sub_1A47786F0(v66, sub_1A4775778);
    sub_1A47786F0(v64, type metadata accessor for VideoView);
    v63 = type metadata accessor for Movie;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v69 = v103;
      sub_1A477E6A0(v47, v103, type metadata accessor for Photo);
      v70 = v114;
      v71 = v91;
      v72 = v69;
      v73 = v115;
      (*(v114 + 16))(v91, v72, v115);
      (*(v70 + 56))(v71, 0, 1, v73);
      v74 = MEMORY[0x1E6968FB0];
      v75 = MEMORY[0x1E69E6720];
      sub_1A47787B4(v71, v90, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A477E5D8);
      sub_1A47757C0(0, &qword_1EB141048, sub_1A4775934, sub_1A411848C, MEMORY[0x1E697F960]);
      sub_1A47759D8();
      v76 = v94;
      sub_1A5247AF4();
      sub_1A4778828(v71, &unk_1EB12B250, v74, v75);
      v77 = v95;
      v78 = v105;
      (*(v95 + 16))(v98, v76, v105);
      swift_storeEnumTagMultiPayload();
      sub_1A477E8CC(&qword_1EB141760, sub_1A4118464, sub_1A4775C00);
      sub_1A4775218(&qword_1EB141768, sub_1A477588C);
      v79 = v102;
      sub_1A5249744();
      sub_1A4778688(v79, v108, sub_1A4775844);
      swift_storeEnumTagMultiPayload();
      sub_1A477E2E8();
      sub_1A477E3D0();
      v80 = v109;
      sub_1A5249744();
      sub_1A47786F0(v79, sub_1A4775844);
      sub_1A4778688(v80, v31, sub_1A4775778);
      swift_storeEnumTagMultiPayload();
      sub_1A477E268();
      sub_1A5249744();
      sub_1A47786F0(v80, sub_1A4775778);
      (*(v77 + 8))(v76, v78);
      v67 = type metadata accessor for Photo;
      v68 = v103;
      goto LABEL_13;
    }

    sub_1A47786F0(v47, type metadata accessor for Attachment.Status);
    sub_1A5248074();
    if (qword_1EB1D1500 != -1)
    {
      swift_once();
    }

    sub_1A524BC74();
    sub_1A52481F4();
    v59 = &v44[*(v97 + 36)];
    v60 = v125;
    *v59 = v124;
    *(v59 + 1) = v60;
    *(v59 + 2) = v126;
    sub_1A4778688(v44, v98, sub_1A4118464);
    swift_storeEnumTagMultiPayload();
    sub_1A477E8CC(&qword_1EB141760, sub_1A4118464, sub_1A4775C00);
    sub_1A4775218(&qword_1EB141768, sub_1A477588C);
    v61 = v102;
    sub_1A5249744();
    sub_1A4778688(v61, v108, sub_1A4775844);
    swift_storeEnumTagMultiPayload();
    sub_1A477E2E8();
    sub_1A477E3D0();
    v62 = v109;
    sub_1A5249744();
    sub_1A47786F0(v61, sub_1A4775844);
    sub_1A4778688(v62, v31, sub_1A4775778);
    swift_storeEnumTagMultiPayload();
    sub_1A477E268();
    sub_1A5249744();
    sub_1A47786F0(v62, sub_1A4775778);
    v63 = sub_1A4118464;
  }

  v67 = v63;
  v68 = v44;
LABEL_13:
  sub_1A47786F0(v68, v67);
LABEL_14:
  v83 = v117;
  sub_1A47786F0(v50, sub_1A47760A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v123 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    sub_1A476A7B4();
  }

  (*(v118 + 56))(v83, 1, 1, v120);
  v84 = v116;
  sub_1A4778688(v55, v116, sub_1A477573C);
  v85 = v121;
  sub_1A477D2DC(v83, v121, &qword_1EB141080, sub_1A4775C90);
  v86 = v122;
  sub_1A4778688(v84, v122, sub_1A477573C);
  sub_1A4775660(0);
  sub_1A477D2DC(v85, v86 + *(v87 + 48), &qword_1EB141080, sub_1A4775C90);
  sub_1A477D35C(v83, &qword_1EB141080, sub_1A4775C90);
  sub_1A47786F0(v55, sub_1A477573C);
  sub_1A477D35C(v85, &qword_1EB141080, sub_1A4775C90);
  return sub_1A47786F0(v84, sub_1A477573C);
}

void sub_1A476A7B4()
{
  sub_1A477DDFC(0, &qword_1EB1410B0, sub_1A43D3010, sub_1A43D30E0);
  v8[7] = *(v0 - 8);
  v8[8] = v0;
  MEMORY[0x1EEE9AC00](v0);
  v8[4] = v8 - v1;
  sub_1A4775DEC();
  v8[3] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v8[13] = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8[1] = v8 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8[12] = v8 - v7;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A476AD3C()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3E5387C;

  return sub_1A475E4E4();
}

uint64_t sub_1A476ADE8(uint64_t a1)
{
  sub_1A47760A0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Attachment.Status(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v13 = sub_1A47760A0;
    v14 = v4;
  }

  else
  {
    sub_1A477E6A0(v4, v11, type metadata accessor for Attachment.Status);
    sub_1A4778688(v11, v8, type metadata accessor for Attachment.Status);
    v15 = swift_getEnumCaseMultiPayload() - 1;
    sub_1A47786F0(v8, type metadata accessor for Attachment.Status);
    if (v15 <= 1)
    {
      sub_1A4777638(v12, *(a1 + 24));
    }

    v13 = type metadata accessor for Attachment.Status;
    v14 = v11;
  }

  return sub_1A47786F0(v14, v13);
}

BOOL sub_1A476B02C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1A5240E64();
    ++v2;
    sub_1A4775218(&qword_1EB126050, MEMORY[0x1E6968FB0]);
  }

  while ((sub_1A524C594() & 1) == 0);
  return v3 != v4;
}

id sub_1A476B184(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1A476B1CC()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E6958608]) init];
  [v2 setPlayer_];
  [v2 setVideoGravity_];
  [v2 setShowsPlaybackControls_];
  return v2;
}

id sub_1A476B24C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for VideoPlayerVCRepresentable.Coordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797226VideoPlayerVCRepresentable11Coordinator_parent] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = v3;
  result = objc_msgSendSuper2(&v8, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1A476B2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4778884();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A476B31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4778884();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A476B380()
{
  sub_1A4778884();
  sub_1A5249ED4();
  __break(1u);
}

void sub_1A476B3A8(uint64_t a1@<X8>)
{
  v2 = sub_1A524BC74();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x1E6988098]);
  v6 = sub_1A5240D44();
  v7 = [v5 initWithURL_];

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 257;
}

void sub_1A476B428(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3EE1D04();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477B8AC();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A477B76C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_1A524BC74();
  v9[1] = v14;
  sub_1A477E004(0, &qword_1EB141638, &qword_1EB1414A0, sub_1A477B960);
  sub_1A476BA98(a1, v9 + *(v15 + 44));
  v16 = *MEMORY[0x1E697E6C0];
  v17 = sub_1A52486A4();
  (*(*(v17 - 8) + 104))(v6, v16, v17);
  sub_1A4775218(&unk_1EB1288C0, MEMORY[0x1E697E730]);
  if (sub_1A524C594())
  {
    sub_1A4775218(&unk_1EB1415D8, sub_1A477B8AC);
    sub_1A4775218(&unk_1EB1263B0, sub_1A3EE1D04);
    sub_1A524AB84();
    sub_1A47786F0(v6, sub_1A3EE1D04);
    sub_1A477C86C(v9, sub_1A477B8AC);
    v18 = *(a1 + 8);
    v48 = *(a1 + 16);
    v47 = *(a1 + 32);
    v42 = *(a1 + 48);
    v19 = swift_allocObject();
    v20 = *(a1 + 16);
    *(v19 + 16) = *a1;
    *(v19 + 32) = v20;
    *(v19 + 48) = *(a1 + 32);
    *(v19 + 64) = *(a1 + 48);
    v21 = &v13[*(v11 + 36)];
    *v21 = sub_1A477C8CC;
    v21[1] = v19;
    v21[2] = 0;
    v21[3] = 0;
    v40 = v18;

    sub_1A3F30668(&v48, &v43);
    v41 = sub_1A477CB54;
    sub_1A4778688(&v47, &v43, sub_1A477CB54);

    v22 = sub_1A524C634();
    v23 = PXLocalizedString(v22);

    v24 = sub_1A524C674();
    v26 = v25;
    v39 = v25;

    v45 = v24;
    v46 = v26;
    type metadata accessor for PickerViewModel(0);
    sub_1A4779290(qword_1EB1D1510, type metadata accessor for PickerViewModel);
    sub_1A52484A4();
    swift_getKeyPath();
    sub_1A52484B4();

    v38 = v36;
    v36[0] = v11;
    v36[1] = v43;
    v37 = v44;
    MEMORY[0x1EEE9AC00](v27);
    sub_1A477E5D8(0, &qword_1EB1415E8, sub_1A477C36C, MEMORY[0x1E6981F40]);
    sub_1A477C5EC();
    sub_1A3D5F9DC();
    sub_1A4775260(&qword_1EB141620, &qword_1EB1415E8, sub_1A477C36C);
    sub_1A524AFB4();

    sub_1A477C86C(v13, sub_1A477B76C);
    v28 = swift_allocObject();
    v29 = *(a1 + 16);
    *(v28 + 16) = *a1;
    *(v28 + 32) = v29;
    *(v28 + 48) = *(a1 + 32);
    *(v28 + 64) = *(a1 + 48);
    sub_1A477B60C(0);
    v31 = (a2 + *(v30 + 36));
    *v31 = 0;
    v31[1] = 0;
    v31[2] = sub_1A477CBD8;
    v31[3] = v28;

    sub_1A3F30668(&v48, &v43);
    sub_1A4778688(&v47, &v43, v41);

    v32 = sub_1A5248884();
    v33 = sub_1A524A064();
    sub_1A477B5D0(0);
    v35 = a2 + *(v34 + 36);
    *v35 = v32;
    *(v35 + 8) = v33;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A476BA98@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v31 = a1;
  sub_1A477BE24();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v34 = sub_1A5249574();
  LOBYTE(v57[0]) = 1;
  sub_1A476C08C(v2, &v64);
  v46 = v65[8];
  v47 = v65[9];
  v48[0] = v65[10];
  *(v48 + 9) = *(&v65[10] + 9);
  v43 = v65[5];
  v44 = v65[6];
  v45 = v65[7];
  v39 = v65[1];
  v40 = v65[2];
  v41 = v65[3];
  v42 = v65[4];
  v37 = v64;
  v38 = v65[0];
  v49[9] = v65[8];
  v49[10] = v65[9];
  v50[0] = v65[10];
  *(v50 + 9) = *(&v65[10] + 9);
  v49[6] = v65[5];
  v49[7] = v65[6];
  v49[8] = v65[7];
  v49[2] = v65[1];
  v49[3] = v65[2];
  v49[4] = v65[3];
  v49[5] = v65[4];
  v49[0] = v64;
  v49[1] = v65[0];
  v9 = MEMORY[0x1E6981F40];
  sub_1A47787B4(&v37, &v53, &qword_1EB1414B8, sub_1A477BA9C, MEMORY[0x1E6981F40], sub_1A477E5D8);
  sub_1A4778828(v49, &qword_1EB1414B8, sub_1A477BA9C, v9);
  *(&v36[9] + 7) = v46;
  *(&v36[10] + 7) = v47;
  *(&v36[11] + 7) = v48[0];
  v36[12] = *(v48 + 9);
  *(&v36[5] + 7) = v42;
  *(&v36[6] + 7) = v43;
  *(&v36[7] + 7) = v44;
  *(&v36[8] + 7) = v45;
  *(&v36[1] + 7) = v38;
  *(&v36[2] + 7) = v39;
  *(&v36[3] + 7) = v40;
  *(&v36[4] + 7) = v41;
  *(v36 + 7) = v37;
  LOBYTE(v2) = v57[0];
  v32 = LOBYTE(v57[0]);
  *v8 = sub_1A5249574();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_1A4778D4C(0, &qword_1EB141660, &qword_1EB141548, sub_1A477BED8);
  v11 = v31;
  sub_1A476D350(v31, &v8[*(v10 + 44)]);
  v12 = sub_1A5249574();
  LOBYTE(v64) = 1;
  sub_1A476E3AC(v11, v51);
  *&v35[7] = v51[0];
  *&v35[23] = v51[1];
  *&v35[39] = v52[0];
  *&v35[49] = *(v52 + 10);
  v13 = v64;
  v14 = v33;
  sub_1A477CE9C(v8, v33, sub_1A477BE24);
  *&v54[145] = v36[9];
  *&v54[161] = v36[10];
  *&v54[177] = v36[11];
  *&v54[193] = v36[12];
  *&v54[81] = v36[5];
  *&v54[97] = v36[6];
  *&v54[113] = v36[7];
  *&v54[129] = v36[8];
  *&v54[17] = v36[1];
  *&v54[33] = v36[2];
  *&v54[49] = v36[3];
  v53 = v34;
  v54[0] = v2;
  *&v54[65] = v36[4];
  *&v54[1] = v36[0];
  v15 = *&v54[192];
  *(a2 + 192) = *&v54[176];
  *(a2 + 208) = v15;
  *(a2 + 224) = v54[208];
  v16 = *&v54[128];
  *(a2 + 128) = *&v54[112];
  *(a2 + 144) = v16;
  v17 = *&v54[160];
  *(a2 + 160) = *&v54[144];
  *(a2 + 176) = v17;
  v18 = *&v54[64];
  *(a2 + 64) = *&v54[48];
  *(a2 + 80) = v18;
  v19 = *&v54[96];
  *(a2 + 96) = *&v54[80];
  *(a2 + 112) = v19;
  v20 = *v54;
  *a2 = v53;
  *(a2 + 16) = v20;
  v21 = *&v54[32];
  *(a2 + 32) = *&v54[16];
  *(a2 + 48) = v21;
  sub_1A477B960();
  v23 = v22;
  sub_1A477CE9C(v14, a2 + *(v22 + 48), sub_1A477BE24);
  v24 = a2 + *(v23 + 64);
  v55[0] = v12;
  v55[1] = 0;
  v56[0] = v13;
  *&v56[1] = *v35;
  *&v56[17] = *&v35[16];
  *&v56[33] = *&v35[32];
  *&v56[49] = *&v35[48];
  v56[65] = v35[64];
  v25 = *v56;
  *v24 = v12;
  *(v24 + 16) = v25;
  v26 = *&v56[16];
  v27 = *&v56[32];
  v28 = *&v56[48];
  *(v24 + 80) = *&v56[64];
  *(v24 + 48) = v27;
  *(v24 + 64) = v28;
  *(v24 + 32) = v26;
  sub_1A4778688(&v53, &v64, sub_1A477B9E8);
  sub_1A4778688(v55, &v64, sub_1A477C0DC);
  sub_1A477C86C(v8, sub_1A477BE24);
  v57[0] = v12;
  v57[1] = 0;
  v58 = v13;
  v60 = *&v35[16];
  v61 = *&v35[32];
  v62 = *&v35[48];
  v63 = v35[64];
  v59 = *v35;
  sub_1A47786F0(v57, sub_1A477C0DC);
  sub_1A477C86C(v14, sub_1A477BE24);
  *(&v65[9] + 1) = v36[9];
  *(&v65[10] + 1) = v36[10];
  *(&v65[11] + 1) = v36[11];
  *(&v65[12] + 1) = v36[12];
  *(&v65[5] + 1) = v36[5];
  *(&v65[6] + 1) = v36[6];
  *(&v65[7] + 1) = v36[7];
  *(&v65[8] + 1) = v36[8];
  *(&v65[1] + 1) = v36[1];
  *(&v65[2] + 1) = v36[2];
  *(&v65[3] + 1) = v36[3];
  *(&v65[4] + 1) = v36[4];
  v64 = v34;
  LOBYTE(v65[0]) = v32;
  *(v65 + 1) = v36[0];
  return sub_1A47786F0(&v64, sub_1A477B9E8);
}

uint64_t sub_1A476C08C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1A52492A4();
  v53 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477DDFC(0, &qword_1EB128AE8, MEMORY[0x1E697F260], sub_1A477CF04);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v111[0] = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52479E4();

  if (v110 > 1u)
  {
    if (v110 == 2)
    {
      sub_1A47786F0(v111, sub_1A4779940);
      v19 = sub_1A524C634();
      v20 = PXLocalizedString(v19);

      v21 = sub_1A524C674();
      v23 = v22;

      sub_1A476CD1C(v21, v23, &v66);
    }

    sub_1A47786F0(v111, sub_1A4779940);
    v28 = sub_1A524C634();
    v29 = PXLocalizedString(v28);

    v30 = sub_1A524C674();
    v32 = v31;

    sub_1A476CD1C(v30, v32, &v66);
  }

  if (!v110)
  {
    sub_1A47786F0(v111, sub_1A4779940);
    v14 = sub_1A524C634();
    v15 = PXLocalizedString(v14);

    v16 = sub_1A524C674();
    v18 = v17;

    sub_1A476CD1C(v16, v18, &v66);
  }

  type metadata accessor for PickerViewModel(0);
  sub_1A4779290(qword_1EB1D1510, type metadata accessor for PickerViewModel);
  v52 = sub_1A5248494();
  v25 = v24;
  sub_1A5249294();
  sub_1A524BD44();
  v26 = sub_1A477CF04();
  sub_1A5247D44();

  (*(v53 + 8))(v5, v3);
  (*(v8 + 16))(v10, v13, v7);
  *&v66 = v3;
  *(&v66 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  v27 = sub_1A5248264();
  (*(v8 + 8))(v13, v7);
  *&v55 = v52;
  *(&v55 + 1) = v25;
  *&v56 = v27;
  sub_1A3D1DB4C(&v55);
  v74 = v63;
  v75 = v64;
  v76[0] = v65[0];
  *(v76 + 9) = *(v65 + 9);
  v70 = v59;
  v71 = v60;
  v72 = v61;
  v73 = v62;
  v66 = v55;
  v67 = v56;
  v68 = v57;
  v69 = v58;
  sub_1A477BC18(0);
  sub_1A477C300(0, &qword_1EB141528, sub_1A400F5B4, &type metadata for TransferProgressView, MEMORY[0x1E697E830]);
  sub_1A477D430();
  sub_1A477D614();

  sub_1A5249744();
  v74 = v96;
  v75 = v97;
  v76[0] = v98[0];
  *(v76 + 9) = *(v98 + 9);
  v70 = v92;
  v71 = v93;
  v72 = v94;
  v73 = v95;
  v66 = v88;
  v67 = v89;
  v68 = v90;
  v69 = v91;
  sub_1A477D7C8(&v66);
  v85 = v74;
  v86 = v75;
  v87[0] = v76[0];
  *(v87 + 10) = *(v76 + 10);
  v81 = v70;
  v82 = v71;
  v83 = v72;
  v84 = v73;
  v77 = v66;
  v78 = v67;
  v79 = v68;
  v80 = v69;
  sub_1A477BB78();
  sub_1A477BDC8();
  sub_1A477D594();
  sub_1A477D750();
  sub_1A5249744();

  v111[9] = v107;
  v111[10] = v108;
  v112[0] = v109[0];
  *(v112 + 10) = *(v109 + 10);
  v111[5] = v103;
  v111[6] = v104;
  v111[7] = v105;
  v111[8] = v106;
  v111[1] = v99;
  v111[2] = v100;
  v111[3] = v101;
  v111[4] = v102;
  v33 = v107;
  v85 = v107;
  v86 = v108;
  v87[0] = v112[0];
  *(v87 + 10) = *(v109 + 10);
  v34 = v103;
  v81 = v103;
  v82 = v104;
  v35 = v105;
  v83 = v105;
  v84 = v106;
  v36 = v99;
  v77 = v99;
  v78 = v100;
  v37 = v101;
  v79 = v101;
  v80 = v102;
  v38 = v108;
  v74 = v107;
  v75 = v108;
  v76[0] = v112[0];
  *(v76 + 10) = *(v109 + 10);
  v39 = v104;
  v70 = v103;
  v71 = v104;
  v40 = v106;
  v72 = v105;
  v73 = v106;
  v41 = v100;
  v66 = v99;
  v67 = v100;
  v42 = v102;
  v68 = v101;
  v69 = v102;
  v43 = v108;
  v44 = v54;
  *(v54 + 128) = v107;
  *(v44 + 144) = v43;
  v45 = v76[1];
  *(v44 + 160) = v76[0];
  *(v44 + 176) = v45;
  v46 = v71;
  *(v44 + 64) = v70;
  *(v44 + 80) = v46;
  v47 = v73;
  *(v44 + 96) = v72;
  *(v44 + 112) = v47;
  v48 = v67;
  *v44 = v66;
  *(v44 + 16) = v48;
  v49 = v69;
  *(v44 + 32) = v68;
  *(v44 + 48) = v49;
  v107 = v33;
  v108 = v38;
  v109[0] = v112[0];
  *(v109 + 10) = *(v112 + 10);
  v103 = v34;
  v104 = v39;
  v105 = v35;
  v106 = v40;
  v99 = v36;
  v100 = v41;
  LOBYTE(v88) = 1;
  *(v44 + 192) = 0;
  *(v44 + 200) = 1;
  v101 = v37;
  v102 = v42;
  sub_1A4778688(&v77, &v55, sub_1A477BB30);
  return sub_1A47786F0(&v99, sub_1A477BB30);
}

void sub_1A476CD1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[3] = a3;
  v11 = sub_1A52492A4();
  v10[12] = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v10[10] = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477DDFC(0, &qword_1EB128AE8, MEMORY[0x1E697F260], sub_1A477CF04);
  v10[13] = v6;
  v10[11] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10[8] = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10[9] = v10 - v9;
  v10[7] = sub_1A5249314();
  v12 = 0;
  v13 = a1;
  v14 = a2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A476D350@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v137 = a2;
  sub_1A477C038(0);
  v135 = *(v3 - 8);
  v136 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v125 = (&v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1A5249544();
  v119 = *(v5 - 8);
  v120 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v118 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477C598(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v116 = *(v7 - 8);
  v117 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v107 - v8;
  sub_1A419A5C4();
  v123 = *(v9 - 8);
  v124 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v122 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v107 - v12;
  sub_1A477671C(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v130 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1A5246F74();
  v127 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v112 = v15;
  v113 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v107 - v17;
  v18 = MEMORY[0x1E69E6720];
  sub_1A477E5D8(0, &qword_1EB141570, sub_1A477C038, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v134 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v133 = &v107 - v22;
  sub_1A477BFBC(0);
  v24 = *(v23 - 8);
  v128 = v23;
  v129 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47766E8(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for VisualPairingAppClipCode();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477E5D8(0, &qword_1EB141558, sub_1A477BFBC, v18);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v132 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v107 - v37;
  v114 = a1;
  v167 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_1A47786F0(v29, sub_1A47766E8);
    v39 = 1;
    v40 = v128;
  }

  else
  {
    sub_1A477E6A0(v29, v33, type metadata accessor for VisualPairingAppClipCode);
    sub_1A4778688(v33, v26, type metadata accessor for VisualPairingAppClipCode);
    sub_1A524BC74();
    sub_1A52481F4();
    sub_1A47786F0(v33, type metadata accessor for VisualPairingAppClipCode);
    sub_1A477BFDC(0);
    v42 = &v26[*(v41 + 36)];
    v43 = v163;
    *v42 = v162;
    *(v42 + 1) = v43;
    *(v42 + 2) = v164;
    v44 = v128;
    v45 = &v26[*(v128 + 36)];
    sub_1A477E5D8(0, &qword_1EB127880, MEMORY[0x1E697DC30], MEMORY[0x1E6980A08]);
    v47 = *(v46 + 28);
    v48 = *MEMORY[0x1E697DC28];
    v49 = sub_1A5247E14();
    (*(*(v49 - 8) + 104))(v45 + v47, v48, v49);
    *v45 = swift_getKeyPath();
    sub_1A477E6A0(v26, v38, sub_1A477BFBC);
    v39 = 0;
    v40 = v44;
  }

  (*(v129 + 56))(v38, v39, 1, v40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v50 = v130;
  v138 = v38;
  if (v147 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    v51 = v127;
    v52 = v131;
    if ((*(v127 + 48))(v50, 1, v131) != 1)
    {
      v54 = v51;
      v108 = *(v51 + 32);
      v55 = v126;
      v108(v126, v50, v52);
      v56 = sub_1A524C634();
      v57 = PXLocalizedString(v56);

      v58 = sub_1A524C674();
      v60 = v59;

      v147 = v58;
      v148 = v60;
      sub_1A3D5F9DC();
      v61 = sub_1A524A464();
      v128 = v62;
      v129 = v61;
      LOBYTE(v58) = v63;
      v109 = v64;
      KeyPath = swift_getKeyPath();
      LODWORD(v130) = sub_1A524A054();
      sub_1A5247BC4();
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v110 = v58 & 1;
      LOBYTE(v147) = v58 & 1;
      LOBYTE(v142) = 0;
      v74 = v113;
      v73 = v114;
      v166 = v114[1];
      v165 = *(v114 + 4);
      v75 = v55;
      v76 = v131;
      (*(v54 + 16))(v113, v75, v131);
      v77 = (*(v54 + 80) + 72) & ~*(v54 + 80);
      v78 = swift_allocObject();
      v79 = v73[1];
      *(v78 + 16) = *v73;
      *(v78 + 32) = v79;
      *(v78 + 48) = v73[2];
      *(v78 + 64) = *(v73 + 6);
      v108((v78 + v77), v74, v76);
      sub_1A4778688(&v167, &v147, sub_1A4779940);
      sub_1A3F30668(&v166, &v147);
      sub_1A4778688(&v165, &v147, sub_1A477CB54);

      v80 = v115;
      sub_1A524B704();
      v81 = v118;
      sub_1A5249534();
      sub_1A4775394(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E697D670]);
      sub_1A4775218(&unk_1EB122DF0, MEMORY[0x1E697C540]);
      v82 = v120;
      v83 = v121;
      v84 = v117;
      sub_1A524A934();
      (*(v119 + 8))(v81, v82);
      (*(v116 + 8))(v80, v84);
      v85 = v122;
      v86 = v123;
      v87 = *(v123 + 16);
      v88 = v124;
      v87(v122, v83, v124);
      *&v142 = v129;
      *(&v142 + 1) = v128;
      LOBYTE(v143) = v110;
      *(&v143 + 1) = *v141;
      DWORD1(v143) = *&v141[3];
      v89 = v109;
      *(&v143 + 1) = v109;
      *&v144 = KeyPath;
      BYTE8(v144) = 1;
      HIDWORD(v144) = *&v140[3];
      *(&v144 + 9) = *v140;
      LOBYTE(v145) = v130;
      DWORD1(v145) = *&v139[3];
      *(&v145 + 1) = *v139;
      *(&v145 + 1) = v66;
      *&v146[0] = v68;
      *(&v146[0] + 1) = v70;
      *&v146[1] = v72;
      BYTE8(v146[1]) = 0;
      v90 = v143;
      v91 = v125;
      *v125 = v142;
      v91[1] = v90;
      v92 = v144;
      v93 = v145;
      v94 = v146[0];
      *(v91 + 73) = *(v146 + 9);
      v91[3] = v93;
      v91[4] = v94;
      v91[2] = v92;
      sub_1A477C06C(0);
      v87(v91 + *(v95 + 48), v85, v88);
      sub_1A4778688(&v142, &v147, sub_1A477C0A0);
      v96 = *(v86 + 8);
      v96(v83, v88);
      (*(v127 + 8))(v126, v131);
      v97 = v85;
      v38 = v138;
      v96(v97, v88);
      v147 = v129;
      v148 = v128;
      v149 = v110;
      *v150 = *v141;
      *&v150[3] = *&v141[3];
      v151 = v89;
      v152 = KeyPath;
      v153 = 1;
      *v154 = *v140;
      *&v154[3] = *&v140[3];
      v155 = v130;
      *&v156[3] = *&v139[3];
      *v156 = *v139;
      v157 = v66;
      v158 = v68;
      v159 = v70;
      v160 = v72;
      v161 = 0;
      sub_1A47786F0(&v147, sub_1A477C0A0);
      v53 = v133;
      sub_1A477E480(v91, v133, sub_1A477C038);
      (*(v135 + 56))(v53, 0, 1, v136);
      goto LABEL_9;
    }

    sub_1A47786F0(v50, sub_1A477671C);
  }

  v53 = v133;
  (*(v135 + 56))(v133, 1, 1, v136);
LABEL_9:
  v98 = MEMORY[0x1E69E6720];
  v99 = v38;
  v100 = v132;
  sub_1A47787B4(v99, v132, &qword_1EB141558, sub_1A477BFBC, MEMORY[0x1E69E6720], sub_1A477E5D8);
  v101 = v134;
  sub_1A477D2DC(v53, v134, &qword_1EB141570, sub_1A477C038);
  v102 = v137;
  *v137 = 0;
  *(v102 + 8) = 1;
  sub_1A477BED8();
  v104 = v103;
  sub_1A47787B4(v100, v102 + *(v103 + 48), &qword_1EB141558, sub_1A477BFBC, v98, sub_1A477E5D8);
  sub_1A477D2DC(v101, v102 + *(v104 + 64), &qword_1EB141570, sub_1A477C038);
  v105 = v102 + *(v104 + 80);
  *v105 = 0;
  v105[8] = 1;
  sub_1A477D35C(v53, &qword_1EB141570, sub_1A477C038);
  sub_1A4778828(v138, &qword_1EB141558, sub_1A477BFBC, v98);
  sub_1A477D35C(v101, &qword_1EB141570, sub_1A477C038);
  return sub_1A4778828(v100, &qword_1EB141558, sub_1A477BFBC, v98);
}

uint64_t sub_1A476E308@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  sub_1A524C674();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1A476E3AC@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v3 = sub_1A52492A4();
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477DDFC(0, &qword_1EB128AE8, MEMORY[0x1E697F260], sub_1A477CF04);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v57 = *a1;
  v14 = *(&v57 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v56 - 2 >= 2)
  {
    v45 = v7;
    v23 = v46;
    v44 = v8;
    if (v56)
    {
      v25 = sub_1A524C634();
      v26 = PXLocalizedString(v25);

      v43 = sub_1A524C674();
      v42 = v27;

      sub_1A5249294();
      sub_1A524BD44();
      v28 = sub_1A477CF04();
      v29 = v13;
      sub_1A5247D44();

      (*(v23 + 8))(v5, v3);
      v30 = v44;
      v31 = v45;
      (*(v44 + 16))(v10, v29, v45);
      *&v50 = v3;
      *(&v50 + 1) = v28;
      swift_getOpaqueTypeConformance2();
      v32 = sub_1A5248264();
      (*(v30 + 8))(v29, v31);
      *&v48 = v43;
      *(&v48 + 1) = v42;
      *v49 = sub_1A477D2D8;
      *&v49[8] = v14;
      *&v49[16] = v32;
      v49[24] = 1;
      sub_1A477C2C4(0);
      sub_1A477D074();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A477C2C4(0);
    sub_1A477D074();
    v48 = 0u;
    memset(v49, 0, 25);
    v24 = MEMORY[0x1E6981E70];
    sub_1A5249744();
    v48 = v50;
    *v49 = v51;
    *&v49[16] = v52;
    *&v49[24] = v53;
    sub_1A477C300(0, &qword_1EB1415B8, sub_1A477C2C4, v24, MEMORY[0x1E697F960]);
    sub_1A477CFBC();
  }

  else
  {
    v15 = sub_1A524C634();
    v16 = PXLocalizedString(v15);

    v45 = sub_1A524C674();
    v18 = v17;

    v56 = a1[1];
    v55 = *(a1 + 4);
    v19 = swift_allocObject();
    v20 = a1[1];
    *(v19 + 16) = *a1;
    *(v19 + 32) = v20;
    *(v19 + 48) = a1[2];
    *(v19 + 64) = *(a1 + 6);
    sub_1A4778688(&v57, &v50, sub_1A4779940);
    sub_1A3F30668(&v56, &v50);
    sub_1A4778688(&v55, &v50, sub_1A477CB54);

    sub_1A5249294();
    sub_1A524BD44();
    v21 = sub_1A477CF04();
    sub_1A5247D44();

    (*(v46 + 8))(v5, v3);
    (*(v8 + 16))(v10, v13, v7);
    *&v50 = v3;
    *(&v50 + 1) = v21;
    swift_getOpaqueTypeConformance2();
    v22 = sub_1A5248264();
    (*(v8 + 8))(v13, v7);
    *&v48 = v45;
    *(&v48 + 1) = v18;
    *v49 = sub_1A477CF88;
    *&v49[8] = v19;
    *&v49[16] = v22;
    *&v49[24] = 256;
    sub_1A477C300(0, &qword_1EB1415B8, sub_1A477C2C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A477C2C4(0);
    sub_1A477CFBC();
    sub_1A477D074();
  }

  sub_1A5249744();
  v33 = v50;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  LOBYTE(v50) = 1;
  LOBYTE(v48) = v54;
  v38 = v47;
  *v47 = 0;
  *(v38 + 8) = 1;
  *(v38 + 1) = v33;
  *(v38 + 2) = v34;
  v38[6] = v35;
  *(v38 + 56) = v36;
  *(v38 + 57) = v37;
  v39 = v33;
  v40 = v34;
  sub_1A477D178(v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37);
  return sub_1A477D228(v39, *(&v39 + 1), v40, *(&v40 + 1), v35, v36, v37);
}

uint64_t sub_1A476EBC4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = MEMORY[0x1E6981148];
  v4 = MEMORY[0x1E6981138];
  sub_1A477C598(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - v8;
  v42 = MEMORY[0x1E697D7D0];
  sub_1A477C598(0, &unk_1EB143960, v3, v4, MEMORY[0x1E697D7D0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  sub_1A477C424(0, &qword_1EB1415F8, sub_1A477C4B4);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v40 - v18;
  sub_1A5249434();
  v56 = a1[1];
  v43 = *(a1 + 4);
  v54 = a1[1];
  v55 = v43;
  sub_1A477CDEC(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  sub_1A524BDE4();
  sub_1A4775394(&qword_1EB141610, &unk_1EB143960, v42);
  v19 = v41;
  sub_1A524AA64();
  (*(v11 + 8))(v13, v10);
  KeyPath = swift_getKeyPath();
  v21 = &v19[*(v15 + 44)];
  v22 = v19;
  *v21 = KeyPath;
  v21[8] = 1;
  v23 = sub_1A524C634();
  v24 = PXLocalizedString(v23);

  v25 = sub_1A524C674();
  v27 = v26;

  v51 = v25;
  v52 = v27;
  v54 = *a1;
  v53 = v56;
  v57 = v43;
  v28 = swift_allocObject();
  v29 = a1[1];
  *(v28 + 16) = *a1;
  *(v28 + 32) = v29;
  *(v28 + 48) = a1[2];
  *(v28 + 64) = *(a1 + 6);
  sub_1A4778688(&v54, v50, sub_1A4779940);
  sub_1A3F30668(&v53, v50);
  sub_1A4778688(&v57, v50, sub_1A477CB54);
  sub_1A3D5F9DC();

  v30 = v45;
  sub_1A524B754();
  v31 = v44;
  sub_1A3D1D834(v22, v44);
  v33 = v46;
  v32 = v47;
  v34 = *(v47 + 16);
  v35 = v48;
  v34(v46, v30, v48);
  v36 = v49;
  sub_1A3D1D834(v31, v49);
  sub_1A477C36C();
  v34((v36 + *(v37 + 48)), v33, v35);
  v38 = *(v32 + 8);
  v38(v30, v35);
  sub_1A3D1D8B4(v22);
  v38(v33, v35);
  return sub_1A3D1D8B4(v31);
}

uint64_t sub_1A476F12C(uint64_t a1)
{
  v2 = sub_1A5246FE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = v14;
  v6 = *(a1 + 32);
  v7 = *(a1 + 8);
  v16 = v6;
  v12 = *(a1 + 16);
  v13 = v6;
  sub_1A3F30668(&v15, v11);
  sub_1A4778688(&v16, v11, sub_1A477CB54);
  sub_1A477CDEC(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A5246FD4();
  v12 = v14;
  v13 = v6;
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1A524B6B4();
  sub_1A3C651B8(&v15);
  sub_1A47786F0(&v16, sub_1A477CB54);
  v8 = (v7 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_pincodeHandler);
  v9 = *(v7 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_pincodeHandler);
  if (v9)
  {
    *v8 = 0;
    v8[1] = 0;
    v9(v5);
    sub_1A3C33378(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A476F308@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  sub_1A524C674();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1A476F3AC()
{
  sub_1A477B5D0(0);
  sub_1A477E8CC(&qword_1EB141628, sub_1A477B5D0, sub_1A477C71C);
  return sub_1A5248824();
}

char *sub_1A476F574()
{
  type metadata accessor for ParentAppClipCodeView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v2 setContentMode_];
  [v2 setClipsToBounds_];
  [v2 setImage_];
  v3 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView_imageView];
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView_imageView] = v2;
  v4 = v2;

  v5 = v1;
  [v5 setBounds_];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 setFrame_];
  [v5 addSubview_];

  return v5;
}

void sub_1A476F6C8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView_imageView];
  if (v2)
  {
    v4 = *v1;
    v5 = v2;
    [v5 setImage_];
    [a1 setBounds_];
    v6 = v5;
    [a1 bounds];
    [v6 setFrame_];
  }
}

uint64_t sub_1A476F7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4779290(&qword_1EB1D2520, type metadata accessor for AppClipCodeViewRepresentable);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A476F840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4779290(&qword_1EB1D2520, type metadata accessor for AppClipCodeViewRepresentable);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A476F8D4()
{
  sub_1A4779290(&qword_1EB1D2520, type metadata accessor for AppClipCodeViewRepresentable);
  sub_1A52496F4();
  __break(1u);
}

void sub_1A476F92C(uint64_t a1)
{
  sub_1A477E4E8(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477E664(0);
  MEMORY[0x1EEE9AC00](v5);
  *v4 = sub_1A5249574();
  *(v4 + 1) = 0x4034000000000000;
  v4[16] = 0;
  sub_1A4778D4C(0, &qword_1EB1417B8, &qword_1EB141798, sub_1A477E63C);
  sub_1A476FB3C(a1, &v4[*(v6 + 44)]);
}

void sub_1A476FB3C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  sub_1A411848C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v30[-v8];
  v9 = sub_1A524C634();
  v10 = PXLocalizedString(v9);

  v11 = sub_1A524C674();
  v13 = v12;

  v36 = v11;
  v37 = v13;
  sub_1A3D5F9DC();
  v14 = sub_1A524A464();
  v16 = v15;
  v18 = v17;
  sub_1A524A1A4();
  v19 = sub_1A524A344();
  v21 = v20;
  v31 = v22;
  v24 = v23;
  sub_1A3E04DF4(v14, v16, v18 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  LOBYTE(v37) = 0;
  v35 = 0x3FF0000000000000;
  sub_1A3F93828();
  v25 = v34;
  sub_1A5248064();
  LOBYTE(v36) = v31 & 1;
  v26 = *(v4 + 16);
  v27 = v6;
  v26(v6, v25, v3);
  LOBYTE(v25) = v36;
  v28 = v33;
  *v33 = v19;
  v28[1] = v21;
  *(v28 + 16) = v25;
  v28[3] = v24;
  sub_1A477E63C(0);
  v26(v28 + *(v29 + 48), v27, v3);
  sub_1A3E75E68(v19, v21, v25);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A476FE28()
{
  v1 = sub_1A5249E64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4778934(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v0;
  v10 = v0[1];
  v12 = v0[2];
  v11 = v0[3];
  v20 = v9;
  v21 = v10;
  v22 = v12;
  v23 = v11;
  sub_1A47750F8();
  sub_1A477E8CC(&qword_1EB141280, sub_1A47750F8, sub_1A4778A8C);

  sub_1A524B704();
  v13 = &v8[*(v6 + 36)];
  sub_1A477E5D8(0, &qword_1EB127880, MEMORY[0x1E697DC30], MEMORY[0x1E6980A08]);
  v15 = *(v14 + 28);
  v16 = *MEMORY[0x1E697DC10];
  v17 = sub_1A5247E14();
  (*(*(v17 - 8) + 104))(v13 + v15, v16, v17);
  *v13 = swift_getKeyPath();
  sub_1A5249E54();
  sub_1A4778C48();
  sub_1A4775218(&qword_1EB127A50, MEMORY[0x1E697CB70]);
  sub_1A524A934();
  (*(v2 + 8))(v4, v1);
  return sub_1A47786F0(v8, sub_1A4778934);
}

uint64_t sub_1A47700FC(uint64_t a1)
{
  v2 = v1;
  sub_1A477E5D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1D14B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1A5246F24();
  __swift_project_value_buffer(v11, qword_1EB1D14B8);
  (*(v8 + 16))(v10, a1, v7);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D264();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21[0] = v2;
    v15 = v14;
    v21[1] = swift_slowAlloc();
    *v15 = 136315138;
    sub_1A4775218(&qword_1EB12B000, MEMORY[0x1E6968FB0]);
    sub_1A524EA44();
    (*(v8 + 8))(v10, v7);
    sub_1A3C2EF94();
  }

  (*(v8 + 8))(v10, v7);
  v16 = sub_1A524CCB4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_1A524CC54();

  v17 = sub_1A524CC44();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v2;
  sub_1A3D4D930(0, 0, v6, &unk_1A535E600, v18);
}

uint64_t sub_1A4770494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_1A524CC54();
  *(v4 + 32) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A477052C, v6, v5);
}

uint64_t sub_1A477052C()
{
  v13 = v0;
  v1 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_completeTransferFileCount;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_completeTransferFileCount);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v0 + 24);
    *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_completeTransferFileCount) = v6;
    v8 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferFiles;
    v9 = v6 / *(*(v7 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferFiles) + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = v9;

    sub_1A52479F4();
    if (*(*(v7 + v8) + 16) == *(v1 + v3))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1A52479E4();

      v10 = *(v0 + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 16) = 2;

      sub_1A52479F4();
      v12 = v10;
      sub_1A475FCD0(&v12);
    }

    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

uint64_t sub_1A47706D0(uint64_t a1)
{
  v2 = v1;
  sub_1A477E5D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v28 = v9;
  v29 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  if (qword_1EB1D14B0 != -1)
  {
    swift_once();
  }

  v13 = sub_1A5246F24();
  __swift_project_value_buffer(v13, qword_1EB1D14B8);
  v27 = *(v8 + 16);
  v27(v12, a1, v7);
  v14 = sub_1A5246F04();
  v15 = sub_1A524D264();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26[2] = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26[3] = v1;
    v26[1] = v18;
    v30 = v18;
    *v17 = 136315138;
    sub_1A4775218(&qword_1EB12B000, MEMORY[0x1E6968FB0]);
    sub_1A524EA44();
    (*(v8 + 8))(v12, v7);
    sub_1A3C2EF94();
  }

  (*(v8 + 8))(v12, v7);
  v19 = sub_1A524CCB4();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v20 = v29;
  v27(v29, a1, v7);
  sub_1A524CC54();

  v21 = sub_1A524CC44();
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 2) = v21;
  *(v23 + 3) = v24;
  *(v23 + 4) = v2;
  (*(v8 + 32))(&v23[v22], v20, v7);
  sub_1A3D4D930(0, 0, v6, &unk_1A535E610, v23);
}

uint64_t sub_1A4770AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A5240E64();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4770BEC, v8, v7);
}

uint64_t sub_1A4770BEC()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  (*(v3 + 16))(v1, v4, v2);
  v6 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_rejectedFiles;
  v7 = *(v5 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_rejectedFiles);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1A3ECD488(0, v7[2] + 1, 1, v7);
    *(v5 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1A3ECD488(v9 > 1, v10 + 1, 1, v7);
  }

  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[4];
  v7[2] = v10 + 1;
  (*(v11 + 32))(v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10, v12, v13);
  *(v5 + v6) = v7;

  v14 = v0[1];

  return v14();
}

void sub_1A4770D34()
{
  v0 = sub_1A523FBB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v4 = *(v50 + 16);
  if (v4)
  {
    v7 = *(v1 + 16);
    v5 = v1 + 16;
    v6 = v7;
    v8 = *(v5 + 64);
    v46 = v50;
    v9 = v50 + ((v8 + 32) & ~v8);
    v49 = *(v5 + 56);
    v10 = (v5 - 8);
    v11 = MEMORY[0x1E69E7CC0];
    v47 = v7;
    v48 = v5;
    v7(v3, v9, v0);
    while (1)
    {
      sub_1A523FB64();
      if (v12)
      {

        v13 = sub_1A523FB64();
        v15 = v14;
        (*v10)(v3, v0);
        if (v15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1A3D3D914(0, *(v11 + 2) + 1, 1, v11);
          }

          v17 = *(v11 + 2);
          v16 = *(v11 + 3);
          if (v17 >= v16 >> 1)
          {
            v11 = sub_1A3D3D914((v16 > 1), v17 + 1, 1, v11);
          }

          *(v11 + 2) = v17 + 1;
          v18 = &v11[16 * v17];
          *(v18 + 4) = v13;
          *(v18 + 5) = v15;
          v6 = v47;
        }
      }

      else
      {
        (*v10)(v3, v0);
      }

      v9 += v49;
      if (!--v4)
      {
        break;
      }

      v6(v3, v9, v0);
    }
  }

  v19 = [objc_opt_self() imagePickerPhotoLibrary];
  v20 = [v19 librarySpecificFetchOptions];

  [v20 setFetchLimit_];
  v21 = objc_opt_self();
  v22 = sub_1A524CA14();

  v23 = [v21 fetchAssetsWithLocalIdentifiers:v22 options:v20];

  v49 = v23;
  v24 = [v23 count];
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = v24;
    v47 = v20;
    if (!v24)
    {
LABEL_19:
      v41 = objc_opt_self();
      v42 = sub_1A524C634();
      sub_1A4778568(0, &qword_1EB126200, &qword_1EB126F80, &qword_1EB12B160);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = sub_1A524C674();
      *(inited + 40) = v44;
      sub_1A3C52C70(0, &unk_1EB1265F0);
      *(inited + 48) = sub_1A524DC24();
      sub_1A452D80C(inited, &qword_1EB126430, &qword_1EB12B160);
      swift_setDeallocating();
      sub_1A477862C(inited + 32, &qword_1EB126F80, &qword_1EB12B160);
      sub_1A3C52C70(0, &qword_1EB12B160);
      v45 = sub_1A524C3D4();

      [v41 sendEvent:v42 withPayload:v45];

      return;
    }

    v48 = "ledInvariantViolated";
    v26 = objc_opt_self();
    sub_1A452FEC0(0, &qword_1EB126430, &qword_1EB12B160);
    v27 = 0;
    while (1)
    {
      v28 = sub_1A524C634();
      v29 = sub_1A524C674();
      v31 = v30;
      v32 = [v49 objectAtIndexedSubscript_];
      v33 = sub_1A524E794();
      v34 = sub_1A3C5DCA4(v29, v31);
      if (v35)
      {
        break;
      }

      v33[(v34 >> 6) + 8] |= 1 << v34;
      v36 = (v33[6] + 16 * v34);
      *v36 = v29;
      v36[1] = v31;
      *(v33[7] + 8 * v34) = v32;
      v37 = v33[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_21;
      }

      ++v27;
      v33[2] = v39;
      sub_1A3C52C70(0, &qword_1EB12B160);
      v40 = sub_1A524C3D4();

      [v26 sendEvent:v28 withPayload:v40];

      if (v25 == v27)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1A4771328(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A452FEC0(0, &qword_1EB126430, &qword_1EB12B160);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4771514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47715AC, v6, v5);
}

uint64_t sub_1A47715AC()
{
  v5 = v0;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 1;

  sub_1A52479F4();
  v4 = v1;
  sub_1A475FCD0(&v4);
  sub_1A4770D34();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A47716B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4771750, v6, v5);
}

uint64_t sub_1A4771750()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 1;

  sub_1A52479F4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4771800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A477E5D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  if (qword_1EB1D14B0 != -1)
  {
    swift_once();
  }

  v9 = sub_1A5246F24();
  __swift_project_value_buffer(v9, qword_1EB1D14B8);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "[Transfer] Showing the pincode alert to the user, awaiting input.", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  v13 = sub_1A524CCB4();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_1A524CC54();

  v14 = sub_1A524CC44();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;
  sub_1A3D4D930(0, 0, v8, &unk_1A535E620, v15);
}

uint64_t sub_1A4771A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4771ABC, v8, v7);
}

uint64_t sub_1A4771ABC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 48) = 1;

  sub_1A52479F4();
  v4 = (v2 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_pincodeHandler);
  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_pincodeHandler);
  *v4 = v3;
  v4[1] = v1;
  sub_1A3C33378(v5);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A4771BA8(uint64_t a1)
{
  v2 = v1;
  sub_1A477E5D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v27 - v5;
  v7 = sub_1A5246F44();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[5] = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  if (qword_1EB1D14B0 != -1)
  {
    swift_once();
  }

  v14 = sub_1A5246F24();
  __swift_project_value_buffer(v14, qword_1EB1D14B8);
  v28 = *(v8 + 16);
  v28(v13, a1, v7);
  v15 = sub_1A5246F04();
  v16 = sub_1A524D264();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[3] = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[2] = a1;
    v29 = v19;
    *v18 = 136315138;
    v28(v10, v13, v7);
    sub_1A524C714();
    v27[4] = v2;
    v27[1] = v10;
    (*(v8 + 8))(v13, v7);
    sub_1A3C2EF94();
  }

  (*(v8 + 8))(v13, v7);
  v20 = sub_1A524CCB4();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v28(v10, a1, v7);
  sub_1A524CC54();

  v21 = sub_1A524CC44();
  v22 = v10;
  v23 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 2) = v21;
  *(v24 + 3) = v25;
  *(v24 + 4) = v2;
  (*(v8 + 32))(&v24[v23], v22, v7);
  sub_1A3D4D930(0, 0, v6, &unk_1A535E540, v24);
}

uint64_t sub_1A4771FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1A524CC54();
  v5[5] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4772050, v7, v6);
}

void sub_1A4772050()
{
  v4 = v0;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (*(v0 + 16) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    v1 = *(v0 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = 3;

    sub_1A52479F4();
    v3 = v1;
    sub_1A475FCD0(&v3);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = 0;

    sub_1A52479F4();
  }

  v2 = *(v0 + 32);
  *(*(v0 + 24) + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferHost) = 0;

  sub_1A4777C50(v2);
}

uint64_t sub_1A47722C0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for PXRetailExperienceView;
  a1[4] = sub_1A4778CF8();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = sub_1A4763FFC;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = PXDisplayCollectionDetailedCountsMake;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_1A47723C4(uint64_t a1)
{
  sub_1A47760A0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1A4778688(a1, &v9 - v6, sub_1A47760A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4778688(v7, v4, sub_1A47760A0);

  sub_1A52479F4();
  return sub_1A47786F0(v7, sub_1A47760A0);
}

uint64_t sub_1A4772504(uint64_t a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  sub_1A52479F4();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1A47726B0(uint64_t a1)
{
  sub_1A47766E8(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1A4778688(a1, &v9 - v6, sub_1A47766E8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4778688(v7, v4, sub_1A47766E8);

  sub_1A52479F4();
  return sub_1A47786F0(v7, sub_1A47766E8);
}

uint64_t sub_1A4772804()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

uint64_t sub_1A4772874@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A47728F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

double sub_1A4772968@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A47729E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

uint64_t sub_1A4772A64@<X0>(uint64_t a1@<X8>)
{
  v17[2] = a1;
  sub_1A411848C();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47757C0(0, &unk_1EB141778, sub_1A4775934, sub_1A411848C, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_1A524B554();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A5248624())
  {
    v17[1] = v2;
    (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
    v13 = sub_1A524B5C4();
    (*(v10 + 8))(v12, v9);
    if (qword_1EB1D1500 != -1)
    {
      swift_once();
    }

    sub_1A524BC74();
    sub_1A52481F4();
    *&v20[38] = v24;
    *&v20[22] = v23[6];
    *&v20[6] = v23[5];
    v21 = 0;
    v22 = v13;
    LOWORD(v23[0]) = 257;
    *&v23[3] = *(&v24 + 1);
    *(&v23[2] + 2) = *&v20[32];
    *(&v23[1] + 2) = *&v20[16];
    *(v23 + 2) = *v20;
    WORD4(v23[3]) = 0;
    HIWORD(v23[3]) = v19;
    *(&v23[3] + 10) = v18;
    *&v23[4] = 0x3FF0000000000000;
    WORD4(v23[4]) = 0;
    v8[4] = v23[3];
    *(v8 + 74) = *(&v23[3] + 10);
    v14 = v23[2];
    v8[2] = v23[1];
    v8[3] = v14;
    v15 = v23[0];
    *v8 = v22;
    v8[1] = v15;
    swift_storeEnumTagMultiPayload();
    sub_1A4778688(&v22, &v18, sub_1A4775934);
    sub_1A4778688(&v22, &v18, sub_1A4775934);
    sub_1A4775934();
    sub_1A477E8CC(&unk_1EB141068, sub_1A4775934, sub_1A4775AD4);
    sub_1A4775C00();
    sub_1A5249744();

    sub_1A47786F0(&v22, sub_1A4775934);
    return sub_1A47786F0(&v22, sub_1A4775934);
  }

  else
  {
    sub_1A5248074();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_1A4775934();
    sub_1A477E8CC(&unk_1EB141068, sub_1A4775934, sub_1A4775AD4);
    sub_1A4775C00();
    sub_1A5249744();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A4772F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A3C5DCA4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A4774280();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1A5240E64();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1A4773C4C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1A5240E64();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1A47730BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A3C5DCA4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A4774524();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Attachment.Status(0);
    v19 = *(v12 - 8);
    sub_1A477E6A0(v11 + *(v19 + 72) * v8, a3, type metadata accessor for Attachment.Status);
    sub_1A4773C4C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Attachment.Status(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1A477323C(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1A5240E64();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A4776674(0, &qword_1EB141238, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6EC8]);
  v42 = a2;
  result = sub_1A524E774();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if ((v42 & 1) == 0)
      {
        (*v39)(v44, v28, v45);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*v43)(v44, v28, v45);
      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1A47735E4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Attachment.Status(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A4776674(0, &qword_1EB141248, type metadata accessor for Attachment.Status, MEMORY[0x1E69E6EC8]);
  v40 = a2;
  result = sub_1A524E774();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if ((v40 & 1) == 0)
      {
        sub_1A4778688(v28, v41, type metadata accessor for Attachment.Status);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A477E6A0(v28, v41, type metadata accessor for Attachment.Status);
      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1A477E6A0(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Attachment.Status);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1A4773980(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4776674(0, &unk_1EB141258, type metadata accessor for Attachment, MEMORY[0x1E69E6EC8]);
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

unint64_t sub_1A4773C4C(unint64_t result, uint64_t a2)
{
  if ((*(a2 + 64 + ((((result + 1) & ~(-1 << *(a2 + 32))) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((result + 1) & ~(-1 << *(a2 + 32)))))
  {
    sub_1A524E244();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  v2 = *(a2 + 16);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v4;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A4773E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A3C5DCA4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1A4774280();
      goto LABEL_7;
    }

    sub_1A477323C(v15, a4 & 1);
    v26 = sub_1A3C5DCA4(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A4774124(v12, a2, a3, a1, v18);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_17:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = v18[7];
  v20 = sub_1A5240E64();
  v21 = *(v20 - 8);
  v22 = *(v21 + 40);
  v23 = v20;
  v24 = v19 + *(v21 + 72) * v12;

  return v22(v24, a1, v23);
}

uint64_t sub_1A4773FC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A3C5DCA4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1A4774524();
      goto LABEL_7;
    }

    sub_1A47735E4(v15, a4 & 1);
    v22 = sub_1A3C5DCA4(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A47741D4(v12, a2, a3, a1, v18);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_17:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = v18[7];
  v20 = v19 + *(*(type metadata accessor for Attachment.Status(0) - 8) + 72) * v12;

  return sub_1A4778750(a1, v20);
}

uint64_t sub_1A4774124(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1A5240E64();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1A47741D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Attachment.Status(0);
  result = sub_1A477E6A0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Attachment.Status);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_1A4774280()
{
  v1 = v0;
  v35 = sub_1A5240E64();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4776674(0, &qword_1EB141238, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6EC8]);
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      v15 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
      goto LABEL_14;
    }

    v16 = 0;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_17;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:
    *v1 = v5;
  }

  return result;
}

void *sub_1A4774524()
{
  v1 = v0;
  v2 = type metadata accessor for Attachment.Status(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4776674(0, &qword_1EB141248, type metadata accessor for Attachment.Status, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1A524E764();
  v6 = v5;
  if (*(v4 + 16))
  {
    v28 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      v16 = __clz(__rbit64(v14 & v13));
      goto LABEL_14;
    }

    v17 = 0;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28;
        v6 = v31;
        goto LABEL_17;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v29;
        v25 = *(v30 + 72) * v19;
        sub_1A4778688(*(v4 + 56) + v25, v29, type metadata accessor for Attachment.Status);
        v26 = v31;
        v27 = (*(v31 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_1A477E6A0(v24, *(v26 + 56) + v25, type metadata accessor for Attachment.Status);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:
    *v1 = v6;
  }

  return result;
}

void *sub_1A47747A0()
{
  v1 = v0;
  sub_1A4776674(0, &unk_1EB141258, type metadata accessor for Attachment, MEMORY[0x1E69E6EC8]);
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

uint64_t sub_1A4774934()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1A477E5D8(0, &qword_1EB1261F0, sub_1A3C5D744, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = 0xD000000000000021;
  v2 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = 0x80000001A53E9CE0;
  *(inited + 48) = 10;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A47786F0(v2, sub_1A3C5D744);
  v3 = sub_1A524C3D4();

  [v0 registerDefaults_];

  sub_1A4779184();
  v5 = objc_allocWithZone(v4);

  return sub_1A5249624();
}

void sub_1A4774B1C()
{
  if (!qword_1EB140F10)
  {
    sub_1A477C424(255, &qword_1EB140F18, sub_1A4774B98);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140F10);
    }
  }
}

void sub_1A4774B98()
{
  if (!qword_1EB140F20)
  {
    sub_1A4774CDC();
    sub_1A477DDFC(255, &unk_1EB122310, sub_1A47752C4, sub_1A47753EC);
    sub_1A4775218(&unk_1EB140FC8, sub_1A4774CDC);
    sub_1A47752C4();
    sub_1A47753EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140F20);
    }
  }
}

void sub_1A4774CDC()
{
  if (!qword_1EB140F28)
  {
    sub_1A477E5D8(255, &qword_1EB140F30, sub_1A4774D90, MEMORY[0x1E6981F40]);
    sub_1A4775260(&unk_1EB140FB8, &qword_1EB140F30, sub_1A4774D90);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140F28);
    }
  }
}

void sub_1A4774DB8()
{
  if (!qword_1EB140F40)
  {
    sub_1A477E5D8(255, &qword_1EB140F48, sub_1A4774E6C, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB140FB0, &qword_1EB140F48, sub_1A4774E6C);
    v0 = sub_1A52481C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140F40);
    }
  }
}

void sub_1A4774EA0()
{
  if (!qword_1EB140F58)
  {
    sub_1A477E5D8(255, &qword_1EB140F60, sub_1A4774F54, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB140F98, &qword_1EB140F60, sub_1A4774F54);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140F58);
    }
  }
}

void sub_1A4774F54()
{
  if (!qword_1EB140F68)
  {
    sub_1A477E5D8(255, &qword_1EB140F70, sub_1A4775014, MEMORY[0x1E69E6720]);
    sub_1A47750F8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB140F68);
    }
  }
}

void sub_1A477508C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A47750F8()
{
  if (!qword_1EB140F88)
  {
    sub_1A477C598(255, &qword_1EB140F90, MEMORY[0x1E6981148], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140F88);
    }
  }
}

void sub_1A4775184()
{
  if (!qword_1EB140FA0)
  {
    sub_1A4774EA0();
    sub_1A4775218(&qword_1EB140FA8, sub_1A4774EA0);
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140FA0);
    }
  }
}

uint64_t sub_1A4775218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4775260(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A477E5D8(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A47752C4()
{
  if (!qword_1EB124608)
  {
    v0 = MEMORY[0x1E697D670];
    sub_1A477C598(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A4775394(&qword_1EB127490, &qword_1EB127480, v0);
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124608);
    }
  }
}

uint64_t sub_1A4775394(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A477C598(255, a2, MEMORY[0x1E6981148], MEMORY[0x1E6981138], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4775420()
{
  result = qword_1EB140FE0;
  if (!qword_1EB140FE0)
  {
    sub_1A477C424(255, &qword_1EB140F18, sub_1A4774B98);
    sub_1A4774CDC();
    sub_1A477DDFC(255, &unk_1EB122310, sub_1A47752C4, sub_1A47753EC);
    sub_1A4775218(&unk_1EB140FC8, sub_1A4774CDC);
    sub_1A47752C4();
    sub_1A47753EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3FF8FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140FE0);
  }

  return result;
}

void sub_1A47755AC()
{
  if (!qword_1EB141000)
  {
    sub_1A477E5D8(255, &qword_1EB141008, sub_1A4775660, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB1410B8, &qword_1EB141008, sub_1A4775660);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141000);
    }
  }
}

void sub_1A477569C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A477E5D8(255, a4, a5, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A47757C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A477588C()
{
  if (!qword_1EB141040)
  {
    sub_1A47757C0(255, &qword_1EB141048, sub_1A4775934, sub_1A411848C, MEMORY[0x1E697F960]);
    sub_1A47759D8();
    v0 = sub_1A5247B04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141040);
    }
  }
}

void sub_1A4775934()
{
  if (!qword_1EB141050)
  {
    sub_1A47757C0(255, &qword_1EB1281E8, sub_1A3E33EB4, sub_1A429977C, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141050);
    }
  }
}

unint64_t sub_1A47759D8()
{
  result = qword_1EB141060;
  if (!qword_1EB141060)
  {
    sub_1A47757C0(255, &qword_1EB141048, sub_1A4775934, sub_1A411848C, MEMORY[0x1E697F960]);
    sub_1A477E8CC(&unk_1EB141068, sub_1A4775934, sub_1A4775AD4);
    sub_1A4775C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141060);
  }

  return result;
}

unint64_t sub_1A4775AD4()
{
  result = qword_1EB1281F0;
  if (!qword_1EB1281F0)
  {
    sub_1A47757C0(255, &qword_1EB1281E8, sub_1A3E33EB4, sub_1A429977C, MEMORY[0x1E697E830]);
    sub_1A477E8CC(&qword_1EB128300, sub_1A3E33EB4, sub_1A3E44C04);
    sub_1A4775218(&qword_1EB1289D0, sub_1A429977C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1281F0);
  }

  return result;
}

void sub_1A4775CF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A4775DEC()
{
  if (!qword_1EB1410A8)
  {
    sub_1A477DDFC(255, &qword_1EB1410B0, sub_1A43D3010, sub_1A43D30E0);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1410A8);
    }
  }
}

unint64_t sub_1A4775E94()
{
  result = qword_1EB1410D0;
  if (!qword_1EB1410D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1410D0);
  }

  return result;
}

void sub_1A4775F3C()
{
  sub_1A523FBB4();
  if (v0 <= 0x3F)
  {
    sub_1A477E5D8(319, &qword_1EB1410D8, sub_1A47760A0, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1A477E5D8(319, &qword_1EB1410E8, MEMORY[0x1E6968FB0], MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1A47760FC()
{
  sub_1A477CDEC(319, &qword_1EB1410F0, &type metadata for RetailExperienceState, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1A477CDEC(319, &unk_1EB1410F8, &type metadata for RetailTransferState, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1A477CDEC(319, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        sub_1A477E5D8(319, &unk_1EB141108, sub_1A47765A4, MEMORY[0x1E695C070]);
        if (v3 <= 0x3F)
        {
          sub_1A477E5D8(319, &qword_1EB141118, sub_1A47765D8, MEMORY[0x1E695C070]);
          if (v4 <= 0x3F)
          {
            sub_1A477E5D8(319, &qword_1EB141128, sub_1A477660C, MEMORY[0x1E695C070]);
            if (v5 <= 0x3F)
            {
              sub_1A477E5D8(319, &qword_1EB141138, sub_1A4776640, MEMORY[0x1E695C070]);
              if (v6 <= 0x3F)
              {
                sub_1A477E5D8(319, &qword_1EB141148, sub_1A47766E8, MEMORY[0x1E695C070]);
                if (v7 <= 0x3F)
                {
                  sub_1A477CDEC(319, &qword_1EB1249D8, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A477E5D8(319, &qword_1EB141160, sub_1A477671C, MEMORY[0x1E695C070]);
                    if (v9 <= 0x3F)
                    {
                      swift_updateClassMetadata2();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A4776674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A47767B8()
{
  if (!qword_1EB141200)
  {
    sub_1A5248464();
    sub_1A4774B1C();
    sub_1A477E8CC(&qword_1EB140FD8, sub_1A4774B1C, sub_1A4775420);
    v0 = sub_1A5248834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141200);
    }
  }
}

uint64_t sub_1A477688C()
{
  result = sub_1A3C52C70(319, &qword_1EB131890);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Photo(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Movie(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1A4776A80()
{
  result = qword_1EB1D1C40[0];
  if (!qword_1EB1D1C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D1C40);
  }

  return result;
}

unint64_t sub_1A4776AD8()
{
  result = qword_1EB1D1D50[0];
  if (!qword_1EB1D1D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D1D50);
  }

  return result;
}

uint64_t sub_1A4776B2C()
{
  v2 = *(sub_1A5246F44() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4771FB8(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A4776C04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A4776674(0, &unk_1EB141258, type metadata accessor for Attachment, MEMORY[0x1E69E6EC8]);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1A4776D2C(uint64_t a1)
{
  sub_1A477C1B8(0, &qword_1EB141250, type metadata accessor for Attachment.Status);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A4776674(0, &qword_1EB141248, type metadata accessor for Attachment.Status, MEMORY[0x1E69E6EC8]);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A47787B4(v10, v6, &qword_1EB141250, type metadata accessor for Attachment.Status, MEMORY[0x1E69E6158], sub_1A477C1B8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1A3C5DCA4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Attachment.Status(0);
      result = sub_1A477E6A0(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Attachment.Status);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

unint64_t sub_1A4776F78(uint64_t a1)
{
  sub_1A477C1B8(0, &qword_1EB141240, MEMORY[0x1E6968FB0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A4776674(0, &qword_1EB141238, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6EC8]);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A47787B4(v10, v6, &qword_1EB141240, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6158], sub_1A477C1B8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1A3C5DCA4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1A5240E64();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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