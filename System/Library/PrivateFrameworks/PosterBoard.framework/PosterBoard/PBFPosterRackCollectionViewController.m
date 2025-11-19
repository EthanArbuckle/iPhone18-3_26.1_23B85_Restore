@interface PBFPosterRackCollectionViewController
+ (id)simplifiedHomeScreenSwitcherFor:(id)a3 delegate:(id)a4 topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)a5;
+ (id)simplifiedHomeScreenSwitcherWithFilter:(id)a3 delegate:(id)a4 topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)a5;
+ (id)simplifiedHomeScreenSwitcherWithFilter:(id)a3 delegate:(id)a4 topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)a5 homeScreenPortalView:(id)a6;
- (BOOL)allowsEnteringFullscreenLayout;
- (BOOL)allowsLeavingHomeConfiguringLayout;
- (BOOL)enteredPosterRackFromHomeScreen;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)managesLiveWidgetHosting;
- (BOOL)shouldDisplayAddButton;
- (BOOL)shouldDisplayGalleryAffordance;
- (BOOL)shouldTransitionLayoutToConfiguringHomeForFirstPoster;
- (NSIndexPath)centeredPosterIndexPath;
- (PBFPosterPair)centeredPoster;
- (PBFPosterRackCollectionViewController)init;
- (PBFPosterRackCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (PBFPosterRackCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PBFPosterRackCollectionViewController)initWithPosterFilter:(id)a3;
- (PBFPosterRackCollectionViewControllerDelegate)posterRackDelegate;
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)a3;
- (_UIPortalView)homeScreenPortalView;
- (id)_indexPathOfReferenceItemForLayoutTransitionInCollectionView:(id)a3;
- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)galleryViewController:(id)a3 willUseAnimationController:(id)a4 forDismissingEditingViewControllerWithAction:(int64_t)a5;
- (id)posterExtensionDataStore;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)layoutOrientationProviderForView:(id)a3;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dateProvider:(id)a3 didUpdateDate:(id)a4;
- (void)didTapEmptyViewArea:(id)a3;
- (void)dismissPresentedViewControllersAnimated:(BOOL)a3 dismissHandler:(id)a4 completion:(id)a5;
- (void)editingIngestionManager:(id)a3 didAccept:(id)a4 userChoice:(int64_t)a5;
- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7;
- (void)focusSelectionViewController:(id)a3 hasSelected:(BOOL)a4 activity:(id)a5;
- (void)fontAndColorPickerViewController:(id)a3 didUpdateDesiredDetent:(double)a4;
- (void)galleryViewController:(id)a3 didSelectPreview:(id)a4 fromPreviewView:(id)a5;
- (void)homeScreenServiceLayoutDidChange:(id)a3;
- (void)pageControlDidChangePage:(id)a3;
- (void)posterSectionRemovalView:(id)a3 didRequestRemovalOfPosterWithID:(id)a4;
- (void)presentPosterGallery:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)reset:(id)a3;
- (void)scrollToFirstPoster:(BOOL)a3 completion:(id)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(void *)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setAllowsEnteringFullscreenLayout:(BOOL)a3;
- (void)setAllowsLeavingHomeConfiguringLayout:(BOOL)a3;
- (void)setEnteredPosterRackFromHomeScreen:(BOOL)a3;
- (void)setHomeScreenPortalView:(id)a3;
- (void)setLayoutMode:(unint64_t)a3;
- (void)setManagesLiveWidgetHosting:(BOOL)a3;
- (void)setPageControl:(id)a3;
- (void)setShouldDisplayAddButton:(BOOL)a3;
- (void)setShouldDisplayGalleryAffordance:(BOOL)a3;
- (void)setShouldTransitionLayoutToConfiguringHomeForFirstPoster:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PBFPosterRackCollectionViewController

- (void)scrollViewDidEndScrollingAnimation:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_21B69BCC0();
}

