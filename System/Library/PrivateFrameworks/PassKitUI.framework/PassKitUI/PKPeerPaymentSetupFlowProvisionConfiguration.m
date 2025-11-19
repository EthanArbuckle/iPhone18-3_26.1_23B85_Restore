@interface PKPeerPaymentSetupFlowProvisionConfiguration
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (PKPeerPaymentSetupFlowProvisionConfiguration)initWithSetupDelegate:(id)a3;
@end

@implementation PKPeerPaymentSetupFlowProvisionConfiguration

- (PKPeerPaymentSetupFlowProvisionConfiguration)initWithSetupDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPeerPaymentSetupFlowProvisionConfiguration;
  v5 = [(PKPeerPaymentSetupFlowProvisionConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_setupDelegate, v4);
  }

  return v6;
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end