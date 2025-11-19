@interface TBLocationFetchRequestDescriptor
- (NSPredicate)localFetchPredicate;
- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)a3 longitude:(double)a4;
- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)a3 longitude:(double)a4 maxCacheAge:(id)a5;
- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)a3 longitude:(double)a4 radius:(double)a5 maxCacheAge:(id)a6;
- (id)_localFetchRequest;
- (id)_preferLocalCacheFetchRequest;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TBLocationFetchRequestDescriptor

- (NSPredicate)localFetchPredicate
{
  v16[2] = *MEMORY[0x277D85DE8];
  localFetchPredicate = self->_localFetchPredicate;
  if (!localFetchPredicate)
  {
    v4 = [(TBLocationFetchRequestDescriptor *)self tileItems];
    v5 = [v4 tilePredicate];

    v6 = [(TBLocationFetchRequestDescriptor *)self maxCacheAge];

    if (v6)
    {
      v7 = MEMORY[0x277CCA920];
      v8 = MEMORY[0x277CCAC30];
      v9 = [(TBLocationFetchRequestDescriptor *)self maxCacheAge];
      v10 = [v8 predicateWithFormat:@"created >= %@", v9];
      v16[0] = v10;
      v16[1] = v5;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
      v12 = [v7 andPredicateWithSubpredicates:v11];

      v5 = v12;
    }

    v13 = self->_localFetchPredicate;
    self->_localFetchPredicate = v5;

    localFetchPredicate = self->_localFetchPredicate;
  }

  v14 = *MEMORY[0x277D85DE8];

  return localFetchPredicate;
}

- (id)_preferLocalCacheFetchRequest
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = +[TBTileMO entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = [(TBLocationFetchRequestDescriptor *)self tileItems];
  v7 = [v6 tilePredicate];

  v8 = [(TBLocationFetchRequestDescriptor *)self maxCacheAge];

  if (v8)
  {
    v9 = MEMORY[0x277CCA920];
    v10 = MEMORY[0x277CCAC30];
    v11 = [(TBLocationFetchRequestDescriptor *)self maxCacheAge];
    v12 = [v10 predicateWithFormat:@"created > %@", v11];
    v17[0] = v12;
    v17[1] = v7;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v14 = [v9 andPredicateWithSubpredicates:v13];
    [v5 setPredicate:v14];
  }

  [v5 setResultType:2];
  [v5 setPropertiesToFetch:&unk_2848BACD0];

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_localFetchRequest
{
  v3 = MEMORY[0x277CBE428];
  v4 = +[TBTileMO entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = [(TBLocationFetchRequestDescriptor *)self localFetchPredicate];
  [v5 setPredicate:v6];

  return v5;
}

- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)a3 longitude:(double)a4 maxCacheAge:(id)a5
{
  v8 = a5;
  +[TBDefaults tileSearchRadius];
  v10 = [(TBLocationFetchRequestDescriptor *)self initWithLatitude:v8 longitude:a3 radius:a4 maxCacheAge:v9];

  return v10;
}

- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)a3 longitude:(double)a4
{
  +[TBDefaults tileSearchRadius];

  return [(TBLocationFetchRequestDescriptor *)self initWithLatitude:0 longitude:a3 radius:a4 maxCacheAge:v7];
}

- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)a3 longitude:(double)a4 radius:(double)a5 maxCacheAge:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v38.receiver = self;
  v38.super_class = TBLocationFetchRequestDescriptor;
  v12 = [(TBLocationFetchRequestDescriptor *)&v38 init];
  v12->_latitude = a3;
  v12->_longitude = a4;
  v12->_type = 2;
  objc_storeStrong(&v12->_maxCacheAge, a6);
  v13 = [[TBGloriaTile alloc] initWithLat:+[TBGloriaTile lng:"defaultZoomLevel"]zoom:a3, a4];
  v14 = v13;
  if (v13)
  {
    v12->_primaryTileKey = [(TBGloriaTile *)v13 key];
    NSLog(&cfstr_SSearchRadiusF.isa, "[TBLocationFetchRequestDescriptor initWithLatitude:longitude:radius:maxCacheAge:]", *&a5);
    v15 = [(TBGloriaTile *)v14 neighborTileKeysWithRadius:a5];
    v16 = [MEMORY[0x277CBEB58] set];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [TBTileItemDescriptor tileItemDescriptorWithKey:*(*(&v34 + 1) + 8 * i)];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v19);
    }

    objc_storeStrong(&v12->_tileItems, v16);
    v23 = [TBLocalFetchRequestDescriptor alloc];
    v24 = [(TBLocationFetchRequestDescriptor *)v12 _localFetchRequest];
    v25 = [(TBLocalFetchRequestDescriptor *)v23 initWithFetchRequest:v24];
    localFetchDescriptor = v12->_localFetchDescriptor;
    v12->_localFetchDescriptor = v25;

    v27 = [TBLocalFetchRequestDescriptor alloc];
    v28 = [(TBLocationFetchRequestDescriptor *)v12 _preferLocalCacheFetchRequest];
    v29 = [(TBLocalFetchRequestDescriptor *)v27 initWithFetchRequest:v28];
    preferLocalFetchDescriptor = v12->_preferLocalFetchDescriptor;
    v12->_preferLocalFetchDescriptor = v29;
  }

  else
  {
    NSLog(&cfstr_SFailedToCreat.isa, "[TBLocationFetchRequestDescriptor initWithLatitude:longitude:radius:maxCacheAge:]");
    v17 = 0;
    v16 = 0;
    v28 = v12;
    v12 = 0;
  }

  v31 = v12;
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  [(TBLocationFetchRequestDescriptor *)self latitude];
  [v5 setLatitude:?];
  [(TBLocationFetchRequestDescriptor *)self longitude];
  [v5 setLongitude:?];
  [v5 setType:{-[TBLocationFetchRequestDescriptor type](self, "type")}];
  v6 = [v5 maxCacheAge];

  if (v6)
  {
    v7 = [(TBLocationFetchRequestDescriptor *)self maxCacheAge];
    v8 = [v7 copyWithZone:a3];
    [v5 setMaxCacheAge:v8];
  }

  [v5 setPrimaryTileKey:{-[TBLocationFetchRequestDescriptor primaryTileKey](self, "primaryTileKey")}];
  v9 = [(TBLocationFetchRequestDescriptor *)self tileItems];
  v10 = [v9 copyWithZone:a3];
  [v5 setTileItems:v10];

  v11 = [TBLocalFetchRequestDescriptor alloc];
  v12 = [(TBLocationFetchRequestDescriptor *)self _localFetchRequest];
  v13 = [(TBLocalFetchRequestDescriptor *)v11 initWithFetchRequest:v12];
  [v5 setLocalFetchDescriptor:v13];

  v14 = [TBLocalFetchRequestDescriptor alloc];
  v15 = [(TBLocationFetchRequestDescriptor *)self _preferLocalCacheFetchRequest];
  v16 = [(TBLocalFetchRequestDescriptor *)v14 initWithFetchRequest:v15];
  [v5 setPreferLocalFetchDescriptor:v16];

  return v5;
}

@end