@interface RootSideBarController
- (_TtC8VideosUI21RootSideBarController)initWithNibName:(id)name bundle:(id)bundle;
- (void)accountStoreDidChange:(id)change;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)isLibraryOnlyCountryChanged:(id)changed;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RootSideBarController

- (void)viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3955674();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E3955E94(appear, &selRef_viewWillAppear_);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E3955E94(appear, &selRef_viewDidAppear_);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3955F8C();
}

- (_TtC8VideosUI21RootSideBarController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E3958DA4();
}

- (void)accountStoreDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3958EB4();
}

- (void)isLibraryOnlyCountryChanged:(id)changed
{
  OUTLINED_FUNCTION_106();
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FDEE4();
  v11 = v3;
  sub_1E3958EB4();

  (*(v6 + 8))(v10, v4);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FE804();
  viewCopy = view;
  selfCopy = self;
  sub_1E3959620();

  (*(v8 + 8))(v12, v6);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3959D10();
}

@end