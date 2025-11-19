@interface BACloudKitDownload
- (BACloudKitDownload)init;
- (BACloudKitDownload)initWithCoder:(id)a3;
- (BACloudKitDownload)initWithIdentifier:(id)a3 recordType:(id)a4 expectedFieldKey:(id)a5 expectedFieldValue:(id)a6 assetKey:(id)a7 applicationGroupIdentifier:(id)a8;
- (BACloudKitDownload)initWithIdentifier:(id)a3 recordType:(id)a4 expectedFieldKey:(id)a5 expectedFieldValue:(id)a6 assetKey:(id)a7 applicationGroupIdentifier:(id)a8 containerIdentifier:(id)a9 zoneID:(id)a10 databaseScope:(int64_t)a11 priority:(int64_t)a12;
- (BOOL)startDownloadWithDelegate:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_downloadDidPause;
- (void)_downloadFailedWithError:(id)a3;
- (void)_downloadSucceededWithURL:(id)a3;
- (void)cancelDownload;
- (void)downloadDidPause;
- (void)downloadFailedWithError:(id)a3;
- (void)downloadSucceededWithURL:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (BACloudKitDownload)initWithIdentifier:(id)a3 recordType:(id)a4 expectedFieldKey:(id)a5 expectedFieldValue:(id)a6 assetKey:(id)a7 applicationGroupIdentifier:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v25 = +[CKContainer defaultContainer];
  v19 = [v25 containerIdentifier];
  v20 = +[CKRecordZone defaultRecordZone];
  v21 = [v20 zoneID];
  v22 = [(BACloudKitDownload *)self initWithIdentifier:v18 recordType:v17 expectedFieldKey:v16 expectedFieldValue:v15 assetKey:v14 applicationGroupIdentifier:v13 containerIdentifier:v19 zoneID:v21 databaseScope:1 priority:0];

  return v22;
}

- (BACloudKitDownload)initWithIdentifier:(id)a3 recordType:(id)a4 expectedFieldKey:(id)a5 expectedFieldValue:(id)a6 assetKey:(id)a7 applicationGroupIdentifier:(id)a8 containerIdentifier:(id)a9 zoneID:(id)a10 databaseScope:(int64_t)a11 priority:(int64_t)a12
{
  v32 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 length])
  {
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v27 = [NSString stringWithFormat:@"%@ == %%@", v19];
        v31 = [NSPredicate predicateWithFormat:v27, v20];
        v30 = [[CKQuery alloc] initWithRecordType:v18 predicate:v31];
        self = sub_100048810(self, v32, v30, v21, v22, v23, v24, a11, a12);

        v28 = self;
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

  v27 = [NSException exceptionWithName:v25 reason:v26 userInfo:0];
  [v27 raise];
  v28 = 0;
LABEL_12:

  return v28;
}

