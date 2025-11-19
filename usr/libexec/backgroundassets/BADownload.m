@interface BADownload
+ (id)classesForSerialization;
- (BADownload)copyAsNonEssential;
- (BADownload)init;
- (BADownload)initWithCoder:(id)a3;
- (BADownloadAgentDelegate)delegate;
- (BADownloadState)state;
- (BADownloaderPriority)priority;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEssential;
- (BOOL)startDownloadWithDelegate:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)initPrivatelyWithApplicationGroupIdentifier:(id)a3;
- (int64_t)compare:(id)a3;
- (int64_t)necessity;
- (void)_addActivityWithIdentifier:(id)a3 takePowerAssertion:(BOOL)a4;
- (void)_removeActivityAndPowerAssertion;
- (void)cancelDownload;
- (void)cancelDownloadSilently;
- (void)demoteToBackground;
- (void)encodeWithCoder:(id)a3;
- (void)pauseDownload;
- (void)promoteToForeground;
- (void)setApplicationInformationForRestrictedDownload:(id)a3;
- (void)setNecessity:(int64_t)a3;
- (void)setPriority:(int64_t)a3;
@end

@implementation BADownload

- (void)promoteToForeground
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"promoteToForeground is not implemented on BADownload as it is abstract." userInfo:0];
  [v2 raise];
}

- (void)demoteToBackground
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"demoteToBackground is not implemented on BADownload as it is abstract." userInfo:0];
  [v2 raise];
}

- (void)pauseDownload
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"pauseDownload is not implemented on BADownload as it is abstract." userInfo:0];
  [v2 raise];
}

- (void)cancelDownload
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"cancelDownload is not implemented on BADownload as it is abstract." userInfo:0];
  [v2 raise];
}

- (void)cancelDownloadSilently
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"cancelDownloadSilently is not implemented on BADownload as it is abstract." userInfo:0];
  [v2 raise];
}

- (BOOL)startDownloadWithDelegate:(id)a3 error:(id *)a4
{
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"startDownloadWithDelegate:error: is not implemented on BADownload as it is abstract." userInfo:0];
  [v4 raise];

  return 0;
}

- (void)setApplicationInformationForRestrictedDownload:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  [(BADownload *)self setApplicationInfo:v4];
}

- (void)_addActivityWithIdentifier:(id)a3 takePowerAssertion:(BOOL)a4
{
  v4 = a4;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  if (!v4)
  {
    if (![(BADownload *)self powerAssertionID])
    {
      goto LABEL_12;
    }

    IOPMAssertionRelease([(BADownload *)self powerAssertionID]);
    v9 = self;
    v10 = 0;
LABEL_11:
    [(BADownload *)v9 setPowerAssertionID:v10];
    goto LABEL_12;
  }

  AssertionID = 0;
  v6 = [(BADownload *)self uniqueIdentifier];
  v7 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, [NSString stringWithFormat:@"Downloading - %@", v6], &AssertionID);

  if (!v7)
  {
    if ([(BADownload *)self powerAssertionID])
    {
      IOPMAssertionRelease([(BADownload *)self powerAssertionID]);
    }

    v10 = AssertionID;
    v9 = self;
    goto LABEL_11;
  }

  v8 = sub_1000104FC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000481FC(v8);
  }

LABEL_12:
  v11 = [(BADownload *)self uniqueIdentifier];
  [v11 UTF8String];
  v12 = os_transaction_create();
  [(BADownload *)self setTransaction:v12];
}

- (void)_removeActivityAndPowerAssertion
{
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  if ([(BADownload *)self powerAssertionID])
  {
    IOPMAssertionRelease([(BADownload *)self powerAssertionID]);
    [(BADownload *)self setPowerAssertionID:0];
  }

  [(BADownload *)self setTransaction:0];
}

+ (id)classesForSerialization
{
  if (qword_100089BE8 != -1)
  {
    sub_100048240();
  }

  v3 = qword_100089BE0;

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = v4;
  if (-[BADownload necessity](v5, "necessity") == 1 && ![v6 necessity])
  {
    goto LABEL_9;
  }

  if (!-[BADownload necessity](v5, "necessity") && [v6 necessity] == 1 || (v7 = -[BADownload priority](v5, "priority"), v7 < objc_msgSend(v6, "priority")))
  {
    v8 = -1;
    goto LABEL_10;
  }

  v9 = [(BADownload *)v5 priority];
  if (v9 > [v6 priority] || (v10 = sub_10004C1FC(v5), v10 < sub_10004C1FC(v6)))
  {
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  v12 = sub_10004C1FC(v5);
  if (v12 <= sub_10004C1FC(v6))
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

LABEL_10:

  return v8;
}

- (BADownload)init
{
  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "BADownload cannot be constructed using -init.";
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF BackgroundAssets: %s", &v3, 0xCu);
  }

  qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: BADownload cannot be constructed using -init.";
  __break(0xB001u);
  return result;
}

