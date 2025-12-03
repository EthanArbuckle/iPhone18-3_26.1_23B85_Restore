@interface VMVoicemailTranscriptionController
- (BOOL)determinePersonlizedTranscriptionAvailability;
- (BOOL)isDictationModelInstalled;
- (BOOL)isInferredLanguage:(id)language;
- (BOOL)isLanguageIDModelInstalled;
- (BOOL)isSpeechAnalyzerTranscriptionModelInstalled:(id)installed;
- (BOOL)isSpeechAnalyzerTranscriptionModelInstalledForTaskHint:(id)hint taskHint:(int64_t)taskHint;
- (BOOL)isTranscribing;
- (BOOL)setTranscribingChanged:(BOOL)changed;
- (BOOL)transcriptionAssetModelProcessed;
- (BOOL)unsubscribeAssetConfig:(id)config;
- (BOOL)updateControllerWithLocale:(id)locale assetLocale:(id)assetLocale;
- (NSLocale)locale;
- (NSOperationQueue)speechAnalyzerOperationQueue;
- (NSOperationQueue)transcriptionOperationQueue;
- (NSProgress)transcriptionProgress;
- (VMSpeechRecognizer)speechRecognizer;
- (VMVoicemailTranscriptionController)init;
- (VMVoicemailTranscriptionController)initWithLocale:(id)locale;
- (VMVoicemailTranscriptionController)initWithSpeechRecognizer:(id)recognizer;
- (id)getSpeechAnalyzerAssetIDForLocale:(id)locale;
- (id)getSpeechAnalyzerAssetIDForLocaleWithTaskHint:(id)hint taskHint:(int64_t)taskHint;
- (id)getSpeechAssetSubscriptions;
- (id)getTranscriptionLocaleIdentifier;
- (void)addAssetModelNetworkObserver;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addTranscriptionOperation:(id)operation duration:(double)duration;
- (void)cancelQueuedTranscriptions;
- (void)dealloc;
- (void)manageSpeechAssetSubscriptions;
- (void)manageSpeechAssetSubscriptions_sync;
- (void)networkReachabilityChangedSync:(BOOL)sync;
- (void)notifyTranscriptionProgressFractionCompletedChanged:(double)changed;
- (void)notifyTranscriptionProgressTotalUnitCountChanged:(int64_t)changed;
- (void)notifyTranscriptionStatusChanged:(BOOL)changed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performAtomicAccessorBlock:(id)block;
- (void)performSynchronousBlock:(id)block;
- (void)removeAssetModelNetworkObserver;
- (void)removeDelegate:(id)delegate;
- (void)reportDictationProblemForFileAtURL:(id)l;
- (void)requestDatabaseSanitization;
- (void)requestLanguageIDModelInstallation;
- (void)requestLanguageIDModelOperationWithCompletion:(id)completion;
- (void)requestSpeechAssetModelInstallation:(id)installation;
- (void)requestTranscriptionAssetModelInstallation;
- (void)requestTranscriptionAssetModelOperationWithCompletion:(id)completion;
- (void)retrieveDictationResultForFileAtURL:(id)l queuePriority:(int64_t)priority duration:(double)duration transcriptionBeginCallback:(id)callback completion:(id)completion;
- (void)retrieveDictationResultWithLocaleForFileAtURL:(id)l locale:(id)locale profanityFilterOverride:(BOOL)override queuePriority:(int64_t)priority duration:(double)duration transcriptionBeginCallback:(id)callback completion:(id)completion;
- (void)retrieveLanguageIDResultForFileAtURL:(id)l queuePriority:(int64_t)priority completion:(id)completion;
- (void)setTranscriptionAssetModelProcessed:(BOOL)processed;
@end

@implementation VMVoicemailTranscriptionController

