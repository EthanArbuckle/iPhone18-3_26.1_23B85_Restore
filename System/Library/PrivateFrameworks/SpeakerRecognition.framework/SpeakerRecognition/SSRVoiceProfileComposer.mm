@interface SSRVoiceProfileComposer
+ (id)sharedTrainer;
- (BOOL)_addUtteranceHelper:(id)helper toProfile:(id)profile withAnalyzer:(id)analyzer withPreTriggerAudioTime:(double)time withError:(id *)error;
- (BOOL)addUtterance:(id)utterance toProfile:(id)profile;
- (BOOL)addUtterance:(id)utterance toProfile:(id)profile withAsset:(id)asset error:(id *)error;
- (BOOL)addUtterance:(id)utterance toProfile:(id)profile withAsset:(id)asset sessionUtteranceId:(id)id sessionMHUUID:(id)d phId:(unint64_t)phId;
- (BOOL)addUtterance:(id)utterance toProfile:(id)profile withSecureAsset:(id)asset error:(id *)error;
- (BOOL)addUtterance:(id)utterance toProfile:(id)profile withSecureAsset:(id)asset sessionUtteranceId:(id)id sessionMHUUID:(id)d phId:(unint64_t)phId;
- (SSRVoiceProfileComposer)init;
- (double)_getPreTriggerAudioTimeFromAsset:(id)asset;
- (id)_getAnalyzerWithAsset:(id)asset forProfile:(id)profile;
- (id)_getAnalyzerWithSecureAsset:(id)asset;
- (void)_logEnrollmentUtteranceWithUtteranceId:(unint64_t)id mhUUID:(id)d locale:(id)locale phId:(unint64_t)phId;
- (void)logEnrollmentUtterance:(id)utterance locale:(id)locale utteranceId:(unint64_t)id mhUUID:(id)d phId:(unint64_t)phId;
@end

@implementation SSRVoiceProfileComposer

