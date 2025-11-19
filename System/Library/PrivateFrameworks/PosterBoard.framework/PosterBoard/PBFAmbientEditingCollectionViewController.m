@interface PBFAmbientEditingCollectionViewController
- (FBSDisplayConfiguration)displayConfiguration;
- (PBFAmbientEditingCollectionViewController)init;
- (PBFAmbientEditingCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (PBFAmbientEditingCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PBFAmbientEditingCollectionViewControllerDelegate)ambientEditingDelegate;
- (UIView)transitionOverlayView;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)init:(id)a3;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dismiss;
- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7;
- (void)editingSceneViewController:(id)a3 wantsRemotePresentationOfViewController:(id)a4 contentScreenRect:(CGRect)a5;
- (void)invalidate;
- (void)pageControlDidChangePage:(id)a3;
- (void)posterExtensionDataStore:(id)a3 didUpdateConfiguration:(id)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(void *)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setDisplayConfiguration:(id)a3;
- (void)setTransitionOverlayView:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PBFAmbientEditingCollectionViewController

- (void)scrollViewDidEndScrollingAnimation:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_21B6573E8();
}

- (FBSDisplayConfiguration)displayConfiguration
{
  v2 = *(self + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
  if (v2)
  {
    v3 = *(self + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = self;
    v7 = [v5 pui_sharedDisplayMonitor];
    v3 = [v7 mainConfiguration];

    v2 = 0;
  }

  v8 = v2;

  return v3;
}

- (void)setDisplayConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  AmbientEditingCollectionViewController.displayConfiguration.setter(v4);
}

- (PBFAmbientEditingCollectionViewController)init
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 dataStore];

  v4 = objc_allocWithZone(type metadata accessor for AmbientEditingCollectionViewController());
  v5 = sub_21B647E3C(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (id)init:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 dataStore];

  v8 = objc_allocWithZone(type metadata accessor for AmbientEditingCollectionViewController());
  v9 = sub_21B6484A0(v7, v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AmbientEditingCollectionViewController();
  v2 = v6.receiver;
  [(PBFAmbientEditingCollectionViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() secondarySystemBackgroundColor];
    [v4 setBackgroundColor_];

    sub_21B64AEC0();
    sub_21B64B098();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AmbientEditingCollectionViewController();
  v2 = v3.receiver;
  [(PBFAmbientEditingCollectionViewController *)&v3 viewWillLayoutSubviews];
  sub_21B64BBD4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  AmbientEditingCollectionViewController.viewDidLayoutSubviews()();
}

- (PBFAmbientEditingCollectionViewControllerDelegate)ambientEditingDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIView)transitionOverlayView
{
  v3 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTransitionOverlayView:(id)a3
{
  v5 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)dismiss
{
  v2 = self;
  AmbientEditingCollectionViewController.dismiss()();
}

- (void)pageControlDidChangePage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B6500A4([v4 currentPage], 1);
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
  swift_beginAccess();
  v5 = *(self + v4);
  if (v5 >> 62)
  {
    return sub_21B6C9454();
  }

  else
  {
    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  v10 = a3;
  v11 = self;
  v12 = AmbientEditingCollectionViewController.collectionView(_:cellForItemAt:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B6C8DA4();
  v13 = v12;
  sub_21B6C8994();
  v14 = a3;
  v15 = self;
  v16 = AmbientEditingCollectionViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)(v14, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  v10 = a3;
  v11 = self;
  AmbientEditingCollectionViewController.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_21B6C8A04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_21B6569E8(v13);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_21B6C8A04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_21B656B14(v13);

  (*(v9 + 8))(v11, v8);
}

- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = self;
  AmbientEditingCollectionViewController.editingSceneViewController(_:userDidDismissWith:updatedConfiguration:updatedConfiguredProperties:completion:)(v14, a4, a5, a6, sub_21B657924, v13);
}

- (void)editingSceneViewController:(id)a3 wantsRemotePresentationOfViewController:(id)a4 contentScreenRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = self;
  sub_21B64EDD8(v10, x, y, width, height);
}

- (void)scrollViewDidScroll:(id)a3
{
  if ((*(self + OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling) & 1) == 0)
  {
    v5 = a3;
    v6 = self;
    sub_21B64FDF8([v5 isScrollAnimating]);
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = a3;
  v8 = self;
  sub_21B657198(&a5->x);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_21B657618(a4);
}

- (void)posterExtensionDataStore:(id)a3 didUpdateConfiguration:(id)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = self;
  v12[4] = sub_21B657C84;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21B63863C;
  v12[3] = &block_descriptor_161;
  v7 = _Block_copy(v12);
  v8 = a4;
  v9 = self;
  v10 = v8;
  v11 = v9;

  BSDispatchMain();

  _Block_release(v7);
}

- (void)invalidate
{
  v3 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = self;
  [v4 removeFromSuperview];
  v6 = *(self + v3);
  *(self + v3) = 0;
}

- (PBFAmbientEditingCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PBFAmbientEditingCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end