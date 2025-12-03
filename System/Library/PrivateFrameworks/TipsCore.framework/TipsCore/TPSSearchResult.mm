@interface TPSSearchResult
+ (id)makeResultWith:(id)with items:(id)items suggestions:(id)suggestions;
- (NSArray)items;
- (NSArray)suggestions;
- (TPSSearchQuery)query;
- (TPSSearchResult)init;
- (void)append:(id)append;
- (void)encodeWithCoder:(id)coder;
- (void)replaceItemsWith:(id)with;
- (void)setItems:(id)items;
- (void)setQuery:(id)query;
- (void)setSuggestions:(id)suggestions;
@end

@implementation TPSSearchResult

- (NSArray)items
{
  v3 = OBJC_IVAR___TPSSearchResult_items;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for SearchResult.Item();

  v5 = sub_1C014C3B0();

  return v5;
}

- (void)setItems:(id)items
{
  type metadata accessor for SearchResult.Item();
  v4 = sub_1C014C3C0();
  v5 = OBJC_IVAR___TPSSearchResult_items;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSArray)suggestions
{
  v3 = OBJC_IVAR___TPSSearchResult_suggestions;
  swift_beginAccess();
  v4 = *(self + v3);

  v5 = sub_1C014C3B0();

  return v5;
}

- (void)setSuggestions:(id)suggestions
{
  v4 = sub_1C014C3C0();
  v5 = OBJC_IVAR___TPSSearchResult_suggestions;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (TPSSearchQuery)query
{
  v3 = OBJC_IVAR___TPSSearchResult_query;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setQuery:(id)query
{
  v5 = OBJC_IVAR___TPSSearchResult_query;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = query;
  queryCopy = query;
}

- (void)replaceItemsWith:(id)with
{
  if (with)
  {
    v4 = OBJC_IVAR___TPSSearchResult_items;
    swift_beginAccess();
    v6 = *(with + v4);
    v7 = OBJC_IVAR___TPSSearchResult_items;
    swift_beginAccess();
    v8 = *(self + v7);
    *(self + v7) = v6;
    selfCopy = self;
  }
}

- (void)append:(id)append
{
  type metadata accessor for SearchResult.Item();
  v4 = sub_1C014C3C0();
  selfCopy = self;
  SearchResult.append(_:)(v4);
}

- (TPSSearchResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SearchResult.encode(with:)(coderCopy);
}

+ (id)makeResultWith:(id)with items:(id)items suggestions:(id)suggestions
{
  sub_1C0139480();
  v6 = sub_1C014C3C0();
  v7 = sub_1C014C3C0();
  withCopy = with;
  v9 = sub_1C0138D7C(withCopy, v6, v7);

  return v9;
}

@end