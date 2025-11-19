@interface TPSSearchResult
+ (id)makeResultWith:(id)a3 items:(id)a4 suggestions:(id)a5;
- (NSArray)items;
- (NSArray)suggestions;
- (TPSSearchQuery)query;
- (TPSSearchResult)init;
- (void)append:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)replaceItemsWith:(id)a3;
- (void)setItems:(id)a3;
- (void)setQuery:(id)a3;
- (void)setSuggestions:(id)a3;
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

- (void)setItems:(id)a3
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

- (void)setSuggestions:(id)a3
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

- (void)setQuery:(id)a3
{
  v5 = OBJC_IVAR___TPSSearchResult_query;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)replaceItemsWith:(id)a3
{
  if (a3)
  {
    v4 = OBJC_IVAR___TPSSearchResult_items;
    swift_beginAccess();
    v6 = *(a3 + v4);
    v7 = OBJC_IVAR___TPSSearchResult_items;
    swift_beginAccess();
    v8 = *(self + v7);
    *(self + v7) = v6;
    v9 = self;
  }
}

- (void)append:(id)a3
{
  type metadata accessor for SearchResult.Item();
  v4 = sub_1C014C3C0();
  v5 = self;
  SearchResult.append(_:)(v4);
}

- (TPSSearchResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SearchResult.encode(with:)(v4);
}

+ (id)makeResultWith:(id)a3 items:(id)a4 suggestions:(id)a5
{
  sub_1C0139480();
  v6 = sub_1C014C3C0();
  v7 = sub_1C014C3C0();
  v8 = a3;
  v9 = sub_1C0138D7C(v8, v6, v7);

  return v9;
}

@end