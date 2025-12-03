@interface SFVerticalLayoutCardSection(SearchUIGridSectionModel)
- (uint64_t)searchUIGridSectionModel_interItemSpacing;
@end

@implementation SFVerticalLayoutCardSection(SearchUIGridSectionModel)

- (uint64_t)searchUIGridSectionModel_interItemSpacing
{
  result = [MEMORY[0x1E69D9240] isSiri];
  if ((result & 1) == 0)
  {
    v3.receiver = self;
    v3.super_class = &off_1F567DC90;
    return objc_msgSendSuper2(&v3, sel_searchUIGridSectionModel_interItemSpacing, 0.0);
  }

  return result;
}

@end