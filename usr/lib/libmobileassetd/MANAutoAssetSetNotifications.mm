@interface MANAutoAssetSetNotifications
- (MANAutoAssetSetNotifications)init;
- (MANAutoAssetSetNotifications)initWithCoder:(id)a3;
- (id)copy;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetNotifications

- (MANAutoAssetSetNotifications)init
{
  v3.receiver = self;
  v3.super_class = MANAutoAssetSetNotifications;
  result = [(MANAutoAssetSetNotifications *)&v3 init];
  if (result)
  {
    result->_downloadedBecameIncomplete = 0;
    *&result->_atomicInstanceDiscovered = 0;
  }

  return result;
}

- (MANAutoAssetSetNotifications)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MANAutoAssetSetNotifications;
  v5 = [(MANAutoAssetSetNotifications *)&v7 init];
  if (v5)
  {
    v5->_atomicInstanceDiscovered = [v4 decodeBoolForKey:@"atomicInstanceDiscovered"];
    v5->_atomicInstanceAvailableForUse = [v4 decodeBoolForKey:@"atomicInstanceAvailableForUse"];
    v5->_lockUsageCheck = [v4 decodeBoolForKey:@"lockUsageCheck"];
    v5->_filesystemSpaceCritical = [v4 decodeBoolForKey:@"filesystemSpaceCritical"];
    v5->_atomicInstancePurged = [v4 decodeBoolForKey:@"atomicInstancePurged"];
    v5->_downloadPending = [v4 decodeBoolForKey:@"downloadPending"];
    v5->_downloadProgress = [v4 decodeBoolForKey:@"downloadProgress"];
    v5->_downloadAbandoned = [v4 decodeBoolForKey:@"downloadAbandoned"];
    v5->_downloadedBecameIncomplete = [v4 decodeBoolForKey:@"downloadedBecameIncomplete"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[MANAutoAssetSetNotifications atomicInstanceDiscovered](self forKey:{"atomicInstanceDiscovered"), @"atomicInstanceDiscovered"}];
  [v4 encodeBool:-[MANAutoAssetSetNotifications atomicInstanceAvailableForUse](self forKey:{"atomicInstanceAvailableForUse"), @"atomicInstanceAvailableForUse"}];
  [v4 encodeBool:-[MANAutoAssetSetNotifications lockUsageCheck](self forKey:{"lockUsageCheck"), @"lockUsageCheck"}];
  [v4 encodeBool:-[MANAutoAssetSetNotifications filesystemSpaceCritical](self forKey:{"filesystemSpaceCritical"), @"filesystemSpaceCritical"}];
  [v4 encodeBool:-[MANAutoAssetSetNotifications atomicInstancePurged](self forKey:{"atomicInstancePurged"), @"atomicInstancePurged"}];
  [v4 encodeBool:-[MANAutoAssetSetNotifications downloadPending](self forKey:{"downloadPending"), @"downloadPending"}];
  [v4 encodeBool:-[MANAutoAssetSetNotifications downloadProgress](self forKey:{"downloadProgress"), @"downloadProgress"}];
  [v4 encodeBool:-[MANAutoAssetSetNotifications downloadAbandoned](self forKey:{"downloadAbandoned"), @"downloadAbandoned"}];
  [v4 encodeBool:-[MANAutoAssetSetNotifications downloadedBecameIncomplete](self forKey:{"downloadedBecameIncomplete"), @"downloadedBecameIncomplete"}];
}

- (id)copy
{
  v3 = objc_alloc_init(MANAutoAssetSetNotifications);
  [(MANAutoAssetSetNotifications *)v3 setAtomicInstanceDiscovered:[(MANAutoAssetSetNotifications *)self atomicInstanceDiscovered]];
  [(MANAutoAssetSetNotifications *)v3 setAtomicInstanceAvailableForUse:[(MANAutoAssetSetNotifications *)self atomicInstanceAvailableForUse]];
  [(MANAutoAssetSetNotifications *)v3 setLockUsageCheck:[(MANAutoAssetSetNotifications *)self lockUsageCheck]];
  [(MANAutoAssetSetNotifications *)v3 setFilesystemSpaceCritical:[(MANAutoAssetSetNotifications *)self filesystemSpaceCritical]];
  [(MANAutoAssetSetNotifications *)v3 setAtomicInstancePurged:[(MANAutoAssetSetNotifications *)self atomicInstancePurged]];
  [(MANAutoAssetSetNotifications *)v3 setDownloadPending:[(MANAutoAssetSetNotifications *)self downloadPending]];
  [(MANAutoAssetSetNotifications *)v3 setDownloadProgress:[(MANAutoAssetSetNotifications *)self downloadProgress]];
  [(MANAutoAssetSetNotifications *)v3 setDownloadAbandoned:[(MANAutoAssetSetNotifications *)self downloadAbandoned]];
  [(MANAutoAssetSetNotifications *)v3 setDownloadedBecameIncomplete:[(MANAutoAssetSetNotifications *)self downloadedBecameIncomplete]];
  return v3;
}

- (id)summary
{
  if ([(MANAutoAssetSetNotifications *)self atomicInstanceDiscovered])
  {
    v3 = @"Y";
  }

  else
  {
    v3 = @"N";
  }

  v13 = v3;
  if ([(MANAutoAssetSetNotifications *)self atomicInstanceAvailableForUse])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  if ([(MANAutoAssetSetNotifications *)self lockUsageCheck])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  if ([(MANAutoAssetSetNotifications *)self filesystemSpaceCritical])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  if ([(MANAutoAssetSetNotifications *)self atomicInstancePurged])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  if ([(MANAutoAssetSetNotifications *)self downloadPending])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  if ([(MANAutoAssetSetNotifications *)self downloadProgress])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if ([(MANAutoAssetSetNotifications *)self downloadAbandoned])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  if ([(MANAutoAssetSetNotifications *)self downloadedBecameIncomplete])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  return [NSString stringWithFormat:@"discovered:%@|availableForUse:%@|lockUsageCheck:%@|filesystemSpaceCritical:%@|purged:%@|downloadPending:%@|downloadProgress:%@|downloadAbandoned:%@|downloadBecameIncomplete:%@", v13, v4, v5, v6, v7, v8, v9, v10, v11];
}

@end