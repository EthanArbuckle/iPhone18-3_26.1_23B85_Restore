@interface BannerViewCellController
- (_TtC8VideosUI24BannerViewCellController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)vui_loadView;
- (void)vui_viewWillAppear:(BOOL)a3;
@end

@implementation BannerViewCellController

- (void)vui_loadView
{
  v2 = self;
  sub_1E391D5DC();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1E391D748(a3);
}

- (_TtC8VideosUI24BannerViewCellController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E391D7E4();
}

@end