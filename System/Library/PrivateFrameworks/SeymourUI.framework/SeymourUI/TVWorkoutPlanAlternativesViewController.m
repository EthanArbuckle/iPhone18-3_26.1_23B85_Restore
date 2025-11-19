@interface TVWorkoutPlanAlternativesViewController
- (_TtC9SeymourUI39TVWorkoutPlanAlternativesViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI39TVWorkoutPlanAlternativesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TVWorkoutPlanAlternativesViewController

- (_TtC9SeymourUI39TVWorkoutPlanAlternativesViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_visibility) = 1;
  v4 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_lastFocusedIndexPath;
  v5 = sub_20C133244();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_settlingTimer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_resignActiveObserver) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  TVWorkoutPlanAlternativesViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  TVWorkoutPlanAlternativesViewController.viewDidLayoutSubviews()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TVWorkoutPlanAlternativesViewController *)&v5 viewDidAppear:v3];
  type metadata accessor for TVWorkoutPlanAlternativesPageDataProvider();
  sub_20B8001B8(&qword_27C766058, type metadata accessor for TVWorkoutPlanAlternativesPageDataProvider);
  sub_20C138C54();
  sub_20B8001B8(&qword_27C766060, type metadata accessor for TVWorkoutPlanAlternativesViewController);
  sub_20B8001B8(&unk_27C766068, type metadata accessor for TVWorkoutPlanAlternativesViewController);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  TVWorkoutPlanAlternativesViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TVWorkoutPlanAlternativesViewController *)&v5 viewDidDisappear:v3];
  sub_20B8001B8(&qword_27C766060, type metadata accessor for TVWorkoutPlanAlternativesViewController);
  sub_20B8001B8(&unk_27C766068, type metadata accessor for TVWorkoutPlanAlternativesViewController);
  sub_20C139374();
}

- (_TtC9SeymourUI39TVWorkoutPlanAlternativesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end