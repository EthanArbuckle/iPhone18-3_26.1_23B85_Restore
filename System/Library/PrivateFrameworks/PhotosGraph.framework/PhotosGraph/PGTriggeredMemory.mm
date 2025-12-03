@interface PGTriggeredMemory
- (NSString)description;
- (PGTriggeredMemory)initWithMemoryCategory:(unint64_t)category memoryCategorySubcategory:(unint64_t)subcategory memoryMomentNodes:(id)nodes memoryFeatureNodes:(id)featureNodes validityIntervalByTriggerType:(id)type creationDate:(id)date uniqueMemoryIdentifier:(id)identifier generatedWithFallbackRequirements:(BOOL)self0;
- (PGTriggeredMemory)initWithMemoryCategory:(unint64_t)category memoryCategorySubcategory:(unint64_t)subcategory memoryMomentNodes:(id)nodes memoryFeatureNodes:(id)featureNodes validityIntervalByTriggerType:(id)type creationDate:(id)date uniqueMemoryIdentifier:(id)identifier photosGraphVersion:(int64_t)self0 generatedWithFallbackRequirements:(BOOL)self1;
- (PGTriggeredMemory)initWithMemoryNode:(id)node validityIntervalByTriggerType:(id)type creationDate:(id)date;
@end

@implementation PGTriggeredMemory

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = PGTriggeredMemory;
  v4 = [(PGTriggeredMemory *)&v11 description];
  v5 = [PGGraphBuilder memoryLabelForCategory:[(PGTriggeredMemory *)self memoryCategory]];
  memoryFeatureNodes = [(PGTriggeredMemory *)self memoryFeatureNodes];
  triggerTypes = [(PGTriggeredMemory *)self triggerTypes];
  creationDate = [(PGTriggeredMemory *)self creationDate];
  v9 = [v3 stringWithFormat:@"%@ memoryCategory: %@, features: %@, triggerTypes: %@, creationDate: %@", v4, v5, memoryFeatureNodes, triggerTypes, creationDate];

  return v9;
}

- (PGTriggeredMemory)initWithMemoryNode:(id)node validityIntervalByTriggerType:(id)type creationDate:(id)date
{
  dateCopy = date;
  typeCopy = type;
  nodeCopy = node;
  memoryCategory = [nodeCopy memoryCategory];
  memoryCategorySubcategory = [nodeCopy memoryCategorySubcategory];
  memoryMomentNodes = [nodeCopy memoryMomentNodes];
  memoryFeatureNodes = [nodeCopy memoryFeatureNodes];
  uniqueMemoryIdentifier = [nodeCopy uniqueMemoryIdentifier];
  v15 = PLPhotosGraphVersionFromAlgorithmsVersions();
  generatedWithFallbackRequirements = [nodeCopy generatedWithFallbackRequirements];

  LOBYTE(v19) = generatedWithFallbackRequirements;
  v17 = [(PGTriggeredMemory *)self initWithMemoryCategory:memoryCategory memoryCategorySubcategory:memoryCategorySubcategory memoryMomentNodes:memoryMomentNodes memoryFeatureNodes:memoryFeatureNodes validityIntervalByTriggerType:typeCopy creationDate:dateCopy uniqueMemoryIdentifier:uniqueMemoryIdentifier photosGraphVersion:v15 generatedWithFallbackRequirements:v19];

  return v17;
}

- (PGTriggeredMemory)initWithMemoryCategory:(unint64_t)category memoryCategorySubcategory:(unint64_t)subcategory memoryMomentNodes:(id)nodes memoryFeatureNodes:(id)featureNodes validityIntervalByTriggerType:(id)type creationDate:(id)date uniqueMemoryIdentifier:(id)identifier generatedWithFallbackRequirements:(BOOL)self0
{
  identifierCopy = identifier;
  dateCopy = date;
  typeCopy = type;
  featureNodesCopy = featureNodes;
  nodesCopy = nodes;
  LOBYTE(v24) = requirements;
  v22 = [(PGTriggeredMemory *)self initWithMemoryCategory:category memoryCategorySubcategory:subcategory memoryMomentNodes:nodesCopy memoryFeatureNodes:featureNodesCopy validityIntervalByTriggerType:typeCopy creationDate:dateCopy uniqueMemoryIdentifier:identifierCopy photosGraphVersion:PLPhotosGraphVersionFromAlgorithmsVersions() generatedWithFallbackRequirements:v24];

  return v22;
}

- (PGTriggeredMemory)initWithMemoryCategory:(unint64_t)category memoryCategorySubcategory:(unint64_t)subcategory memoryMomentNodes:(id)nodes memoryFeatureNodes:(id)featureNodes validityIntervalByTriggerType:(id)type creationDate:(id)date uniqueMemoryIdentifier:(id)identifier photosGraphVersion:(int64_t)self0 generatedWithFallbackRequirements:(BOOL)self1
{
  v42 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  typeCopy = type;
  dateCopy = date;
  identifierCopy = identifier;
  v40.receiver = self;
  v40.super_class = PGTriggeredMemory;
  v20 = [(PGTriggeredMemory *)&v40 init];
  v21 = v20;
  if (v20)
  {
    v32 = nodesCopy;
    v20->_memoryCategory = category;
    v20->_memoryCategorySubcategory = subcategory;
    objc_storeStrong(&v20->_memoryMomentNodes, nodes);
    objc_storeStrong(&v21->_memoryFeatureNodes, featureNodes);
    objc_storeStrong(&v21->_creationDate, date);
    objc_storeStrong(&v21->_validityIntervalByTriggerType, type);
    objc_storeStrong(&v21->_uniqueMemoryIdentifier, identifier);
    v21->_photosGraphVersion = version;
    v21->_generatedWithFallbackRequirements = requirements;
    v22 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = typeCopy;
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v41 count:16];
    v25 = typeCopy;
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

    typeCopy = v25;
    nodesCopy = v32;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v21;
}

@end