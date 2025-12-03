@interface PGMePersonMemoryGenerator
- (PGMePersonMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGMePersonMemoryGenerator

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  v6 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];
  v7 = MEMORY[0x277D22BF8];
  v8 = +[PGGraphFeatureNodeCollection momentOfFeature];
  v9 = [v7 adjacencyWithSources:v6 relation:v8 targetsClass:objc_opt_class()];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__PGMePersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v11[3] = &unk_27887F438;
  v12 = blockCopy;
  v10 = blockCopy;
  [v9 enumerateTargetsBySourceWithBlock:v11];
}

void __83__PGMePersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 featureNodeCollection];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (PGMePersonMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v7.receiver = self;
  v7.super_class = PGMePersonMemoryGenerator;
  v3 = [(PGPersonMemoryGenerator *)&v7 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    featuredSeasonConfiguration = v3->_featuredSeasonConfiguration;
    v3->_featuredSeasonConfiguration = 0;
  }

  return v4;
}

@end