@interface PKPeerPaymentAssociatedAccountControllerDoneTapHelper
- (PKPeerPaymentAssociatedAccountControllerDoneTapHelper)initWithNavigationController:(id)controller;
@end

@implementation PKPeerPaymentAssociatedAccountControllerDoneTapHelper

- (PKPeerPaymentAssociatedAccountControllerDoneTapHelper)initWithNavigationController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentAssociatedAccountControllerDoneTapHelper;
  v6 = [(PKPeerPaymentAssociatedAccountControllerDoneTapHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationController, controller);
  }

  return v7;
}

@end