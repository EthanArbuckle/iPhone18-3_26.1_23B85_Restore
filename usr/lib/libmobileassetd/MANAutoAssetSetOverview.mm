@interface MANAutoAssetSetOverview
- (MANAutoAssetSetOverview)initWithCoder:(id)coder;
- (MANAutoAssetSetOverview)initWithDomainName:(id)name forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withLatestDownloadedAtomicInstance:(id)instance withDownloadedAtomicInstances:(id)instances withDiscoveredAtomicInstance:(id)atomicInstance withActiveClientCount:(int64_t)count withActiveMonitorCount:(int64_t)self0 withMaximumClientCount:(int64_t)self1 withTotalClientCount:(int64_t)self2;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetOverview

- (MANAutoAssetSetOverview)initWithDomainName:(id)name forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withLatestDownloadedAtomicInstance:(id)instance withDownloadedAtomicInstances:(id)instances withDiscoveredAtomicInstance:(id)atomicInstance withActiveClientCount:(int64_t)count withActiveMonitorCount:(int64_t)self0 withMaximumClientCount:(int64_t)self1 withTotalClientCount:(int64_t)self2
{
  nameCopy = name;
  identifierCopy = identifier;
  entriesCopy = entries;
  instanceCopy = instance;
  instancesCopy = instances;
  atomicInstanceCopy = atomicInstance;
  v28.receiver = self;
  v28.super_class = MANAutoAssetSetOverview;
  v22 = [(MANAutoAssetSetOverview *)&v28 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_clientDomainName, name);
    objc_storeStrong(&v23->_assetSetIdentifier, identifier);
    objc_storeStrong(&v23->_configuredAssetEntries, entries);
    objc_storeStrong(&v23->_latestDownloadedAtomicInstance, instance);
    objc_storeStrong(&v23->_downloadedAtomicInstances, instances);
    objc_storeStrong(&v23->_discoveredAtomicInstance, atomicInstance);
    v23->_activeClientCount = count;
    v23->_activeMonitorCount = monitorCount;
    v23->_maximumClientCount = clientCount;
    v23->_totalClientCount = totalClientCount;
  }

  return v23;
}

- (MANAutoAssetSetOverview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = MANAutoAssetSetOverview;
  v5 = [(MANAutoAssetSetOverview *)&v24 init];
  if (v5)
  {
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v26 count:2];
    v7 = [NSSet setWithArray:v6];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v10;

    v12 = [NSSet alloc];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v25 count:3];
    v14 = [v12 initWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"configuredAssetEntries"];
    configuredAssetEntries = v5->_configuredAssetEntries;
    v5->_configuredAssetEntries = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestDownloadedAtomicInstance"];
    latestDownloadedAtomicInstance = v5->_latestDownloadedAtomicInstance;
    v5->_latestDownloadedAtomicInstance = v17;

    v19 = [coderCopy decodeObjectOfClasses:v7 forKey:@"downloadedAtomicInstances"];
    downloadedAtomicInstances = v5->_downloadedAtomicInstances;
    v5->_downloadedAtomicInstances = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discoveredAtomicInstance"];
    discoveredAtomicInstance = v5->_discoveredAtomicInstance;
    v5->_discoveredAtomicInstance = v21;

    v5->_activeClientCount = [coderCopy decodeIntegerForKey:@"activeClientCount"];
    v5->_activeMonitorCount = [coderCopy decodeIntegerForKey:@"activeMonitorCount"];
    v5->_maximumClientCount = [coderCopy decodeIntegerForKey:@"maximumClientCount"];
    v5->_totalClientCount = [coderCopy decodeIntegerForKey:@"totalClientCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MANAutoAssetSetOverview *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  assetSetIdentifier = [(MANAutoAssetSetOverview *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  configuredAssetEntries = [(MANAutoAssetSetOverview *)self configuredAssetEntries];
  [coderCopy encodeObject:configuredAssetEntries forKey:@"configuredAssetEntries"];

  latestDownloadedAtomicInstance = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  [coderCopy encodeObject:latestDownloadedAtomicInstance forKey:@"latestDownloadedAtomicInstance"];

  downloadedAtomicInstances = [(MANAutoAssetSetOverview *)self downloadedAtomicInstances];
  [coderCopy encodeObject:downloadedAtomicInstances forKey:@"downloadedAtomicInstances"];

  discoveredAtomicInstance = [(MANAutoAssetSetOverview *)self discoveredAtomicInstance];
  [coderCopy encodeObject:discoveredAtomicInstance forKey:@"discoveredAtomicInstance"];

  [coderCopy encodeInteger:-[MANAutoAssetSetOverview activeClientCount](self forKey:{"activeClientCount"), @"activeClientCount"}];
  [coderCopy encodeInteger:-[MANAutoAssetSetOverview activeMonitorCount](self forKey:{"activeMonitorCount"), @"activeMonitorCount"}];
  [coderCopy encodeInteger:-[MANAutoAssetSetOverview maximumClientCount](self forKey:{"maximumClientCount"), @"maximumClientCount"}];
  [coderCopy encodeInteger:-[MANAutoAssetSetOverview totalClientCount](self forKey:{"totalClientCount"), @"totalClientCount"}];
}

