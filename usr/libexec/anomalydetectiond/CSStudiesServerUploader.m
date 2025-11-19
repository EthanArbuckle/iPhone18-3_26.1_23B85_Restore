@interface CSStudiesServerUploader
- (BOOL)addOutOfBandMetadata:(id)a3 error:(id *)a4;
- (BOOL)enqueueFileWithFilename:(id)a3 andMetadata:(id)a4 error:(id *)a5;
- (BOOL)isFileOldEnoughForDeletion:(id)a3;
- (BOOL)registerForUploadingWithError:(id *)a3;
- (BOOL)startMonitoringWithError:(id *)a3;
- (CSStudiesServerUploader)initWithSpoolerFolder:(id)a3 serverConfiguration:(id)a4 registrationPeriodInSeconds:(unint64_t)a5 retentionPeriodInSeconds:(unint64_t)a6 outOfBandMetadataTimeout:(double)a7 defaultsKeyPostfix:(id)a8;
- (void)checkForPersistedRegistration;
- (void)createSubmitterIfRegistered;
- (void)dealloc;
@end

@implementation CSStudiesServerUploader

- (CSStudiesServerUploader)initWithSpoolerFolder:(id)a3 serverConfiguration:(id)a4 registrationPeriodInSeconds:(unint64_t)a5 retentionPeriodInSeconds:(unint64_t)a6 outOfBandMetadataTimeout:(double)a7 defaultsKeyPostfix:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v30.receiver = self;
  v30.super_class = CSStudiesServerUploader;
  v17 = [(CSStudiesServerUploader *)&v30 init];
  if (v17)
  {
    v18 = [[NSURL alloc] initFileURLWithPath:v14 isDirectory:1];
    folderURL = v17->_folderURL;
    v17->_folderURL = v18;

    if (qword_1004568C8 != -1)
    {
      sub_100357D3C();
    }

    v20 = qword_1004568D0;
    if (os_log_type_enabled(qword_1004568D0, OS_LOG_TYPE_INFO))
    {
      v21 = v17->_folderURL;
      *buf = 138543362;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Starting uploader with spooler at: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v17->_configuration, a4);
    v17->_registrationPeriodInSeconds = a5;
    v17->_retentionPeriodInSeconds = a6;
    objc_storeStrong(&v17->_postfix, a8);
    v22 = [@"StudiesServerUploaderDefaultsSubjectID" stringByAppendingString:v16];
    defaultsSubjectIDKeyName = v17->_defaultsSubjectIDKeyName;
    v17->_defaultsSubjectIDKeyName = v22;

    v24 = [@"StudiesServerUploaderDefaultsSubjectAuthorizationToken" stringByAppendingString:v16];
    defaultsSubjectAuthTokenKeyName = v17->_defaultsSubjectAuthTokenKeyName;
    v17->_defaultsSubjectAuthTokenKeyName = v24;

    v26 = [@"StudiesServerUploaderDefaultsRegistrationDate" stringByAppendingString:v16];
    defaultsRegistrationDateKeyName = v17->_defaultsRegistrationDateKeyName;
    v17->_defaultsRegistrationDateKeyName = v26;

    [(CSStudiesServerUploader *)v17 checkForPersistedRegistration];
    submitter = v17->_submitter;
    v17->_submitter = 0;

    [(CSStudiesServerUploader *)v17 createSubmitterIfRegistered];
    v17->_oobTimeout = a7;
  }

  return v17;
}

