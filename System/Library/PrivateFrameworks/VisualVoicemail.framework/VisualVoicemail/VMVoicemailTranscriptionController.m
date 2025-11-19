@interface VMVoicemailTranscriptionController
- (BOOL)determinePersonlizedTranscriptionAvailability;
- (BOOL)isDictationModelInstalled;
- (BOOL)isInferredLanguage:(id)a3;
- (BOOL)isLanguageIDModelInstalled;
- (BOOL)isSpeechAnalyzerTranscriptionModelInstalled:(id)a3;
- (BOOL)isSpeechAnalyzerTranscriptionModelInstalledForTaskHint:(id)a3 taskHint:(int64_t)a4;
- (BOOL)isTranscribing;
- (BOOL)setTranscribingChanged:(BOOL)a3;
- (BOOL)transcriptionAssetModelProcessed;
- (BOOL)unsubscribeAssetConfig:(id)a3;
- (BOOL)updateControllerWithLocale:(id)a3 assetLocale:(id)a4;
- (NSLocale)locale;
- (NSOperationQueue)speechAnalyzerOperationQueue;
- (NSOperationQueue)transcriptionOperationQueue;
- (NSProgress)transcriptionProgress;
- (VMSpeechRecognizer)speechRecognizer;
- (VMVoicemailTranscriptionController)init;
- (VMVoicemailTranscriptionController)initWithLocale:(id)a3;
- (VMVoicemailTranscriptionController)initWithSpeechRecognizer:(id)a3;
- (id)getSpeechAnalyzerAssetIDForLocale:(id)a3;
- (id)getSpeechAnalyzerAssetIDForLocaleWithTaskHint:(id)a3 taskHint:(int64_t)a4;
- (id)getSpeechAssetSubscriptions;
- (id)getTranscriptionLocaleIdentifier;
- (void)addAssetModelNetworkObserver;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)addTranscriptionOperation:(id)a3 duration:(double)a4;
- (void)cancelQueuedTranscriptions;
- (void)dealloc;
- (void)manageSpeechAssetSubscriptions;
- (void)manageSpeechAssetSubscriptions_sync;
- (void)networkReachabilityChangedSync:(BOOL)a3;
- (void)notifyTranscriptionProgressFractionCompletedChanged:(double)a3;
- (void)notifyTranscriptionProgressTotalUnitCountChanged:(int64_t)a3;
- (void)notifyTranscriptionStatusChanged:(BOOL)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performAtomicAccessorBlock:(id)a3;
- (void)performSynchronousBlock:(id)a3;
- (void)removeAssetModelNetworkObserver;
- (void)removeDelegate:(id)a3;
- (void)reportDictationProblemForFileAtURL:(id)a3;
- (void)requestDatabaseSanitization;
- (void)requestLanguageIDModelInstallation;
- (void)requestLanguageIDModelOperationWithCompletion:(id)a3;
- (void)requestSpeechAssetModelInstallation:(id)a3;
- (void)requestTranscriptionAssetModelInstallation;
- (void)requestTranscriptionAssetModelOperationWithCompletion:(id)a3;
- (void)retrieveDictationResultForFileAtURL:(id)a3 queuePriority:(int64_t)a4 duration:(double)a5 transcriptionBeginCallback:(id)a6 completion:(id)a7;
- (void)retrieveDictationResultWithLocaleForFileAtURL:(id)a3 locale:(id)a4 profanityFilterOverride:(BOOL)a5 queuePriority:(int64_t)a6 duration:(double)a7 transcriptionBeginCallback:(id)a8 completion:(id)a9;
- (void)retrieveLanguageIDResultForFileAtURL:(id)a3 queuePriority:(int64_t)a4 completion:(id)a5;
- (void)setTranscriptionAssetModelProcessed:(BOOL)a3;
@end

@implementation VMVoicemailTranscriptionController

