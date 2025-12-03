@interface BADownload
+ (id)classesForSerialization;
- (BADownload)copyAsNonEssential;
- (BADownload)init;
- (BADownload)initWithCoder:(id)coder;
- (BADownloadAgentDelegate)delegate;
- (BADownloadState)state;
- (BADownloaderPriority)priority;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEssential;
- (BOOL)startDownloadWithDelegate:(id)delegate error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)initPrivatelyWithApplicationGroupIdentifier:(id)identifier;
- (int64_t)compare:(id)compare;
- (int64_t)necessity;
- (void)_addActivityWithIdentifier:(id)identifier takePowerAssertion:(BOOL)assertion;
- (void)_removeActivityAndPowerAssertion;
- (void)cancelDownload;
- (void)cancelDownloadSilently;
- (void)demoteToBackground;
- (void)encodeWithCoder:(id)coder;
- (void)pauseDownload;
- (void)promoteToForeground;
- (void)setApplicationInformationForRestrictedDownload:(id)download;
- (void)setNecessity:(int64_t)necessity;
- (void)setPriority:(int64_t)priority;
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

- (BOOL)startDownloadWithDelegate:(id)delegate error:(id *)error
{
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"startDownloadWithDelegate:error: is not implemented on BADownload as it is abstract." userInfo:0];
  [v4 raise];

  return 0;
}

- (void)setApplicationInformationForRestrictedDownload:(id)download
{
  downloadCopy = download;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  [(BADownload *)self setApplicationInfo:downloadCopy];
}

- (void)_addActivityWithIdentifier:(id)identifier takePowerAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  if (!assertionCopy)
  {
    if (![(BADownload *)self powerAssertionID])
    {
      goto LABEL_12;
    }

    IOPMAssertionRelease([(BADownload *)self powerAssertionID]);
    selfCopy2 = self;
    v10 = 0;
LABEL_11:
    [(BADownload *)selfCopy2 setPowerAssertionID:v10];
    goto LABEL_12;
  }

  AssertionID = 0;
  uniqueIdentifier = [(BADownload *)self uniqueIdentifier];
  v7 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, [NSString stringWithFormat:@"Downloading - %@", uniqueIdentifier], &AssertionID);

  if (!v7)
  {
    if ([(BADownload *)self powerAssertionID])
    {
      IOPMAssertionRelease([(BADownload *)self powerAssertionID]);
    }

    v10 = AssertionID;
    selfCopy2 = self;
    goto LABEL_11;
  }

  v8 = sub_1000104FC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000481FC(v8);
  }

