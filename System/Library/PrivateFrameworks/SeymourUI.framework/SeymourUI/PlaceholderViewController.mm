@interface PlaceholderViewController
- (_TtC9SeymourUI25PlaceholderViewController)init;
- (_TtC9SeymourUI25PlaceholderViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI25PlaceholderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation PlaceholderViewController

- (_TtC9SeymourUI25PlaceholderViewController)init
{
  v3 = OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator;
  v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.isa + v3) = v4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaceholderViewController();
  v5 = [(PlaceholderViewController *)&v7 initWithNibName:0 bundle:0];
  [*(&v5->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator) setHidesWhenStopped_];
  return v5;
}

- (_TtC9SeymourUI25PlaceholderViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator;
  v5 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.isa + v4) = v5;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20BFD4590();
}

- (_TtC9SeymourUI25PlaceholderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end