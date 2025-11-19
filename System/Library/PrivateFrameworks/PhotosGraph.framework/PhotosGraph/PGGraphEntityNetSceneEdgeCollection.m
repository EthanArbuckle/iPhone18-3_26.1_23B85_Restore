@interface PGGraphEntityNetSceneEdgeCollection
- (unint64_t)numberOfSearchConfidenceAssets;
@end

@implementation PGGraphEntityNetSceneEdgeCollection

- (unint64_t)numberOfSearchConfidenceAssets
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__PGGraphEntityNetSceneEdgeCollection_numberOfSearchConfidenceAssets__block_invoke;
  v4[3] = &unk_278889820;
  v4[4] = &v5;
  [(MAEdgeCollection *)self enumerateUnsignedIntegerPropertyValuesForKey:@"numberOfSearchConfidenceAssets" withBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end