- (VMVoicemailTranscriptionController)init
{
  [(VMVoicemailTranscriptionController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMVoicemailTranscriptionController)initWithLocale:(id)locale
{
  localeCopy = locale;
  v5 = [[SFSpeechRecognizer alloc] initWithLocale:localeCopy];
  if (v5)
  {
    self = [(VMVoicemailTranscriptionController *)self initWithSpeechRecognizer:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v7 = selfCopy;

  return v7;
}

- (VMVoicemailTranscriptionController)initWithSpeechRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v45.receiver = self;
  v45.super_class = VMVoicemailTranscriptionController;
  v5 = [(VMVoicemailTranscriptionController *)&v45 init];
  if (v5)
  {
    v6 = sub_10005435C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138412802;
      v47 = v7;
      v48 = 2048;
      v49 = v5;
      v50 = 2112;
      v51 = recognizerCopy;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@ %p> Creating with Speech Recognizer %@", buf, 0x20u);
    }

    *(v5 + 2) = 0;
    locale = [recognizerCopy locale];
    v10 = *(v5 + 9);
    *(v5 + 9) = locale;

    v5[14] = [v5 determineGasrAvailability];
    v5[15] = [v5 determinePersonlizedTranscriptionAvailability];
    v11 = sub_10005435C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      localeIdentifier = [*(v5 + 9) localeIdentifier];
      languageCode = [*(v5 + 9) languageCode];
      languageIdentifier = [*(v5 + 9) languageIdentifier];
      v16 = v5[14];
      v17 = asNSStringBOOL();
      v18 = v5[15];
      v19 = asNSStringBOOL();
      *buf = 138413826;
      v47 = v12;
      v48 = 2048;
      v49 = v5;
      v50 = 2112;
      v51 = localeIdentifier;
      v52 = 2112;
      v53 = languageCode;
      v54 = 2112;
      v55 = languageIdentifier;
      v56 = 2112;
      v57 = v17;
      v58 = 2112;
      v59 = v19;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%@ %p> Speech locale %@, language %@, language identifier %@, GASR available: %@, pers transcription available: %@", buf, 0x48u);
    }

    v5[16] = 0;
    v20 = objc_opt_new();
    v21 = *(v5 + 10);
    *(v5 + 10) = v20;

    v22 = [NSBundle bundleForClass:objc_opt_class()];
    bundleIdentifier = [v22 bundleIdentifier];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [NSString stringWithFormat:@"%@.%@", bundleIdentifier, v25];
    v27 = NSStringFromSelector("serialDispatchQueue");
    v28 = [NSString stringWithFormat:@"%@.%@", v26, v27];

    v29 = v28;
    v30 = dispatch_queue_create([v28 UTF8String], 0);
    v31 = *(v5 + 12);
    *(v5 + 12) = v30;

    dispatch_queue_set_specific(*(v5 + 12), off_10010D3C0, v5, 0);
    v32 = +[NSMapTable weakToWeakObjectsMapTable];
    v33 = *(v5 + 13);
    *(v5 + 13) = v32;

    *(v5 + 6) = 1;
    v34 = objc_alloc_init(NSOperationQueue);
    v35 = *(v5 + 6);
    *(v5 + 6) = v34;

    [*(v5 + 6) setMaxConcurrentOperationCount:1];
    v36 = objc_alloc_init(NSOperationQueue);
    v37 = *(v5 + 8);
    *(v5 + 8) = v36;

    [*(v5 + 8) setMaxConcurrentOperationCount:1];
    v38 = [NSProgress progressWithTotalUnitCount:0];
    v39 = *(v5 + 7);
    *(v5 + 7) = v38;

    [*(v5 + 7) becomeCurrentWithPendingUnitCount:0];
    [*(v5 + 7) resignCurrent];
    v40 = *(v5 + 12);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000543A0;
    block[3] = &unk_1000EE260;
    v43 = v5;
    v44 = recognizerCopy;
    dispatch_async(v40, block);
  }

  return v5;
}

- (void)dealloc
{
  v3 = sub_10005435C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = objc_opt_class();
    v14 = 2048;
    selfCopy = self;
    v4 = v13;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<%@ %p> Deleting", buf, 0x16u);
  }

  [(VVMSharedNetworkObserver *)self->_networkObserver removeDelegate:self];
  [(NSOperationQueue *)self->_transcriptionOperationQueue cancelAllOperations];
  transcriptionOperationQueue = self->_transcriptionOperationQueue;
  v6 = NSStringFromSelector("operationCount");
  [(NSOperationQueue *)transcriptionOperationQueue removeObserver:self forKeyPath:v6 context:off_10010D3C8];

  [(NSOperationQueue *)self->_speechAnalyzerOperationQueue cancelAllOperations];
  transcriptionProgress = self->_transcriptionProgress;
  v8 = NSStringFromSelector("fractionCompleted");
  [(NSProgress *)transcriptionProgress removeObserver:self forKeyPath:v8 context:off_10010D3D0];

  v9 = self->_transcriptionProgress;
  v10 = NSStringFromSelector("totalUnitCount");
  [(NSProgress *)v9 removeObserver:self forKeyPath:v10 context:off_10010D3D8];

  v11.receiver = self;
  v11.super_class = VMVoicemailTranscriptionController;
  [(VMVoicemailTranscriptionController *)&v11 dealloc];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100054968;
  v9[3] = &unk_1000EE120;
  v9[4] = self;
  queueCopy = queue;
  v11 = delegateCopy;
  v7 = delegateCopy;
  v8 = queueCopy;
  [(VMVoicemailTranscriptionController *)self performAtomicAccessorBlock:v9];
}

