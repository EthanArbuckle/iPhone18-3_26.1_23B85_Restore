@interface CIColor(UIKitAdditions)
- (uint64_t)initWithColor:()UIKitAdditions;
@end

@implementation CIColor(UIKitAdditions)

- (uint64_t)initWithColor:()UIKitAdditions
{
  v5 = a3;
  v6 = [a3 CGColor];

  return [a1 initWithCGColor:v6];
}

@end