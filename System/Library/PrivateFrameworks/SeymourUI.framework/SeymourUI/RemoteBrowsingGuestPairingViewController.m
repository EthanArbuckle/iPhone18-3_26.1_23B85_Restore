@interface RemoteBrowsingGuestPairingViewController
- (_TtC9SeymourUI40RemoteBrowsingGuestPairingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RemoteBrowsingGuestPairingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20BF114AC();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RemoteBrowsingGuestPairingViewController();
  v4 = v5.receiver;
  [(RemoteBrowsingGuestPairingViewController *)&v5 viewDidDisappear:v3];
  sub_20B8F2CBC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_20BF11CCC(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20BF12244(a3);
}

- (_TtC9SeymourUI40RemoteBrowsingGuestPairingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end