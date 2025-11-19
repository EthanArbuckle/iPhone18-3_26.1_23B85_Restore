@interface TVSubscribeOnPersonalDeviceViewController
- (_TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVSubscribeOnPersonalDeviceViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20BD7E07C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVSubscribeOnPersonalDeviceViewController();
  v4 = v5.receiver;
  [(TVSubscribeOnPersonalDeviceViewController *)&v5 viewWillAppear:v3];
  sub_20BC99278();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_20BD7E664(a3);
}

- (_TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end