- (BADownload)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BADownload;
  v5 = [(BADownload *)&v32 init];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  uniqueIdentifier = v5->_uniqueIdentifier;
  v5->_uniqueIdentifier = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationGroupIdentifier"];
  applicationGroupIdentifier = v5->_applicationGroupIdentifier;
  v5->_applicationGroupIdentifier = v10;

  if (v5->_identifier && v5->_uniqueIdentifier && v5->_applicationGroupIdentifier)
  {
    sub_10004C130(v5, [v4 decodeIntegerForKey:@"internalState"]);
    if ([v4 containsValueForKey:@"necessity"])
    {
      v13 = [v4 decodeIntegerForKey:@"necessity"];
      objc_opt_self();
      if (v13 >= 2)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v14 = 0;
    }

    [(BADownload *)v5 setNecessity:v14];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    -[BADownload setPriority:](v5, "setPriority:", [v15 integerValue]);
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedDownloadedFileURL"];
    objc_setProperty_atomic(v5, v17, v16, 80);

    sub_10003173C(v5, [v4 decodeIntegerForKey:@"clientSpecifiedFileSize"]);
    sub_10004C1A0(v5, [v4 decodeBoolForKey:@"isForManagedAssetPack"]);
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    [(BADownload *)v5 setApplicationIdentifier:v18];

    [(BADownload *)v5 setPowerAssertionID:0];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadFailureError"];
    [(BADownload *)v5 setDownloadError:v19];

    v20 = dispatch_queue_create("com.apple.BackgroundAssets.BADownload+Agent.ResponseQueue", 0);
    [(BADownload *)v5 setResponseQueue:v20];

    v5->_downloadLockOpaque._os_unfair_lock_opaque = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resumeData"];
      [(BADownload *)v5 setResumeData:v21];

      v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadCachePath"];
      [(BADownload *)v5 setDownloadCachePath:v22];

      v23 = [(BADownload *)v5 applicationIdentifier];
      v24 = [(BADownload *)v5 applicationIdentifier];
      v25 = [v24 _baassets_validUTI];
      v26 = [v23 isEqualToString:v25];

      if ((v26 & 1) == 0)
      {
        v31 = sub_1000104FC();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10004C628(v5, v31);
        }

        goto LABEL_5;
      }

      if ([v4 decodeBoolForKey:@"isRestrictedDownload"])
      {
        v27 = [v4 agentCore];
        v28 = [(BADownload *)v5 applicationIdentifier];
        v29 = [v27 applicationInfoForIdentifier:v28];
        [(BADownload *)v5 setApplicationInfo:v29];
      }

      -[BADownload setPermitInitialCellularDownload:](v5, "setPermitInitialCellularDownload:", [v4 decodeBoolForKey:@"permitInitialCellularDownload"]);
    }

    else
    {
      [(BADownload *)v5 setResumeData:0];
      [(BADownload *)v5 setDownloadCachePath:0];
      [(BADownload *)v5 setApplicationInfo:0];
    }

LABEL_18:
    v12 = v5;
    goto LABEL_19;
  }

LABEL_5:
  v12 = 0;
LABEL_19:

  return v12;
}

- (id)initPrivatelyWithApplicationGroupIdentifier:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = BADownload;
  v6 = [(BADownload *)&v18 init];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Provided applicationGroupIdentifier must be a valid string." userInfo:0];
      [v16 raise];

      v15 = 0;
      goto LABEL_6;
    }

    v7 = dispatch_queue_create("com.apple.BackgroundAssets.BADownload+Agent.ResponseQueue", 0);
    [(BADownload *)v6 setResponseQueue:v7];

    v6->_downloadLockOpaque._os_unfair_lock_opaque = 0;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v6->_clientSpecifiedFileSize = 0;
    v6->_priority = 0;
    v6->_internalState = 0;
    objc_storeStrong(&v6->_applicationGroupIdentifier, a3);
    v6->_necessity = 0;
    v10 = [(BADownload *)v6 applicationGroupIdentifier];
    v11 = +[NSUUID UUID];
    v12 = [v11 UUIDString];
    v13 = [NSString stringWithFormat:@"%@.%@.%@", v9, v10, v12];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v13;

    v6->_isForManagedAssetPack = 0;
  }

  v15 = v6;
