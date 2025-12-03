@interface PGLocationCLIPTrendsMemoryGenerator
- (PGLocationCLIPTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations;
@end

@implementation PGLocationCLIPTrendsMemoryGenerator

- (PGLocationCLIPTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)context configurations:(id)configurations
{
  v6.receiver = self;
  v6.super_class = PGLocationCLIPTrendsMemoryGenerator;
  v4 = [(PGLocationTrendsMemoryGenerator *)&v6 initWithMemoryGenerationContext:context configurations:configurations];
  if (v4)
  {
    v4->_minimumSceneAnalysisVersion = [MEMORY[0x277D3CAB0] latestVersion];
  }

  return v4;
}

@end