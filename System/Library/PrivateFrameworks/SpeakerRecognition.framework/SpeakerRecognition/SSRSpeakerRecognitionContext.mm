@interface SSRSpeakerRecognitionContext
- (BOOL)_checkIfModelsPresentForProfiles:(id)profiles forSpIdType:(unint64_t)type forAsset:(id)asset;
- (NSDictionary)numEnrollmentUtterances;
- (SSRSpeakerRecognitionContext)initWithVoiceRecognitionContext:(id)context error:(id *)error;
- (id)description;
- (id)pickAssetForProfiles:(id)profiles forSpIdType:(unint64_t)type;
- (id)pickAssetForProfiles:(id)profiles forSpIdType:(unint64_t)type withAssetArray:(id)array;
- (void)composeModelContextsForProfiles:(id)profiles forSpIdType:(unint64_t)type forAsset:(id)asset completion:(id)completion;
- (void)dealloc;
@end

@implementation SSRSpeakerRecognitionContext

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SSRSpeakerRecognitionContext dealloc]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = SSRSpeakerRecognitionContext;
  [(SSRSpeakerRecognitionContext *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)numEnrollmentUtterances
{
  v21 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((CSIsCommunalDevice() & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = self->_voiceProfileArray;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = [v8 voiceProfileAudioDirPathForSpidType:self->_spIdType];
          v10 = [SSRUtils getNumberOfAudioFilesInDirectory:v9];
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
          profileID = [v8 profileID];
          [dictionary setValue:v11 forKey:profileID];
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)pickAssetForProfiles:(id)profiles forSpIdType:(unint64_t)type withAssetArray:(id)array
{
  v32 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v10 = [arrayCopy objectAtIndexedSubscript:0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = arrayCopy;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          if ([(SSRSpeakerRecognitionContext *)self _checkIfModelsPresentForProfiles:profilesCopy forSpIdType:type forAsset:v16, v23])
          {
            v19 = v16;

            goto LABEL_19;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    if (CSIsCommunalDevice())
    {
      v17 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "[SSRSpeakerRecognitionContext pickAssetForProfiles:forSpIdType:withAssetArray:]";
        v30 = 2112;
        v31 = v10;
        _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s ERR: triggering profile retrain for asset %{publiic}@", buf, 0x16u);
      }

      defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter postNotificationName:@"com.apple.voicetrigger.retrainRequired" object:0];
    }

    v10 = v10;
    v19 = v10;
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Last known assets are nil - Bailing out"];
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[SSRSpeakerRecognitionContext pickAssetForProfiles:forSpIdType:withAssetArray:]";
      v30 = 2114;
      v31 = v10;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v19 = 0;
  }

LABEL_19:

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)pickAssetForProfiles:(id)profiles forSpIdType:(unint64_t)type
{
  profilesCopy = profiles;
  v7 = +[SSRAssetManager sharedManager];
  v8 = [v7 allInstalledAssetsOfType:3 forLanguage:self->_locale];

  v9 = [(SSRSpeakerRecognitionContext *)self pickAssetForProfiles:profilesCopy forSpIdType:type withAssetArray:v8];

  return v9;
}

- (BOOL)_checkIfModelsPresentForProfiles:(id)profiles forSpIdType:(unint64_t)type forAsset:(id)asset
{
  v28 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  assetCopy = asset;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = profilesCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v23 + 1) + 8 * i) voiceProfileModelFilePathForRecognizerType:1 spIdType:{type, v23}];
        hashFromResourcePath = [assetCopy hashFromResourcePath];
        v16 = [v14 URLByAppendingPathComponent:hashFromResourcePath];

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        path = [v16 path];
        v19 = [defaultManager fileExistsAtPath:path];

        if (!v19)
        {
          v20 = 0;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)composeModelContextsForProfiles:(id)profiles forSpIdType:(unint64_t)type forAsset:(id)asset completion:(id)completion
{
  v109 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  completionCopy = completion;
  v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v10 = 1;
  v11 = 0x278577000uLL;
  v12 = 0x277D01000uLL;
  selfCopy = self;
  while ((v9 & 1) == 0 || self->_spIdType != 3)
  {
    v83 = v9;
    if (self->_asset && ([*(v12 + 2296) needRetrainingForExclaveOnly] & 1) == 0)
    {
      v13 = [*(v11 + 1160) satConfigFileNameForCSSpIdType:type forModelType:v10 forAssetType:{-[CSAsset assetProvider](self->_asset, "assetProvider")}];
      v14 = MEMORY[0x277CBEBC0];
      resourcePath = [(CSAsset *)self->_asset resourcePath];
      v16 = [resourcePath stringByAppendingPathComponent:v13];
      v84 = [v14 URLWithString:v16];
    }

    else
    {
      v84 = 0;
    }

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v85 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v86 = objc_alloc_init(MEMORY[0x277CBEB38]);
    hashFromResourcePath = [(CSAsset *)self->_asset hashFromResourcePath];
    secureAsset = self->_secureAsset;
    v20 = v17;
    v94 = [*(v11 + 1160) getEmbeddingFileName:secureAsset];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = profilesCopy;
    v87 = v17;
    v90 = v18;
    v91 = [obj countByEnumeratingWithState:&v96 objects:v100 count:16];
    if (v91)
    {
      v89 = *v97;
      do
      {
        for (i = 0; i != v91; ++i)
        {
          if (*v97 != v89)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v96 + 1) + 8 * i);
          v23 = [v22 voiceProfileModelFilePathForRecognizerType:v10 spIdType:type];
          if (v23)
          {
            v24 = hashFromResourcePath == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24 && ([*(v12 + 2296) needRetrainingForExclaveOnly] & 1) == 0)
          {
            v25 = [v23 URLByAppendingPathComponent:hashFromResourcePath];

            profileID = [v22 profileID];
            [v20 setValue:v25 forKey:profileID];

            v23 = v25;
          }

          v27 = [v22 exclaveVoiceProfileModelFilePathForRecognizerType:v10 spIdType:type];
          v28 = v27;
          if (v27)
          {
            v29 = v94 == 0;
          }

          else
          {
            v29 = 1;
          }

          v92 = v23;
          if (!v29)
          {
            v30 = [v27 URLByAppendingPathComponent:?];

            profileID2 = [v22 profileID];
            [v18 setValue:v30 forKey:profileID2];

            v28 = v30;
          }

          v32 = [v22 voiceProfileModelFilePathForRecognizerType:v10 spIdType:{objc_msgSend(*(v11 + 1160), "explicitSpIdTypeForSpId:", type)}];
          if (v32)
          {
            v33 = hashFromResourcePath == 0;
          }

          else
          {
            v33 = 1;
          }

          if (!v33 && ([*(v12 + 2296) needRetrainingForExclaveOnly] & 1) == 0)
          {
            v34 = [v32 URLByAppendingPathComponent:hashFromResourcePath];

            profileID3 = [v22 profileID];
            [v85 setValue:v34 forKey:profileID3];

            v32 = v34;
          }

          v36 = [v22 exclaveVoiceProfileModelFilePathForRecognizerType:v10 spIdType:{objc_msgSend(*(v11 + 1160), "explicitSpIdTypeForSpId:", type)}];
          v37 = v36;
          if (v36)
          {
            v38 = v94 == 0;
          }

          else
          {
            v38 = 1;
          }

          if (!v38)
          {
            [v36 URLByAppendingPathComponent:?];
            v39 = v10;
            v40 = v12;
            typeCopy = type;
            v43 = v42 = v11;

            profileID4 = [v22 profileID];
            [v86 setValue:v43 forKey:profileID4];

            v37 = v43;
            v11 = v42;
            type = typeCopy;
            v12 = v40;
            v10 = v39;
            v20 = v87;
          }

          v18 = v90;
        }

        v91 = [obj countByEnumeratingWithState:&v96 objects:v100 count:16];
      }

      while (v91);
    }

    v45 = v84;
    path = [v84 path];
    if ([defaultManager fileExistsAtPath:path])
    {
    }

    else
    {
      needRetrainingForExclaveOnly = [*(v12 + 2296) needRetrainingForExclaveOnly];

      if ((needRetrainingForExclaveOnly & 1) == 0)
      {
        v61 = *MEMORY[0x277D01970];
        v59 = v86;
        v60 = v87;
        v50 = v90;
        v54 = v85;
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v62 = *(v11 + 1160);
          spIdType = selfCopy->_spIdType;
          v64 = v61;
          v65 = [v62 stringForCSSpIdType:spIdType];
          v66 = [*(v11 + 1160) stringForSpeakerRecognizerType:v10];
          path2 = [v84 path];
          *buf = 136315906;
          v102 = "[SSRSpeakerRecognitionContext composeModelContextsForProfiles:forSpIdType:forAsset:completion:]";
          v103 = 2114;
          v104 = v65;
          v105 = 2114;
          v106 = v66;
          v107 = 2114;
          v108 = path2;
          _os_log_impl(&dword_225E12000, v64, OS_LOG_TYPE_DEFAULT, "%s Skipping Model {%{public}@, %{public}@} as file doesnt exist at %{public}@", buf, 0x2Au);

          v45 = v84;
          v59 = v86;
          v54 = v85;
          v60 = v87;
        }

        goto LABEL_53;
      }
    }

    v48 = [SSRSpeakerRecognitionModelContext alloc];
    if ([v87 count])
    {
      v49 = v87;
    }

    else
    {
      v49 = 0;
    }

    v50 = v90;
    if ([v90 count])
    {
      v51 = v90;
    }

    else
    {
      v51 = 0;
    }

    v93 = [(SSRSpeakerRecognitionModelContext *)v48 initWithConfigFilePath:v84 withModelFilePaths:v49 withModelFilePathsExclave:v51];
    v52 = [*(v11 + 1160) stringForSpeakerRecognizerType:v10];
    [v79 setValue:v93 forKey:v52];

    v53 = [SSRSpeakerRecognitionModelContext alloc];
    v54 = v85;
    if ([v85 count])
    {
      v55 = v85;
    }

    else
    {
      v55 = 0;
    }

    if ([v86 count])
    {
      v56 = v86;
    }

    else
    {
      v56 = 0;
    }

    v57 = [(SSRSpeakerRecognitionModelContext *)v53 initWithConfigFilePath:v84 withModelFilePaths:v55 withModelFilePathsExclave:v56];
    v58 = [*(v11 + 1160) stringForSpeakerRecognizerType:v10];
    [v78 setValue:v57 forKey:v58];

    v45 = v84;
    v59 = v86;
    v60 = v87;

