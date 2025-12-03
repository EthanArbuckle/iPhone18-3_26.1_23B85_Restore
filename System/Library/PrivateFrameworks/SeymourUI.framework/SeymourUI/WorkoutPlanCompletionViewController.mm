@interface WorkoutPlanCompletionViewController
- (CGSize)preferredContentSize;
- (_TtC9SeymourUI35WorkoutPlanCompletionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doneButtonPressed;
- (void)repeatButtonPressed;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation WorkoutPlanCompletionViewController

- (CGSize)preferredContentSize
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v5 = sub_20C138104();
  if (v5 == sub_20C138104())
  {

    v6 = 550.0;
    v7 = 500.0;
  }

  else
  {
    v12.receiver = selfCopy;
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

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = ObjectType;
    [(WorkoutPlanCompletionViewController *)&v9 setPreferredContentSize:width, height];
  }
}

- (void)repeatButtonPressed
{
  selfCopy = self;
  sub_20C101558();
}

- (void)doneButtonPressed
{
  selfCopy = self;
  sub_20C1039D4();
}

- (void)viewDidLoad
{
  selfCopy = self;
  WorkoutPlanCompletionViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  WorkoutPlanCompletionViewController.viewDidAppear(_:)(appear);
}

- (_TtC9SeymourUI35WorkoutPlanCompletionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end