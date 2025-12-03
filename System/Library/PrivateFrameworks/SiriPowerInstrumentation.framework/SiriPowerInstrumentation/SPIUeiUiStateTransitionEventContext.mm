@interface SPIUeiUiStateTransitionEventContext
+ (id)context;
@end

@implementation SPIUeiUiStateTransitionEventContext

+ (id)context
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SPIUeiUiStateTransitionEventContext;
  v2 = objc_msgSendSuper2(&v4, sel_context);

  return v2;
}

@end