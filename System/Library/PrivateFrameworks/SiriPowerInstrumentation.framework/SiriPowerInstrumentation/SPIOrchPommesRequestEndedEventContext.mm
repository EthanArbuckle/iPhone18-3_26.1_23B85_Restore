@interface SPIOrchPommesRequestEndedEventContext
+ (id)context;
@end

@implementation SPIOrchPommesRequestEndedEventContext

+ (id)context
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SPIOrchPommesRequestEndedEventContext;
  v2 = objc_msgSendSuper2(&v4, sel_context);

  return v2;
}

@end