@interface MTSearchRequest
- (MTSearchRequest)init;
- (MTSearchRequest)initWithTerm:(id)a3 contentTypes:(id)a4;
- (void)performWithCompletion:(id)a3;
- (void)setLimit:(int64_t)a3;
@end

@implementation MTSearchRequest

- (MTSearchRequest)initWithTerm:(id)a3 contentTypes:(id)a4
{
  v4 = sub_1D917820C();
  v6 = v5;
  v7 = sub_1D91785FC();
  return SearchRequest.init(term:contentTypes:)(v4, v6, v7);
}

- (void)setLimit:(int64_t)a3
{
  v3 = self + OBJC_IVAR___MTSearchRequest_limit;
  *v3 = a3;
  v3[8] = 0;
}

- (void)performWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1D9059EDC(sub_1D8D96FE8, v5);
}

- (MTSearchRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end