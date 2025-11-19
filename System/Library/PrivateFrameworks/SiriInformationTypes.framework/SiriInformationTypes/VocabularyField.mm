@interface VocabularyField
- (_TtC21SiriInformationSearch15VocabularyField)init;
- (_TtC21SiriInformationSearch15VocabularyField)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VocabularyField

- (_TtC21SiriInformationSearch15VocabularyField)initWithCoder:(id)a3
{
  v3 = a3;
  specialized VocabularyField.init(coder:)(v3);
  v5 = v4;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  VocabularyField.encode(with:)(v4);
}

- (_TtC21SiriInformationSearch15VocabularyField)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end