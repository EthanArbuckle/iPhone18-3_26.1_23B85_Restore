@interface DisplayPreferencesViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC9SeymourUI32DisplayPreferencesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9SeymourUI32DisplayPreferencesViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 estimatedHeightForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)visibilitySwitchChanged:(id)a3;
@end

@implementation DisplayPreferencesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20BC41F84();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DisplayPreferencesViewController();
  v4 = v7.receiver;
  [(DisplayPreferencesViewController *)&v7 viewWillAppear:v3];
  v5 = [v4 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DisplayPreferencesViewController();
  v4 = v7.receiver;
  [(DisplayPreferencesViewController *)&v7 viewWillDisappear:v3];
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

- (void)visibilitySwitchChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BC428B4(v4);
}

- (_TtC9SeymourUI32DisplayPreferencesViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI32DisplayPreferencesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels);
    if (*(v4 + 16) > a4)
    {
      return *(*(v4 + 88 * a4 + 32) + 16);
    }
  }

  __break(1u);
  return self;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_20BC42A88(v6, a4);

  return v8;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_20BC42D34(v6, a4);

  return v8;
}

- (double)tableView:(id)a3 estimatedHeightForFooterInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels);
  if (*(v4 + 16) <= a4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = 44.0;
  if (!*(v4 + 88 * a4 + 56))
  {
    return 2.22507386e-308;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  v10 = a3;
  v11 = self;
  v12 = sub_20BC43074(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = sub_20C133244();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  v9 = self;
  v10 = sub_20C133234();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v11 = *(&v9->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels);
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  v10 = a3;
  v11 = self;
  sub_20BC43614(v10);

  (*(v7 + 8))(v9, v6);
}

@end