@interface SBFlashlightActivityBannerAuthority
- (int64_t)shouldMorphToPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5 stateChange:(id *)a6;
@end

@implementation SBFlashlightActivityBannerAuthority

- (int64_t)shouldMorphToPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5 stateChange:(id *)a6
{
  v9 = a3;
  v10 = [a4 lastObject];
  v11 = +[SBFlashlightPreviewPresentableViewController requesterIdentifier];
  v12 = [v10 requesterIdentifier];
  if (([v12 isEqual:v11] & 1) == 0)
  {

    goto LABEL_9;
  }

  v13 = [v9 requesterIdentifier];
  v14 = [v13 isEqual:v11];

  if (!v14)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  if (a5)
  {
    v15 = v10;
    *a5 = v10;
  }

  if (a6)
  {
    *a6 = MEMORY[0x277CBEC38];
  }

  v16 = 1;
LABEL_10:

  return v16;
}

@end