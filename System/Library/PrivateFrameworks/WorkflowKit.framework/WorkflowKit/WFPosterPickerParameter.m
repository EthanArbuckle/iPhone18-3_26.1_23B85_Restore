@interface WFPosterPickerParameter
- (BOOL)handlesDefaultPoster;
- (BOOL)shouldOnlyShowEligiblePhotosPosters;
@end

@implementation WFPosterPickerParameter

- (BOOL)handlesDefaultPoster
{
  v2 = [(WFParameter *)self definition];
  v3 = [v2 objectForKey:@"HandlesDefaultPoster"];

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

  v6 = [v5 BOOLValue];
  return v6;
}

- (BOOL)shouldOnlyShowEligiblePhotosPosters
{
  v2 = [(WFParameter *)self definition];
  v3 = [v2 objectForKey:@"VisiblePosters"];

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