LABEL_53:
    v9 = 1;
    v10 = 2;
    self = selfCopy;
    if (v83)
    {
      goto LABEL_59;
    }
  }

  v68 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v69 = *(v11 + 1160);
    v70 = v68;
    v71 = [v69 stringForCSSpIdType:3];
    v72 = [*(v11 + 1160) stringForSpeakerRecognizerType:2];
    locale = self->_locale;
    *buf = 136315906;
    v102 = "[SSRSpeakerRecognitionContext composeModelContextsForProfiles:forSpIdType:forAsset:completion:]";
    v103 = 2114;
    v104 = v71;
    v105 = 2114;
    v106 = v72;
    v107 = 2114;
    v108 = locale;
    _os_log_impl(&dword_225E12000, v70, OS_LOG_TYPE_DEFAULT, "%s Skipping Model {%{public}@, %{public}@} for %{public}@", buf, 0x2Au);
  }

LABEL_59:
  if (completionCopy)
  {
    if ([v79 count])
    {
      v74 = v79;
    }

    else
    {
      v74 = 0;
    }

    if ([v78 count])
    {
      v75 = v78;
    }

    else
    {
      v75 = 0;
    }

    completionCopy[2](completionCopy, v74, v75);
  }

  v76 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionId = self->_sessionId;
  recognitionStyle = self->_recognitionStyle;
  v6 = [SSRUtils stringForInvocationStyle:recognitionStyle];
  asset = self->_asset;
  v8 = [v3 stringWithFormat:@"[SessionId: %@, RecognitionStyle:(%lu)%@, Asset: %@, vtEventInfo: %@]", sessionId, recognitionStyle, v6, asset, self->_vtEventInfo];

  return v8;
}

