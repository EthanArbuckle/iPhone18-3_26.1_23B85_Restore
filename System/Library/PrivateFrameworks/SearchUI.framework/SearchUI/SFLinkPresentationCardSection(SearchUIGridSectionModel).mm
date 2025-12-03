@interface SFLinkPresentationCardSection(SearchUIGridSectionModel)
- (double)searchUIGridSectionModel_groupInsetFor:()SearchUIGridSectionModel;
- (id)searchUIGridSectionModel_heightDimensionWithColumnCount:()SearchUIGridSectionModel;
- (id)searchUIGridSectionModel_useEstimatedHeight;
- (uint64_t)searchUIGridSectionModel_interItemSpacing;
@end

@implementation SFLinkPresentationCardSection(SearchUIGridSectionModel)

- (uint64_t)searchUIGridSectionModel_interItemSpacing
{
  result = [MEMORY[0x1E69D9240] isSiri];
  if ((result & 1) == 0)
  {
    v3.receiver = self;
    v3.super_class = &off_1F56744B0;
    return objc_msgSendSuper2(&v3, sel_searchUIGridSectionModel_interItemSpacing, 0.0);
  }

  return result;
}

- (id)searchUIGridSectionModel_useEstimatedHeight
{
  if ([MEMORY[0x1E69D9240] isSiri])
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = &off_1F56744B0;
  return objc_msgSendSuper2(&v3, sel_searchUIGridSectionModel_useEstimatedHeight);
}

- (id)searchUIGridSectionModel_heightDimensionWithColumnCount:()SearchUIGridSectionModel
{
  if ([MEMORY[0x1E69D9240] isSiri])
  {
    v7.receiver = self;
    v7.super_class = &off_1F56744B0;
    v5 = objc_msgSendSuper2(&v7, sel_searchUIGridSectionModel_heightDimensionWithColumnCount_, a3);
  }

  else
  {
    v5 = [MEMORY[0x1E6995558] absoluteDimension:dbl_1DA272B20[a3 > 1]];
  }

  return v5;
}

- (double)searchUIGridSectionModel_groupInsetFor:()SearchUIGridSectionModel
{
  v4 = a3;
  if ([MEMORY[0x1E69D9240] isSiri])
  {
    v8.receiver = self;
    v8.super_class = &off_1F56744B0;
    objc_msgSendSuper2(&v8, sel_searchUIGridSectionModel_groupInsetFor_, v4);
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

@end