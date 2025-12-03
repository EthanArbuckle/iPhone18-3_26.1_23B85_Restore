@interface AmbientPhotoFramePeoplePickerDataSource
- (id)peopleSuggestionSubtypes;
- (void)computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback:(id)feedback;
@end

@implementation AmbientPhotoFramePeoplePickerDataSource

- (id)peopleSuggestionSubtypes
{
  selfCopy = self;
  sub_1B37F6B70();

  sub_1B3710718(0, &qword_1EB852330);
  sub_1B37F6CB0();
  v3 = sub_1B3C9C968();

  return v3;
}

- (void)computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback:(id)feedback
{
  v4 = sub_1B3C9C988();
  selfCopy = self;
  sub_1B37F6D98(v4);
}

@end