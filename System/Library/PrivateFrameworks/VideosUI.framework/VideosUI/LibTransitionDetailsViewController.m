@interface LibTransitionDetailsViewController
- (UIViewController)detailsViewController;
- (_TtC8VideosUI34LibTransitionDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setDetailsViewController:(id)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)a3;
- (void)vui_viewWillDisappear:(BOOL)a3;
@end

@implementation LibTransitionDetailsViewController

- (UIViewController)detailsViewController
{
  v2 = sub_1E4022D90();

  return v2;
}

- (void)setDetailsViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E4022E1C(a3);
}

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E40235EC();
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E4023930();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E4023A60(v4);
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E4023BA8(v4);
}

- (_TtC8VideosUI34LibTransitionDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E40258B8();
}

@end