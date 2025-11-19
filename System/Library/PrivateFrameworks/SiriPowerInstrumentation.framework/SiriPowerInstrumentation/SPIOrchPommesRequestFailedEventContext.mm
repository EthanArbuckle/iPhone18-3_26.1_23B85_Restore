@interface SPIOrchPommesRequestFailedEventContext
+ (id)context;
@end

@implementation SPIOrchPommesRequestFailedEventContext

+ (id)context
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SPIOrchPommesRequestFailedEventContext;
  v2 = objc_msgSendSuper2(&v4, sel_context);

  return v2;
}

@end