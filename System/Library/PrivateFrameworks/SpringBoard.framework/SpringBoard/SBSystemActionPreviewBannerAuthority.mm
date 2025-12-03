@interface SBSystemActionPreviewBannerAuthority
- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)presentable withPresentable:(id)withPresentable;
- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable;
@end

@implementation SBSystemActionPreviewBannerAuthority

- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable
{
  presentableCopy = presentable;
  withPresentableCopy = withPresentable;
  v8 = +[SBSystemActionSimplePreviewPresentableViewController requesterIdentifier];
  requesterIdentifier = [presentableCopy requesterIdentifier];
  v10 = [requesterIdentifier isEqual:v8];
  if ((v10 & 1) != 0 || ([withPresentableCopy requesterIdentifier], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "isEqual:", v8)))
  {
    requesterIdentifier2 = [presentableCopy requesterIdentifier];
    requesterIdentifier3 = [withPresentableCopy requesterIdentifier];
    v13 = [requesterIdentifier2 isEqual:requesterIdentifier3] ^ 1;

    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_7:
  return v13 << 63 >> 63;
}

- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)presentable withPresentable:(id)withPresentable
{
  withPresentableCopy = withPresentable;
  requesterIdentifier = [presentable requesterIdentifier];
  v7 = +[SBSystemActionSimplePreviewPresentableViewController requesterIdentifier];
  if (![requesterIdentifier isEqual:v7])
  {

    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    requesterIdentifier2 = [withPresentableCopy requesterIdentifier];
    v11 = +[SBSystemActionSimplePreviewPresentableViewController requesterIdentifier];
    v12 = [requesterIdentifier2 isEqual:v11];

    v9 = v12 << 63 >> 63;
    goto LABEL_6;
  }

  v9 = -1;
LABEL_6:

  return v9;
}

@end