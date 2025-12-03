@interface SBFlashlightActivityBannerAuthority
- (int64_t)shouldMorphToPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable stateChange:(id *)change;
@end

@implementation SBFlashlightActivityBannerAuthority

- (int64_t)shouldMorphToPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable stateChange:(id *)change
{
  presentableCopy = presentable;
  lastObject = [presentables lastObject];
  v11 = +[SBFlashlightPreviewPresentableViewController requesterIdentifier];
  requesterIdentifier = [lastObject requesterIdentifier];
  if (([requesterIdentifier isEqual:v11] & 1) == 0)
  {

    goto LABEL_9;
  }

  requesterIdentifier2 = [presentableCopy requesterIdentifier];
  v14 = [requesterIdentifier2 isEqual:v11];

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