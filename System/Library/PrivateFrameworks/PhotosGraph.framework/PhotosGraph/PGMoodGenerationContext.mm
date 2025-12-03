@interface PGMoodGenerationContext
- (BOOL)locationIsLongTimeNoSeeWithLocationNode:(id)node;
- (BOOL)personIsLongTimeNoSeeWithPersonNode:(id)node;
- (BOOL)socialGroupIsLongTimeNoSeeWithSocialGroupNode:(id)node;
- (PGMoodGenerationContext)initWithReferenceDate:(id)date;
@end

@implementation PGMoodGenerationContext

- (BOOL)locationIsLongTimeNoSeeWithLocationNode:(id)node
{
  nodeCopy = node;
  isLongTimeNoSeeByLocationUUID = self->_isLongTimeNoSeeByLocationUUID;
  uUID = [nodeCopy UUID];
  v7 = [(NSMutableDictionary *)isLongTimeNoSeeByLocationUUID objectForKeyedSubscript:uUID];

  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    locationNodeCollection = [nodeCopy locationNodeCollection];
    addressNodes = [locationNodeCollection addressNodes];
    momentNodes = [addressNodes momentNodes];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__PGMoodGenerationContext_locationIsLongTimeNoSeeWithLocationNode___block_invoke;
    v16[3] = &unk_278889050;
    v16[4] = self;
    v16[5] = &v17;
    [momentNodes enumerateNodesUsingBlock:v16];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:*(v18 + 24)];
    v13 = self->_isLongTimeNoSeeByLocationUUID;
    uUID2 = [nodeCopy UUID];
    [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:uUID2];

    bOOLValue = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
  }

  return bOOLValue & 1;
}

uint64_t __67__PGMoodGenerationContext_locationIsLongTimeNoSeeWithLocationNode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 endsBeforeLocalDate:*(*(a1 + 32) + 40)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (BOOL)socialGroupIsLongTimeNoSeeWithSocialGroupNode:(id)node
{
  nodeCopy = node;
  isLongTimeNoSeeBySocialGroupUUID = self->_isLongTimeNoSeeBySocialGroupUUID;
  uUID = [nodeCopy UUID];
  v7 = [(NSMutableDictionary *)isLongTimeNoSeeBySocialGroupUUID objectForKeyedSubscript:uUID];

  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    collection = [nodeCopy collection];
    momentNodes = [collection momentNodes];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__PGMoodGenerationContext_socialGroupIsLongTimeNoSeeWithSocialGroupNode___block_invoke;
    v15[3] = &unk_278889050;
    v15[4] = self;
    v15[5] = &v16;
    [momentNodes enumerateNodesUsingBlock:v15];

    v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v17 + 24)];
    v12 = self->_isLongTimeNoSeeBySocialGroupUUID;
    uUID2 = [nodeCopy UUID];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:uUID2];

    bOOLValue = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  return bOOLValue & 1;
}

uint64_t __73__PGMoodGenerationContext_socialGroupIsLongTimeNoSeeWithSocialGroupNode___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) momentIsLongTimeNoSeeForPeopleWithMomentNode:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (BOOL)personIsLongTimeNoSeeWithPersonNode:(id)node
{
  nodeCopy = node;
  isLongTimeNoSeeByPersonLocalIdentifier = self->_isLongTimeNoSeeByPersonLocalIdentifier;
  localIdentifier = [nodeCopy localIdentifier];
  v7 = [(NSMutableDictionary *)isLongTimeNoSeeByPersonLocalIdentifier objectForKeyedSubscript:localIdentifier];

  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    collection = [nodeCopy collection];
    momentNodes = [collection momentNodes];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__PGMoodGenerationContext_personIsLongTimeNoSeeWithPersonNode___block_invoke;
    v15[3] = &unk_278889050;
    v15[4] = self;
    v15[5] = &v16;
    [momentNodes enumerateNodesUsingBlock:v15];

    v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v17 + 24)];
    v12 = self->_isLongTimeNoSeeByPersonLocalIdentifier;
    localIdentifier2 = [nodeCopy localIdentifier];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:localIdentifier2];

    bOOLValue = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  return bOOLValue & 1;
}

uint64_t __63__PGMoodGenerationContext_personIsLongTimeNoSeeWithPersonNode___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) momentIsLongTimeNoSeeForPeopleWithMomentNode:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (PGMoodGenerationContext)initWithReferenceDate:(id)date
{
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = PGMoodGenerationContext;
  v5 = [(PGMoodGenerationContext *)&v17 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    isLongTimeNoSeeByPersonLocalIdentifier = v5->_isLongTimeNoSeeByPersonLocalIdentifier;
    v5->_isLongTimeNoSeeByPersonLocalIdentifier = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    isLongTimeNoSeeBySocialGroupUUID = v5->_isLongTimeNoSeeBySocialGroupUUID;
    v5->_isLongTimeNoSeeBySocialGroupUUID = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    isLongTimeNoSeeByLocationUUID = v5->_isLongTimeNoSeeByLocationUUID;
    v5->_isLongTimeNoSeeByLocationUUID = v10;

    if (!dateCopy)
    {
      dateCopy = [MEMORY[0x277CBEAA8] date];
    }

    v12 = [MEMORY[0x277D27690] dateByAddingYears:-1 toDate:dateCopy];
    longTimeNoSeePeopleLatestDate = v5->_longTimeNoSeePeopleLatestDate;
    v5->_longTimeNoSeePeopleLatestDate = v12;

    v14 = [MEMORY[0x277D27690] dateByAddingYears:-2 toDate:dateCopy];
    longTimeNoSeeLocationLatestDate = v5->_longTimeNoSeeLocationLatestDate;
    v5->_longTimeNoSeeLocationLatestDate = v14;
  }

  return v5;
}

@end