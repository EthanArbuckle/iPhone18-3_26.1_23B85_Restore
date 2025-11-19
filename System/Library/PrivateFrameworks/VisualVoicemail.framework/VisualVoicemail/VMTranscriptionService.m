@interface VMTranscriptionService
+ (BOOL)isSupportedTranscriptionLanguageCode:(id)a3;
+ (BOOL)isTranscriptionAvailable;
- (BOOL)cache_isTranscribing;
- (BOOL)enableProfanityFilter:(id)a3;
- (BOOL)isLSRPreferenceProfanityAllowed;
- (BOOL)isTranscriptionServiceAvailable;
- (BOOL)processTranscriptionSpeechAnalyzerCompletionHandlerForRecordWithIndentifier:(int)a3 transcript:(id)a4 error:(id)a5;
- (BOOL)writeDataToFile:(id)a3 fileData:(id)a4;
- (TranscriptionProgress_t)getTranscriptionProgress;
- (VMTranscriptionService)init;
- (VMVoicemailTranscriptionController)transcriptionController;
- (id)determineAssetLocale:(id)a3;
- (id)processLanguageIDResults:(id)a3 error:(id)a4;
- (id)processTranscriptionSpeechAnalyzerResults:(id)a3 error:(id)a4;
- (id)readDataFromFile:(id)a3;
- (unint64_t)languageIDFailureReasonForError:(id)a3;
- (unint64_t)transcriptionFailureReasonForError:(id)a3;
- (void)addTranscriptionDelegate:(id)a3 queue:(id)a4;
- (void)cache_setTranscribing:(BOOL)a3;
- (void)donateToLanguageConsumptionBiomeStream:(id)a3 confidence:(id)a4 duration:(double)a5;
- (void)fetchLanguageIDBasedDictationResultForFileAtURL:(int)a3 dataURL:(id)a4 queuePriority:(int64_t)a5 duration:(double)a6 completion:(id)a7;
- (void)handleAFLanguageCodeDidChangeNotification:(id)a3;
- (void)handleNSCurrentLocaleDidChangeNotification:(id)a3;
- (void)loadTranscriptionService;
- (void)performAtomicAccessorBlock:(id)a3;
- (void)performSynchronousBlock:(id)a3;
- (void)prepareAndReportVoicemailMetrics:(void *)a3 transcriptionResultsDict:(id)a4;
- (void)processPersonalizedTranscriptForFileAtPath:(id)a3 priority:(int64_t)a4 completion:(id)a5;
- (void)processSpeechAnalyzerTranscriptForRecordWithIdentifier:(int)a3 priority:(int64_t)a4 completion:(id)a5;
- (void)processTranscriptForFileAtPath:(id)a3 transcription:(id)a4 priority:(int64_t)a5 completion:(id)a6;
- (void)processTranscriptForRecordWithIdentifier:(int)a3 priority:(int64_t)a4 completion:(id)a5;
- (void)removeTranscriptionDelegate:(id)a3;
- (void)reportTranscriptionProblemForRecord:(void *)a3;
- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forRecord:(void *)a4;
- (void)resetTranscriptionProgress;
- (void)retranscribeAllVoicemails;
- (void)setToTranscribingForRecordWithIdentifier:(int)a3;
- (void)setTranscriptionController:(id)a3;
- (void)setTranscriptionFractionCompleted:(double)a3;
- (void)setTranscriptionServiceAvailable:(BOOL)a3;
- (void)setTranscriptionTotalUnitCount:(int64_t)a3;
- (void)transcriptionAvailabilityChanged:(BOOL)a3;
- (void)transcriptionController:(id)a3 transcriptionProgressFractionCompletedChanged:(double)a4;
- (void)transcriptionController:(id)a3 transcriptionProgressTotalUnitCountChanged:(int64_t)a4;
- (void)unloadTranscriptionService;
@end

@implementation VMTranscriptionService

