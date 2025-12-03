@interface TSPRXReconnectWaitingViewController
- (TSPRXReconnectWaitingViewController)initWithTitle:(id)title subtitle:(id)subtitle;
@end

@implementation TSPRXReconnectWaitingViewController

- (TSPRXReconnectWaitingViewController)initWithTitle:(id)title subtitle:(id)subtitle
{
  v8.receiver = self;
  v8.super_class = TSPRXReconnectWaitingViewController;
  v4 = [(TSIDSSimTransferringViewController *)&v8 initWithTitle:title subtitle:subtitle];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end