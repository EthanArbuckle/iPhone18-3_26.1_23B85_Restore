@interface PGEnrichedMemory
- (NSArray)blockableFeatures;
- (NSString)description;
- (PGEnrichedMemory)initWithTriggeredMemory:(id)a3;
- (id)enrichedDescription;
@end

@implementation PGEnrichedMemory

- (id)enrichedDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(PGEnrichedMemory *)self triggerTypes];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __39__PGEnrichedMemory_enrichedDescription__block_invoke;
  v22 = &unk_27888A200;
  v23 = v3;
  v5 = v3;
  [v4 enumerateIndexesUsingBlock:&v19];

  v6 = MEMORY[0x277CCAB68];
  v7 = [(PGEnrichedMemory *)self title];
  v8 = [(PGEnrichedMemory *)self subtitle];
  v9 = [PGGraphBuilder memoryLabelForCategory:[(PGEnrichedMemory *)self memoryCategory]];
  v10 = [(PGEnrichedMemory *)self curatedAssetUUIDs];
  v11 = [v10 count];
  v12 = [(PGEnrichedMemory *)self extendedCuratedAssetUUIDs];
  v13 = [v12 count];
  v14 = [(PGEnrichedMemory *)self keyAssetUUID];
  v15 = [(__CFString *)v5 length];
  v16 = @"none";
  if (v15)
  {
    v16 = v5;
  }

  v17 = [v6 stringWithFormat:@"%@, %@ (%@), %tu curated assets, %tu extended assets, key asset: %@, trigger: %@\n", v7, v8, v9, v11, v13, v14, v16, v19, v20, v21, v22];

  [v17 replaceOccurrencesOfString:@"\n" withString:&stru_2843F5C58 options:2 range:{0, objc_msgSend(v17, "length")}];

  return v17;
}

void __39__PGEnrichedMemory_enrichedDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [PGMemoryTrigger stringFromTriggerType:a2];
  [v2 appendFormat:@"%@ ", v3];
}

- (NSArray)blockableFeatures
{
  v3 = [(PGTriggeredMemoryProtocol *)self->_triggeredMemory blockableFeatures];
  if (!v3)
  {
    v4 = +[PGLogging sharedLogging];
    v5 = [v4 loggingConnection];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_INFO, "[PGEnrichedMemory blockableFeatures] Blockable features was not already computed on triggered memory, this should only happen from CLI/testing, not during overnight election", v9, 2u);
    }

    v6 = [(PGEnrichedMemory *)self memoryFeatureNodes];
    v7 = [(PGEnrichedMemory *)self memoryMomentNodes];
    v3 = [PGMemoryFeatureBlocking blockableFeaturesForFeatureNodes:v6 momentNodes:v7 memoryCategory:[(PGEnrichedMemory *)self memoryCategory]];
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGEnrichedMemory;
  v4 = [(PGEnrichedMemory *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %@, Key asset: %@, %lu curated assets, %lu extended curated assets, %lu representative assets, ", v4, self->_triggeredMemory, self->_keyAssetUUID, -[NSArray count](self->_curatedAssetUUIDs, "count"), -[NSArray count](self->_extendedCuratedAssetUUIDs, "count"), -[NSArray count](self->_representativeAssetUUIDs, "count")];

  return v5;
}

- (PGEnrichedMemory)initWithTriggeredMemory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGEnrichedMemory;
  v6 = [(PGEnrichedMemory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_triggeredMemory, a3);
  }

  return v7;
}

@end