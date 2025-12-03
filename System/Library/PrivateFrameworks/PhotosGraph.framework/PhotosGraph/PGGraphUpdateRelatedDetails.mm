@interface PGGraphUpdateRelatedDetails
- (NSSet)identifiersForMemoriesRelatedToDeletedMoments;
- (NSSet)identifiersForMomentRelatedToDeletedPersons;
- (NSSet)identifiersForMomentRelatedToUpdatedPersons;
- (PGGraphUpdateRelatedDetails)init;
- (id)_momentNodesFromPersonNodes:(id)nodes;
- (void)_accumulateMomentIdentifiersInto:(id)into forPersonNodes:(id)nodes;
- (void)accumulateDetailsForDeletedMomentNodes:(id)nodes;
- (void)accumulateDetailsForDeletedPersonNodes:(id)nodes;
- (void)accumulateDetailsForUpdatedPersonNode:(id)node personChange:(id)change;
@end

@implementation PGGraphUpdateRelatedDetails

- (id)_momentNodesFromPersonNodes:(id)nodes
{
  v21 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = nodesCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        collection = [*(*(&v16 + 1) + 8 * i) collection];
        momentNodes = [collection momentNodes];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __59__PGGraphUpdateRelatedDetails__momentNodesFromPersonNodes___block_invoke;
        v14[3] = &unk_278889290;
        v15 = v4;
        [momentNodes enumerateNodesUsingBlock:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_accumulateMomentIdentifiersInto:(id)into forPersonNodes:(id)nodes
{
  intoCopy = into;
  momentNodes = [nodes momentNodes];
  uuids = [momentNodes uuids];
  [intoCopy unionSet:uuids];
}

- (void)accumulateDetailsForDeletedMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  accumulatedIdentifiersForMemoryNodesRelatedToDeletedMoments = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMemoryNodesRelatedToDeletedMoments];
  memoryNodes = [nodesCopy memoryNodes];

  uniqueMemoryIdentifiers = [memoryNodes uniqueMemoryIdentifiers];
  [accumulatedIdentifiersForMemoryNodesRelatedToDeletedMoments unionSet:uniqueMemoryIdentifiers];
}

- (void)accumulateDetailsForDeletedPersonNodes:(id)nodes
{
  nodesCopy = nodes;
  accumulatedIdentifiersForMomentNodesRelatedToDeletedPersons = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMomentNodesRelatedToDeletedPersons];
  momentNodes = [nodesCopy momentNodes];

  uuids = [momentNodes uuids];
  [accumulatedIdentifiersForMomentNodesRelatedToDeletedPersons unionSet:uuids];
}

- (void)accumulateDetailsForUpdatedPersonNode:(id)node personChange:(id)change
{
  nodeCopy = node;
  propertyNames = [change propertyNames];
  if (searchIndexProcessorIsInterestedInChangedPersonProperties_onceToken != -1)
  {
    dispatch_once(&searchIndexProcessorIsInterestedInChangedPersonProperties_onceToken, &__block_literal_global_26873);
  }

  v7 = [propertyNames intersectsSet:searchIndexProcessorIsInterestedInChangedPersonProperties_personPropertiesOfInterest];

  if (v7)
  {
    accumulatedIdentifiersForMomentNodesRelatedToUpdatedPersons = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMomentNodesRelatedToUpdatedPersons];
    collection = [nodeCopy collection];
    momentNodes = [collection momentNodes];
    uuids = [momentNodes uuids];
    [accumulatedIdentifiersForMomentNodesRelatedToUpdatedPersons unionSet:uuids];
  }
}

- (NSSet)identifiersForMemoriesRelatedToDeletedMoments
{
  v2 = MEMORY[0x277CBEB98];
  accumulatedIdentifiersForMemoryNodesRelatedToDeletedMoments = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMemoryNodesRelatedToDeletedMoments];
  v4 = [v2 setWithSet:accumulatedIdentifiersForMemoryNodesRelatedToDeletedMoments];

  return v4;
}

- (NSSet)identifiersForMomentRelatedToDeletedPersons
{
  v2 = MEMORY[0x277CBEB98];
  accumulatedIdentifiersForMomentNodesRelatedToDeletedPersons = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMomentNodesRelatedToDeletedPersons];
  v4 = [v2 setWithSet:accumulatedIdentifiersForMomentNodesRelatedToDeletedPersons];

  return v4;
}

- (NSSet)identifiersForMomentRelatedToUpdatedPersons
{
  v2 = MEMORY[0x277CBEB98];
  accumulatedIdentifiersForMomentNodesRelatedToUpdatedPersons = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMomentNodesRelatedToUpdatedPersons];
  v4 = [v2 setWithSet:accumulatedIdentifiersForMomentNodesRelatedToUpdatedPersons];

  return v4;
}

- (PGGraphUpdateRelatedDetails)init
{
  v10.receiver = self;
  v10.super_class = PGGraphUpdateRelatedDetails;
  v2 = [(PGGraphUpdateRelatedDetails *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accumulatedIdentifiersForMomentNodesRelatedToUpdatedPersons = v2->_accumulatedIdentifiersForMomentNodesRelatedToUpdatedPersons;
    v2->_accumulatedIdentifiersForMomentNodesRelatedToUpdatedPersons = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accumulatedIdentifiersForMomentNodesRelatedToDeletedPersons = v2->_accumulatedIdentifiersForMomentNodesRelatedToDeletedPersons;
    v2->_accumulatedIdentifiersForMomentNodesRelatedToDeletedPersons = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    accumulatedIdentifiersForMemoryNodesRelatedToDeletedMoments = v2->_accumulatedIdentifiersForMemoryNodesRelatedToDeletedMoments;
    v2->_accumulatedIdentifiersForMemoryNodesRelatedToDeletedMoments = v7;
  }

  return v2;
}

@end