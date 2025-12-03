@interface PKPaymentPassActionGroupDataController
- (PKPaymentPassActionGroupDataController)initWithPass:(id)pass actionGroups:(id)groups paymentDataProvider:(id)provider webService:(id)service;
- (UIViewController)viewController;
- (void)remoteGroupActionsViewControllerDidCancel:(id)cancel;
- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)group;
- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)payment;
- (void)selectActionGroupViewControllerDidCancel:(id)cancel;
- (void)selectActionGroupViewControllerDidPerformFetchActionGroup:(id)group;
@end

@implementation PKPaymentPassActionGroupDataController

- (PKPaymentPassActionGroupDataController)initWithPass:(id)pass actionGroups:(id)groups paymentDataProvider:(id)provider webService:(id)service
{
  passCopy = pass;
  groupsCopy = groups;
  providerCopy = provider;
  serviceCopy = service;
  v18.receiver = self;
  v18.super_class = PKPaymentPassActionGroupDataController;
  v15 = [(PKPaymentPassActionGroupDataController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_pass, pass);
    objc_storeStrong(&v16->_actionGroups, groups);
    objc_storeStrong(&v16->_paymentDataProvider, provider);
    objc_storeStrong(&v16->_webService, service);
  }

  return v16;
}

- (UIViewController)viewController
{
  v3 = [(NSArray *)self->_actionGroups count];
  if (v3)
  {
    if (v3 == 1)
    {
      firstObject = [(NSArray *)self->_actionGroups firstObject];
      v5 = [[PKRemoteActionGroupViewController alloc] initWithPass:self->_pass actionGroup:firstObject paymentDataProvider:self->_paymentDataProvider webService:self->_webService];
      [(PKRemoteActionGroupViewController *)v5 setDelegate:self];
    }

    else
    {
      v5 = [[PKSelectActionGroupViewController alloc] initWithPass:self->_pass actionGroups:self->_actionGroups paymentDataProvider:self->_paymentDataProvider webService:self->_webService];
      [(PKRemoteActionGroupViewController *)v5 setDelegate:self];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)remoteGroupActionsViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  [cancelCopy setDelegate:0];
  navigationController = [cancelCopy navigationController];

  v4 = [navigationController popViewControllerAnimated:0];
}

- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)group
{
  groupCopy = group;
  [groupCopy setDelegate:0];
  navigationController = [groupCopy navigationController];

  v4 = [navigationController popViewControllerAnimated:0];
}

- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)payment
{
  paymentCopy = payment;
  navigationController = [paymentCopy navigationController];
  v4 = [navigationController popViewControllerAnimated:0];

  [paymentCopy setDelegate:0];
}

- (void)selectActionGroupViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  navigationController = [cancelCopy navigationController];
  v4 = [navigationController popViewControllerAnimated:0];

  [cancelCopy setDelegate:0];
}

- (void)selectActionGroupViewControllerDidPerformFetchActionGroup:(id)group
{
  groupCopy = group;
  navigationController = [groupCopy navigationController];
  v4 = [navigationController popViewControllerAnimated:0];

  [groupCopy setDelegate:0];
}

@end