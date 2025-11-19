@interface OneUpMockActionsController
- (BOOL)performSimpleActionWithActionType:(unint64_t)a3;
- (BOOL)performSimpleActionWithActionType:(unint64_t)a3 completionHandler:(id)a4;
- (PUOneUpActionsControllerDelegate)delegate;
- (PUOneUpActionsControllerPopoverHelper)popoverHelper;
- (void)dismissOneUp;
- (void)jumpToNextAsset;
- (void)jumpToPreviousAsset;
- (void)performActionType:(unint64_t)a3 assetsByAssetCollection:(id)a4;
- (void)performDuplicateActionWithAssetsByAssetCollection:(id)a3;
- (void)performShareAction;
- (void)performToggleDetailsAction;
- (void)performToggleFavoriteAction;
- (void)performToggleMuteAction;
- (void)performTrashAction;
- (void)performZoomAt:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPopoverHelper:(id)a3;
- (void)toggleChromeVisibility;
- (void)toggleImmersiveMode;
@end

@implementation OneUpMockActionsController

- (PUOneUpActionsControllerDelegate)delegate
{
  v2 = sub_1B37F1E1C();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B37F1E88(a3);
}

- (void)toggleChromeVisibility
{
  v2 = self;
  sub_1B37F1F10();
}

- (void)performTrashAction
{
  v2 = self;
  sub_1B37F206C();
}

- (PUOneUpActionsControllerPopoverHelper)popoverHelper
{
  v2 = sub_1B37F2284();

  return v2;
}

- (void)setPopoverHelper:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B37F2324(a3);
}

- (void)dismissOneUp
{
  v2 = self;
  sub_1B37F23F0();
}

- (void)performShareAction
{
  v2 = self;
  sub_1B37F2464();
}

- (void)performToggleFavoriteAction
{
  v2 = self;
  sub_1B37F24E0();
}

- (void)performToggleDetailsAction
{
  v2 = self;
  sub_1B37F255C();
}

- (void)performZoomAt:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B37F25CC();
  swift_unknownObjectRelease();
}

- (void)performToggleMuteAction
{
  v2 = self;
  sub_1B37F2680();
}

- (void)toggleImmersiveMode
{
  v2 = self;
  sub_1B37F26F0();
}

- (void)jumpToNextAsset
{
  v2 = self;
  sub_1B37F2760();
}

- (void)jumpToPreviousAsset
{
  v2 = self;
  sub_1B37F27D0();
}

- (void)performDuplicateActionWithAssetsByAssetCollection:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  sub_1B3C9C4C8();
  v4 = self;
  sub_1B37F2850();
}

- (void)performActionType:(unint64_t)a3 assetsByAssetCollection:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  sub_1B3C9C4C8();
  v6 = self;
  sub_1B37F28F4(a3);
}

- (BOOL)performSimpleActionWithActionType:(unint64_t)a3
{
  v4 = self;
  sub_1B37F29CC(a3);

  return 1;
}

- (BOOL)performSimpleActionWithActionType:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1B37F39C0;
  }

  v7 = self;
  sub_1B37F2A20(a3);
  sub_1B36F9DA0(v6);

  return 1;
}

@end