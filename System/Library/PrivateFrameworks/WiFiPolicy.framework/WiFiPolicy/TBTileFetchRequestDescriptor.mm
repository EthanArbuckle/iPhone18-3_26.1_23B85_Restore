@interface TBTileFetchRequestDescriptor
- (NSPredicate)localFetchPredicate;
- (TBTileFetchRequestDescriptor)initWithTileItems:(id)a3 maxCacheAge:(id)a4;
- (id)_preferLocalCacheFetchRequest;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TBTileFetchRequestDescriptor

- (NSPredicate)localFetchPredicate
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (!self->_localFetchPredicate)
  {
    v3 = [(TBTileFetchRequestDescriptor *)self tileItems];

    if (v3)
    {
      v4 = [(TBTileFetchRequestDescriptor *)self tileItems];
      v5 = [v4 tilePredicate];

      v6 = [(TBTileFetchRequestDescriptor *)self maxCacheAge];

      if (v6)
      {
        v7 = MEMORY[0x277CCA920];
        v8 = MEMORY[0x277CCAC30];
        v9 = [(TBTileFetchRequestDescriptor *)self maxCacheAge];
        v10 = [v8 predicateWithFormat:@"created >= %@", v9];
        v17[0] = v10;
        v17[1] = v5;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
        v12 = [v7 andPredicateWithSubpredicates:v11];

        v5 = v12;
      }

      localFetchPredicate = self->_localFetchPredicate;
      self->_localFetchPredicate = v5;
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

  v6 = [(TBTileFetchRequestDescriptor *)self tileItems];
  v7 = [v6 tilePredicate];

  v8 = [(TBTileFetchRequestDescriptor *)self maxCacheAge];

  if (v8)
  {
    v9 = MEMORY[0x277CCA920];
    v10 = MEMORY[0x277CCAC30];
    v11 = [(TBTileFetchRequestDescriptor *)self maxCacheAge];
    v12 = [v10 predicateWithFormat:@"created > %@", v11];
    v17[0] = v12;
    v17[1] = v7;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v14 = [v9 andPredicateWithSubpredicates:v13];
    [v5 setPredicate:v14];
  }

  [v5 setResultType:2];
  [v5 setPropertiesToFetch:&unk_2848BACE8];

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(TBTileFetchRequestDescriptor *)self tileItems];
  v7 = [v6 copyWithZone:a3];
  [v5 setTileItems:v7];

  [v5 setType:{-[TBTileFetchRequestDescriptor type](self, "type")}];
  v8 = objc_alloc(MEMORY[0x277CBE428]);
  v9 = +[TBTileMO entityName];
  v10 = [v8 initWithEntityName:v9];

  v11 = [[TBLocalFetchRequestDescriptor alloc] initWithFetchRequest:v10];
  [v5 setLocalFetchDescriptor:v11];

  v12 = [TBLocalFetchRequestDescriptor alloc];
  v13 = [(TBTileFetchRequestDescriptor *)self _preferLocalCacheFetchRequest];
  v14 = [(TBLocalFetchRequestDescriptor *)v12 initWithFetchRequest:v13];
  [v5 setPreferLocalFetchDescriptor:v14];

  v15 = [(TBTileFetchRequestDescriptor *)self localFetchPredicate];
  v16 = [v15 copyWithZone:a3];
  [v10 setPredicate:v16];

  return v5;
}

- (TBTileFetchRequestDescriptor)initWithTileItems:(id)a3 maxCacheAge:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = TBTileFetchRequestDescriptor;
  v9 = [(TBTileFetchRequestDescriptor *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tileItems, a3);
    objc_storeStrong(&v10->_maxCacheAge, a4);
    v10->_type = 3;
    v11 = objc_alloc(MEMORY[0x277CBE428]);
    v12 = +[TBTileMO entityName];
    v13 = [v11 initWithEntityName:v12];

    v14 = [[TBLocalFetchRequestDescriptor alloc] initWithFetchRequest:v13];
    localFetchDescriptor = v10->_localFetchDescriptor;
    v10->_localFetchDescriptor = v14;

    v16 = [(TBTileFetchRequestDescriptor *)v10 localFetchPredicate];
    [v13 setPredicate:v16];

    v17 = [TBLocalFetchRequestDescriptor alloc];
    v18 = [(TBTileFetchRequestDescriptor *)v10 _preferLocalCacheFetchRequest];
    v19 = [(TBLocalFetchRequestDescriptor *)v17 initWithFetchRequest:v18];
    preferLocalFetchDescriptor = v10->_preferLocalFetchDescriptor;
    v10->_preferLocalFetchDescriptor = v19;
  }

  return v10;
}

@end