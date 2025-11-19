@interface SBKSyncResponse
+ (id)responseWithResponse:(id)a3 transaction:(id)a4;
- (void)deserializeResponseBodyWithTransaction:(id)a3;
@end

@implementation SBKSyncResponse

+ (id)responseWithResponse:(id)a3 transaction:(id)a4
{
  v6 = a4;
  v7 = [a1 responseWithResponse:a3];
  [v7 deserializeResponseBodyWithTransaction:v6];

  return v7;
}

- (void)deserializeResponseBodyWithTransaction:(id)a3
{
  v4 = a3;
  v7 = [(SBKResponse *)self responseDictionary];
  v5 = [SBKSyncResponseData deserializedResponseBodyWithTransaction:v4 responseDictionary:v7 response:self];

  syncResponseData = self->_syncResponseData;
  self->_syncResponseData = v5;
}

@end