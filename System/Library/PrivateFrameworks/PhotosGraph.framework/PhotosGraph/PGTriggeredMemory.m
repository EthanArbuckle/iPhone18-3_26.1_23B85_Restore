@interface PGTriggeredMemory
- (NSString)description;
- (PGTriggeredMemory)initWithMemoryCategory:(unint64_t)a3 memoryCategorySubcategory:(unint64_t)a4 memoryMomentNodes:(id)a5 memoryFeatureNodes:(id)a6 validityIntervalByTriggerType:(id)a7 creationDate:(id)a8 uniqueMemoryIdentifier:(id)a9 generatedWithFallbackRequirements:(BOOL)a10;
- (PGTriggeredMemory)initWithMemoryCategory:(unint64_t)a3 memoryCategorySubcategory:(unint64_t)a4 memoryMomentNodes:(id)a5 memoryFeatureNodes:(id)a6 validityIntervalByTriggerType:(id)a7 creationDate:(id)a8 uniqueMemoryIdentifier:(id)a9 photosGraphVersion:(int64_t)a10 generatedWithFallbackRequirements:(BOOL)a11;
- (PGTriggeredMemory)initWithMemoryNode:(id)a3 validityIntervalByTriggerType:(id)a4 creationDate:(id)a5;
@end

@implementation PGTriggeredMemory

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = PGTriggeredMemory;
  v4 = [(PGTriggeredMemory *)&v11 description];
  v5 = [PGGraphBuilder memoryLabelForCategory:[(PGTriggeredMemory *)self memoryCategory]];
  v6 = [(PGTriggeredMemory *)self memoryFeatureNodes];
  v7 = [(PGTriggeredMemory *)self triggerTypes];
  v8 = [(PGTriggeredMemory *)self creationDate];
  v9 = [v3 stringWithFormat:@"%@ memoryCategory: %@, features: %@, triggerTypes: %@, creationDate: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (PGTriggeredMemory)initWithMemoryNode:(id)a3 validityIntervalByTriggerType:(id)a4 creationDate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 memoryCategory];
  v11 = [v9 memoryCategorySubcategory];
  v12 = [v9 memoryMomentNodes];
  v13 = [v9 memoryFeatureNodes];
  v14 = [v9 uniqueMemoryIdentifier];
  v15 = PLPhotosGraphVersionFromAlgorithmsVersions();
  v16 = [v9 generatedWithFallbackRequirements];

  LOBYTE(v19) = v16;
  v17 = [(PGTriggeredMemory *)self initWithMemoryCategory:v10 memoryCategorySubcategory:v11 memoryMomentNodes:v12 memoryFeatureNodes:v13 validityIntervalByTriggerType:v8 creationDate:v7 uniqueMemoryIdentifier:v14 photosGraphVersion:v15 generatedWithFallbackRequirements:v19];

  return v17;
}

- (PGTriggeredMemory)initWithMemoryCategory:(unint64_t)a3 memoryCategorySubcategory:(unint64_t)a4 memoryMomentNodes:(id)a5 memoryFeatureNodes:(id)a6 validityIntervalByTriggerType:(id)a7 creationDate:(id)a8 uniqueMemoryIdentifier:(id)a9 generatedWithFallbackRequirements:(BOOL)a10
{
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  LOBYTE(v24) = a10;
  v22 = [(PGTriggeredMemory *)self initWithMemoryCategory:a3 memoryCategorySubcategory:a4 memoryMomentNodes:v21 memoryFeatureNodes:v20 validityIntervalByTriggerType:v19 creationDate:v18 uniqueMemoryIdentifier:v17 photosGraphVersion:PLPhotosGraphVersionFromAlgorithmsVersions() generatedWithFallbackRequirements:v24];

  return v22;
}

- (PGTriggeredMemory)initWithMemoryCategory:(unint64_t)a3 memoryCategorySubcategory:(unint64_t)a4 memoryMomentNodes:(id)a5 memoryFeatureNodes:(id)a6 validityIntervalByTriggerType:(id)a7 creationDate:(id)a8 uniqueMemoryIdentifier:(id)a9 photosGraphVersion:(int64_t)a10 generatedWithFallbackRequirements:(BOOL)a11
{
  v42 = *MEMORY[0x277D85DE8];
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v35 = a8;
  v34 = a9;
  v40.receiver = self;
  v40.super_class = PGTriggeredMemory;
  v20 = [(PGTriggeredMemory *)&v40 init];
  v21 = v20;
  if (v20)
  {
    v32 = v17;
    v20->_memoryCategory = a3;
    v20->_memoryCategorySubcategory = a4;
    objc_storeStrong(&v20->_memoryMomentNodes, a5);
    objc_storeStrong(&v21->_memoryFeatureNodes, a6);
    objc_storeStrong(&v21->_creationDate, a8);
    objc_storeStrong(&v21->_validityIntervalByTriggerType, a7);
    objc_storeStrong(&v21->_uniqueMemoryIdentifier, a9);
    v21->_photosGraphVersion = a10;
    v21->_generatedWithFallbackRequirements = a11;
    v22 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = v19;
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v41 count:16];
    v25 = v19;
    if (v24)
    {
      v26 = v24;
      v27 = *v37;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v23);
          }

          -[NSIndexSet addIndex:](v22, "addIndex:", [*(*(&v36 + 1) + 8 * i) unsignedIntegerValue]);
        }

        v26 = [v23 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v26);
    }

    triggerTypes = v21->_triggerTypes;
    v21->_triggerTypes = v22;

    v19 = v25;
    v17 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v21;
}

@end