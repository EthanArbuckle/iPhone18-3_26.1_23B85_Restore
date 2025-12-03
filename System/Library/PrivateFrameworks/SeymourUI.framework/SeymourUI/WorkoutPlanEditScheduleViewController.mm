@interface WorkoutPlanEditScheduleViewController
- (CGSize)preferredContentSize;
- (_TtC9SeymourUI37WorkoutPlanEditScheduleViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI37WorkoutPlanEditScheduleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)onActionButtonTapped;
- (void)onCancelButtonTapped;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WorkoutPlanEditScheduleViewController

- (CGSize)preferredContentSize
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v5 = sub_20C138104();
  if (v5 == sub_20C138104())
  {

    v6 = 764.0;
    v7 = 624.0;
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = ObjectType;
    [(WorkoutPlanEditScheduleViewController *)&v12 preferredContentSize];
    v9 = v8;
    v11 = v10;

    v7 = v9;
    v6 = v11;
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  [(WorkoutPlanEditScheduleViewController *)&v5 setPreferredContentSize:width, height];
}

- (_TtC9SeymourUI37WorkoutPlanEditScheduleViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_resignActiveObserver) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_visibility) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_primaryActionButton) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  WorkoutPlanEditScheduleViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(WorkoutPlanEditScheduleViewController *)&v7 viewDidAppear:appearCopy];
  type metadata accessor for WorkoutPlanEditSchedulePageDataProvider(0);
  sub_20B7C6530(&qword_27C7658A0, 255, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider);
  sub_20C138C54();
  sub_20B7C6530(&qword_27C7658A8, v5, type metadata accessor for WorkoutPlanEditScheduleViewController);
  sub_20B7C6530(&qword_27C7658B0, v6, type metadata accessor for WorkoutPlanEditScheduleViewController);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  WorkoutPlanEditScheduleViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(WorkoutPlanEditScheduleViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_20B7C6530(&qword_27C7658A8, v5, type metadata accessor for WorkoutPlanEditScheduleViewController);
  sub_20B7C6530(&qword_27C7658B0, v6, type metadata accessor for WorkoutPlanEditScheduleViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(WorkoutPlanEditScheduleViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider] + 48);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);

  sub_20B798540();
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(WorkoutPlanEditScheduleViewController *)&v3 viewSafeAreaInsetsDidChange];
  sub_20B798540();
}

- (void)onActionButtonTapped
{
  selfCopy = self;
  sub_20B7C505C();
}

- (void)onCancelButtonTapped
{
  selfCopy = self;
  sub_20B7C55E4();
}

- (_TtC9SeymourUI37WorkoutPlanEditScheduleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end