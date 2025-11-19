@interface MANAutoAssetSetOverview
- (MANAutoAssetSetOverview)initWithCoder:(id)a3;
- (MANAutoAssetSetOverview)initWithDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withLatestDownloadedAtomicInstance:(id)a6 withDownloadedAtomicInstances:(id)a7 withDiscoveredAtomicInstance:(id)a8 withActiveClientCount:(int64_t)a9 withActiveMonitorCount:(int64_t)a10 withMaximumClientCount:(int64_t)a11 withTotalClientCount:(int64_t)a12;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetOverview

- (MANAutoAssetSetOverview)initWithDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withLatestDownloadedAtomicInstance:(id)a6 withDownloadedAtomicInstances:(id)a7 withDiscoveredAtomicInstance:(id)a8 withActiveClientCount:(int64_t)a9 withActiveMonitorCount:(int64_t)a10 withMaximumClientCount:(int64_t)a11 withTotalClientCount:(int64_t)a12
{
  v19 = a3;
  v20 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v21 = a8;
  v28.receiver = self;
  v28.super_class = MANAutoAssetSetOverview;
  v22 = [(MANAutoAssetSetOverview *)&v28 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_clientDomainName, a3);
    objc_storeStrong(&v23->_assetSetIdentifier, a4);
    objc_storeStrong(&v23->_configuredAssetEntries, a5);
    objc_storeStrong(&v23->_latestDownloadedAtomicInstance, a6);
    objc_storeStrong(&v23->_downloadedAtomicInstances, a7);
    objc_storeStrong(&v23->_discoveredAtomicInstance, a8);
    v23->_activeClientCount = a9;
    v23->_activeMonitorCount = a10;
    v23->_maximumClientCount = a11;
    v23->_totalClientCount = a12;
  }

  return v23;
}

- (MANAutoAssetSetOverview)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = MANAutoAssetSetOverview;
  v5 = [(MANAutoAssetSetOverview *)&v24 init];
  if (v5)
  {
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v26 count:2];
    v7 = [NSSet setWithArray:v6];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v10;

    v12 = [NSSet alloc];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v25 count:3];
    v14 = [v12 initWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"configuredAssetEntries"];
    configuredAssetEntries = v5->_configuredAssetEntries;
    v5->_configuredAssetEntries = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestDownloadedAtomicInstance"];
    latestDownloadedAtomicInstance = v5->_latestDownloadedAtomicInstance;
    v5->_latestDownloadedAtomicInstance = v17;

    v19 = [v4 decodeObjectOfClasses:v7 forKey:@"downloadedAtomicInstances"];
    downloadedAtomicInstances = v5->_downloadedAtomicInstances;
    v5->_downloadedAtomicInstances = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"discoveredAtomicInstance"];
    discoveredAtomicInstance = v5->_discoveredAtomicInstance;
    v5->_discoveredAtomicInstance = v21;

    v5->_activeClientCount = [v4 decodeIntegerForKey:@"activeClientCount"];
    v5->_activeMonitorCount = [v4 decodeIntegerForKey:@"activeMonitorCount"];
    v5->_maximumClientCount = [v4 decodeIntegerForKey:@"maximumClientCount"];
    v5->_totalClientCount = [v4 decodeIntegerForKey:@"totalClientCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(MANAutoAssetSetOverview *)self clientDomainName];
  [v10 encodeObject:v4 forKey:@"clientDomainName"];

  v5 = [(MANAutoAssetSetOverview *)self assetSetIdentifier];
  [v10 encodeObject:v5 forKey:@"assetSetIdentifier"];

  v6 = [(MANAutoAssetSetOverview *)self configuredAssetEntries];
  [v10 encodeObject:v6 forKey:@"configuredAssetEntries"];

  v7 = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  [v10 encodeObject:v7 forKey:@"latestDownloadedAtomicInstance"];

  v8 = [(MANAutoAssetSetOverview *)self downloadedAtomicInstances];
  [v10 encodeObject:v8 forKey:@"downloadedAtomicInstances"];

  v9 = [(MANAutoAssetSetOverview *)self discoveredAtomicInstance];
  [v10 encodeObject:v9 forKey:@"discoveredAtomicInstance"];

  [v10 encodeInteger:-[MANAutoAssetSetOverview activeClientCount](self forKey:{"activeClientCount"), @"activeClientCount"}];
  [v10 encodeInteger:-[MANAutoAssetSetOverview activeMonitorCount](self forKey:{"activeMonitorCount"), @"activeMonitorCount"}];
  [v10 encodeInteger:-[MANAutoAssetSetOverview maximumClientCount](self forKey:{"maximumClientCount"), @"maximumClientCount"}];
  [v10 encodeInteger:-[MANAutoAssetSetOverview totalClientCount](self forKey:{"totalClientCount"), @"totalClientCount"}];
}

