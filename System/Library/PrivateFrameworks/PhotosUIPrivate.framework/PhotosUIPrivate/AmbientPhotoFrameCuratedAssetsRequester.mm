@interface AmbientPhotoFrameCuratedAssetsRequester
- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)change;
- (void)passiveContentPeoplePickerDataSourceChanged:(id)changed;
@end

@implementation AmbientPhotoFrameCuratedAssetsRequester

- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1B37A7FE8(changeCopy);
}

- (void)passiveContentPeoplePickerDataSourceChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1B37A8290();
}

@end