- (VMVoicemailTranscriptionController)init
{
  [(VMVoicemailTranscriptionController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMVoicemailTranscriptionController)initWithLocale:(id)a3
{
  v4 = a3;
  v5 = [[SFSpeechRecognizer alloc] initWithLocale:v4];
  if (v5)
  {
    self = [(VMVoicemailTranscriptionController *)self initWithSpeechRecognizer:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

- (VMVoicemailTranscriptionController)initWithSpeechRecognizer:(id)a3
{
  v4 = a3;
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
      v51 = v4;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@ %p> Creating with Speech Recognizer %@", buf, 0x20u);
    }

    *(v5 + 2) = 0;
    v9 = [v4 locale];
    v10 = *(v5 + 9);
    *(v5 + 9) = v9;

    v5[14] = [v5 determineGasrAvailability];
    v5[15] = [v5 determinePersonlizedTranscriptionAvailability];
    v11 = sub_10005435C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = [*(v5 + 9) localeIdentifier];
      v14 = [*(v5 + 9) languageCode];
      v15 = [*(v5 + 9) languageIdentifier];
      v16 = v5[14];
      v17 = asNSStringBOOL();
      v18 = v5[15];
      v19 = asNSStringBOOL();
      *buf = 138413826;
      v47 = v12;
      v48 = 2048;
      v49 = v5;
      v50 = 2112;
      v51 = v13;
      v52 = 2112;
      v53 = v14;
      v54 = 2112;
      v55 = v15;
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
    v23 = [v22 bundleIdentifier];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [NSString stringWithFormat:@"%@.%@", v23, v25];
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
    v44 = v4;
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
    v15 = self;
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

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100054968;
  v9[3] = &unk_1000EE120;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(VMVoicemailTranscriptionController *)self performAtomicAccessorBlock:v9];
}

- (void)removeDelegate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100054A7C;
  v4[3] = &unk_1000EE260;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VMVoicemailTranscriptionController *)v5 performAtomicAccessorBlock:v4];
}

- (id)getTranscriptionLocaleIdentifier
{
  v2 = [(VMVoicemailTranscriptionController *)self locale];
  v3 = [v2 localeIdentifier];

  return v3;
}

- (BOOL)determinePersonlizedTranscriptionAvailability
{
  if (!_os_feature_enabled_impl() || ![(VMVoicemailTranscriptionController *)self isGasrModelAvailable])
  {
    return 0;
  }

  v3 = +[VMConfiguration VMPersonalizationSupportedLocales];
  v4 = [(VMVoicemailTranscriptionController *)self matchedSystemLocale];
  v5 = [v4 localeIdentifier];
  v6 = [v3 containsObject:v5];

  return v6;
}

