@interface DisplayPreferencesViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC9SeymourUI32DisplayPreferencesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9SeymourUI32DisplayPreferencesViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)visibilitySwitchChanged:(id)changed;
@end

@implementation DisplayPreferencesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BC41F84();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DisplayPreferencesViewController();
  v4 = v7.receiver;
  [(DisplayPreferencesViewController *)&v7 viewWillAppear:appearCopy];
  tableView = [v4 tableView];
  if (tableView)
  {
    v6 = tableView;
    [tableView reloadData];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DisplayPreferencesViewController();
  v4 = v7.receiver;
  [(DisplayPreferencesViewController *)&v7 viewWillDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_onSettingsDismissed];
  if (v5)
  {

    v5(v6);

    sub_20B583ECC(v5);
  }

  else
  {
  }
}

- (void)visibilitySwitchChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_20BC428B4(changedCopy);
}

- (_TtC9SeymourUI32DisplayPreferencesViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI32DisplayPreferencesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels);
    if (*(v4 + 16) > section)
    {
      return *(*(v4 + 88 * section + 32) + 16);
    }
  }

  __break(1u);
  return self;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_20BC42A88(viewCopy, section);

  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_20BC42D34(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels);
  if (*(v4 + 16) <= section)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = 44.0;
  if (!*(v4 + 88 * section + 56))
  {
    return 2.22507386e-308;
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_20BC43074(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v5 = sub_20C133244();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  selfCopy = self;
  v10 = sub_20C133234();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v11 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels);
  if (v10 >= *(v11 + 16))
  {
LABEL_5:
    __break(1u);
    return v10;
  }

  v12 = *(v11 + 88 * v10 + 41);

  (*(v6 + 8))(v8, v5);

  LOBYTE(v10) = v12;
  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  viewCopy = view;
  selfCopy = self;
  sub_20BC43614(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end