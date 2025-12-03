@interface AccountViewController
- (CGSize)preferredContentSize;
- (_TtC9SeymourUI21AccountViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI21AccountViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AccountViewController

- (CGSize)preferredContentSize
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v5 = sub_20C138104();
  if (v5 == sub_20C138104())
  {

    v6 = 584.0;
    v7 = 580.0;
  }

  else
  {
    v12.receiver = selfCopy;
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

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  [(AccountViewController *)&v5 setPreferredContentSize:width, height];
}

- (_TtC9SeymourUI21AccountViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21AccountViewController_visibility) = 1;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  AccountViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  AccountViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(AccountViewController *)&v5 viewDidAppear:appearCopy];
  sub_20BB696C8();
  sub_20C138C54();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  AccountViewController.viewWillDisappear(_:)(disappear);
}

- (_TtC9SeymourUI21AccountViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end