@interface PUOneUpNavigationTitleSubtitleViewProvider
- (PUOneUpNavigationTitleSubtitleView)titleSubtitleView;
- (PUOneUpNavigationTitleSubtitleViewDelegate)_viewDelegate;
- (PUOneUpNavigationTitleSubtitleViewDelegate)viewDelegate;
- (void)setInputAsset:(id)asset;
- (void)setTitleContentMode:(int64_t)mode;
- (void)setViewDelegate:(id)delegate;
- (void)set_viewDelegate:(id)delegate;
@end

@implementation PUOneUpNavigationTitleSubtitleViewProvider

- (PUOneUpNavigationTitleSubtitleViewDelegate)_viewDelegate
{
  v2 = sub_1B383D434();

  return v2;
}

- (void)set_viewDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B383D4A4();
}

- (PUOneUpNavigationTitleSubtitleViewDelegate)viewDelegate
{
  selfCopy = self;
  v3 = sub_1B383D6A0();

  return v3;
}

- (void)setViewDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B383D7AC();
}

- (void)setTitleContentMode:(int64_t)mode
{
  selfCopy = self;
  sub_1B383D888(mode);
}

- (PUOneUpNavigationTitleSubtitleView)titleSubtitleView
{
  selfCopy = self;
  v3 = sub_1B383DA6C();

  return v3;
}

- (void)setInputAsset:(id)asset
{
  swift_unknownObjectRetain();
  selfCopy = self;
  OneUpNavigationTitleSubtitleViewProvider.setInputAsset(_:)(asset);
  swift_unknownObjectRelease();
}

@end