+ (BOOL)isTranscriptionAvailable
{
  v2 = +[VMPreferences sharedInstance];
  v3 = [v2 transcriptionEnabled];

  if (!v3)
  {
    return 0;
  }

  v4 = +[NSLocale currentLocale];
  v5 = [v4 languageIdentifier];

  if (AFOfflineDictationCapable())
  {
    v6 = [objc_opt_class() isSupportedTranscriptionLanguageCode:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VMVoicemailTranscriptionController)transcriptionController
{
  os_unfair_lock_lock(&self->lock);
  v3 = self->_transcriptionController;
  os_unfair_lock_unlock(&self->lock);

  return v3;
}

- (VMTranscriptionService)init
{
  v13.receiver = self;
  v13.super_class = VMTranscriptionService;
  v2 = [(VMTranscriptionService *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->lock._os_unfair_lock_opaque = 0;
    *&v2->fCacheIsTranscribing = 0;
    v4 = dispatch_queue_create("com.apple.vmd.VMTranscriptionService", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    dispatch_queue_set_specific(v3->_queue, off_10010D068, v3, 0);
    v6 = [[VMVoicemailTranscriptionTask alloc] initWithTranscriptionService:v3];
    transcriptionTask = v3->_transcriptionTask;
    v3->_transcriptionTask = v6;

    v8 = objc_alloc_init(VMBiomeClient);
    biomeClient = v3->_biomeClient;
    v3->_biomeClient = v8;

    v10 = +[NSMapTable weakToWeakObjectsMapTable];
    delegates = v3->_delegates;
    v3->_delegates = v10;
  }

  return v3;
}

+ (BOOL)isSupportedTranscriptionLanguageCode:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (_os_feature_enabled_impl())
    {
      v4 = sub_1000330E0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "isSupportedTranscriptionLanguageCode: Flag lvmExpansionLiveOnEnabled enabled", buf, 2u);
      }

      v5 = [objc_opt_class() matchLocaleForTranscriptionLanguage];
      LODWORD(v6) = v5 != 0;
    }

    else
    {
      [objc_opt_class() transcriptionLanguageCodes];
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v5 = v12 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v19 count:16];
      if (v6)
      {
        v7 = *v12;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v5);
            }

            if ([v3 isEqualToString:{*(*(&v11 + 1) + 8 * i), v11}])
            {
              LODWORD(v6) = 1;
              goto LABEL_17;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v11 objects:v19 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v9 = sub_1000330E0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = v6;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "isSupportedTranscriptionLanguageCode: Supported: %d for language: %@", buf, 0x12u);
  }

  return v6;
}

- (void)loadTranscriptionService
{
  v3 = [(VMTranscriptionService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000331AC;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)unloadTranscriptionService
{
  v3 = [(VMTranscriptionService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033698;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)isLSRPreferenceProfanityAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureAssistantProfanityFilterForced] != 1;

  return v3;
}

- (BOOL)enableProfanityFilter:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 BOOLValue] & 1) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = ![(VMTranscriptionService *)self isLSRPreferenceProfanityAllowed];
  }

  return v6;
}

- (void)processTranscriptForFileAtPath:(id)a3 transcription:(id)a4 priority:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v12 copy];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100033AE8;
  v25[3] = &unk_1000EE218;
  v25[4] = self;
  v14 = v11;
  v26 = v14;
  v15 = v13;
  v27 = v15;
  v16 = objc_retainBlock(v25);
  v17 = [(VMTranscriptionService *)self transcriptionController];

  if (v17)
  {
    v18 = [NSURL fileURLWithPath:v10 isDirectory:0];
    v19 = [AVURLAsset assetWithURL:v18];
    v20 = v19;
    if (v19)
    {
      [v19 duration];
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    Seconds = CMTimeGetSeconds(&v24);
    v23 = [(VMTranscriptionService *)self transcriptionController];
    [v23 retrieveDictationResultForFileAtURL:v18 queuePriority:a5 duration:&stru_1000EE238 transcriptionBeginCallback:v16 completion:Seconds];
  }

  else
  {
    v21 = sub_1000330E0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24.value) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Transcription service is disabled, not transcribing", &v24, 2u);
    }

    (v16[2])(v16, 0, 0);
  }
}