- (id)description
{
  v3 = [(MANAutoAssetSetOverview *)self clientDomainName];
  v4 = [(MANAutoAssetSetOverview *)self assetSetIdentifier];
  v12 = [(MANAutoAssetSetOverview *)self configuredAssetEntries];
  v5 = [v12 description];
  v11 = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (v11)
  {
    v14 = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    v14 = @"N";
  }

  v6 = [(MANAutoAssetSetOverview *)self downloadedAtomicInstances];
  if (v6)
  {
    v13 = [(MANAutoAssetSetOverview *)self downloadedAtomicInstances];
  }

  else
  {
    v13 = @"N";
  }

  v7 = [(MANAutoAssetSetOverview *)self discoveredAtomicInstance];
  if (v7)
  {
    v8 = [(MANAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    v8 = @"N";
  }

  v9 = [NSString stringWithFormat:@">>>\n                clientDomainName: %@\n              assetSetIdentifier: %@\n          configuredAssetEntries: %@\n  latestDownloadedAtomicInstance: %@\n       downloadedAtomicInstances: %@\n        discoveredAtomicInstance: %@\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n<<<]", v3, v4, v5, v14, v13, v8, [(MANAutoAssetSetOverview *)self activeClientCount], [(MANAutoAssetSetOverview *)self activeMonitorCount], [(MANAutoAssetSetOverview *)self maximumClientCount], [(MANAutoAssetSetOverview *)self totalClientCount]];
  if (v7)
  {
  }

  if (v6)
  {
  }

  if (v11)
  {
  }

  return v9;
}

- (id)summary
{
  v3 = [(MANAutoAssetSetOverview *)self clientDomainName];
  v4 = [(MANAutoAssetSetOverview *)self assetSetIdentifier];
  v16 = [(MANAutoAssetSetOverview *)self configuredAssetEntries];
  v14 = [v16 count];
  v5 = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (v5)
  {
    v15 = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    v15 = @"NONE";
  }

  v6 = [(MANAutoAssetSetOverview *)self downloadedAtomicInstances];
  if (v6)
  {
    v12 = [(MANAutoAssetSetOverview *)self downloadedAtomicInstances];
    v13 = [v12 count];
  }

  else
  {
    v13 = 0;
  }

  v7 = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (v7)
  {
    v8 = [(MANAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    v8 = @"NONE";
  }

  v9 = v4;
  v10 = [NSString stringWithFormat:@"clientDomain:%@|assetIdentifier:%@|numConfiguredEntries:%ld|latestDownloadedEntry:%@|numDownloadedEntries:%ld|discoveredEntry:%@|clients:%lld|monitors:%lld|maxClients:%lld|totalClients:%lld", v3, v4, v14, v15, v13, v8, [(MANAutoAssetSetOverview *)self activeClientCount], [(MANAutoAssetSetOverview *)self activeMonitorCount], [(MANAutoAssetSetOverview *)self activeMonitorCount], [(MANAutoAssetSetOverview *)self totalClientCount]];
  if (v7)
  {
  }

  if (v6)
  {
  }

  if (v5)
  {
  }

  return v10;
}

@end