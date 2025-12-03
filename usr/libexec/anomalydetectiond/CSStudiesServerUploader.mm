@interface CSStudiesServerUploader
- (BOOL)addOutOfBandMetadata:(id)metadata error:(id *)error;
- (BOOL)enqueueFileWithFilename:(id)filename andMetadata:(id)metadata error:(id *)error;
- (BOOL)isFileOldEnoughForDeletion:(id)deletion;
- (BOOL)registerForUploadingWithError:(id *)error;
- (BOOL)startMonitoringWithError:(id *)error;
- (CSStudiesServerUploader)initWithSpoolerFolder:(id)folder serverConfiguration:(id)configuration registrationPeriodInSeconds:(unint64_t)seconds retentionPeriodInSeconds:(unint64_t)inSeconds outOfBandMetadataTimeout:(double)timeout defaultsKeyPostfix:(id)postfix;
- (void)checkForPersistedRegistration;
- (void)createSubmitterIfRegistered;
- (void)dealloc;
@end

@implementation CSStudiesServerUploader

- (CSStudiesServerUploader)initWithSpoolerFolder:(id)folder serverConfiguration:(id)configuration registrationPeriodInSeconds:(unint64_t)seconds retentionPeriodInSeconds:(unint64_t)inSeconds outOfBandMetadataTimeout:(double)timeout defaultsKeyPostfix:(id)postfix
{
  folderCopy = folder;
  configurationCopy = configuration;
  postfixCopy = postfix;
  v30.receiver = self;
  v30.super_class = CSStudiesServerUploader;
  v17 = [(CSStudiesServerUploader *)&v30 init];
  if (v17)
  {
    v18 = [[NSURL alloc] initFileURLWithPath:folderCopy isDirectory:1];
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

    objc_storeStrong(&v17->_configuration, configuration);
    v17->_registrationPeriodInSeconds = seconds;
    v17->_retentionPeriodInSeconds = inSeconds;
    objc_storeStrong(&v17->_postfix, postfix);
    v22 = [@"StudiesServerUploaderDefaultsSubjectID" stringByAppendingString:postfixCopy];
    defaultsSubjectIDKeyName = v17->_defaultsSubjectIDKeyName;
    v17->_defaultsSubjectIDKeyName = v22;

    v24 = [@"StudiesServerUploaderDefaultsSubjectAuthorizationToken" stringByAppendingString:postfixCopy];
    defaultsSubjectAuthTokenKeyName = v17->_defaultsSubjectAuthTokenKeyName;
    v17->_defaultsSubjectAuthTokenKeyName = v24;

    v26 = [@"StudiesServerUploaderDefaultsRegistrationDate" stringByAppendingString:postfixCopy];
    defaultsRegistrationDateKeyName = v17->_defaultsRegistrationDateKeyName;
    v17->_defaultsRegistrationDateKeyName = v26;

    [(CSStudiesServerUploader *)v17 checkForPersistedRegistration];
    submitter = v17->_submitter;
    v17->_submitter = 0;

    [(CSStudiesServerUploader *)v17 createSubmitterIfRegistered];
    v17->_oobTimeout = timeout;
  }

  return v17;
}

