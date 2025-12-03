@interface SPIOrchRequestFailedEventContext
+ (id)context;
@end

@implementation SPIOrchRequestFailedEventContext

+ (id)context
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SPIOrchRequestFailedEventContext;
  v2 = objc_msgSendSuper2(&v4, sel_context);

  return v2;
}

@end