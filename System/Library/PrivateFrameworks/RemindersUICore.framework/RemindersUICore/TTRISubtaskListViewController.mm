@interface TTRISubtaskListViewController
- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithCoder:(id)coder;
- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation TTRISubtaskListViewController

- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel);
  *v3 = 0u;
  v3[1] = 0u;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)willMoveToParentViewController:(id)controller
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v7 = selfCopy;
  if (!controller)
  {
    viewIfLoaded = [(TTRISubtaskListViewController *)selfCopy viewIfLoaded];
    if (viewIfLoaded)
    {
      v10 = viewIfLoaded;
      v11 = UIView.firstResponderDescendant.getter();

      if (v11)
      {
        [v11 resignFirstResponder];
      }
    }
  }

  v12.receiver = v7;
  v12.super_class = ObjectType;
  controllerCopy = controller;
  [(TTRISubtaskListViewController *)&v12 willMoveToParentViewController:controllerCopy];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21D3151C8();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_21D31556C();
}

- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore29TTRISubtaskListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_21D315EE4(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_21D316564(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  sub_21D317AB4();

  (*(v8 + 8))(v10, v7);
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  selfCopy = self;
  v10 = sub_21DBF5CCC();
  (*(v6 + 8))(v8, v5);
  v11 = *(&selfCopy->super.super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel);
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