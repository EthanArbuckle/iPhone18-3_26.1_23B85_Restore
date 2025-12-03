@interface SearchUIRFCardSectionRowModelProvider
- (SearchUIRFCardSectionRowModelProvider)init;
- (SearchUIRFCardSectionRowModelProvider)initWithCardSections:(id)sections;
- (id)rowModelFor:(id)for result:(id)result isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier;
@end

@implementation SearchUIRFCardSectionRowModelProvider

- (SearchUIRFCardSectionRowModelProvider)initWithCardSections:(id)sections
{
  if (sections)
  {
    sub_1DA173718(0, &unk_1EDAE5400);
    sub_1DA25F324();
  }

  sub_1DA25F004();
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR___SearchUIRFCardSectionRowModelProvider_builderContext) = sub_1DA25EFF4();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchUIRFCardSectionRowModelProvider();
  return [(SearchUIRFCardSectionRowModelProvider *)&v5 init];
}

- (id)rowModelFor:(id)for result:(id)result isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  sub_1DA25F244();
  forCopy = for;
  resultCopy = result;
  selfCopy = self;
  sub_1DA2383A0(forCopy, resultCopy, inline, id);
  v16 = v15;

  return v16;
}

- (SearchUIRFCardSectionRowModelProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end