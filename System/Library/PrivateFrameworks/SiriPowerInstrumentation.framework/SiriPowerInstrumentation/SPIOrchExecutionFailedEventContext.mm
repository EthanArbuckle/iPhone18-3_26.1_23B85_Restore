@interface SPIOrchExecutionFailedEventContext
+ (id)context;
@end

@implementation SPIOrchExecutionFailedEventContext

+ (id)context
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SPIOrchExecutionFailedEventContext;
  v2 = objc_msgSendSuper2(&v4, sel_context);

  return v2;
}

@end