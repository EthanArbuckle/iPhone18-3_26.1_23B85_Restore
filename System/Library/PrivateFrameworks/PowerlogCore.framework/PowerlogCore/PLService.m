@interface PLService
+ (void)load;
@end

@implementation PLService

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___PLService;
    objc_msgSendSuper2(&v4, sel_load);
  }
}

@end