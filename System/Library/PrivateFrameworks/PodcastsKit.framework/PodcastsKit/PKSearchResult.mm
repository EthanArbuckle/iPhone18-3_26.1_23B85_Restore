@interface PKSearchResult
- (PKSearchResult)init;
- (PKSearchResult)initWithEpisodes:(id)episodes shows:(id)shows;
@end

@implementation PKSearchResult

- (PKSearchResult)initWithEpisodes:(id)episodes shows:(id)shows
{
  type metadata accessor for Episode();
  v5 = sub_25EA1E718();
  type metadata accessor for Show();
  v6 = sub_25EA1E718();
  *(self + OBJC_IVAR___PKSearchResult_episodes) = v5;
  *(self + OBJC_IVAR___PKSearchResult_shows) = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SearchResult();
  return [(PKSearchResult *)&v8 init];
}

- (PKSearchResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end