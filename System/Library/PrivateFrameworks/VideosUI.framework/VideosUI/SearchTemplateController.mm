@interface SearchTemplateController
- (CGRect)_searchBar:(id)a3 proposedSearchFieldFrame:(CGRect)a4;
- (_TtC8VideosUI24SearchTemplateController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)accountChanged:(id)a3;
- (void)handleWithKeyboardShowNotification:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)vui_didMoveToParentViewController:(id)a3;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)a3;
- (void)vui_viewWillDisappear:(BOOL)a3;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation SearchTemplateController

- (void)accountChanged:(id)a3
{
  OUTLINED_FUNCTION_44_11();
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_26();
  sub_1E41FDEE4();
  v5 = v3;
  sub_1E3942B94();

  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
}

- (void)vui_viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3942DA8();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3943230(v4);
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3943AD8(v4);
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E39440D0(v4);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E394418C(v4);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E394423C(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E394476C();
}

- (void)vui_didMoveToParentViewController:(id)a3
{
  OUTLINED_FUNCTION_44_11();
  v5 = v3;
  v6 = v4;
  OUTLINED_FUNCTION_37_3();
  sub_1E3944A4C(v3);
}

- (_TtC8VideosUI24SearchTemplateController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3944F70();
}

- (void)willDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3945660();
}

- (void)willPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3945C68(v4);
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3945DD4();
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E39468A4(v4);
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  OUTLINED_FUNCTION_44_11();
  sub_1E4205F14();
  v6 = v4;
  v7 = v5;
  sub_1E3946C90();
}

- (CGRect)_searchBar:(id)a3 proposedSearchFieldFrame:(CGRect)a4
{
  OUTLINED_FUNCTION_44_11();
  v6 = v4;
  v7 = v5;
  v8 = OUTLINED_FUNCTION_50();
  sub_1E3947884(v8);
  OUTLINED_FUNCTION_3();

  v9 = OUTLINED_FUNCTION_6();
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)handleWithKeyboardShowNotification:(id)a3
{
  OUTLINED_FUNCTION_44_11();
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_26();
  sub_1E41FDEE4();
  v5 = v3;
  sub_1E3949CC8();

  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
}

@end