- (BOOL)unsubscribeAssetConfig:(id)a3
{
  v3 = a3;
  v10 = 0;
  [SFSpeechAssetManager unsubscribeFromAssetWithConfig:v3 clientIdentifier:@"com.apple.visualvoicemail" error:&v10];
  v4 = v10;
  v5 = sub_10005435C();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [v3 language];
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "unsubscribeAssetConfig: Failed unsubscribing to %@ error:%@.", buf, 0x16u);
    }
  }

  else if (v6)
  {
    v8 = [v3 language];
    *buf = 138412290;
    v12 = v8;
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
            v9 = [v7 language];
            [v7 assetType];
            v10 = SFEntitledAssetTypeToString();
            *buf = 138412546;
            v18 = v9;
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

- (BOOL)isInferredLanguage:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100055150;
  v6[3] = &unk_1000EEBD0;
  v7 = a3;
  v8 = &v9;
  v6[4] = self;
  v4 = v7;
  [(VMVoicemailTranscriptionController *)self performSynchronousBlock:v6];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

- (BOOL)updateControllerWithLocale:(id)a3 assetLocale:(id)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000552E8;
  v10[3] = &unk_1000EEBF8;
  v10[4] = self;
  v11 = a4;
  v12 = v6;
  v13 = &v14;
  v7 = v6;
  v8 = v11;
  [(VMVoicemailTranscriptionController *)self performSynchronousBlock:v10];
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (void)manageSpeechAssetSubscriptions
{
  v3 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005540C;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)manageSpeechAssetSubscriptions_sync
{
  v2 = [(VMVoicemailTranscriptionController *)self assetMgmtController];
  v32 = [v2 getAssetFreqMap];

  v33 = [(VMVoicemailTranscriptionController *)self getSpeechAssetSubscriptions];
  v3 = sub_10005435C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = [v33 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "manageSpeechAssetSubscriptions: # of subscriptions %lu.", buf, 0xCu);
  }

  v28 = [v33 count];
  if (v28 >= 5)
  {
    if ([(VMVoicemailTranscriptionController *)self isPersTranscriptionAvailable])
    {
      v4 = 1;
      do
      {
        v30 = v4;
        v29 = [v33 objectAtIndexedSubscript:?];
        v5 = [v29 language];
        v6 = [v32 objectForKeyedSubscript:v5];
        if (v6)
        {
          v7 = [v29 language];
          v8 = [v32 objectForKeyedSubscript:v7];
          v31 = [v8 intValue];
        }

        else
        {
          v31 = 0;
        }

        v9 = v30;
        while (1)
        {
          v10 = v9 - 1;
          v11 = [v33 objectAtIndexedSubscript:(v9 - 1)];
          v12 = [v11 language];
          v13 = [v32 objectForKeyedSubscript:v12];
          if (v13)
          {
            v14 = [v33 objectAtIndexedSubscript:(v9 - 1)];
            v15 = [v14 language];
            v16 = [v32 objectForKeyedSubscript:v15];
            v17 = [v16 intValue];
          }

          else
          {
            v17 = 0;
          }

          if (v17 <= v31)
          {
            break;
          }

          v18 = [v33 objectAtIndexedSubscript:(v9 - 1)];
          [v33 replaceObjectAtIndex:v9 withObject:v18];

          --v9;
          if (v10 + 1 <= 1)
          {
            LODWORD(v9) = 0;
            break;
          }
        }

        [v33 replaceObjectAtIndex:v9 withObject:v29];

        v4 = v30 + 1;
      }

      while (v30 + 1 != (v28 & 0x7FFFFFFF));
    }

    v19 = [(VMVoicemailTranscriptionController *)self getSpeechAnalyzerAssetIDForLocale:self->_matchedSystemLocale];
    v20 = 0;
    do
    {
      if ([v33 count] <= v20)
      {
        break;
      }

      v21 = [v33 objectAtIndexedSubscript:v20];
      v22 = [v21 language];
      v23 = [v22 isEqualToString:v19];

      if (v23)
      {
        v24 = v28;
      }

      else
      {
        v25 = [v33 objectAtIndexedSubscript:v20];
        v26 = [(VMVoicemailTranscriptionController *)self unsubscribeAssetConfig:v25];

        v24 = (v28 - v26);
      }

      ++v20;
      v28 = v24;
    }

    while (v24 != 4);
  }
}

- (void)reportDictationProblemForFileAtURL:(id)a3
{
  v4 = a3;
  v5 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005596C;
  v7[3] = &unk_1000EE260;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)retrieveDictationResultForFileAtURL:(id)a3 queuePriority:(int64_t)a4 duration:(double)a5 transcriptionBeginCallback:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100055C14;
  v28[3] = &unk_1000EEC20;
  v28[4] = self;
  v15 = v12;
  v29 = v15;
  v32 = a4;
  v33 = a5;
  v16 = v14;
  v30 = v16;
  v31 = v13;
  v17 = v13;
  v18 = objc_retainBlock(v28);
  v19 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100055D10;
  v23[3] = &unk_1000EEC70;
  v24 = v15;
  v25 = self;
  v26 = v18;
  v27 = v16;
  v20 = v16;
  v21 = v18;
  v22 = v15;
  dispatch_async(v19, v23);
}

- (void)retrieveLanguageIDResultForFileAtURL:(id)a3 queuePriority:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100056328;
  v22[3] = &unk_1000EEC98;
  v10 = v8;
  v23 = v10;
  v26 = a4;
  v11 = v9;
  v24 = self;
  v25 = v11;
  v12 = objc_retainBlock(v22);
  v13 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000563CC;
  v17[3] = &unk_1000EEC70;
  v18 = v10;
  v19 = self;
  v20 = v12;
  v21 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_async(v13, v17);
}

