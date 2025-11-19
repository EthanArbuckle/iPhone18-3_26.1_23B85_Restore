@interface UIViewController(Flow)
- (id)flow;
@end

@implementation UIViewController(Flow)

- (id)flow
{
  if ([a1 conformsToProtocol:&unk_28758ABD0])
  {
    v2 = [a1 delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end