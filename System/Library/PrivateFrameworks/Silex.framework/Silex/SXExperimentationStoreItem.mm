@interface SXExperimentationStoreItem
- (BOOL)isEqual:(id)equal;
@end

@implementation SXExperimentationStoreItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    experimentIdentifier = [(SXExperimentationStoreItem *)self experimentIdentifier];
    experimentIdentifier2 = [v5 experimentIdentifier];
    if ([experimentIdentifier isEqualToString:experimentIdentifier2])
    {
      treatmentGroup = [(SXExperimentationStoreItem *)self treatmentGroup];
      treatmentGroup2 = [v5 treatmentGroup];
      if ([treatmentGroup isEqualToString:treatmentGroup2])
      {
        startDate = [(SXExperimentationStoreItem *)self startDate];
        startDate2 = [v5 startDate];
        if ([startDate isEqualToDate:startDate2])
        {
          expiryDate = [(SXExperimentationStoreItem *)self expiryDate];
          expiryDate2 = [v5 expiryDate];
          v13 = [expiryDate isEqualToDate:expiryDate2];
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