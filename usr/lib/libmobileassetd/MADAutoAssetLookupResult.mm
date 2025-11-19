@interface MADAutoAssetLookupResult
- (MADAutoAssetLookupResult)initWithAssetCatalog:(id)a3 forAssetSelector:(id)a4 forSetConfiguration:(id)a5 forAssetAudience:(id)a6;
- (MADAutoAssetLookupResult)initWithCoder:(id)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoAssetLookupResult

- (MADAutoAssetLookupResult)initWithAssetCatalog:(id)a3 forAssetSelector:(id)a4 forSetConfiguration:(id)a5 forAssetAudience:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = MADAutoAssetLookupResult;
  v15 = [(MADAutoAssetLookupResult *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_assetSelector, a4);
    objc_storeStrong(&v16->_setConfiguration, a5);
    objc_storeStrong(&v16->_assetAudience, a6);
    objc_storeStrong(&v16->_autoAssetCatalog, a3);
    v17 = objc_alloc_init(NSDate);
    recordedTimestamp = v16->_recordedTimestamp;
    v16->_recordedTimestamp = v17;
  }

  return v16;
}

- (MADAutoAssetLookupResult)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MADAutoAssetLookupResult;
  v5 = [(MADAutoAssetLookupResult *)&v19 init];
  if (v5)
  {
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v20[4] = objc_opt_class();
    v20[5] = objc_opt_class();
    v20[6] = objc_opt_class();
    v20[7] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v20 count:8];
    v7 = [NSSet setWithArray:v6];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setConfiguration"];
    setConfiguration = v5->_setConfiguration;
    v5->_setConfiguration = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetAudience"];
    assetAudience = v5->_assetAudience;
    v5->_assetAudience = v12;

    v14 = [v4 decodeObjectOfClasses:v7 forKey:@"autoAssetCatalog"];
    autoAssetCatalog = v5->_autoAssetCatalog;
    v5->_autoAssetCatalog = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordedTimestamp"];
    recordedTimestamp = v5->_recordedTimestamp;
    v5->_recordedTimestamp = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetLookupResult *)self assetSelector];
  [v4 encodeObject:v5 forKey:@"assetSelector"];

  v6 = [(MADAutoAssetLookupResult *)self setConfiguration];
  [v4 encodeObject:v6 forKey:@"setConfiguration"];

  v7 = [(MADAutoAssetLookupResult *)self assetAudience];
  [v4 encodeObject:v7 forKey:@"assetAudience"];

  v8 = [(MADAutoAssetLookupResult *)self autoAssetCatalog];
  [v4 encodeObject:v8 forKey:@"autoAssetCatalog"];

  v9 = [(MADAutoAssetLookupResult *)self recordedTimestamp];
  [v4 encodeObject:v9 forKey:@"recordedTimestamp"];
}

- (id)summary
{
  v3 = [(MADAutoAssetLookupResult *)self recordedTimestamp];
  v4 = [MADAutoAssetScheduler stringFromDate:v3];

  v5 = [(MADAutoAssetLookupResult *)self setConfiguration];

  if (v5)
  {
    v6 = [(MADAutoAssetLookupResult *)self setConfiguration];
    v7 = @"[recorded:%@|setConfig:%@|audience:%@|catalog:%@]";
  }

  else
  {
    v6 = [(MADAutoAssetLookupResult *)self assetSelector];
    v7 = @"[recorded:%@|selector:%@|audience:%@|catalog:%@]";
  }

  v8 = [v6 summary];
  v9 = [(MADAutoAssetLookupResult *)self assetAudience];
  v10 = [(MADAutoAssetLookupResult *)self autoAssetCatalog];
  v11 = [v10 safeSummary];
  v12 = [NSString stringWithFormat:v7, v4, v8, v9, v11];

  return v12;
}

@end