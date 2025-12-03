@interface PBFPosterRackCollectionViewController
+ (id)simplifiedHomeScreenSwitcherFor:(id)for delegate:(id)delegate topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)layout;
+ (id)simplifiedHomeScreenSwitcherWithFilter:(id)filter delegate:(id)delegate topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)layout;
+ (id)simplifiedHomeScreenSwitcherWithFilter:(id)filter delegate:(id)delegate topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)layout homeScreenPortalView:(id)view;
- (BOOL)allowsEnteringFullscreenLayout;
- (BOOL)allowsLeavingHomeConfiguringLayout;
- (BOOL)enteredPosterRackFromHomeScreen;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)managesLiveWidgetHosting;
- (BOOL)shouldDisplayAddButton;
- (BOOL)shouldDisplayGalleryAffordance;
- (BOOL)shouldTransitionLayoutToConfiguringHomeForFirstPoster;
- (NSIndexPath)centeredPosterIndexPath;
- (PBFPosterPair)centeredPoster;
- (PBFPosterRackCollectionViewController)init;
- (PBFPosterRackCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (PBFPosterRackCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PBFPosterRackCollectionViewController)initWithPosterFilter:(id)filter;
- (PBFPosterRackCollectionViewControllerDelegate)posterRackDelegate;
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)controller;
- (_UIPortalView)homeScreenPortalView;
- (id)_indexPathOfReferenceItemForLayoutTransitionInCollectionView:(id)view;
- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)galleryViewController:(id)controller willUseAnimationController:(id)animationController forDismissingEditingViewControllerWithAction:(int64_t)action;
- (id)posterExtensionDataStore;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)layoutOrientationProviderForView:(id)view;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (unint64_t)supportedInterfaceOrientations;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dateProvider:(id)provider didUpdateDate:(id)date;
- (void)didTapEmptyViewArea:(id)area;
- (void)dismissPresentedViewControllersAnimated:(BOOL)animated dismissHandler:(id)handler completion:(id)completion;
- (void)editingIngestionManager:(id)manager didAccept:(id)accept userChoice:(int64_t)choice;
- (void)editingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion;
- (void)focusSelectionViewController:(id)controller hasSelected:(BOOL)selected activity:(id)activity;
- (void)fontAndColorPickerViewController:(id)controller didUpdateDesiredDetent:(double)detent;
- (void)galleryViewController:(id)controller didSelectPreview:(id)preview fromPreviewView:(id)view;
- (void)homeScreenServiceLayoutDidChange:(id)change;
- (void)pageControlDidChangePage:(id)page;
- (void)posterSectionRemovalView:(id)view didRequestRemovalOfPosterWithID:(id)d;
- (void)presentPosterGallery:(id)gallery;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)reset:(id)reset;
- (void)scrollToFirstPoster:(BOOL)poster completion:(id)completion;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(void *)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAllowsEnteringFullscreenLayout:(BOOL)layout;
- (void)setAllowsLeavingHomeConfiguringLayout:(BOOL)layout;
- (void)setEnteredPosterRackFromHomeScreen:(BOOL)screen;
- (void)setHomeScreenPortalView:(id)view;
- (void)setLayoutMode:(unint64_t)mode;
- (void)setManagesLiveWidgetHosting:(BOOL)hosting;
- (void)setPageControl:(id)control;
- (void)setShouldDisplayAddButton:(BOOL)button;
- (void)setShouldDisplayGalleryAffordance:(BOOL)affordance;
- (void)setShouldTransitionLayoutToConfiguringHomeForFirstPoster:(BOOL)poster;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PBFPosterRackCollectionViewController

- (void)scrollViewDidEndScrollingAnimation:(void *)animation
{
  animationCopy = animation;
  selfCopy = self;
  sub_21B69BCC0();
}

+ (id)simplifiedHomeScreenSwitcherFor:(id)for delegate:(id)delegate topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)layout
{
  size = layout->leadingTopButtonFrame.size;
  v17[0] = layout->leadingTopButtonFrame.origin;
  v17[1] = size;
  v8 = layout->trailingTopButtonFrame.size;
  v17[2] = layout->trailingTopButtonFrame.origin;
  v17[3] = v8;
  v9 = type metadata accessor for SinglePosterConfigurationFilter();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___PBFSinglePosterConfigurationFilter_configuration] = for;
  v16.receiver = v10;
  v16.super_class = v9;
  forCopy = for;
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v16, sel_init);
  sub_21B6142E4(v12, delegate, v17, 0);
  v14 = v13;

  swift_unknownObjectRelease();

  return v14;
}

+ (id)simplifiedHomeScreenSwitcherWithFilter:(id)filter delegate:(id)delegate topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)layout
{
  size = layout->leadingTopButtonFrame.size;
  v12[0] = layout->leadingTopButtonFrame.origin;
  v12[1] = size;
  v8 = layout->trailingTopButtonFrame.size;
  v12[2] = layout->trailingTopButtonFrame.origin;
  v12[3] = v8;
  swift_getObjCClassMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_21B614558(filter, delegate, v12, 0);
  v10 = v9;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v10;
}

