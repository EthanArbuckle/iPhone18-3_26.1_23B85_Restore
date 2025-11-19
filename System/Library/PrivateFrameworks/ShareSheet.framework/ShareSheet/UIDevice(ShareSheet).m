@interface UIDevice(ShareSheet)
- (uint64_t)sh_hostUserInterfaceIdiom;
- (void)setSh_hostUserInterfaceIdiom:()ShareSheet;
@end

@implementation UIDevice(ShareSheet)

- (uint64_t)sh_hostUserInterfaceIdiom
{
  v1 = objc_getAssociatedObject(a1, SHSheetUserInterfaceIdiomPropertyKey);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v3 = [v4 userInterfaceIdiom];
  }

  return v3;
}

- (void)setSh_hostUserInterfaceIdiom:()ShareSheet
{
  v2 = SHSheetUserInterfaceIdiomPropertyKey;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(a1, v2, v3, 1);
}

@end