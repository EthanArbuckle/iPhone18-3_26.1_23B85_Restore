@interface TSCH3DSharegroupToken
+ (id)sharegroupMapWithDevice:(id)a3;
@end

@implementation TSCH3DSharegroupToken

+ (id)sharegroupMapWithDevice:(id)a3
{
  v6 = objc_msgSend_tokenWithDevice_(TSCH3DSharegroupMapSharegroupToken, a2, v3, v4, v5, a3);

  return v6;
}

@end