+ (id)simplifiedHomeScreenSwitcherWithFilter:(id)filter delegate:(id)delegate topButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)layout homeScreenPortalView:(id)view
{
  size = layout->leadingTopButtonFrame.size;
  v15[0] = layout->leadingTopButtonFrame.origin;
  v15[1] = size;
  v10 = layout->trailingTopButtonFrame.size;
  v15[2] = layout->trailingTopButtonFrame.origin;
  v15[3] = v10;
  swift_getObjCClassMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  viewCopy = view;
  sub_21B614558(filter, delegate, v15, view);
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

- (PBFPosterRackCollectionViewController)initWithPosterFilter:(id)filter
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
  selfCopy = self;
  PosterRackCollectionViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  PosterRackCollectionViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  PosterRackCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:)(window, disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  PosterRackCollectionViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(PBFPosterRackCollectionViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
  selfCopy = self;
  PosterRackCollectionViewController.viewDidLayoutSubviews()();
}

- (void)dismissPresentedViewControllersAnimated:(BOOL)animated dismissHandler:(id)handler completion:(id)completion
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(completion);
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
  selfCopy = self;
  PosterRackCollectionViewController.dismissPresentedViewControllers(animated:dismissHandler:completion:)(animated, v8, v11, v10, v12);
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

- (void)setManagesLiveWidgetHosting:(BOOL)hosting
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_managesLiveWidgetHosting;
  swift_beginAccess();
  *(self + v5) = hosting;
}

- (BOOL)shouldDisplayGalleryAffordance
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldDisplayGalleryAffordance:(BOOL)affordance
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
  swift_beginAccess();
  *(self + v5) = affordance;
}

- (BOOL)shouldDisplayAddButton
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayAddButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldDisplayAddButton:(BOOL)button
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayAddButton;
  swift_beginAccess();
  *(self + v5) = button;
}

- (BOOL)allowsLeavingHomeConfiguringLayout
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsLeavingHomeConfiguringLayout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsLeavingHomeConfiguringLayout:(BOOL)layout
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsLeavingHomeConfiguringLayout;
  swift_beginAccess();
  *(self + v5) = layout;
}

- (BOOL)allowsEnteringFullscreenLayout
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsEnteringFullscreenLayout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsEnteringFullscreenLayout:(BOOL)layout
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsEnteringFullscreenLayout;
  swift_beginAccess();
  *(self + v5) = layout;
}

- (BOOL)enteredPosterRackFromHomeScreen
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnteredPosterRackFromHomeScreen:(BOOL)screen
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen;
  swift_beginAccess();
  *(self + v5) = screen;
}

- (_UIPortalView)homeScreenPortalView
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHomeScreenPortalView:(id)view
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = view;
  viewCopy = view;
}

- (BOOL)shouldTransitionLayoutToConfiguringHomeForFirstPoster
{
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldTransitionLayoutToConfiguringHomeForFirstPoster;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldTransitionLayoutToConfiguringHomeForFirstPoster:(BOOL)poster
{
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldTransitionLayoutToConfiguringHomeForFirstPoster;
  swift_beginAccess();
  *(self + v5) = poster;
}

- (void)setPageControl:(id)control
{
  v4 = *(self + OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl);
  *(self + OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl) = control;
  controlCopy = control;
}

- (void)pageControlDidChangePage:(id)page
{
  pageCopy = page;
  selfCopy = self;
  sub_21B690260([pageCopy currentPage], 1, 0);
}

- (void)didTapEmptyViewArea:(id)area
{
  areaCopy = area;
  selfCopy = self;
  sub_21B69B610();
}

- (void)setLayoutMode:(unint64_t)mode
{
  selfCopy = self;
  sub_21B67C6D4(mode);
}

- (void)reset:(id)reset
{
  v4 = _Block_copy(reset);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_21B69F928;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
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

- (void)scrollToFirstPoster:(BOOL)poster completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    selfCopy = self;
    sub_21B690260(0, poster, 0);
    sub_21B69ECE0();

    sub_21B52B410(sub_21B69ECE0);
  }

  else
  {
    selfCopy2 = self;
    sub_21B690260(0, poster, 0);
  }
}

- (id)posterExtensionDataStore
{
  sharedInstance = [objc_opt_self() sharedInstance];
  dataStore = [sharedInstance dataStore];

  return dataStore;
}

- (void)presentPosterGallery:(id)gallery
{
  v4 = _Block_copy(gallery);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = sub_21B69ECCC;
  v6[4] = v5;
  selfCopy = self;

  sub_21B67AF40(0, sub_21B69FA68, v6);
}

