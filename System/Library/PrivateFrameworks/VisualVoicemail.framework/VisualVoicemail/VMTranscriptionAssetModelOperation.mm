@interface VMTranscriptionAssetModelOperation
- (VMTranscriptionAssetModelOperation)initWithSpeechRecognizer:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)downloadAsset:(id)a3;
- (void)downloadAssetCatalog;
- (void)downloadAssetCatalogComplete:(BOOL)a3;
- (void)downloadAssetCatalogWithCompletion:(id)a3;
- (void)downloadComplete:(BOOL)a3;
- (void)install;
- (void)installAssetCatalogAndLanguages;
- (void)installAssetLanguages;
- (void)installLIDAsset;
- (void)start;
@end

@implementation VMTranscriptionAssetModelOperation

- (VMTranscriptionAssetModelOperation)initWithSpeechRecognizer:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Init transcription model install operation.", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = VMTranscriptionAssetModelOperation;
  v6 = [(VMSpeechRecognizerOperation *)&v8 initWithSpeechRecognizer:v4];

  if (v6)
  {
    [(VMTranscriptionAssetModelOperation *)v6 configureProgressWithUnitCount:1];
    v6->_isLID = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc transcription model install operation.", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = VMTranscriptionAssetModelOperation;
  [(VMTranscriptionAssetModelOperation *)&v4 dealloc];
}

- (void)start
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting transcriptionAssetModelOperation - begin", buf, 2u);
  }

  if ([(VMTranscriptionAssetModelOperation *)self isCancelled])
  {
    v4 = vm_vmd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting transcriptionAssetModelOperation - cancelled", v7, 2u);
    }

    [(VMTranscriptionAssetModelOperation *)self willChangeValueForKey:@"isFinished"];
    self->_isFinished = 1;
    [(VMTranscriptionAssetModelOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(VMTranscriptionAssetModelOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_isExecuting = 1;
    [(VMTranscriptionAssetModelOperation *)self didChangeValueForKey:@"isExecuting"];
    if (self->_isLID)
    {
      [(VMTranscriptionAssetModelOperation *)self installLIDAsset];
    }

    else
    {
      [(VMTranscriptionAssetModelOperation *)self install];
    }

    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting transcriptionAssetModelOperation - end", v6, 2u);
    }
  }
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VMTranscriptionAssetModelOperation;
  [(VMTranscriptionAssetModelOperation *)&v4 cancel];
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelled transcription model install operation %@.", buf, 0xCu);
  }
}

