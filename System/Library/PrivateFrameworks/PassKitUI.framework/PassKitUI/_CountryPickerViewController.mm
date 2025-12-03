@interface _CountryPickerViewController
- (_TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController)initWithStyle:(int64_t)style;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (void)cancel;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _CountryPickerViewController

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1BD9F8F34(controllerCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BD9F90F4();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_1BD9F977C(appearCopy);
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1BD9FAF28(section);

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1BD9F9C58(viewCopy, section);
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

- (id)sectionIndexTitlesForTableView:(id)view
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections))
  {
    v4 = 0;
  }

  else
  {
    v7 = objc_opt_self();
    selfCopy = self;
    currentCollation = [v7 currentCollation];
    sectionIndexTitles = [currentCollation sectionIndexTitles];
    sub_1BE052744();

    v11 = sub_1BE052724();

    v4 = v11;
  }

  return v4;
}

- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  currentCollation = [objc_opt_self() currentCollation];
  sectionForSectionIndexTitleAtIndex_ = [currentCollation sectionForSectionIndexTitleAtIndex_];

  return sectionForSectionIndexTitleAtIndex_;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1BE04B414();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1BD9F9F28(viewCopy, v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1BE04B414();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  viewCopy = view;
  selfCopy = self;
  sub_1BD9FA3CC(viewCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  selfCopy = self;
  presentingViewController = [(_CountryPickerViewController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v4 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)cancel
{
  selfCopy = self;
  presentingViewController = [(_CountryPickerViewController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v3 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end