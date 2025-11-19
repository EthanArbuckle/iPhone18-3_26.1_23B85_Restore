@interface UISmallerThanLargeContentSizeCategories
@end

@implementation UISmallerThanLargeContentSizeCategories

uint64_t ____UISmallerThanLargeContentSizeCategories_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = qword_1EA9932D0;
  qword_1EA9932D0 = v0;

  [qword_1EA9932D0 addObject:@"UICTContentSizeCategoryXS"];
  [qword_1EA9932D0 addObject:@"UICTContentSizeCategoryS"];
  v2 = qword_1EA9932D0;

  return [v2 addObject:@"UICTContentSizeCategoryM"];
}

@end