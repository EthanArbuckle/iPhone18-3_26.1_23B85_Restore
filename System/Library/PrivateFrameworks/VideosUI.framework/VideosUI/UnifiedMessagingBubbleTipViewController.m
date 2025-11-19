@interface UnifiedMessagingBubbleTipViewController
- (_TtC8VideosUI39UnifiedMessagingBubbleTipViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)vui_loadView;
@end

@implementation UnifiedMessagingBubbleTipViewController

- (void)vui_loadView
{
  v2 = self;
  sub_1E3D3ACE0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1E3D3AF28(a3);
}

- (_TtC8VideosUI39UnifiedMessagingBubbleTipViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1E3D3B48C(v5, v7, a4);
}

@end