- (void)retrieveDictationResultWithLocaleForFileAtURL:(id)a3 locale:(id)a4 profanityFilterOverride:(BOOL)a5 queuePriority:(int64_t)a6 duration:(double)a7 transcriptionBeginCallback:(id)a8 completion:(id)a9
{
  v16 = a3;
  v17 = a4;
  v29 = a8;
  v18 = a9;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = [VMConfiguration getVMLocaleSpeechAssetTypeforLocale:v17 gasrEnabled:[(VMVoicemailTranscriptionController *)self isGasrModelAvailable]];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100056ACC;
  v37[3] = &unk_1000EECE8;
  v19 = v17;
  v38 = v19;
  v43 = v47;
  v20 = v16;
  v39 = v20;
  v40 = self;
  v46 = a5;
  v44 = a6;
  v21 = v18;
  v41 = v21;
  v22 = v29;
  v42 = v22;
  v45 = a7;
  v23 = objc_retainBlock(v37);
  v24 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056BDC;
  block[3] = &unk_1000EED38;
  v31 = v20;
  v32 = v19;
  v33 = self;
  v34 = v21;
  v35 = v23;
  v36 = v47;
  v25 = v23;
  v26 = v21;
  v27 = v19;
  v28 = v20;
  dispatch_async(v24, block);

  _Block_object_dispose(v47, 8);
}

- (void)addTranscriptionOperation:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = sub_10005435C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = objc_opt_class();
    v15 = 2048;
    v16 = self;
    v17 = 2112;
    v18 = v6;
    v19 = 2048;
    v20 = a4;
    v8 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@ %p> Adding transcription operation %@, duration %lu", &v13, 0x2Au);
  }

  v9 = [(VMVoicemailTranscriptionController *)self transcriptionProgress];
  [v9 setTotalUnitCount:{(objc_msgSend(v9, "totalUnitCount") + a4)}];

  v10 = [(VMVoicemailTranscriptionController *)self transcriptionProgress];
  v11 = [v6 progress];
  [v10 addChild:v11 withPendingUnitCount:a4];

  v12 = [(VMVoicemailTranscriptionController *)self transcriptionOperationQueue];
  [v12 addOperation:v6];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005761C;
  v14[3] = &unk_1000EED60;
  v15 = v10;
  v16 = self;
  v17 = v9;
  v18 = a6;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, v14);
}

- (void)notifyTranscriptionStatusChanged:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100057BBC;
  v3[3] = &unk_1000ED8D8;
  v3[4] = self;
  v4 = a3;
  [(VMVoicemailTranscriptionController *)self performAtomicAccessorBlock:v3];
}

- (void)notifyTranscriptionProgressFractionCompletedChanged:(double)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100057E60;
  v3[3] = &unk_1000EE4D8;
  v3[4] = self;
  *&v3[5] = a3;
  [(VMVoicemailTranscriptionController *)self performAtomicAccessorBlock:v3];
}

- (void)notifyTranscriptionProgressTotalUnitCountChanged:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100058100;
  v3[3] = &unk_1000EE4D8;
  v3[4] = self;
  v3[5] = a3;
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

- (BOOL)setTranscribingChanged:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->lock);
  transcribing = self->_transcribing;
  if (transcribing != v3)
  {
    self->_transcribing = v3;
  }

  v6 = transcribing != v3;
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
  v3 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005886C;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(v3, block);
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

- (void)setTranscriptionAssetModelProcessed:(BOOL)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100058B70;
  v7[3] = &unk_1000EEDB0;
  v8 = a3;
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
      v16 = self;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<%@ %p> transcriptionAssetModelProcessed changed to %@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v9, 8);
}

- (void)requestTranscriptionAssetModelInstallation
{
  v3 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058C24;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)requestLanguageIDModelInstallation
{
  v3 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058F54;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)requestSpeechAssetModelInstallation:(id)a3
{
  v4 = a3;
  v5 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100059218;
  v7[3] = &unk_1000EE260;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)requestDatabaseSanitization
{
  v3 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059654;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)getSpeechAnalyzerAssetIDForLocale:(id)a3
{
  v4 = a3;
  v5 = [(VMVoicemailTranscriptionController *)self getSpeechAnalyzerAssetIDForLocaleWithTaskHint:v4 taskHint:[VMConfiguration getVMLocaleSpeechAssetTypeforLocale:v4 gasrEnabled:[(VMVoicemailTranscriptionController *)self isGasrModelAvailable]]];

  return v5;
}

