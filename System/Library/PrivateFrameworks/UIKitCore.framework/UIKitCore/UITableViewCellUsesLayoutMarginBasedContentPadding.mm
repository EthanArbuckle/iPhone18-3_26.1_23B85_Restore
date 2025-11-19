@interface UITableViewCellUsesLayoutMarginBasedContentPadding
@end

@implementation UITableViewCellUsesLayoutMarginBasedContentPadding

void ___UITableViewCellUsesLayoutMarginBasedContentPadding_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    v0 = _UIMainBundleIdentifier();
    _MergedGlobals_63_1 = [&unk_1EFE2D8A0 containsObject:v0] ^ 1;
  }

  else
  {
    _MergedGlobals_63_1 = 0;
  }
}

@end