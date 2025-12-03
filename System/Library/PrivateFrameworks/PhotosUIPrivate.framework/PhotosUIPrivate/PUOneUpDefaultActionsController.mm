@interface PUOneUpDefaultActionsController
- (BOOL)assetActionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)assetActionPerformer:(id)performer presentViewController:(id)controller;
- (BOOL)canPerformSimpleActionWithActionType:(unint64_t)type;
- (BOOL)canPerformTrashAction;
- (BOOL)executeActionPerformer:(id)performer completionHandler:(id)handler;
- (BOOL)performSimpleActionWithActionType:(unint64_t)type;
- (BOOL)performSimpleActionWithActionType:(unint64_t)type completionHandler:(id)handler;
- (BOOL)prefersAssetInclusionAfterRemovalForActionPerformer:(id)performer;
- (BOOL)presentViewController:(id)controller;
- (BOOL)shouldEnableLikeAction;
- (BOOL)shouldEnableSimpleActionWithActionType:(unint64_t)type;
- (BOOL)shouldEnableToggleDetailsAction;
- (PUOneUpActionsControllerDelegate)delegate;
- (PUOneUpActionsControllerPopoverHelper)popoverHelper;
- (PUOneUpDefaultActionsController)initWithBrowsingSession:(id)session viewController:(id)controller;
- (PUOneUpDefaultActionsControllerActionManagerSource)assetActionManagerSource;
- (double)assetActionPerformerBottomPaddingForPresentingToast:(id)toast;
- (id)assetActionPerformerHostViewControllerForPresentingToast:(id)toast;
- (id)undoManagerForAssetActionPerformer:(id)performer;
- (void)dismissOneUp;
- (void)internalToggleGainMapImage;
- (void)jumpToNextAsset;
- (void)jumpToPreviousAsset;
- (void)performActionType:(unint64_t)type assetsByAssetCollection:(id)collection;
- (void)performCancelEditingAction;
- (void)performDoneEditingAction;
- (void)performDuplicateActionWithAssetsByAssetCollection:(id)collection;
- (void)performEditAudioMixModeActionWithAudioMixMode:(id)mode;
- (void)performEditPlaybackRateActionWithPlaybackRate:(float)rate;
- (void)performLikeActionWithLike:(BOOL)like;
- (void)performMergeDuplicatesAction;
- (void)performMuteActionWithShouldMute:(BOOL)mute;
- (void)performPendingEditsActionWithRequest:(id)request;
- (void)performPlayPauseActionWithDesiredState:(int64_t)state;
- (void)performQuickCropActionWithContext:(id)context;
- (void)performRestoreAction;
- (void)performShareAction;
- (void)performShowInLibraryAction;
- (void)performSyndicationSaveAction;
- (void)performToggleCommentsActionAndBeginEditing:(BOOL)editing;
- (void)performToggleDetailsAction;
- (void)performToggleFavoriteAction;
- (void)performToggleMuteAction;
- (void)performToggleSpatialAction;
- (void)performTrashAction;
- (void)performZoomAt:(id)at;
- (void)preheatShareAction;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)setAssetActionManagerSource:(id)source;
- (void)setDelegate:(id)delegate;
- (void)setPopoverHelper:(id)helper;
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

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B38473B0();
}

- (PUOneUpDefaultActionsControllerActionManagerSource)assetActionManagerSource
{
  v2 = sub_1B384748C();

  return v2;
}

- (void)setAssetActionManagerSource:(id)source
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B38474F8();
}

- (PUOneUpActionsControllerPopoverHelper)popoverHelper
{
  v2 = sub_1B38475D4();

  return v2;
}

- (void)setPopoverHelper:(id)helper
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3847674();
}

- (PUOneUpDefaultActionsController)initWithBrowsingSession:(id)session viewController:(id)controller
{
  sessionCopy = session;
  controllerCopy = controller;
  return OneUpDefaultActionsController.init(browsingSession:viewController:)();
}

- (void)performShareAction
{
  selfCopy = self;
  sub_1B384792C();
}

- (void)preheatShareAction
{
  selfCopy = self;
  sub_1B3847CC0();
}

- (void)performLikeActionWithLike:(BOOL)like
{
  selfCopy = self;
  sub_1B3847F04(like);
}

- (void)performRestoreAction
{
  selfCopy = self;
  sub_1B38480E0();
}

- (void)performMuteActionWithShouldMute:(BOOL)mute
{
  selfCopy = self;
  sub_1B38483E8(mute);
}

- (void)performToggleFavoriteAction
{
  selfCopy = self;
  sub_1B38484B4();
}

- (void)performSyndicationSaveAction
{
  selfCopy = self;
  sub_1B38488C4();
}

- (void)togglePlayback
{
  selfCopy = self;
  sub_1B3848D88();
}

- (void)toggleChromeVisibility
{
  selfCopy = self;
  sub_1B3848EB4();
}

- (void)toggleImmersiveMode
{
  selfCopy = self;
  sub_1B3848F08();
}

- (void)performPlayPauseActionWithDesiredState:(int64_t)state
{
  selfCopy = self;
  sub_1B384902C(state);
}

- (void)performToggleSpatialAction
{
  selfCopy = self;
  sub_1B38494C8();
}

- (void)performToggleMuteAction
{
  selfCopy = self;
  sub_1B3849654();
}

- (void)performToggleDetailsAction
{
  selfCopy = self;
  sub_1B3849714();
}

