@interface QuickReminderViewController
- (_TtC19RemindersAppIntents27QuickReminderViewController)initWithCoder:(id)a3;
- (_TtC19RemindersAppIntents27QuickReminderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation QuickReminderViewController

- (_TtC19RemindersAppIntents27QuickReminderViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_commitHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_saveDidFinishHandler);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_reminderSaveDidFinishCancellable) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_configurationUsesLastSelectedLocationInViewDidAppear) = 0;
  result = sub_261D004E4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  QuickReminderViewController.viewDidLoad()();
}

- (_TtC19RemindersAppIntents27QuickReminderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end