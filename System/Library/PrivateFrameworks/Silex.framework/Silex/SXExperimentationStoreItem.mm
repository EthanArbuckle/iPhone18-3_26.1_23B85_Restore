@interface SXExperimentationStoreItem
- (BOOL)isEqual:(id)a3;
@end

@implementation SXExperimentationStoreItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SXExperimentationStoreItem *)self experimentIdentifier];
    v7 = [v5 experimentIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(SXExperimentationStoreItem *)self treatmentGroup];
      v9 = [v5 treatmentGroup];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(SXExperimentationStoreItem *)self startDate];
        v11 = [v5 startDate];
        if ([v10 isEqualToDate:v11])
        {
          v15 = [(SXExperimentationStoreItem *)self expiryDate];
          v12 = [v5 expiryDate];
          v13 = [v15 isEqualToDate:v12];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end