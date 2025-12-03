@interface TPSSearchQuery
+ (id)escapeSearchTerm:(id)term;
- (BOOL)isCancelled;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TPSSearchQuery)init;
- (TPSSearchQuery)initWithIdentifier:(id)identifier searchTerm:(id)term options:(unint64_t)options matchingStyle:(int64_t)style contentTypeFilter:(int64_t)filter;
- (id)makeCSQueryWith:(id)with;
- (id)rankingModifier;
- (int64_t)contentTypeFilter;
- (int64_t)hash;
- (int64_t)matchingStyle;
- (int64_t)maxCount;
- (unint64_t)options;
- (void)encodeWithCoder:(id)coder;
- (void)setContentTypeFilter:(int64_t)filter;
- (void)setIsCancelled:(BOOL)cancelled;
- (void)setMatchingStyle:(int64_t)style;
- (void)setMaxCount:(int64_t)count;
- (void)setOptions:(unint64_t)options;
- (void)setRankingModifier:(id)modifier;
@end

@implementation TPSSearchQuery

- (id)makeCSQueryWith:(id)with
{
  sub_1C014C3C0();
  selfCopy = self;
  v5 = sub_1C01125D0();

  return v5;
}

+ (id)escapeSearchTerm:(id)term
{
  v3 = sub_1C014C230();
  sub_1C0113894(v3, v4);

  v5 = sub_1C014C200();

  return v5;
}

- (unint64_t)options
{
  v3 = OBJC_IVAR___TPSSearchQuery_options;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOptions:(unint64_t)options
{
  v5 = OBJC_IVAR___TPSSearchQuery_options;
  swift_beginAccess();
  *(self + v5) = options;
}

- (int64_t)matchingStyle
{
  v3 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMatchingStyle:(int64_t)style
{
  v5 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  swift_beginAccess();
  *(self + v5) = style;
}

- (int64_t)contentTypeFilter
{
  v3 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentTypeFilter:(int64_t)filter
{
  v5 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
  swift_beginAccess();
  *(self + v5) = filter;
}

- (int64_t)maxCount
{
  v3 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMaxCount:(int64_t)count
{
  v5 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  *(self + v5) = count;
}

- (BOOL)isCancelled
{
  v3 = OBJC_IVAR___TPSSearchQuery_isCancelled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsCancelled:(BOOL)cancelled
{
  v5 = OBJC_IVAR___TPSSearchQuery_isCancelled;
  swift_beginAccess();
  *(self + v5) = cancelled;
}

- (id)rankingModifier
{
  if (*(self + OBJC_IVAR___TPSSearchQuery_rankingModifier))
  {
    v2 = *(self + OBJC_IVAR___TPSSearchQuery_rankingModifier + 8);
    v5[4] = *(self + OBJC_IVAR___TPSSearchQuery_rankingModifier);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1C013EC28;
    v5[3] = &block_descriptor_9;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRankingModifier:(id)modifier
{
  v4 = _Block_copy(modifier);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1C0140370;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___TPSSearchQuery_rankingModifier);
  v8 = *(self + OBJC_IVAR___TPSSearchQuery_rankingModifier);
  v9 = *(self + OBJC_IVAR___TPSSearchQuery_rankingModifier + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_1C0113884(v8);
}

- (TPSSearchQuery)initWithIdentifier:(id)identifier searchTerm:(id)term options:(unint64_t)options matchingStyle:(int64_t)style contentTypeFilter:(int64_t)filter
{
  v10 = sub_1C014C230();
  v12 = v11;
  v13 = sub_1C014C230();
  return SearchQuery.init(identifier:searchTerm:options:matchingStyle:contentTypeFilter:)(v10, v12, v13, v14, options, style, filter);
}

- (NSString)description
{
  selfCopy = self;
  SearchQuery.description.getter();

  v3 = sub_1C014C200();

  return v3;
}

- (TPSSearchQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SearchQuery.encode(with:)(coderCopy);
}

- (int64_t)hash
{
  v3 = (self + OBJC_IVAR___TPSSearchQuery_identifier);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  selfCopy = self;

  v7 = MEMORY[0x1C68D6B80](v5, v4);

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SearchQuery.isEqual(_:)(v8);

  sub_1C00FC158(v8);
  return v6 & 1;
}

@end