LABEL_12:
  uniqueIdentifier2 = [(BADownload *)self uniqueIdentifier];
  [uniqueIdentifier2 UTF8String];
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  selfCopy = self;
  v6 = compareCopy;
  if (-[BADownload necessity](selfCopy, "necessity") == 1 && ![v6 necessity])
  {
    goto LABEL_9;
  }

  if (!-[BADownload necessity](selfCopy, "necessity") && [v6 necessity] == 1 || (v7 = -[BADownload priority](selfCopy, "priority"), v7 < objc_msgSend(v6, "priority")))
  {
    v8 = -1;
    goto LABEL_10;
  }

  priority = [(BADownload *)selfCopy priority];
  if (priority > [v6 priority] || (v10 = sub_10004C1FC(selfCopy), v10 < sub_10004C1FC(v6)))
  {
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  v12 = sub_10004C1FC(selfCopy);
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

- (BADownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = BADownload;
  v5 = [(BADownload *)&v32 init];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  uniqueIdentifier = v5->_uniqueIdentifier;
  v5->_uniqueIdentifier = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationGroupIdentifier"];
  applicationGroupIdentifier = v5->_applicationGroupIdentifier;
  v5->_applicationGroupIdentifier = v10;

  if (v5->_identifier && v5->_uniqueIdentifier && v5->_applicationGroupIdentifier)
  {
    sub_10004C130(v5, [coderCopy decodeIntegerForKey:@"internalState"]);
    if ([coderCopy containsValueForKey:@"necessity"])
    {
      v13 = [coderCopy decodeIntegerForKey:@"necessity"];
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
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    -[BADownload setPriority:](v5, "setPriority:", [v15 integerValue]);
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedDownloadedFileURL"];
    objc_setProperty_atomic(v5, v17, v16, 80);

    sub_10003173C(v5, [coderCopy decodeIntegerForKey:@"clientSpecifiedFileSize"]);
    sub_10004C1A0(v5, [coderCopy decodeBoolForKey:@"isForManagedAssetPack"]);
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    [(BADownload *)v5 setApplicationIdentifier:v18];

    [(BADownload *)v5 setPowerAssertionID:0];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadFailureError"];
    [(BADownload *)v5 setDownloadError:v19];

    v20 = dispatch_queue_create("com.apple.BackgroundAssets.BADownload+Agent.ResponseQueue", 0);
    [(BADownload *)v5 setResponseQueue:v20];

    v5->_downloadLockOpaque._os_unfair_lock_opaque = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resumeData"];
      [(BADownload *)v5 setResumeData:v21];

      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadCachePath"];
      [(BADownload *)v5 setDownloadCachePath:v22];

      applicationIdentifier = [(BADownload *)v5 applicationIdentifier];
      applicationIdentifier2 = [(BADownload *)v5 applicationIdentifier];
      _baassets_validUTI = [applicationIdentifier2 _baassets_validUTI];
      v26 = [applicationIdentifier isEqualToString:_baassets_validUTI];

      if ((v26 & 1) == 0)
      {
        v31 = sub_1000104FC();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10004C628(v5, v31);
        }

        goto LABEL_5;
      }

      if ([coderCopy decodeBoolForKey:@"isRestrictedDownload"])
      {
        agentCore = [coderCopy agentCore];
        applicationIdentifier3 = [(BADownload *)v5 applicationIdentifier];
        v29 = [agentCore applicationInfoForIdentifier:applicationIdentifier3];
        [(BADownload *)v5 setApplicationInfo:v29];
      }

      -[BADownload setPermitInitialCellularDownload:](v5, "setPermitInitialCellularDownload:", [coderCopy decodeBoolForKey:@"permitInitialCellularDownload"]);
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

- (id)initPrivatelyWithApplicationGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
    objc_storeStrong(&v6->_applicationGroupIdentifier, identifier);
    v6->_necessity = 0;
    applicationGroupIdentifier = [(BADownload *)v6 applicationGroupIdentifier];
    v11 = +[NSUUID UUID];
    uUIDString = [v11 UUIDString];
    v13 = [NSString stringWithFormat:@"%@.%@.%@", v9, applicationGroupIdentifier, uUIDString];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v13;

    v6->_isForManagedAssetPack = 0;
  }

  v15 = v6;
LABEL_6:

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_identifier forKey:@"identifier"];
  [coderCopy encodeInteger:selfCopy->_internalState forKey:@"internalState"];
  [coderCopy encodeInteger:selfCopy->_necessity forKey:@"necessity"];
  v5 = [NSNumber numberWithInteger:selfCopy->_priority];
  [coderCopy encodeObject:v5 forKey:@"priority"];

  [coderCopy encodeInteger:selfCopy->_clientSpecifiedFileSize forKey:@"clientSpecifiedFileSize"];
  [coderCopy encodeBool:selfCopy->_isForManagedAssetPack forKey:@"isForManagedAssetPack"];
  [coderCopy encodeObject:selfCopy->_uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:selfCopy->_applicationGroupIdentifier forKey:@"applicationGroupIdentifier"];
  stagedDownloadedFileURL = selfCopy->_stagedDownloadedFileURL;
  if (stagedDownloadedFileURL)
  {
    [coderCopy encodeObject:stagedDownloadedFileURL forKey:@"stagedDownloadedFileURL"];
  }

  downloadError = [(BADownload *)selfCopy downloadError];

  if (downloadError)
  {
    downloadError2 = [(BADownload *)selfCopy downloadError];
    [coderCopy encodeObject:downloadError2 forKey:@"downloadFailureError"];
  }

  applicationIdentifier = [(BADownload *)selfCopy applicationIdentifier];
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    resumeData = [(BADownload *)selfCopy resumeData];

    if (resumeData)
    {
      resumeData2 = [(BADownload *)selfCopy resumeData];
      [coderCopy encodeObject:resumeData2 forKey:@"resumeData"];
    }

    downloadCachePath = [(BADownload *)selfCopy downloadCachePath];

    if (downloadCachePath)
    {
      downloadCachePath2 = [(BADownload *)selfCopy downloadCachePath];
      [coderCopy encodeObject:downloadCachePath2 forKey:@"downloadCachePath"];
    }

    applicationInfo = [(BADownload *)selfCopy applicationInfo];

    if (applicationInfo)
    {
      [coderCopy encodeBool:1 forKey:@"isRestrictedDownload"];
    }

    [coderCopy encodeBool:-[BADownload permitInitialCellularDownload](selfCopy forKey:{"permitInitialCellularDownload"), @"permitInitialCellularDownload"}];
  }

  objc_sync_exit(selfCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [objc_msgSend(v5 allocWithZone:{zone), "initPrivatelyWithApplicationGroupIdentifier:", selfCopy->_applicationGroupIdentifier}];
  if (v7)
  {
    v9 = [(NSString *)selfCopy->_identifier copyWithZone:zone];
    [v7 setIdentifier:v9];

    v10 = [(NSString *)selfCopy->_uniqueIdentifier copyWithZone:zone];
    [v7 setUniqueIdentifier:v10];

    v11 = [(NSString *)selfCopy->_applicationGroupIdentifier copyWithZone:zone];
    [v7 setApplicationGroupIdentifier:v11];

    sub_10004C130(v7, selfCopy->_internalState);
    [v7 setPriority:selfCopy->_priority];
    [v7 setNecessity:selfCopy->_necessity];
    sub_10003173C(v7, selfCopy->_clientSpecifiedFileSize);
    v12 = [(NSURL *)selfCopy->_stagedDownloadedFileURL copyWithZone:zone];
    objc_setProperty_atomic(v7, v13, v12, 80);

    sub_10004C1A0(v7, selfCopy->_isForManagedAssetPack);
    downloadError = [(BADownload *)selfCopy downloadError];
    v15 = [downloadError copyWithZone:zone];
    [v7 setDownloadError:v15];

    applicationIdentifier = [(BADownload *)selfCopy applicationIdentifier];
    v17 = [applicationIdentifier copyWithZone:zone];
    [v7 setApplicationIdentifier:v17];

    [v7 setPermitInitialCellularDownload:{-[BADownload permitInitialCellularDownload](selfCopy, "permitInitialCellularDownload")}];
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (BADownloaderPriority)priority
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  priority = selfCopy->_priority;
  objc_sync_exit(selfCopy);

  return priority;
}

- (void)setPriority:(int64_t)priority
{
  obj = self;
  objc_sync_enter(obj);
  obj->_priority = priority;
  objc_sync_exit(obj);
}

- (BOOL)isEssential
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_necessity == 1;
  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)necessity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  necessity = selfCopy->_necessity;
  objc_sync_exit(selfCopy);

  return necessity;
}