- (void)processPersonalizedTranscriptForFileAtPath:(id)a3 priority:(int64_t)a4 completion:(id)a5
{
  v22 = a3;
  v24 = a5;
  v25 = [v24 copy];
  v8 = [NSURL fileURLWithPath:v22 isDirectory:0];
  v9 = [AVURLAsset assetWithURL:v8];
  v23 = v9;
  if (v9)
  {
    [v9 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3032000000;
  v59 = sub_1000344C4;
  v60 = sub_1000344D4;
  v61 = &stru_1000F0098;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = sub_1000344C4;
  v56[4] = sub_1000344D4;
  v57 = &stru_1000F0098;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = sub_1000344C4;
  v54[4] = sub_1000344D4;
  v55 = &stru_1000F0098;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_1000344C4;
  v52[4] = sub_1000344D4;
  v53 = &stru_1000F0098;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = sub_1000344C4;
  v50[4] = sub_1000344D4;
  v51 = &stru_1000F0098;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000344DC;
  v46[3] = &unk_1000EE260;
  v46[4] = self;
  v11 = v8;
  v47 = v11;
  v12 = objc_retainBlock(v46);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100034624;
  v38[3] = &unk_1000EE2B0;
  v38[4] = self;
  p_time = &time;
  v41 = v56;
  v42 = v48;
  v43 = v54;
  v44 = v50;
  v45 = v52;
  v13 = v25;
  v39 = v13;
  v14 = objc_retainBlock(v38);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100034954;
  v26[3] = &unk_1000EE300;
  v26[4] = self;
  v30 = &time;
  v31 = v56;
  v32 = v54;
  v33 = v50;
  v34 = v52;
  v35 = v48;
  v15 = v11;
  v27 = v15;
  v36 = a4;
  v37 = Seconds;
  v16 = v12;
  v28 = v16;
  v17 = v14;
  v29 = v17;
  v18 = objc_retainBlock(v26);
  v19 = [(VMTranscriptionService *)self transcriptionController];
  LOBYTE(v14) = v19 == 0;

  if (v14)
  {
    v21 = sub_1000330E0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v15;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "processAudioForFileAtURL: Transcription service is disabled, not transcribing audio at external URL %@", buf, 0xCu);
    }

    (v17[2])(v17, 0, 0);
  }

  else
  {
    v20 = [(VMTranscriptionService *)self transcriptionController];
    [v20 retrieveLanguageIDResultForFileAtURL:v15 queuePriority:a4 completion:v18];
  }

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v54, 8);

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(&time, 8);
}

- (void)processTranscriptForRecordWithIdentifier:(int)a3 priority:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [v8 copy];
  v10 = [(VMTranscriptionService *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100034F8C;
  v12[3] = &unk_1000EE410;
  v15 = a3;
  v13 = v9;
  v14 = a4;
  v12[4] = self;
  v11 = v9;
  dispatch_async(v10, v12);
}

- (void)setToTranscribingForRecordWithIdentifier:(int)a3
{
  v4 = VMStoreCopyRecordWithIdentifier();
  if (v4)
  {
    v5 = v4;
    Flags = VMStoreRecordGetFlags(v4);
    v8 = VMStoreRecordGetLabel(v5);
    VMStoreRecordSetFlags(v8, v5, Flags & 0xFFFE7DFF | 0x200);
    VMStoreSave();
    CFRelease(v5);
  }

  else
  {
    v7 = sub_1000330E0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Record %d deleted during transcribe operation, not setting transcribing flag.", buf, 8u);
    }
  }
}

- (id)processLanguageIDResults:(id)a3 error:(id)a4
{
  v6 = a3;
  v29 = a4;
  v30 = v6;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = v7;
  if (v6)
  {
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"lidSuccess"];
    [v8 setObject:0 forKeyedSubscript:@"lidFailureReason"];
    v9 = [v6 dominantLocale];
    v28 = [v9 languageIdentifier];

    v10 = [v6 dominantLocale];
    v11 = [v10 objectForKey:NSLocaleLanguageCode];
    [v8 setObject:v11 forKeyedSubscript:@"detectedDominantLanguage"];

    v12 = [v6 detectedLanguageCode];
    v13 = [v12 isEqualToString:@"en"];

    v14 = [NSNumber numberWithInt:v13];
    [v8 setObject:v14 forKeyedSubscript:@"isEnglish"];

    [v8 setObject:v28 forKeyedSubscript:@"detectedDominantLocale"];
    v15 = +[NSMutableDictionary dictionary];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = [v6 alternatives];
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          [v20 confidence];
          v21 = [NSNumber numberWithDouble:?];
          v22 = [v20 locale];
          v23 = [v22 localeIdentifier];
          [v15 setObject:v21 forKeyedSubscript:v23];
        }

        v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }

    if ([v15 count])
    {
      [v8 setObject:v15 forKeyedSubscript:@"altLocaleDict"];
      v24 = [v8 objectForKeyedSubscript:@"altLocaleDict"];
      v25 = [v24 objectForKeyedSubscript:v28];
      [v8 setObject:v25 forKeyedSubscript:@"dominantLocaleConfidence"];
    }

    else
    {
      [v8 setObject:0 forKeyedSubscript:@"altLocaleDict"];
      [v8 setObject:0 forKeyedSubscript:@"dominantLocaleConfidence"];
    }
  }

  else
  {
    [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:@"lidSuccess"];
    [v8 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isEnglish"];
    [v8 setObject:0 forKeyedSubscript:@"detectedDominantLocale"];
    [v8 setObject:0 forKeyedSubscript:@"altLocaleDict"];
    [v8 setObject:0 forKeyedSubscript:@"dominantLocaleConfidence"];
    if (v29)
    {
      v26 = [NSNumber numberWithUnsignedInteger:[(VMTranscriptionService *)self languageIDFailureReasonForError:?]];
      [v8 setObject:v26 forKeyedSubscript:@"lidFailureReason"];
    }

    else
    {
      [v8 setObject:&off_1000F5800 forKeyedSubscript:@"lidFailureReason"];
    }
  }

  return v8;
}

