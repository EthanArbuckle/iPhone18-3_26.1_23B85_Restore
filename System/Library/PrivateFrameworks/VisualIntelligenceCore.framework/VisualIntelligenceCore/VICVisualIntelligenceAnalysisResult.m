@interface VICVisualIntelligenceAnalysisResult
- (VICVisualIntelligenceAnalysisRequest)request;
- (VICVisualIntelligenceAnalysisResult)init;
- (void)setRequest:(id)a3;
@end

@implementation VICVisualIntelligenceAnalysisResult

- (VICVisualIntelligenceAnalysisRequest)request
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRequest:(id)a3
{
  v5 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (VICVisualIntelligenceAnalysisResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end