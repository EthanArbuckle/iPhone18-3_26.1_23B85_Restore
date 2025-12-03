@interface MADAutoSetLookupResult
- (MADAutoSetLookupResult)initWithCoder:(id)coder;
- (id)initForAssetType:(id)type withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)date withRequestedAutoAssetEntries:(id)entries withDiscoveredAtomicEntries:(id)atomicEntries withCatalogFromPallasResponse:(id)self0;
- (id)newSummaryWithoutEntryID;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoSetLookupResult

- (id)initForAssetType:(id)type withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)date withRequestedAutoAssetEntries:(id)entries withDiscoveredAtomicEntries:(id)atomicEntries withCatalogFromPallasResponse:(id)self0
{
  typeCopy = type;
  dCopy = d;
  liveCopy = live;
  checkedCopy = checked;
  dateCopy = date;
  entriesCopy = entries;
  atomicEntriesCopy = atomicEntries;
  responseCopy = response;
  v28.receiver = self;
  v28.super_class = MADAutoSetLookupResult;
  v19 = [(MADAutoSetLookupResult *)&v28 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_assetType, type);
    objc_storeStrong(p_isa + 2, d);
    objc_storeStrong(p_isa + 3, live);
    objc_storeStrong(p_isa + 4, checked);
    objc_storeStrong(p_isa + 5, date);
    objc_storeStrong(p_isa + 6, entries);
    objc_storeStrong(p_isa + 7, atomicEntries);
    objc_storeStrong(p_isa + 8, response);
  }

  return p_isa;
}

- (MADAutoSetLookupResult)initWithCoder:(id)coder
{
  coderCopy = coder;
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

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogCachedAssetSetID"];
    catalogCachedAssetSetID = v5->_catalogCachedAssetSetID;
    v5->_catalogCachedAssetSetID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogDownloadedFromLive"];
    catalogDownloadedFromLive = v5->_catalogDownloadedFromLive;
    v5->_catalogDownloadedFromLive = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogLastTimeChecked"];
    catalogLastTimeChecked = v5->_catalogLastTimeChecked;
    v5->_catalogLastTimeChecked = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogPostedDate"];
    catalogPostedDate = v5->_catalogPostedDate;
    v5->_catalogPostedDate = v20;

    v22 = [coderCopy decodeObjectOfClasses:v7 forKey:@"requestedAutoAssetEntries"];
    requestedAutoAssetEntries = v5->_requestedAutoAssetEntries;
    v5->_requestedAutoAssetEntries = v22;

    v24 = [coderCopy decodeObjectOfClasses:v9 forKey:@"discoveredAtomicEntries"];
    discoveredAtomicEntries = v5->_discoveredAtomicEntries;
    v5->_discoveredAtomicEntries = v24;

    v26 = [coderCopy decodeObjectOfClasses:v11 forKey:@"autoAssetSetCatalog"];
    autoAssetSetCatalog = v5->_autoAssetSetCatalog;
    v5->_autoAssetSetCatalog = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetType = [(MADAutoSetLookupResult *)self assetType];
  [coderCopy encodeObject:assetType forKey:@"assetType"];

  catalogCachedAssetSetID = [(MADAutoSetLookupResult *)self catalogCachedAssetSetID];
  [coderCopy encodeObject:catalogCachedAssetSetID forKey:@"catalogCachedAssetSetID"];

  catalogDownloadedFromLive = [(MADAutoSetLookupResult *)self catalogDownloadedFromLive];
  [coderCopy encodeObject:catalogDownloadedFromLive forKey:@"catalogDownloadedFromLive"];

  catalogLastTimeChecked = [(MADAutoSetLookupResult *)self catalogLastTimeChecked];
  [coderCopy encodeObject:catalogLastTimeChecked forKey:@"catalogLastTimeChecked"];

  catalogPostedDate = [(MADAutoSetLookupResult *)self catalogPostedDate];
  [coderCopy encodeObject:catalogPostedDate forKey:@"catalogPostedDate"];

  requestedAutoAssetEntries = [(MADAutoSetLookupResult *)self requestedAutoAssetEntries];
  [coderCopy encodeObject:requestedAutoAssetEntries forKey:@"requestedAutoAssetEntries"];

  discoveredAtomicEntries = [(MADAutoSetLookupResult *)self discoveredAtomicEntries];
  [coderCopy encodeObject:discoveredAtomicEntries forKey:@"discoveredAtomicEntries"];

  autoAssetSetCatalog = [(MADAutoSetLookupResult *)self autoAssetSetCatalog];
  [coderCopy encodeObject:autoAssetSetCatalog forKey:@"autoAssetSetCatalog"];
}

