@interface UILocalNotification
+ (UILocalNotification)alloc;
+ (UILocalNotification)allocWithZone:(_NSZone *)a3;
- (UILocalNotification)init;
- (UILocalNotification)initWithCoder:(NSCoder *)coder;
@end

@implementation UILocalNotification

+ (UILocalNotification)alloc
{
  if (objc_opt_class() == a1)
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___UILocalNotification;
    return objc_msgSendSuper2(&v4, sel_alloc);
  }

  else
  {

    return [UIConcreteLocalNotification alloc];
  }
}

+ (UILocalNotification)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___UILocalNotification;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }

  else
  {

    return [(UILocalNotification *)UIConcreteLocalNotification allocWithZone:a3];
  }
}

- (UILocalNotification)init
{
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UILocalNotification.m" lineNumber:944 description:@"UILocalNotification cannot be subclassed"];
  }

  v7.receiver = self;
  v7.super_class = UILocalNotification;
  return [(UILocalNotification *)&v7 init];
}

- (UILocalNotification)initWithCoder:(NSCoder *)coder
{
  v3 = coder;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"UILocalNotification cannot be subclassed" userInfo:0];
  objc_exception_throw(v4);
}

@end