- (void)checkForPersistedRegistration
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [(CSStudiesServerUploader *)self defaultsRegistrationDateKeyName];
  v5 = [v3 integerForKey:v4];

  if (v5)
  {
    v6 = +[NSDate date];
    [v6 timeIntervalSinceReferenceDate];
    v8 = (v7 - v5);

    if ([(CSStudiesServerUploader *)self registrationPeriodInSeconds]<= v8)
    {
      if (qword_1004568C8 != -1)
      {
        sub_100357D64();
      }

      v21 = qword_1004568D0;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = 134349312;
        v23 = v8;
        v24 = 2050;
        v25 = [(CSStudiesServerUploader *)self registrationPeriodInSeconds];
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Expired HDS UUID found: %{public}llu > %{public}llu", &v22, 0x16u);
      }

      [(CSStudiesServerUploader *)self setRegistered:0];
    }

    else
    {
      v9 = self;
      objc_sync_enter(v9);
      [(CSStudiesServerUploader *)v9 setRegistered:1];
      v10 = [NSUUID alloc];
      v11 = +[NSUserDefaults standardUserDefaults];
      v12 = [(CSStudiesServerUploader *)v9 defaultsSubjectIDKeyName];
      v13 = [v11 stringForKey:v12];
      v14 = [v10 initWithUUIDString:v13];
      [(CSStudiesServerUploader *)v9 setSubjectID:v14];

      v15 = +[NSUserDefaults standardUserDefaults];
      v16 = [(CSStudiesServerUploader *)v9 defaultsSubjectAuthTokenKeyName];
      v17 = [v15 stringForKey:v16];
      [(CSStudiesServerUploader *)v9 setSubjectAuthorizationToken:v17];

      objc_sync_exit(v9);
      if (qword_1004568C8 != -1)
      {
        sub_100357D64();
      }

      v18 = qword_1004568D0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [(CSStudiesServerUploader *)v9 subjectID];
        v22 = 138543362;
        v23 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Persisted HDS UUID found: %{public}@", &v22, 0xCu);
      }
    }
  }

  else
  {
    if (qword_1004568C8 != -1)
    {
      sub_100357D64();
    }

    v20 = qword_1004568D0;
    if (os_log_type_enabled(qword_1004568D0, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "No persisted HDS UUID found", &v22, 2u);
    }

    [(CSStudiesServerUploader *)self setRegistered:0];
  }
}

- (void)createSubmitterIfRegistered
{
  if ([(CSStudiesServerUploader *)self registered])
  {
    if (qword_1004568C8 != -1)
    {
      sub_100357D64();
    }

    v3 = qword_1004568D0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(CSStudiesServerUploader *)self subjectID];
      v15 = 138543362;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Registered with Studies Server as %{public}@", &v15, 0xCu);
    }

    v5 = [(CSStudiesServerUploader *)self configuration];
    v6 = [v5 server];
    v7 = [NSURL URLWithString:v6];
    v8 = [v7 URLByAppendingPathComponent:@"/ingest/v2/submit/"];

    v9 = [(CSStudiesServerUploader *)self submitter];
    LODWORD(v5) = v9 == 0;

    if (v5)
    {
      v12 = [CSStudiesServerSubmitter alloc];
      v10 = [(CSStudiesServerUploader *)self configuration];
      v11 = [v10 auth];
      v13 = [(CSStudiesServerUploader *)self subjectAuthorizationToken];
      v14 = [(CSStudiesServerSubmitter *)v12 initWithEndpoint:v8 authorization:v11 subjectToken:v13];
      [(CSStudiesServerUploader *)self setSubmitter:v14];
    }

    else
    {
      v10 = [(CSStudiesServerUploader *)self submitter];
      v11 = [(CSStudiesServerUploader *)self subjectAuthorizationToken];
      [v10 updateRegistrationWithSubjectToken:v11];
    }
  }
}

- (BOOL)registerForUploadingWithError:(id *)a3
{
  [(CSStudiesServerUploader *)self checkForPersistedRegistration];
  if (![(CSStudiesServerUploader *)self registered])
  {
    v23 = a3;
    v5 = [(CSStudiesServerUploader *)self configuration];
    v6 = [v5 server];
    v7 = [NSURL URLWithString:v6];
    v8 = [v7 URLByAppendingPathComponent:@"/ingest/v2/register/"];
    v9 = [(CSStudiesServerUploader *)self configuration];
    v10 = [v9 studyUUID];
    v11 = [v10 UUIDString];
    v12 = [v11 lowercaseString];
    v13 = [v8 URLByAppendingPathComponent:v12];

    v14 = [CSStudiesServerRegistrar alloc];
    v15 = [(CSStudiesServerUploader *)self configuration];
    v16 = [v15 auth];
    v17 = [(CSStudiesServerRegistrar *)v14 initWithEndpoint:v13 authorization:v16 cellularAccess:1 timeoutInSeconds:60];

    v18 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1000128CC;
    v32 = sub_1000128DC;
    v33 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000128E4;
    v24[3] = &unk_100413038;
    v26 = &v28;
    objc_copyWeak(&v27, &location);
    v19 = v18;
    v25 = v19;
    [(CSStudiesServerRegistrar *)v17 registerWithHandler:v24];
    v20 = dispatch_time(0, 61000000000);
    dispatch_semaphore_wait(v19, v20);
    v21 = v29[5];
    if (v21)
    {
      *v23 = v21;
    }

    [(CSStudiesServerUploader *)self createSubmitterIfRegistered];

    objc_destroyWeak(&v27);
    _Block_object_dispose(&v28, 8);

    objc_destroyWeak(&location);
  }

  return [(CSStudiesServerUploader *)self registered];
}

