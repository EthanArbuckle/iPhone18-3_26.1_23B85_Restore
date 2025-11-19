@interface STUIStatusBarVisualProvider_DynamicSplitMedium
- (id)leadingItemCutoffWidths;
- (id)trailingItemCutoffWidths;
@end

@implementation STUIStatusBarVisualProvider_DynamicSplitMedium

- (id)leadingItemCutoffWidths
{
  if (qword_280C1E7A0 != -1)
  {
    dispatch_once(&qword_280C1E7A0, &__block_literal_global_215);
  }

  v3 = qword_280C1E7A8;

  return v3;
}

- (id)trailingItemCutoffWidths
{
  if (qword_280C1E7B0 != -1)
  {
    dispatch_once(&qword_280C1E7B0, &__block_literal_global_226);
  }

  v3 = qword_280C1E7B8;

  return v3;
}

@end