@interface WorkoutPlanScheduleViewController
- (_TtC9SeymourUI33WorkoutPlanScheduleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)backButtonPressed;
- (void)renamePlanTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation WorkoutPlanScheduleViewController

- (void)viewDidLoad
{
  v2 = self;
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(WorkoutPlanScheduleViewController *)&v5 viewWillAppear:v3];
  sub_20BC64D0C();
  sub_20B9AD530();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  WorkoutPlanScheduleViewController.viewWillDisappear(_:)(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  WorkoutPlanScheduleViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)backButtonPressed
{
  v4 = self;
  v2 = [(WorkoutPlanScheduleViewController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}

- (void)renamePlanTapped
{
  v2 = self;
  sub_20BCCFA60();
}

- (_TtC9SeymourUI33WorkoutPlanScheduleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end