- (BACloudKitDownload)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BACloudKitDownload;
  v5 = [(BADownload *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.ContainerID"];
    [(BACloudKitDownload *)v5 setContainerID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.query"];
    [(BACloudKitDownload *)v5 setQuery:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.assetKey"];
    [(BACloudKitDownload *)v5 setAssetKey:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BACKD.zoneID"];
    [(BACloudKitDownload *)v5 setZoneID:v9];

    -[BACloudKitDownload setDatabaseScope:](v5, "setDatabaseScope:", [v4 decodeIntegerForKey:@"BACKD.databaseScope"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"masqueradeIdentifier"];
    [(BACloudKitDownload *)v5 setMasqueradeIdentifier:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BACloudKitDownload;
  [(BADownload *)&v11 encodeWithCoder:v4];
  v5 = [(BACloudKitDownload *)self containerID];
  [v4 encodeObject:v5 forKey:@"BACKD.ContainerID"];

  v6 = [(BACloudKitDownload *)self query];
  [v4 encodeObject:v6 forKey:@"BACKD.query"];

  v7 = [(BACloudKitDownload *)self assetKey];
  [v4 encodeObject:v7 forKey:@"BACKD.assetKey"];

  v8 = [(BACloudKitDownload *)self zoneID];
  [v4 encodeObject:v8 forKey:@"BACKD.zoneID"];

  [v4 encodeInteger:-[BACloudKitDownload databaseScope](self forKey:{"databaseScope"), @"BACKD.databaseScope"}];
  v9 = [(BACloudKitDownload *)self masqueradeIdentifier];

  if (v9)
  {
    v10 = [(BACloudKitDownload *)self masqueradeIdentifier];
    [v4 encodeObject:v10 forKey:@"masqueradeIdentifier"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = BACloudKitDownload;
  v5 = [(BADownload *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(BACloudKitDownload *)self masqueradeIdentifier];
    v7 = [v6 copyWithZone:a3];
    [v5 setMasqueradeIdentifier:v7];
  }

  return v5;
}

- (BOOL)startDownloadWithDelegate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(v7);
  [(BADownload *)self setDelegate:v6];
  sub_10004C130(self, -1);
  v8 = [(BADownload *)self applicationIdentifier];
  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];
  v11 = [NSString stringWithFormat:@"BACloudKitDownload.%@.%@", v8, v10];
  [(BADownload *)self setUniqueIdentifier:v11];

  v12 = [(BADownload *)self applicationInfo];

  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = sub_100010694();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v32 = self;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Download %{public}@ is restricted, validating.", buf, 0xCu);
  }

  v14 = [(BADownload *)self applicationInfo];
  v15 = [v14 remainingDownloadAllowanceWithNecessity:0] == 0;

  if (v15)
  {
    v28 = sub_100010694();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10004BF40(self, v28);
    }

    if (a4)
    {
      sub_100027BE4(203);
      *a4 = v26 = 0;
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

    v17 = [(BADownload *)self uniqueIdentifier];
    [(BADownload *)self _addActivityWithIdentifier:v17 takePowerAssertion:1];

    v18 = [(BADownload *)self delegate];
    if (v18)
    {
      v19 = [(BADownload *)self delegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = [(BADownload *)self responseQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002FB88;
        block[3] = &unk_100079260;
        block[4] = self;
        dispatch_async(v21, block);
      }
    }

    v22 = [[BACloudKitDownloadManager alloc] initWithDownload:self withDelegate:self];
    [(BACloudKitDownload *)self setDownloadManager:v22];

    v23 = [(BACloudKitDownload *)self downloadManager];
    v29 = 0;
    v24 = [v23 startDownloadWithError:&v29];
    v25 = v29;

    if ((v24 & 1) == 0)
    {
      [(BACloudKitDownload *)self _downloadFailedWithError:v25];
    }

    v26 = 1;
  }

  os_unfair_lock_unlock(v7);

  return v26;
}

- (void)cancelDownload
{
  v2 = [(BACloudKitDownload *)self downloadManager];
  [v2 cancelDownload];
}

- (void)pauseDownload
{
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  sub_10004C130(self, 4);
  os_unfair_lock_unlock([(BADownload *)self downloadLock]);
  v3 = [(BACloudKitDownload *)self downloadManager];
  [v3 pauseDownload];
}

- (void)downloadSucceededWithURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  [(BACloudKitDownload *)self _downloadSucceededWithURL:v4];

  v5 = [(BADownload *)self downloadLock];

  os_unfair_lock_unlock(v5);
}

- (void)downloadDidPause
{
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  [(BACloudKitDownload *)self _downloadDidPause];
  v3 = [(BADownload *)self downloadLock];

  os_unfair_lock_unlock(v3);
}

- (void)downloadFailedWithError:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  [(BACloudKitDownload *)self _downloadFailedWithError:v4];

  v5 = [(BADownload *)self downloadLock];

  os_unfair_lock_unlock(v5);
}

- (void)_downloadFailedWithError:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  sub_10004C130(self, -1);
  [(BADownload *)self setDownloadError:v4];
  v5 = [(BADownload *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(BADownload *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(BADownload *)self responseQueue];
      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_10002FEB4;
      v13 = &unk_100079300;
      v14 = self;
      v15 = v4;
      dispatch_async(v9, &v10);
    }
  }

  [(BADownload *)self _removeActivityAndPowerAssertion:v10];
}

- (void)_downloadDidPause
{
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  sub_10004C130(self, 5);
  v3 = [(BADownload *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(BADownload *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(BADownload *)self responseQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002FFF8;
      block[3] = &unk_100079260;
      block[4] = self;
      dispatch_async(v7, block);
    }
  }

  [(BADownload *)self _removeActivityAndPowerAssertion];
}

- (void)_downloadSucceededWithURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  sub_10004C130(self, 8);
  v5 = [(BADownload *)self downloadCachePath];
  v6 = [v4 path];
  v7 = [v6 lastPathComponent];
  v8 = [v5 stringByAppendingPathComponent:v7];

  v9 = [NSURL fileURLWithPath:v8];
  v10 = +[NSFileManager defaultManager];
  v19 = 0;
  LOBYTE(v7) = [v10 moveItemAtURL:v4 toURL:v9 error:&v19];

  v11 = v19;
  if (v7)
  {
    sub_10004C18C(self, v9);
    v12 = [(BADownload *)self delegate];
    if (v12)
    {
      v13 = v12;
      v14 = [(BADownload *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [(BADownload *)self responseQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10003023C;
        block[3] = &unk_100079300;
        block[4] = self;
        v18 = v9;
        dispatch_async(v16, block);
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