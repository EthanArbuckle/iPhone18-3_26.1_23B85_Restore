@interface SSRVoiceProfileComposer
+ (id)sharedTrainer;
- (BOOL)_addUtteranceHelper:(id)a3 toProfile:(id)a4 withAnalyzer:(id)a5 withPreTriggerAudioTime:(double)a6 withError:(id *)a7;
- (BOOL)addUtterance:(id)a3 toProfile:(id)a4;
- (BOOL)addUtterance:(id)a3 toProfile:(id)a4 withAsset:(id)a5 error:(id *)a6;
- (BOOL)addUtterance:(id)a3 toProfile:(id)a4 withAsset:(id)a5 sessionUtteranceId:(id)a6 sessionMHUUID:(id)a7 phId:(unint64_t)a8;
- (BOOL)addUtterance:(id)a3 toProfile:(id)a4 withSecureAsset:(id)a5 error:(id *)a6;
- (BOOL)addUtterance:(id)a3 toProfile:(id)a4 withSecureAsset:(id)a5 sessionUtteranceId:(id)a6 sessionMHUUID:(id)a7 phId:(unint64_t)a8;
- (SSRVoiceProfileComposer)init;
- (double)_getPreTriggerAudioTimeFromAsset:(id)a3;
- (id)_getAnalyzerWithAsset:(id)a3 forProfile:(id)a4;
- (id)_getAnalyzerWithSecureAsset:(id)a3;
- (void)_logEnrollmentUtteranceWithUtteranceId:(unint64_t)a3 mhUUID:(id)a4 locale:(id)a5 phId:(unint64_t)a6;
- (void)logEnrollmentUtterance:(id)a3 locale:(id)a4 utteranceId:(unint64_t)a5 mhUUID:(id)a6 phId:(unint64_t)a7;
@end

@implementation SSRVoiceProfileComposer

- (BOOL)_addUtteranceHelper:(id)a3 toProfile:(id)a4 withAnalyzer:(id)a5 withPreTriggerAudioTime:(double)a6 withError:(id *)a7
{
  v67 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v62 = a5;
  v13 = [v11 length];
  if (!v13)
  {
    LOBYTE(v34) = 0;
    v15 = 0;
LABEL_26:
    v32 = 0;
    goto LABEL_38;
  }

  v56 = a7;
  v57 = v12;
  v14 = 0;
  v15 = 0;
  v60 = *MEMORY[0x277D01B40];
  v59 = *MEMORY[0x277D01B48];
  v16 = *MEMORY[0x277D01DF8];
  v58 = v11;
  while (1)
  {
    v17 = [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
    if (v13 / v17 >= 0xA0)
    {
      v18 = 160;
    }

    else
    {
      v18 = v13 / v17;
    }

    v19 = v18 * [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
    v20 = [v11 subdataWithRange:{v14, v19}];
    v21 = [v62 analyzeWithBuffer:v20];

    if (!v21)
    {
      goto LABEL_10;
    }

    v22 = [v21 mutableCopy];
    v23 = [MEMORY[0x277D018F8] deviceProductType];
    [v22 setObject:v23 forKeyedSubscript:v60];

    v24 = [MEMORY[0x277D018F8] deviceProductVersion];
    [v22 setObject:v24 forKeyedSubscript:v59];

    v25 = [v22 objectForKeyedSubscript:v16];
    if (v25)
    {
      v26 = v25;
      v27 = [v22 objectForKeyedSubscript:v16];
      v28 = [v27 BOOLValue];

      v11 = v58;
      if (v28)
      {
        break;
      }
    }

    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1401 userInfo:0];

    v15 = v29;
LABEL_10:
    v13 -= v19;
    v14 += v19;

    if (!v13)
    {
      v30 = v56;
      if (!v56)
      {
        LOBYTE(v34) = 0;
        v13 = 0;
        v32 = 0;
        v12 = v57;
        goto LABEL_38;
      }

      v12 = v57;
      if (!v15)
      {
        LOBYTE(v34) = 0;
        v13 = 0;
        goto LABEL_26;
      }

      v31 = v15;
      v13 = 0;
      v32 = 0;
      v33 = v15;
      goto LABEL_37;
    }
  }

  v35 = [v22 objectForKeyedSubscript:*MEMORY[0x277D01F00]];
  v36 = [v35 unsignedIntegerValue];
  v37 = v36 * [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];

  v38 = [v22 objectForKeyedSubscript:*MEMORY[0x277D01E78]];
  v39 = [v38 unsignedIntegerValue];
  v40 = v39 * [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];

  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v42 = v41 * a6 * [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
  if (v37 >= v42)
  {
    v43 = v37 - v42;
  }

  else
  {
    v43 = 0;
  }

  v61 = [v57 voiceProfileAudioDirPathForSpidType:1];
  v44 = [SSRUtils createDirectoryIfDoesNotExist:?];
  v45 = [v57 voiceProfileAudioDirPathForSpidType:3];
  v13 = [SSRUtils createDirectoryIfDoesNotExist:v45];

  if (v40 >= [v58 length])
  {
    v40 = [v58 length] - 1;
  }

  v46 = [v58 subdataWithRange:{v43, v40 - v43 + 1}];
  v47 = [v22 objectForKeyedSubscript:*MEMORY[0x277D01CF8]];
  v48 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v64 = "[SSRVoiceProfileComposer _addUtteranceHelper:toProfile:withAnalyzer:withPreTriggerAudioTime:withError:]";
    v65 = 2112;
    v66 = v47;
    _os_log_debug_impl(&dword_225E12000, v48, OS_LOG_TYPE_DEBUG, "%s SSRVoiceProfileComposor adding phraseId: %@", buf, 0x16u);
  }

  v49 = [SSREnrollmentDataManager saveUtteranceAndMetadata:v46 phId:v47 atDirectory:v61];
  v50 = [v58 subdataWithRange:{v43, objc_msgSend(v58, "length") - v43}];

  v34 = v49 & [SSREnrollmentDataManager saveUtteranceAndMetadata:v50 phId:v47 atDirectory:v45];
  if (v34)
  {
    v32 = 0;
  }

  else
  {
    v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1402 userInfo:0];
  }

  v30 = v56;
  if (v56)
  {
    v51 = v34;
  }

  else
  {
    v51 = 1;
  }

  if (v51)
  {
    v15 = 0;
    v12 = v57;
    v11 = v58;
    goto LABEL_38;
  }

  v12 = v57;
  v11 = v58;
  if (v13)
  {
    v52 = v13;
    v15 = 0;
    v33 = v13;
LABEL_37:
    LOBYTE(v34) = 0;
    *v30 = v33;
    goto LABEL_38;
  }

  if (v32)
  {
    v53 = v32;
    v15 = 0;
    v13 = 0;
    v33 = v32;
    goto LABEL_37;
  }

  LOBYTE(v34) = 0;
  v15 = 0;
  v13 = 0;
LABEL_38:

  v54 = *MEMORY[0x277D85DE8];
  return v34;
}