- (id)processTranscriptionSpeechAnalyzerResults:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = v8;
  if (v6)
  {
    v10 = sub_1000330E0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v6 confidence];
      v17 = 138412546;
      v18 = v6;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Dictation result was: '%@', confidence %f", &v17, 0x16u);
    }

    v12 = [v6 transcriptionString];
    [v9 setObject:v12 forKeyedSubscript:@"transcriptionString"];

    [v6 confidence];
    v13 = [NSNumber numberWithFloat:?];
    [v9 setObject:v13 forKeyedSubscript:@"confidence"];

    if ([v6 confidenceRating] >= 2)
    {
      [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"transcriptionSuccess"];
      [v9 setObject:0 forKeyedSubscript:@"transcriptionFailureReason"];
      goto LABEL_11;
    }

    [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"transcriptionSuccess"];
    v15 = &off_1000F57D0;
  }

  else
  {
    [v8 setObject:0 forKeyedSubscript:@"confidence"];
    [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"transcriptionSuccess"];
    if (v7)
    {
      v14 = [NSNumber numberWithUnsignedInteger:[(VMTranscriptionService *)self transcriptionFailureReasonForError:v7]];
      [v9 setObject:v14 forKeyedSubscript:@"transcriptionFailureReason"];

      goto LABEL_11;
    }

    v15 = &off_1000F5800;
  }

  [v9 setObject:v15 forKeyedSubscript:@"transcriptionFailureReason"];
LABEL_11:

  return v9;
}

- (BOOL)processTranscriptionSpeechAnalyzerCompletionHandlerForRecordWithIndentifier:(int)a3 transcript:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = VMStoreCopyRecordWithIdentifier();
  v11 = v10;
  if (v10)
  {
    v12 = VMStoreRecordGetLabel(v10);
    v21 = [(VMTranscriptionService *)self processTranscriptionSpeechAnalyzerResults:v8 error:v9];
    if (!v8)
    {
      v13 = sub_1000330E0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10009CB94();
      }

      LOBYTE(v16) = 0;
      goto LABEL_21;
    }

    v13 = VMStoreRecordCopyTranscriptionPath();
    if ([v13 length])
    {
      v14 = [NSURL fileURLWithPath:v13 isDirectory:0];
      if (v14)
      {
        v15 = [v8 archivedData];
        v22 = 0;
        v16 = [v15 writeToURL:v14 options:268435457 error:&v22];
        v17 = v22;

        if (v16)
        {
          VMStoreRecordSetFlag(v12, v11, 0x100u);
        }

        else
        {
          v18 = sub_1000330E0();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10009C988();
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
      v14 = sub_1000330E0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10009C9F8();
      }
    }

    LOBYTE(v16) = 0;
LABEL_20:

LABEL_21:
    [(VMTranscriptionService *)self prepareAndReportVoicemailMetrics:v11 transcriptionResultsDict:v21];
    Flags = VMStoreRecordGetFlags(v11);
    VMStoreRecordSetFlags(v12, v11, Flags & 0xFFFF6DFF | 0x1000);
    VMStoreSave();
    CFRelease(v11);

    goto LABEL_22;
  }

  v12 = sub_1000330E0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v24 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Record with identifier %d deleted during transcribe operation, ignoring transcript result.", buf, 8u);
  }

  LOBYTE(v16) = 0;
LABEL_22:

  return v16;
}

