@interface PUOneUpDefaultActionsController
- (BOOL)assetActionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)assetActionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)canPerformSimpleActionWithActionType:(unint64_t)a3;
- (BOOL)canPerformTrashAction;
- (BOOL)executeActionPerformer:(id)a3 completionHandler:(id)a4;
- (BOOL)performSimpleActionWithActionType:(unint64_t)a3;
- (BOOL)performSimpleActionWithActionType:(unint64_t)a3 completionHandler:(id)a4;
- (BOOL)prefersAssetInclusionAfterRemovalForActionPerformer:(id)a3;
- (BOOL)presentViewController:(id)a3;
- (BOOL)shouldEnableLikeAction;
- (BOOL)shouldEnableSimpleActionWithActionType:(unint64_t)a3;
- (BOOL)shouldEnableToggleDetailsAction;
- (PUOneUpActionsControllerDelegate)delegate;
- (PUOneUpActionsControllerPopoverHelper)popoverHelper;
- (PUOneUpDefaultActionsController)initWithBrowsingSession:(id)a3 viewController:(id)a4;
- (PUOneUpDefaultActionsControllerActionManagerSource)assetActionManagerSource;
- (double)assetActionPerformerBottomPaddingForPresentingToast:(id)a3;
- (id)assetActionPerformerHostViewControllerForPresentingToast:(id)a3;
- (id)undoManagerForAssetActionPerformer:(id)a3;
- (void)dismissOneUp;
- (void)internalToggleGainMapImage;
- (void)jumpToNextAsset;
- (void)jumpToPreviousAsset;
- (void)performActionType:(unint64_t)a3 assetsByAssetCollection:(id)a4;
- (void)performCancelEditingAction;
- (void)performDoneEditingAction;
- (void)performDuplicateActionWithAssetsByAssetCollection:(id)a3;
- (void)performEditAudioMixModeActionWithAudioMixMode:(id)a3;
- (void)performEditPlaybackRateActionWithPlaybackRate:(float)a3;
- (void)performLikeActionWithLike:(BOOL)a3;
- (void)performMergeDuplicatesAction;
- (void)performMuteActionWithShouldMute:(BOOL)a3;
- (void)performPendingEditsActionWithRequest:(id)a3;
- (void)performPlayPauseActionWithDesiredState:(int64_t)a3;
- (void)performQuickCropActionWithContext:(id)a3;
- (void)performRestoreAction;
- (void)performShareAction;
- (void)performShowInLibraryAction;
- (void)performSyndicationSaveAction;
- (void)performToggleCommentsActionAndBeginEditing:(BOOL)a3;
- (void)performToggleDetailsAction;
- (void)performToggleFavoriteAction;
- (void)performToggleMuteAction;
- (void)performToggleSpatialAction;
- (void)performTrashAction;
- (void)performZoomAt:(id)a3;
- (void)preheatShareAction;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)setAssetActionManagerSource:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPopoverHelper:(id)a3;
- (void)toggleChromeVisibility;
- (void)toggleImmersiveMode;
- (void)togglePlayback;
- (void)toggleSelectionMode;
@end

@implementation PUOneUpDefaultActionsController

- (PUOneUpActionsControllerDelegate)delegate
{
  v2 = sub_1B3847344();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B38473B0();
}

- (PUOneUpDefaultActionsControllerActionManagerSource)assetActionManagerSource
{
  v2 = sub_1B384748C();

  return v2;
}

- (void)setAssetActionManagerSource:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B38474F8();
}

- (PUOneUpActionsControllerPopoverHelper)popoverHelper
{
  v2 = sub_1B38475D4();

  return v2;
}

- (void)setPopoverHelper:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B3847674();
}

- (PUOneUpDefaultActionsController)initWithBrowsingSession:(id)a3 viewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  return OneUpDefaultActionsController.init(browsingSession:viewController:)();
}

- (void)performShareAction
{
  v2 = self;
  sub_1B384792C();
}

- (void)preheatShareAction
{
  v2 = self;
  sub_1B3847CC0();
}

- (void)performLikeActionWithLike:(BOOL)a3
{
  v4 = self;
  sub_1B3847F04(a3);
}

- (void)performRestoreAction
{
  v2 = self;
  sub_1B38480E0();
}

- (void)performMuteActionWithShouldMute:(BOOL)a3
{
  v4 = self;
  sub_1B38483E8(a3);
}

- (void)performToggleFavoriteAction
{
  v2 = self;
  sub_1B38484B4();
}

- (void)performSyndicationSaveAction
{
  v2 = self;
  sub_1B38488C4();
}

- (void)togglePlayback
{
  v2 = self;
  sub_1B3848D88();
}

- (void)toggleChromeVisibility
{
  v2 = self;
  sub_1B3848EB4();
}

