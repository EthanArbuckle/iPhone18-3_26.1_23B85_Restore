@interface PGStoryPromptSuggestionQuestion
- (BOOL)isEquivalentToPersistedQuestion:(id)question;
- (NSDictionary)additionalInfo;
- (NSString)entityIdentifier;
- (PGStoryPromptSuggestionQuestion)init;
- (PGStoryPromptSuggestionQuestion)initWithPromptId:(id)id promptText:(id)text isValidated:(BOOL)validated assetCount:(int64_t)count source:(id)source mcAvailabilityStatus:(int64_t)status localFactoryScore:(double)score;
@end

@implementation PGStoryPromptSuggestionQuestion

- (PGStoryPromptSuggestionQuestion)initWithPromptId:(id)id promptText:(id)text isValidated:(BOOL)validated assetCount:(int64_t)count source:(id)source mcAvailabilityStatus:(int64_t)status localFactoryScore:(double)score
{
  v13 = sub_22F740E20();
  v15 = v14;
  v16 = sub_22F740E20();
  v18 = v17;
  v19 = sub_22F740E20();
  return sub_22F2F9C28(v13, v15, v16, v18, validated, count, v19, v20, score, status);
}

- (NSString)entityIdentifier
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedEntityIdentifier);
  v3 = *(&self->super.state + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedEntityIdentifier);

  v4 = sub_22F740DF0();

  return v4;
}

- (NSDictionary)additionalInfo
{
  selfCopy = self;
  PGStoryPromptSuggestionQuestion.additionalInfo.getter();

  v3 = sub_22F740C80();

  return v3;
}

- (BOOL)isEquivalentToPersistedQuestion:(id)question
{
  questionCopy = question;
  selfCopy = self;
  LOBYTE(self) = PGStoryPromptSuggestionQuestion.isEquivalent(toPersistedQuestion:)(questionCopy);

  return self & 1;
}

- (PGStoryPromptSuggestionQuestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end