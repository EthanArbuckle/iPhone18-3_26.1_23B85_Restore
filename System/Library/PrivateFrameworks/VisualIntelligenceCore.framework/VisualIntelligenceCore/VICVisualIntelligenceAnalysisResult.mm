@interface VICVisualIntelligenceAnalysisResult
- (VICVisualIntelligenceAnalysisRequest)request;
- (VICVisualIntelligenceAnalysisResult)init;
- (void)setRequest:(id)request;
@end

@implementation VICVisualIntelligenceAnalysisResult

- (VICVisualIntelligenceAnalysisRequest)request
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRequest:(id)request
{
  v5 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = request;
  requestCopy = request;
}

- (VICVisualIntelligenceAnalysisResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end