LABEL_6:

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v15 encodeObject:v4->_identifier forKey:@"identifier"];
  [v15 encodeInteger:v4->_internalState forKey:@"internalState"];
  [v15 encodeInteger:v4->_necessity forKey:@"necessity"];
  v5 = [NSNumber numberWithInteger:v4->_priority];
  [v15 encodeObject:v5 forKey:@"priority"];

  [v15 encodeInteger:v4->_clientSpecifiedFileSize forKey:@"clientSpecifiedFileSize"];
  [v15 encodeBool:v4->_isForManagedAssetPack forKey:@"isForManagedAssetPack"];
  [v15 encodeObject:v4->_uniqueIdentifier forKey:@"uniqueIdentifier"];
  [v15 encodeObject:v4->_applicationGroupIdentifier forKey:@"applicationGroupIdentifier"];
  stagedDownloadedFileURL = v4->_stagedDownloadedFileURL;
  if (stagedDownloadedFileURL)
  {
    [v15 encodeObject:stagedDownloadedFileURL forKey:@"stagedDownloadedFileURL"];
  }

  v7 = [(BADownload *)v4 downloadError];

  if (v7)
  {
    v8 = [(BADownload *)v4 downloadError];
    [v15 encodeObject:v8 forKey:@"downloadFailureError"];
  }

  v9 = [(BADownload *)v4 applicationIdentifier];
  [v15 encodeObject:v9 forKey:@"applicationIdentifier"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(BADownload *)v4 resumeData];

    if (v10)
    {
      v11 = [(BADownload *)v4 resumeData];
      [v15 encodeObject:v11 forKey:@"resumeData"];
    }

    v12 = [(BADownload *)v4 downloadCachePath];

    if (v12)
    {
      v13 = [(BADownload *)v4 downloadCachePath];
      [v15 encodeObject:v13 forKey:@"downloadCachePath"];
    }

    v14 = [(BADownload *)v4 applicationInfo];

    if (v14)
    {
      [v15 encodeBool:1 forKey:@"isRestrictedDownload"];
    }

    [v15 encodeBool:-[BADownload permitInitialCellularDownload](v4 forKey:{"permitInitialCellularDownload"), @"permitInitialCellularDownload"}];
  }

  objc_sync_exit(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v6 = self;
  objc_sync_enter(v6);
  v7 = [objc_msgSend(v5 allocWithZone:{a3), "initPrivatelyWithApplicationGroupIdentifier:", v6->_applicationGroupIdentifier}];
  if (v7)
  {
    v9 = [(NSString *)v6->_identifier copyWithZone:a3];
    [v7 setIdentifier:v9];

    v10 = [(NSString *)v6->_uniqueIdentifier copyWithZone:a3];
    [v7 setUniqueIdentifier:v10];

    v11 = [(NSString *)v6->_applicationGroupIdentifier copyWithZone:a3];
    [v7 setApplicationGroupIdentifier:v11];

    sub_10004C130(v7, v6->_internalState);
    [v7 setPriority:v6->_priority];
    [v7 setNecessity:v6->_necessity];
    sub_10003173C(v7, v6->_clientSpecifiedFileSize);
    v12 = [(NSURL *)v6->_stagedDownloadedFileURL copyWithZone:a3];
    objc_setProperty_atomic(v7, v13, v12, 80);

    sub_10004C1A0(v7, v6->_isForManagedAssetPack);
    v14 = [(BADownload *)v6 downloadError];
    v15 = [v14 copyWithZone:a3];
    [v7 setDownloadError:v15];

    v16 = [(BADownload *)v6 applicationIdentifier];
    v17 = [v16 copyWithZone:a3];
    [v7 setApplicationIdentifier:v17];

    [v7 setPermitInitialCellularDownload:{-[BADownload permitInitialCellularDownload](v6, "permitInitialCellularDownload")}];
  }

  objc_sync_exit(v6);

  return v7;
}

- (BADownloaderPriority)priority
{
  v2 = self;
  objc_sync_enter(v2);
  priority = v2->_priority;
  objc_sync_exit(v2);

  return priority;
}

- (void)setPriority:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_priority = a3;
  objc_sync_exit(obj);
}

- (BOOL)isEssential
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_necessity == 1;
  objc_sync_exit(v2);

  return v3;
}

- (int64_t)necessity
{
  v2 = self;
  objc_sync_enter(v2);
  necessity = v2->_necessity;
  objc_sync_exit(v2);

  return necessity;
}

