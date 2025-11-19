@interface AmbientPhotoFrameCuratedAssetsRequester
- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)a3;
- (void)passiveContentPeoplePickerDataSourceChanged:(id)a3;
@end

@implementation AmbientPhotoFrameCuratedAssetsRequester

- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37A7FE8(v4);
}

- (void)passiveContentPeoplePickerDataSourceChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37A8290();
}

@end