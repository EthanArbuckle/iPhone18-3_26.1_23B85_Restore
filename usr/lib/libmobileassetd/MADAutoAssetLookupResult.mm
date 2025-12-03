@interface MADAutoAssetLookupResult
- (MADAutoAssetLookupResult)initWithAssetCatalog:(id)catalog forAssetSelector:(id)selector forSetConfiguration:(id)configuration forAssetAudience:(id)audience;
- (MADAutoAssetLookupResult)initWithCoder:(id)coder;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoAssetLookupResult

- (MADAutoAssetLookupResult)initWithAssetCatalog:(id)catalog forAssetSelector:(id)selector forSetConfiguration:(id)configuration forAssetAudience:(id)audience
{
  catalogCopy = catalog;
  selectorCopy = selector;
  configurationCopy = configuration;
  audienceCopy = audience;
  v20.receiver = self;
  v20.super_class = MADAutoAssetLookupResult;
  v15 = [(MADAutoAssetLookupResult *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_assetSelector, selector);
    objc_storeStrong(&v16->_setConfiguration, configuration);
    objc_storeStrong(&v16->_assetAudience, audience);
    objc_storeStrong(&v16->_autoAssetCatalog, catalog);
    v17 = objc_alloc_init(NSDate);
    recordedTimestamp = v16->_recordedTimestamp;
    v16->_recordedTimestamp = v17;
  }

  return v16;
}

- (MADAutoAssetLookupResult)initWithCoder:(id)coder
{
  coderCopy = coder;
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

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setConfiguration"];
    setConfiguration = v5->_setConfiguration;
    v5->_setConfiguration = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetAudience"];
    assetAudience = v5->_assetAudience;
    v5->_assetAudience = v12;

    v14 = [coderCopy decodeObjectOfClasses:v7 forKey:@"autoAssetCatalog"];
    autoAssetCatalog = v5->_autoAssetCatalog;
    v5->_autoAssetCatalog = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordedTimestamp"];
    recordedTimestamp = v5->_recordedTimestamp;
    v5->_recordedTimestamp = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetSelector = [(MADAutoAssetLookupResult *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  setConfiguration = [(MADAutoAssetLookupResult *)self setConfiguration];
  [coderCopy encodeObject:setConfiguration forKey:@"setConfiguration"];

  assetAudience = [(MADAutoAssetLookupResult *)self assetAudience];
  [coderCopy encodeObject:assetAudience forKey:@"assetAudience"];

  autoAssetCatalog = [(MADAutoAssetLookupResult *)self autoAssetCatalog];
  [coderCopy encodeObject:autoAssetCatalog forKey:@"autoAssetCatalog"];

  recordedTimestamp = [(MADAutoAssetLookupResult *)self recordedTimestamp];
  [coderCopy encodeObject:recordedTimestamp forKey:@"recordedTimestamp"];
}

- (id)summary
{
  recordedTimestamp = [(MADAutoAssetLookupResult *)self recordedTimestamp];
  v4 = [MADAutoAssetScheduler stringFromDate:recordedTimestamp];

  setConfiguration = [(MADAutoAssetLookupResult *)self setConfiguration];

  if (setConfiguration)
  {
    setConfiguration2 = [(MADAutoAssetLookupResult *)self setConfiguration];
    v7 = @"[recorded:%@|setConfig:%@|audience:%@|catalog:%@]";
  }

  else
  {
    setConfiguration2 = [(MADAutoAssetLookupResult *)self assetSelector];
    v7 = @"[recorded:%@|selector:%@|audience:%@|catalog:%@]";
  }

  summary = [setConfiguration2 summary];
  assetAudience = [(MADAutoAssetLookupResult *)self assetAudience];
  autoAssetCatalog = [(MADAutoAssetLookupResult *)self autoAssetCatalog];
  safeSummary = [autoAssetCatalog safeSummary];
  v12 = [NSString stringWithFormat:v7, v4, summary, assetAudience, safeSummary];

  return v12;
}

@end