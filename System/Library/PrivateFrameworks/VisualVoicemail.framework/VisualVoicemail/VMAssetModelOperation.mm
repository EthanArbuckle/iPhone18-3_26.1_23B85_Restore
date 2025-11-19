@interface VMAssetModelOperation
- (VMAssetModelOperation)initWithAssetModelOperationConfiguration:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)downloadComplete:(BOOL)a3;
- (void)installLIDAsset;
- (void)installSpeechAsset;
- (void)start;
@end

@implementation VMAssetModelOperation

- (VMAssetModelOperation)initWithAssetModelOperationConfiguration:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Init VMAssetModel Operation.", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = VMAssetModelOperation;
  v6 = [(VMAssetModelOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(VMAssetModelOperation *)v6 configureProgressWithUnitCount:1];
    [(VMAssetModelOperation *)v7 setAssetModelOperationConfig:v4];
  }

  return v7;
}

- (void)dealloc
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc VMAssetModel Operation.", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = VMAssetModelOperation;
  [(VMAssetModelOperation *)&v4 dealloc];
}

- (void)start
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting VMAssetModelOperation - begin", v14, 2u);
  }

  if ([(VMAssetModelOperation *)self isCancelled])
  {
    v4 = vm_vmd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting VMAssetModelOperation - cancelled", v14, 2u);
    }

    [(VMAssetModelOperation *)self willChangeValueForKey:@"isFinished"];
    self->_isFinished = 1;
    [(VMAssetModelOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(VMAssetModelOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_isExecuting = 1;
    [(VMAssetModelOperation *)self didChangeValueForKey:@"isExecuting"];
    v5 = [(VMAssetModelOperation *)self assetModelOperationConfig];
    v6 = [v5 assetModelType];

    if (v6 == 2)
    {
      [(VMAssetModelOperation *)self installLIDAsset];
    }

    else
    {
      v7 = [(VMAssetModelOperation *)self assetModelOperationConfig];
      v8 = [v7 assetModelType];

      if (v8 == 1)
      {
        [(VMAssetModelOperation *)self installSpeechAsset];
      }

      else
      {
        v9 = kVVErrorDomain;
        v15 = NSLocalizedDescriptionKey;
        v16 = @"VMAssetModelOperation: Invalid VMAssetModelType";
        v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v11 = [NSError errorWithDomain:v9 code:5001 userInfo:v10];

        v12 = [(VMAssetModelOperation *)self operationCompletion];
        (v12)[2](v12, 0, v11);
      }
    }

    v13 = vm_vmd_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting AssetModelOperation - end", v14, 2u);
    }
  }
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VMAssetModelOperation;
  [(VMAssetModelOperation *)&v4 cancel];
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelled transcription model install operation %@.", buf, 0xCu);
  }
}

- (void)installSpeechAsset
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting Speech Asset Model install operation.", buf, 2u);
  }

  objc_initWeak(&location, self);
  v4 = dispatch_semaphore_create(0);
  v5 = [SFEntitledAssetConfig alloc];
  v6 = [(VMAssetModelOperation *)self assetModelOperationConfig];
  v7 = [v6 language];
  v8 = [(VMAssetModelOperation *)self assetModelOperationConfig];
  v9 = [v5 initWithLanguage:v7 taskHint:{objc_msgSend(v8, "speechTaskHint")}];

  v10 = vm_vmd_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 language];
    *buf = 138412290;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "VMAssetModelOperation.install: Fetching assets for %@", buf, 0xCu);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002CA04;
  v20[3] = &unk_1000EDEF0;
  v21 = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002CAD4;
  v15[3] = &unk_1000EDF18;
  v12 = v21;
  v16 = v12;
  objc_copyWeak(&v19, &location);
  v17 = self;
  v13 = v4;
  v18 = v13;
  [SFSpeechAssetManager fetchAssetWithConfig:v12 clientIdentifier:@"com.apple.visualvoicemail" progress:v20 completion:v15 timeout:1800.0];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v14 = vm_vmd_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Finished Speech Asset Model install operation.", buf, 2u);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)installLIDAsset
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting LanguageID model install operation.", buf, 2u);
  }

  objc_initWeak(&location, self);
  v4 = dispatch_semaphore_create(0);
  *buf = 0;
  v13 = buf;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002CED4;
  v8[3] = &unk_1000EDF60;
  objc_copyWeak(&v11, &location);
  v10 = buf;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [SFSpeechAssetManager fetchLanguageDetectorAssetsForClientIdentifier:@"com.apple.visualvoicemail" progress:&stru_1000EDF38 completion:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished LanguageID model install operation.", v7, 2u);
  }

  objc_destroyWeak(&v11);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

- (void)downloadComplete:(BOOL)a3
{
  v3 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Download SFSpeechAsset model complete, success %@", &v7, 0xCu);
  }

  [(VMAssetModelOperation *)self willChangeValueForKey:@"isExecuting"];
  [(VMAssetModelOperation *)self willChangeValueForKey:@"isFinished"];
  self->_isExecuting = 0;
  self->_isFinished = 1;
  [(VMAssetModelOperation *)self didChangeValueForKey:@"isFinished"];
  [(VMAssetModelOperation *)self didChangeValueForKey:@"isExecuting"];
}

@end