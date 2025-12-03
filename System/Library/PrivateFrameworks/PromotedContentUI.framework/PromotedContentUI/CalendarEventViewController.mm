@interface CalendarEventViewController
- (_TtC17PromotedContentUI27CalendarEventViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CalendarEventViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1C19B798C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1C19B8144(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1C19B87CC(disappear);
}

- (_TtC17PromotedContentUI27CalendarEventViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1C19B9478(action);
}

@end