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
  [a1 willChangeValueForKey:@"tv_belongsToOldIndexPath"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  objc_setAssociatedObject(a1, "tv_belongsToOldIndexPath", v5, 1);

  return [a1 didChangeValueForKey:@"tv_belongsToOldIndexPath"];
}

- (uint64_t)tv_belongsToOldIndexPath
{
  v1 = objc_getAssociatedObject(a1, "tv_belongsToOldIndexPath");
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)tv_setDisplayed:()TVMLKitAdditions
{
  [a1 willChangeValueForKey:@"tv_displayed"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  objc_setAssociatedObject(a1, "tv_displayed", v5, 1);

  return [a1 didChangeValueForKey:@"tv_displayed"];
}

- (uint64_t)tv_isDisplayed
{
  v1 = objc_getAssociatedObject(a1, "tv_displayed");
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)tv_setFocused:()TVMLKitAdditions
{
  [a1 willChangeValueForKey:@"tv_focused"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  objc_setAssociatedObject(a1, "tv_focused", v5, 1);

  return [a1 didChangeValueForKey:@"tv_focused"];
}

- (uint64_t)tv_isFocused
{
  v1 = objc_getAssociatedObject(a1, "tv_focused");
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end