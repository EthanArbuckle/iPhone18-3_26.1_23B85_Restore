@interface TTRIRecurrenceEditorViewController
- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithCoder:(id)a3;
- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TTRIRecurrenceEditorViewController

- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithCoder:(id)a3
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21D557B30();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_21D557C8C(a3);
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21D5580A8(a3);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!a4)
  {
    v4 = self;
    swift_unknownObjectRetain();
    v5 = sub_21D55AC6C();
    swift_unknownObjectRelease();

    v6 = *(v5 + 16);

    return v6;
  }

  v6 = a4;
  if (a4 == 1)
  {
    return v6;
  }

  __break(1u);
  return self;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DBF5CAC();
  v10 = a3;
  v11 = self;
  v12 = sub_21D5582B0(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    if ((*(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIRecurrenceEditorViewController_presenter))[8])
    {
      sub_21DBF8E0C();
      v5 = sub_21DBFA12C();

      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v10 = a3;
  v11 = self;
  sub_21D55973C();

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_21D559820(v13, v11);

  (*(v9 + 8))(v11, v8);
}

- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end