@interface RemoteBrowsingGuestPairingViewController
- (_TtC9SeymourUI40RemoteBrowsingGuestPairingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RemoteBrowsingGuestPairingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BF114AC();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RemoteBrowsingGuestPairingViewController();
  v4 = v5.receiver;
  [(RemoteBrowsingGuestPairingViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_20B8F2CBC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20BF11CCC(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20BF12244(disappear);
}

- (_TtC9SeymourUI40RemoteBrowsingGuestPairingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end