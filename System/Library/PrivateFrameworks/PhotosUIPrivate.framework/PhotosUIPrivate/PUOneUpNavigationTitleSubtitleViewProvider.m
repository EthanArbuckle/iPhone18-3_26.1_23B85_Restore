@interface PUOneUpNavigationTitleSubtitleViewProvider
- (PUOneUpNavigationTitleSubtitleView)titleSubtitleView;
- (PUOneUpNavigationTitleSubtitleViewDelegate)_viewDelegate;
- (PUOneUpNavigationTitleSubtitleViewDelegate)viewDelegate;
- (void)setInputAsset:(id)a3;
- (void)setTitleContentMode:(int64_t)a3;
- (void)setViewDelegate:(id)a3;
- (void)set_viewDelegate:(id)a3;
@end

@implementation PUOneUpNavigationTitleSubtitleViewProvider

- (PUOneUpNavigationTitleSubtitleViewDelegate)_viewDelegate
{
  v2 = sub_1B383D434();

  return v2;
}

- (void)set_viewDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B383D4A4();
}

- (PUOneUpNavigationTitleSubtitleViewDelegate)viewDelegate
{
  v2 = self;
  v3 = sub_1B383D6A0();

  return v3;
}

- (void)setViewDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B383D7AC();
}

- (void)setTitleContentMode:(int64_t)a3
{
  v4 = self;
  sub_1B383D888(a3);
}

- (PUOneUpNavigationTitleSubtitleView)titleSubtitleView
{
  v2 = self;
  v3 = sub_1B383DA6C();

  return v3;
}

- (void)setInputAsset:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  OneUpNavigationTitleSubtitleViewProvider.setInputAsset(_:)(a3);
  swift_unknownObjectRelease();
}

@end