- (id)determineAssetLocale:(id)a3
{
  v4 = a3;
  v5 = [(VMTranscriptionService *)self transcriptionController];
  v6 = [v5 isPersTranscriptionAvailable];

  if (v6)
  {
    if (v4 && ([v4 objectForKeyedSubscript:@"lidSuccess"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", &__kCFBooleanTrue), v7, v8))
    {
      v9 = sub_1000330E0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "personalizedTranscriptionEnabled enabled and LID is successful.", &v25, 2u);
      }

      v10 = [(VMTranscriptionService *)self transcriptionController];
      v11 = [v10 matchedSystemLocale];
      if (v11)
      {
        v12 = [v4 objectForKeyedSubscript:@"detectedDominantLanguage"];
        v13 = [(VMTranscriptionService *)self transcriptionController];
        v14 = [v13 matchedSystemLocale];
        v15 = [v14 objectForKey:NSLocaleLanguageCode];
        v16 = [v12 isEqualToString:v15];

        if (v16)
        {
          v17 = [(VMTranscriptionService *)self transcriptionController];
          v18 = [v17 matchedSystemLocale];
          v19 = [v18 localeIdentifier];

          goto LABEL_19;
        }
      }

      else
      {
      }

      v22 = [v4 objectForKeyedSubscript:@"dominantLocaleConfidence"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v22 doubleValue], v23 > 0.5))
      {
        v19 = [v4 objectForKeyedSubscript:@"detectedDominantLocale"];
      }

      else
      {
        v19 = &stru_1000F0098;
      }
    }

    else
    {
      v21 = [(VMTranscriptionService *)self transcriptionController];
      v19 = [v21 getTranscriptionLocaleIdentifier];

      v22 = sub_1000330E0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "personalizedTranscriptionEnabled enabled but LID failed. Asset locale set to %@", &v25, 0xCu);
      }
    }
  }

  else
  {
    v20 = [(VMTranscriptionService *)self transcriptionController];
    v19 = [v20 getTranscriptionLocaleIdentifier];
  }

LABEL_19:

  return v19;
}

- (void)fetchLanguageIDBasedDictationResultForFileAtURL:(int)a3 dataURL:(id)a4 queuePriority:(int64_t)a5 duration:(double)a6 completion:(id)a7
{
  v27 = a4;
  v26 = a7;
  v12 = [v26 copy];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100038410;
  v38[3] = &unk_1000EE348;
  v38[4] = self;
  v39 = a3;
  v13 = objc_retainBlock(v38);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000384B8;
  v35[3] = &unk_1000EE460;
  v35[4] = self;
  v37 = a3;
  v14 = v12;
  v36 = v14;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100038620;
  v28[3] = &unk_1000EE4B0;
  v28[4] = self;
  v34 = a3;
  v32 = a6;
  v15 = objc_retainBlock(v35);
  v30 = v15;
  v16 = v27;
  v29 = v16;
  v33 = a5;
  v17 = v13;
  v31 = v17;
  v18 = objc_retainBlock(v28);
  v19 = [(VMTranscriptionService *)self transcriptionController];
  LOBYTE(a7) = v19 == 0;

  if (a7)
  {
    v21 = sub_1000330E0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v41 = a3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Transcription service is disabled, not transcribing record with identifier %d", buf, 8u);
    }

    (v15[2])(v15, 0, 0);
  }

  else
  {
    if (a6 <= 3.0)
    {
      v22 = [(VMTranscriptionService *)self transcriptionController];
      v20 = [v22 getTranscriptionLocaleIdentifier];

      v23 = sub_1000330E0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v41 = a3;
        v42 = 2112;
        v43 = v20;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Skipping Language ID as voicemail is too short. Attempting to transcribe record with identifier %d in locale %@", buf, 0x12u);
      }

      v24 = [(VMTranscriptionService *)self transcriptionController];
      v25 = [[NSLocale alloc] initWithLocaleIdentifier:v20];
      [v24 retrieveDictationResultWithLocaleForFileAtURL:v16 locale:v25 profanityFilterOverride:-[VMTranscriptionService enableProfanityFilter:](self queuePriority:"enableProfanityFilter:" duration:0) transcriptionBeginCallback:a5 completion:{v17, v15, a6}];
    }

    else
    {
      v20 = [(VMTranscriptionService *)self transcriptionController];
      [v20 retrieveLanguageIDResultForFileAtURL:v16 queuePriority:a5 completion:v18];
    }
  }
}

