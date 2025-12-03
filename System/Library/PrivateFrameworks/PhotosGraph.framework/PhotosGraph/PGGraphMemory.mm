@interface PGGraphMemory
- (NSString)description;
- (NSString)uniqueMemoryIdentifier;
- (PGGraphMemory)initWithMemoryCategory:(unint64_t)category memoryCategorySubcategory:(unint64_t)subcategory momentNodes:(id)nodes featureNodes:(id)featureNodes generatedWithFallbackRequirements:(BOOL)requirements;
@end

@implementation PGGraphMemory

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PGGraphMemory;
  v4 = [(PGGraphMemory *)&v8 description];
  v5 = [PGGraphBuilder memoryLabelForCategory:self->_memoryCategory];
  v6 = [v3 stringWithFormat:@"%@: %@, momentNodes: %@, featureNodes: %@", v4, v5, self->_memoryMomentNodes, self->_memoryFeatureNodes];

  return v6;
}

- (NSString)uniqueMemoryIdentifier
{
  v3 = [PGGraphBuilder memoryLabelForCategory:self->_memoryCategory];
  v4 = [PGGraphMemoryNode uniqueMemoryIdentifierWithMemoryLabel:v3 featureNodes:self->_memoryFeatureNodes];

  return v4;
}

- (PGGraphMemory)initWithMemoryCategory:(unint64_t)category memoryCategorySubcategory:(unint64_t)subcategory momentNodes:(id)nodes featureNodes:(id)featureNodes generatedWithFallbackRequirements:(BOOL)requirements
{
  nodesCopy = nodes;
  featureNodesCopy = featureNodes;
  v18.receiver = self;
  v18.super_class = PGGraphMemory;
  v15 = [(PGGraphMemory *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_memoryCategory = category;
    v15->_memoryCategorySubcategory = subcategory;
    objc_storeStrong(&v15->_memoryMomentNodes, nodes);
    objc_storeStrong(&v16->_memoryFeatureNodes, featureNodes);
    v16->_generatedWithFallbackRequirements = requirements;
  }

  return v16;
}

@end