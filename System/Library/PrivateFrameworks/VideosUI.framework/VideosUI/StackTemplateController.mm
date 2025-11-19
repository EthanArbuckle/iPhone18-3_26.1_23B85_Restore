@interface StackTemplateController
- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)a3 in:(id)a4 at:(id)a5;
- (BOOL)vuiScrollViewShouldScrollToTop:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)vuiScrollViewDidEndScrollingAnimation:(id)a3;
- (void)vuiScrollViewDidScroll:(id)a3;
- (void)vuiScrollViewWillBeginDragging:(id)a3;
- (void)vuiScrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)vui_didMoveToParentViewController:(id)a3;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)a3;
- (void)vui_viewWillDisappear:(BOOL)a3;
- (void)vui_willMoveToParentViewController:(id)a3;
- (void)willEnterForeground:(id)a3;
@end

@implementation StackTemplateController

- (void)vui_viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3ED1FBC();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3ED292C();
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3ED3BD4(v4);
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3ED3C70(v4);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3ED3F84(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3ED41D0();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  swift_unknownObjectRetain();
  v7 = v6;
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_6_12();
  sub_1E3ED5DAC(a4);
  swift_unknownObjectRelease();
}

- (void)vui_willMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3ED5FD4();
}

- (void)vui_didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3ED609C();
}

- (int64_t)preferredStatusBarStyle
{
  v2 = self;
  v3 = sub_1E3ED618C();

  return v3;
}

- (void)willEnterForeground:(id)a3
{
  OUTLINED_FUNCTION_106();
  sub_1E41FDF34();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_9();
  sub_1E41FDEE4();
  v5 = v3;
  sub_1E3ED61EC();

  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
}

- (void)vuiScrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3ED75CC();
}

- (BOOL)vuiScrollViewShouldScrollToTop:(id)a3
{
  v5 = a3;
  v6 = self;
  OUTLINED_FUNCTION_38();
  LOBYTE(self) = sub_1E3ED7D10();

  return self & 1;
}

- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)a3 in:(id)a4 at:(id)a5
{
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E41FE804();
  v9 = a4;
  v10 = self;
  v11 = OUTLINED_FUNCTION_13_8();
  sub_1E3ED7DD4(v11, v12, v5);
  v14 = v13;

  v15 = OUTLINED_FUNCTION_124();
  v16(v15);
  return v14 & 1;
}

- (void)vuiScrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  OUTLINED_FUNCTION_5_16();
  v7 = v6;
  v9 = v8;
  v11 = v7;
  OUTLINED_FUNCTION_6_12();
  sub_1E3ED7F8C(v10, &a5->x);
}

- (void)vuiScrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3ED8298();
}

- (void)vuiScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3ED8390();
}

@end