@interface CIImage(UIKitAdditions)
- (uint64_t)initWithImage:()UIKitAdditions;
- (uint64_t)initWithImage:()UIKitAdditions options:;
@end

@implementation CIImage(UIKitAdditions)

- (uint64_t)initWithImage:()UIKitAdditions
{
  v5 = a3;
  v6 = [a3 CGImage];
  if (v6)
  {

    return [a1 initWithCGImage:v6];
  }

  else
  {

    return 0;
  }
}

- (uint64_t)initWithImage:()UIKitAdditions options:
{
  v6 = a4;
  v7 = [a3 CGImage];
  if (v7)
  {
    v8 = [a1 initWithCGImage:v7 options:v6];
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

@end