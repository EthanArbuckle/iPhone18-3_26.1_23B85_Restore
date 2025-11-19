@interface PKPeerPaymentAssociatedAccountControllerDoneTapHelper
- (PKPeerPaymentAssociatedAccountControllerDoneTapHelper)initWithNavigationController:(id)a3;
@end

@implementation PKPeerPaymentAssociatedAccountControllerDoneTapHelper

- (PKPeerPaymentAssociatedAccountControllerDoneTapHelper)initWithNavigationController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentAssociatedAccountControllerDoneTapHelper;
  v6 = [(PKPeerPaymentAssociatedAccountControllerDoneTapHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationController, a3);
  }

  return v7;
}

@end