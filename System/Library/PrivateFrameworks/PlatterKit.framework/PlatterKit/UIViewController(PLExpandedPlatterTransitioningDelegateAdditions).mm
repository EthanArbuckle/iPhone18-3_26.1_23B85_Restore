@interface UIViewController(PLExpandedPlatterTransitioningDelegateAdditions)
- (id)pl_containingClickPresentationInteractionPresentingViewController;
@end

@implementation UIViewController(PLExpandedPlatterTransitioningDelegateAdditions)

- (id)pl_containingClickPresentationInteractionPresentingViewController
{
  selfCopy = self;
  if (selfCopy)
  {
    while (![selfCopy conformsToProtocol:&unk_2833BFE40])
    {
      parentViewController = [selfCopy parentViewController];

      selfCopy = parentViewController;
      if (!parentViewController)
      {
        goto LABEL_7;
      }
    }

    selfCopy = selfCopy;
    parentViewController = selfCopy;
  }

  else
  {
    parentViewController = 0;
  }

LABEL_7:

  return selfCopy;
}

@end