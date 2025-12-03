@interface MTRecommendationModulesRequest
- (MTRecommendationModulesRequest)init;
- (void)performWithCompletion:(id)completion;
@end

@implementation MTRecommendationModulesRequest

- (void)performWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1D9026B8C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (MTRecommendationModulesRequest)init
{
  *(&self->super.super.isa + OBJC_IVAR___MTRecommendationModulesRequest_kPayloadDataFetchLimit) = 50;
  v3 = OBJC_IVAR___MTRecommendationModulesRequest_context;
  sharedInstance = [objc_opt_self() sharedInstance];
  mainQueueContext = [sharedInstance mainQueueContext];

  *(&self->super.super.isa + v3) = mainQueueContext;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RecommendationModulesRequest();
  return [(MTBaseMAPIRequest *)&v7 init];
}

@end