- (void)processSpeechAnalyzerTranscriptForRecordWithIdentifier:(int)a3 priority:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = sub_1000330E0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "transcriptionV2SpeechAPIEnabled enabled", buf, 2u);
  }

  v10 = [v8 copy];
  v11 = [(VMTranscriptionService *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100038C34;
  v13[3] = &unk_1000EE410;
  v16 = a3;
  v14 = v10;
  v15 = a4;
  v13[4] = self;
  v12 = v10;
  dispatch_async(v11, v13);
}

- (unint64_t)transcriptionFailureReasonForError:(id)a3
{
  v4 = a3;
  v5 = [(VMTranscriptionService *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [v4 code];
    if ((v6 - 1038) >= 3)
    {
      v7 = 5;
    }

    else
    {
      v7 = qword_1000C9390[(v6 - 1038)];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)languageIDFailureReasonForError:(id)a3
{
  v4 = a3;
  v5 = [(VMTranscriptionService *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [v4 code];
    if ((v6 - 1041) >= 4)
    {
      v7 = 5;
    }

    else
    {
      v7 = qword_1000C93A8[(v6 - 1041)];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)donateToLanguageConsumptionBiomeStream:(id)a3 confidence:(id)a4 duration:(double)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [(VMTranscriptionService *)self biomeClient];
  [v9 donateToLanguageConsumptionBiomeStream:v10 confidence:v8 duration:a5];
}

- (void)prepareAndReportVoicemailMetrics:(void *)a3 transcriptionResultsDict:(id)a4
{
  v6 = a4;
  if (a3 && v6)
  {
    v41 = v6;
    v7 = VMStoreRecordCopySummarizationPath();
    v8 = +[NSSet set];
    v9 = [VMUtilities readDataFromFile:v7 customClassSet:v8];

    v40 = v9;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = v9;
    }

    else
    {
      v11 = sub_1000330E0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = a3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Language ID results do not exist for record %@.", buf, 0xCu);
      }

      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = +[NSLocale currentLocale];
      v14 = [v13 localeIdentifier];
      [v12 setObject:v14 forKeyedSubscript:@"systemLocale"];

      v15 = [(VMTranscriptionService *)self transcriptionController];
      v16 = [v15 getTranscriptionLocaleIdentifier];
      [v12 setObject:v16 forKeyedSubscript:@"assetLocale"];

      [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"lidSuccess"];
      [v12 setObject:&off_1000F5800 forKeyedSubscript:@"lidFailureReason"];
      [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isEnglish"];
      [v12 setObject:0 forKeyedSubscript:@"detectedDominantLocale"];
      [v12 setObject:0 forKeyedSubscript:@"altLocaleDict"];
      v10 = v12;
      [v12 setObject:0 forKeyedSubscript:@"dominantLocaleConfidence"];
    }

    v38 = +[VMAWDReporter sharedInstance];
    v39 = [v10 objectForKeyedSubscript:@"systemLocale"];
    v34 = [v41 objectForKeyedSubscript:@"transcriptionSuccess"];
    v17 = [v34 BOOLValue];
    v36 = [v41 objectForKeyedSubscript:@"transcriptionFailureReason"];
    v35 = [v10 objectForKeyedSubscript:@"assetLocale"];
    v37 = [v41 objectForKeyedSubscript:@"confidence"];
    v18 = [v10 objectForKeyedSubscript:@"lidSuccess"];
    v19 = [v18 BOOLValue];
    v20 = [v10 objectForKeyedSubscript:@"lidFailureReason"];
    v21 = [v10 objectForKeyedSubscript:@"isEnglish"];
    v22 = [v21 BOOLValue];
    v23 = [v10 objectForKeyedSubscript:@"detectedDominantLocale"];
    v24 = [v10 objectForKeyedSubscript:@"dominantLocaleConfidence"];
    v25 = [v10 objectForKeyedSubscript:@"altLocaleDict"];
    LOBYTE(v33) = v22;
    [v38 reportVoicemailProcessed:v39 transcriptionSuccess:v17 transcriptionFailureReason:v36 assetLocale:v35 transcriptionConfidence:v37 lidSuccess:v19 lidFailureReason:v20 isEnglish:v33 dominantLocale:v23 dominantLocaleConfidence:v24 altLocaleDict:v25];

    v26 = +[VMAWDReporter sharedInstance];
    v27 = [v10 objectForKeyedSubscript:@"systemLocale"];
    v28 = [v41 objectForKeyedSubscript:@"transcriptionSuccess"];
    v29 = [v28 BOOLValue];
    v30 = [v41 objectForKeyedSubscript:@"transcriptionFailureReason"];
    v31 = [v10 objectForKeyedSubscript:@"assetLocale"];
    v32 = [v41 objectForKeyedSubscript:@"confidence"];
    [v26 reportVoicemailTranscriptionProcessed:v27 success:v29 reason:v30 assetLocale:v31 confidence:v32];

    v6 = v41;
  }
}

- (void)reportTranscriptionProblemForRecord:(void *)a3
{
  CFRetain(a3);
  v5 = [(VMTranscriptionService *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003989C;
  v6[3] = &unk_1000EE4D8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forRecord:(void *)a4
{
  CFRetain(a4);
  v7 = [(VMTranscriptionService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100039AF0;
  v8[3] = &unk_1000EE4F8;
  v8[4] = a4;
  v9 = a3;
  dispatch_async(v7, v8);
}

- (void)handleAFLanguageCodeDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(VMTranscriptionService *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039D3C;
  v7[3] = &unk_1000EE260;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleNSCurrentLocaleDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(VMTranscriptionService *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039F14;
  v7[3] = &unk_1000EE260;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)performSynchronousBlock:(id)a3
{
  block = a3;
  if (dispatch_get_specific(off_10010D068) == self)
  {
    block[2]();
  }

  else
  {
    v4 = [(VMTranscriptionService *)self queue];
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
    [v5 handleFailureInMethod:a2 object:self file:@"VMTranscriptionService.mm" lineNumber:1259 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }
}

- (id)readDataFromFile:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    v4 = sub_1000330E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009CCF4();
    }

    goto LABEL_13;
  }

  v4 = [NSURL fileURLWithPath:v3 isDirectory:0];
  v25 = 0;
  v5 = [NSData dataWithContentsOfURL:v4 options:1 error:&v25];
  v6 = v25;
  v7 = v6;
  if (!v5)
  {
    v19 = [v6 localizedDescription];
    v20 = [NSString stringWithFormat:@"readDataFromFile: error %@\n", v19];
    v21 = v20;
    v22 = [v20 UTF8String];
    fputs(v22, __stderrp);

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
  v24 = v7;
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v5 error:&v24];
  v13 = v24;

  if (v13)
  {
    v14 = sub_1000330E0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009CC78();
    }
  }

  v15 = sub_1000330E0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    *buf = 138412546;
    v27 = v3;
    v28 = 2112;
    v29 = v16;
    v17 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "For file %@, unarchived object class: %@", buf, 0x16u);
  }

  v18 = v12;
  v4 = v18;
LABEL_14:

  return v18;
}

- (BOOL)writeDataToFile:(id)a3 fileData:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [NSURL fileURLWithPath:v5 isDirectory:0];
    if (!v7)
    {
      v11 = sub_1000330E0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10009CE1C();
      }

      v12 = 0;
      goto LABEL_15;
    }

    v17 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v17];
    v9 = v17;
    if (v9)
    {
      v10 = sub_1000330E0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10009CD30();
      }

      v11 = 0;
    }

    else
    {
      v16 = 0;
      v14 = [v8 writeToURL:v7 options:268435457 error:&v16];
      v11 = v16;
      v15 = sub_1000330E0();
      v10 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v19 = v6;
          v20 = 2112;
          v21 = v7;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "File data %@ written to location: %@", buf, 0x16u);
        }

        v12 = 1;
        goto LABEL_8;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10009CDA0();
      }
    }

    v12 = 0;
