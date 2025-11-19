@interface UIDragBadge
@end

@implementation UIDragBadge

uint64_t __45___UIDragBadge__updateLabelTextFromItemCount__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _MergedGlobals_5_7;
  _MergedGlobals_5_7 = v0;

  v2 = [MEMORY[0x1E695DF58] currentLocale];
  [_MergedGlobals_5_7 setLocale:v2];

  v3 = _MergedGlobals_5_7;

  return [v3 setNumberStyle:1];
}

@end