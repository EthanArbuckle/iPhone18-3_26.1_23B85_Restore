@interface WorkoutPlanCompletionViewController
- (CGSize)preferredContentSize;
- (_TtC9SeymourUI35WorkoutPlanCompletionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doneButtonPressed;
- (void)repeatButtonPressed;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation WorkoutPlanCompletionViewController

- (CGSize)preferredContentSize
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = sub_20C138104();
  if (v5 == sub_20C138104())
  {

    v6 = 550.0;
    v7 = 500.0;
  }

  else
  {
    v12.receiver = v4;
    v12.super_class = ObjectType;
    [(WorkoutPlanCompletionViewController *)&v12 preferredContentSize];
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
  ObjectType = swift_getObjectType();
  v8 = self;
  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
  }

  else
  {
    v9.receiver = v8;
    v9.super_class = ObjectType;
    [(WorkoutPlanCompletionViewController *)&v9 setPreferredContentSize:width, height];
  }
}

- (void)repeatButtonPressed
{
  v2 = self;
  sub_20C101558();
}

- (void)doneButtonPressed
{
  v2 = self;
  sub_20C1039D4();
}

- (void)viewDidLoad
{
  v2 = self;
  WorkoutPlanCompletionViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  WorkoutPlanCompletionViewController.viewDidAppear(_:)(a3);
}

- (_TtC9SeymourUI35WorkoutPlanCompletionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end