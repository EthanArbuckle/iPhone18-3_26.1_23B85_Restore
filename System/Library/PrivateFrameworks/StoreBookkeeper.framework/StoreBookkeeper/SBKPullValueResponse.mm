@interface SBKPullValueResponse
+ (id)responseWithResponse:(id)response transaction:(id)transaction;
- (void)deserializeResponseBodyWithTransaction:(id)transaction;
@end

@implementation SBKPullValueResponse

+ (id)responseWithResponse:(id)response transaction:(id)transaction
{
  transactionCopy = transaction;
  v7 = [self responseWithResponse:response];
  [v7 deserializeResponseBodyWithTransaction:transactionCopy];

  return v7;
}

- (void)deserializeResponseBodyWithTransaction:(id)transaction
{
  responseDictionary = [(SBKResponse *)self responseDictionary];
  v4 = [responseDictionary objectForKeyedSubscript:@"key"];
  itemKey = self->_itemKey;
  self->_itemKey = v4;

  v6 = [responseDictionary objectForKeyedSubscript:@"value"];
  itemValuePayload = self->_itemValuePayload;
  self->_itemValuePayload = v6;

  v8 = [responseDictionary objectForKeyedSubscript:@"version"];
  itemVersion = self->_itemVersion;
  self->_itemVersion = v8;

  v10 = [responseDictionary objectForKeyedSubscript:@"domain-version"];
  domainVersion = self->_domainVersion;
  self->_domainVersion = v10;
}

@end