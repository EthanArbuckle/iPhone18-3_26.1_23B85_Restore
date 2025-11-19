@interface MediaShowcaseHostingViewController
- (_TtC8VideosUI34MediaShowcaseHostingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)vui_loadView;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewWillDisappear:(BOOL)a3;
@end

@implementation MediaShowcaseHostingViewController

- (void)vui_loadView
{
  v2 = self;
  sub_1E38B388C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1E38B3A08();
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E38B4324();
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38B523C(v4);
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38B536C(v4);
}

- (_TtC8VideosUI34MediaShowcaseHostingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E38B59BC();
}

@end