- (BOOL)isFileOldEnoughForDeletion:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v4 path];
  v19 = 0;
  v7 = [v5 attributesOfItemAtPath:v6 error:&v19];
  v8 = v19;
  if (v8)
  {
    if (qword_1004568C8 != -1)
    {
      sub_100357D3C();
    }

    v9 = qword_1004568D0;
    if (os_log_type_enabled(qword_1004568D0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = v4;
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to get attributes for file %{public}@: %{public}@", buf, 0x16u);
    }

    v10 = 1;
  }

  else
  {
    v11 = [v7 fileCreationDate];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;

    v14 = +[NSDate date];
    [v14 timeIntervalSinceReferenceDate];
    v16 = v15;

    v10 = [(CSStudiesServerUploader *)self retentionPeriodInSeconds]+ v13 < v16;
  }

  if (qword_1004568C8 != -1)
  {
    sub_100357D3C();
  }

  v17 = qword_1004568D0;
  if (os_log_type_enabled(qword_1004568D0, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v21 = v4;
    v22 = 1026;
    LODWORD(v23) = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "File %{public}@ for deletion? %{public}d", buf, 0x12u);
  }

  return v10;
}

- (BOOL)startMonitoringWithError:(id *)a3
{
  if ([(CSStudiesServerUploader *)self monitoring])
  {
LABEL_13:
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = sub_10001B724(self, a3, @"starter");
  if (v5)
  {
    objc_initWeak(location, self);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100013574;
    v50[3] = &unk_100413058;
    v50[4] = a3;
    v42 = objc_retainBlock(v50);
    v6 = [NSURL alloc];
    v7 = NSTemporaryDirectory();
    v8 = [v7 stringByAppendingPathComponent:@"feedbackAssistantHolding"];
    v9 = [v6 initFileURLWithPath:v8 isDirectory:1];

    v41 = v9;
    v10 = [CSFolderMonitor alloc];
    v11 = [v9 path];
    v12 = dispatch_get_global_queue(0, 0);
    v13 = [(CSFolderMonitor *)v10 initWithFolder:v11 fileExtension:@"protodata" queue:v12 postfix:@".fba_holding.cleanup" andAction:v42];
    [(CSStudiesServerUploader *)self setFeedbackHoldingMonitor:v13];

    v40 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUnlessOpen allowBattery:1 periodInseconds:XPC_ACTIVITY_INTERVAL_1_HOUR];
    v14 = [(CSStudiesServerUploader *)self feedbackHoldingMonitor];
    [v14 setupRecurringScanningWithConfiguration:v40 runNow:1];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100013A60;
    v48[3] = &unk_1004130A8;
    objc_copyWeak(&v49, location);
    v48[4] = self;
    v43 = objc_retainBlock(v48);
    v15 = [CSFolderMonitor alloc];
    v16 = [(CSStudiesServerUploader *)self folderURL];
    v17 = [v16 path];
    v18 = [(CSStudiesServerUploader *)self postfix];
    v19 = [(CSFolderMonitor *)v15 initWithFolder:v17 fileExtension:@"protodata" queue:v12 postfix:v18 andAction:v43];
    [(CSStudiesServerUploader *)self setOobMetadataMonitor:v19];

    v20 = +[CSPersistentConfiguration sharedConfiguration];
    v21 = [v20 BOOLForKey:@"UploaderIndigenousXPCActivity"];

    if (v21)
    {
      v22 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUnlessOpen allowBattery:1 periodInseconds:XPC_ACTIVITY_INTERVAL_1_HOUR];
      v23 = [(CSStudiesServerUploader *)self oobMetadataMonitor];
      [v23 setupRecurringScanningWithConfiguration:v22 runNow:1];
    }

    else
    {
      v22 = [(CSStudiesServerUploader *)self oobMetadataMonitor];
      [(CSFolderMonitorBackgroundScanningConfiguration *)v22 registerForFolderMonitorActivity];
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100014354;
    v46[3] = &unk_1004130A8;
    objc_copyWeak(&v47, location);
    v46[4] = self;
    v24 = objc_retainBlock(v46);
    v25 = [CSFolderMonitor alloc];
    v26 = [(CSStudiesServerUploader *)self folderURL];
    v27 = [v26 path];
    v28 = [(CSStudiesServerUploader *)self postfix];
    v29 = [(CSFolderMonitor *)v25 initWithFolder:v27 fileExtension:@"metadata" queue:v12 postfix:v28 andAction:v24];
    [(CSStudiesServerUploader *)self setEncryptMonitor:v29];

    if (v21)
    {
      v30 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUnlessOpen allowBattery:1 periodInseconds:XPC_ACTIVITY_INTERVAL_1_HOUR];
      v31 = [(CSStudiesServerUploader *)self encryptMonitor];
      [v31 setupRecurringScanningWithConfiguration:v30 runNow:1];
    }

    else
    {
      v30 = [(CSStudiesServerUploader *)self encryptMonitor];
      [(CSFolderMonitorBackgroundScanningConfiguration *)v30 registerForFolderMonitorActivity];
    }

    v32 = [CSFolderMonitor alloc];
    v33 = [(CSStudiesServerUploader *)self folderURL];
    v34 = [v33 path];
    v35 = [(CSStudiesServerUploader *)self postfix];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100014F3C;
    v44[3] = &unk_1004130F8;
    objc_copyWeak(&v45, location);
    v36 = [(CSFolderMonitor *)v32 initWithFolder:v34 fileExtension:@"encrypted" queue:v12 postfix:v35 andAction:v44];
    [(CSStudiesServerUploader *)self setSubmitMonitor:v36];

    if (v21)
    {
      v37 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUntilFirstUserAuthentication allowBattery:1 periodInseconds:XPC_ACTIVITY_INTERVAL_1_HOUR];
      v38 = [(CSStudiesServerUploader *)self submitMonitor];
      [v38 setupRecurringScanningWithConfiguration:v37 runNow:1];
    }

    else
    {
      v37 = [(CSStudiesServerUploader *)self submitMonitor];
      [(CSFolderMonitorBackgroundScanningConfiguration *)v37 registerForFolderMonitorActivity];
    }

    [(CSStudiesServerUploader *)self setMonitoring:1];
    objc_destroyWeak(&v45);

    objc_destroyWeak(&v47);
    objc_destroyWeak(&v49);

    objc_destroyWeak(location);
    goto LABEL_13;
  }

  return v5;
}

