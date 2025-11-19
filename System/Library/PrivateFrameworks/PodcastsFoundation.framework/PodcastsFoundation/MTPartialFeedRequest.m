@interface MTPartialFeedRequest
- (BOOL)showTypeIsSerial;
- (MTPartialFeedRequest)initWithStoreID:(int64_t)a3;
- (NSArray)sections;
- (int64_t)limit;
- (void)setLimit:(int64_t)a3;
- (void)setSections:(id)a3;
- (void)setShowTypeIsSerial:(BOOL)a3;
@end

@implementation MTPartialFeedRequest

- (int64_t)limit
{
  v3 = OBJC_IVAR___MTPartialFeedRequest_limit;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLimit:(int64_t)a3
{
  v5 = OBJC_IVAR___MTPartialFeedRequest_limit;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSArray)sections
{
  v3 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  v4 = *(self + v3);

  v5 = sub_1D91785DC();

  return v5;
}

- (void)setSections:(id)a3
{
  v4 = sub_1D91785FC();
  v5 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (BOOL)showTypeIsSerial
{
  v3 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowTypeIsSerial:(BOOL)a3
{
  v5 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MTPartialFeedRequest)initWithStoreID:(int64_t)a3
{
  *(self + OBJC_IVAR___MTPartialFeedRequest_limit) = 25;
  *(self + OBJC_IVAR___MTPartialFeedRequest_sections) = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial) = 0;
  *(self + OBJC_IVAR___MTBaseFeedRequest_showMetadata) = 0;
  *(self + OBJC_IVAR___MTBaseFeedRequest_storeID) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseFeedRequest();
  return [(MTBaseFeedRequest *)&v4 init];
}

@end