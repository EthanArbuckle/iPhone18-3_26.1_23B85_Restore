@interface TBNetworkFetchRequestDescriptor
- (GEOWiFiQualityNetworkSearch)remoteRequest;
- (NSPredicate)localFetchPredicate;
- (TBNetworkFetchRequestDescriptor)init;
- (TBNetworkFetchRequestDescriptor)initWithBSSIDs:(id)ds maxCacheAge:(id)age;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TBNetworkFetchRequestDescriptor

- (NSPredicate)localFetchPredicate
{
  v17[2] = *MEMORY[0x277D85DE8];
  localFetchPredicate = self->_localFetchPredicate;
  if (!localFetchPredicate)
  {
    v4 = MEMORY[0x277CCAC30];
    reformatBSSIDs = [(NSSet *)self->_bssids reformatBSSIDs];
    v6 = [v4 predicateWithFormat:@"bssid IN %@", reformatBSSIDs];

    maxCacheAge = [(TBNetworkFetchRequestDescriptor *)self maxCacheAge];

    if (maxCacheAge)
    {
      v8 = MEMORY[0x277CCA920];
      v9 = MEMORY[0x277CCAC30];
      maxCacheAge2 = [(TBNetworkFetchRequestDescriptor *)self maxCacheAge];
      v11 = [v9 predicateWithFormat:@"created > %@", maxCacheAge2];
      v17[0] = v11;
      v17[1] = v6;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      v13 = [v8 andPredicateWithSubpredicates:v12];

      v6 = v13;
    }

    v14 = self->_localFetchPredicate;
    self->_localFetchPredicate = v6;

    localFetchPredicate = self->_localFetchPredicate;
  }

  v15 = *MEMORY[0x277D85DE8];

  return localFetchPredicate;
}

- (TBNetworkFetchRequestDescriptor)initWithBSSIDs:(id)ds maxCacheAge:(id)age
{
  dsCopy = ds;
  ageCopy = age;
  v20.receiver = self;
  v20.super_class = TBNetworkFetchRequestDescriptor;
  v9 = [(TBNetworkFetchRequestDescriptor *)&v20 init];
  objc_storeStrong(&v9->_bssids, ds);
  bssids = v9->_bssids;
  if (bssids && [(NSSet *)bssids count])
  {
    v9->_type = 1;
    objc_storeStrong(&v9->_maxCacheAge, age);
    v11 = objc_alloc(MEMORY[0x277CBE428]);
    v12 = +[TBAccessPointMO entityName];
    v13 = [v11 initWithEntityName:v12];

    localFetchPredicate = [(TBNetworkFetchRequestDescriptor *)v9 localFetchPredicate];
    [v13 setPredicate:localFetchPredicate];

    v15 = [[TBLocalFetchRequestDescriptor alloc] initWithFetchRequest:v13];
    localFetchDescriptor = v9->_localFetchDescriptor;
    v9->_localFetchDescriptor = v15;

    v17 = [[TBLocalFetchRequestDescriptor alloc] initWithFetchRequest:v13];
    preferLocalFetchDescriptor = v9->_preferLocalFetchDescriptor;
    v9->_preferLocalFetchDescriptor = v17;
  }

  else
  {
    NSLog(&cfstr_SBssidsIsNilOr.isa, "[TBNetworkFetchRequestDescriptor initWithBSSIDs:maxCacheAge:]");
    v13 = 0;
    preferLocalFetchDescriptor = v9;
    v9 = 0;
  }

  return v9;
}

- (GEOWiFiQualityNetworkSearch)remoteRequest
{
  v22 = *MEMORY[0x277D85DE8];
  remoteRequest = self->_remoteRequest;
  if (!remoteRequest)
  {
    v4 = objc_alloc_init(MEMORY[0x277D0EE78]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    bssids = [(TBNetworkFetchRequestDescriptor *)self bssids];
    v6 = [bssids countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(bssids);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          v11 = objc_alloc_init(MEMORY[0x277D0EE48]);
          reformatBSSID = [v10 reformatBSSID];
          [v11 setIdentifier:reformatBSSID];

          v13 = objc_alloc_init(MEMORY[0x277D0EE68]);
          [v13 addBss:v11];
          [v4 addEss:v13];

          ++v9;
        }

        while (v7 != v9);
        v7 = [bssids countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = self->_remoteRequest;
    self->_remoteRequest = v4;

    remoteRequest = self->_remoteRequest;
  }

  v15 = *MEMORY[0x277D85DE8];

  return remoteRequest;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  bssids = [(TBNetworkFetchRequestDescriptor *)self bssids];
  v7 = [bssids copyWithZone:zone];
  [v5 setBssids:v7];

  [v5 setType:{-[TBNetworkFetchRequestDescriptor type](self, "type")}];
  maxCacheAge = [(TBNetworkFetchRequestDescriptor *)self maxCacheAge];

  if (maxCacheAge)
  {
    maxCacheAge2 = [(TBNetworkFetchRequestDescriptor *)self maxCacheAge];
    v10 = [maxCacheAge2 copyWithZone:zone];
    [v5 setMaxCacheAge:v10];
  }

  v11 = objc_alloc(MEMORY[0x277CBE428]);
  v12 = +[TBAccessPointMO entityName];
  v13 = [v11 initWithEntityName:v12];

  localFetchPredicate = [(TBNetworkFetchRequestDescriptor *)self localFetchPredicate];
  v15 = [localFetchPredicate copyWithZone:zone];
  [v13 setPredicate:v15];

  v16 = [[TBLocalFetchRequestDescriptor alloc] initWithFetchRequest:v13];
  [v5 setLocalFetchDescriptor:v16];

  v17 = [[TBLocalFetchRequestDescriptor alloc] initWithFetchRequest:v13];
  [v5 setPreferLocalFetchDescriptor:v17];

  return v5;
}

- (TBNetworkFetchRequestDescriptor)init
{
  v12.receiver = self;
  v12.super_class = TBNetworkFetchRequestDescriptor;
  v2 = [(TBNetworkFetchRequestDescriptor *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_type = 1;
    v4 = objc_alloc(MEMORY[0x277CBE428]);
    v5 = +[TBAccessPointMO entityName];
    v6 = [v4 initWithEntityName:v5];

    v7 = [[TBLocalFetchRequestDescriptor alloc] initWithFetchRequest:v6];
    localFetchDescriptor = v3->_localFetchDescriptor;
    v3->_localFetchDescriptor = v7;

    v9 = [[TBLocalFetchRequestDescriptor alloc] initWithFetchRequest:v6];
    preferLocalFetchDescriptor = v3->_preferLocalFetchDescriptor;
    v3->_preferLocalFetchDescriptor = v9;
  }

  return v3;
}

@end