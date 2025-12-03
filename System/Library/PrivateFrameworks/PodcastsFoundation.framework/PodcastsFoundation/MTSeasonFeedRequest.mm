@interface MTSeasonFeedRequest
- (MTSeasonFeedRequest)initWithStoreID:(int64_t)d;
- (MTSeasonFeedRequest)initWithStoreID:(int64_t)d seasons:(id)seasons;
- (NSArray)seasons;
- (void)setSeasons:(id)seasons;
@end

@implementation MTSeasonFeedRequest

- (NSArray)seasons
{
  v3 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  v4 = *(self + v3);

  v5 = sub_1D91785DC();

  return v5;
}

- (void)setSeasons:(id)seasons
{
  v4 = sub_1D91785FC();
  v5 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (MTSeasonFeedRequest)initWithStoreID:(int64_t)d seasons:(id)seasons
{
  *(self + OBJC_IVAR___MTSeasonFeedRequest_seasons) = sub_1D91785FC();
  *(self + OBJC_IVAR___MTPartialFeedRequest_limit) = 25;
  *(self + OBJC_IVAR___MTPartialFeedRequest_sections) = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial) = 0;
  *(self + OBJC_IVAR___MTBaseFeedRequest_showMetadata) = 0;
  *(self + OBJC_IVAR___MTBaseFeedRequest_storeID) = d;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseFeedRequest();
  return [(MTBaseFeedRequest *)&v7 init];
}

- (MTSeasonFeedRequest)initWithStoreID:(int64_t)d
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end