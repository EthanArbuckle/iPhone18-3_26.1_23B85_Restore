@interface TBTileFetchRequestDescriptor
- (NSPredicate)localFetchPredicate;
- (TBTileFetchRequestDescriptor)initWithTileItems:(id)items maxCacheAge:(id)age;
- (id)_preferLocalCacheFetchRequest;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TBTileFetchRequestDescriptor

- (NSPredicate)localFetchPredicate
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (!self->_localFetchPredicate)
  {
    tileItems = [(TBTileFetchRequestDescriptor *)self tileItems];

    if (tileItems)
    {
      tileItems2 = [(TBTileFetchRequestDescriptor *)self tileItems];
      tilePredicate = [tileItems2 tilePredicate];

      maxCacheAge = [(TBTileFetchRequestDescriptor *)self maxCacheAge];

      if (maxCacheAge)
      {
        v7 = MEMORY[0x277CCA920];
        v8 = MEMORY[0x277CCAC30];
        maxCacheAge2 = [(TBTileFetchRequestDescriptor *)self maxCacheAge];
        v10 = [v8 predicateWithFormat:@"created >= %@", maxCacheAge2];
        v17[0] = v10;
        v17[1] = tilePredicate;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
        v12 = [v7 andPredicateWithSubpredicates:v11];

        tilePredicate = v12;
      }

      localFetchPredicate = self->_localFetchPredicate;
      self->_localFetchPredicate = tilePredicate;
    }
  }

  v14 = self->_localFetchPredicate;
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_preferLocalCacheFetchRequest
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = +[TBTileMO entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  tileItems = [(TBTileFetchRequestDescriptor *)self tileItems];
  tilePredicate = [tileItems tilePredicate];

  maxCacheAge = [(TBTileFetchRequestDescriptor *)self maxCacheAge];

  if (maxCacheAge)
  {
    v9 = MEMORY[0x277CCA920];
    v10 = MEMORY[0x277CCAC30];
    maxCacheAge2 = [(TBTileFetchRequestDescriptor *)self maxCacheAge];
    v12 = [v10 predicateWithFormat:@"created > %@", maxCacheAge2];
    v17[0] = v12;
    v17[1] = tilePredicate;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v14 = [v9 andPredicateWithSubpredicates:v13];
    [v5 setPredicate:v14];
  }

  [v5 setResultType:2];
  [v5 setPropertiesToFetch:&unk_2848BACE8];

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  tileItems = [(TBTileFetchRequestDescriptor *)self tileItems];
  v7 = [tileItems copyWithZone:zone];
  [v5 setTileItems:v7];

  [v5 setType:{-[TBTileFetchRequestDescriptor type](self, "type")}];
  v8 = objc_alloc(MEMORY[0x277CBE428]);
  v9 = +[TBTileMO entityName];
  v10 = [v8 initWithEntityName:v9];

  v11 = [[TBLocalFetchRequestDescriptor alloc] initWithFetchRequest:v10];
  [v5 setLocalFetchDescriptor:v11];

  v12 = [TBLocalFetchRequestDescriptor alloc];
  _preferLocalCacheFetchRequest = [(TBTileFetchRequestDescriptor *)self _preferLocalCacheFetchRequest];
  v14 = [(TBLocalFetchRequestDescriptor *)v12 initWithFetchRequest:_preferLocalCacheFetchRequest];
  [v5 setPreferLocalFetchDescriptor:v14];

  localFetchPredicate = [(TBTileFetchRequestDescriptor *)self localFetchPredicate];
  v16 = [localFetchPredicate copyWithZone:zone];
  [v10 setPredicate:v16];

  return v5;
}

- (TBTileFetchRequestDescriptor)initWithTileItems:(id)items maxCacheAge:(id)age
{
  itemsCopy = items;
  ageCopy = age;
  v22.receiver = self;
  v22.super_class = TBTileFetchRequestDescriptor;
  v9 = [(TBTileFetchRequestDescriptor *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tileItems, items);
    objc_storeStrong(&v10->_maxCacheAge, age);
    v10->_type = 3;
    v11 = objc_alloc(MEMORY[0x277CBE428]);
    v12 = +[TBTileMO entityName];
    v13 = [v11 initWithEntityName:v12];

    v14 = [[TBLocalFetchRequestDescriptor alloc] initWithFetchRequest:v13];
    localFetchDescriptor = v10->_localFetchDescriptor;
    v10->_localFetchDescriptor = v14;

    localFetchPredicate = [(TBTileFetchRequestDescriptor *)v10 localFetchPredicate];
    [v13 setPredicate:localFetchPredicate];

    v17 = [TBLocalFetchRequestDescriptor alloc];
    _preferLocalCacheFetchRequest = [(TBTileFetchRequestDescriptor *)v10 _preferLocalCacheFetchRequest];
    v19 = [(TBLocalFetchRequestDescriptor *)v17 initWithFetchRequest:_preferLocalCacheFetchRequest];
    preferLocalFetchDescriptor = v10->_preferLocalFetchDescriptor;
    v10->_preferLocalFetchDescriptor = v19;
  }

  return v10;
}

@end