@interface TSWPTopicNumbers
- (TSWPTopicNumbers)init;
- (TSWPTopicNumbers)initWithStorage:(id)a3;
- (id)hintsForCharIndex:(unint64_t)a3;
- (id)numberedListLabelForCharIndex:(unint64_t)a3 includeFormatting:(BOOL)a4;
- (unint64_t)listNumberForCharIndex:(unint64_t)a3;
- (void)invalidateFromCharIndex:(unint64_t)a3;
@end

@implementation TSWPTopicNumbers

- (TSWPTopicNumbers)initWithStorage:(id)a3
{
  v4 = OBJC_IVAR___TSWPTopicNumbers_topicNumberData;
  v5 = a3;
  *(&self->super.isa + v4) = sub_276F4902C(MEMORY[0x277D84F90]);
  *(&self->super.isa + OBJC_IVAR___TSWPTopicNumbers_invalidCharIndex) = 0;
  *(&self->super.isa + OBJC_IVAR___TSWPTopicNumbers_storage) = v5;
  v7.receiver = self;
  v7.super_class = TSWPTopicNumbers;
  return [(TSWPTopicNumbers *)&v7 init];
}

- (void)invalidateFromCharIndex:(unint64_t)a3
{
  v4 = self;
  TSWPTopicNumbers.invalidate(from:)(a3);
}

- (unint64_t)listNumberForCharIndex:(unint64_t)a3
{
  v4 = self;
  v5 = TSWPTopicNumbers.listNumber(for:)(a3);

  return v5;
}

- (id)numberedListLabelForCharIndex:(unint64_t)a3 includeFormatting:(BOOL)a4
{
  v6 = self;
  TSWPTopicNumbers.numberedListLabel(for:includeFormatting:)(a3, a4);

  v7 = sub_276F59D08();

  return v7;
}

- (TSWPTopicNumbers)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)hintsForCharIndex:(unint64_t)a3
{
  v4 = self;
  v5 = TSWPTopicNumbers.hints(for:)(a3);

  return v5;
}

@end