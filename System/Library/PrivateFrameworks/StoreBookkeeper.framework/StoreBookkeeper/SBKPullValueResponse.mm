@interface SBKPullValueResponse
+ (id)responseWithResponse:(id)a3 transaction:(id)a4;
- (void)deserializeResponseBodyWithTransaction:(id)a3;
@end

@implementation SBKPullValueResponse

+ (id)responseWithResponse:(id)a3 transaction:(id)a4
{
  v6 = a4;
  v7 = [a1 responseWithResponse:a3];
  [v7 deserializeResponseBodyWithTransaction:v6];

  return v7;
}

- (void)deserializeResponseBodyWithTransaction:(id)a3
{
  v12 = [(SBKResponse *)self responseDictionary];
  v4 = [v12 objectForKeyedSubscript:@"key"];
  itemKey = self->_itemKey;
  self->_itemKey = v4;

  v6 = [v12 objectForKeyedSubscript:@"value"];
  itemValuePayload = self->_itemValuePayload;
  self->_itemValuePayload = v6;

  v8 = [v12 objectForKeyedSubscript:@"version"];
  itemVersion = self->_itemVersion;
  self->_itemVersion = v8;

  v10 = [v12 objectForKeyedSubscript:@"domain-version"];
  domainVersion = self->_domainVersion;
  self->_domainVersion = v10;
}

@end