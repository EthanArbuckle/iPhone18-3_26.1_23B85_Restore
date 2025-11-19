@interface VICVisualIntelligenceAnalysisRequest
- (VICVisualIntelligenceAnalysisRequest)init;
- (VICVisualIntelligenceAnalysisRequestConfig)config;
- (__CVBuffer)pixelBuffer;
- (id)request;
@end

@implementation VICVisualIntelligenceAnalysisRequest

- (id)request
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (__CVBuffer)pixelBuffer
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_pixelBuffer;
  swift_beginAccess();
  return *(self + v3);
}

- (VICVisualIntelligenceAnalysisRequestConfig)config
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config;
  swift_beginAccess();
  return *(self + v3);
}

- (VICVisualIntelligenceAnalysisRequest)init
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_pixelBuffer) = 0;
  *(self + OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for VICVisualIntelligenceAnalysisRequest();
  return [(VICVisualIntelligenceAnalysisRequest *)&v4 init];
}

@end