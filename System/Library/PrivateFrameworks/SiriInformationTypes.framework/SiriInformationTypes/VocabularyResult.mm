@interface VocabularyResult
- (_TtC21SiriInformationSearch16VocabularyResult)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VocabularyResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  VocabularyResult.encode(with:)(coderCopy);
}

- (_TtC21SiriInformationSearch16VocabularyResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end