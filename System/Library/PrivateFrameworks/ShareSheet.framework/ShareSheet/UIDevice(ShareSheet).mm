@interface UIDevice(ShareSheet)
- (uint64_t)sh_hostUserInterfaceIdiom;
- (void)setSh_hostUserInterfaceIdiom:()ShareSheet;
@end

@implementation UIDevice(ShareSheet)

- (uint64_t)sh_hostUserInterfaceIdiom
{
  v1 = objc_getAssociatedObject(self, SHSheetUserInterfaceIdiomPropertyKey);
  v2 = v1;
  if (v1)
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    integerValue = [currentDevice userInterfaceIdiom];
  }

  return integerValue;
}

- (void)setSh_hostUserInterfaceIdiom:()ShareSheet
{
  v2 = SHSheetUserInterfaceIdiomPropertyKey;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(self, v2, v3, 1);
}

@end