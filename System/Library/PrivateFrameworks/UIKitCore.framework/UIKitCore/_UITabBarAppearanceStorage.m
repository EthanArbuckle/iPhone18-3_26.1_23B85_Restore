@interface _UITabBarAppearanceStorage
- (_UITabBarItemAppearanceStorage)tabItemAppearanceStorage;
@end

@implementation _UITabBarAppearanceStorage

- (_UITabBarItemAppearanceStorage)tabItemAppearanceStorage
{
  tabItemAppearanceStorage = self->tabItemAppearanceStorage;
  if (!tabItemAppearanceStorage)
  {
    v4 = objc_alloc_init(_UITabBarItemAppearanceStorage);
    v5 = self->tabItemAppearanceStorage;
    self->tabItemAppearanceStorage = v4;

    tabItemAppearanceStorage = self->tabItemAppearanceStorage;
  }

  return tabItemAppearanceStorage;
}

@end