@interface TTRIReminderSectionPickerViewController
- (_TtC15RemindersUICore39TTRIReminderSectionPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15RemindersUICore39TTRIReminderSectionPickerViewController)initWithStyle:(int64_t)a3;
- (void)cancelButtonAction:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TTRIReminderSectionPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_21D5E5D7C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIReminderSectionPickerViewController *)&v5 viewWillAppear:v3];
  sub_21D5E65F0();
}

- (void)cancelButtonAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
  }

  [(TTRIReminderSectionPickerViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_21D1A8418(&v6);
}

- (_TtC15RemindersUICore39TTRIReminderSectionPickerViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore39TTRIReminderSectionPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end