- (id)description
{
  clientDomainName = [(MANAutoAssetSetOverview *)self clientDomainName];
  assetSetIdentifier = [(MANAutoAssetSetOverview *)self assetSetIdentifier];
  configuredAssetEntries = [(MANAutoAssetSetOverview *)self configuredAssetEntries];
  v5 = [configuredAssetEntries description];
  latestDownloadedAtomicInstance = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance)
  {
    latestDownloadedAtomicInstance2 = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    latestDownloadedAtomicInstance2 = @"N";
  }

  downloadedAtomicInstances = [(MANAutoAssetSetOverview *)self downloadedAtomicInstances];
  if (downloadedAtomicInstances)
  {
    downloadedAtomicInstances2 = [(MANAutoAssetSetOverview *)self downloadedAtomicInstances];
  }

  else
  {
    downloadedAtomicInstances2 = @"N";
  }

  discoveredAtomicInstance = [(MANAutoAssetSetOverview *)self discoveredAtomicInstance];
  if (discoveredAtomicInstance)
  {
    discoveredAtomicInstance2 = [(MANAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    discoveredAtomicInstance2 = @"N";
  }

  v9 = [NSString stringWithFormat:@">>>\n                clientDomainName: %@\n              assetSetIdentifier: %@\n          configuredAssetEntries: %@\n  latestDownloadedAtomicInstance: %@\n       downloadedAtomicInstances: %@\n        discoveredAtomicInstance: %@\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n<<<]", clientDomainName, assetSetIdentifier, v5, latestDownloadedAtomicInstance2, downloadedAtomicInstances2, discoveredAtomicInstance2, [(MANAutoAssetSetOverview *)self activeClientCount], [(MANAutoAssetSetOverview *)self activeMonitorCount], [(MANAutoAssetSetOverview *)self maximumClientCount], [(MANAutoAssetSetOverview *)self totalClientCount]];
  if (discoveredAtomicInstance)
  {
  }

  if (downloadedAtomicInstances)
  {
  }

  if (latestDownloadedAtomicInstance)
  {
  }

  return v9;
}

- (id)summary
{
  clientDomainName = [(MANAutoAssetSetOverview *)self clientDomainName];
  assetSetIdentifier = [(MANAutoAssetSetOverview *)self assetSetIdentifier];
  configuredAssetEntries = [(MANAutoAssetSetOverview *)self configuredAssetEntries];
  v14 = [configuredAssetEntries count];
  latestDownloadedAtomicInstance = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance)
  {
    latestDownloadedAtomicInstance2 = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    latestDownloadedAtomicInstance2 = @"NONE";
  }

  downloadedAtomicInstances = [(MANAutoAssetSetOverview *)self downloadedAtomicInstances];
  if (downloadedAtomicInstances)
  {
    downloadedAtomicInstances2 = [(MANAutoAssetSetOverview *)self downloadedAtomicInstances];
    v13 = [downloadedAtomicInstances2 count];
  }

  else
  {
    v13 = 0;
  }

  latestDownloadedAtomicInstance3 = [(MANAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance3)
  {
    discoveredAtomicInstance = [(MANAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    discoveredAtomicInstance = @"NONE";
  }

  v9 = assetSetIdentifier;
  v10 = [NSString stringWithFormat:@"clientDomain:%@|assetIdentifier:%@|numConfiguredEntries:%ld|latestDownloadedEntry:%@|numDownloadedEntries:%ld|discoveredEntry:%@|clients:%lld|monitors:%lld|maxClients:%lld|totalClients:%lld", clientDomainName, assetSetIdentifier, v14, latestDownloadedAtomicInstance2, v13, discoveredAtomicInstance, [(MANAutoAssetSetOverview *)self activeClientCount], [(MANAutoAssetSetOverview *)self activeMonitorCount], [(MANAutoAssetSetOverview *)self activeMonitorCount], [(MANAutoAssetSetOverview *)self totalClientCount]];
  if (latestDownloadedAtomicInstance3)
  {
  }

  if (downloadedAtomicInstances)
  {
  }

  if (latestDownloadedAtomicInstance)
  {
  }

  return v10;
}

@end