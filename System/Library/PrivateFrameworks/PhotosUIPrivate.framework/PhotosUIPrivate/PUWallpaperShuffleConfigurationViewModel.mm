@interface PUWallpaperShuffleConfigurationViewModel
- (void)passiveContentDataSourceAvailableTypesDidChange:(id)change;
- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)change;
- (void)passiveContentPeoplePickerDataSourceChanged:(id)changed;
@end

@implementation PUWallpaperShuffleConfigurationViewModel

- (void)passiveContentDataSourceAvailableTypesDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1B37C814C();
}

- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1B37C7BBC();
}

- (void)passiveContentPeoplePickerDataSourceChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1B37C814C();
}

@end