@interface STTranscriptionResult
- (BOOL)eligibleForTranslation;
- (STTranscriptionResult)init;
- (STTranscriptionResult)initWithText:(id)text isFinal:(BOOL)final;
- (id)cleanedTextVersion;
- (void)encodeWithCoder:(id)coder;
- (void)set_identifier:(id)set_identifier;
@end

@implementation STTranscriptionResult

- (void)set_identifier:(id)set_identifier
{
  v4 = *(self + OBJC_IVAR___STTranscriptionResult__identifier);
  *(self + OBJC_IVAR___STTranscriptionResult__identifier) = set_identifier;
  set_identifierCopy = set_identifier;
}

- (STTranscriptionResult)initWithText:(id)text isFinal:(BOOL)final
{
  v6 = sub_26B5E199C();
  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  *(self + OBJC_IVAR___STTranscriptionResult__identifier) = v9;
  v10 = (self + OBJC_IVAR___STTranscriptionResult_text);
  *v10 = v6;
  v10[1] = v8;
  *(self + OBJC_IVAR___STTranscriptionResult_isFinal) = final;
  v12.receiver = self;
  v12.super_class = STTranscriptionResult;
  return [(STTranscriptionResult *)&v12 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  STTranscriptionResult.encode(with:)(coderCopy);
}

- (BOOL)eligibleForTranslation
{
  selfCopy = self;
  text = [(STTranscriptionResult *)selfCopy text];
  v4 = sub_26B5E199C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

- (id)cleanedTextVersion
{
  selfCopy = self;
  v3 = STTranscriptionResult.cleanedTextVersion()();

  return v3;
}

- (STTranscriptionResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end