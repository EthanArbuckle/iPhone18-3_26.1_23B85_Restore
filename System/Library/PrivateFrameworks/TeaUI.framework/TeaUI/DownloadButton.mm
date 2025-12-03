@interface DownloadButton
- (BOOL)accessibilityActivate;
- (void)layoutSubviews;
- (void)startingButtonTappedWithSender:(id)sender;
- (void)tintColorDidChange;
@end

@implementation DownloadButton

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  DownloadButton.accessibilityActivate()();

  return 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  DownloadButton.layoutSubviews()();
}

- (void)tintColorDidChange
{
  selfCopy = self;
  DownloadButton.tintColorDidChange()();
}

- (void)startingButtonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D81059CC();
}

@end