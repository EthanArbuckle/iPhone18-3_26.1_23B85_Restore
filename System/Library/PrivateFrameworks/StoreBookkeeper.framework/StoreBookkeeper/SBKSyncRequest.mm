@interface SBKSyncRequest
+ (id)requestForTransaction:(id)transaction;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation SBKSyncRequest

+ (id)requestForTransaction:(id)transaction
{
  transactionCopy = transaction;
  syncRequestURL = [transactionCopy syncRequestURL];
  v6 = [self requestWithRequestURL:syncRequestURL];

  [v6 setMethod:1];
  v7 = [(SBKRequestData *)SBKSyncRequestData propertyListBodyWithTransaction:transactionCopy];
  [v6 setBodyDataWithPropertyList:v7];

  [v6 setTransaction:transactionCopy];
  [v6 setIncludeDeviceGUID:1];

  return v6;
}

- (id)canonicalResponseForResponse:(id)response
{
  responseCopy = response;
  transaction = [(SBKRequest *)self transaction];
  v6 = [SBKSyncResponse responseWithResponse:responseCopy transaction:transaction];

  return v6;
}

@end