- (void)removeDelegate:(id)delegate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100054A7C;
  v4[3] = &unk_1000EE260;
  selfCopy = self;
  delegateCopy = delegate;
  v3 = delegateCopy;
  [(VMVoicemailTranscriptionController *)selfCopy performAtomicAccessorBlock:v4];
}

- (id)getTranscriptionLocaleIdentifier
{
  locale = [(VMVoicemailTranscriptionController *)self locale];
  localeIdentifier = [locale localeIdentifier];

  return localeIdentifier;
}

- (BOOL)determinePersonlizedTranscriptionAvailability
{
  if (!_os_feature_enabled_impl() || ![(VMVoicemailTranscriptionController *)self isGasrModelAvailable])
  {
    return 0;
  }

  v3 = +[VMConfiguration VMPersonalizationSupportedLocales];
  matchedSystemLocale = [(VMVoicemailTranscriptionController *)self matchedSystemLocale];
  localeIdentifier = [matchedSystemLocale localeIdentifier];
  v6 = [v3 containsObject:localeIdentifier];

  return v6;
}

- (BOOL)unsubscribeAssetConfig:(id)config
{
  configCopy = config;
  v10 = 0;
  [SFSpeechAssetManager unsubscribeFromAssetWithConfig:configCopy clientIdentifier:@"com.apple.visualvoicemail" error:&v10];
  v4 = v10;
  v5 = sub_10005435C();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      language = [configCopy language];
      *buf = 138412546;
      v12 = language;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "unsubscribeAssetConfig: Failed unsubscribing to %@ error:%@.", buf, 0x16u);
    }
  }

  else if (v6)
  {
    language2 = [configCopy language];
    *buf = 138412290;
    v12 = language2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "unsubscribeAssetConfig: Unsubscribed to %@.", buf, 0xCu);
  }

  return v4 == 0;
}

- (id)getSpeechAssetSubscriptions
{
  v12 = [SFSpeechAssetManager subscriptionsForClientIdentifier:@"com.apple.visualvoicemail"];
  v2 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v12;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([v7 assetType] == 3 || objc_msgSend(v7, "assetType") == 7)
        {
          v8 = sub_10005435C();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            language = [v7 language];
            [v7 assetType];
            v10 = SFEntitledAssetTypeToString();
            *buf = 138412546;
            v18 = language;
            v19 = 2112;
            v20 = v10;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "getSpeechAssetSubscriptions: language %@ assetType %@", buf, 0x16u);
          }

          [v2 addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }

  return v2;
}

- (BOOL)isInferredLanguage:(id)language
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100055150;
  v6[3] = &unk_1000EEBD0;
  languageCopy = language;
  v8 = &v9;
  v6[4] = self;
  v4 = languageCopy;
  [(VMVoicemailTranscriptionController *)self performSynchronousBlock:v6];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

