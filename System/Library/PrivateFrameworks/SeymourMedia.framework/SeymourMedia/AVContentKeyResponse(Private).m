@interface AVContentKeyResponse(Private)
+ (id)smu_contentKeyResponseWithFairPlayStreamingKeyResponseData:()Private renewalDate:;
@end

@implementation AVContentKeyResponse(Private)

+ (id)smu_contentKeyResponseWithFairPlayStreamingKeyResponseData:()Private renewalDate:
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() contentKeyResponseWithFairPlayStreamingKeyResponseData:v6 renewalDate:v5];

  return v7;
}

@end