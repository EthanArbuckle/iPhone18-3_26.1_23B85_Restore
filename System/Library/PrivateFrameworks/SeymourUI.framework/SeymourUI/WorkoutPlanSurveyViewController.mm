@interface WorkoutPlanSurveyViewController
- (CGSize)preferredContentSize;
- (_TtC9SeymourUI31WorkoutPlanSurveyViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI31WorkoutPlanSurveyViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)onCancelButtonTapped:(id)tapped;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WorkoutPlanSurveyViewController

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

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  [(WorkoutPlanSurveyViewController *)&v5 setPreferredContentSize:width, height];
}

- (_TtC9SeymourUI31WorkoutPlanSurveyViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  WorkoutPlanSurveyViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(WorkoutPlanSurveyViewController *)&v7 viewDidAppear:appearCopy];
  type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
  sub_20C08C510(&qword_27C7724F8, 255, type metadata accessor for WorkoutPlanSurveyPageDataProvider);
  sub_20C138C54();
  sub_20C08C510(&qword_27C772500, v5, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C08C510(&qword_27C772508, v6, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  WorkoutPlanSurveyViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(WorkoutPlanSurveyViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_20C08C510(&qword_27C772500, v5, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C08C510(&qword_27C772508, v6, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  WorkoutPlanSurveyViewController.viewDidLayoutSubviews()();
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  WorkoutPlanSurveyViewController.viewSafeAreaInsetsDidChange()();
}

- (void)onCancelButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_20C08C030();
}

- (_TtC9SeymourUI31WorkoutPlanSurveyViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end