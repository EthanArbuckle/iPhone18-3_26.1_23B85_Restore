@interface TBLocationFetchRequestDescriptor
- (NSPredicate)localFetchPredicate;
- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)latitude longitude:(double)longitude;
- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)latitude longitude:(double)longitude maxCacheAge:(id)age;
- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)latitude longitude:(double)longitude radius:(double)radius maxCacheAge:(id)age;
- (id)_localFetchRequest;
- (id)_preferLocalCacheFetchRequest;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TBLocationFetchRequestDescriptor

- (NSPredicate)localFetchPredicate
{
  v16[2] = *MEMORY[0x277D85DE8];
  localFetchPredicate = self->_localFetchPredicate;
  if (!localFetchPredicate)
  {
    tileItems = [(TBLocationFetchRequestDescriptor *)self tileItems];
    tilePredicate = [tileItems tilePredicate];

    maxCacheAge = [(TBLocationFetchRequestDescriptor *)self maxCacheAge];

    if (maxCacheAge)
    {
      v7 = MEMORY[0x277CCA920];
      v8 = MEMORY[0x277CCAC30];
      maxCacheAge2 = [(TBLocationFetchRequestDescriptor *)self maxCacheAge];
      v10 = [v8 predicateWithFormat:@"created >= %@", maxCacheAge2];
      v16[0] = v10;
      v16[1] = tilePredicate;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
      v12 = [v7 andPredicateWithSubpredicates:v11];

      tilePredicate = v12;
    }

    v13 = self->_localFetchPredicate;
    self->_localFetchPredicate = tilePredicate;

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

  tileItems = [(TBLocationFetchRequestDescriptor *)self tileItems];
  tilePredicate = [tileItems tilePredicate];

  maxCacheAge = [(TBLocationFetchRequestDescriptor *)self maxCacheAge];

  if (maxCacheAge)
  {
    v9 = MEMORY[0x277CCA920];
    v10 = MEMORY[0x277CCAC30];
    maxCacheAge2 = [(TBLocationFetchRequestDescriptor *)self maxCacheAge];
    v12 = [v10 predicateWithFormat:@"created > %@", maxCacheAge2];
    v17[0] = v12;
    v17[1] = tilePredicate;
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

  localFetchPredicate = [(TBLocationFetchRequestDescriptor *)self localFetchPredicate];
  [v5 setPredicate:localFetchPredicate];

  return v5;
}

- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)latitude longitude:(double)longitude maxCacheAge:(id)age
{
  ageCopy = age;
  +[TBDefaults tileSearchRadius];
  v10 = [(TBLocationFetchRequestDescriptor *)self initWithLatitude:ageCopy longitude:latitude radius:longitude maxCacheAge:v9];

  return v10;
}

- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)latitude longitude:(double)longitude
{
  +[TBDefaults tileSearchRadius];

  return [(TBLocationFetchRequestDescriptor *)self initWithLatitude:0 longitude:latitude radius:longitude maxCacheAge:v7];
}

- (TBLocationFetchRequestDescriptor)initWithLatitude:(double)latitude longitude:(double)longitude radius:(double)radius maxCacheAge:(id)age
{
  v40 = *MEMORY[0x277D85DE8];
  ageCopy = age;
  v38.receiver = self;
  v38.super_class = TBLocationFetchRequestDescriptor;
  v12 = [(TBLocationFetchRequestDescriptor *)&v38 init];
  v12->_latitude = latitude;
  v12->_longitude = longitude;
  v12->_type = 2;
  objc_storeStrong(&v12->_maxCacheAge, age);
  longitude = [[TBGloriaTile alloc] initWithLat:+[TBGloriaTile lng:"defaultZoomLevel"]zoom:latitude, longitude];
  v14 = longitude;
  if (longitude)
  {
    v12->_primaryTileKey = [(TBGloriaTile *)longitude key];
    NSLog(&cfstr_SSearchRadiusF.isa, "[TBLocationFetchRequestDescriptor initWithLatitude:longitude:radius:maxCacheAge:]", *&radius);
    v15 = [(TBGloriaTile *)v14 neighborTileKeysWithRadius:radius];
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
    _localFetchRequest = [(TBLocationFetchRequestDescriptor *)v12 _localFetchRequest];
    v25 = [(TBLocalFetchRequestDescriptor *)v23 initWithFetchRequest:_localFetchRequest];
    localFetchDescriptor = v12->_localFetchDescriptor;
    v12->_localFetchDescriptor = v25;

    v27 = [TBLocalFetchRequestDescriptor alloc];
    _preferLocalCacheFetchRequest = [(TBLocationFetchRequestDescriptor *)v12 _preferLocalCacheFetchRequest];
    v29 = [(TBLocalFetchRequestDescriptor *)v27 initWithFetchRequest:_preferLocalCacheFetchRequest];
    preferLocalFetchDescriptor = v12->_preferLocalFetchDescriptor;
    v12->_preferLocalFetchDescriptor = v29;
  }

  else
  {
    NSLog(&cfstr_SFailedToCreat.isa, "[TBLocationFetchRequestDescriptor initWithLatitude:longitude:radius:maxCacheAge:]");
    v17 = 0;
    v16 = 0;
    _preferLocalCacheFetchRequest = v12;
    v12 = 0;
  }

  v31 = v12;
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  [(TBLocationFetchRequestDescriptor *)self latitude];
  [v5 setLatitude:?];
  [(TBLocationFetchRequestDescriptor *)self longitude];
  [v5 setLongitude:?];
  [v5 setType:{-[TBLocationFetchRequestDescriptor type](self, "type")}];
  maxCacheAge = [v5 maxCacheAge];

  if (maxCacheAge)
  {
    maxCacheAge2 = [(TBLocationFetchRequestDescriptor *)self maxCacheAge];
    v8 = [maxCacheAge2 copyWithZone:zone];
    [v5 setMaxCacheAge:v8];
  }

  [v5 setPrimaryTileKey:{-[TBLocationFetchRequestDescriptor primaryTileKey](self, "primaryTileKey")}];
  tileItems = [(TBLocationFetchRequestDescriptor *)self tileItems];
  v10 = [tileItems copyWithZone:zone];
  [v5 setTileItems:v10];

  v11 = [TBLocalFetchRequestDescriptor alloc];
  _localFetchRequest = [(TBLocationFetchRequestDescriptor *)self _localFetchRequest];
  v13 = [(TBLocalFetchRequestDescriptor *)v11 initWithFetchRequest:_localFetchRequest];
  [v5 setLocalFetchDescriptor:v13];

  v14 = [TBLocalFetchRequestDescriptor alloc];
  _preferLocalCacheFetchRequest = [(TBLocationFetchRequestDescriptor *)self _preferLocalCacheFetchRequest];
  v16 = [(TBLocalFetchRequestDescriptor *)v14 initWithFetchRequest:_preferLocalCacheFetchRequest];
  [v5 setPreferLocalFetchDescriptor:v16];

  return v5;
}

@end