- (void)setNecessity:(int64_t)a3
{
  objc_opt_self();
  if (a3 >= 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10004C79C();
    }

    qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: Cannot provide an unsupported BADownloadNecessity.";
    __break(0xB001u);
  }

  else
  {
    obj = self;
    objc_sync_enter(obj);
    obj->_necessity = a3;
    objc_sync_exit(obj);
  }
}

- (BADownloadState)state
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = sub_10004C244(v2);
  if (v3 > 8)
  {
    v4 = BADownloadStateFailed;
  }

  else
  {
    v4 = qword_100059560[v3];
  }

  objc_sync_exit(v2);

  return v4;
}

- (BADownload)copyAsNonEssential
{
  v2 = [(BADownload *)self copy];
  [(BADownload *)v2 setNecessity:0];
  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self;
      objc_sync_enter(v6);
      uniqueIdentifier = v6->_uniqueIdentifier;
      v8 = [(BADownload *)v5 uniqueIdentifier];
      if ([(NSString *)uniqueIdentifier isEqual:v8])
      {
        identifier = v6->_identifier;
        v10 = [(BADownload *)v5 identifier];
        v11 = [(NSString *)identifier isEqualToString:v10];
      }

      else
      {
        v11 = 0;
      }

      objc_sync_exit(v6);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BADownload *)self identifier];
  v6 = [(BADownload *)self applicationIdentifier];
  v7 = sub_10002AFD8([(BADownload *)self necessity]);
  v8 = [NSString stringWithFormat:@"%@ (%p): [ID:%@, AppID:%@, Necessity:%@]", v4, self, v5, v6, v7];

  return v8;
}

- (BADownloadAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)debugDescription
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BADownload *)self identifier];
  v7 = [v3 initWithFormat:@"%@ (%p): %@\n", v5, self, v6];

  v8 = sub_10004C244(self);
  if ((v8 + 2) > 0xA)
  {
    v9 = @"???";
  }

  else
  {
    v9 = *(&off_10007A240 + v8 + 2);
  }

  [v7 appendFormat:@"State: %@\n", v9];
  [v7 appendFormat:@"Priority: %lu\n", -[BADownload priority](self, "priority")];
  sub_10002AFD8([(BADownload *)self necessity]);
  objc_claimAutoreleasedReturnValue();
  sub_1000324B4();
  [v7 appendFormat:@"Download Necessity: %@\n"];

  [(BADownload *)self uniqueIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_1000324B4();
  [v7 appendFormat:@"Unique identifier: %@\n"];

  [(BADownload *)self applicationGroupIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_1000324B4();
  [v7 appendFormat:@"App Group identifier: %@\n"];

  if (self)
  {
    Property = objc_getProperty(self, v10, 80, 1);
  }

  else
  {
    Property = 0;
  }

  [v7 appendFormat:@"Staged file url: %@\n", Property];
  [v7 appendFormat:@"Client file size: %ld\n", sub_10004C1FC(self)];
  [(BADownload *)self applicationIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_1000324B4();
  [v7 appendFormat:@"Application identifier: %@\n"];

  [(BADownload *)self downloadError];
  objc_claimAutoreleasedReturnValue();
  sub_1000324B4();
  [v7 appendFormat:@"Download error: %@\n"];

  [(BADownload *)self downloadStartDate];
  objc_claimAutoreleasedReturnValue();
  sub_1000324B4();
  [v7 appendFormat:@"Download start time: %@\n"];

  [(BADownload *)self downloadCachePath];
  objc_claimAutoreleasedReturnValue();
  sub_1000324B4();
  [v7 appendFormat:@"Download cache path: %@\n"];

  [(BADownload *)self session];
  objc_claimAutoreleasedReturnValue();
  sub_1000324B4();
  [v7 appendFormat:@"BAURLSession object: %@\n"];

  v12 = [(BADownload *)self resumeData];
  v13 = [v12 bytes];
  v14 = [(BADownload *)self resumeData];
  [v7 appendFormat:@"Resume data: %p, %lu\n", v13, objc_msgSend(v14, "length")];

  v15 = [(BADownload *)self applicationInfo];
  if (v15)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v7 appendFormat:@"Is restricted download: %@\n", v16];

  if (self->_isForegroundDownload)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v7 appendFormat:@"Is foreground download: %@\n", v17];
  if ([(BADownload *)self permitInitialCellularDownload])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v7 appendFormat:@"Is initial cellular permitted: %@\n", v18];

  return v7;
}

@end