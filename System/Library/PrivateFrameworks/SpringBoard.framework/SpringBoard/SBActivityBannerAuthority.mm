@interface SBActivityBannerAuthority
- (int64_t)shouldMorphToPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable stateChange:(id *)change;
- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)presentable withPresentable:(id)withPresentable;
- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable;
@end

@implementation SBActivityBannerAuthority

- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable
{
  presentableCopy = presentable;
  withPresentableCopy = withPresentable;
  v7 = +[SBActivityBannerViewController requesterIdentifier];
  v8 = UIViewControllerFromPresentable();
  viewIfLoaded = [v8 viewIfLoaded];

  [viewIfLoaded bounds];
  v11 = v10;
  v13 = v12;
  window = [viewIfLoaded window];
  [window bounds];
  v16 = v15;
  v18 = v17;

  if (presentableCopy)
  {
    if (v11 >= v16 || v13 >= v18)
    {
      goto LABEL_11;
    }
  }

  requesterIdentifier = [withPresentableCopy requesterIdentifier];
  if ([requesterIdentifier isEqualToString:v7])
  {
  }

  else
  {
    requesterIdentifier2 = [presentableCopy requesterIdentifier];
    v22 = [requesterIdentifier2 isEqualToString:v7];

    if (!v22)
    {
LABEL_11:
      v23 = 0;
      goto LABEL_12;
    }
  }

  v23 = -1;
LABEL_12:

  return v23;
}

- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)presentable withPresentable:(id)withPresentable
{
  requesterIdentifier = [withPresentable requesterIdentifier];
  v5 = +[SBActivityBannerViewController requesterIdentifier];
  v6 = [requesterIdentifier isEqualToString:v5] << 63 >> 63;

  return v6;
}

- (int64_t)shouldMorphToPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable stateChange:(id *)change
{
  v28 = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  presentablesCopy = presentables;
  v11 = [presentablesCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    responsiblePresentableCopy = responsiblePresentable;
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(presentablesCopy);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        requesterIdentifier = [v15 requesterIdentifier];
        v17 = +[SBSystemActionSimplePreviewPresentableViewController requesterIdentifier];
        if ([requesterIdentifier isEqual:v17])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            if (responsiblePresentableCopy)
            {
              v20 = v15;
              *responsiblePresentableCopy = v15;
            }

            if (change)
            {
              *change = MEMORY[0x277CBEC28];
            }

            v19 = 1;
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      v12 = [presentablesCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_18:

  return v19;
}

@end