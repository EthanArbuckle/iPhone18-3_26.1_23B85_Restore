@interface WorkoutPlanScheduleViewController
- (_TtC9SeymourUI33WorkoutPlanScheduleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)backButtonPressed;
- (void)renamePlanTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation WorkoutPlanScheduleViewController

- (void)viewDidLoad
{
  selfCopy = self;
  WorkoutPlanScheduleViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v2 = v9.receiver;
  [(WorkoutPlanScheduleViewController *)&v9 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_impressionsTracker), *(v3 + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_impressionsTracker + 24));
  v4 = *(v3 + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView);
  swift_unknownObjectRetain();
  [v4 bounds];
  sub_20B9D8614(v5, v6, v7, v8);

  swift_unknownObjectRelease();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(WorkoutPlanScheduleViewController *)&v5 viewWillAppear:appearCopy];
  sub_20BC64D0C();
  sub_20B9AD530();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  WorkoutPlanScheduleViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  WorkoutPlanScheduleViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)backButtonPressed
{
  selfCopy = self;
  navigationController = [(WorkoutPlanScheduleViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
  }
}

- (void)renamePlanTapped
{
  selfCopy = self;
  sub_20BCCFA60();
}

- (_TtC9SeymourUI33WorkoutPlanScheduleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end