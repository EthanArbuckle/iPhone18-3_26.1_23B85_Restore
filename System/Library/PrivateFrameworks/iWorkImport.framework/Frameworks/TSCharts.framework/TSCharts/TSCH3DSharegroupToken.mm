@interface TSCH3DSharegroupToken
+ (id)sharegroupMapWithDevice:(id)device;
@end

@implementation TSCH3DSharegroupToken

+ (id)sharegroupMapWithDevice:(id)device
{
  v6 = objc_msgSend_tokenWithDevice_(TSCH3DSharegroupMapSharegroupToken, a2, v3, v4, v5, device);

  return v6;
}

@end