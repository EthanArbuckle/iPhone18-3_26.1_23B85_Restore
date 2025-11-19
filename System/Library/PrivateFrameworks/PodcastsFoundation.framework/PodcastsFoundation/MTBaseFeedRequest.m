@interface MTBaseFeedRequest
- (MTBaseFeedRequest)init;
- (MTBaseFeedRequest)initWithStoreID:(int64_t)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MTBaseFeedRequest

- (MTBaseFeedRequest)initWithStoreID:(int64_t)a3
{
  *(&self->super.super.isa + OBJC_IVAR___MTBaseFeedRequest_showMetadata) = 0;
  *(&self->super.super.isa + OBJC_IVAR___MTBaseFeedRequest_storeID) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseFeedRequest();
  return [(MTBaseMAPIRequest *)&v4 init];
}

- (void)performWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1D9000318(sub_1D8D96FE8, v5);
}

- (MTBaseFeedRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end