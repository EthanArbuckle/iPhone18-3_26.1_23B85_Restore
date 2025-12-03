@interface TTRIRecurrenceEditorViewController
- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithCoder:(id)coder;
- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didMoveToParentViewController:(id)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TTRIRecurrenceEditorViewController

- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithCoder:(id)coder
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21D557B30();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21D557C8C(appear);
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21D5580A8(controller);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    v5 = sub_21D55AC6C();
    swift_unknownObjectRelease();

    sectionCopy = *(v5 + 16);

    return sectionCopy;
  }

  sectionCopy = section;
  if (section == 1)
  {
    return sectionCopy;
  }

  __break(1u);
  return self;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_21D5582B0(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section == 1)
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  sub_21D55973C();

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_21D559820(cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore34TTRIRecurrenceEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end