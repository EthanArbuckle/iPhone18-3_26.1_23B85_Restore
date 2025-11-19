@interface CalendarEventViewController
- (_TtC17PromotedContentUI27CalendarEventViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CalendarEventViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1C19B798C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1C19B8144(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1C19B87CC(a3);
}

- (_TtC17PromotedContentUI27CalendarEventViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1C19B9478(a4);
}

@end