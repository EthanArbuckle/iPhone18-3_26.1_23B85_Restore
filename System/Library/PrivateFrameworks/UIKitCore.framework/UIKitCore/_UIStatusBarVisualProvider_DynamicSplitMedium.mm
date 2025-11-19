@interface _UIStatusBarVisualProvider_DynamicSplitMedium
- (id)leadingItemCutoffWidths;
- (id)trailingItemCutoffWidths;
@end

@implementation _UIStatusBarVisualProvider_DynamicSplitMedium

- (id)leadingItemCutoffWidths
{
  if (qword_1ED49A9A0 != -1)
  {
    dispatch_once(&qword_1ED49A9A0, &__block_literal_global_248_1);
  }

  v3 = qword_1ED49A9A8;

  return v3;
}

- (id)trailingItemCutoffWidths
{
  if (qword_1ED49A9B0 != -1)
  {
    dispatch_once(&qword_1ED49A9B0, &__block_literal_global_259_1);
  }

  v3 = qword_1ED49A9B8;

  return v3;
}

@end