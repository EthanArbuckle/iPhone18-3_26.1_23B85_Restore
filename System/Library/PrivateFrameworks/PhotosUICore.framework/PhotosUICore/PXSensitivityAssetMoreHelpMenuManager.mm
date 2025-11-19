@interface PXSensitivityAssetMoreHelpMenuManager
- (PXSensitivityAssetMoreHelpMenuManager)init;
- (PXSensitivityAssetMoreHelpMenuManager)initWithAsset:(id)a3 sharedAlbum:(id)a4 presentingViewController:(id)a5;
- (UIViewController)presentingViewController;
- (id)createMenuIfNeeded;
- (void)setDelegateHandler:(id)a3;
@end

@implementation PXSensitivityAssetMoreHelpMenuManager

- (UIViewController)presentingViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegateHandler:(id)a3
{
  v4 = *(self + OBJC_IVAR___PXSensitivityAssetMoreHelpMenuManager_delegateHandler);
  *(self + OBJC_IVAR___PXSensitivityAssetMoreHelpMenuManager_delegateHandler) = a3;
  v3 = a3;
}

- (PXSensitivityAssetMoreHelpMenuManager)initWithAsset:(id)a3 sharedAlbum:(id)a4 presentingViewController:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_1A47E27B0(v7, v8);

  return v10;
}

- (id)createMenuIfNeeded
{
  v2 = self;
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