@interface PGEnrichedMemory
- (NSArray)blockableFeatures;
- (NSString)description;
- (PGEnrichedMemory)initWithTriggeredMemory:(id)memory;
- (id)enrichedDescription;
@end

@implementation PGEnrichedMemory

- (id)enrichedDescription
{
  string = [MEMORY[0x277CCAB68] string];
  triggerTypes = [(PGEnrichedMemory *)self triggerTypes];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __39__PGEnrichedMemory_enrichedDescription__block_invoke;
  v22 = &unk_27888A200;
  v23 = string;
  v5 = string;
  [triggerTypes enumerateIndexesUsingBlock:&v19];

  v6 = MEMORY[0x277CCAB68];
  title = [(PGEnrichedMemory *)self title];
  subtitle = [(PGEnrichedMemory *)self subtitle];
  v9 = [PGGraphBuilder memoryLabelForCategory:[(PGEnrichedMemory *)self memoryCategory]];
  curatedAssetUUIDs = [(PGEnrichedMemory *)self curatedAssetUUIDs];
  v11 = [curatedAssetUUIDs count];
  extendedCuratedAssetUUIDs = [(PGEnrichedMemory *)self extendedCuratedAssetUUIDs];
  v13 = [extendedCuratedAssetUUIDs count];
  keyAssetUUID = [(PGEnrichedMemory *)self keyAssetUUID];
  v15 = [(__CFString *)v5 length];
  v16 = @"none";
  if (v15)
  {
    v16 = v5;
  }

  v17 = [v6 stringWithFormat:@"%@, %@ (%@), %tu curated assets, %tu extended assets, key asset: %@, trigger: %@\n", title, subtitle, v9, v11, v13, keyAssetUUID, v16, v19, v20, v21, v22];

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
  blockableFeatures = [(PGTriggeredMemoryProtocol *)self->_triggeredMemory blockableFeatures];
  if (!blockableFeatures)
  {
    v4 = +[PGLogging sharedLogging];
    loggingConnection = [v4 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGEnrichedMemory blockableFeatures] Blockable features was not already computed on triggered memory, this should only happen from CLI/testing, not during overnight election", v9, 2u);
    }

    memoryFeatureNodes = [(PGEnrichedMemory *)self memoryFeatureNodes];
    memoryMomentNodes = [(PGEnrichedMemory *)self memoryMomentNodes];
    blockableFeatures = [PGMemoryFeatureBlocking blockableFeaturesForFeatureNodes:memoryFeatureNodes momentNodes:memoryMomentNodes memoryCategory:[(PGEnrichedMemory *)self memoryCategory]];
  }

  return blockableFeatures;
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

- (PGEnrichedMemory)initWithTriggeredMemory:(id)memory
{
  memoryCopy = memory;
  v9.receiver = self;
  v9.super_class = PGEnrichedMemory;
  v6 = [(PGEnrichedMemory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_triggeredMemory, memory);
  }

  return v7;
}

@end