- (BOOL)enqueueFileWithFilename:(id)a3 andMetadata:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[NSFileManager defaultManager];
  if ([v10 fileExistsAtPath:v8])
  {
    v22 = v9;
    v11 = [[NSURL alloc] initFileURLWithPath:v8 isDirectory:0];
    v12 = [v11 URLByDeletingLastPathComponent];
    v13 = [v12 absoluteString];
    v14 = [(CSStudiesServerUploader *)self folderURL];
    v15 = [v14 absoluteString];
    v16 = [v13 isEqualToString:v15];

    v17 = [(CSStudiesServerUploader *)self folderURL];
    v18 = +[NSDate now];
    [v18 timeIntervalSinceReferenceDate];
    LOBYTE(a5) = [(CSStudiesServerUploader *)self persistToDiskWithSpooledFile:v16 spoolerDir:v17 fileURL:v11 enqueueTime:v22 metadata:a5 error:?];

    v9 = v22;
  }

  else if (a5)
  {
    v23 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithFormat:@"While enqueuing, file doesnt exist: %@", v8];
    v24 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *a5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:v20];

    LOBYTE(a5) = 0;
  }

  return a5;
}

- (BOOL)addOutOfBandMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v7 encodeObject:v6 forKey:@"oobMetadata"];
  v8 = +[NSDate now];
  [v8 timeIntervalSinceReferenceDate];
  [v7 encodeDouble:@"enqueueTime" forKey:?];

  [v7 finishEncoding];
  v9 = +[NSUUID UUID];
  v10 = [(CSStudiesServerUploader *)self folderURL];
  v11 = [v9 UUIDString];
  v12 = [v10 URLByAppendingPathComponent:v11];
  v13 = [v12 URLByAppendingPathExtension:@"oob"];

  v14 = [v7 encodedData];
  LOBYTE(a4) = [v14 writeToURL:v13 options:805306369 error:a4];

  return a4;
}

- (void)dealloc
{
  v3 = [(CSStudiesServerUploader *)self submitMonitor];
  [v3 stopRecurringScanning];

  v4 = [(CSStudiesServerUploader *)self encryptMonitor];
  [v4 stopRecurringScanning];

  v5 = [(CSStudiesServerUploader *)self oobMetadataMonitor];
  [v5 stopRecurringScanning];

  v6.receiver = self;
  v6.super_class = CSStudiesServerUploader;
  [(CSStudiesServerUploader *)&v6 dealloc];
}

@end