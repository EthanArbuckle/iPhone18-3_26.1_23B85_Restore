@interface PKDashboardPeerPaymentPendingRequestItem
+ (id)itemWithPendingRequest:(id)a3 transactionSourceCollection:(id)a4;
@end

@implementation PKDashboardPeerPaymentPendingRequestItem

+ (id)itemWithPendingRequest:(id)a3 transactionSourceCollection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PKDashboardPeerPaymentPendingRequestItem);
  [(PKDashboardPeerPaymentPendingRequestItem *)v7 setPendingRequest:v6];

  [(PKDashboardPeerPaymentPendingRequestItem *)v7 setTransactionSourceCollection:v5];

  return v7;
}

@end