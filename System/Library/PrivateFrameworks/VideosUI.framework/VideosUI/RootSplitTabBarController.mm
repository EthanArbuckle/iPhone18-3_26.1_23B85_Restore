@interface RootSplitTabBarController
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (_TtC8VideosUI25RootSplitTabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8VideosUI25RootSplitTabBarController)initWithTabs:(id)tabs;
- (void)didMoveToParentViewController:(id)controller;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RootSplitTabBarController

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E4115354(controller);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E411591C(appear, &selRef_viewWillAppear_, &OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForAppear, 1);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1E411591C(disappear, &selRef_viewWillDisappear_, &OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForDissapear, 0);
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  controllersCopy = controllers;
  if (controllers)
  {
    sub_1E3280A90(0, &qword_1EE23B250);
    controllersCopy = sub_1E42062B4();
  }

  selfCopy = self;
  sub_1E4115A9C(controllersCopy, animated);
}

- (_TtC8VideosUI25RootSplitTabBarController)initWithTabs:(id)tabs
{
  sub_1E3280A90(0, &unk_1ECF39558);
  sub_1E42062B4();
  sub_1E411607C();
}

- (_TtC8VideosUI25RootSplitTabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E41160E8();
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1E4116184(controllerCopy, viewControllerCopy);

  return 0;
}

@end