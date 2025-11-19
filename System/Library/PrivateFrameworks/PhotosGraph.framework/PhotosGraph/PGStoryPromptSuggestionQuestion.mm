@interface PGStoryPromptSuggestionQuestion
- (BOOL)isEquivalentToPersistedQuestion:(id)a3;
- (NSDictionary)additionalInfo;
- (NSString)entityIdentifier;
- (PGStoryPromptSuggestionQuestion)init;
- (PGStoryPromptSuggestionQuestion)initWithPromptId:(id)a3 promptText:(id)a4 isValidated:(BOOL)a5 assetCount:(int64_t)a6 source:(id)a7 mcAvailabilityStatus:(int64_t)a8 localFactoryScore:(double)a9;
@end

@implementation PGStoryPromptSuggestionQuestion

- (PGStoryPromptSuggestionQuestion)initWithPromptId:(id)a3 promptText:(id)a4 isValidated:(BOOL)a5 assetCount:(int64_t)a6 source:(id)a7 mcAvailabilityStatus:(int64_t)a8 localFactoryScore:(double)a9
{
  v13 = sub_22F740E20();
  v15 = v14;
  v16 = sub_22F740E20();
  v18 = v17;
  v19 = sub_22F740E20();
  return sub_22F2F9C28(v13, v15, v16, v18, a5, a6, v19, v20, a9, a8);
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
  v2 = self;
  PGStoryPromptSuggestionQuestion.additionalInfo.getter();

  v3 = sub_22F740C80();

  return v3;
}

- (BOOL)isEquivalentToPersistedQuestion:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = PGStoryPromptSuggestionQuestion.isEquivalent(toPersistedQuestion:)(v4);

  return self & 1;
}

- (PGStoryPromptSuggestionQuestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end