@interface SPISiriActivatedEventContext
+ (id)context;
@end

@implementation SPISiriActivatedEventContext

+ (id)context
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SPISiriActivatedEventContext;
  v2 = objc_msgSendSuper2(&v4, sel_context);

  return v2;
}

@end