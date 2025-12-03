@interface SPIUeiLaunchEndedEventContext
+ (id)context;
@end

@implementation SPIUeiLaunchEndedEventContext

+ (id)context
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SPIUeiLaunchEndedEventContext;
  v2 = objc_msgSendSuper2(&v4, sel_context);

  return v2;
}

@end