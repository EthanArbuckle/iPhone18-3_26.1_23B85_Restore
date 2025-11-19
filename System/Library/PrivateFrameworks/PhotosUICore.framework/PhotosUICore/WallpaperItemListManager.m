@interface WallpaperItemListManager
- (void)preferencesDidChange;
@end

@implementation WallpaperItemListManager

- (void)preferencesDidChange
{

  IsFeaturedContentAllowed = PXPreferencesIsFeaturedContentAllowed(v3);
  v5 = self->isFeaturedContentAllowed[0];
  self->isFeaturedContentAllowed[0] = IsFeaturedContentAllowed;
  if (IsFeaturedContentAllowed != v5)
  {
    sub_1A41017A8();
  }
}

@end