@interface MTRecommendationModulesRequest
- (MTRecommendationModulesRequest)init;
- (void)performWithCompletion:(id)a3;
@end

@implementation MTRecommendationModulesRequest

- (void)performWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1D9026B8C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (MTRecommendationModulesRequest)init
{
  *(&self->super.super.isa + OBJC_IVAR___MTRecommendationModulesRequest_kPayloadDataFetchLimit) = 50;
  v3 = OBJC_IVAR___MTRecommendationModulesRequest_context;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 mainQueueContext];

  *(&self->super.super.isa + v3) = v5;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RecommendationModulesRequest();
  return [(MTBaseMAPIRequest *)&v7 init];
}

@end