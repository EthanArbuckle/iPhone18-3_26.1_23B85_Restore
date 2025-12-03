@interface UIViewController(Flow)
- (id)flow;
@end

@implementation UIViewController(Flow)

- (id)flow
{
  if ([self conformsToProtocol:&unk_28758ABD0])
  {
    delegate = [self delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = delegate;
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