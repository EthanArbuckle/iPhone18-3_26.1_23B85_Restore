@interface UINavigationItem(PhotosUICore)
- (uint64_t)px_backButtonDisplayMode;
- (uint64_t)px_hidesBackButtonInRegularWidth;
- (uint64_t)px_setBackButtonDisplayMode:()PhotosUICore;
- (void)px_setHidesBackButtonInRegularWidth:()PhotosUICore;
- (void)px_updateBackButtonVisibilityForTraitCollection:()PhotosUICore;
@end

@implementation UINavigationItem(PhotosUICore)

- (uint64_t)px_setBackButtonDisplayMode:()PhotosUICore
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [self setBackButtonDisplayMode:a3];
  }

  return result;
}

- (uint64_t)px_backButtonDisplayMode
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self backButtonDisplayMode];
}

- (void)px_updateBackButtonVisibilityForTraitCollection:()PhotosUICore
{
  v6 = a3;
  v4 = objc_getAssociatedObject(self, sel_px_hidesBackButtonInRegularWidth);
  if (v4)
  {
    if ([v6 horizontalSizeClass] == 2)
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [self setHidesBackButton:bOOLValue];
  }
}

- (void)px_setHidesBackButtonInRegularWidth:()PhotosUICore
{
  if ([self px_hidesBackButtonInRegularWidth] != a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    objc_setAssociatedObject(self, sel_px_hidesBackButtonInRegularWidth, v5, 3);
  }
}

- (uint64_t)px_hidesBackButtonInRegularWidth
{
  v1 = objc_getAssociatedObject(self, sel_px_hidesBackButtonInRegularWidth);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end