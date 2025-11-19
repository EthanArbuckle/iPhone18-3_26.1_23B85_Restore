@interface RFSimpleItemVisualElementCardSection(SearchUIGridSectionModel)
- (double)searchUIGridSectionModel_customSectionInsets;
- (uint64_t)searchUIGridSectionModel_useEstimatedHeight;
@end

@implementation RFSimpleItemVisualElementCardSection(SearchUIGridSectionModel)

- (uint64_t)searchUIGridSectionModel_useEstimatedHeight
{
  if ([MEMORY[0x1E69D9240] isPhone])
  {
    return [MEMORY[0x1E69D9240] isIpad] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (double)searchUIGridSectionModel_customSectionInsets
{
  +[SearchUIUtilities standardTableCellContentInset];
  +[SearchUIUtilities imageGridContentInset];
  +[SearchUIUtilities disambiguationTableCellContentInset];
  [MEMORY[0x1E69D9240] isSiri];
  return 0.0;
}

@end