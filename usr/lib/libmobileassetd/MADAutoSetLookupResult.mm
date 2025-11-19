@interface MADAutoSetLookupResult
- (MADAutoSetLookupResult)initWithCoder:(id)a3;
- (id)initForAssetType:(id)a3 withCatalogCachedAssetSetID:(id)a4 withCatalogDownloadedFromLive:(id)a5 withCatalogLastTimeChecked:(id)a6 withCatalogPostedDate:(id)a7 withRequestedAutoAssetEntries:(id)a8 withDiscoveredAtomicEntries:(id)a9 withCatalogFromPallasResponse:(id)a10;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoSetLookupResult

- (id)initForAssetType:(id)a3 withCatalogCachedAssetSetID:(id)a4 withCatalogDownloadedFromLive:(id)a5 withCatalogLastTimeChecked:(id)a6 withCatalogPostedDate:(id)a7 withRequestedAutoAssetEntries:(id)a8 withDiscoveredAtomicEntries:(id)a9 withCatalogFromPallasResponse:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = MADAutoSetLookupResult;
  v19 = [(MADAutoSetLookupResult *)&v28 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_assetType, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
    objc_storeStrong(p_isa + 6, a8);
    objc_storeStrong(p_isa + 7, a9);
    objc_storeStrong(p_isa + 8, a10);
  }

  return p_isa;
}

- (MADAutoSetLookupResult)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MADAutoSetLookupResult;
  v5 = [(MADAutoSetLookupResult *)&v29 init];
  if (v5)
  {
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v32 count:3];
    v7 = [NSSet setWithArray:v6];

    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v31 count:2];
    v9 = [NSSet setWithArray:v8];

    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v30[2] = objc_opt_class();
    v30[3] = objc_opt_class();
    v30[4] = objc_opt_class();
    v30[5] = objc_opt_class();
    v30[6] = objc_opt_class();
    v30[7] = objc_opt_class();
    v30[8] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v30 count:9];
    v11 = [NSSet setWithArray:v10];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogCachedAssetSetID"];
    catalogCachedAssetSetID = v5->_catalogCachedAssetSetID;
    v5->_catalogCachedAssetSetID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogDownloadedFromLive"];
    catalogDownloadedFromLive = v5->_catalogDownloadedFromLive;
    v5->_catalogDownloadedFromLive = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogLastTimeChecked"];
    catalogLastTimeChecked = v5->_catalogLastTimeChecked;
    v5->_catalogLastTimeChecked = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogPostedDate"];
    catalogPostedDate = v5->_catalogPostedDate;
    v5->_catalogPostedDate = v20;

    v22 = [v4 decodeObjectOfClasses:v7 forKey:@"requestedAutoAssetEntries"];
    requestedAutoAssetEntries = v5->_requestedAutoAssetEntries;
    v5->_requestedAutoAssetEntries = v22;

    v24 = [v4 decodeObjectOfClasses:v9 forKey:@"discoveredAtomicEntries"];
    discoveredAtomicEntries = v5->_discoveredAtomicEntries;
    v5->_discoveredAtomicEntries = v24;

    v26 = [v4 decodeObjectOfClasses:v11 forKey:@"autoAssetSetCatalog"];
    autoAssetSetCatalog = v5->_autoAssetSetCatalog;
    v5->_autoAssetSetCatalog = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoSetLookupResult *)self assetType];
  [v4 encodeObject:v5 forKey:@"assetType"];

  v6 = [(MADAutoSetLookupResult *)self catalogCachedAssetSetID];
  [v4 encodeObject:v6 forKey:@"catalogCachedAssetSetID"];

  v7 = [(MADAutoSetLookupResult *)self catalogDownloadedFromLive];
  [v4 encodeObject:v7 forKey:@"catalogDownloadedFromLive"];

  v8 = [(MADAutoSetLookupResult *)self catalogLastTimeChecked];
  [v4 encodeObject:v8 forKey:@"catalogLastTimeChecked"];

  v9 = [(MADAutoSetLookupResult *)self catalogPostedDate];
  [v4 encodeObject:v9 forKey:@"catalogPostedDate"];

  v10 = [(MADAutoSetLookupResult *)self requestedAutoAssetEntries];
  [v4 encodeObject:v10 forKey:@"requestedAutoAssetEntries"];

  v11 = [(MADAutoSetLookupResult *)self discoveredAtomicEntries];
  [v4 encodeObject:v11 forKey:@"discoveredAtomicEntries"];

  v12 = [(MADAutoSetLookupResult *)self autoAssetSetCatalog];
  [v4 encodeObject:v12 forKey:@"autoAssetSetCatalog"];
}

- (id)summary
{
  v3 = [(MADAutoSetLookupResult *)self assetType];
  v4 = [(MADAutoSetLookupResult *)self newSummaryWithoutEntryID];
  v5 = [NSString stringWithFormat:@"[assetType:%@]%@", v3, v4];

  return v5;
}

- (id)newSummaryWithoutEntryID
{
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [(MADAutoSetLookupResult *)self discoveredAtomicEntries];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v34;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v33 + 1) + 8 * i) assetID];

        if (v10)
        {
          ++v7;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v26 = [NSString alloc];
  v11 = [(MADAutoSetLookupResult *)self catalogCachedAssetSetID];
  if (v11)
  {
    v12 = [(MADAutoSetLookupResult *)self catalogCachedAssetSetID];
  }

  else
  {
    v12 = @"N";
  }

  v28 = [(MADAutoSetLookupResult *)self catalogDownloadedFromLive];
  if (v28)
  {
    v13 = [(MADAutoSetLookupResult *)self catalogDownloadedFromLive];
  }

  else
  {
    v13 = @"N";
  }

  v14 = [(MADAutoSetLookupResult *)self catalogLastTimeChecked];
  if (v14)
  {
    v25 = [(MADAutoSetLookupResult *)self catalogLastTimeChecked];
    v32 = [v3 stringFromDate:?];
  }

  else
  {
    v32 = @"N";
  }

  v15 = [(MADAutoSetLookupResult *)self catalogPostedDate];
  v30 = v11;
  v31 = v3;
  v29 = v12;
  v27 = v13;
  if (v15)
  {
    v24 = [(MADAutoSetLookupResult *)self catalogPostedDate];
    v16 = [v3 stringFromDate:?];
  }

  else
  {
    v16 = @"N";
  }

  v17 = [(MADAutoSetLookupResult *)self requestedAutoAssetEntries];
  v18 = [v17 count];
  v19 = [(MADAutoSetLookupResult *)self discoveredAtomicEntries];
  v20 = [v19 count];
  v21 = [(MADAutoSetLookupResult *)self autoAssetSetCatalog];
  v22 = [v26 initWithFormat:@"[cachedAssetSetID:%@|downloadedFromLive:%@|lastTimeChecked:%@|postedDate:%@|atomicEntries(requested:%ld, discovered:%ld)|assetIDs:%ld|setCatalogAssets:%ld]", v29, v27, v32, v16, v18, v20, v7, objc_msgSend(v21, "count")];

  if (v15)
  {
  }

  if (v14)
  {
  }

  if (v28)
  {
  }

  if (v30)
  {
  }

  return v22;
}

@end