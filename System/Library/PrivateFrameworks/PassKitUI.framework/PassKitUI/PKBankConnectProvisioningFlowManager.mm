@interface PKBankConnectProvisioningFlowManager
- (FKBankConnectProvisioningFlowDelegate)delegate;
- (PKBankConnectProvisioningFlowManager)initWithPaymentPass:(id)a3 institution:(id)a4;
@end

@implementation PKBankConnectProvisioningFlowManager

- (PKBankConnectProvisioningFlowManager)initWithPaymentPass:(id)a3 institution:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PKBankConnectProvisioningFlowManager;
  v8 = [(PKBankConnectProvisioningFlowManager *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(getFKBankConnectProvisioningFlowManagerClass[0]()) initWithPaymentPass:v6 institution:v7];
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