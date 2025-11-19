@interface VICVisualIntelligenceAnalysisRequestConfig
- (NSNumber)vluAuthorized;
- (NSString)environmentBundleIdentifier;
- (VICVisualIntelligenceAnalysisRequestConfig)init;
- (void)setEnvironmentBundleIdentifier:(id)a3;
@end

@implementation VICVisualIntelligenceAnalysisRequestConfig

- (NSString)environmentBundleIdentifier
{
  v2 = self + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1D8B15940();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnvironmentBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1D8B15970();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSNumber)vluAuthorized
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized;
  swift_beginAccess();
  return *(self + v3);
}

- (VICVisualIntelligenceAnalysisRequestConfig)init
{
  v2 = (self + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(self + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for VICVisualIntelligenceAnalysisRequestConfig();
  return [(VICVisualIntelligenceAnalysisRequestConfig *)&v4 init];
}

@end