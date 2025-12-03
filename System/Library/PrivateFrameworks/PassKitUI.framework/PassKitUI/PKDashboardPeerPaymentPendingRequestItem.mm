@interface PKDashboardPeerPaymentPendingRequestItem
+ (id)itemWithPendingRequest:(id)request transactionSourceCollection:(id)collection;
@end

@implementation PKDashboardPeerPaymentPendingRequestItem

+ (id)itemWithPendingRequest:(id)request transactionSourceCollection:(id)collection
{
  collectionCopy = collection;
  requestCopy = request;
  v7 = objc_alloc_init(PKDashboardPeerPaymentPendingRequestItem);
  [(PKDashboardPeerPaymentPendingRequestItem *)v7 setPendingRequest:requestCopy];

  [(PKDashboardPeerPaymentPendingRequestItem *)v7 setTransactionSourceCollection:collectionCopy];

  return v7;
}

@end