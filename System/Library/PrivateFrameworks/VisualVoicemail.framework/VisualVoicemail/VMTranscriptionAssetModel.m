@interface VMTranscriptionAssetModel
- (BOOL)transcriptionAssetModelInstalling;
- (VMTranscriptionAssetModel)init;
- (VMTranscriptionAssetModel)transcriptionAssetModelWithTypeInstalling;
- (void)_installAsset:(id)a3 completion:(id)a4;
- (void)_installAssetForLanguage:(id)a3 speechRecognizer:(id)a4 completion:(id)a5;
- (void)_installAssetModel:(id)a3 isLID:(BOOL)a4 completion:(id)a5;
- (void)_installAssetModelWithType:(int64_t)a3 speechTaskHint:(int64_t)a4 language:(id)a5 completion:(id)a6;
- (void)_installLIDAsset:(id)a3;
- (void)_installSpeechAssetWithConfig:(id)a3 speechTaskHint:(int64_t)a4 completion:(id)a5;
- (void)performInstallAssetModel:(id)a3 isLID:(BOOL)a4 queue:(id)a5 completion:(id)a6;
- (void)performInstallAssetModelWithType:(int64_t)a3 speechTaskHint:(int64_t)a4 language:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)setTranscriptionAssetModelInstalling:(BOOL)a3;
- (void)setTranscriptionAssetModelWithTypeInstalling:(BOOL)a3;
@end

@implementation VMTranscriptionAssetModel

- (VMTranscriptionAssetModel)init
{
  v10.receiver = self;
  v10.super_class = VMTranscriptionAssetModel;
  v2 = [(VMTranscriptionAssetModel *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [NSString stringWithFormat:@"com.apple.voicemail.%@", v5];

    v7 = dispatch_queue_create([v6 UTF8String], 0);
    queue = v3->queue;
    v3->queue = v7;

    *&v3->_transcriptionAssetModelInstalling = 0;
  }

  return v3;
}

- (BOOL)transcriptionAssetModelInstalling
{
  os_unfair_lock_lock(&self->lock);
  transcriptionAssetModelInstalling = self->_transcriptionAssetModelInstalling;
  os_unfair_lock_unlock(&self->lock);
  return transcriptionAssetModelInstalling;
}

- (void)setTranscriptionAssetModelInstalling:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->lock);
  if (self->_transcriptionAssetModelInstalling == v3)
  {

    os_unfair_lock_unlock(&self->lock);
  }

  else
  {
    self->_transcriptionAssetModelInstalling = v3;
    os_unfair_lock_unlock(&self->lock);
    v5 = sub_100012200();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asNSStringBOOL();
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "transcriptionAssetModelInstalling changed to %@", &v7, 0xCu);
    }
  }
}

- (VMTranscriptionAssetModel)transcriptionAssetModelWithTypeInstalling
{
  os_unfair_lock_lock(&self->lock);
  transcriptionAssetModelWithTypeInstalling = self->_transcriptionAssetModelWithTypeInstalling;
  os_unfair_lock_unlock(&self->lock);
  return transcriptionAssetModelWithTypeInstalling;
}

- (void)setTranscriptionAssetModelWithTypeInstalling:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->lock);
  if (self->_transcriptionAssetModelWithTypeInstalling == v3)
  {

    os_unfair_lock_unlock(&self->lock);
  }

  else
  {
    self->_transcriptionAssetModelWithTypeInstalling = v3;
    os_unfair_lock_unlock(&self->lock);
    v5 = sub_100012200();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asNSStringBOOL();
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "transcriptionAssetModelWithTypeInstalling changed to %@", &v7, 0xCu);
    }
  }
}

- (void)_installAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100012200();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting transcription model install operation.", &v19, 2u);
  }

  v9 = sub_100012200();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v10)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Completed transcription model install operation, speechRecognizer is nil", &v19, 2u);
    }

    goto LABEL_15;
  }

  if (v10)
  {
    v11 = [v6 locale];
    v12 = [v11 languageIdentifier];
    v13 = [v6 supportsOnDeviceRecognition];
    v14 = @"NO";
    if (v13)
    {
      v14 = @"YES";
    }

    v19 = 138412546;
    v20 = v12;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "InstallAsset: language %@, supportsOnDeviceRecognition %@", &v19, 0x16u);
  }

  if ([v6 supportsOnDeviceRecognition])
  {
    v15 = sub_100012200();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Completed transcription model install operation, speech dictation model is available already", &v19, 2u);
    }

