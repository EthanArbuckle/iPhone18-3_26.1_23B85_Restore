@interface PXSharedAlbumActionNavigationController
- (PXSharedAlbumActionNavigationController)initWithAssets:(id)a3 batchComment:(id)a4 perAssetCreationOptions:(id)a5;
- (PXSharedAlbumActionNavigationController)initWithAssets:(id)a3 batchComment:(id)a4 perAssetCreationOptions:(id)a5 selectedPostToAlbumUUID:(id)a6;
- (PXSharedAlbumActionNavigationController)initWithCoder:(id)a3;
- (PXSharedAlbumActionNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (PXSharedAlbumActionNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXSharedAlbumActionNavigationController)initWithRootViewController:(id)a3;
- (PXSharedAlbumActionNavigationControllerDelegate)actionControllerDelegate;
- (void)setAssets:(id)a3;
- (void)setViewModel:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PXSharedAlbumActionNavigationController

- (PXSharedAlbumActionNavigationControllerDelegate)actionControllerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setViewModel:(id)a3
{
  v4 = *(self + OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel);
  *(self + OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel) = a3;
  v3 = a3;
}

- (PXSharedAlbumActionNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1A524C674();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  sub_1A440E070(v5, v7, a4);
}

- (PXSharedAlbumActionNavigationController)initWithAssets:(id)a3 batchComment:(id)a4 perAssetCreationOptions:(id)a5
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v6 = sub_1A524CA34();
  sub_1A524C674();
  v8 = v7;
  if (a5)
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

- (PXSharedAlbumActionNavigationController)initWithAssets:(id)a3 batchComment:(id)a4 perAssetCreationOptions:(id)a5 selectedPostToAlbumUUID:(id)a6
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v8 = sub_1A524CA34();
  sub_1A524C674();
  v10 = v9;
  if (a5)
  {
    sub_1A3C52C70(0, &qword_1EB12B618);
    a5 = sub_1A524C3E4();
  }

  if (a6)
  {
    v11 = sub_1A524C674();
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  PXSharedAlbumActionNavigationController.init(assets:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:)(v8, v9, v10, a5, v11, v12);
}

- (PXSharedAlbumActionNavigationController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel) = 0;
  *(self + OBJC_IVAR___PXSharedAlbumActionNavigationController_didDismissSharedAlbumsActionView) = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  PXSharedAlbumActionNavigationController.viewWillAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = PXSharedAlbumActionNavigationController;
  v4 = self;
  [(PXSharedAlbumActionNavigationController *)&v7 viewWillDisappear:v3];
  if (![(PXSharedAlbumActionNavigationController *)v4 didDismissSharedAlbumsActionView:v7.receiver])
  {
    v5 = [(PXSharedAlbumActionNavigationController *)v4 viewModel];
    if (v5)
    {
      v6 = v5;
      (*((*MEMORY[0x1E69E7D40] & v5->super.isa) + 0x6E0))(0, 0);
    }

    [(PXSharedAlbumActionNavigationController *)v4 setViewModel:0];
  }
}

- (void)setAssets:(id)a3
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v4 = sub_1A524CA34();
  v5 = self;
  PXSharedAlbumActionNavigationController.setAssets(_:)(v4);
}

- (PXSharedAlbumActionNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PXSharedAlbumActionNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end