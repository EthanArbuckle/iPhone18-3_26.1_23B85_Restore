@interface PKBankConnectProvisioningFlowManager
- (FKBankConnectProvisioningFlowDelegate)delegate;
- (PKBankConnectProvisioningFlowManager)initWithPaymentPass:(id)pass institution:(id)institution;
@end

@implementation PKBankConnectProvisioningFlowManager

- (PKBankConnectProvisioningFlowManager)initWithPaymentPass:(id)pass institution:(id)institution
{
  passCopy = pass;
  institutionCopy = institution;
  v12.receiver = self;
  v12.super_class = PKBankConnectProvisioningFlowManager;
  v8 = [(PKBankConnectProvisioningFlowManager *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(getFKBankConnectProvisioningFlowManagerClass[0]()) initWithPaymentPass:passCopy institution:institutionCopy];
    manager = v8->_manager;
    v8->_manager = v9;
  }

  return v8;
}

- (FKBankConnectProvisioningFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end