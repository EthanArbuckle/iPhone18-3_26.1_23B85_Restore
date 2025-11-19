@interface MTRecommendationModuleContentRequest
- (MTRecommendationModuleContentRequest)init;
- (MTRecommendationModuleContentRequest)initWithModuleID:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MTRecommendationModuleContentRequest

- (MTRecommendationModuleContentRequest)initWithModuleID:(id)a3
{
  v4 = sub_1D917820C();
  v5 = (self + OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RecommendationModuleContentRequest();
  return [(MTBaseMAPIRequest *)&v8 init];
}

- (void)performWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1D901B998(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (MTRecommendationModuleContentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end