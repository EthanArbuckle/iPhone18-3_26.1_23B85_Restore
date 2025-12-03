@interface MTSearchRequest
- (MTSearchRequest)init;
- (MTSearchRequest)initWithTerm:(id)term contentTypes:(id)types;
- (void)performWithCompletion:(id)completion;
- (void)setLimit:(int64_t)limit;
@end

@implementation MTSearchRequest

- (MTSearchRequest)initWithTerm:(id)term contentTypes:(id)types
{
  v4 = sub_1D917820C();
  v6 = v5;
  v7 = sub_1D91785FC();
  return SearchRequest.init(term:contentTypes:)(v4, v6, v7);
}

- (void)setLimit:(int64_t)limit
{
  v3 = self + OBJC_IVAR___MTSearchRequest_limit;
  *v3 = limit;
  v3[8] = 0;
}

- (void)performWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1D9059EDC(sub_1D8D96FE8, v5);
}

- (MTSearchRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end