- (id)summary
{
  assetType = [(MADAutoSetLookupResult *)self assetType];
  newSummaryWithoutEntryID = [(MADAutoSetLookupResult *)self newSummaryWithoutEntryID];
  v5 = [NSString stringWithFormat:@"[assetType:%@]%@", assetType, newSummaryWithoutEntryID];

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
  discoveredAtomicEntries = [(MADAutoSetLookupResult *)self discoveredAtomicEntries];
  v5 = [discoveredAtomicEntries countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(discoveredAtomicEntries);
        }

        assetID = [*(*(&v33 + 1) + 8 * i) assetID];

        if (assetID)
        {
          ++v7;
        }
      }

      v6 = [discoveredAtomicEntries countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v26 = [NSString alloc];
  catalogCachedAssetSetID = [(MADAutoSetLookupResult *)self catalogCachedAssetSetID];
  if (catalogCachedAssetSetID)
  {
    catalogCachedAssetSetID2 = [(MADAutoSetLookupResult *)self catalogCachedAssetSetID];
  }

  else
  {
    catalogCachedAssetSetID2 = @"N";
  }

  catalogDownloadedFromLive = [(MADAutoSetLookupResult *)self catalogDownloadedFromLive];
  if (catalogDownloadedFromLive)
  {
    catalogDownloadedFromLive2 = [(MADAutoSetLookupResult *)self catalogDownloadedFromLive];
  }

  else
  {
    catalogDownloadedFromLive2 = @"N";
  }

  catalogLastTimeChecked = [(MADAutoSetLookupResult *)self catalogLastTimeChecked];
  if (catalogLastTimeChecked)
  {
    catalogLastTimeChecked2 = [(MADAutoSetLookupResult *)self catalogLastTimeChecked];
    v32 = [v3 stringFromDate:?];
  }

  else
  {
    v32 = @"N";
  }

  catalogPostedDate = [(MADAutoSetLookupResult *)self catalogPostedDate];
  v30 = catalogCachedAssetSetID;
  v31 = v3;
  v29 = catalogCachedAssetSetID2;
  v27 = catalogDownloadedFromLive2;
  if (catalogPostedDate)
  {
    catalogPostedDate2 = [(MADAutoSetLookupResult *)self catalogPostedDate];
    v16 = [v3 stringFromDate:?];
  }

  else
  {
    v16 = @"N";
  }

  requestedAutoAssetEntries = [(MADAutoSetLookupResult *)self requestedAutoAssetEntries];
  v18 = [requestedAutoAssetEntries count];
  discoveredAtomicEntries2 = [(MADAutoSetLookupResult *)self discoveredAtomicEntries];
  v20 = [discoveredAtomicEntries2 count];
  autoAssetSetCatalog = [(MADAutoSetLookupResult *)self autoAssetSetCatalog];
  v22 = [v26 initWithFormat:@"[cachedAssetSetID:%@|downloadedFromLive:%@|lastTimeChecked:%@|postedDate:%@|atomicEntries(requested:%ld, discovered:%ld)|assetIDs:%ld|setCatalogAssets:%ld]", v29, v27, v32, v16, v18, v20, v7, objc_msgSend(autoAssetSetCatalog, "count")];

  if (catalogPostedDate)
  {
  }

  if (catalogLastTimeChecked)
  {
  }

  if (catalogDownloadedFromLive)
  {
  }

  if (v30)
  {
  }

  return v22;
}

@end