- (BOOL)updateControllerWithLocale:(id)locale assetLocale:(id)assetLocale
{
  localeCopy = locale;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000552E8;
  v10[3] = &unk_1000EEBF8;
  v10[4] = self;
  assetLocaleCopy = assetLocale;
  v12 = localeCopy;
  v13 = &v14;
  v7 = localeCopy;
  v8 = assetLocaleCopy;
  [(VMVoicemailTranscriptionController *)self performSynchronousBlock:v10];
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (void)manageSpeechAssetSubscriptions
{
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005540C;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

- (void)manageSpeechAssetSubscriptions_sync
{
  assetMgmtController = [(VMVoicemailTranscriptionController *)self assetMgmtController];
  getAssetFreqMap = [assetMgmtController getAssetFreqMap];

  getSpeechAssetSubscriptions = [(VMVoicemailTranscriptionController *)self getSpeechAssetSubscriptions];
  v3 = sub_10005435C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = [getSpeechAssetSubscriptions count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "manageSpeechAssetSubscriptions: # of subscriptions %lu.", buf, 0xCu);
  }

  v28 = [getSpeechAssetSubscriptions count];
  if (v28 >= 5)
  {
    if ([(VMVoicemailTranscriptionController *)self isPersTranscriptionAvailable])
    {
      v4 = 1;
      do
      {
        v30 = v4;
        v29 = [getSpeechAssetSubscriptions objectAtIndexedSubscript:?];
        language = [v29 language];
        v6 = [getAssetFreqMap objectForKeyedSubscript:language];
        if (v6)
        {
          language2 = [v29 language];
          v8 = [getAssetFreqMap objectForKeyedSubscript:language2];
          intValue = [v8 intValue];
        }

        else
        {
          intValue = 0;
        }

        v9 = v30;
        while (1)
        {
          v10 = v9 - 1;
          v11 = [getSpeechAssetSubscriptions objectAtIndexedSubscript:(v9 - 1)];
          language3 = [v11 language];
          v13 = [getAssetFreqMap objectForKeyedSubscript:language3];
          if (v13)
          {
            v14 = [getSpeechAssetSubscriptions objectAtIndexedSubscript:(v9 - 1)];
            language4 = [v14 language];
            v16 = [getAssetFreqMap objectForKeyedSubscript:language4];
            intValue2 = [v16 intValue];
          }

          else
          {
            intValue2 = 0;
          }

          if (intValue2 <= intValue)
          {
            break;
          }

          v18 = [getSpeechAssetSubscriptions objectAtIndexedSubscript:(v9 - 1)];
          [getSpeechAssetSubscriptions replaceObjectAtIndex:v9 withObject:v18];

          --v9;
          if (v10 + 1 <= 1)
          {
            LODWORD(v9) = 0;
            break;
          }
        }

        [getSpeechAssetSubscriptions replaceObjectAtIndex:v9 withObject:v29];

        v4 = v30 + 1;
      }

      while (v30 + 1 != (v28 & 0x7FFFFFFF));
    }

    v19 = [(VMVoicemailTranscriptionController *)self getSpeechAnalyzerAssetIDForLocale:self->_matchedSystemLocale];
    v20 = 0;
    do
    {
      if ([getSpeechAssetSubscriptions count] <= v20)
      {
        break;
      }

      v21 = [getSpeechAssetSubscriptions objectAtIndexedSubscript:v20];
      language5 = [v21 language];
      v23 = [language5 isEqualToString:v19];

      if (v23)
      {
        v24 = v28;
      }

      else
      {
        v25 = [getSpeechAssetSubscriptions objectAtIndexedSubscript:v20];
        v26 = [(VMVoicemailTranscriptionController *)self unsubscribeAssetConfig:v25];

        v24 = (v28 - v26);
      }

      ++v20;
      v28 = v24;
    }

    while (v24 != 4);
  }
}

- (void)reportDictationProblemForFileAtURL:(id)l
{
  lCopy = l;
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005596C;
  v7[3] = &unk_1000EE260;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  dispatch_async(serialDispatchQueue, v7);
}

- (void)retrieveDictationResultForFileAtURL:(id)l queuePriority:(int64_t)priority duration:(double)duration transcriptionBeginCallback:(id)callback completion:(id)completion
{
  lCopy = l;
  callbackCopy = callback;
  completionCopy = completion;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100055C14;
  v28[3] = &unk_1000EEC20;
  v28[4] = self;
  v15 = lCopy;
  v29 = v15;
  priorityCopy = priority;
  durationCopy = duration;
  v16 = completionCopy;
  v30 = v16;
  v31 = callbackCopy;
  v17 = callbackCopy;
  v18 = objc_retainBlock(v28);
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100055D10;
  v23[3] = &unk_1000EEC70;
  v24 = v15;
  selfCopy = self;
  v26 = v18;
  v27 = v16;
  v20 = v16;
  v21 = v18;
  v22 = v15;
  dispatch_async(serialDispatchQueue, v23);
}

- (void)retrieveLanguageIDResultForFileAtURL:(id)l queuePriority:(int64_t)priority completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100056328;
  v22[3] = &unk_1000EEC98;
  v10 = lCopy;
  v23 = v10;
  priorityCopy = priority;
  v11 = completionCopy;
  selfCopy = self;
  v25 = v11;
  v12 = objc_retainBlock(v22);
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000563CC;
  v17[3] = &unk_1000EEC70;
  v18 = v10;
  selfCopy2 = self;
  v20 = v12;
  v21 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_async(serialDispatchQueue, v17);
}