- (void)performZoomAt:(id)at
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B38497CC(at);
  swift_unknownObjectRelease();
}

- (void)performToggleCommentsActionAndBeginEditing:(BOOL)editing
{
  selfCopy = self;
  sub_1B38498A0(editing);
}

- (void)performShowInLibraryAction
{
  selfCopy = self;
  sub_1B3849BBC();
}

- (void)performDoneEditingAction
{
  selfCopy = self;
  sub_1B384A118();
}

- (void)performCancelEditingAction
{
  selfCopy = self;
  sub_1B384A188();
}

- (void)performMergeDuplicatesAction
{
  selfCopy = self;
  sub_1B384A2EC();
}

- (void)performQuickCropActionWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1B384A4B8(contextCopy);
}

- (void)performEditPlaybackRateActionWithPlaybackRate:(float)rate
{
  selfCopy = self;
  sub_1B384A538(rate);
}

- (void)performEditAudioMixModeActionWithAudioMixMode:(id)mode
{
  modeCopy = mode;
  selfCopy = self;
  sub_1B384A7F4(modeCopy);
}

- (void)performPendingEditsActionWithRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_1B384AAC4(requestCopy);
}

- (void)performActionType:(unint64_t)type assetsByAssetCollection:(id)collection
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  sub_1B3C9C4C8();
  selfCopy = self;
  sub_1B384AF50();
}

- (void)performDuplicateActionWithAssetsByAssetCollection:(id)collection
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  v4 = sub_1B3C9C4C8();
  selfCopy = self;
  sub_1B384B09C(v4);
}

- (void)performTrashAction
{
  selfCopy = self;
  sub_1B384B418();
}

- (BOOL)canPerformTrashAction
{
  selfCopy = self;
  v3 = sub_1B384B610();

  return v3 & 1;
}

- (void)toggleSelectionMode
{
  selfCopy = self;
  sub_1B384B6D0();
}

- (BOOL)canPerformSimpleActionWithActionType:(unint64_t)type
{
  selfCopy = self;
  LOBYTE(type) = sub_1B384B93C(type);

  return type & 1;
}

- (BOOL)performSimpleActionWithActionType:(unint64_t)type
{
  selfCopy = self;
  LOBYTE(type) = sub_1B384BB18(type);

  return type & 1;
}

- (BOOL)performSimpleActionWithActionType:(unint64_t)type completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
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

  selfCopy = self;
  v9 = sub_1B384BB60(type, v6, v7);
  sub_1B36F9DA0(v6);

  return v9 & 1;
}

- (BOOL)presentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  LOBYTE(self) = sub_1B384BF70(controllerCopy);

  return self & 1;
}

- (void)jumpToNextAsset
{
  selfCopy = self;
  sub_1B384C178();
}

- (void)jumpToPreviousAsset
{
  selfCopy = self;
  sub_1B384C1F0();
}

- (void)dismissOneUp
{
  selfCopy = self;
  sub_1B384C3BC();
}

- (BOOL)shouldEnableSimpleActionWithActionType:(unint64_t)type
{
  selfCopy = self;
  sub_1B384C46C(type);
  LOBYTE(type) = v5;

  return type & 1;
}

- (BOOL)shouldEnableLikeAction
{
  selfCopy = self;
  v3 = sub_1B384C734();

  return v3;
}

- (BOOL)shouldEnableToggleDetailsAction
{
  selfCopy = self;
  v3 = sub_1B384C754();

  return v3 & 1;
}

- (void)internalToggleGainMapImage
{
  selfCopy = self;
  sub_1B384C800();
}

- (id)undoManagerForAssetActionPerformer:(id)performer
{
  performerCopy = performer;
  selfCopy = self;
  sub_1B384C998();
  v7 = v6;

  return v7;
}

- (BOOL)assetActionPerformer:(id)performer presentViewController:(id)controller
{
  performerCopy = performer;
  controllerCopy = controller;
  selfCopy = self;
  LOBYTE(controller) = sub_1B384CA54(selfCopy, controller);

  return controller & 1;
}

- (BOOL)assetActionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
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

  performerCopy = performer;
  controllerCopy = controller;
  selfCopy = self;
  sub_1B384CAC4(selfCopy, controller, v8, v9);
  v14 = v13;
  sub_1B36F9DA0(v8);

  return v14 & 1;
}

- (id)assetActionPerformerHostViewControllerForPresentingToast:(id)toast
{
  toastCopy = toast;
  selfCopy = self;
  v6 = sub_1B384CD1C();

  return v6;
}

- (double)assetActionPerformerBottomPaddingForPresentingToast:(id)toast
{
  toastCopy = toast;
  selfCopy = self;
  v6 = sub_1B384CDE8();

  return v6;
}

- (BOOL)prefersAssetInclusionAfterRemovalForActionPerformer:(id)performer
{
  performerCopy = performer;
  performerCopy2 = performer;
  selfCopy = self;
  LOBYTE(performerCopy) = sub_1B384CEAC(performerCopy);

  return performerCopy & 1;
}

- (BOOL)executeActionPerformer:(id)performer completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
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

  performerCopy = performer;
  selfCopy = self;
  v10 = sub_1B384CF90(performerCopy, v6, v7);
  sub_1B36F9DA0(v6);

  return v10 & 1;
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  selfCopy = self;
  OneUpDefaultActionsController.prepareForPopoverPresentation(_:)(presentationCopy);
}

@end