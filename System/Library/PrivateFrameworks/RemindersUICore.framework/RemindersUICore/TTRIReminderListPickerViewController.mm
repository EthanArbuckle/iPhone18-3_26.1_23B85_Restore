@interface TTRIReminderListPickerViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC15RemindersUICore36TTRIReminderListPickerViewController)initWithCoder:(id)coder;
- (_TtC15RemindersUICore36TTRIReminderListPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15RemindersUICore36TTRIReminderListPickerViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)cancelButtonAction:(id)action;
- (void)moveButtonAction:(id)action;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRIReminderListPickerViewController

- (_TtC15RemindersUICore36TTRIReminderListPickerViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_contentSizeObserver) = 0;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21D1AF050();
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIReminderListPickerViewController *)&v3 viewWillLayoutSubviews];
  sub_21D1AF7E0();
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_21D1AFAD0(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = 0.0;
  if (*((*(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_presenter))[4] + 16) > section)
  {
    if (section < 0)
    {
      __break(1u);
    }

    else
    {
      return *MEMORY[0x277D76F30];
    }
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_21D1B03FC();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v9 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_presenter);
  v11 = *(v9 + 32);
  v10 = *(v9 + 40);
  *&v20[0] = v11;
  *(&v20[0] + 1) = v10;
  v12 = v10;
  selfCopy = self;
  sub_21DBF8E0C();
  v14 = sub_21DBF5CCC();
  v15 = sub_21DBF5D0C();
  TTRReminderListPickerViewModel.list(at:inSectionAt:)(v14, v15, v18);

  (*(v6 + 8))(v8, v5);
  v16 = *(&v20[0] + 1);

  v20[10] = v18[10];
  v20[11] = v18[11];
  v21[0] = v19[0];
  *(v21 + 12) = *(v19 + 12);
  v20[6] = v18[6];
  v20[7] = v18[7];
  v20[8] = v18[8];
  v20[9] = v18[9];
  v20[2] = v18[2];
  v20[3] = v18[3];
  v20[4] = v18[4];
  v20[5] = v18[5];
  v20[0] = v18[0];
  v20[1] = v18[1];
  sub_21D1B1FC8(v20);
  return (BYTE11(v21[1]) & 1) == 0;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  sub_21D1B0DE4(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)cancelButtonAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [(TTRIReminderListPickerViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_21D0CF7E0(&v6, &qword_27CE5C690);
}

- (void)moveButtonAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_21D1B1850();

  sub_21D0CF7E0(v6, &qword_27CE5C690);
}

- (_TtC15RemindersUICore36TTRIReminderListPickerViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore36TTRIReminderListPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end