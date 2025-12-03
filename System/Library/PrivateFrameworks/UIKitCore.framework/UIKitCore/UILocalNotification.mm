@interface UILocalNotification
+ (UILocalNotification)alloc;
+ (UILocalNotification)allocWithZone:(_NSZone *)zone;
- (UILocalNotification)init;
- (UILocalNotification)initWithCoder:(NSCoder *)coder;
@end

@implementation UILocalNotification

+ (UILocalNotification)alloc
{
  if (objc_opt_class() == self)
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___UILocalNotification;
    return objc_msgSendSuper2(&v4, sel_alloc);
  }

  else
  {

    return [UIConcreteLocalNotification alloc];
  }
}

+ (UILocalNotification)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___UILocalNotification;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }

  else
  {

    return [(UILocalNotification *)UIConcreteLocalNotification allocWithZone:zone];
  }
}

- (UILocalNotification)init
{
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UILocalNotification.m" lineNumber:944 description:@"UILocalNotification cannot be subclassed"];
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