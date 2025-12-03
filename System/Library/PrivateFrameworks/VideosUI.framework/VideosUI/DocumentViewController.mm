@interface DocumentViewController
- (BOOL)deeplinkURLWasHandled:(id)handled;
- (BOOL)handleDeeplink:(id)deeplink;
- (NSArray)preferredFocusEnvironments;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIViewController)childViewControllerForStatusBarHidden;
- (_TtC8VideosUI22DocumentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation fromViewController:(id)controller;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation toViewController:(id)controller;
- (id)vui_findPresentationSource:(id)source;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size;
- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)reportPageEvent;
- (void)scrollToTopWithAnimated:(BOOL)animated needsFocusUpdate:(BOOL)update;
- (void)setActivityItemsConfiguration:(id)configuration;
- (void)vui_didMoveToParentViewController:(id)controller;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)appear;
- (void)vui_viewWillDisappear:(BOOL)disappear;
@end

@implementation DocumentViewController

- (id)vui_findPresentationSource:(id)source
{
  sub_1E4205F14();
  v5 = v4;
  selfCopy = self;
  v7._countAndFlagsBits = OUTLINED_FUNCTION_12_1();
  v7._object = v5;
  DocumentViewController.vuifindPresentationSource(source:)(v8, v7);
  v10 = v9;

  return v10;
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  selfCopy = self;
  DocumentViewController.activityItemsConfiguration.getter();
  v4 = v3;

  return v4;
}

- (void)setActivityItemsConfiguration:(id)configuration
{
  OUTLINED_FUNCTION_44_11();
  swift_unknownObjectRetain();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.activityItemsConfiguration.setter(v5);
}

- (void)vui_viewDidLoad
{
  selfCopy = self;
  DocumentViewController.vuiViewDidLoad()();
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.vuiViewWillAppear(_:)(v4);
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.vuiViewDidAppear(_:)(v4);
}

- (void)vui_viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.vuiViewWillDisappear(_:)(v4);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.vuiViewDidDisappear(_:)(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  DocumentViewController.vuiViewDidLayoutSubviews()();
}

- (void)vui_didMoveToParentViewController:(id)controller
{
  OUTLINED_FUNCTION_44_11();
  v5 = v3;
  v6 = v4;
  v7 = OUTLINED_FUNCTION_10_0();
  DocumentViewController.vuiDidMove(toParent:)(v7);
}

- (int64_t)preferredStatusBarStyle
{
  selfCopy = self;
  v3 = DocumentViewController.preferredStatusBarStyle.getter();

  return v3;
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  DocumentViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D30);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062A4();
  OUTLINED_FUNCTION_50();

  return selfCopy;
}

- (UIViewController)childViewControllerForStatusBarHidden
{
  selfCopy = self;
  v3 = DocumentViewController.childForStatusBarHidden.getter();

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = DocumentViewController.supportedInterfaceOrientations.getter();

  return v3;
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation toViewController:(id)controller
{
  OUTLINED_FUNCTION_44_11();
  v6 = v5;
  v7 = v4;
  OUTLINED_FUNCTION_50();
  v8 = DocumentViewController.customAnimator(for:to:)();

  return v8;
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation fromViewController:(id)controller
{
  OUTLINED_FUNCTION_44_11();
  v6 = v5;
  v7 = v4;
  OUTLINED_FUNCTION_50();
  v8 = DocumentViewController.customAnimator(for:from:)();

  return v8;
}

- (BOOL)handleDeeplink:(id)deeplink
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

- (void)scrollToTopWithAnimated:(BOOL)animated needsFocusUpdate:(BOOL)update
{
  selfCopy = self;
  DocumentViewController.scrollToTop(animated:needsFocusUpdate:)(animated, update);
}

- (_TtC8VideosUI22DocumentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  DocumentViewController.init(nibName:bundle:)();
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  DocumentViewController.navigationController(_:didShow:animated:)(controllerCopy, &selfCopy->super.super, 0);
}

- (void)reportPageEvent
{
  selfCopy = self;
  DocumentViewController.reportPageEvent()();
}

- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size
{
  controllerCopy = controller;
  selfCopy = self;
  DocumentViewController.messageViewController(_:didUpdate:)();
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  DocumentViewController.messageViewController(_:didFailWithError:)();
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  OUTLINED_FUNCTION_13_8();
  DocumentViewController.messageViewController(_:didSelectActionWith:)();
}

- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic
{
  v8 = sub_1E4205C64();
  if (topic)
  {
    v9 = sub_1E4205F14();
    topic = v10;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  DocumentViewController.messageViewController(_:enqueueEventWithFields:inTopic:)(selfCopy, v8, v9, topic);
}

- (BOOL)deeplinkURLWasHandled:(id)handled
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