- (void)checkForPersistedRegistration
{
  v3 = +[NSUserDefaults standardUserDefaults];
  defaultsRegistrationDateKeyName = [(CSStudiesServerUploader *)self defaultsRegistrationDateKeyName];
  v5 = [v3 integerForKey:defaultsRegistrationDateKeyName];

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
        registrationPeriodInSeconds = [(CSStudiesServerUploader *)self registrationPeriodInSeconds];
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Expired HDS UUID found: %{public}llu > %{public}llu", &v22, 0x16u);
      }

      [(CSStudiesServerUploader *)self setRegistered:0];
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(CSStudiesServerUploader *)selfCopy setRegistered:1];
      v10 = [NSUUID alloc];
      v11 = +[NSUserDefaults standardUserDefaults];
      defaultsSubjectIDKeyName = [(CSStudiesServerUploader *)selfCopy defaultsSubjectIDKeyName];
      v13 = [v11 stringForKey:defaultsSubjectIDKeyName];
      v14 = [v10 initWithUUIDString:v13];
      [(CSStudiesServerUploader *)selfCopy setSubjectID:v14];

      v15 = +[NSUserDefaults standardUserDefaults];
      defaultsSubjectAuthTokenKeyName = [(CSStudiesServerUploader *)selfCopy defaultsSubjectAuthTokenKeyName];
      v17 = [v15 stringForKey:defaultsSubjectAuthTokenKeyName];
      [(CSStudiesServerUploader *)selfCopy setSubjectAuthorizationToken:v17];

      objc_sync_exit(selfCopy);
      if (qword_1004568C8 != -1)
      {
        sub_100357D64();
      }

      v18 = qword_1004568D0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        subjectID = [(CSStudiesServerUploader *)selfCopy subjectID];
        v22 = 138543362;
        v23 = subjectID;
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
      subjectID = [(CSStudiesServerUploader *)self subjectID];
      v15 = 138543362;
      v16 = subjectID;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Registered with Studies Server as %{public}@", &v15, 0xCu);
    }

    configuration = [(CSStudiesServerUploader *)self configuration];
    server = [configuration server];
    v7 = [NSURL URLWithString:server];
    v8 = [v7 URLByAppendingPathComponent:@"/ingest/v2/submit/"];

    submitter = [(CSStudiesServerUploader *)self submitter];
    LODWORD(configuration) = submitter == 0;

    if (configuration)
    {
      v12 = [CSStudiesServerSubmitter alloc];
      configuration2 = [(CSStudiesServerUploader *)self configuration];
      auth = [configuration2 auth];
      subjectAuthorizationToken = [(CSStudiesServerUploader *)self subjectAuthorizationToken];
      v14 = [(CSStudiesServerSubmitter *)v12 initWithEndpoint:v8 authorization:auth subjectToken:subjectAuthorizationToken];
      [(CSStudiesServerUploader *)self setSubmitter:v14];
    }

    else
    {
      configuration2 = [(CSStudiesServerUploader *)self submitter];
      auth = [(CSStudiesServerUploader *)self subjectAuthorizationToken];
      [configuration2 updateRegistrationWithSubjectToken:auth];
    }
  }
}

- (BOOL)registerForUploadingWithError:(id *)error
{
  [(CSStudiesServerUploader *)self checkForPersistedRegistration];
  if (![(CSStudiesServerUploader *)self registered])
  {
    errorCopy = error;
    configuration = [(CSStudiesServerUploader *)self configuration];
    server = [configuration server];
    v7 = [NSURL URLWithString:server];
    v8 = [v7 URLByAppendingPathComponent:@"/ingest/v2/register/"];
    configuration2 = [(CSStudiesServerUploader *)self configuration];
    studyUUID = [configuration2 studyUUID];
    uUIDString = [studyUUID UUIDString];
    lowercaseString = [uUIDString lowercaseString];
    v13 = [v8 URLByAppendingPathComponent:lowercaseString];

    v14 = [CSStudiesServerRegistrar alloc];
    configuration3 = [(CSStudiesServerUploader *)self configuration];
    auth = [configuration3 auth];
    v17 = [(CSStudiesServerRegistrar *)v14 initWithEndpoint:v13 authorization:auth cellularAccess:1 timeoutInSeconds:60];

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
      *errorCopy = v21;
    }

    [(CSStudiesServerUploader *)self createSubmitterIfRegistered];

    objc_destroyWeak(&v27);
    _Block_object_dispose(&v28, 8);

    objc_destroyWeak(&location);
  }

  return [(CSStudiesServerUploader *)self registered];
}

- (BOOL)isFileOldEnoughForDeletion:(id)deletion
{
  deletionCopy = deletion;
  v5 = +[NSFileManager defaultManager];
  path = [deletionCopy path];
  v19 = 0;
  v7 = [v5 attributesOfItemAtPath:path error:&v19];
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
      v21 = deletionCopy;
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to get attributes for file %{public}@: %{public}@", buf, 0x16u);
    }

    v10 = 1;
  }

  else
  {
    fileCreationDate = [v7 fileCreationDate];
    [fileCreationDate timeIntervalSinceReferenceDate];
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
    v21 = deletionCopy;
    v22 = 1026;
    LODWORD(v23) = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "File %{public}@ for deletion? %{public}d", buf, 0x12u);
  }

  return v10;
}

