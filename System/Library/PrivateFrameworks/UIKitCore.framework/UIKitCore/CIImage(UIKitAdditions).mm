@interface CIImage(UIKitAdditions)
- (uint64_t)initWithImage:()UIKitAdditions;
- (uint64_t)initWithImage:()UIKitAdditions options:;
@end

@implementation CIImage(UIKitAdditions)

- (uint64_t)initWithImage:()UIKitAdditions
{
  v5 = a3;
  cGImage = [a3 CGImage];
  if (cGImage)
  {

    return [self initWithCGImage:cGImage];
  }

  else
  {

    return 0;
  }
}

- (uint64_t)initWithImage:()UIKitAdditions options:
{
  v6 = a4;
  cGImage = [a3 CGImage];
  if (cGImage)
  {
    v8 = [self initWithCGImage:cGImage options:v6];
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

@end