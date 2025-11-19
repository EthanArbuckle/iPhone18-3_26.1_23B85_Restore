@interface SBKPushValueResponse
+ (id)responseWithResponse:(id)a3 transaction:(id)a4;
- (void)deserializeResponseBodyWithTransaction:(id)a3;
@end

@implementation SBKPushValueResponse

+ (id)responseWithResponse:(id)a3 transaction:(id)a4
{
  v6 = a4;
  v7 = [a1 responseWithResponse:a3];
  [v7 deserializeResponseBodyWithTransaction:v6];

  return v7;
}

- (void)deserializeResponseBodyWithTransaction:(id)a3
{
  v14 = a3;
  v5 = [(SBKResponse *)self responseDictionary];
  v6 = [v5 objectForKeyedSubscript:@"value"];
  conflictItemValuePayload = self->_conflictItemValuePayload;
  self->_conflictItemValuePayload = v6;

  v8 = self->_conflictItemValuePayload;
  if (v8)
  {
    v3 = [v14 requestItemPayloadPair];
    v9 = [v3 kvsKey];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&self->_conflictItemKey, v9);
  if (v8)
  {
  }

  v10 = self->_conflictItemValuePayload;
  if (v10)
  {
    v11 = [v5 objectForKeyedSubscript:@"version"];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_conflictItemVersionAnchor, v11);
  if (v10)
  {
  }

  v12 = [v5 objectForKeyedSubscript:@"domain-version"];
  domainVersion = self->_domainVersion;
  self->_domainVersion = v12;
}

@end