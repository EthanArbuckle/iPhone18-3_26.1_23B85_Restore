@interface RootSideBarController
- (_TtC8VideosUI21RootSideBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)accountStoreDidChange:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)isLibraryOnlyCountryChanged:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RootSideBarController

- (void)viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3955674();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1E3955E94(a3, &selRef_viewWillAppear_);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1E3955E94(a3, &selRef_viewDidAppear_);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3955F8C();
}

- (_TtC8VideosUI21RootSideBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3958DA4();
}

- (void)accountStoreDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3958EB4();
}

- (void)isLibraryOnlyCountryChanged:(id)a3
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FE804();
  v13 = a3;
  v14 = self;
  sub_1E3959620();

  (*(v8 + 8))(v12, v6);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3959D10();
}

@end