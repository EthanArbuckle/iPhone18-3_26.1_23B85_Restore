@interface AmbientPhotoFrameCuratedPeopleRequester
- (void)passiveContentPeoplePickerDataSourceChanged:(id)changed;
@end

@implementation AmbientPhotoFrameCuratedPeopleRequester

- (void)passiveContentPeoplePickerDataSourceChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1B37F7E8C();
}

@end