LABEL_15:
    if (v7)
    {
      v7[2](v7, v6 != 0, 0);
    }

    goto LABEL_23;
  }

  if (_os_feature_enabled_impl())
  {
    v16 = sub_100012200();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "VMTranscriptionAssetModel.InstallAsset: Flag lvmExpansionLiveOnEnabled enabled", &v19, 2u);
    }

    v17 = [v6 locale];
    v18 = [v17 languageIdentifier];
  }

  else
  {
    v18 = @"en-US";
  }

  [(VMTranscriptionAssetModel *)self _installAssetForLanguage:v18 speechRecognizer:v6 completion:v7];

LABEL_23:
}

- (void)_installAssetForLanguage:(id)a3 speechRecognizer:(id)a4 completion:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = sub_100012200();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting fetchAssetsForLanguage %@", buf, 0xCu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100012890;
  v14[3] = &unk_1000EDB78;
  v15 = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012950;
  v11[3] = &unk_1000EDBA0;
  v12 = v15;
  v13 = v7;
  v9 = v7;
  v10 = v15;
  [SFSpeechAssetManager fetchAssetsForLanguage:v10 progress:v14 completion:v11];
}

- (void)_installLIDAsset:(id)a3
{
  v3 = a3;
  v4 = sub_100012200();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting LID model install operation", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012C14;
  v6[3] = &unk_1000EDC08;
  v7 = v3;
  v5 = v3;
  [SFSpeechAssetManager fetchLanguageDetectorAssetsForClientIdentifier:@"com.apple.visualvoicemail" progress:&stru_1000EDBE0 completion:v6];
}

- (void)_installSpeechAssetWithConfig:(id)a3 speechTaskHint:(int64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = sub_100012200();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v7;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting SpeechAssetWithConfig model install operation for language: %@, taskHint: %ld", buf, 0x16u);
  }

  v10 = [[SFEntitledAssetConfig alloc] initWithLanguage:v7 taskHint:a4];
  v11 = sub_100012200();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 language];
    *buf = 138412290;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "VMTranscriptionAssetModel.InstallSpeechAsset: fetchAssetWithConfig for %@", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100012FF4;
  v18[3] = &unk_1000EDB78;
  v19 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000130DC;
  v15[3] = &unk_1000EDBA0;
  v13 = v19;
  v16 = v13;
  v14 = v8;
  v17 = v14;
  [SFSpeechAssetManager fetchAssetWithConfig:v13 clientIdentifier:@"com.apple.visualvoicemail" progress:v18 completion:v15 timeout:1800.0];
}

- (void)_installAssetModel:(id)a3 isLID:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v8 = a5;
  if (a4)
  {
    [(VMTranscriptionAssetModel *)self _installLIDAsset:v8];
  }

  else
  {
    [(VMTranscriptionAssetModel *)self _installAsset:v9 completion:v8];
  }
}

- (void)_installAssetModelWithType:(int64_t)a3 speechTaskHint:(int64_t)a4 language:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (a3 == 1)
  {
    [(VMTranscriptionAssetModel *)self _installSpeechAssetWithConfig:v10 speechTaskHint:a4 completion:v11];
  }

  else if (a3 == 2)
  {
    [(VMTranscriptionAssetModel *)self _installLIDAsset:v11];
  }

  else
  {
    v12 = sub_100012200();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [NSNumber numberWithInteger:a3];
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "VMTranscriptionAssetModel: invalid VMAssetModelType %@", buf, 0xCu);
    }

    v14 = [NSNumber numberWithInteger:a3];
    v15 = [NSString stringWithFormat:@"invalid VMAssetModelType %@", v14];

    v16 = [NSError errorWithDomain:kVVErrorDomain code:5001 localizedDescription:v15];
    if (v11)
    {
      v11[2](v11, 0, v16);
    }
  }
}

- (void)performInstallAssetModel:(id)a3 isLID:(BOOL)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = sub_100012200();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = asNSStringBOOL();
    *buf = 138412290;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Requested InstallAssetModel, isLID: %@", buf, 0xCu);
  }

  [(VMTranscriptionAssetModel *)self setTranscriptionAssetModelInstalling:1];
  queue = self->queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000136FC;
  block[3] = &unk_1000EDC80;
  v23 = a4;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(queue, block);
}

- (void)performInstallAssetModelWithType:(int64_t)a3 speechTaskHint:(int64_t)a4 language:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = sub_100012200();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"nil";
    if (v12)
    {
      v16 = v12;
    }

    *buf = 134218242;
    v29 = a3;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Requested InstallAssetModelWithType, assetModelType: %lu, language: %@", buf, 0x16u);
  }

  [(VMTranscriptionAssetModel *)self setTranscriptionAssetModelWithTypeInstalling:1];
  queue = self->queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100013BE4;
  v21[3] = &unk_1000EDCA8;
  v22 = v12;
  v23 = self;
  v26 = a3;
  v27 = a4;
  v24 = v13;
  v25 = v14;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(queue, v21);
}

@end