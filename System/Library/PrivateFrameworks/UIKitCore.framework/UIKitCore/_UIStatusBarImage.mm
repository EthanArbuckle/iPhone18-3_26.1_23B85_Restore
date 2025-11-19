@interface _UIStatusBarImage
+ (id)_kitImageNamed:(id)a3 withTrait:(id)a4;
@end

@implementation _UIStatusBarImage

+ (id)_kitImageNamed:(id)a3 withTrait:(id)a4
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS____UIStatusBarImage;
  v5 = objc_msgSendSuper2(&v8, sel__kitImageNamed_withTrait_, a3, a4);
  if (v5)
  {
    v6 = [[a1 alloc] _initWithOtherImage:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end