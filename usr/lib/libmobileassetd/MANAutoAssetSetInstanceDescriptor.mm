@interface MANAutoAssetSetInstanceDescriptor
- (MANAutoAssetSetInstanceDescriptor)initWithCoder:(id)coder;
- (id)initForClientDomainName:(id)name forAssetSetIdentifier:(id)identifier withAtomicInstanceEntries:(id)entries withFullyDownloaded:(BOOL)downloaded withNeverBeenLocked:(BOOL)locked withDownloadUserInitiated:(BOOL)initiated withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)self0 withStagedPriorToAvailable:(BOOL)self1;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetInstanceDescriptor

- (id)initForClientDomainName:(id)name forAssetSetIdentifier:(id)identifier withAtomicInstanceEntries:(id)entries withFullyDownloaded:(BOOL)downloaded withNeverBeenLocked:(BOOL)locked withDownloadUserInitiated:(BOOL)initiated withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)self0 withStagedPriorToAvailable:(BOOL)self1
{
  nameCopy = name;
  identifierCopy = identifier;
  entriesCopy = entries;
  v24.receiver = self;
  v24.super_class = MANAutoAssetSetInstanceDescriptor;
  v21 = [(MANAutoAssetSetInstanceDescriptor *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_clientDomainName, name);
    objc_storeStrong(&v22->_assetSetIdentifier, identifier);
    objc_storeStrong(&v22->_atomicInstanceEntries, entries);
    v22->_isFullyDownloaded = downloaded;
    v22->_neverBeenLocked = locked;
    v22->_downloadUserInitiated = initiated;
    v22->_downloadedNetworkBytes = bytes;
    v22->_downloadedFilesystemBytes = filesystemBytes;
    v22->_stagedPriorToAvailable = available;
  }

  return v22;
}

- (MANAutoAssetSetInstanceDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MANAutoAssetSetInstanceDescriptor;
  v5 = [(MANAutoAssetSetInstanceDescriptor *)&v15 init];
  if (v5)
  {
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v16 count:2];
    v7 = [NSSet setWithArray:v6];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClasses:v7 forKey:@"atomicInstanceEntries"];
    atomicInstanceEntries = v5->_atomicInstanceEntries;
    v5->_atomicInstanceEntries = v12;

    v5->_isFullyDownloaded = [coderCopy decodeBoolForKey:@"isFullyDownloaded"];
    v5->_neverBeenLocked = [coderCopy decodeBoolForKey:@"neverBeenLocked"];
    v5->_downloadUserInitiated = [coderCopy decodeBoolForKey:@"downloadUserInitiated"];
    v5->_downloadedNetworkBytes = [coderCopy decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [coderCopy decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v5->_stagedPriorToAvailable = [coderCopy decodeBoolForKey:@"stagedPriorToAvailable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MANAutoAssetSetInstanceDescriptor *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  assetSetIdentifier = [(MANAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"asetSetIdentifier"];

  atomicInstanceEntries = [(MANAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  [coderCopy encodeObject:atomicInstanceEntries forKey:@"atomicInstanceEntries"];

  [coderCopy encodeBool:-[MANAutoAssetSetInstanceDescriptor isFullyDownloaded](self forKey:{"isFullyDownloaded"), @"isFullyDownloaded"}];
  [coderCopy encodeBool:-[MANAutoAssetSetInstanceDescriptor neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [coderCopy encodeBool:-[MANAutoAssetSetInstanceDescriptor downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  [coderCopy encodeInteger:-[MANAutoAssetSetInstanceDescriptor downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [coderCopy encodeInteger:-[MANAutoAssetSetInstanceDescriptor downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  [coderCopy encodeBool:-[MANAutoAssetSetInstanceDescriptor stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
}

- (id)summary
{
  clientDomainName = [(MANAutoAssetSetInstanceDescriptor *)self clientDomainName];
  assetSetIdentifier = [(MANAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  atomicInstanceEntries = [(MANAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  v13 = [atomicInstanceEntries count];
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

  downloadedNetworkBytes = [(MANAutoAssetSetInstanceDescriptor *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MANAutoAssetSetInstanceDescriptor *)self downloadedFilesystemBytes];
  if ([(MANAutoAssetSetInstanceDescriptor *)self stagedPriorToAvailable])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v11 = [NSString stringWithFormat:@"[clientDomainName:%@, assetSetIdentifier:%@, numAtomicInstanceEntries:%ld, fullyDownloaded:%@, neverBeenLocked:%@, userInitiated:%@, networkBytes:%ld, fsBytes:%ld, stagedPrior:%@]", clientDomainName, assetSetIdentifier, v13, v5, v6, v7, downloadedNetworkBytes, downloadedFilesystemBytes, v10];

  return v11;
}

@end