- (void)setNecessity:(int64_t)necessity
{
  objc_opt_self();
  if (necessity >= 2)
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
    obj->_necessity = necessity;
    objc_sync_exit(obj);
  }
}

- (BADownloadState)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = sub_10004C244(selfCopy);
  if (v3 > 8)
  {
    v4 = BADownloadStateFailed;
  }

  else
  {
    v4 = qword_100059560[v3];
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BADownload)copyAsNonEssential
{
  v2 = [(BADownload *)self copy];
  [(BADownload *)v2 setNecessity:0];
  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      selfCopy = self;
      objc_sync_enter(selfCopy);
      uniqueIdentifier = selfCopy->_uniqueIdentifier;
      uniqueIdentifier = [(BADownload *)v5 uniqueIdentifier];
      if ([(NSString *)uniqueIdentifier isEqual:uniqueIdentifier])
      {
        identifier = selfCopy->_identifier;
        identifier = [(BADownload *)v5 identifier];
        v11 = [(NSString *)identifier isEqualToString:identifier];
      }

      else
      {
        v11 = 0;
      }

      objc_sync_exit(selfCopy);
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
  identifier = [(BADownload *)self identifier];
  applicationIdentifier = [(BADownload *)self applicationIdentifier];
  v7 = sub_10002AFD8([(BADownload *)self necessity]);
  v8 = [NSString stringWithFormat:@"%@ (%p): [ID:%@, AppID:%@, Necessity:%@]", v4, self, identifier, applicationIdentifier, v7];

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
  identifier = [(BADownload *)self identifier];
  v7 = [v3 initWithFormat:@"%@ (%p): %@\n", v5, self, identifier];

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

  resumeData = [(BADownload *)self resumeData];
  bytes = [resumeData bytes];
  resumeData2 = [(BADownload *)self resumeData];
  [v7 appendFormat:@"Resume data: %p, %lu\n", bytes, objc_msgSend(resumeData2, "length")];

  applicationInfo = [(BADownload *)self applicationInfo];
  if (applicationInfo)
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