@interface AccountViewController
- (CGSize)preferredContentSize;
- (_TtC9SeymourUI21AccountViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI21AccountViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AccountViewController

- (CGSize)preferredContentSize
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = sub_20C138104();
  if (v5 == sub_20C138104())
  {

    v6 = 584.0;
    v7 = 580.0;
  }

  else
  {
    v12.receiver = v4;
    v12.super_class = ObjectType;
    [(AccountViewController *)&v12 preferredContentSize];
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
  [(AccountViewController *)&v5 setPreferredContentSize:width, height];
}

- (_TtC9SeymourUI21AccountViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21AccountViewController_visibility) = 1;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  AccountViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  AccountViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(AccountViewController *)&v5 viewDidAppear:v3];
  sub_20BB696C8();
  sub_20C138C54();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  AccountViewController.viewWillDisappear(_:)(a3);
}

- (_TtC9SeymourUI21AccountViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end