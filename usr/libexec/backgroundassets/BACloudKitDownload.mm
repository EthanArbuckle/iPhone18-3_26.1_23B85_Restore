@interface BACloudKitDownload
- (BACloudKitDownload)init;
- (BACloudKitDownload)initWithCoder:(id)coder;
- (BACloudKitDownload)initWithIdentifier:(id)identifier recordType:(id)type expectedFieldKey:(id)key expectedFieldValue:(id)value assetKey:(id)assetKey applicationGroupIdentifier:(id)groupIdentifier;
- (BACloudKitDownload)initWithIdentifier:(id)identifier recordType:(id)type expectedFieldKey:(id)key expectedFieldValue:(id)value assetKey:(id)assetKey applicationGroupIdentifier:(id)groupIdentifier containerIdentifier:(id)containerIdentifier zoneID:(id)self0 databaseScope:(int64_t)self1 priority:(int64_t)self2;
- (BOOL)startDownloadWithDelegate:(id)delegate error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_downloadDidPause;
- (void)_downloadFailedWithError:(id)error;
- (void)_downloadSucceededWithURL:(id)l;
- (void)cancelDownload;
- (void)downloadDidPause;
- (void)downloadFailedWithError:(id)error;
- (void)downloadSucceededWithURL:(id)l;
- (void)encodeWithCoder:(id)coder;
- (void)pauseDownload;
@end

@implementation BACloudKitDownload

- (BACloudKitDownload)init
{
  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "BACloudKitDownload cannot be constructed using -init.";
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF BackgroundAssets: %s", &v3, 0xCu);
  }

  qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: BACloudKitDownload cannot be constructed using -init.";
  __break(0xB001u);
  return result;
}

- (BACloudKitDownload)initWithIdentifier:(id)identifier recordType:(id)type expectedFieldKey:(id)key expectedFieldValue:(id)value assetKey:(id)assetKey applicationGroupIdentifier:(id)groupIdentifier
{
  groupIdentifierCopy = groupIdentifier;
  assetKeyCopy = assetKey;
  valueCopy = value;
  keyCopy = key;
  typeCopy = type;
  identifierCopy = identifier;
  v25 = +[CKContainer defaultContainer];
  containerIdentifier = [v25 containerIdentifier];
  v20 = +[CKRecordZone defaultRecordZone];
  zoneID = [v20 zoneID];
  v22 = [(BACloudKitDownload *)self initWithIdentifier:identifierCopy recordType:typeCopy expectedFieldKey:keyCopy expectedFieldValue:valueCopy assetKey:assetKeyCopy applicationGroupIdentifier:groupIdentifierCopy containerIdentifier:containerIdentifier zoneID:zoneID databaseScope:1 priority:0];

  return v22;
}

