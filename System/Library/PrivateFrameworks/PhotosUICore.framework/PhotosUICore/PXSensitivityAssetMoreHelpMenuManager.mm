@interface PXSensitivityAssetMoreHelpMenuManager
- (PXSensitivityAssetMoreHelpMenuManager)init;
- (PXSensitivityAssetMoreHelpMenuManager)initWithAsset:(id)asset sharedAlbum:(id)album presentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (id)createMenuIfNeeded;
- (void)setDelegateHandler:(id)handler;
@end

@implementation PXSensitivityAssetMoreHelpMenuManager

- (UIViewController)presentingViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegateHandler:(id)handler
{
  v4 = *(self + OBJC_IVAR___PXSensitivityAssetMoreHelpMenuManager_delegateHandler);
  *(self + OBJC_IVAR___PXSensitivityAssetMoreHelpMenuManager_delegateHandler) = handler;
  handlerCopy = handler;
}

- (PXSensitivityAssetMoreHelpMenuManager)initWithAsset:(id)asset sharedAlbum:(id)album presentingViewController:(id)controller
{
  assetCopy = asset;
  albumCopy = album;
  controllerCopy = controller;
  v10 = sub_1A47E27B0(assetCopy, albumCopy);

  return v10;
}

- (id)createMenuIfNeeded
{
  selfCopy = self;
  PXSensitivityAssetMoreHelpMenuManager.createMenuIfNeeded()(v3);
  v5 = v4;

  return v5;
}

- (PXSensitivityAssetMoreHelpMenuManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end