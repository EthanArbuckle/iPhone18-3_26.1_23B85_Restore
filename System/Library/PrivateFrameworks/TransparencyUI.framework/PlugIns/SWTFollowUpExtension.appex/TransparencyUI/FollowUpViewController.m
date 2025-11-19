@interface FollowUpViewController
- (_TtC20SWTFollowUpExtension22FollowUpViewController)init;
- (_TtC20SWTFollowUpExtension22FollowUpViewController)initWithCoder:(id)a3;
- (_TtC20SWTFollowUpExtension22FollowUpViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
- (void)viewDidLoad;
@end

@implementation FollowUpViewController

- (_TtC20SWTFollowUpExtension22FollowUpViewController)init
{
  v3 = sub_100003914();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003904();
  (*(v4 + 32))(self + OBJC_IVAR____TtC20SWTFollowUpExtension22FollowUpViewController_log, v7, v3);
  v8 = type metadata accessor for FollowUpViewController();
  v10.receiver = self;
  v10.super_class = v8;
  return [(FollowUpViewController *)&v10 initWithNibName:0 bundle:0];
}

- (_TtC20SWTFollowUpExtension22FollowUpViewController)initWithCoder:(id)a3
{
  result = sub_100003A04();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for FollowUpViewController();
  [(FollowUpViewController *)&v2 viewDidLoad];
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1000037AC;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a4;
  v12 = self;
  FollowUpViewController.processFollowUpItem(_:selectedAction:completion:)(a3, a4, v8, v9);
  sub_100003764(v8);
}

- (_TtC20SWTFollowUpExtension22FollowUpViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end