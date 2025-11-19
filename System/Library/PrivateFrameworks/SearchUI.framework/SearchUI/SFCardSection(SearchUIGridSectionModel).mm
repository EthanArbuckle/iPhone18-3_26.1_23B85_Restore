@interface SFCardSection(SearchUIGridSectionModel)
- (id)searchUIGridSectionModel_heightDimensionWithColumnCount:()SearchUIGridSectionModel;
@end

@implementation SFCardSection(SearchUIGridSectionModel)

- (id)searchUIGridSectionModel_heightDimensionWithColumnCount:()SearchUIGridSectionModel
{
  if ([a1 searchUIGridSectionModel_useEstimatedHeight])
  {
    v1 = [MEMORY[0x1E6995558] estimatedDimension:1.0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end