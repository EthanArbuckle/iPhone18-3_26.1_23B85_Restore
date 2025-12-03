@interface UnifiedMessagingBubbleTipViewController
- (_TtC8VideosUI39UnifiedMessagingBubbleTipViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
- (void)vui_loadView;
@end

@implementation UnifiedMessagingBubbleTipViewController

- (void)vui_loadView
{
  selfCopy = self;
  sub_1E3D3ACE0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E3D3AF28(appear);
}

- (_TtC8VideosUI39UnifiedMessagingBubbleTipViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1E3D3B48C(v5, v7, bundle);
}

@end