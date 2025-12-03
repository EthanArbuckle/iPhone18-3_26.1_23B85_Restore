@interface CIColor(UIKitAdditions)
- (uint64_t)initWithColor:()UIKitAdditions;
@end

@implementation CIColor(UIKitAdditions)

- (uint64_t)initWithColor:()UIKitAdditions
{
  v5 = a3;
  cGColor = [a3 CGColor];

  return [self initWithCGColor:cGColor];
}

@end