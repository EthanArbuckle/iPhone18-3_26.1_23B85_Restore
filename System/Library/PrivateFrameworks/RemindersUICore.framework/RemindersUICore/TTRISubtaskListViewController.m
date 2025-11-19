@interface TTRISubtaskListViewController
- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithCoder:(id)a3;
- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation TTRISubtaskListViewController

- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel);
  *v3 = 0u;
  v3[1] = 0u;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)willMoveToParentViewController:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self;
  v7 = v6;
  if (!a3)
  {
    v9 = [(TTRISubtaskListViewController *)v6 viewIfLoaded];
    if (v9)
    {
      v10 = v9;
      v11 = UIView.firstResponderDescendant.getter();

      if (v11)
      {
        [v11 resignFirstResponder];
      }
    }
  }

  v12.receiver = v7;
  v12.super_class = ObjectType;
  v8 = a3;
  [(TTRISubtaskListViewController *)&v12 willMoveToParentViewController:v8];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21D3151C8();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_21D31556C();
}

- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel);
  if (v4)
  {
    return *(v4 + 16) + 1;
  }

  else
  {
    return 1;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v10 = a3;
  v11 = self;
  v12 = sub_21D315EE4(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_21D316564(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v11 = a3;
  v12 = self;
  sub_21D317AB4();

  (*(v8 + 8))(v10, v7);
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v9 = self;
  v10 = sub_21DBF5CCC();
  (*(v6 + 8))(v8, v5);
  v11 = *(&v9->super.super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel);
  if (v11)
  {
    v12 = *(v11 + 16);

    if (v10 < v12)
    {
      return 1;
    }
  }

  else
  {

    if (v10 < 0)
    {
      return 1;
    }
  }

  return 0;
}

@end