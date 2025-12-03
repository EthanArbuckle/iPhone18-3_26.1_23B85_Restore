@interface SFDetailedRowCardSection(SearchUIHorizontallyScrollingSectionModel)
- (double)searchUIHorizontallyScrollingSectionModel_additionalSectionInsets;
- (double)searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier;
@end

@implementation SFDetailedRowCardSection(SearchUIHorizontallyScrollingSectionModel)

- (double)searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier
{
  thumbnail = [self thumbnail];
  [thumbnail size];
  v3 = 1.0;
  if (v4 <= 150.0)
  {
    v7.receiver = self;
    v7.super_class = &off_1F5681548;
    objc_msgSendSuper2(&v7, sel_searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier);
    v3 = v5;
  }

  return v3;
}

- (double)searchUIHorizontallyScrollingSectionModel_additionalSectionInsets
{
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  result = 4.0;
  if (isMacOS)
  {
    return 2.0;
  }

  return result;
}

@end