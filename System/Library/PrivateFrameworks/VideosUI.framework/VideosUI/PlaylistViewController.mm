@interface PlaylistViewController
- (_TtC8VideosUI22PlaylistViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)a3;
@end

@implementation PlaylistViewController

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E37F3E4C();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E37F3F48(a3);
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E37F4048(a3);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E37F41F8(a3);
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E37F475C();
}

- (_TtC8VideosUI22PlaylistViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E37F849C();
}

@end