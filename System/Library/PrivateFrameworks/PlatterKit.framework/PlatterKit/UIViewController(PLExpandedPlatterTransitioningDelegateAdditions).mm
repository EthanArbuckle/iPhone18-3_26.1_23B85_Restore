@interface UIViewController(PLExpandedPlatterTransitioningDelegateAdditions)
- (id)pl_containingClickPresentationInteractionPresentingViewController;
@end

@implementation UIViewController(PLExpandedPlatterTransitioningDelegateAdditions)

- (id)pl_containingClickPresentationInteractionPresentingViewController
{
  v1 = a1;
  if (v1)
  {
    while (![v1 conformsToProtocol:&unk_2833BFE40])
    {
      v2 = [v1 parentViewController];

      v1 = v2;
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    v1 = v1;
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

LABEL_7:

  return v1;
}

@end