@interface CLSMeaningClue(Ingest)
- (uint64_t)isReliable;
- (uint64_t)numberOfAssets;
- (uint64_t)numberOfDominantSceneAssets;
- (uint64_t)numberOfHighConfidenceAssets;
- (uint64_t)numberOfSearchConfidenceAssets;
- (uint64_t)sceneIdentifier;
@end

@implementation CLSMeaningClue(Ingest)

- (uint64_t)sceneIdentifier
{
  extraParameters = [self extraParameters];
  v2 = [extraParameters objectForKeyedSubscript:*MEMORY[0x277D27658]];

  unsignedLongLongValue = [v2 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (uint64_t)isReliable
{
  extraParameters = [self extraParameters];
  v2 = [extraParameters objectForKeyedSubscript:*MEMORY[0x277D27630]];

  bOOLValue = [v2 BOOLValue];
  return bOOLValue;
}

- (uint64_t)numberOfDominantSceneAssets
{
  extraParameters = [self extraParameters];
  v2 = [extraParameters objectForKeyedSubscript:*MEMORY[0x277D27640]];

  unsignedIntegerValue = [v2 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (uint64_t)numberOfSearchConfidenceAssets
{
  extraParameters = [self extraParameters];
  v2 = [extraParameters objectForKeyedSubscript:*MEMORY[0x277D27650]];

  unsignedIntegerValue = [v2 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (uint64_t)numberOfHighConfidenceAssets
{
  extraParameters = [self extraParameters];
  v2 = [extraParameters objectForKeyedSubscript:*MEMORY[0x277D27648]];

  unsignedIntegerValue = [v2 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (uint64_t)numberOfAssets
{
  extraParameters = [self extraParameters];
  v2 = [extraParameters objectForKeyedSubscript:*MEMORY[0x277D27638]];

  unsignedIntegerValue = [v2 unsignedIntegerValue];
  return unsignedIntegerValue;
}

@end