- (BACloudKitDownload)initWithIdentifier:(id)identifier recordType:(id)type expectedFieldKey:(id)key expectedFieldValue:(id)value assetKey:(id)assetKey applicationGroupIdentifier:(id)groupIdentifier containerIdentifier:(id)containerIdentifier zoneID:(id)self0 databaseScope:(int64_t)self1 priority:(int64_t)self2
{
  identifierCopy = identifier;
  typeCopy = type;
  keyCopy = key;
  valueCopy = value;
  assetKeyCopy = assetKey;
  groupIdentifierCopy = groupIdentifier;
  containerIdentifierCopy = containerIdentifier;
  dCopy = d;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [keyCopy length])
  {
    if (valueCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        keyCopy = [NSString stringWithFormat:@"%@ == %%@", keyCopy];
        valueCopy = [NSPredicate predicateWithFormat:keyCopy, valueCopy];
        v30 = [[CKQuery alloc] initWithRecordType:typeCopy predicate:valueCopy];
        self = sub_100048810(self, identifierCopy, v30, assetKeyCopy, groupIdentifierCopy, containerIdentifierCopy, dCopy, scope, priority);

        selfCopy = self;
        goto LABEL_12;
      }

      v25 = NSInvalidArgumentException;
      v26 = @"expectedFieldValue must be of type: NSString, NSNumber, NSDate, NSData, or NSArray.";
    }

    else
    {
      v25 = NSInvalidArgumentException;
      v26 = @"expectedFieldValue cannot be passed in as nil.";
    }
  }

  else
  {
    v25 = NSInvalidArgumentException;
    v26 = @"expectedFieldKey must be a valid string.";
  }

  keyCopy = [NSException exceptionWithName:v25 reason:v26 userInfo:0];
  [keyCopy raise];
  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (BACloudKitDownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BACloudKitDownload;
  v5 = [(BADownload *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.ContainerID"];
    [(BACloudKitDownload *)v5 setContainerID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.query"];
    [(BACloudKitDownload *)v5 setQuery:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.assetKey"];
    [(BACloudKitDownload *)v5 setAssetKey:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.zoneID"];
    [(BACloudKitDownload *)v5 setZoneID:v9];

    -[BACloudKitDownload setDatabaseScope:](v5, "setDatabaseScope:", [coderCopy decodeIntegerForKey:@"BACKD.databaseScope"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"masqueradeIdentifier"];
    [(BACloudKitDownload *)v5 setMasqueradeIdentifier:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BACloudKitDownload;
  [(BADownload *)&v11 encodeWithCoder:coderCopy];
  containerID = [(BACloudKitDownload *)self containerID];
  [coderCopy encodeObject:containerID forKey:@"BACKD.ContainerID"];

  query = [(BACloudKitDownload *)self query];
  [coderCopy encodeObject:query forKey:@"BACKD.query"];

  assetKey = [(BACloudKitDownload *)self assetKey];
  [coderCopy encodeObject:assetKey forKey:@"BACKD.assetKey"];

  zoneID = [(BACloudKitDownload *)self zoneID];
  [coderCopy encodeObject:zoneID forKey:@"BACKD.zoneID"];

  [coderCopy encodeInteger:-[BACloudKitDownload databaseScope](self forKey:{"databaseScope"), @"BACKD.databaseScope"}];
  masqueradeIdentifier = [(BACloudKitDownload *)self masqueradeIdentifier];

  if (masqueradeIdentifier)
  {
    masqueradeIdentifier2 = [(BACloudKitDownload *)self masqueradeIdentifier];
    [coderCopy encodeObject:masqueradeIdentifier2 forKey:@"masqueradeIdentifier"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = BACloudKitDownload;
  v5 = [(BADownload *)&v9 copyWithZone:?];
  if (v5)
  {
    masqueradeIdentifier = [(BACloudKitDownload *)self masqueradeIdentifier];
    v7 = [masqueradeIdentifier copyWithZone:zone];
    [v5 setMasqueradeIdentifier:v7];
  }

  return v5;
}

- (BOOL)startDownloadWithDelegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  downloadLock = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(downloadLock);
  [(BADownload *)self setDelegate:delegateCopy];
  sub_10004C130(self, -1);
  applicationIdentifier = [(BADownload *)self applicationIdentifier];
  v9 = +[NSUUID UUID];
  uUIDString = [v9 UUIDString];
  v11 = [NSString stringWithFormat:@"BACloudKitDownload.%@.%@", applicationIdentifier, uUIDString];
  [(BADownload *)self setUniqueIdentifier:v11];

  applicationInfo = [(BADownload *)self applicationInfo];

  if (!applicationInfo)
  {
    goto LABEL_5;
  }

  v13 = sub_100010694();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Download %{public}@ is restricted, validating.", buf, 0xCu);
  }

  applicationInfo2 = [(BADownload *)self applicationInfo];
  v15 = [applicationInfo2 remainingDownloadAllowanceWithNecessity:0] == 0;

  if (v15)
  {
    v28 = sub_100010694();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10004BF40(self, v28);
    }

    if (error)
    {
      sub_100027BE4(203);
      *error = v26 = 0;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
LABEL_5:
    v16 = +[NSDate now];
    [(BADownload *)self setDownloadStartDate:v16];

    uniqueIdentifier = [(BADownload *)self uniqueIdentifier];
    [(BADownload *)self _addActivityWithIdentifier:uniqueIdentifier takePowerAssertion:1];

    delegate = [(BADownload *)self delegate];
    if (delegate)
    {
      delegate2 = [(BADownload *)self delegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        responseQueue = [(BADownload *)self responseQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002FB88;
        block[3] = &unk_100079260;
        block[4] = self;
        dispatch_async(responseQueue, block);
      }
    }

    v22 = [[BACloudKitDownloadManager alloc] initWithDownload:self withDelegate:self];
    [(BACloudKitDownload *)self setDownloadManager:v22];

    downloadManager = [(BACloudKitDownload *)self downloadManager];
    v29 = 0;
    v24 = [downloadManager startDownloadWithError:&v29];
    v25 = v29;

    if ((v24 & 1) == 0)
    {
      [(BACloudKitDownload *)self _downloadFailedWithError:v25];
    }

    v26 = 1;
  }

  os_unfair_lock_unlock(downloadLock);

  return v26;
}

- (void)cancelDownload
{
  downloadManager = [(BACloudKitDownload *)self downloadManager];
  [downloadManager cancelDownload];
}

- (void)pauseDownload
{
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  sub_10004C130(self, 4);
  os_unfair_lock_unlock([(BADownload *)self downloadLock]);
  downloadManager = [(BACloudKitDownload *)self downloadManager];
  [downloadManager pauseDownload];
}

- (void)downloadSucceededWithURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  [(BACloudKitDownload *)self _downloadSucceededWithURL:lCopy];

  downloadLock = [(BADownload *)self downloadLock];

  os_unfair_lock_unlock(downloadLock);
}

- (void)downloadDidPause
{
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  [(BACloudKitDownload *)self _downloadDidPause];
  downloadLock = [(BADownload *)self downloadLock];

  os_unfair_lock_unlock(downloadLock);
}

- (void)downloadFailedWithError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  [(BACloudKitDownload *)self _downloadFailedWithError:errorCopy];

  downloadLock = [(BADownload *)self downloadLock];

  os_unfair_lock_unlock(downloadLock);
}

- (void)_downloadFailedWithError:(id)error
{
  errorCopy = error;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  sub_10004C130(self, -1);
  [(BADownload *)self setDownloadError:errorCopy];
  delegate = [(BADownload *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(BADownload *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      responseQueue = [(BADownload *)self responseQueue];
      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_10002FEB4;
      v13 = &unk_100079300;
      selfCopy = self;
      v15 = errorCopy;
      dispatch_async(responseQueue, &v10);
    }
  }

  [(BADownload *)self _removeActivityAndPowerAssertion:v10];
}

- (void)_downloadDidPause
{
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  sub_10004C130(self, 5);
  delegate = [(BADownload *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(BADownload *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      responseQueue = [(BADownload *)self responseQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002FFF8;
      block[3] = &unk_100079260;
      block[4] = self;
      dispatch_async(responseQueue, block);
    }
  }

  [(BADownload *)self _removeActivityAndPowerAssertion];
}

- (void)_downloadSucceededWithURL:(id)l
{
  lCopy = l;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  sub_10004C130(self, 8);
  downloadCachePath = [(BADownload *)self downloadCachePath];
  path = [lCopy path];
  lastPathComponent = [path lastPathComponent];
  v8 = [downloadCachePath stringByAppendingPathComponent:lastPathComponent];

  v9 = [NSURL fileURLWithPath:v8];
  v10 = +[NSFileManager defaultManager];
  v19 = 0;
  LOBYTE(lastPathComponent) = [v10 moveItemAtURL:lCopy toURL:v9 error:&v19];

  v11 = v19;
  if (lastPathComponent)
  {
    sub_10004C18C(self, v9);
    delegate = [(BADownload *)self delegate];
    if (delegate)
    {
      v13 = delegate;
      delegate2 = [(BADownload *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        responseQueue = [(BADownload *)self responseQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10003023C;
        block[3] = &unk_100079300;
        block[4] = self;
        v18 = v9;
        dispatch_async(responseQueue, block);
      }
    }

    [(BADownload *)self _removeActivityAndPowerAssertion];
  }

  else
  {
    [(BACloudKitDownload *)self _downloadFailedWithError:v11];
  }
}

@end