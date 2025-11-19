@interface PKPeerPaymentMessagesContentRecipientLoadingViewController
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentMessagesContentRecipientLoadingViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentMessagesContentRecipientLoadingViewController;
  [(PKPeerPaymentMessagesContentRecipientLoadingViewController *)&v5 viewDidLoad];
  v3 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentView];
  v4 = [v3 activityIndicator];
  [v4 startAnimating];
}

@end