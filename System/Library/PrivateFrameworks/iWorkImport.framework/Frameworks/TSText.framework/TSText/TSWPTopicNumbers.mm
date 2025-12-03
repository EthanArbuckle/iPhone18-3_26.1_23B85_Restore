@interface TSWPTopicNumbers
- (TSWPTopicNumbers)init;
- (TSWPTopicNumbers)initWithStorage:(id)storage;
- (id)hintsForCharIndex:(unint64_t)index;
- (id)numberedListLabelForCharIndex:(unint64_t)index includeFormatting:(BOOL)formatting;
- (unint64_t)listNumberForCharIndex:(unint64_t)index;
- (void)invalidateFromCharIndex:(unint64_t)index;
@end

@implementation TSWPTopicNumbers

- (TSWPTopicNumbers)initWithStorage:(id)storage
{
  v4 = OBJC_IVAR___TSWPTopicNumbers_topicNumberData;
  storageCopy = storage;
  *(&self->super.isa + v4) = sub_276F4902C(MEMORY[0x277D84F90]);
  *(&self->super.isa + OBJC_IVAR___TSWPTopicNumbers_invalidCharIndex) = 0;
  *(&self->super.isa + OBJC_IVAR___TSWPTopicNumbers_storage) = storageCopy;
  v7.receiver = self;
  v7.super_class = TSWPTopicNumbers;
  return [(TSWPTopicNumbers *)&v7 init];
}

- (void)invalidateFromCharIndex:(unint64_t)index
{
  selfCopy = self;
  TSWPTopicNumbers.invalidate(from:)(index);
}

- (unint64_t)listNumberForCharIndex:(unint64_t)index
{
  selfCopy = self;
  v5 = TSWPTopicNumbers.listNumber(for:)(index);

  return v5;
}

- (id)numberedListLabelForCharIndex:(unint64_t)index includeFormatting:(BOOL)formatting
{
  selfCopy = self;
  TSWPTopicNumbers.numberedListLabel(for:includeFormatting:)(index, formatting);

  v7 = sub_276F59D08();

  return v7;
}

- (TSWPTopicNumbers)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)hintsForCharIndex:(unint64_t)index
{
  selfCopy = self;
  v5 = TSWPTopicNumbers.hints(for:)(index);

  return v5;
}

@end