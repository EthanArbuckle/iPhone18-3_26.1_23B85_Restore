@interface AmbientPhotoFramePeoplePickerDataSource
- (id)peopleSuggestionSubtypes;
- (void)computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback:(id)a3;
@end

@implementation AmbientPhotoFramePeoplePickerDataSource

- (id)peopleSuggestionSubtypes
{
  v2 = self;
  sub_1B37F6B70();

  sub_1B3710718(0, &qword_1EB852330);
  sub_1B37F6CB0();
  v3 = sub_1B3C9C968();

  return v3;
}

- (void)computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback:(id)a3
{
  v4 = sub_1B3C9C988();
  v5 = self;
  sub_1B37F6D98(v4);
}

@end