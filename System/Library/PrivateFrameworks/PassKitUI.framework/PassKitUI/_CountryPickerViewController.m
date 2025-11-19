@interface _CountryPickerViewController
- (_TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController)initWithStyle:(int64_t)a3;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (void)cancel;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _CountryPickerViewController

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD9F8F34(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BD9F90F4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1BD9F977C(v3);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections))
  {
    return 1;
  }

  else
  {
    return (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections))[2];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1BD9FAF28(a4);

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1BD9F9C58(v6, a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1BE052404();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections))
  {
    v4 = 0;
  }

  else
  {
    v7 = objc_opt_self();
    v8 = self;
    v9 = [v7 currentCollation];
    v10 = [v9 sectionIndexTitles];
    sub_1BE052744();

    v11 = sub_1BE052724();

    v4 = v11;
  }

  return v4;
}

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v6 = [objc_opt_self() currentCollation];
  v7 = [v6 sectionForSectionIndexTitleAtIndex_];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1BE04B414();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  v11 = a3;
  v12 = self;
  v13 = sub_1BD9F9F28(v11, v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1BE04B414();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  v11 = a3;
  v12 = self;
  sub_1BD9FA3CC(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v5 = self;
  v3 = [(_CountryPickerViewController *)v5 presentingViewController];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)cancel
{
  v4 = self;
  v2 = [(_CountryPickerViewController *)v4 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end