- (BOOL)startMonitoringWithError:(id *)error
{
  if ([(CSStudiesServerUploader *)self monitoring])
  {
LABEL_13:
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = sub_10001B724(self, error, @"starter");
  if (v5)
  {
    objc_initWeak(location, self);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100013574;
    v50[3] = &unk_100413058;
    v50[4] = error;
    v42 = objc_retainBlock(v50);
    v6 = [NSURL alloc];
    v7 = NSTemporaryDirectory();
    v8 = [v7 stringByAppendingPathComponent:@"feedbackAssistantHolding"];
    v9 = [v6 initFileURLWithPath:v8 isDirectory:1];

    v41 = v9;
    v10 = [CSFolderMonitor alloc];
    path = [v9 path];
    v12 = dispatch_get_global_queue(0, 0);
    v13 = [(CSFolderMonitor *)v10 initWithFolder:path fileExtension:@"protodata" queue:v12 postfix:@".fba_holding.cleanup" andAction:v42];
    [(CSStudiesServerUploader *)self setFeedbackHoldingMonitor:v13];

    v40 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUnlessOpen allowBattery:1 periodInseconds:XPC_ACTIVITY_INTERVAL_1_HOUR];
    feedbackHoldingMonitor = [(CSStudiesServerUploader *)self feedbackHoldingMonitor];
    [feedbackHoldingMonitor setupRecurringScanningWithConfiguration:v40 runNow:1];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100013A60;
    v48[3] = &unk_1004130A8;
    objc_copyWeak(&v49, location);
    v48[4] = self;
    v43 = objc_retainBlock(v48);
    v15 = [CSFolderMonitor alloc];
    folderURL = [(CSStudiesServerUploader *)self folderURL];
    path2 = [folderURL path];
    postfix = [(CSStudiesServerUploader *)self postfix];
    v19 = [(CSFolderMonitor *)v15 initWithFolder:path2 fileExtension:@"protodata" queue:v12 postfix:postfix andAction:v43];
    [(CSStudiesServerUploader *)self setOobMetadataMonitor:v19];

    v20 = +[CSPersistentConfiguration sharedConfiguration];
    v21 = [v20 BOOLForKey:@"UploaderIndigenousXPCActivity"];

    if (v21)
    {
      oobMetadataMonitor2 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUnlessOpen allowBattery:1 periodInseconds:XPC_ACTIVITY_INTERVAL_1_HOUR];
      oobMetadataMonitor = [(CSStudiesServerUploader *)self oobMetadataMonitor];
      [oobMetadataMonitor setupRecurringScanningWithConfiguration:oobMetadataMonitor2 runNow:1];
    }

    else
    {
      oobMetadataMonitor2 = [(CSStudiesServerUploader *)self oobMetadataMonitor];
      [(CSFolderMonitorBackgroundScanningConfiguration *)oobMetadataMonitor2 registerForFolderMonitorActivity];
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100014354;
    v46[3] = &unk_1004130A8;
    objc_copyWeak(&v47, location);
    v46[4] = self;
    v24 = objc_retainBlock(v46);
    v25 = [CSFolderMonitor alloc];
    folderURL2 = [(CSStudiesServerUploader *)self folderURL];
    path3 = [folderURL2 path];
    postfix2 = [(CSStudiesServerUploader *)self postfix];
    v29 = [(CSFolderMonitor *)v25 initWithFolder:path3 fileExtension:@"metadata" queue:v12 postfix:postfix2 andAction:v24];
    [(CSStudiesServerUploader *)self setEncryptMonitor:v29];

    if (v21)
    {
      encryptMonitor2 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUnlessOpen allowBattery:1 periodInseconds:XPC_ACTIVITY_INTERVAL_1_HOUR];
      encryptMonitor = [(CSStudiesServerUploader *)self encryptMonitor];
      [encryptMonitor setupRecurringScanningWithConfiguration:encryptMonitor2 runNow:1];
    }

    else
    {
      encryptMonitor2 = [(CSStudiesServerUploader *)self encryptMonitor];
      [(CSFolderMonitorBackgroundScanningConfiguration *)encryptMonitor2 registerForFolderMonitorActivity];
    }

    v32 = [CSFolderMonitor alloc];
    folderURL3 = [(CSStudiesServerUploader *)self folderURL];
    path4 = [folderURL3 path];
    postfix3 = [(CSStudiesServerUploader *)self postfix];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100014F3C;
    v44[3] = &unk_1004130F8;
    objc_copyWeak(&v45, location);
    v36 = [(CSFolderMonitor *)v32 initWithFolder:path4 fileExtension:@"encrypted" queue:v12 postfix:postfix3 andAction:v44];
    [(CSStudiesServerUploader *)self setSubmitMonitor:v36];

    if (v21)
    {
      submitMonitor2 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUntilFirstUserAuthentication allowBattery:1 periodInseconds:XPC_ACTIVITY_INTERVAL_1_HOUR];
      submitMonitor = [(CSStudiesServerUploader *)self submitMonitor];
      [submitMonitor setupRecurringScanningWithConfiguration:submitMonitor2 runNow:1];
    }

    else
    {
      submitMonitor2 = [(CSStudiesServerUploader *)self submitMonitor];
      [(CSFolderMonitorBackgroundScanningConfiguration *)submitMonitor2 registerForFolderMonitorActivity];
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

- (BOOL)enqueueFileWithFilename:(id)filename andMetadata:(id)metadata error:(id *)error
{
  filenameCopy = filename;
  metadataCopy = metadata;
  v10 = +[NSFileManager defaultManager];
  if ([v10 fileExistsAtPath:filenameCopy])
  {
    v22 = metadataCopy;
    v11 = [[NSURL alloc] initFileURLWithPath:filenameCopy isDirectory:0];
    uRLByDeletingLastPathComponent = [v11 URLByDeletingLastPathComponent];
    absoluteString = [uRLByDeletingLastPathComponent absoluteString];
    folderURL = [(CSStudiesServerUploader *)self folderURL];
    absoluteString2 = [folderURL absoluteString];
    v16 = [absoluteString isEqualToString:absoluteString2];

    folderURL2 = [(CSStudiesServerUploader *)self folderURL];
    v18 = +[NSDate now];
    [v18 timeIntervalSinceReferenceDate];
    LOBYTE(error) = [(CSStudiesServerUploader *)self persistToDiskWithSpooledFile:v16 spoolerDir:folderURL2 fileURL:v11 enqueueTime:v22 metadata:error error:?];

    metadataCopy = v22;
  }

  else if (error)
  {
    v23 = NSLocalizedDescriptionKey;
    filenameCopy = [NSString stringWithFormat:@"While enqueuing, file doesnt exist: %@", filenameCopy];
    v24 = filenameCopy;
    v20 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:v20];

    LOBYTE(error) = 0;
  }

  return error;
}

