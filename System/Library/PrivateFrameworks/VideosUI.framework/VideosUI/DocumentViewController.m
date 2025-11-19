@interface DocumentViewController
- (BOOL)deeplinkURLWasHandled:(id)a3;
- (BOOL)handleDeeplink:(id)a3;
- (NSArray)preferredFocusEnvironments;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIViewController)childViewControllerForStatusBarHidden;
- (_TtC8VideosUI22DocumentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 fromViewController:(id)a4;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 toViewController:(id)a4;
- (id)vui_findPresentationSource:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4;
- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)reportPageEvent;
- (void)scrollToTopWithAnimated:(BOOL)a3 needsFocusUpdate:(BOOL)a4;
- (void)setActivityItemsConfiguration:(id)a3;
- (void)vui_didMoveToParentViewController:(id)a3;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)a3;
- (void)vui_viewWillDisappear:(BOOL)a3;
@end

@implementation DocumentViewController

- (id)vui_findPresentationSource:(id)a3
{
  sub_1E4205F14();
  v5 = v4;
  v6 = self;
  v7._countAndFlagsBits = OUTLINED_FUNCTION_12_1();
  v7._object = v5;
  DocumentViewController.vuifindPresentationSource(source:)(v8, v7);
  v10 = v9;

  return v10;
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  v2 = self;
  DocumentViewController.activityItemsConfiguration.getter();
  v4 = v3;

  return v4;
}

- (void)setActivityItemsConfiguration:(id)a3
{
  OUTLINED_FUNCTION_44_11();
  swift_unknownObjectRetain();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.activityItemsConfiguration.setter(v5);
}

- (void)vui_viewDidLoad
{
  v2 = self;
  DocumentViewController.vuiViewDidLoad()();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.vuiViewWillAppear(_:)(v4);
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.vuiViewDidAppear(_:)(v4);
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.vuiViewWillDisappear(_:)(v4);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.vuiViewDidDisappear(_:)(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  DocumentViewController.vuiViewDidLayoutSubviews()();
}

- (void)vui_didMoveToParentViewController:(id)a3
{
  OUTLINED_FUNCTION_44_11();
  v5 = v3;
  v6 = v4;
  v7 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.vuiDidMove(toParent:)(v7);
}

- (int64_t)preferredStatusBarStyle
{
  v2 = self;
  v3 = DocumentViewController.preferredStatusBarStyle.getter();

  return v3;
}

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  DocumentViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D30);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062A4();
  OUTLINED_FUNCTION_50();

  return v2;
}

- (UIViewController)childViewControllerForStatusBarHidden
{
  v2 = self;
  v3 = DocumentViewController.childForStatusBarHidden.getter();

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = DocumentViewController.supportedInterfaceOrientations.getter();

  return v3;
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 toViewController:(id)a4
{
  OUTLINED_FUNCTION_44_11();
  v6 = v5;
  v7 = v4;
  OUTLINED_FUNCTION_50();
  v8 = DocumentViewController.customAnimator(for:to:)();

  return v8;
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 fromViewController:(id)a4
{
  OUTLINED_FUNCTION_44_11();
  v6 = v5;
  v7 = v4;
  OUTLINED_FUNCTION_50();
  v8 = DocumentViewController.customAnimator(for:from:)();

  return v8;
}

- (BOOL)handleDeeplink:(id)a3
{
  v4 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E41FE3C4();
  (*(v6 + 8))(v3, v4);
  return 0;
}

- (void)scrollToTopWithAnimated:(BOOL)a3 needsFocusUpdate:(BOOL)a4
{
  v6 = self;
  DocumentViewController.scrollToTop(animated:needsFocusUpdate:)(a3, a4);
}

- (_TtC8VideosUI22DocumentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  DocumentViewController.init(nibName:bundle:)();
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  DocumentViewController.navigationController(_:didShow:animated:)(v7, &v9->super.super, 0);
}

- (void)reportPageEvent
{
  v2 = self;
  DocumentViewController.reportPageEvent()();
}

- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4
{
  v5 = a3;
  v6 = self;
  DocumentViewController.messageViewController(_:didUpdate:)();
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  DocumentViewController.messageViewController(_:didFailWithError:)();
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  OUTLINED_FUNCTION_13_8();
  DocumentViewController.messageViewController(_:didSelectActionWith:)();
}

- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5
{
  v8 = sub_1E4205C64();
  if (a5)
  {
    v9 = sub_1E4205F14();
    a5 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = a3;
  v12 = self;
  DocumentViewController.messageViewController(_:enqueueEventWithFields:inTopic:)(v12, v8, v9, a5);
}

- (BOOL)deeplinkURLWasHandled:(id)a3
{
  OUTLINED_FUNCTION_44_11();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E41FE3C4();
  v6 = v3;
  v7 = DocumentViewController.deeplinkURLWasHandled(_:)(v4);

  v8 = OUTLINED_FUNCTION_74();
  v9(v8);
  return v7 & 1;
}

@end