+ (id)simplifiedHomeScreenSwitcherFor:(id)a3 delegate:(id)a4 topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)a5
{
  size = a5->leadingTopButtonFrame.size;
  v17[0] = a5->leadingTopButtonFrame.origin;
  v17[1] = size;
  v8 = a5->trailingTopButtonFrame.size;
  v17[2] = a5->trailingTopButtonFrame.origin;
  v17[3] = v8;
  v9 = type metadata accessor for SinglePosterConfigurationFilter();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___PBFSinglePosterConfigurationFilter_configuration] = a3;
  v16.receiver = v10;
  v16.super_class = v9;
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v16, sel_init);
  sub_21B6142E4(v12, a4, v17, 0);
  v14 = v13;

  swift_unknownObjectRelease();

  return v14;
}

+ (id)simplifiedHomeScreenSwitcherWithFilter:(id)a3 delegate:(id)a4 topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)a5
{
  size = a5->leadingTopButtonFrame.size;
  v12[0] = a5->leadingTopButtonFrame.origin;
  v12[1] = size;
  v8 = a5->trailingTopButtonFrame.size;
  v12[2] = a5->trailingTopButtonFrame.origin;
  v12[3] = v8;
  swift_getObjCClassMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_21B614558(a3, a4, v12, 0);
  v10 = v9;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v10;
}

+ (id)simplifiedHomeScreenSwitcherWithFilter:(id)a3 delegate:(id)a4 topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)a5 homeScreenPortalView:(id)a6
{
  size = a5->leadingTopButtonFrame.size;
  v15[0] = a5->leadingTopButtonFrame.origin;
  v15[1] = size;
  v10 = a5->trailingTopButtonFrame.size;
  v15[2] = a5->trailingTopButtonFrame.origin;
  v15[3] = v10;
  swift_getObjCClassMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = a6;
  sub_21B614558(a3, a4, v15, a6);
  v13 = v12;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v13;
}

- (PBFPosterRackCollectionViewController)init
{
  if (qword_28120B5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_28120CDA8;
  v3 = objc_allocWithZone(type metadata accessor for PosterRackCollectionViewController());
  v4 = sub_21B698344(v2, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (PBFPosterRackCollectionViewController)initWithPosterFilter:(id)a3
{
  v3 = objc_allocWithZone(type metadata accessor for PosterStore());
  swift_getObjectType();
  v4 = swift_unknownObjectRetain_n();
  v5 = sub_21B629420(v4, v3);
  v6 = objc_allocWithZone(type metadata accessor for PosterRackCollectionViewController());
  v7 = sub_21B698344(v5, v6);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)viewDidLoad
{
  v2 = self;
  PosterRackCollectionViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  PosterRackCollectionViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  PosterRackCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:)(a3, a4);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  PosterRackCollectionViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(PBFPosterRackCollectionViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PosterRackCollectionViewController();
  v2 = v3.receiver;
  [(PBFPosterRackCollectionViewController *)&v3 viewWillLayoutSubviews];
  sub_21B68C888();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  PosterRackCollectionViewController.viewDidLayoutSubviews()();
}

- (void)dismissPresentedViewControllersAnimated:(BOOL)a3 dismissHandler:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_21B69ECCC;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      v12[2] = v10;
      v10 = sub_21B69F928;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = self;
  PosterRackCollectionViewController.dismissPresentedViewControllers(animated:dismissHandler:completion:)(a3, v8, v11, v10, v12);
  sub_21B52B410(v10);
  sub_21B52B410(v8);
}

- (PBFPosterRackCollectionViewControllerDelegate)posterRackDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)managesLiveWidgetHosting
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_managesLiveWidgetHosting;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setManagesLiveWidgetHosting:(BOOL)a3
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_managesLiveWidgetHosting;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldDisplayGalleryAffordance
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldDisplayGalleryAffordance:(BOOL)a3
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldDisplayAddButton
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayAddButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldDisplayAddButton:(BOOL)a3
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayAddButton;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsLeavingHomeConfiguringLayout
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsLeavingHomeConfiguringLayout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsLeavingHomeConfiguringLayout:(BOOL)a3
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsLeavingHomeConfiguringLayout;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsEnteringFullscreenLayout
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsEnteringFullscreenLayout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsEnteringFullscreenLayout:(BOOL)a3
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsEnteringFullscreenLayout;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)enteredPosterRackFromHomeScreen
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnteredPosterRackFromHomeScreen:(BOOL)a3
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (_UIPortalView)homeScreenPortalView
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHomeScreenPortalView:(id)a3
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (BOOL)shouldTransitionLayoutToConfiguringHomeForFirstPoster
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldTransitionLayoutToConfiguringHomeForFirstPoster;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldTransitionLayoutToConfiguringHomeForFirstPoster:(BOOL)a3
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldTransitionLayoutToConfiguringHomeForFirstPoster;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)setPageControl:(id)a3
{
  v4 = *(self + OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl);
  *(self + OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl) = a3;
  v3 = a3;
}