- (void)retrieveDictationResultWithLocaleForFileAtURL:(id)l locale:(id)locale profanityFilterOverride:(BOOL)override queuePriority:(int64_t)priority duration:(double)duration transcriptionBeginCallback:(id)callback completion:(id)completion
{
  lCopy = l;
  localeCopy = locale;
  callbackCopy = callback;
  completionCopy = completion;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = [VMConfiguration getVMLocaleSpeechAssetTypeforLocale:localeCopy gasrEnabled:[(VMVoicemailTranscriptionController *)self isGasrModelAvailable]];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100056ACC;
  v37[3] = &unk_1000EECE8;
  v19 = localeCopy;
  v38 = v19;
  v43 = v47;
  v20 = lCopy;
  v39 = v20;
  selfCopy = self;
  overrideCopy = override;
  priorityCopy = priority;
  v21 = completionCopy;
  v41 = v21;
  v22 = callbackCopy;
  v42 = v22;
  durationCopy = duration;
  v23 = objc_retainBlock(v37);
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056BDC;
  block[3] = &unk_1000EED38;
  v31 = v20;
  v32 = v19;
  selfCopy2 = self;
  v34 = v21;
  v35 = v23;
  v36 = v47;
  v25 = v23;
  v26 = v21;
  v27 = v19;
  v28 = v20;
  dispatch_async(serialDispatchQueue, block);

  _Block_object_dispose(v47, 8);
}

- (void)addTranscriptionOperation:(id)operation duration:(double)duration
{
  operationCopy = operation;
  v7 = sub_10005435C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = objc_opt_class();
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = operationCopy;
    v19 = 2048;
    durationCopy = duration;
    v8 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@ %p> Adding transcription operation %@, duration %lu", &v13, 0x2Au);
  }

  transcriptionProgress = [(VMVoicemailTranscriptionController *)self transcriptionProgress];
  [transcriptionProgress setTotalUnitCount:{(objc_msgSend(transcriptionProgress, "totalUnitCount") + duration)}];

  transcriptionProgress2 = [(VMVoicemailTranscriptionController *)self transcriptionProgress];
  progress = [operationCopy progress];
  [transcriptionProgress2 addChild:progress withPendingUnitCount:duration];

  transcriptionOperationQueue = [(VMVoicemailTranscriptionController *)self transcriptionOperationQueue];
  [transcriptionOperationQueue addOperation:operationCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  changeCopy = change;
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005761C;
  v14[3] = &unk_1000EED60;
  v15 = changeCopy;
  selfCopy = self;
  v17 = objectCopy;
  contextCopy = context;
  v12 = objectCopy;
  v13 = changeCopy;
  dispatch_async(serialDispatchQueue, v14);
}

- (void)notifyTranscriptionStatusChanged:(BOOL)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100057BBC;
  v3[3] = &unk_1000ED8D8;
  v3[4] = self;
  changedCopy = changed;
  [(VMVoicemailTranscriptionController *)self performAtomicAccessorBlock:v3];
}

- (void)notifyTranscriptionProgressFractionCompletedChanged:(double)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100057E60;
  v3[3] = &unk_1000EE4D8;
  v3[4] = self;
  *&v3[5] = changed;
  [(VMVoicemailTranscriptionController *)self performAtomicAccessorBlock:v3];
}

- (void)notifyTranscriptionProgressTotalUnitCountChanged:(int64_t)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100058100;
  v3[3] = &unk_1000EE4D8;
  v3[4] = self;
  v3[5] = changed;
  [(VMVoicemailTranscriptionController *)self performAtomicAccessorBlock:v3];
}