- (BOOL)addOutOfBandMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v7 encodeObject:metadataCopy forKey:@"oobMetadata"];
  v8 = +[NSDate now];
  [v8 timeIntervalSinceReferenceDate];
  [v7 encodeDouble:@"enqueueTime" forKey:?];

  [v7 finishEncoding];
  v9 = +[NSUUID UUID];
  folderURL = [(CSStudiesServerUploader *)self folderURL];
  uUIDString = [v9 UUIDString];
  v12 = [folderURL URLByAppendingPathComponent:uUIDString];
  v13 = [v12 URLByAppendingPathExtension:@"oob"];

  encodedData = [v7 encodedData];
  LOBYTE(error) = [encodedData writeToURL:v13 options:805306369 error:error];

  return error;
}

- (void)dealloc
{
  submitMonitor = [(CSStudiesServerUploader *)self submitMonitor];
  [submitMonitor stopRecurringScanning];

  encryptMonitor = [(CSStudiesServerUploader *)self encryptMonitor];
  [encryptMonitor stopRecurringScanning];

  oobMetadataMonitor = [(CSStudiesServerUploader *)self oobMetadataMonitor];
  [oobMetadataMonitor stopRecurringScanning];

  v6.receiver = self;
  v6.super_class = CSStudiesServerUploader;
  [(CSStudiesServerUploader *)&v6 dealloc];
}

@end