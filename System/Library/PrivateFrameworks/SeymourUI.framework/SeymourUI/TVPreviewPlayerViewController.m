@interface TVPreviewPlayerViewController
- (_TtC9SeymourUI29TVPreviewPlayerViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI29TVPreviewPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TVPreviewPlayerViewController

- (_TtC9SeymourUI29TVPreviewPlayerViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVPreviewPlayerViewController_playerViewController;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CB85E0]) init];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20C0ECF78();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVPreviewPlayerViewController();
  v4 = v5.receiver;
  [(TVPreviewPlayerViewController *)&v5 viewDidAppear:v3];
  sub_20BC3EA28();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_20C0ED444(v3);
}

- (_TtC9SeymourUI29TVPreviewPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end