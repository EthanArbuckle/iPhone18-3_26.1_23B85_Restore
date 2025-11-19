@interface TSPRXReconnectWaitingViewController
- (TSPRXReconnectWaitingViewController)initWithTitle:(id)a3 subtitle:(id)a4;
@end

@implementation TSPRXReconnectWaitingViewController

- (TSPRXReconnectWaitingViewController)initWithTitle:(id)a3 subtitle:(id)a4
{
  v8.receiver = self;
  v8.super_class = TSPRXReconnectWaitingViewController;
  v4 = [(TSIDSSimTransferringViewController *)&v8 initWithTitle:a3 subtitle:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end