LABEL_8:

LABEL_15:
    goto LABEL_16;
  }

  v7 = sub_1000330E0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10009CE8C();
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (void)setTranscriptionController:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->lock);
  transcriptionController = self->_transcriptionController;
  self->_transcriptionController = v4;

  os_unfair_lock_unlock(&self->lock);
}

- (void)setTranscriptionServiceAvailable:(BOOL)a3
{
  os_unfair_lock_lock(&self->lock);
  self->fCacheIsTranscriptionServiceAvailable = a3;

  os_unfair_lock_unlock(&self->lock);
}

- (BOOL)isTranscriptionServiceAvailable
{
  os_unfair_lock_lock(&self->lock);
  fCacheIsTranscriptionServiceAvailable = self->fCacheIsTranscriptionServiceAvailable;
  os_unfair_lock_unlock(&self->lock);
  return fCacheIsTranscriptionServiceAvailable;
}

- (void)cache_setTranscribing:(BOOL)a3
{
  os_unfair_lock_lock(&self->lock);
  self->fCacheIsTranscribing = a3;

  os_unfair_lock_unlock(&self->lock);
}

- (BOOL)cache_isTranscribing
{
  os_unfair_lock_lock(&self->lock);
  fCacheIsTranscribing = self->fCacheIsTranscribing;
  os_unfair_lock_unlock(&self->lock);
  return fCacheIsTranscribing;
}

