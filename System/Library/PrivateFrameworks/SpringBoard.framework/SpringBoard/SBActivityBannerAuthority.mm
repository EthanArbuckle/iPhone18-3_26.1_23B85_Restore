@interface SBActivityBannerAuthority
- (int64_t)shouldMorphToPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5 stateChange:(id *)a6;
- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)a3 withPresentable:(id)a4;
- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4;
@end

@implementation SBActivityBannerAuthority

- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SBActivityBannerViewController requesterIdentifier];
  v8 = UIViewControllerFromPresentable();
  v9 = [v8 viewIfLoaded];

  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v14 = [v9 window];
  [v14 bounds];
  v16 = v15;
  v18 = v17;

  if (v5)
  {
    if (v11 >= v16 || v13 >= v18)
    {
      goto LABEL_11;
    }
  }

  v20 = [v6 requesterIdentifier];
  if ([v20 isEqualToString:v7])
  {
  }

  else
  {
    v21 = [v5 requesterIdentifier];
    v22 = [v21 isEqualToString:v7];

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

- (int64_t)shouldNewTierBeAddedToTopForPresentable:(id)a3 withPresentable:(id)a4
{
  v4 = [a4 requesterIdentifier];
  v5 = +[SBActivityBannerViewController requesterIdentifier];
  v6 = [v4 isEqualToString:v5] << 63 >> 63;

  return v6;
}

- (int64_t)shouldMorphToPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5 stateChange:(id *)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = a4;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = a5;
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 requesterIdentifier];
        v17 = +[SBSystemActionSimplePreviewPresentableViewController requesterIdentifier];
        if ([v16 isEqual:v17])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            if (v22)
            {
              v20 = v15;
              *v22 = v15;
            }

            if (a6)
            {
              *a6 = MEMORY[0x277CBEC28];
            }

            v19 = 1;
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
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