- (void)pageControlDidChangePage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B690260([v4 currentPage], 1, 0);
}

- (void)didTapEmptyViewArea:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B69B610();
}

- (void)setLayoutMode:(unint64_t)a3
{
  v4 = self;
  sub_21B67C6D4(a3);
}

- (void)reset:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_21B69F928;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(0, 0, 0, 0, 0);
  sub_21B69A120();
  if (v4)
  {
    v5();

    sub_21B52B410(v5);
  }

  else
  {
  }
}

- (void)scrollToFirstPoster:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v7 = self;
    sub_21B690260(0, a3, 0);
    sub_21B69ECE0();

    sub_21B52B410(sub_21B69ECE0);
  }

  else
  {
    v8 = self;
    sub_21B690260(0, a3, 0);
  }
}

- (id)posterExtensionDataStore
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 dataStore];

  return v3;
}

- (void)presentPosterGallery:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_21B69ECCC;
  v6[4] = v5;
  v7 = self;

  sub_21B67AF40(0, sub_21B69FA68, v6);
}

- (int64_t)layoutOrientationProviderForView:(id)a3
{
  v3 = self;
  if ([(PBFPosterRackCollectionViewController *)v3 bs_isAppearingOrAppeared])
  {
    v4 = [(UIViewController *)v3 pbf_layoutOrientation];
  }

  else
  {
    v5 = v3 + OBJC_IVAR___PBFPosterRackCollectionViewController_lastKnownLayoutOrientation;
    swift_beginAccess();
    if ((v5[8] & 1) == 0)
    {
      v6 = *v5;
      goto LABEL_7;
    }

    v8.receiver = v3;
    v8.super_class = type metadata accessor for PosterRackCollectionViewController();
    v4 = [(UIViewController *)&v8 pbf_layoutOrientation];
  }

  v6 = v4;
LABEL_7:

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = *(self + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
  v5 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 >> 62)
  {
    v7 = sub_21B6C9454();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
  swift_beginAccess();
  v9 = *(self + v8);
  result = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    __break(1u);
  }

  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_21B69B730(a4);

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B6C8994();
  v10 = a3;
  v11 = self;
  v12 = PosterRackCollectionViewController.collectionView(_:cellForItemAt:)(v10, v9);

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
  v16 = PosterRackCollectionViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)(v14, v11, v13, v10);

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
  PosterRackCollectionViewController.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  type metadata accessor for LockScreenPosterCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    v11 = a4;
    v12 = self;
    sub_21B667B2C();

LABEL_3:
    (*(v8 + 8))(v10, v7);
    return;
  }

  type metadata accessor for HomeScreenPosterCollectionViewCell();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    goto LABEL_3;
  }

  v14 = v13;
  v15 = a4;
  v16 = self;
  sub_21B69FEF0(v14);

  (*(v8 + 8))(v10, v7);
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
  sub_21B69B90C(v13);

  (*(v9 + 8))(v11, v8);
}

- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v9 = self;
    v10 = objc_allocWithZone(type metadata accessor for PosterRackCollectionView());
    v11 = v9;
    v12 = [v10 initWithFrame:a4 collectionViewLayout:{x, y, width, height}];
    *&v12[OBJC_IVAR____TtC11PosterBoard24PosterRackCollectionView_posterRackDelegate + 8] = &off_282CD2398;
    swift_unknownObjectWeakAssign();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (id)_indexPathOfReferenceItemForLayoutTransitionInCollectionView:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = a3;
  v9 = self;
  PosterRackCollectionViewController._indexPathOfReferenceItemForLayoutTransition(in:)(a3, v7);

  v10 = sub_21B6C8A04();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_21B6C8974();
    (*(v11 + 8))(v7, v10);
    v13 = v14;
  }

  return v13;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  PosterRackCollectionViewController.scrollViewDidScroll(_:)(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v8 = a3;
  v9 = self;
  sub_21B69BAB0(&a5->x, x);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_21B69BD38(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21B69BDB8(v7);
  v10 = v9;

  return v10 & 1;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 presentedViewController];
  sub_21B67F6DC(v5);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = [(PBFPosterRackCollectionViewController *)v4 presentedViewController];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    sub_21B694118(v6);
    v7 = v5;
  }

  else
  {
    v7 = v4;
    v4 = v8;
    v8 = v5;
  }
}

- (void)fontAndColorPickerViewController:(id)a3 didUpdateDesiredDetent:(double)a4
{
  v5 = a3;
  v6 = self;
  _s11PosterBoard0A28RackCollectionViewControllerC018fontAndColorPickereF0_22didUpdateDesiredDetentySo013PREditingFonthijeF0C_12CoreGraphics7CGFloatVtF_0();
}

- (void)posterSectionRemovalView:(id)a3 didRequestRemovalOfPosterWithID:(id)a4
{
  v6 = sub_21B6C8DA4();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_21B687C20(v9, v6, v8);
}

- (NSIndexPath)centeredPosterIndexPath
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  sub_21B68C3A0(v5);

  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_21B6C8974();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (PBFPosterPair)centeredPoster
{
  v2 = self;
  v3 = sub_21B68C674();

  return v3;
}

- (void)dateProvider:(id)a3 didUpdateDate:(id)a4
{
  v5 = sub_21B6C8854();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8814();
  v9 = self;
  sub_21B68D5D8(v8);

  (*(v6 + 8))(v8, v5);
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)a3
{
  v6 = self;
  [a4 addObserver_];
  v7 = v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonFrame;
  swift_beginAccess();
  v8 = v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonFrame;
  v12 = *(v7 + 1);
  v13 = *v7;
  swift_beginAccess();
  v10 = *(v8 + 1);
  v11 = *v8;

  retstr->leadingTopButtonFrame.origin = v13;
  retstr->leadingTopButtonFrame.size = v12;
  retstr->trailingTopButtonFrame.origin = v11;
  retstr->trailingTopButtonFrame.size = v10;
  return result;
}

- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  _Block_copy(v12);
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = self;
  sub_21B69C99C(v13, a4, a5, a6, v16, v12);
  _Block_release(v12);
  _Block_release(v12);
}

- (void)galleryViewController:(id)a3 didSelectPreview:(id)a4 fromPreviewView:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v8 = [objc_msgSend(a4 posterDescriptorLookupInfo)];
  swift_unknownObjectRelease();

  [v7 presentPreview:a4 withMode:2 fromView:v9];
  swift_unknownObjectRelease();
}

- (id)galleryViewController:(id)a3 willUseAnimationController:(id)a4 forDismissingEditingViewControllerWithAction:(int64_t)a5
{
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)editingIngestionManager:(id)a3 didAccept:(id)a4 userChoice:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  PosterRackCollectionViewController.editingIngestionManager(_:didAccept:userChoice:)(v8, v9, a5);
}

- (void)focusSelectionViewController:(id)a3 hasSelected:(BOOL)a4 activity:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = self;
  PosterRackCollectionViewController.focusSelectionViewController(_:hasSelected:activity:)(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (void)homeScreenServiceLayoutDidChange:(id)a3
{
  v7 = self;
  v3 = [(PBFPosterRackCollectionViewController *)v7 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    sub_21B67EC90(1, sub_21B69F9DC, v5);
  }
}

- (PBFPosterRackCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PBFPosterRackCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end