- (void)toggleImmersiveMode
{
  v2 = self;
  sub_1B3848F08();
}

- (void)performPlayPauseActionWithDesiredState:(int64_t)a3
{
  v4 = self;
  sub_1B384902C(a3);
}

- (void)performToggleSpatialAction
{
  v2 = self;
  sub_1B38494C8();
}

- (void)performToggleMuteAction
{
  v2 = self;
  sub_1B3849654();
}

- (void)performToggleDetailsAction
{
  v2 = self;
  sub_1B3849714();
}

- (void)performZoomAt:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B38497CC(a3);
  swift_unknownObjectRelease();
}

- (void)performToggleCommentsActionAndBeginEditing:(BOOL)a3
{
  v4 = self;
  sub_1B38498A0(a3);
}

- (void)performShowInLibraryAction
{
  v2 = self;
  sub_1B3849BBC();
}

- (void)performDoneEditingAction
{
  v2 = self;
  sub_1B384A118();
}

- (void)performCancelEditingAction
{
  v2 = self;
  sub_1B384A188();
}

- (void)performMergeDuplicatesAction
{
  v2 = self;
  sub_1B384A2EC();
}

- (void)performQuickCropActionWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B384A4B8(v4);
}

- (void)performEditPlaybackRateActionWithPlaybackRate:(float)a3
{
  v4 = self;
  sub_1B384A538(a3);
}

- (void)performEditAudioMixModeActionWithAudioMixMode:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B384A7F4(v4);
}

- (void)performPendingEditsActionWithRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B384AAC4(v4);
}

- (void)performActionType:(unint64_t)a3 assetsByAssetCollection:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  sub_1B3C9C4C8();
  v5 = self;
  sub_1B384AF50();
}

- (void)performDuplicateActionWithAssetsByAssetCollection:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  v4 = sub_1B3C9C4C8();
  v5 = self;
  sub_1B384B09C(v4);
}

- (void)performTrashAction
{
  v2 = self;
  sub_1B384B418();
}

- (BOOL)canPerformTrashAction
{
  v2 = self;
  v3 = sub_1B384B610();

  return v3 & 1;
}

- (void)toggleSelectionMode
{
  v2 = self;
  sub_1B384B6D0();
}

- (BOOL)canPerformSimpleActionWithActionType:(unint64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1B384B93C(a3);

  return a3 & 1;
}

- (BOOL)performSimpleActionWithActionType:(unint64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1B384BB18(a3);

  return a3 & 1;
}

- (BOOL)performSimpleActionWithActionType:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1B384F798;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  v9 = sub_1B384BB60(a3, v6, v7);
  sub_1B36F9DA0(v6);

  return v9 & 1;
}

- (BOOL)presentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1B384BF70(v4);

  return self & 1;
}

- (void)jumpToNextAsset
{
  v2 = self;
  sub_1B384C178();
}

- (void)jumpToPreviousAsset
{
  v2 = self;
  sub_1B384C1F0();
}

- (void)dismissOneUp
{
  v2 = self;
  sub_1B384C3BC();
}

- (BOOL)shouldEnableSimpleActionWithActionType:(unint64_t)a3
{
  v4 = self;
  sub_1B384C46C(a3);
  LOBYTE(a3) = v5;

  return a3 & 1;
}

- (BOOL)shouldEnableLikeAction
{
  v2 = self;
  v3 = sub_1B384C734();

  return v3;
}

- (BOOL)shouldEnableToggleDetailsAction
{
  v2 = self;
  v3 = sub_1B384C754();

  return v3 & 1;
}

- (void)internalToggleGainMapImage
{
  v2 = self;
  sub_1B384C800();
}

- (id)undoManagerForAssetActionPerformer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B384C998();
  v7 = v6;

  return v7;
}

- (BOOL)assetActionPerformer:(id)a3 presentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  LOBYTE(a4) = sub_1B384CA54(v8, a4);

  return a4 & 1;
}

- (BOOL)assetActionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1B37568D0;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1B384CAC4(v12, a4, v8, v9);
  v14 = v13;
  sub_1B36F9DA0(v8);

  return v14 & 1;
}

- (id)assetActionPerformerHostViewControllerForPresentingToast:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B384CD1C();

  return v6;
}

- (double)assetActionPerformerBottomPaddingForPresentingToast:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B384CDE8();

  return v6;
}

- (BOOL)prefersAssetInclusionAfterRemovalForActionPerformer:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_1B384CEAC(v3);

  return v3 & 1;
}

- (BOOL)executeActionPerformer:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1B37F39C0;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  v10 = sub_1B384CF90(v8, v6, v7);
  sub_1B36F9DA0(v6);

  return v10 & 1;
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v4 = a3;
  v5 = self;
  OneUpDefaultActionsController.prepareForPopoverPresentation(_:)(v4);
}

@end