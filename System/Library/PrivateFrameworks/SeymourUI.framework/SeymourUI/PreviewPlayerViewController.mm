@interface PreviewPlayerViewController
- (_TtC9SeymourUI27PreviewPlayerViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI27PreviewPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9SeymourUI27PreviewPlayerViewController)initWithPlayerLayerView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PreviewPlayerViewController

- (_TtC9SeymourUI27PreviewPlayerViewController)initWithCoder:(id)coder
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PreviewPlayerViewController();
  v4 = v5.receiver;
  [(PreviewPlayerViewController *)&v5 viewDidAppear:appearCopy];
  sub_20BC3EA28();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20BD8B740(disappear);
}

- (_TtC9SeymourUI27PreviewPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI27PreviewPlayerViewController)initWithPlayerLayerView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end