- (BOOL)isDictationModelInstalled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000583E8;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailTranscriptionController *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isLanguageIDModelInstalled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100058724;
  v4[3] = &unk_1000EED88;
  v4[4] = &v5;
  [(VMVoicemailTranscriptionController *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)setTranscribingChanged:(BOOL)changed
{
  changedCopy = changed;
  os_unfair_lock_lock(&self->lock);
  transcribing = self->_transcribing;
  if (transcribing != changedCopy)
  {
    self->_transcribing = changedCopy;
  }

  v6 = transcribing != changedCopy;
  os_unfair_lock_unlock(&self->lock);
  return v6;
}

- (BOOL)isTranscribing
{
  os_unfair_lock_lock(&self->lock);
  transcribing = self->_transcribing;
  os_unfair_lock_unlock(&self->lock);
  return transcribing;
}

- (void)cancelQueuedTranscriptions
{
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005886C;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

- (BOOL)transcriptionAssetModelProcessed
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000589AC;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailTranscriptionController *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setTranscriptionAssetModelProcessed:(BOOL)processed
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100058B70;
  v7[3] = &unk_1000EEDB0;
  processedCopy = processed;
  v7[4] = self;
  v7[5] = &v9;
  [(VMVoicemailTranscriptionController *)self performAtomicAccessorBlock:v7];
  if (*(v10 + 24) == 1)
  {
    v4 = sub_10005435C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = asNSStringBOOL();
      *buf = 138412802;
      v14 = v5;
      v15 = 2048;
      selfCopy = self;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<%@ %p> transcriptionAssetModelProcessed changed to %@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v9, 8);
}

- (void)requestTranscriptionAssetModelInstallation
{
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058C24;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

- (void)requestLanguageIDModelInstallation
{
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058F54;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

- (void)requestSpeechAssetModelInstallation:(id)installation
{
  installationCopy = installation;
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100059218;
  v7[3] = &unk_1000EE260;
  v8 = installationCopy;
  selfCopy = self;
  v6 = installationCopy;
  dispatch_async(serialDispatchQueue, v7);
}

- (void)requestDatabaseSanitization
{
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059654;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

- (id)getSpeechAnalyzerAssetIDForLocale:(id)locale
{
  localeCopy = locale;
  v5 = [(VMVoicemailTranscriptionController *)self getSpeechAnalyzerAssetIDForLocaleWithTaskHint:localeCopy taskHint:[VMConfiguration getVMLocaleSpeechAssetTypeforLocale:localeCopy gasrEnabled:[(VMVoicemailTranscriptionController *)self isGasrModelAvailable]]];

  return v5;
}

- (id)getSpeechAnalyzerAssetIDForLocaleWithTaskHint:(id)hint taskHint:(int64_t)taskHint
{
  hintCopy = hint;
  v6 = hintCopy;
  if (kVM_GASRTaskHint == taskHint)
  {
    localeIdentifier = [SFSpeechAssetManager generalASRLanguageForLocale:hintCopy];
LABEL_5:
    v8 = localeIdentifier;
    goto LABEL_7;
  }

  if (kVM_NGASRTaskHint == taskHint)
  {
    localeIdentifier = [hintCopy localeIdentifier];
    goto LABEL_5;
  }

  v8 = &stru_1000F0098;
LABEL_7:

  return v8;
}

- (BOOL)isSpeechAnalyzerTranscriptionModelInstalled:(id)installed
{
  installedCopy = installed;
  v5 = [VMConfiguration getVMLocaleSpeechAssetTypeforLocale:installedCopy gasrEnabled:[(VMVoicemailTranscriptionController *)self isGasrModelAvailable]];
  if (v5 == kVM_GASRTaskHint || v5 == kVM_NGASRTaskHint)
  {
    v7 = [(VMVoicemailTranscriptionController *)self isSpeechAnalyzerTranscriptionModelInstalledForTaskHint:installedCopy taskHint:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isSpeechAnalyzerTranscriptionModelInstalledForTaskHint:(id)hint taskHint:(int64_t)taskHint
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100059A2C;
  v8[3] = &unk_1000EEE28;
  selfCopy = self;
  hintCopy = hint;
  v11 = &v13;
  taskHintCopy = taskHint;
  v5 = hintCopy;
  [(VMVoicemailTranscriptionController *)selfCopy performSynchronousBlock:v8];
  v6 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v6;
}

- (NSLocale)locale
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100059BD8;
  v9 = sub_100059BE8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100059BF0;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailTranscriptionController *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (VMSpeechRecognizer)speechRecognizer
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100059BD8;
  v9 = sub_100059BE8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100059D0C;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailTranscriptionController *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSOperationQueue)transcriptionOperationQueue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100059BD8;
  v9 = sub_100059BE8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100059E28;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailTranscriptionController *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSOperationQueue)speechAnalyzerOperationQueue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100059BD8;
  v9 = sub_100059BE8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100059F44;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailTranscriptionController *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSProgress)transcriptionProgress
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100059BD8;
  v9 = sub_100059BE8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005A060;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VMVoicemailTranscriptionController *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)removeAssetModelNetworkObserver
{
  v3 = sub_10005435C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = objc_opt_class();
    v7 = 2048;
    selfCopy = self;
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<%@ %p> Removing asset model network observer", &v5, 0x16u);
  }

  [(VMVoicemailTranscriptionController *)self setTranscriptionAssetModelObservingNetwork:0];
}

- (void)addAssetModelNetworkObserver
{
  v3 = sub_10005435C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = objc_opt_class();
    v7 = 2048;
    selfCopy = self;
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<%@ %p> Adding asset model network observer", &v5, 0x16u);
  }

  [(VMVoicemailTranscriptionController *)self setTranscriptionAssetModelObservingNetwork:1];
}

