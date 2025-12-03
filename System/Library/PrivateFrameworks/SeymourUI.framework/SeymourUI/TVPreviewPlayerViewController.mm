@interface TVPreviewPlayerViewController
- (_TtC9SeymourUI29TVPreviewPlayerViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI29TVPreviewPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation TVPreviewPlayerViewController

- (_TtC9SeymourUI29TVPreviewPlayerViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVPreviewPlayerViewController_playerViewController;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CB85E0]) init];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20C0ECF78();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVPreviewPlayerViewController();
  v4 = v5.receiver;
  [(TVPreviewPlayerViewController *)&v5 viewDidAppear:appearCopy];
  sub_20BC3EA28();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_20C0ED444(disappearCopy);
}

- (_TtC9SeymourUI29TVPreviewPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end