- (int64_t)layoutOrientationProviderForView:(id)view
{
  selfCopy = self;
  if ([(PBFPosterRackCollectionViewController *)selfCopy bs_isAppearingOrAppeared])
  {
    pbf_layoutOrientation = [(UIViewController *)selfCopy pbf_layoutOrientation];
  }

  else
  {
    v5 = selfCopy + OBJC_IVAR___PBFPosterRackCollectionViewController_lastKnownLayoutOrientation;
    swift_beginAccess();
    if ((v5[8] & 1) == 0)
    {
      v6 = *v5;
      goto LABEL_7;
    }

    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for PosterRackCollectionViewController();
    pbf_layoutOrientation = [(UIViewController *)&v8 pbf_layoutOrientation];
  }

  v6 = pbf_layoutOrientation;
LABEL_7:

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
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

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_21B69B730(section);

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B6C8994();
  viewCopy = view;
  selfCopy = self;
  v12 = PosterRackCollectionViewController.collectionView(_:cellForItemAt:)(viewCopy, v9);

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
  v16 = PosterRackCollectionViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)(viewCopy, v11, v13, v10);

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
  PosterRackCollectionViewController.collectionView(_:didSelectItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  type metadata accessor for LockScreenPosterCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    cellCopy = cell;
    selfCopy = self;
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
  cellCopy2 = cell;
  selfCopy2 = self;
  sub_21B69FEF0(v14);

  (*(v8 + 8))(v10, v7);
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
  sub_21B69B90C(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  if (layout)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    selfCopy = self;
    v10 = objc_allocWithZone(type metadata accessor for PosterRackCollectionView());
    v11 = selfCopy;
    v12 = [v10 initWithFrame:layout collectionViewLayout:{x, y, width, height}];
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

- (id)_indexPathOfReferenceItemForLayoutTransitionInCollectionView:(id)view
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  viewCopy = view;
  selfCopy = self;
  PosterRackCollectionViewController._indexPathOfReferenceItemForLayoutTransition(in:)(view, v7);

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

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  PosterRackCollectionViewController.scrollViewDidScroll(_:)(scrollCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  sub_21B69BAB0(&offset->x, x);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  selfCopy = self;
  sub_21B69BD38(decelerateCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  sub_21B69BDB8(touchCopy);
  v10 = v9;

  return v10 & 1;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  presentedViewController = [dismissCopy presentedViewController];
  sub_21B67F6DC(presentedViewController);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  presentedViewController = [(PBFPosterRackCollectionViewController *)dismissCopy presentedViewController];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    sub_21B694118(v6);
    v7 = presentedViewController;
  }

  else
  {
    v7 = dismissCopy;
    dismissCopy = selfCopy;
    selfCopy = presentedViewController;
  }
}

- (void)fontAndColorPickerViewController:(id)controller didUpdateDesiredDetent:(double)detent
{
  controllerCopy = controller;
  selfCopy = self;
  _s11PosterBoard0A28RackCollectionViewControllerC018fontAndColorPickereF0_22didUpdateDesiredDetentySo013PREditingFonthijeF0C_12CoreGraphics7CGFloatVtF_0();
}

- (void)posterSectionRemovalView:(id)view didRequestRemovalOfPosterWithID:(id)d
{
  v6 = sub_21B6C8DA4();
  v8 = v7;
  viewCopy = view;
  selfCopy = self;
  sub_21B687C20(viewCopy, v6, v8);
}

- (NSIndexPath)centeredPosterIndexPath
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_21B68C674();

  return v3;
}

- (void)dateProvider:(id)provider didUpdateDate:(id)date
{
  v5 = sub_21B6C8854();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8814();
  selfCopy = self;
  sub_21B68D5D8(v8);

  (*(v6 + 8))(v8, v5);
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)controller
{
  selfCopy = self;
  [a4 addObserver_];
  v7 = selfCopy + OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonFrame;
  swift_beginAccess();
  v8 = selfCopy + OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonFrame;
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

- (void)editingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion
{
  v12 = _Block_copy(completion);
  _Block_copy(v12);
  controllerCopy = controller;
  configurationCopy = configuration;
  propertiesCopy = properties;
  selfCopy = self;
  sub_21B69C99C(controllerCopy, action, configuration, properties, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);
}

- (void)galleryViewController:(id)controller didSelectPreview:(id)preview fromPreviewView:(id)view
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  viewCopy = view;
  v8 = [objc_msgSend(preview posterDescriptorLookupInfo)];
  swift_unknownObjectRelease();

  [controllerCopy presentPreview:preview withMode:2 fromView:viewCopy];
  swift_unknownObjectRelease();
}

- (id)galleryViewController:(id)controller willUseAnimationController:(id)animationController forDismissingEditingViewControllerWithAction:(int64_t)action
{
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)editingIngestionManager:(id)manager didAccept:(id)accept userChoice:(int64_t)choice
{
  managerCopy = manager;
  acceptCopy = accept;
  selfCopy = self;
  PosterRackCollectionViewController.editingIngestionManager(_:didAccept:userChoice:)(managerCopy, acceptCopy, choice);
}

- (void)focusSelectionViewController:(id)controller hasSelected:(BOOL)selected activity:(id)activity
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  PosterRackCollectionViewController.focusSelectionViewController(_:hasSelected:activity:)(controllerCopy, selected, activity);

  swift_unknownObjectRelease();
}

- (void)homeScreenServiceLayoutDidChange:(id)change
{
  selfCopy = self;
  collectionView = [(PBFPosterRackCollectionViewController *)selfCopy collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    sub_21B67EC90(1, sub_21B69F9DC, v5);
  }
}

- (PBFPosterRackCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PBFPosterRackCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end