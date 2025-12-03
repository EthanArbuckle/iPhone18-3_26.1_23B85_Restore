@interface BannerViewCellController
- (_TtC8VideosUI24BannerViewCellController)initWithNibName:(id)name bundle:(id)bundle;
- (void)vui_loadView;
- (void)vui_viewWillAppear:(BOOL)appear;
@end

@implementation BannerViewCellController

- (void)vui_loadView
{
  selfCopy = self;
  sub_1E391D5DC();
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E391D748(appear);
}

- (_TtC8VideosUI24BannerViewCellController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E391D7E4();
}

@end