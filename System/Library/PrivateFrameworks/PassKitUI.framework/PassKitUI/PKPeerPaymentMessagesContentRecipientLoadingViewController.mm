@interface PKPeerPaymentMessagesContentRecipientLoadingViewController
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentMessagesContentRecipientLoadingViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentMessagesContentRecipientLoadingViewController;
  [(PKPeerPaymentMessagesContentRecipientLoadingViewController *)&v5 viewDidLoad];
  contentView = [(PKPeerPaymentMessagesContentBaseViewController *)self contentView];
  activityIndicator = [contentView activityIndicator];
  [activityIndicator startAnimating];
}

@end