- (void)networkReachabilityChangedSync:(BOOL)sync
{
  syncCopy = sync;
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v6 = sub_10005435C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (syncCopy)
    {
      v7 = @"YES";
    }

    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Network reachability changed to: %@", &v13, 0xCu);
  }

  if (syncCopy)
  {
    v8 = sub_10005435C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [(VMVoicemailTranscriptionController *)self transcriptionAssetModelObservingNetwork];
      v9 = asNSStringBOOL();
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Network asset model observer available: %@", &v13, 0xCu);
    }

    if ([(VMVoicemailTranscriptionController *)self transcriptionAssetModelProcessed])
    {
      v10 = sub_10005435C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v13 = 138412546;
        v14 = v11;
        v15 = 2048;
        selfCopy = self;
        v12 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@ %p> Request to install Transcription model is already completed, execution not required.", &v13, 0x16u);
      }
    }

    else
    {
      [(VMVoicemailTranscriptionController *)self requestTranscriptionAssetModelInstallation];
    }
  }
}

- (void)requestTranscriptionAssetModelOperationWithCompletion:(id)completion
{
  completionCopy = completion;
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v6 = sub_10005435C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initiating request to install asset model.", buf, 2u);
  }

  networkObserver = [(VMVoicemailTranscriptionController *)self networkObserver];
  isNetworkReachable = [networkObserver isNetworkReachable];

  if (isNetworkReachable)
  {
    [(VMVoicemailTranscriptionController *)self removeAssetModelNetworkObserver];
    assetModel = [(VMVoicemailTranscriptionController *)self assetModel];
    speechRecognizer = [(VMVoicemailTranscriptionController *)self speechRecognizer];
    serialDispatchQueue2 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005A674;
    v13[3] = &unk_1000EEE50;
    v14 = completionCopy;
    [assetModel performInstallAssetModel:speechRecognizer isLID:0 queue:serialDispatchQueue2 completion:v13];
  }

  else
  {
    v12 = sub_10005435C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Suspending request for asset model operation due to network being unreachable.", buf, 2u);
    }

    [(VMVoicemailTranscriptionController *)self addAssetModelNetworkObserver];
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)requestLanguageIDModelOperationWithCompletion:(id)completion
{
  completionCopy = completion;
  serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v6 = sub_10005435C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initiating request to install Language ID model.", buf, 2u);
  }

  networkObserver = [(VMVoicemailTranscriptionController *)self networkObserver];
  isNetworkReachable = [networkObserver isNetworkReachable];

  if (isNetworkReachable)
  {
    [(VMVoicemailTranscriptionController *)self removeAssetModelNetworkObserver];
    assetModel = [(VMVoicemailTranscriptionController *)self assetModel];
    speechRecognizer = [(VMVoicemailTranscriptionController *)self speechRecognizer];
    serialDispatchQueue2 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
    [assetModel performInstallAssetModel:speechRecognizer isLID:1 queue:serialDispatchQueue2 completion:completionCopy];
  }

  else
  {
    v12 = sub_10005435C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Suspending request for transcriptionAssetModel operation due to network being unreachable.", v13, 2u);
    }

    [(VMVoicemailTranscriptionController *)self addAssetModelNetworkObserver];
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)performSynchronousBlock:(id)block
{
  block = block;
  if (dispatch_get_specific(off_10010D3C0) == self)
  {
    block[2]();
  }

  else
  {
    serialDispatchQueue = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
    dispatch_sync(serialDispatchQueue, block);
  }
}

- (void)performAtomicAccessorBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock_with_options();
    blockCopy[2]();
    os_unfair_lock_unlock(&self->lock);
  }

  else
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"VMVoicemailTranscriptionController.mm" lineNumber:873 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }
}

@end