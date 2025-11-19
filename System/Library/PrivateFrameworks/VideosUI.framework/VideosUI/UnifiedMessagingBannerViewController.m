@interface UnifiedMessagingBannerViewController
- (_TtC8VideosUI36UnifiedMessagingBannerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)vui_loadView;
@end

@implementation UnifiedMessagingBannerViewController

- (void)vui_loadView
{
  v2 = self;
  sub_1E3AC67D8();
}

- (_TtC8VideosUI36UnifiedMessagingBannerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1E3AC6AF8(v5, v7, a4);
}

@end