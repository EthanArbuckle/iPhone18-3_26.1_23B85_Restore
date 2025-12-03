@interface VocabularyField
- (_TtC21SiriInformationSearch15VocabularyField)init;
- (_TtC21SiriInformationSearch15VocabularyField)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VocabularyField

- (_TtC21SiriInformationSearch15VocabularyField)initWithCoder:(id)coder
{
  coderCopy = coder;
  specialized VocabularyField.init(coder:)(coderCopy);
  v5 = v4;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  VocabularyField.encode(with:)(coderCopy);
}

- (_TtC21SiriInformationSearch15VocabularyField)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end