@interface WFPosterPickerParameter
- (BOOL)handlesDefaultPoster;
- (BOOL)shouldOnlyShowEligiblePhotosPosters;
@end

@implementation WFPosterPickerParameter

- (BOOL)handlesDefaultPoster
{
  definition = [(WFParameter *)self definition];
  v3 = [definition objectForKey:@"HandlesDefaultPoster"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (BOOL)shouldOnlyShowEligiblePhotosPosters
{
  definition = [(WFParameter *)self definition];
  v3 = [definition objectForKey:@"VisiblePosters"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 isEqualToString:@"EligiblePhotos"];
  return v6;
}

@end