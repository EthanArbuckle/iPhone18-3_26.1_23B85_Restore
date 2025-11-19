@interface RootSplitTabBarController
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (_TtC8VideosUI25RootSplitTabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8VideosUI25RootSplitTabBarController)initWithTabs:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RootSplitTabBarController

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E4115354(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1E411591C(a3, &selRef_viewWillAppear_, &OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForAppear, 1);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1E411591C(a3, &selRef_viewWillDisappear_, &OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForDissapear, 0);
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  if (a3)
  {
    sub_1E3280A90(0, &qword_1EE23B250);
    v5 = sub_1E42062B4();
  }

  v7 = self;
  sub_1E4115A9C(v5, a4);
}

- (_TtC8VideosUI25RootSplitTabBarController)initWithTabs:(id)a3
{
  sub_1E3280A90(0, &unk_1ECF39558);
  sub_1E42062B4();
  sub_1E411607C();
}

- (_TtC8VideosUI25RootSplitTabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E41160E8();
}

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1E4116184(v6, v7);

  return 0;
}

@end