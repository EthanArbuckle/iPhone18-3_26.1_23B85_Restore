@interface UICollectionReusableView(TVMLKitAdditions)
- (uint64_t)tv_belongsToOldIndexPath;
- (uint64_t)tv_isDisplayed;
- (uint64_t)tv_isFocused;
- (uint64_t)tv_setBelongsToOldIndexPath:()TVMLKitAdditions;
- (uint64_t)tv_setDisplayed:()TVMLKitAdditions;
- (uint64_t)tv_setFocused:()TVMLKitAdditions;
@end

@implementation UICollectionReusableView(TVMLKitAdditions)

- (uint64_t)tv_setBelongsToOldIndexPath:()TVMLKitAdditions
{
  [self willChangeValueForKey:@"tv_belongsToOldIndexPath"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  objc_setAssociatedObject(self, "tv_belongsToOldIndexPath", v5, 1);

  return [self didChangeValueForKey:@"tv_belongsToOldIndexPath"];
}

- (uint64_t)tv_belongsToOldIndexPath
{
  v1 = objc_getAssociatedObject(self, "tv_belongsToOldIndexPath");
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)tv_setDisplayed:()TVMLKitAdditions
{
  [self willChangeValueForKey:@"tv_displayed"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  objc_setAssociatedObject(self, "tv_displayed", v5, 1);

  return [self didChangeValueForKey:@"tv_displayed"];
}

- (uint64_t)tv_isDisplayed
{
  v1 = objc_getAssociatedObject(self, "tv_displayed");
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)tv_setFocused:()TVMLKitAdditions
{
  [self willChangeValueForKey:@"tv_focused"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  objc_setAssociatedObject(self, "tv_focused", v5, 1);

  return [self didChangeValueForKey:@"tv_focused"];
}

- (uint64_t)tv_isFocused
{
  v1 = objc_getAssociatedObject(self, "tv_focused");
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end