@interface VICVisualIntelligenceAnalyzer
+ (void)preheat;
- (VICVisualIntelligenceAnalyzer)init;
- (void)processRequest:(VICVisualIntelligenceAnalysisRequest *)request completionHandler:(id)handler;
@end

@implementation VICVisualIntelligenceAnalyzer

+ (void)preheat
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1D8B15EA0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_1D8891CA0(0, 0, v4, &unk_1D8B3F5F0, v6);
}

- (void)processRequest:(VICVisualIntelligenceAnalysisRequest *)request completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1D8B15EA0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D8B3F5B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D8B3F5C0;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_1D8B03250(0, 0, v9, &unk_1D8B3F5D0, v14);
}

- (VICVisualIntelligenceAnalyzer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VICVisualIntelligenceAnalyzer();
  return [(VICVisualIntelligenceAnalyzer *)&v3 init];
}

@end