- (BOOL)_addUtteranceHelper:(id)helper toProfile:(id)profile withAnalyzer:(id)analyzer withPreTriggerAudioTime:(double)time withError:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  helperCopy = helper;
  profileCopy = profile;
  analyzerCopy = analyzer;
  v13 = [helperCopy length];
  if (!v13)
  {
    LOBYTE(v34) = 0;
    v15 = 0;
LABEL_26:
    v32 = 0;
    goto LABEL_38;
  }

  errorCopy = error;
  v57 = profileCopy;
  v14 = 0;
  v15 = 0;
  v60 = *MEMORY[0x277D01B40];
  v59 = *MEMORY[0x277D01B48];
  v16 = *MEMORY[0x277D01DF8];
  v58 = helperCopy;
  while (1)
  {
    inputRecordingSampleByteDepth = [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
    if (v13 / inputRecordingSampleByteDepth >= 0xA0)
    {
      v18 = 160;
    }

    else
    {
      v18 = v13 / inputRecordingSampleByteDepth;
    }

    v19 = v18 * [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
    v20 = [helperCopy subdataWithRange:{v14, v19}];
    v21 = [analyzerCopy analyzeWithBuffer:v20];

    if (!v21)
    {
      goto LABEL_10;
    }

    v22 = [v21 mutableCopy];
    deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
    [v22 setObject:deviceProductType forKeyedSubscript:v60];

    deviceProductVersion = [MEMORY[0x277D018F8] deviceProductVersion];
    [v22 setObject:deviceProductVersion forKeyedSubscript:v59];

    v25 = [v22 objectForKeyedSubscript:v16];
    if (v25)
    {
      v26 = v25;
      v27 = [v22 objectForKeyedSubscript:v16];
      bOOLValue = [v27 BOOLValue];

      helperCopy = v58;
      if (bOOLValue)
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
      v30 = errorCopy;
      if (!errorCopy)
      {
        LOBYTE(v34) = 0;
        v13 = 0;
        v32 = 0;
        profileCopy = v57;
        goto LABEL_38;
      }

      profileCopy = v57;
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
  unsignedIntegerValue = [v35 unsignedIntegerValue];
  v37 = unsignedIntegerValue * [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];

  v38 = [v22 objectForKeyedSubscript:*MEMORY[0x277D01E78]];
  unsignedIntegerValue2 = [v38 unsignedIntegerValue];
  v40 = unsignedIntegerValue2 * [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];

  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v42 = v41 * time * [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
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

  v30 = errorCopy;
  if (errorCopy)
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
    profileCopy = v57;
    helperCopy = v58;
    goto LABEL_38;
  }

  profileCopy = v57;
  helperCopy = v58;
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

- (id)_getAnalyzerWithSecureAsset:(id)asset
{
  assetCopy = asset;
  v4 = [[_TtC18SpeakerRecognition34CSVTUITwoPassKeywordDetectorHelper alloc] initWithSecureAsset:assetCopy supportMph:1];

  return v4;
}

- (double)_getPreTriggerAudioTimeFromAsset:(id)asset
{
  v3 = [MEMORY[0x277D01958] decodeConfigFrom:asset forFirstPassSource:0];
  [v3 preTriggerAudioTime];
  v5 = v4;

  return v5;
}

- (id)_getAnalyzerWithAsset:(id)asset forProfile:(id)profile
{
  assetCopy = asset;
  profileCopy = profile;
  v7 = [MEMORY[0x277D01958] decodeConfigFrom:assetCopy forFirstPassSource:0];
  if ([v7 useRecognizerCombination] && +[SSRUtils isMphVTUIKeywordDetectorSupportedPlatform](SSRUtils, "isMphVTUIKeywordDetectorSupportedPlatform"))
  {
    v8 = [[CSVoiceTriggerUserSelectedPhrase alloc] initWithEndpointId:0];
    v9 = MEMORY[0x277D018F8];
    locale = [profileCopy locale];
    if ([v9 supportsMphForLanguageCode:locale])
    {
      multiPhraseSelected = [(CSVoiceTriggerUserSelectedPhrase *)v8 multiPhraseSelected];
    }

    else
    {
      multiPhraseSelected = 0;
    }

    v12 = [[CSVTUITwoPassKeywordDetector alloc] initWithAsset:assetCopy supportMph:multiPhraseSelected];
  }

  else
  {
    v12 = [[CSVTUIKeywordDetector alloc] initWithAsset:assetCopy];
  }

  return v12;
}

- (void)_logEnrollmentUtteranceWithUtteranceId:(unint64_t)id mhUUID:(id)d locale:(id)locale phId:(unint64_t)phId
{
  dCopy = d;
  localeCopy = locale;
  mEMORY[0x277CEF360] = [MEMORY[0x277CEF360] sharedPreferences];
  siriDataSharingOptInStatus = [mEMORY[0x277CEF360] siriDataSharingOptInStatus];

  if (siriDataSharingOptInStatus == 1)
  {
    v12 = objc_alloc_init(MEMORY[0x277D5A6F8]);
    [v12 setPageNumber:id];
    [v12 setTriggerPhrase:{+[SSRUtils convertToSchemaEnumWithPhId:](SSRUtils, "convertToSchemaEnumWithPhId:", phId)}];
    v13 = [SSRUtils convertSchemaTypeWithLocale:localeCopy];
    [v12 setSiriInputLocale:v13];

    v14 = objc_alloc_init(MEMORY[0x277D5A698]);
    v15 = objc_alloc_init(MEMORY[0x277D5A6B0]);
    v16 = [objc_alloc(MEMORY[0x277D5AC70]) initWithNSUUID:dCopy];
    [v15 setSiriSetupId:v16];

    [v14 setEventMetadata:v15];
    [v14 setEnrollmentUtteranceDetected:v12];
    mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedStream];
    [mEMORY[0x277D552B8] emitMessage:v14];
  }
}

- (void)logEnrollmentUtterance:(id)utterance locale:(id)locale utteranceId:(unint64_t)id mhUUID:(id)d phId:(unint64_t)phId
{
  localeCopy = locale;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SSRVoiceProfileComposer_logEnrollmentUtterance_locale_utteranceId_mhUUID_phId___block_invoke;
  block[3] = &unk_278578350;
  block[4] = self;
  v17 = dCopy;
  v18 = localeCopy;
  idCopy = id;
  phIdCopy = phId;
  v14 = localeCopy;
  v15 = dCopy;
  dispatch_async(queue, block);
}

- (BOOL)addUtterance:(id)utterance toProfile:(id)profile withSecureAsset:(id)asset sessionUtteranceId:(id)id sessionMHUUID:(id)d phId:(unint64_t)phId
{
  v29 = *MEMORY[0x277D85DE8];
  utteranceCopy = utterance;
  profileCopy = profile;
  idCopy = id;
  dCopy = d;
  v18 = [(SSRVoiceProfileComposer *)self addUtterance:utteranceCopy toProfile:profileCopy withSecureAsset:asset error:0];
  if (idCopy && dCopy)
  {
    locale = [profileCopy locale];
    -[SSRVoiceProfileComposer logEnrollmentUtterance:locale:utteranceId:mhUUID:phId:](self, "logEnrollmentUtterance:locale:utteranceId:mhUUID:phId:", utteranceCopy, locale, [idCopy unsignedIntegerValue], dCopy, phId);
  }

  else
  {
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "[SSRVoiceProfileComposer addUtterance:toProfile:withSecureAsset:sessionUtteranceId:sessionMHUUID:phId:]";
      v25 = 2112;
      v26 = idCopy;
      v27 = 2112;
      v28 = dCopy;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s utteranceId or mhUUID passed in are nil - utteranceId: %@ mhUUID: %@", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)addUtterance:(id)utterance toProfile:(id)profile withAsset:(id)asset sessionUtteranceId:(id)id sessionMHUUID:(id)d phId:(unint64_t)phId
{
  v29 = *MEMORY[0x277D85DE8];
  utteranceCopy = utterance;
  profileCopy = profile;
  idCopy = id;
  dCopy = d;
  v18 = [(SSRVoiceProfileComposer *)self addUtterance:utteranceCopy toProfile:profileCopy withAsset:asset error:0];
  if (idCopy && dCopy)
  {
    locale = [profileCopy locale];
    -[SSRVoiceProfileComposer logEnrollmentUtterance:locale:utteranceId:mhUUID:phId:](self, "logEnrollmentUtterance:locale:utteranceId:mhUUID:phId:", utteranceCopy, locale, [idCopy unsignedIntegerValue], dCopy, phId);
  }

  else
  {
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "[SSRVoiceProfileComposer addUtterance:toProfile:withAsset:sessionUtteranceId:sessionMHUUID:phId:]";
      v25 = 2112;
      v26 = idCopy;
      v27 = 2112;
      v28 = dCopy;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s utteranceId or mhUUID passed in are nil - utteranceId: %@ mhUUID: %@", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)addUtterance:(id)utterance toProfile:(id)profile withSecureAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  profileCopy = profile;
  utteranceCopy = utterance;
  v13 = [(SSRVoiceProfileComposer *)self _getAnalyzerWithSecureAsset:assetCopy];
  [(SSRVoiceProfileComposer *)self _getPreTriggerAudioTimeFromSecureAsset:assetCopy];
  v15 = v14;

  LOBYTE(error) = [(SSRVoiceProfileComposer *)self _addUtteranceHelper:utteranceCopy toProfile:profileCopy withAnalyzer:v13 withPreTriggerAudioTime:error withError:v15];
  return error;
}

- (BOOL)addUtterance:(id)utterance toProfile:(id)profile withAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  profileCopy = profile;
  utteranceCopy = utterance;
  v13 = [(SSRVoiceProfileComposer *)self _getAnalyzerWithAsset:assetCopy forProfile:profileCopy];
  [(SSRVoiceProfileComposer *)self _getPreTriggerAudioTimeFromAsset:assetCopy];
  v15 = v14;

  LOBYTE(error) = [(SSRVoiceProfileComposer *)self _addUtteranceHelper:utteranceCopy toProfile:profileCopy withAnalyzer:v13 withPreTriggerAudioTime:error withError:v15];
  return error;
}

- (BOOL)addUtterance:(id)utterance toProfile:(id)profile
{
  v21 = *MEMORY[0x277D85DE8];
  utteranceCopy = utterance;
  profileCopy = profile;
  v8 = +[SSRAssetManager sharedManager];
  locale = [profileCopy locale];
  defaultFallBackAssetForVoiceTrigger = [v8 installedAssetOfType:0 forLanguage:locale];

  v11 = MEMORY[0x277D01970];
  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[SSRVoiceProfileComposer addUtterance:toProfile:]";
    v19 = 2114;
    v20 = defaultFallBackAssetForVoiceTrigger;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerAsset found: %{public}@", &v17, 0x16u);
  }

  if (!defaultFallBackAssetForVoiceTrigger)
  {
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[SSRVoiceProfileComposer addUtterance:toProfile:]";
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Cannot find voicetrigger asset from asset manager, let's fallback to asset in the framework", &v17, 0xCu);
    }

    defaultFallBackAssetForVoiceTrigger = [MEMORY[0x277D015F8] defaultFallBackAssetForVoiceTrigger];
  }

  v14 = [(SSRVoiceProfileComposer *)self addUtterance:utteranceCopy toProfile:profileCopy withAsset:defaultFallBackAssetForVoiceTrigger error:0];

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