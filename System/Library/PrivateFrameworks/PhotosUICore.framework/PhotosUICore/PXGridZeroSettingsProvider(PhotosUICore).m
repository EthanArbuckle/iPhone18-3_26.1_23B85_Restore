@interface PXGridZeroSettingsProvider(PhotosUICore)
+ (_PXPPreferencesGridZeroSettingsProvider)px_createConcreteSettingsProvider;
@end

@implementation PXGridZeroSettingsProvider(PhotosUICore)

+ (_PXPPreferencesGridZeroSettingsProvider)px_createConcreteSettingsProvider
{
  v0 = objc_alloc_init(_PXPPreferencesGridZeroSettingsProvider);

  return v0;
}

@end