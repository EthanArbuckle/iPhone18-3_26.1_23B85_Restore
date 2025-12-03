@interface PlaylistViewController
- (_TtC8VideosUI22PlaylistViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)appear;
@end

@implementation PlaylistViewController

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E37F3E4C();
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E37F3F48(appear);
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E37F4048(appear);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E37F41F8(disappear);
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E37F475C();
}

- (_TtC8VideosUI22PlaylistViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E37F849C();
}

@end