- (id)getSpeechAnalyzerAssetIDForLocaleWithTaskHint:(id)a3 taskHint:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (kVM_GASRTaskHint == a4)
  {
    v7 = [SFSpeechAssetManager generalASRLanguageForLocale:v5];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  if (kVM_NGASRTaskHint == a4)
  {
    v7 = [v5 localeIdentifier];
    goto LABEL_5;
  }

  v8 = &stru_1000F0098;
LABEL_7:

  return v8;
}

- (BOOL)isSpeechAnalyzerTranscriptionModelInstalled:(id)a3
{
  v4 = a3;
  v5 = [VMConfiguration getVMLocaleSpeechAssetTypeforLocale:v4 gasrEnabled:[(VMVoicemailTranscriptionController *)self isGasrModelAvailable]];
  if (v5 == kVM_GASRTaskHint || v5 == kVM_NGASRTaskHint)
  {
    v7 = [(VMVoicemailTranscriptionController *)self isSpeechAnalyzerTranscriptionModelInstalledForTaskHint:v4 taskHint:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isSpeechAnalyzerTranscriptionModelInstalledForTaskHint:(id)a3 taskHint:(int64_t)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100059A2C;
  v8[3] = &unk_1000EEE28;
  v9 = self;
  v10 = a3;
  v11 = &v13;
  v12 = a4;
  v5 = v10;
  [(VMVoicemailTranscriptionController *)v9 performSynchronousBlock:v8];
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
    v8 = self;
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
    v8 = self;
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<%@ %p> Adding asset model network observer", &v5, 0x16u);
  }

  [(VMVoicemailTranscriptionController *)self setTranscriptionAssetModelObservingNetwork:1];
}

- (void)networkReachabilityChangedSync:(BOOL)a3
{
  v3 = a3;
  v5 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_10005435C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Network reachability changed to: %@", &v13, 0xCu);
  }

  if (v3)
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
        v16 = self;
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

- (void)requestTranscriptionAssetModelOperationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_10005435C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initiating request to install asset model.", buf, 2u);
  }

  v7 = [(VMVoicemailTranscriptionController *)self networkObserver];
  v8 = [v7 isNetworkReachable];

  if (v8)
  {
    [(VMVoicemailTranscriptionController *)self removeAssetModelNetworkObserver];
    v9 = [(VMVoicemailTranscriptionController *)self assetModel];
    v10 = [(VMVoicemailTranscriptionController *)self speechRecognizer];
    v11 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005A674;
    v13[3] = &unk_1000EEE50;
    v14 = v4;
    [v9 performInstallAssetModel:v10 isLID:0 queue:v11 completion:v13];
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
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)requestLanguageIDModelOperationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_10005435C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initiating request to install Language ID model.", buf, 2u);
  }

  v7 = [(VMVoicemailTranscriptionController *)self networkObserver];
  v8 = [v7 isNetworkReachable];

  if (v8)
  {
    [(VMVoicemailTranscriptionController *)self removeAssetModelNetworkObserver];
    v9 = [(VMVoicemailTranscriptionController *)self assetModel];
    v10 = [(VMVoicemailTranscriptionController *)self speechRecognizer];
    v11 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
    [v9 performInstallAssetModel:v10 isLID:1 queue:v11 completion:v4];
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
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)performSynchronousBlock:(id)a3
{
  block = a3;
  if (dispatch_get_specific(off_10010D3C0) == self)
  {
    block[2]();
  }

  else
  {
    v4 = [(VMVoicemailTranscriptionController *)self serialDispatchQueue];
    dispatch_sync(v4, block);
  }
}

- (void)performAtomicAccessorBlock:(id)a3
{
  v6 = a3;
  if (v6)
  {
    os_unfair_lock_lock_with_options();
    v6[2]();
    os_unfair_lock_unlock(&self->lock);
  }

  else
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"VMVoicemailTranscriptionController.mm" lineNumber:873 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }
}

@end