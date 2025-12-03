@interface PBFAmbientEditingCollectionViewController
- (FBSDisplayConfiguration)displayConfiguration;
- (PBFAmbientEditingCollectionViewController)init;
- (PBFAmbientEditingCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (PBFAmbientEditingCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PBFAmbientEditingCollectionViewControllerDelegate)ambientEditingDelegate;
- (UIView)transitionOverlayView;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)init:(id)init;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dismiss;
- (void)editingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion;
- (void)editingSceneViewController:(id)controller wantsRemotePresentationOfViewController:(id)viewController contentScreenRect:(CGRect)rect;
- (void)invalidate;
- (void)pageControlDidChangePage:(id)page;
- (void)posterExtensionDataStore:(id)store didUpdateConfiguration:(id)configuration;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(void *)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setDisplayConfiguration:(id)configuration;
- (void)setTransitionOverlayView:(id)view;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PBFAmbientEditingCollectionViewController

- (void)scrollViewDidEndScrollingAnimation:(void *)animation
{
  animationCopy = animation;
  selfCopy = self;
  sub_21B6573E8();
}

- (FBSDisplayConfiguration)displayConfiguration
{
  v2 = *(self + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
  if (v2)
  {
    mainConfiguration = *(self + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
  }

  else
  {
    v5 = objc_opt_self();
    selfCopy = self;
    pui_sharedDisplayMonitor = [v5 pui_sharedDisplayMonitor];
    mainConfiguration = [pui_sharedDisplayMonitor mainConfiguration];

    v2 = 0;
  }

  v8 = v2;

  return mainConfiguration;
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  AmbientEditingCollectionViewController.displayConfiguration.setter(configurationCopy);
}

- (PBFAmbientEditingCollectionViewController)init
{
  sharedInstance = [objc_opt_self() sharedInstance];
  dataStore = [sharedInstance dataStore];

  v4 = objc_allocWithZone(type metadata accessor for AmbientEditingCollectionViewController());
  v5 = sub_21B647E3C(dataStore);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (id)init:(id)init
{
  v4 = objc_opt_self();
  initCopy = init;
  sharedInstance = [v4 sharedInstance];
  dataStore = [sharedInstance dataStore];

  v8 = objc_allocWithZone(type metadata accessor for AmbientEditingCollectionViewController());
  v9 = sub_21B6484A0(dataStore, initCopy);
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
  view = [v2 view];
  if (view)
  {
    v4 = view;
    secondarySystemBackgroundColor = [objc_opt_self() secondarySystemBackgroundColor];
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
  selfCopy = self;
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

- (void)setTransitionOverlayView:(id)view
{
  v5 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = view;
  viewCopy = view;
}

- (void)dismiss
{
  selfCopy = self;
  AmbientEditingCollectionViewController.dismiss()();
}

- (void)pageControlDidChangePage:(id)page
{
  pageCopy = page;
  selfCopy = self;
  sub_21B6500A4([pageCopy currentPage], 1);
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  viewCopy = view;
  selfCopy = self;
  v12 = AmbientEditingCollectionViewController.collectionView(_:cellForItemAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B6C8DA4();
  v13 = v12;
  sub_21B6C8994();
  viewCopy = view;
  selfCopy = self;
  v16 = AmbientEditingCollectionViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)(viewCopy, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  viewCopy = view;
  selfCopy = self;
  AmbientEditingCollectionViewController.collectionView(_:didSelectItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_21B6C8A04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_21B6569E8(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_21B6C8A04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_21B656B14(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)editingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion
{
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  controllerCopy = controller;
  configurationCopy = configuration;
  propertiesCopy = properties;
  selfCopy = self;
  AmbientEditingCollectionViewController.editingSceneViewController(_:userDidDismissWith:updatedConfiguration:updatedConfiguredProperties:completion:)(controllerCopy, action, configuration, properties, sub_21B657924, v13);
}

- (void)editingSceneViewController:(id)controller wantsRemotePresentationOfViewController:(id)viewController contentScreenRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_21B64EDD8(viewControllerCopy, x, y, width, height);
}

- (void)scrollViewDidScroll:(id)scroll
{
  if ((*(self + OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling) & 1) == 0)
  {
    scrollCopy = scroll;
    selfCopy = self;
    sub_21B64FDF8([scrollCopy isScrollAnimating]);
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_21B657198(&offset->x);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_21B657618(decelerate);
}

- (void)posterExtensionDataStore:(id)store didUpdateConfiguration:(id)configuration
{
  v6 = swift_allocObject();
  *(v6 + 16) = configuration;
  *(v6 + 24) = self;
  v12[4] = sub_21B657C84;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21B63863C;
  v12[3] = &block_descriptor_161;
  v7 = _Block_copy(v12);
  configurationCopy = configuration;
  selfCopy = self;
  v10 = configurationCopy;
  v11 = selfCopy;

  BSDispatchMain();

  _Block_release(v7);
}

- (void)invalidate
{
  v3 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView;
  swift_beginAccess();
  v4 = *(self + v3);
  selfCopy = self;
  [v4 removeFromSuperview];
  v6 = *(self + v3);
  *(self + v3) = 0;
}

- (PBFAmbientEditingCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PBFAmbientEditingCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end