- (SSRSpeakerRecognitionContext)initWithVoiceRecognitionContext:(id)context error:(id *)error
{
  v151 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v136.receiver = self;
  v136.super_class = SSRSpeakerRecognitionContext;
  v7 = [(SSRSpeakerRecognitionContext *)&v136 init];
  if (!v7)
  {
LABEL_72:
    v36 = v7;
    goto LABEL_73;
  }

  v8 = [SSRLoggingAggregator alloc];
  locale = v7->_locale;
  configVersion = [(CSAsset *)v7->_asset configVersion];
  v11 = [(SSRLoggingAggregator *)v8 initWithEvent:@"recognition" locale:locale configVersion:configVersion];
  logAggregator = v7->_logAggregator;
  v7->_logAggregator = v11;

  v13 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionEndpointId"];
  if (v13)
  {
    v14 = v13;
    v15 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionEndpointId"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionEndpointId"];
      endpointUUID = v7->_endpointUUID;
      v7->_endpointUUID = v17;

      v19 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
      {
        v20 = v7->_endpointUUID;
        v21 = v19;
        uUIDString = [(NSUUID *)v20 UUIDString];
        *buf = 136315394;
        v148 = "[SSRSpeakerRecognitionContext initWithVoiceRecognitionContext:error:]";
        v149 = 2114;
        v150 = uUIDString;
        _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_INFO, "%s endpointUUID: %{public}@", buf, 0x16u);
      }
    }
  }

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isSpeakerRecognitionAvailable = [mEMORY[0x277D01788] isSpeakerRecognitionAvailable];

  if ((isSpeakerRecognitionAvailable & 1) == 0)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: SpeakerRecognition not enabled - Bailing out"];
    v33 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v148 = "[SSRSpeakerRecognitionContext initWithVoiceRecognitionContext:error:]";
      v149 = 2114;
      v150 = v27;
      _os_log_error_impl(&dword_225E12000, v33, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      if (!error)
      {
        goto LABEL_16;
      }
    }

    else if (!error)
    {
LABEL_16:
      v31 = v7->_logAggregator;
      v32 = 752;
      goto LABEL_17;
    }

    v34 = MEMORY[0x277CCA9B8];
    v145 = @"reason";
    v146 = v27;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
    *error = [v34 errorWithDomain:@"com.apple.speakerrecognition" code:752 userInfo:v35];

    goto LABEL_16;
  }

  v7->_recognitionStyle = 0;
  v25 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionStyle"];

  if (!v25 || ([contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionStyle"], v26 = objc_claimAutoreleasedReturnValue(), v7->_recognitionStyle = objc_msgSend(v26, "intValue"), v26, v7->_recognitionStyle < 3))
  {
    v37 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionLocale"];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
      uUIDString2 = v7->_locale;
      v7->_locale = v39;
    }

    else
    {
      v41 = MEMORY[0x277D018F8];
      uUIDString2 = [(NSUUID *)v7->_endpointUUID UUIDString];
      v42 = [v41 getSiriLanguageWithEndpointId:uUIDString2 fallbackLanguage:0];
      v43 = v7->_locale;
      v7->_locale = v42;
    }

    v44 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionVTEventInfo"];
    if (v44)
    {
      v45 = v44;
      v46 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionVTEventInfo"];
      objc_opt_class();
      v47 = objc_opt_isKindOfClass();

      if (v47)
      {
        v44 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionVTEventInfo"];
      }

      else
      {
        v44 = 0;
      }
    }

    vtEventInfo = v7->_vtEventInfo;
    v7->_vtEventInfo = v44;

    v49 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionProfileArray"];

    if (v49)
    {
      v50 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionProfileArray"];
      voiceProfileArray = v7->_voiceProfileArray;
      v7->_voiceProfileArray = v50;
    }

    else
    {
      voiceProfileArray = +[SSRVoiceProfileStore sharedInstance];
      v52 = [voiceProfileArray userVoiceProfilesForAppDomain:@"com.apple.siri" forLocale:v7->_locale];
      v53 = v7->_voiceProfileArray;
      v7->_voiceProfileArray = v52;
    }

    v54 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionMaxAudioSecs"];

    if (v54)
    {
      v55 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionMaxAudioSecs"];
      [v55 floatValue];
      v57 = v56;
      [MEMORY[0x277D016E0] inputRecordingSampleRate];
      v7->_maxAllowedAudioSamples = (v57 * v58);
    }

    else
    {
      [MEMORY[0x277D016E0] inputRecordingSampleRate];
      v7->_maxAllowedAudioSamples = (v59 * 1000.0);
    }

    v60 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionAsset"];

    if (v60)
    {
      v61 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionAsset"];
    }

    else
    {
      v77 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionAssetArray"];

      if (v77)
      {
        v62 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionAssetArray"];
        v78 = [(SSRSpeakerRecognitionContext *)v7 pickAssetForProfiles:v7->_voiceProfileArray forSpIdType:v7->_spIdType withAssetArray:v62];
        asset = v7->_asset;
        v7->_asset = v78;

        if (!v7->_asset)
        {
          v80 = [(SSRSpeakerRecognitionContext *)v7 pickAssetForProfiles:v7->_voiceProfileArray forSpIdType:v7->_spIdType];
          v81 = v7->_asset;
          v7->_asset = v80;
        }

LABEL_35:

        if ([MEMORY[0x277D018F8] supportsSecureAssetForSpeakerRecognition])
        {
          v63 = objc_alloc_init(SSRSecureAssetProvider);
          v64 = [(SSRSecureAssetProvider *)v63 fetchSecureAssetForLocale:v7->_locale withAsset:v7->_asset];
          secureAsset = v7->_secureAsset;
          v7->_secureAsset = v64;
        }

        v66 = v7->_asset;
        if (v66 || v7->_secureAsset)
        {
          configVersion2 = [(CSAsset *)v66 configVersion];
          configVersion = v7->_configVersion;
          v7->_configVersion = configVersion2;

          [(CSAsset *)v7->_asset psrCombinationWeight];
          v7->_combinationWeight = v69;
          v70 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionUsePayloadProfile"];
          if (v70 && (v71 = v70, [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionUsePayloadProfile"], v72 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v73 = objc_opt_isKindOfClass(), v72, v71, (v73 & 1) != 0))
          {
            v74 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionUsePayloadProfile"];
            bOOLValue = [v74 BOOLValue];

            if ((bOOLValue & 1) == 0)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v76 = v7->_asset;
            if (!CSIsCommunalDevice())
            {
              if (CSIsIOS() & 1) != 0 || (CSIsAppleSiliconMac())
              {
                [(CSAsset *)v76 psrCombinationWeight];
                v83 = (v82 == 1.0) & [(CSAsset *)v76 useTDTIEnrollment];

                if (v83 == 1)
                {
                  goto LABEL_51;
                }
              }

              else
              {
              }

LABEL_60:
              v84 = 1;
LABEL_61:
              v7->_spIdType = v84;
              if (v7->_recognitionStyle != 2)
              {
LABEL_68:
                v97 = MEMORY[0x277CBEBC0];
                resourcePath = [(CSAsset *)v7->_asset resourcePath];
                v99 = [v97 URLWithString:resourcePath];
                resourceFilePath = v7->_resourceFilePath;
                v7->_resourceFilePath = v99;

                v101 = v7->_voiceProfileArray;
                spIdType = v7->_spIdType;
                v103 = v7->_asset;
                v131 = MEMORY[0x277D85DD0];
                v132 = 3221225472;
                v133 = __70__SSRSpeakerRecognitionContext_initWithVoiceRecognitionContext_error___block_invoke;
                v134 = &unk_2785798F0;
                v104 = v7;
                v135 = v104;
                [(SSRSpeakerRecognitionContext *)v104 composeModelContextsForProfiles:v101 forSpIdType:spIdType forAsset:v103 completion:&v131];
                if (v104->_modelsContext || ([MEMORY[0x277D018F8] needRetrainingForExclaveOnly] & 1) != 0)
                {

                  mEMORY[0x277D01788]2 = [MEMORY[0x277D01788] sharedPreferences];
                  v104->_scoreType = [mEMORY[0x277D01788]2 speakerIdScoreReportingType];

                  uUID = [MEMORY[0x277CCAD78] UUID];
                  uUIDString3 = [uUID UUIDString];
                  sessionId = v104->_sessionId;
                  v104->_sessionId = uUIDString3;

                  v109 = +[SSRUtils ssrAudioLogsDir];
                  v110 = MEMORY[0x277CCACA8];
                  v111 = [SSRUtils stringForInvocationStyle:v7->_recognitionStyle];
                  v112 = [SSRUtils stringForCSSpIdType:v7->_spIdType];
                  v134 = [v110 stringWithFormat:@"%@_%@_%@", v111, v112, v104->_sessionId, v131, v132, v133, v134];

                  v114 = [v134 stringByAppendingPathExtension:@"wav"];
                  v115 = [v109 stringByAppendingPathComponent:v114];
                  debugUtteranceAudioFile = v104->_debugUtteranceAudioFile;
                  v104->_debugUtteranceAudioFile = v115;

                  v117 = [v134 stringByAppendingPathExtension:@"json"];
                  v118 = [v109 stringByAppendingPathComponent:v117];
                  debugUtteranceMetaFile = v104->_debugUtteranceMetaFile;
                  v104->_debugUtteranceMetaFile = v118;

                  v104->_osTransactionReqd = 1;
                  v120 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionOSTransactionReqd"];

                  if (v120)
                  {
                    v121 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionOSTransactionReqd"];
                    v104->_osTransactionReqd = [v121 BOOLValue];
                  }

                  goto LABEL_72;
                }

                v124 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: ModelsContext is nil for locale %@ - Bailing out", v7->_locale];
                v125 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v148 = "[SSRSpeakerRecognitionContext initWithVoiceRecognitionContext:error:]";
                  v149 = 2114;
                  v150 = v124;
                  _os_log_error_impl(&dword_225E12000, v125, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
                  if (!error)
                  {
                    goto LABEL_77;
                  }
                }

                else if (!error)
                {
LABEL_77:
                  [(SSRLoggingAggregator *)v7->_logAggregator setSpeakerRecognitionProcessingStatus:713];

                  goto LABEL_18;
                }

                v126 = MEMORY[0x277CCA9B8];
                v137 = @"reason";
                v138 = v124;
                v127 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
                *error = [v126 errorWithDomain:@"com.apple.speakerrecognition" code:713 userInfo:v127];

                goto LABEL_77;
              }

              v88 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionVADAssetPath"];

              if (v88)
              {
                v89 = MEMORY[0x277D015F8];
                v90 = [contextCopy objectForKeyedSubscript:@"SSRSpeakerRecognitionVADAssetPath"];
                v91 = [v89 assetForAssetType:1 resourcePath:v90 configVersion:@"SSR"];

                path = [v91 path];
              }

              else
              {
                v93 = +[SSRAssetManager sharedManager];
                v91 = [v93 allInstalledAssetsOfType:1 forLanguage:v7->_locale];

                if (![v91 count])
                {

                  goto LABEL_79;
                }

                v94 = [v91 objectAtIndexedSubscript:0];
                path = [v94 path];
              }

              if (path)
              {
                v95 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
                vadResourcePath = v7->_vadResourcePath;
                v7->_vadResourcePath = v95;

                goto LABEL_68;
              }

LABEL_79:
              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Endpointer Asset not picked - Bailing out"];
              v128 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v148 = "[SSRSpeakerRecognitionContext initWithVoiceRecognitionContext:error:]";
                v149 = 2114;
                v150 = v27;
                _os_log_error_impl(&dword_225E12000, v128, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
                if (!error)
                {
                  goto LABEL_82;
                }
              }

              else if (!error)
              {
LABEL_82:
                v31 = v7->_logAggregator;
                v32 = 108;
                goto LABEL_17;
              }

              v129 = MEMORY[0x277CCA9B8];
              v139 = @"reason";
              v140 = v27;
              v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
              *error = [v129 errorWithDomain:@"com.apple.speakerrecognition" code:107 userInfo:v130];

              goto LABEL_82;
            }
          }

LABEL_51:
          v84 = 3;
          goto LABEL_61;
        }

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Asset not picked - Bailing out"];
        v85 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v148 = "[SSRSpeakerRecognitionContext initWithVoiceRecognitionContext:error:]";
          v149 = 2114;
          v150 = v27;
          _os_log_error_impl(&dword_225E12000, v85, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
          if (!error)
          {
            goto LABEL_55;
          }
        }

        else if (!error)
        {
LABEL_55:
          v31 = v7->_logAggregator;
          v32 = 107;
          goto LABEL_17;
        }

        v86 = MEMORY[0x277CCA9B8];
        v141 = @"reason";
        v142 = v27;
        v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
        *error = [v86 errorWithDomain:@"com.apple.speakerrecognition" code:107 userInfo:v87];

        goto LABEL_55;
      }

      v61 = [(SSRSpeakerRecognitionContext *)v7 pickAssetForProfiles:v7->_voiceProfileArray forSpIdType:v7->_spIdType];
    }

    v62 = v7->_asset;
    v7->_asset = v61;
    goto LABEL_35;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Invalid Speaker Recognition style - Bailing out"];
  v28 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v148 = "[SSRSpeakerRecognitionContext initWithVoiceRecognitionContext:error:]";
    v149 = 2114;
    v150 = v27;
    _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (error)
  {
LABEL_11:
    v29 = MEMORY[0x277CCA9B8];
    v143 = @"reason";
    v144 = v27;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
    *error = [v29 errorWithDomain:@"com.apple.speakerrecognition" code:109 userInfo:v30];
  }

LABEL_12:
  v31 = v7->_logAggregator;
  v32 = 109;
LABEL_17:
  [(SSRLoggingAggregator *)v31 setSpeakerRecognitionProcessingStatus:v32];

LABEL_18:
  v36 = 0;
LABEL_73:

  v122 = *MEMORY[0x277D85DE8];
  return v36;
}

void __70__SSRSpeakerRecognitionContext_initWithVoiceRecognitionContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 128);
  *(v7 + 128) = v5;
  v11 = v5;

  v9 = *(a1 + 32);
  v10 = *(v9 + 136);
  *(v9 + 136) = v6;
}

@end