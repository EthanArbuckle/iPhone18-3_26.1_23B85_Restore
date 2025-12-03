@interface SWTransparencySFAnalytics
+ (id)logger;
@end

@implementation SWTransparencySFAnalytics

+ (id)logger
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SWTransparencySFAnalytics;
  v2 = objc_msgSendSuper2(&v4, sel_logger);

  return v2;
}

@end