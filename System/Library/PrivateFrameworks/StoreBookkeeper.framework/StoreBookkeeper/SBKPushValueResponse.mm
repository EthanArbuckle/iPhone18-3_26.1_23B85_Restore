@interface SBKPushValueResponse
+ (id)responseWithResponse:(id)response transaction:(id)transaction;
- (void)deserializeResponseBodyWithTransaction:(id)transaction;
@end

@implementation SBKPushValueResponse

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
  v6 = [responseDictionary objectForKeyedSubscript:@"value"];
  conflictItemValuePayload = self->_conflictItemValuePayload;
  self->_conflictItemValuePayload = v6;

  v8 = self->_conflictItemValuePayload;
  if (v8)
  {
    requestItemPayloadPair = [transactionCopy requestItemPayloadPair];
    kvsKey = [requestItemPayloadPair kvsKey];
  }

  else
  {
    kvsKey = 0;
  }

  objc_storeStrong(&self->_conflictItemKey, kvsKey);
  if (v8)
  {
  }

  v10 = self->_conflictItemValuePayload;
  if (v10)
  {
    v11 = [responseDictionary objectForKeyedSubscript:@"version"];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_conflictItemVersionAnchor, v11);
  if (v10)
  {
  }

  v12 = [responseDictionary objectForKeyedSubscript:@"domain-version"];
  domainVersion = self->_domainVersion;
  self->_domainVersion = v12;
}

@end