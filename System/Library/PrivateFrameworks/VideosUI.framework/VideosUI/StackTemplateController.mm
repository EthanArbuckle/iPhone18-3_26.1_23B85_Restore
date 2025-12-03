@interface StackTemplateController
- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)category in:(id)in at:(id)at;
- (BOOL)vuiScrollViewShouldScrollToTop:(id)top;
- (int64_t)preferredStatusBarStyle;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)vuiScrollViewDidEndScrollingAnimation:(id)animation;
- (void)vuiScrollViewDidScroll:(id)scroll;
- (void)vuiScrollViewWillBeginDragging:(id)dragging;
- (void)vuiScrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)vui_didMoveToParentViewController:(id)controller;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)appear;
- (void)vui_viewWillDisappear:(BOOL)disappear;
- (void)vui_willMoveToParentViewController:(id)controller;
- (void)willEnterForeground:(id)foreground;
@end

@implementation StackTemplateController

- (void)vui_viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3ED1FBC();
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3ED292C();
}

- (void)vui_viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3ED3BD4(v4);
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3ED3C70(v4);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3ED3F84(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3ED41D0();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  swift_unknownObjectRetain();
  v7 = v6;
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_6_12();
  sub_1E3ED5DAC(coordinator);
  swift_unknownObjectRelease();
}

- (void)vui_willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3ED5FD4();
}

- (void)vui_didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3ED609C();
}

- (int64_t)preferredStatusBarStyle
{
  selfCopy = self;
  v3 = sub_1E3ED618C();

  return v3;
}

- (void)willEnterForeground:(id)foreground
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

- (void)vuiScrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3ED75CC();
}

- (BOOL)vuiScrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  OUTLINED_FUNCTION_38();
  LOBYTE(self) = sub_1E3ED7D10();

  return self & 1;
}

- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)category in:(id)in at:(id)at
{
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E41FE804();
  inCopy = in;
  selfCopy = self;
  v11 = OUTLINED_FUNCTION_13_8();
  sub_1E3ED7DD4(v11, v12, v5);
  v14 = v13;

  v15 = OUTLINED_FUNCTION_124();
  v16(v15);
  return v14 & 1;
}

- (void)vuiScrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  OUTLINED_FUNCTION_5_16();
  v7 = v6;
  v9 = v8;
  v11 = v7;
  OUTLINED_FUNCTION_6_12();
  sub_1E3ED7F8C(v10, &offset->x);
}

- (void)vuiScrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3ED8298();
}

- (void)vuiScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3ED8390();
}

@end