@interface SearchStackViewController
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4;
- (void)vuiScrollViewDidScroll:(id)a3;
- (void)vui_didMoveToParentViewController:(id)a3;
- (void)vui_viewDidLoad;
@end

@implementation SearchStackViewController

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E3E67DE8();
}

- (void)vui_didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E3E680BC(a3);
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1E3E683AC(a3);
}

- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4
{
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  sub_1E41FE804();
  v7 = a3;
  v8 = self;
  sub_1E3E686B8(v7);

  v9 = OUTLINED_FUNCTION_53();
  v10(v9);
}

- (void)vuiScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3E6BA6C(v4);
}

@end