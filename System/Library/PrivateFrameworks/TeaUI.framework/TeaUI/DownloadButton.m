@interface DownloadButton
- (BOOL)accessibilityActivate;
- (void)layoutSubviews;
- (void)startingButtonTappedWithSender:(id)a3;
- (void)tintColorDidChange;
@end

@implementation DownloadButton

- (BOOL)accessibilityActivate
{
  v2 = self;
  DownloadButton.accessibilityActivate()();

  return 1;
}

- (void)layoutSubviews
{
  v2 = self;
  DownloadButton.layoutSubviews()();
}

- (void)tintColorDidChange
{
  v2 = self;
  DownloadButton.tintColorDidChange()();
}

- (void)startingButtonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D81059CC();
}

@end