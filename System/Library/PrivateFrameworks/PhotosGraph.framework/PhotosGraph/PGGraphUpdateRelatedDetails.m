@interface PGGraphUpdateRelatedDetails
- (NSSet)identifiersForMemoriesRelatedToDeletedMoments;
- (NSSet)identifiersForMomentRelatedToDeletedPersons;
- (NSSet)identifiersForMomentRelatedToUpdatedPersons;
- (PGGraphUpdateRelatedDetails)init;
- (id)_momentNodesFromPersonNodes:(id)a3;
- (void)_accumulateMomentIdentifiersInto:(id)a3 forPersonNodes:(id)a4;
- (void)accumulateDetailsForDeletedMomentNodes:(id)a3;
- (void)accumulateDetailsForDeletedPersonNodes:(id)a3;
- (void)accumulateDetailsForUpdatedPersonNode:(id)a3 personChange:(id)a4;
@end

@implementation PGGraphUpdateRelatedDetails

- (id)_momentNodesFromPersonNodes:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v16 + 1) + 8 * i) collection];
        v11 = [v10 momentNodes];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __59__PGGraphUpdateRelatedDetails__momentNodesFromPersonNodes___block_invoke;
        v14[3] = &unk_278889290;
        v15 = v4;
        [v11 enumerateNodesUsingBlock:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_accumulateMomentIdentifiersInto:(id)a3 forPersonNodes:(id)a4
{
  v5 = a3;
  v7 = [a4 momentNodes];
  v6 = [v7 uuids];
  [v5 unionSet:v6];
}

- (void)accumulateDetailsForDeletedMomentNodes:(id)a3
{
  v4 = a3;
  v7 = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMemoryNodesRelatedToDeletedMoments];
  v5 = [v4 memoryNodes];

  v6 = [v5 uniqueMemoryIdentifiers];
  [v7 unionSet:v6];
}

- (void)accumulateDetailsForDeletedPersonNodes:(id)a3
{
  v4 = a3;
  v7 = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMomentNodesRelatedToDeletedPersons];
  v5 = [v4 momentNodes];

  v6 = [v5 uuids];
  [v7 unionSet:v6];
}

- (void)accumulateDetailsForUpdatedPersonNode:(id)a3 personChange:(id)a4
{
  v12 = a3;
  v6 = [a4 propertyNames];
  if (searchIndexProcessorIsInterestedInChangedPersonProperties_onceToken != -1)
  {
    dispatch_once(&searchIndexProcessorIsInterestedInChangedPersonProperties_onceToken, &__block_literal_global_26873);
  }

  v7 = [v6 intersectsSet:searchIndexProcessorIsInterestedInChangedPersonProperties_personPropertiesOfInterest];

  if (v7)
  {
    v8 = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMomentNodesRelatedToUpdatedPersons];
    v9 = [v12 collection];
    v10 = [v9 momentNodes];
    v11 = [v10 uuids];
    [v8 unionSet:v11];
  }
}

- (NSSet)identifiersForMemoriesRelatedToDeletedMoments
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMemoryNodesRelatedToDeletedMoments];
  v4 = [v2 setWithSet:v3];

  return v4;
}

- (NSSet)identifiersForMomentRelatedToDeletedPersons
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMomentNodesRelatedToDeletedPersons];
  v4 = [v2 setWithSet:v3];

  return v4;
}

- (NSSet)identifiersForMomentRelatedToUpdatedPersons
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(PGGraphUpdateRelatedDetails *)self accumulatedIdentifiersForMomentNodesRelatedToUpdatedPersons];
  v4 = [v2 setWithSet:v3];

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