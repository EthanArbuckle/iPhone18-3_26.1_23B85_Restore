@interface SBSystemActionPreviewBannerAuthority
- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)a3 withPresentable:(id)a4;
- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4;
@end

@implementation SBSystemActionPreviewBannerAuthority

- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SBSystemActionSimplePreviewPresentableViewController requesterIdentifier];
  v9 = [v6 requesterIdentifier];
  v10 = [v9 isEqual:v8];
  if ((v10 & 1) != 0 || ([v7 requesterIdentifier], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "isEqual:", v8)))
  {
    v11 = [v6 requesterIdentifier];
    v12 = [v7 requesterIdentifier];
    v13 = [v11 isEqual:v12] ^ 1;

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

- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)a3 withPresentable:(id)a4
{
  v5 = a4;
  v6 = [a3 requesterIdentifier];
  v7 = +[SBSystemActionSimplePreviewPresentableViewController requesterIdentifier];
  if (![v6 isEqual:v7])
  {

    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    v10 = [v5 requesterIdentifier];
    v11 = +[SBSystemActionSimplePreviewPresentableViewController requesterIdentifier];
    v12 = [v10 isEqual:v11];

    v9 = v12 << 63 >> 63;
    goto LABEL_6;
  }

  v9 = -1;
LABEL_6:

  return v9;
}

@end