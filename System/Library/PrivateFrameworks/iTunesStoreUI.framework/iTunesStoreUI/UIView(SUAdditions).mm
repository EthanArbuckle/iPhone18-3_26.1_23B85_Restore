@interface UIView(SUAdditions)
- (uint64_t)centerSubviewInBounds:()SUAdditions;
- (uint64_t)superviewOfClass:()SUAdditions;
@end

@implementation UIView(SUAdditions)

- (uint64_t)centerSubviewInBounds:()SUAdditions
{
  [self bounds];
  v5 = v4;
  v7 = v6;
  [a3 frame];
  v9 = (v5 - v8) * 0.5;
  v11 = (v7 - v10) * 0.5;
  [a3 setFrame:{floorf(v9), floorf(v11)}];

  return [a3 setAutoresizingMask:45];
}

- (uint64_t)superviewOfClass:()SUAdditions
{
  while (1)
  {
    superview = [self superview];
    if (!superview || (objc_opt_isKindOfClass() & 1) != 0)
    {
      break;
    }

    self = superview;
  }

  return superview;
}

@end