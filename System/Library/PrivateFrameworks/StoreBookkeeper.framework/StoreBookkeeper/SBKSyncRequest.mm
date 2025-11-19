@interface SBKSyncRequest
+ (id)requestForTransaction:(id)a3;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation SBKSyncRequest

+ (id)requestForTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 syncRequestURL];
  v6 = [a1 requestWithRequestURL:v5];

  [v6 setMethod:1];
  v7 = [(SBKRequestData *)SBKSyncRequestData propertyListBodyWithTransaction:v4];
  [v6 setBodyDataWithPropertyList:v7];

  [v6 setTransaction:v4];
  [v6 setIncludeDeviceGUID:1];

  return v6;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v4 = a3;
  v5 = [(SBKRequest *)self transaction];
  v6 = [SBKSyncResponse responseWithResponse:v4 transaction:v5];

  return v6;
}

@end