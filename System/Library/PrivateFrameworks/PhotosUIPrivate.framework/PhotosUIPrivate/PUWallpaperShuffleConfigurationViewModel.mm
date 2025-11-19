@interface PUWallpaperShuffleConfigurationViewModel
- (void)passiveContentDataSourceAvailableTypesDidChange:(id)a3;
- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)a3;
- (void)passiveContentPeoplePickerDataSourceChanged:(id)a3;
@end

@implementation PUWallpaperShuffleConfigurationViewModel

- (void)passiveContentDataSourceAvailableTypesDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37C814C();
}

- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37C7BBC();
}

- (void)passiveContentPeoplePickerDataSourceChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37C814C();
}

@end