@interface CounterRotationViewController
- (_TtC19PreviewsOSSupportUI29CounterRotationViewController)initWithCoder:(id)coder;
- (_TtC19PreviewsOSSupportUI29CounterRotationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CounterRotationViewController

- (_TtC19PreviewsOSSupportUI29CounterRotationViewController)initWithCoder:(id)coder
{
  result = sub_25F52A620();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(CounterRotationViewController *)&v5 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view addSubview_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(CounterRotationViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC19PreviewsOSSupportUI29CounterRotationViewController_contentView];
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _s19PreviewsOSSupportUI29CounterRotationViewControllerC18viewWillTransition2to4withySo6CGSizeV_So06UIViewgJ11Coordinator_ptF_0(coordinator);
  swift_unknownObjectRelease();
}

- (_TtC19PreviewsOSSupportUI29CounterRotationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end