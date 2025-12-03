@interface SBFocusActivityBannerAuthority
- (int64_t)shouldMorphToPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable stateChange:(id *)change;
@end

@implementation SBFocusActivityBannerAuthority

- (int64_t)shouldMorphToPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable stateChange:(id *)change
{
  presentableCopy = presentable;
  lastObject = [presentables lastObject];
  requesterIdentifier = [objc_opt_class() requesterIdentifier];
  requesterIdentifier2 = [lastObject requesterIdentifier];
  if (([requesterIdentifier2 isEqual:requesterIdentifier] & 1) == 0)
  {

    goto LABEL_9;
  }

  requesterIdentifier3 = [presentableCopy requesterIdentifier];
  v14 = [requesterIdentifier3 isEqual:requesterIdentifier];

  if (!v14)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  if (responsiblePresentable)
  {
    v15 = lastObject;
    *responsiblePresentable = lastObject;
  }

  if (change)
  {
    *change = MEMORY[0x277CBEC38];
  }

  v16 = 1;
LABEL_10:

  return v16;
}

@end