- (id)_getAnalyzerWithSecureAsset:(id)a3
{
  v3 = a3;
  v4 = [[_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper alloc] initWithSecureAsset:v3 supportMph:1];

  return v4;
}

- (double)_getPreTriggerAudioTimeFromAsset:(id)a3
{
  v3 = [MEMORY[0x277D01958] decodeConfigFrom:a3 forFirstPassSource:0];
  [v3 preTriggerAudioTime];
  v5 = v4;

  return v5;
}

- (id)_getAnalyzerWithAsset:(id)a3 forProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D01958] decodeConfigFrom:v5 forFirstPassSource:0];
  if ([v7 useRecognizerCombination] && +[SSRUtils isMphVTUIKeywordDetectorSupportedPlatform](SSRUtils, "isMphVTUIKeywordDetectorSupportedPlatform"))
  {
    v8 = [[CSVoiceTriggerUserSelectedPhrase alloc] initWithEndpointId:0];
    v9 = MEMORY[0x277D018F8];
    v10 = [v6 locale];
    if ([v9 supportsMphForLanguageCode:v10])
    {
      v11 = [(CSVoiceTriggerUserSelectedPhrase *)v8 multiPhraseSelected];
    }

    else
    {
      v11 = 0;
    }

    v12 = [[CSVTUITwoPassKeywordDetector alloc] initWithAsset:v5 supportMph:v11];
  }

  else
  {
    v12 = [[CSVTUIKeywordDetector alloc] initWithAsset:v5];
  }

  return v12;
}

- (void)_logEnrollmentUtteranceWithUtteranceId:(unint64_t)a3 mhUUID:(id)a4 locale:(id)a5 phId:(unint64_t)a6
{
  v18 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CEF360] sharedPreferences];
  v11 = [v10 siriDataSharingOptInStatus];

  if (v11 == 1)
  {
    v12 = objc_alloc_init(MEMORY[0x277D5A6F8]);
    [v12 setPageNumber:a3];
    [v12 setTriggerPhrase:{+[SSRUtils convertToSchemaEnumWithPhId:](SSRUtils, "convertToSchemaEnumWithPhId:", a6)}];
    v13 = [SSRUtils convertSchemaTypeWithLocale:v9];
    [v12 setSiriInputLocale:v13];

    v14 = objc_alloc_init(MEMORY[0x277D5A698]);
    v15 = objc_alloc_init(MEMORY[0x277D5A6B0]);
    v16 = [objc_alloc(MEMORY[0x277D5AC70]) initWithNSUUID:v18];
    [v15 setSiriSetupId:v16];

    [v14 setEventMetadata:v15];
    [v14 setEnrollmentUtteranceDetected:v12];
    v17 = [MEMORY[0x277D552B8] sharedStream];
    [v17 emitMessage:v14];
  }
}

