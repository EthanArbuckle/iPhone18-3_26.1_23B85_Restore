@interface MANAutoAssetSetInstanceDescriptor
- (MANAutoAssetSetInstanceDescriptor)initWithCoder:(id)a3;
- (id)initForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withAtomicInstanceEntries:(id)a5 withFullyDownloaded:(BOOL)a6 withNeverBeenLocked:(BOOL)a7 withDownloadUserInitiated:(BOOL)a8 withDownloadedNetworkBytes:(int64_t)a9 withDownloadedFilesystemBytes:(int64_t)a10 withStagedPriorToAvailable:(BOOL)a11;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetInstanceDescriptor

- (id)initForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withAtomicInstanceEntries:(id)a5 withFullyDownloaded:(BOOL)a6 withNeverBeenLocked:(BOOL)a7 withDownloadUserInitiated:(BOOL)a8 withDownloadedNetworkBytes:(int64_t)a9 withDownloadedFilesystemBytes:(int64_t)a10 withStagedPriorToAvailable:(BOOL)a11
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v24.receiver = self;
  v24.super_class = MANAutoAssetSetInstanceDescriptor;
  v21 = [(MANAutoAssetSetInstanceDescriptor *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_clientDomainName, a3);
    objc_storeStrong(&v22->_assetSetIdentifier, a4);
    objc_storeStrong(&v22->_atomicInstanceEntries, a5);
    v22->_isFullyDownloaded = a6;
    v22->_neverBeenLocked = a7;
    v22->_downloadUserInitiated = a8;
    v22->_downloadedNetworkBytes = a9;
    v22->_downloadedFilesystemBytes = a10;
    v22->_stagedPriorToAvailable = a11;
  }

  return v22;
}

- (MANAutoAssetSetInstanceDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MANAutoAssetSetInstanceDescriptor;
  v5 = [(MANAutoAssetSetInstanceDescriptor *)&v15 init];
  if (v5)
  {
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v16 count:2];
    v7 = [NSSet setWithArray:v6];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v10;

    v12 = [v4 decodeObjectOfClasses:v7 forKey:@"atomicInstanceEntries"];
    atomicInstanceEntries = v5->_atomicInstanceEntries;
    v5->_atomicInstanceEntries = v12;

    v5->_isFullyDownloaded = [v4 decodeBoolForKey:@"isFullyDownloaded"];
    v5->_neverBeenLocked = [v4 decodeBoolForKey:@"neverBeenLocked"];
    v5->_downloadUserInitiated = [v4 decodeBoolForKey:@"downloadUserInitiated"];
    v5->_downloadedNetworkBytes = [v4 decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [v4 decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v5->_stagedPriorToAvailable = [v4 decodeBoolForKey:@"stagedPriorToAvailable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MANAutoAssetSetInstanceDescriptor *)self clientDomainName];
  [v7 encodeObject:v4 forKey:@"clientDomainName"];

  v5 = [(MANAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  [v7 encodeObject:v5 forKey:@"asetSetIdentifier"];

  v6 = [(MANAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  [v7 encodeObject:v6 forKey:@"atomicInstanceEntries"];

  [v7 encodeBool:-[MANAutoAssetSetInstanceDescriptor isFullyDownloaded](self forKey:{"isFullyDownloaded"), @"isFullyDownloaded"}];
  [v7 encodeBool:-[MANAutoAssetSetInstanceDescriptor neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [v7 encodeBool:-[MANAutoAssetSetInstanceDescriptor downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  [v7 encodeInteger:-[MANAutoAssetSetInstanceDescriptor downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [v7 encodeInteger:-[MANAutoAssetSetInstanceDescriptor downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  [v7 encodeBool:-[MANAutoAssetSetInstanceDescriptor stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
}

- (id)summary
{
  v14 = [(MANAutoAssetSetInstanceDescriptor *)self clientDomainName];
  v3 = [(MANAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  v4 = [(MANAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  v13 = [v4 count];
  if ([(MANAutoAssetSetInstanceDescriptor *)self isFullyDownloaded])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  if ([(MANAutoAssetSetInstanceDescriptor *)self neverBeenLocked])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  if ([(MANAutoAssetSetInstanceDescriptor *)self downloadUserInitiated])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v8 = [(MANAutoAssetSetInstanceDescriptor *)self downloadedNetworkBytes];
  v9 = [(MANAutoAssetSetInstanceDescriptor *)self downloadedFilesystemBytes];
  if ([(MANAutoAssetSetInstanceDescriptor *)self stagedPriorToAvailable])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v11 = [NSString stringWithFormat:@"[clientDomainName:%@, assetSetIdentifier:%@, numAtomicInstanceEntries:%ld, fullyDownloaded:%@, neverBeenLocked:%@, userInitiated:%@, networkBytes:%ld, fsBytes:%ld, stagedPrior:%@]", v14, v3, v13, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end