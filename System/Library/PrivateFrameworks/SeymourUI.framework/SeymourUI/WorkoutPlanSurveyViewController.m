@interface WorkoutPlanSurveyViewController
- (CGSize)preferredContentSize;
- (_TtC9SeymourUI31WorkoutPlanSurveyViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI31WorkoutPlanSurveyViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)onCancelButtonTapped:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WorkoutPlanSurveyViewController

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
    [(WorkoutPlanSurveyViewController *)&v12 preferredContentSize];
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
  [(WorkoutPlanSurveyViewController *)&v5 setPreferredContentSize:width, height];
}

- (_TtC9SeymourUI31WorkoutPlanSurveyViewController)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = -4;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_isTransitioningContentInset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_visibility) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_resignActiveObserver) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  WorkoutPlanSurveyViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(WorkoutPlanSurveyViewController *)&v7 viewDidAppear:v3];
  type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
  sub_20C08C510(&qword_27C7724F8, 255, type metadata accessor for WorkoutPlanSurveyPageDataProvider);
  sub_20C138C54();
  sub_20C08C510(&qword_27C772500, v5, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C08C510(&qword_27C772508, v6, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  WorkoutPlanSurveyViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(WorkoutPlanSurveyViewController *)&v7 viewDidDisappear:v3];
  sub_20C08C510(&qword_27C772500, v5, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C08C510(&qword_27C772508, v6, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  WorkoutPlanSurveyViewController.viewDidLayoutSubviews()();
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  WorkoutPlanSurveyViewController.viewSafeAreaInsetsDidChange()();
}

- (void)onCancelButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20C08C030();
}

- (_TtC9SeymourUI31WorkoutPlanSurveyViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end