- (void)logEnrollmentUtterance:(id)a3 locale:(id)a4 utteranceId:(unint64_t)a5 mhUUID:(id)a6 phId:(unint64_t)a7
{
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SSRVoiceProfileComposer_logEnrollmentUtterance_locale_utteranceId_mhUUID_phId___block_invoke;
  block[3] = &unk_278578350;
  block[4] = self;
  v17 = v12;
  v18 = v11;
  v19 = a5;
  v20 = a7;
  v14 = v11;
  v15 = v12;
  dispatch_async(queue, block);
}

- (BOOL)addUtterance:(id)a3 toProfile:(id)a4 withSecureAsset:(id)a5 sessionUtteranceId:(id)a6 sessionMHUUID:(id)a7 phId:(unint64_t)a8
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = [(SSRVoiceProfileComposer *)self addUtterance:v14 toProfile:v15 withSecureAsset:a5 error:0];
  if (v16 && v17)
  {
    v19 = [v15 locale];
    -[SSRVoiceProfileComposer logEnrollmentUtterance:locale:utteranceId:mhUUID:phId:](self, "logEnrollmentUtterance:locale:utteranceId:mhUUID:phId:", v14, v19, [v16 unsignedIntegerValue], v17, a8);
  }

  else
  {
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "[SSRVoiceProfileComposer addUtterance:toProfile:withSecureAsset:sessionUtteranceId:sessionMHUUID:phId:]";
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s utteranceId or mhUUID passed in are nil - utteranceId: %@ mhUUID: %@", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)addUtterance:(id)a3 toProfile:(id)a4 withAsset:(id)a5 sessionUtteranceId:(id)a6 sessionMHUUID:(id)a7 phId:(unint64_t)a8
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = [(SSRVoiceProfileComposer *)self addUtterance:v14 toProfile:v15 withAsset:a5 error:0];
  if (v16 && v17)
  {
    v19 = [v15 locale];
    -[SSRVoiceProfileComposer logEnrollmentUtterance:locale:utteranceId:mhUUID:phId:](self, "logEnrollmentUtterance:locale:utteranceId:mhUUID:phId:", v14, v19, [v16 unsignedIntegerValue], v17, a8);
  }

  else
  {
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "[SSRVoiceProfileComposer addUtterance:toProfile:withAsset:sessionUtteranceId:sessionMHUUID:phId:]";
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s utteranceId or mhUUID passed in are nil - utteranceId: %@ mhUUID: %@", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)addUtterance:(id)a3 toProfile:(id)a4 withSecureAsset:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(SSRVoiceProfileComposer *)self _getAnalyzerWithSecureAsset:v10];
  [(SSRVoiceProfileComposer *)self _getPreTriggerAudioTimeFromSecureAsset:v10];
  v15 = v14;

  LOBYTE(a6) = [(SSRVoiceProfileComposer *)self _addUtteranceHelper:v12 toProfile:v11 withAnalyzer:v13 withPreTriggerAudioTime:a6 withError:v15];
  return a6;
}

- (BOOL)addUtterance:(id)a3 toProfile:(id)a4 withAsset:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(SSRVoiceProfileComposer *)self _getAnalyzerWithAsset:v10 forProfile:v11];
  [(SSRVoiceProfileComposer *)self _getPreTriggerAudioTimeFromAsset:v10];
  v15 = v14;

  LOBYTE(a6) = [(SSRVoiceProfileComposer *)self _addUtteranceHelper:v12 toProfile:v11 withAnalyzer:v13 withPreTriggerAudioTime:a6 withError:v15];
  return a6;
}

- (BOOL)addUtterance:(id)a3 toProfile:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[SSRAssetManager sharedManager];
  v9 = [v7 locale];
  v10 = [v8 installedAssetOfType:0 forLanguage:v9];

  v11 = MEMORY[0x277D01970];
  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[SSRVoiceProfileComposer addUtterance:toProfile:]";
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerAsset found: %{public}@", &v17, 0x16u);
  }

  if (!v10)
  {
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[SSRVoiceProfileComposer addUtterance:toProfile:]";
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Cannot find voicetrigger asset from asset manager, let's fallback to asset in the framework", &v17, 0xCu);
    }

    v10 = [MEMORY[0x277D015F8] defaultFallBackAssetForVoiceTrigger];
  }

  v14 = [(SSRVoiceProfileComposer *)self addUtterance:v6 toProfile:v7 withAsset:v10 error:0];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (SSRVoiceProfileComposer)init
{
  v7.receiver = self;
  v7.super_class = SSRVoiceProfileComposer;
  v2 = [(SSRVoiceProfileComposer *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.corespeech.voiceprofilecomposer", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    speechId = v2->_speechId;
    v2->_speechId = 0;
  }

  return v2;
}

+ (id)sharedTrainer
{
  if (sharedTrainer_onceToken != -1)
  {
    dispatch_once(&sharedTrainer_onceToken, &__block_literal_global_3003);
  }

  v3 = sharedTrainer_sharedTrainer;

  return v3;
}

uint64_t __40__SSRVoiceProfileComposer_sharedTrainer__block_invoke()
{
  sharedTrainer_sharedTrainer = objc_alloc_init(SSRVoiceProfileComposer);

  return MEMORY[0x2821F96F8]();
}

@end