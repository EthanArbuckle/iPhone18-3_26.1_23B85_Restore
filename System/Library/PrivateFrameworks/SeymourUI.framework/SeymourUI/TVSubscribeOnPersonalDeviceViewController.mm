@interface TVSubscribeOnPersonalDeviceViewController
- (_TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVSubscribeOnPersonalDeviceViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BD7E07C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVSubscribeOnPersonalDeviceViewController();
  v4 = v5.receiver;
  [(TVSubscribeOnPersonalDeviceViewController *)&v5 viewWillAppear:appearCopy];
  sub_20BC99278();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20BD7E664(disappear);
}

- (_TtC9SeymourUI41TVSubscribeOnPersonalDeviceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end