- (void)install
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting transcription model install operation.", buf, 2u);
  }

  v4 = [(VMSpeechRecognizerOperation *)self speechRecognizer];
  if (v4 || (v5 = [SFSpeechRecognizer alloc], -[VMSpeechRecognizerOperation locale](self, "locale"), v6 = objc_claimAutoreleasedReturnValue(), v4 = [v5 initWithLocale:v6], v6, v4))
  {
    v7 = vm_vmd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 supportsOnDeviceRecognition];
      v9 = @"NO";
      if (v8)
      {
        v9 = @"YES";
      }

      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "supportsOnDeviceRecognition %@", buf, 0xCu);
    }

    if ([v4 supportsOnDeviceRecognition])
    {
      v10 = vm_vmd_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Speech dictation model is available already.", buf, 2u);
      }

      v11 = [(VMTranscriptionAssetModelOperation *)self operationCompletion];

      if (v11)
      {
        v12 = [(VMTranscriptionAssetModelOperation *)self operationCompletion];
        v12[2](v12, 1, 0);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v13 = dispatch_semaphore_create(0);
      if (_os_feature_enabled_impl())
      {
        v14 = vm_vmd_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "VMTranscriptionAssetModelOperation.install: Flag lvmExpansionLiveOnEnabled enabled", buf, 2u);
        }

        v15 = [(VMSpeechRecognizerOperation *)self speechRecognizer];
        v16 = [v15 locale];
        v17 = [v16 languageIdentifier];
      }

      else
      {
        v17 = @"en-US";
      }

      v18 = vm_vmd_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "VMTranscriptionAssetModelOperation.install: Fetching assets for %@", buf, 0xCu);
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100047F54;
      v28[3] = &unk_1000EDEF0;
      v29 = v17;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100048014;
      v23[3] = &unk_1000EDF18;
      v19 = v29;
      v24 = v19;
      objc_copyWeak(&v27, &location);
      v25 = self;
      v20 = v13;
      v26 = v20;
      [SFSpeechAssetManager fetchAssetsForLanguage:v19 progress:v28 completion:v23];
      dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v4 = [(VMTranscriptionAssetModelOperation *)self operationCompletion];

    if (v4)
    {
      v22 = [(VMTranscriptionAssetModelOperation *)self operationCompletion];
      v22[2](v22, 0, 0);

      v4 = 0;
    }
  }

  v21 = vm_vmd_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Finished transcription model install operation.", buf, 2u);
  }
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
  v8[2] = sub_1000483F8;
  v8[3] = &unk_1000EDF60;
  objc_copyWeak(&v11, &location);
  v10 = buf;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [SFSpeechAssetManager fetchLanguageDetectorAssetsForClientIdentifier:@"com.apple.visualvoicemail" progress:&stru_1000EE838 completion:v8];
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

  [(VMTranscriptionAssetModelOperation *)self willChangeValueForKey:@"isExecuting"];
  [(VMTranscriptionAssetModelOperation *)self willChangeValueForKey:@"isFinished"];
  self->_isExecuting = 0;
  self->_isFinished = 1;
  [(VMTranscriptionAssetModelOperation *)self didChangeValueForKey:@"isFinished"];
  [(VMTranscriptionAssetModelOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)installAssetLanguages
{
  v3 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.EmbeddedSpeech"];
  [v3 returnTypes:2];
  [v3 addKeyValuePair:@"Language" with:@"en-US"];
  v4 = [v3 queryMetaDataSync];
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 results];
    *buf = 134218242;
    v27 = v4;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "installAssetLanguages query result %ld, assets %@", buf, 0x16u);
  }

  if (v4)
  {
    [(VMTranscriptionAssetModelOperation *)self downloadComplete:0];
  }

  else
  {
    v20 = self;
    v21 = v3;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [v3 results];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 assetId];
          v14 = [v12 attributes];
          v15 = [v14 objectForKey:@"Language"];

          v16 = [v12 state];
          v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
          v18 = vm_vmd_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v19 = @"NO";
            if (v17 == 2)
            {
              v19 = @"YES";
            }

            v27 = v13;
            v28 = 2112;
            v29 = v15;
            v30 = 2048;
            v31 = v16;
            v32 = 2112;
            v33 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Asset %@, language %@, state %ld, installed %@", buf, 0x2Au);
          }

          if (v17 != 2)
          {
            [(VMTranscriptionAssetModelOperation *)v20 downloadAsset:v12];

            goto LABEL_19;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v34 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    [(VMTranscriptionAssetModelOperation *)v20 downloadComplete:1];
LABEL_19:
    v3 = v21;
  }
}

- (void)installAssetCatalogAndLanguages
{
  v3 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.EmbeddedSpeech"];
  [v3 returnTypes:4];
  v4 = [v3 queryMetaDataSync];
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "installAssetCatalogAndLanguages query result %ld", &v6, 0xCu);
  }

  if (v4 == 2)
  {
    [(VMTranscriptionAssetModelOperation *)self downloadAssetCatalog];
  }

  else
  {
    [(VMTranscriptionAssetModelOperation *)self installAssetLanguages];
  }
}

- (void)downloadAssetCatalogWithCompletion:(id)a3
{
  v3 = a3;
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Downloading asset catalog", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100048B8C;
  v6[3] = &unk_1000EE860;
  v7 = v3;
  v5 = v3;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.EmbeddedSpeech" then:v6];
}

- (void)downloadAssetCatalogComplete:(BOOL)a3
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Download Asset catalog complete, success %@", &v7, 0xCu);
  }

  if (v3)
  {
    [(VMTranscriptionAssetModelOperation *)self installAssetLanguages];
  }

  else
  {
    [(VMTranscriptionAssetModelOperation *)self downloadComplete:0];
  }
}

- (void)downloadAssetCatalog
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100048D50;
  v2[3] = &unk_1000EE888;
  v2[4] = self;
  [(VMTranscriptionAssetModelOperation *)self downloadAssetCatalogWithCompletion:v2];
}

- (void)downloadAsset:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Downloading asset %@", buf, 0xCu);
  }

  [v4 attachProgressCallBack:&stru_1000EE8C8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100049098;
  v6[3] = &unk_1000EE8F0;
  v6[4] = self;
  [v4 startDownload:v6];
}

@end