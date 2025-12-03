@interface MTFullFeedRequest
- (MTFullFeedRequest)initWithStoreID:(int64_t)d;
- (MTFullFeedRequest)initWithStoreID:(int64_t)d isSerial:(BOOL)serial hasSeasons:(BOOL)seasons;
@end

@implementation MTFullFeedRequest

- (MTFullFeedRequest)initWithStoreID:(int64_t)d isSerial:(BOOL)serial hasSeasons:(BOOL)seasons
{
  *(&self->super.super.super.isa + OBJC_IVAR___MTFullFeedRequest_isSerial) = serial;
  *(&self->super.super.super.isa + OBJC_IVAR___MTFullFeedRequest_hasSeasons) = seasons;
  *(&self->super.super.super.isa + OBJC_IVAR___MTBaseFeedRequest_showMetadata) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MTBaseFeedRequest_storeID) = d;
  v6.receiver = self;
  v6.super_class = type metadata accessor for BaseFeedRequest();
  return [(MTBaseFeedRequest *)&v6 init];
}

- (MTFullFeedRequest)initWithStoreID:(int64_t)d
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end