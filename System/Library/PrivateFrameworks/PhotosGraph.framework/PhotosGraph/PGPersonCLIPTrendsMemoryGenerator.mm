@interface PGPersonCLIPTrendsMemoryGenerator
- (PGPersonCLIPTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)a3 configurations:(id)a4;
@end

@implementation PGPersonCLIPTrendsMemoryGenerator

- (PGPersonCLIPTrendsMemoryGenerator)initWithMemoryGenerationContext:(id)a3 configurations:(id)a4
{
  v6.receiver = self;
  v6.super_class = PGPersonCLIPTrendsMemoryGenerator;
  v4 = [(PGPersonTrendsMemoryGenerator *)&v6 initWithMemoryGenerationContext:a3 configurations:a4];
  if (v4)
  {
    v4->_minimumSceneAnalysisVersion = [MEMORY[0x277D3CAB0] latestVersion];
  }

  return v4;
}

@end