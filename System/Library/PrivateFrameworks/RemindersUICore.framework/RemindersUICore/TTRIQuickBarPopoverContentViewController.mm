@interface TTRIQuickBarPopoverContentViewController
- (_TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController)initWithCoder:(id)coder;
- (_TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TTRIQuickBarPopoverContentViewController

- (_TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_keyboardWillHideObserver) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPickView) = 0;
  v4 = OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_dateIconGenerator;
  type metadata accessor for TTRIDateIconGenerator();
  *(&self->super.super.super.isa + v4) = swift_allocObject();
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_21D49D0E0();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21D49D4B0();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(TTRIQuickBarPopoverContentViewController *)&v6 viewDidAppear:appearCopy];
  LODWORD(appearCopy) = *MEMORY[0x277D764D8];
  view = [v4 view];
  UIAccessibilityPostNotification(appearCopy, view);
}

- (_TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end