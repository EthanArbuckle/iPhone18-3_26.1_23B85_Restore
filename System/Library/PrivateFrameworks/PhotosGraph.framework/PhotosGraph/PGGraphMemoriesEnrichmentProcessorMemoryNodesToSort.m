@interface PGGraphMemoriesEnrichmentProcessorMemoryNodesToSort
- (PGGraphMemoriesEnrichmentProcessorMemoryNodesToSort)init;
@end

@implementation PGGraphMemoriesEnrichmentProcessorMemoryNodesToSort

- (PGGraphMemoriesEnrichmentProcessorMemoryNodesToSort)init
{
  v9.receiver = self;
  v9.super_class = PGGraphMemoriesEnrichmentProcessorMemoryNodesToSort;
  v2 = [(PGGraphMemoriesEnrichmentProcessorMemoryNodesToSort *)&v9 init];
  v3 = v2;
  if (v2)
  {
    memoryNodesWithoutLocalMemory = v2->_memoryNodesWithoutLocalMemory;
    v5 = MEMORY[0x277CBEBF8];
    v2->_memoryNodesWithoutLocalMemory = MEMORY[0x277CBEBF8];

    memoryNodesWithoutLocalMemoryLastEnrichmentDate = v3->_memoryNodesWithoutLocalMemoryLastEnrichmentDate;
    v3->_memoryNodesWithoutLocalMemoryLastEnrichmentDate = v5;

    memoryNodesWithLocalMemoryLastEnrichmentDate = v3->_memoryNodesWithLocalMemoryLastEnrichmentDate;
    v3->_memoryNodesWithLocalMemoryLastEnrichmentDate = v5;
  }

  return v3;
}

@end