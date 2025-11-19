@interface PreviewPlayerViewController
- (_TtC9SeymourUI27PreviewPlayerViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI27PreviewPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9SeymourUI27PreviewPlayerViewController)initWithPlayerLayerView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PreviewPlayerViewController

- (_TtC9SeymourUI27PreviewPlayerViewController)initWithCoder:(id)a3
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for PreviewPlayerViewController();
  [(PreviewPlayerViewController *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PreviewPlayerViewController();
  v4 = v5.receiver;
  [(PreviewPlayerViewController *)&v5 viewDidAppear:v3];
  sub_20BC3EA28();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_20BD8B740(a3);
}

- (_TtC9SeymourUI27PreviewPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI27PreviewPlayerViewController)initWithPlayerLayerView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end