- (void)resetTranscriptionProgress
{
  os_unfair_lock_lock(&self->lock);
  self->fTranscriptionProgress.fractionCompleted = 0.0;
  self->fTranscriptionProgress.totalUnitCount = 0;

  os_unfair_lock_unlock(&self->lock);
}

- (void)setTranscriptionFractionCompleted:(double)a3
{
  os_unfair_lock_lock(&self->lock);
  self->fTranscriptionProgress.fractionCompleted = a3;

  os_unfair_lock_unlock(&self->lock);
}

- (void)setTranscriptionTotalUnitCount:(int64_t)a3
{
  os_unfair_lock_lock(&self->lock);
  self->fTranscriptionProgress.totalUnitCount = a3;

  os_unfair_lock_unlock(&self->lock);
}

- (TranscriptionProgress_t)getTranscriptionProgress
{
  os_unfair_lock_lock(&self->lock);
  fractionCompleted = self->fTranscriptionProgress.fractionCompleted;
  totalUnitCount = self->fTranscriptionProgress.totalUnitCount;
  os_unfair_lock_unlock(&self->lock);
  v5 = fractionCompleted;
  v6 = totalUnitCount;
  result.totalUnitCount = v6;
  result.fractionCompleted = v5;
  return result;
}

- (void)retranscribeAllVoicemails
{
  v3 = [(VMTranscriptionService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AA28;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)transcriptionAvailabilityChanged:(BOOL)a3
{
  v5 = sub_1000330E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = asNSStringBOOL();
    *buf = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is executing transcriptionAvailabilityChanged with transcription service available %@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003ABF4;
  v8[3] = &unk_1000ED8D8;
  v8[4] = self;
  v9 = a3;
  [(VMTranscriptionService *)self performAtomicAccessorBlock:v8];
}

- (void)transcriptionController:(id)a3 transcriptionProgressFractionCompletedChanged:(double)a4
{
  v6 = a3;
  v7 = sub_1000330E0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = objc_opt_class();
    v15 = 2048;
    v16 = a4;
    v8 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is handling TranscriptionProgressFractionCompletedChanged with fractionCompleted %f", buf, 0x16u);
  }

  [(VMTranscriptionService *)self setTranscriptionFractionCompleted:a4];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003B3A0;
  v10[3] = &unk_1000EE520;
  v10[4] = self;
  v9 = v6;
  v11 = v9;
  v12 = a4;
  [(VMTranscriptionService *)self performAtomicAccessorBlock:v10];
}

- (void)transcriptionController:(id)a3 transcriptionProgressTotalUnitCountChanged:(int64_t)a4
{
  v6 = a3;
  v7 = sub_1000330E0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = objc_opt_class();
    v15 = 2048;
    v16 = a4;
    v8 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is handling transcriptionProgressTotalUnitCountChanged with totalUnitCount %lld", buf, 0x16u);
  }

  [(VMTranscriptionService *)self setTranscriptionTotalUnitCount:a4];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003B76C;
  v10[3] = &unk_1000EE520;
  v10[4] = self;
  v9 = v6;
  v11 = v9;
  v12 = a4;
  [(VMTranscriptionService *)self performAtomicAccessorBlock:v10];
}

- (void)addTranscriptionDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000330E0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = v6;
    v9 = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ add delegate %@", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003BB4C;
  v12[3] = &unk_1000EE120;
  v12[4] = self;
  v10 = v7;
  v13 = v10;
  v11 = v6;
  v14 = v11;
  [(VMTranscriptionService *)self performAtomicAccessorBlock:v12];
}

- (void)removeTranscriptionDelegate:(id)a3
{
  v4 = a3;
  v5 = sub_1000330E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = v4;
    v6 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ remove delegate %@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003BD20;
  v8[3] = &unk_1000EE260;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [(VMTranscriptionService *)self performAtomicAccessorBlock:v8];
}

@end