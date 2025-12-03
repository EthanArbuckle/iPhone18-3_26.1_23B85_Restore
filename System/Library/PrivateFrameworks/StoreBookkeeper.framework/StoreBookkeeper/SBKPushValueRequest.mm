@interface SBKPushValueRequest
+ (id)propertyListBodyWithTransaction:(id)transaction;
+ (id)requestForTransaction:(id)transaction;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation SBKPushValueRequest

+ (id)requestForTransaction:(id)transaction
{
  transactionCopy = transaction;
  requestURL = [transactionCopy requestURL];
  v6 = [self requestWithRequestURL:requestURL];

  [v6 setMethod:1];
  v7 = [self propertyListBodyWithTransaction:transactionCopy];
  [v6 setBodyDataWithPropertyList:v7];

  [v6 setTransaction:transactionCopy];
  [v6 setIncludeDeviceGUID:1];

  return v6;
}

+ (id)propertyListBodyWithTransaction:(id)transaction
{
  v16[3] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v15[0] = @"domain";
  domain = [transactionCopy domain];
  v16[0] = domain;
  v15[1] = @"key";
  requestItemPayloadPair = [transactionCopy requestItemPayloadPair];
  kvsKey = [requestItemPayloadPair kvsKey];
  v16[1] = kvsKey;
  v15[2] = @"value";
  requestItemPayloadPair2 = [transactionCopy requestItemPayloadPair];
  kvsPayload = [requestItemPayloadPair2 kvsPayload];
  v16[2] = kvsPayload;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v10 = [v9 mutableCopy];

  requestItemVersionAnchor = [transactionCopy requestItemVersionAnchor];

  if (requestItemVersionAnchor)
  {
    requestItemVersionAnchor2 = [transactionCopy requestItemVersionAnchor];
    [v10 setObject:requestItemVersionAnchor2 forKeyedSubscript:@"base-version"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)canonicalResponseForResponse:(id)response
{
  responseCopy = response;
  transaction = [(SBKRequest *)self transaction];
  v6 = [SBKPushValueResponse responseWithResponse:responseCopy transaction:transaction];

  return v6;
}

@end