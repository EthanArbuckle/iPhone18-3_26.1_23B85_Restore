@interface STUIStatusBarImage
+ (id)_kitImageNamed:(id)named withTrait:(id)trait;
@end

@implementation STUIStatusBarImage

+ (id)_kitImageNamed:(id)named withTrait:(id)trait
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___STUIStatusBarImage;
  v5 = objc_msgSendSuper2(&v8, sel__kitImageNamed_withTrait_, named, trait);
  if (v5)
  {
    v6 = [[self alloc] _initWithOtherImage:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end