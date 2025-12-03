@interface SBKSyncResponse
+ (id)responseWithResponse:(id)response transaction:(id)transaction;
- (void)deserializeResponseBodyWithTransaction:(id)transaction;
@end

@implementation SBKSyncResponse

+ (id)responseWithResponse:(id)response transaction:(id)transaction
{
  transactionCopy = transaction;
  v7 = [self responseWithResponse:response];
  [v7 deserializeResponseBodyWithTransaction:transactionCopy];

  return v7;
}

- (void)deserializeResponseBodyWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  responseDictionary = [(SBKResponse *)self responseDictionary];
  v5 = [SBKSyncResponseData deserializedResponseBodyWithTransaction:transactionCopy responseDictionary:responseDictionary response:self];

  syncResponseData = self->_syncResponseData;
  self->_syncResponseData = v5;
}

@end