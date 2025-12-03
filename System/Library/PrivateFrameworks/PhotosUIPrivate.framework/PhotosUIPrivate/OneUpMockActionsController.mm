@interface OneUpMockActionsController
- (BOOL)performSimpleActionWithActionType:(unint64_t)type;
- (BOOL)performSimpleActionWithActionType:(unint64_t)type completionHandler:(id)handler;
- (PUOneUpActionsControllerDelegate)delegate;
- (PUOneUpActionsControllerPopoverHelper)popoverHelper;
- (void)dismissOneUp;
- (void)jumpToNextAsset;
- (void)jumpToPreviousAsset;
- (void)performActionType:(unint64_t)type assetsByAssetCollection:(id)collection;
- (void)performDuplicateActionWithAssetsByAssetCollection:(id)collection;
- (void)performShareAction;
- (void)performToggleDetailsAction;
- (void)performToggleFavoriteAction;
- (void)performToggleMuteAction;
- (void)performTrashAction;
- (void)performZoomAt:(id)at;
- (void)setDelegate:(id)delegate;
- (void)setPopoverHelper:(id)helper;
- (void)toggleChromeVisibility;
- (void)toggleImmersiveMode;
@end

@implementation OneUpMockActionsController

- (PUOneUpActionsControllerDelegate)delegate
{
  v2 = sub_1B37F1E1C();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B37F1E88(delegate);
}

- (void)toggleChromeVisibility
{
  selfCopy = self;
  sub_1B37F1F10();
}

- (void)performTrashAction
{
  selfCopy = self;
  sub_1B37F206C();
}

- (PUOneUpActionsControllerPopoverHelper)popoverHelper
{
  v2 = sub_1B37F2284();

  return v2;
}

- (void)setPopoverHelper:(id)helper
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B37F2324(helper);
}

- (void)dismissOneUp
{
  selfCopy = self;
  sub_1B37F23F0();
}

- (void)performShareAction
{
  selfCopy = self;
  sub_1B37F2464();
}

- (void)performToggleFavoriteAction
{
  selfCopy = self;
  sub_1B37F24E0();
}

- (void)performToggleDetailsAction
{
  selfCopy = self;
  sub_1B37F255C();
}

- (void)performZoomAt:(id)at
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B37F25CC();
  swift_unknownObjectRelease();
}

- (void)performToggleMuteAction
{
  selfCopy = self;
  sub_1B37F2680();
}

- (void)toggleImmersiveMode
{
  selfCopy = self;
  sub_1B37F26F0();
}

- (void)jumpToNextAsset
{
  selfCopy = self;
  sub_1B37F2760();
}

- (void)jumpToPreviousAsset
{
  selfCopy = self;
  sub_1B37F27D0();
}

- (void)performDuplicateActionWithAssetsByAssetCollection:(id)collection
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  sub_1B3C9C4C8();
  selfCopy = self;
  sub_1B37F2850();
}

- (void)performActionType:(unint64_t)type assetsByAssetCollection:(id)collection
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  sub_1B3C9C4C8();
  selfCopy = self;
  sub_1B37F28F4(type);
}

- (BOOL)performSimpleActionWithActionType:(unint64_t)type
{
  selfCopy = self;
  sub_1B37F29CC(type);

  return 1;
}

- (BOOL)performSimpleActionWithActionType:(unint64_t)type completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1B37F39C0;
  }

  selfCopy = self;
  sub_1B37F2A20(type);
  sub_1B36F9DA0(v6);

  return 1;
}

@end