@interface MTRecommendationModuleContentRequest
- (MTRecommendationModuleContentRequest)init;
- (MTRecommendationModuleContentRequest)initWithModuleID:(id)d;
- (void)performWithCompletion:(id)completion;
@end

@implementation MTRecommendationModuleContentRequest

- (MTRecommendationModuleContentRequest)initWithModuleID:(id)d
{
  v4 = sub_1D917820C();
  v5 = (self + OBJC_IVAR___MTRecommendationModuleContentRequest_moduleID);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RecommendationModuleContentRequest();
  return [(MTBaseMAPIRequest *)&v8 init];
}

- (void)performWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1D901B998(selfCopy, v4);
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