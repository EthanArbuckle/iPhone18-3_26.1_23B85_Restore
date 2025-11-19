@interface WorkoutPlanEditScheduleViewController
- (CGSize)preferredContentSize;
- (_TtC9SeymourUI37WorkoutPlanEditScheduleViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI37WorkoutPlanEditScheduleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)onActionButtonTapped;
- (void)onCancelButtonTapped;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WorkoutPlanEditScheduleViewController

- (CGSize)preferredContentSize
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = sub_20C138104();
  if (v5 == sub_20C138104())
  {

    v6 = 764.0;
    v7 = 624.0;
  }

  else
  {
    v12.receiver = v4;
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

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  [(WorkoutPlanEditScheduleViewController *)&v5 setPreferredContentSize:width, height];
}

- (_TtC9SeymourUI37WorkoutPlanEditScheduleViewController)initWithCoder:(id)a3
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
  v2 = self;
  WorkoutPlanEditScheduleViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(WorkoutPlanEditScheduleViewController *)&v7 viewDidAppear:v3];
  type metadata accessor for WorkoutPlanEditSchedulePageDataProvider(0);
  sub_20B7C6530(&qword_27C7658A0, 255, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider);
  sub_20C138C54();
  sub_20B7C6530(&qword_27C7658A8, v5, type metadata accessor for WorkoutPlanEditScheduleViewController);
  sub_20B7C6530(&qword_27C7658B0, v6, type metadata accessor for WorkoutPlanEditScheduleViewController);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  WorkoutPlanEditScheduleViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(WorkoutPlanEditScheduleViewController *)&v7 viewDidDisappear:v3];
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
  v2 = self;
  sub_20B7C505C();
}

- (void)onCancelButtonTapped
{
  v2 = self;
  sub_20B7C55E4();
}

- (_TtC9SeymourUI37WorkoutPlanEditScheduleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end