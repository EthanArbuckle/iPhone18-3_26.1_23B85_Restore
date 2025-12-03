@interface PXSharedAlbumActionNavigationController
- (PXSharedAlbumActionNavigationController)initWithAssets:(id)assets batchComment:(id)comment perAssetCreationOptions:(id)options;
- (PXSharedAlbumActionNavigationController)initWithAssets:(id)assets batchComment:(id)comment perAssetCreationOptions:(id)options selectedPostToAlbumUUID:(id)d;
- (PXSharedAlbumActionNavigationController)initWithCoder:(id)coder;
- (PXSharedAlbumActionNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (PXSharedAlbumActionNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (PXSharedAlbumActionNavigationController)initWithRootViewController:(id)controller;
- (PXSharedAlbumActionNavigationControllerDelegate)actionControllerDelegate;
- (void)setAssets:(id)assets;
- (void)setViewModel:(id)model;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PXSharedAlbumActionNavigationController

- (PXSharedAlbumActionNavigationControllerDelegate)actionControllerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setViewModel:(id)model
{
  v4 = *(self + OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel);
  *(self + OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel) = model;
  modelCopy = model;
}

- (PXSharedAlbumActionNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1A524C674();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  sub_1A440E070(v5, v7, bundle);
}

- (PXSharedAlbumActionNavigationController)initWithAssets:(id)assets batchComment:(id)comment perAssetCreationOptions:(id)options
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v6 = sub_1A524CA34();
  sub_1A524C674();
  v8 = v7;
  if (options)
  {
    sub_1A3C52C70(0, &qword_1EB12B618);
    v9 = sub_1A524C3E4();
  }

  else
  {
    v9 = 0;
  }

  PXSharedAlbumActionNavigationController.init(assets:batchComment:perAssetCreationOptions:)(v6, v7, v8, v9);
}

- (PXSharedAlbumActionNavigationController)initWithAssets:(id)assets batchComment:(id)comment perAssetCreationOptions:(id)options selectedPostToAlbumUUID:(id)d
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v8 = sub_1A524CA34();
  sub_1A524C674();
  v10 = v9;
  if (options)
  {
    sub_1A3C52C70(0, &qword_1EB12B618);
    options = sub_1A524C3E4();
  }

  if (d)
  {
    v11 = sub_1A524C674();
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  PXSharedAlbumActionNavigationController.init(assets:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:)(v8, v9, v10, options, v11, v12);
}

- (PXSharedAlbumActionNavigationController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel) = 0;
  *(self + OBJC_IVAR___PXSharedAlbumActionNavigationController_didDismissSharedAlbumsActionView) = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  PXSharedAlbumActionNavigationController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = PXSharedAlbumActionNavigationController;
  selfCopy = self;
  [(PXSharedAlbumActionNavigationController *)&v7 viewWillDisappear:disappearCopy];
  if (![(PXSharedAlbumActionNavigationController *)selfCopy didDismissSharedAlbumsActionView:v7.receiver])
  {
    viewModel = [(PXSharedAlbumActionNavigationController *)selfCopy viewModel];
    if (viewModel)
    {
      v6 = viewModel;
      (*((*MEMORY[0x1E69E7D40] & viewModel->super.isa) + 0x6E0))(0, 0);
    }

    [(PXSharedAlbumActionNavigationController *)selfCopy setViewModel:0];
  }
}

- (void)setAssets:(id)assets
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v4 = sub_1A524CA34();
  selfCopy = self;
  PXSharedAlbumActionNavigationController.setAssets(_:)(v4);
}

- (PXSharedAlbumActionNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PXSharedAlbumActionNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end