@interface TTRIQuickBarPopoverContentViewController
- (_TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController)initWithCoder:(id)a3;
- (_TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TTRIQuickBarPopoverContentViewController

- (_TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_21D49D0E0();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21D49D4B0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(TTRIQuickBarPopoverContentViewController *)&v6 viewDidAppear:v3];
  LODWORD(v3) = *MEMORY[0x277D764D8];
  v5 = [v4 view];
  UIAccessibilityPostNotification(v3, v5);
}

- (_TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end