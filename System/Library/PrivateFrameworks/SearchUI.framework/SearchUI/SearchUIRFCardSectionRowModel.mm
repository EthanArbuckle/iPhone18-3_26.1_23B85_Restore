@interface SearchUIRFCardSectionRowModel
- (BOOL)fillsBackgroundWithContent;
- (BOOL)supportsCustomHighlightBehavior;
- (NSDirectionalEdgeInsets)intrinsicContentInset;
- (SearchUIRFCardSectionRowModel)init;
- (SearchUIRFCardSectionRowModel)initWithCardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUIRFCardSectionRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUIRFCardSectionRowModel)initWithResult:(id)result cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (SearchUIRFCardSectionRowModel)initWithResult:(id)result itemIdentifier:(id)identifier;
- (SearchUIRFCardSectionRowModel)initWithResults:(id)results itemIdentifier:(id)identifier;
- (double)highlightReferenceFrameCornerRadius;
- (int)separatorStyle;
@end

@implementation SearchUIRFCardSectionRowModel

- (SearchUIRFCardSectionRowModel)init
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DA273A50;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E69C9F08]) init];
  sub_1DA25F004();
  swift_allocObject();
  *(&self->super.super.super.isa + OBJC_IVAR___SearchUIRFCardSectionRowModel__builderContext) = sub_1DA25EFF4();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchUIRFCardSectionRowModel();
  return [(SearchUIRFCardSectionRowModel *)&v5 init];
}

- (int)separatorStyle
{
  selfCopy = self;
  v3 = sub_1DA237A4C();

  return v3;
}

- (BOOL)fillsBackgroundWithContent
{
  selfCopy = self;
  v3 = sub_1DA237B40();

  return v3 & 1;
}

- (BOOL)supportsCustomHighlightBehavior
{
  selfCopy = self;
  sub_1DA238014(v5);
  v3 = LOBYTE(v5[0]);

  return v3 != 2;
}

- (NSDirectionalEdgeInsets)intrinsicContentInset
{
  selfCopy = self;
  sub_1DA238014(&v11);
  if (v11 == 2)
  {
    v4 = *MEMORY[0x1E69DC5C0];
    v3 = *(MEMORY[0x1E69DC5C0] + 8);
    v6 = *(MEMORY[0x1E69DC5C0] + 16);
    v5 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  else
  {
    v6 = v13;
    v5 = v14;
    v4 = *(&v11 + 1);
    v3 = v12;
  }

  v7 = v4;
  v8 = v3;
  v9 = v6;
  v10 = v5;
  result.trailing = v10;
  result.bottom = v9;
  result.leading = v8;
  result.top = v7;
  return result;
}

- (double)highlightReferenceFrameCornerRadius
{
  selfCopy = self;
  sub_1DA238014(&v4);

  result = v5;
  if (v4 == 2)
  {
    return -1.0;
  }

  return result;
}

- (SearchUIRFCardSectionRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SearchUIRFCardSectionRowModel)initWithResult:(id)result itemIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SearchUIRFCardSectionRowModel)initWithResult:(id)result cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SearchUIRFCardSectionRowModel)initWithResults:(id)results itemIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SearchUIRFCardSectionRowModel)initWithCardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end