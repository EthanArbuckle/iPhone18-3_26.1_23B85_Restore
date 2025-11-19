@interface SearchUIRFCardSectionRowModelProvider
- (SearchUIRFCardSectionRowModelProvider)init;
- (SearchUIRFCardSectionRowModelProvider)initWithCardSections:(id)a3;
- (id)rowModelFor:(id)a3 result:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7;
@end

@implementation SearchUIRFCardSectionRowModelProvider

- (SearchUIRFCardSectionRowModelProvider)initWithCardSections:(id)a3
{
  if (a3)
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

- (id)rowModelFor:(id)a3 result:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7
{
  sub_1DA25F244();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_1DA2383A0(v12, v13, a5, a6);
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