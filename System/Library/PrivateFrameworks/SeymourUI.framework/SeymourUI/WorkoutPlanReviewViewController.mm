@interface WorkoutPlanReviewViewController
- (_TtC9SeymourUI31WorkoutPlanReviewViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI31WorkoutPlanReviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WorkoutPlanReviewViewController

- (_TtC9SeymourUI31WorkoutPlanReviewViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_visibility) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_resignActiveObserver) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  WorkoutPlanReviewViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(WorkoutPlanReviewViewController *)&v7 viewDidAppear:appearCopy];
  type metadata accessor for WorkoutPlanReviewPageDataProvider(0);
  sub_20B79AE9C(&qword_27C7651A8, 255, type metadata accessor for WorkoutPlanReviewPageDataProvider);
  sub_20C138C54();
  sub_20B79AE9C(&qword_27C7651B0, v5, type metadata accessor for WorkoutPlanReviewViewController);
  sub_20B79AE9C(&qword_27C7651B8, v6, type metadata accessor for WorkoutPlanReviewViewController);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  WorkoutPlanReviewViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(WorkoutPlanReviewViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_20B79AE9C(&qword_27C7651B0, v5, type metadata accessor for WorkoutPlanReviewViewController);
  sub_20B79AE9C(&qword_27C7651B8, v6, type metadata accessor for WorkoutPlanReviewViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(WorkoutPlanReviewViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider] + 32);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);

  sub_20B7983E8();
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(WorkoutPlanReviewViewController *)&v3 viewSafeAreaInsetsDidChange];
  sub_20B7983E8();
}

- (_TtC9SeymourUI31WorkoutPlanReviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end