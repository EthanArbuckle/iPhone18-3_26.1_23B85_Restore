@interface VMTranscriptionAssetModel
- (BOOL)transcriptionAssetModelInstalling;
- (VMTranscriptionAssetModel)init;
- (VMTranscriptionAssetModel)transcriptionAssetModelWithTypeInstalling;
- (void)_installAsset:(id)asset completion:(id)completion;
- (void)_installAssetForLanguage:(id)language speechRecognizer:(id)recognizer completion:(id)completion;
- (void)_installAssetModel:(id)model isLID:(BOOL)d completion:(id)completion;
- (void)_installAssetModelWithType:(int64_t)type speechTaskHint:(int64_t)hint language:(id)language completion:(id)completion;
- (void)_installLIDAsset:(id)asset;
- (void)_installSpeechAssetWithConfig:(id)config speechTaskHint:(int64_t)hint completion:(id)completion;
- (void)performInstallAssetModel:(id)model isLID:(BOOL)d queue:(id)queue completion:(id)completion;
- (void)performInstallAssetModelWithType:(int64_t)type speechTaskHint:(int64_t)hint language:(id)language queue:(id)queue completion:(id)completion;
- (void)setTranscriptionAssetModelInstalling:(BOOL)installing;
- (void)setTranscriptionAssetModelWithTypeInstalling:(BOOL)installing;
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

- (void)setTranscriptionAssetModelInstalling:(BOOL)installing
{
  installingCopy = installing;
  os_unfair_lock_lock(&self->lock);
  if (self->_transcriptionAssetModelInstalling == installingCopy)
  {

    os_unfair_lock_unlock(&self->lock);
  }

  else
  {
    self->_transcriptionAssetModelInstalling = installingCopy;
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

- (void)setTranscriptionAssetModelWithTypeInstalling:(BOOL)installing
{
  installingCopy = installing;
  os_unfair_lock_lock(&self->lock);
  if (self->_transcriptionAssetModelWithTypeInstalling == installingCopy)
  {

    os_unfair_lock_unlock(&self->lock);
  }

  else
  {
    self->_transcriptionAssetModelWithTypeInstalling = installingCopy;
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

- (void)_installAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v8 = sub_100012200();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting transcription model install operation.", &v19, 2u);
  }

  v9 = sub_100012200();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!assetCopy)
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
    locale = [assetCopy locale];
    languageIdentifier = [locale languageIdentifier];
    supportsOnDeviceRecognition = [assetCopy supportsOnDeviceRecognition];
    v14 = @"NO";
    if (supportsOnDeviceRecognition)
    {
      v14 = @"YES";
    }

    v19 = 138412546;
    v20 = languageIdentifier;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "InstallAsset: language %@, supportsOnDeviceRecognition %@", &v19, 0x16u);
  }

  if ([assetCopy supportsOnDeviceRecognition])
  {
    v15 = sub_100012200();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Completed transcription model install operation, speech dictation model is available already", &v19, 2u);
    }

LABEL_15:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, assetCopy != 0, 0);
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

    locale2 = [assetCopy locale];
    languageIdentifier2 = [locale2 languageIdentifier];
  }

  else
  {
    languageIdentifier2 = @"en-US";
  }

  [(VMTranscriptionAssetModel *)self _installAssetForLanguage:languageIdentifier2 speechRecognizer:assetCopy completion:completionCopy];

LABEL_23:
}

- (void)_installAssetForLanguage:(id)language speechRecognizer:(id)recognizer completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  v8 = sub_100012200();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = languageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting fetchAssetsForLanguage %@", buf, 0xCu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100012890;
  v14[3] = &unk_1000EDB78;
  v15 = languageCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012950;
  v11[3] = &unk_1000EDBA0;
  v12 = v15;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = v15;
  [SFSpeechAssetManager fetchAssetsForLanguage:v10 progress:v14 completion:v11];
}

- (void)_installLIDAsset:(id)asset
{
  assetCopy = asset;
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
  v7 = assetCopy;
  v5 = assetCopy;
  [SFSpeechAssetManager fetchLanguageDetectorAssetsForClientIdentifier:@"com.apple.visualvoicemail" progress:&stru_1000EDBE0 completion:v6];
}

- (void)_installSpeechAssetWithConfig:(id)config speechTaskHint:(int64_t)hint completion:(id)completion
{
  configCopy = config;
  completionCopy = completion;
  v9 = sub_100012200();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = configCopy;
    v22 = 2048;
    hintCopy = hint;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting SpeechAssetWithConfig model install operation for language: %@, taskHint: %ld", buf, 0x16u);
  }

  v10 = [[SFEntitledAssetConfig alloc] initWithLanguage:configCopy taskHint:hint];
  v11 = sub_100012200();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    language = [v10 language];
    *buf = 138412290;
    v21 = language;
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
  v14 = completionCopy;
  v17 = v14;
  [SFSpeechAssetManager fetchAssetWithConfig:v13 clientIdentifier:@"com.apple.visualvoicemail" progress:v18 completion:v15 timeout:1800.0];
}

- (void)_installAssetModel:(id)model isLID:(BOOL)d completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  if (d)
  {
    [(VMTranscriptionAssetModel *)self _installLIDAsset:completionCopy];
  }

  else
  {
    [(VMTranscriptionAssetModel *)self _installAsset:modelCopy completion:completionCopy];
  }
}

- (void)_installAssetModelWithType:(int64_t)type speechTaskHint:(int64_t)hint language:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  if (type == 1)
  {
    [(VMTranscriptionAssetModel *)self _installSpeechAssetWithConfig:languageCopy speechTaskHint:hint completion:completionCopy];
  }

  else if (type == 2)
  {
    [(VMTranscriptionAssetModel *)self _installLIDAsset:completionCopy];
  }

  else
  {
    v12 = sub_100012200();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [NSNumber numberWithInteger:type];
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "VMTranscriptionAssetModel: invalid VMAssetModelType %@", buf, 0xCu);
    }

    v14 = [NSNumber numberWithInteger:type];
    v15 = [NSString stringWithFormat:@"invalid VMAssetModelType %@", v14];

    v16 = [NSError errorWithDomain:kVVErrorDomain code:5001 localizedDescription:v15];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v16);
    }
  }
}

- (void)performInstallAssetModel:(id)model isLID:(BOOL)d queue:(id)queue completion:(id)completion
{
  modelCopy = model;
  queueCopy = queue;
  completionCopy = completion;
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
  dCopy = d;
  block[4] = self;
  v20 = modelCopy;
  v21 = queueCopy;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = queueCopy;
  v18 = modelCopy;
  dispatch_async(queue, block);
}

- (void)performInstallAssetModelWithType:(int64_t)type speechTaskHint:(int64_t)hint language:(id)language queue:(id)queue completion:(id)completion
{
  languageCopy = language;
  queueCopy = queue;
  completionCopy = completion;
  v15 = sub_100012200();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"nil";
    if (languageCopy)
    {
      v16 = languageCopy;
    }

    *buf = 134218242;
    typeCopy = type;
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
  v22 = languageCopy;
  selfCopy = self;
  typeCopy2 = type;
  hintCopy = hint;
  v24 = queueCopy;
  v25 = completionCopy;
  v18 = completionCopy;
  v19 = queueCopy;
  v20 = languageCopy;
  dispatch_async(queue, v21);
}

@end