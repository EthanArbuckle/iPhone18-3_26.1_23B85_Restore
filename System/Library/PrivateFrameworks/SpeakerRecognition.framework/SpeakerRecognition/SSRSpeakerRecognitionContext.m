@interface SSRSpeakerRecognitionContext
- (BOOL)_checkIfModelsPresentForProfiles:(id)a3 forSpIdType:(unint64_t)a4 forAsset:(id)a5;
- (NSDictionary)numEnrollmentUtterances;
- (SSRSpeakerRecognitionContext)initWithVoiceRecognitionContext:(id)a3 error:(id *)a4;
- (id)description;
- (id)pickAssetForProfiles:(id)a3 forSpIdType:(unint64_t)a4;
- (id)pickAssetForProfiles:(id)a3 forSpIdType:(unint64_t)a4 withAssetArray:(id)a5;
- (void)composeModelContextsForProfiles:(id)a3 forSpIdType:(unint64_t)a4 forAsset:(id)a5 completion:(id)a6;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
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
          v12 = [v8 profileID];
          [v3 setValue:v11 forKey:v12];
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)pickAssetForProfiles:(id)a3 forSpIdType:(unint64_t)a4 withAssetArray:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if ([v9 count])
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v9;
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
          if ([(SSRSpeakerRecognitionContext *)self _checkIfModelsPresentForProfiles:v8 forSpIdType:a4 forAsset:v16, v23])
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

      v18 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v18 postNotificationName:@"com.apple.voicetrigger.retrainRequired" object:0];
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

- (id)pickAssetForProfiles:(id)a3 forSpIdType:(unint64_t)a4
{
  v6 = a3;
  v7 = +[SSRAssetManager sharedManager];
  v8 = [v7 allInstalledAssetsOfType:3 forLanguage:self->_locale];

  v9 = [(SSRSpeakerRecognitionContext *)self pickAssetForProfiles:v6 forSpIdType:a4 withAssetArray:v8];

  return v9;
}

- (BOOL)_checkIfModelsPresentForProfiles:(id)a3 forSpIdType:(unint64_t)a4 forAsset:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
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

        v14 = [*(*(&v23 + 1) + 8 * i) voiceProfileModelFilePathForRecognizerType:1 spIdType:{a4, v23}];
        v15 = [v8 hashFromResourcePath];
        v16 = [v14 URLByAppendingPathComponent:v15];

        v17 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = [v16 path];
        v19 = [v17 fileExistsAtPath:v18];

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

- (void)composeModelContextsForProfiles:(id)a3 forSpIdType:(unint64_t)a4 forAsset:(id)a5 completion:(id)a6
{
  v109 = *MEMORY[0x277D85DE8];
  v81 = a3;
  v77 = a6;
  v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v80 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v10 = 1;
  v11 = 0x278577000uLL;
  v12 = 0x277D01000uLL;
  v82 = self;
  while ((v9 & 1) == 0 || self->_spIdType != 3)
  {
    v83 = v9;
    if (self->_asset && ([*(v12 + 2296) needRetrainingForExclaveOnly] & 1) == 0)
    {
      v13 = [*(v11 + 1160) satConfigFileNameForCSSpIdType:a4 forModelType:v10 forAssetType:{-[CSAsset assetProvider](self->_asset, "assetProvider")}];
      v14 = MEMORY[0x277CBEBC0];
      v15 = [(CSAsset *)self->_asset resourcePath];
      v16 = [v15 stringByAppendingPathComponent:v13];
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
    v95 = [(CSAsset *)self->_asset hashFromResourcePath];
    secureAsset = self->_secureAsset;
    v20 = v17;
    v94 = [*(v11 + 1160) getEmbeddingFileName:secureAsset];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = v81;
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
          v23 = [v22 voiceProfileModelFilePathForRecognizerType:v10 spIdType:a4];
          if (v23)
          {
            v24 = v95 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24 && ([*(v12 + 2296) needRetrainingForExclaveOnly] & 1) == 0)
          {
            v25 = [v23 URLByAppendingPathComponent:v95];

            v26 = [v22 profileID];
            [v20 setValue:v25 forKey:v26];

            v23 = v25;
          }

          v27 = [v22 exclaveVoiceProfileModelFilePathForRecognizerType:v10 spIdType:a4];
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

            v31 = [v22 profileID];
            [v18 setValue:v30 forKey:v31];

            v28 = v30;
          }

          v32 = [v22 voiceProfileModelFilePathForRecognizerType:v10 spIdType:{objc_msgSend(*(v11 + 1160), "explicitSpIdTypeForSpId:", a4)}];
          if (v32)
          {
            v33 = v95 == 0;
          }

          else
          {
            v33 = 1;
          }

          if (!v33 && ([*(v12 + 2296) needRetrainingForExclaveOnly] & 1) == 0)
          {
            v34 = [v32 URLByAppendingPathComponent:v95];

            v35 = [v22 profileID];
            [v85 setValue:v34 forKey:v35];

            v32 = v34;
          }

          v36 = [v22 exclaveVoiceProfileModelFilePathForRecognizerType:v10 spIdType:{objc_msgSend(*(v11 + 1160), "explicitSpIdTypeForSpId:", a4)}];
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
            v41 = a4;
            v43 = v42 = v11;

            v44 = [v22 profileID];
            [v86 setValue:v43 forKey:v44];

            v37 = v43;
            v11 = v42;
            a4 = v41;
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
    v46 = [v84 path];
    if ([v80 fileExistsAtPath:v46])
    {
    }

    else
    {
      v47 = [*(v12 + 2296) needRetrainingForExclaveOnly];

      if ((v47 & 1) == 0)
      {
        v61 = *MEMORY[0x277D01970];
        v59 = v86;
        v60 = v87;
        v50 = v90;
        v54 = v85;
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v62 = *(v11 + 1160);
          spIdType = v82->_spIdType;
          v64 = v61;
          v65 = [v62 stringForCSSpIdType:spIdType];
          v66 = [*(v11 + 1160) stringForSpeakerRecognizerType:v10];
          v67 = [v84 path];
          *buf = 136315906;
          v102 = "[SSRSpeakerRecognitionContext composeModelContextsForProfiles:forSpIdType:forAsset:completion:]";
          v103 = 2114;
          v104 = v65;
          v105 = 2114;
          v106 = v66;
          v107 = 2114;
          v108 = v67;
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
    self = v82;
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
  if (v77)
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

    v77[2](v77, v74, v75);
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

- (SSRSpeakerRecognitionContext)initWithVoiceRecognitionContext:(id)a3 error:(id *)a4
{
  v151 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
  v10 = [(CSAsset *)v7->_asset configVersion];
  v11 = [(SSRLoggingAggregator *)v8 initWithEvent:@"recognition" locale:locale configVersion:v10];
  logAggregator = v7->_logAggregator;
  v7->_logAggregator = v11;

  v13 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionEndpointId"];
  if (v13)
  {
    v14 = v13;
    v15 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionEndpointId"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionEndpointId"];
      endpointUUID = v7->_endpointUUID;
      v7->_endpointUUID = v17;

      v19 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
      {
        v20 = v7->_endpointUUID;
        v21 = v19;
        v22 = [(NSUUID *)v20 UUIDString];
        *buf = 136315394;
        v148 = "[SSRSpeakerRecognitionContext initWithVoiceRecognitionContext:error:]";
        v149 = 2114;
        v150 = v22;
        _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_INFO, "%s endpointUUID: %{public}@", buf, 0x16u);
      }
    }
  }

  v23 = [MEMORY[0x277D01788] sharedPreferences];
  v24 = [v23 isSpeakerRecognitionAvailable];

  if ((v24 & 1) == 0)
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
      if (!a4)
      {
        goto LABEL_16;
      }
    }

    else if (!a4)
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
    *a4 = [v34 errorWithDomain:@"com.apple.speakerrecognition" code:752 userInfo:v35];

    goto LABEL_16;
  }

  v7->_recognitionStyle = 0;
  v25 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionStyle"];

  if (!v25 || ([v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionStyle"], v26 = objc_claimAutoreleasedReturnValue(), v7->_recognitionStyle = objc_msgSend(v26, "intValue"), v26, v7->_recognitionStyle < 3))
  {
    v37 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionLocale"];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
      v40 = v7->_locale;
      v7->_locale = v39;
    }

    else
    {
      v41 = MEMORY[0x277D018F8];
      v40 = [(NSUUID *)v7->_endpointUUID UUIDString];
      v42 = [v41 getSiriLanguageWithEndpointId:v40 fallbackLanguage:0];
      v43 = v7->_locale;
      v7->_locale = v42;
    }

    v44 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionVTEventInfo"];
    if (v44)
    {
      v45 = v44;
      v46 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionVTEventInfo"];
      objc_opt_class();
      v47 = objc_opt_isKindOfClass();

      if (v47)
      {
        v44 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionVTEventInfo"];
      }

      else
      {
        v44 = 0;
      }
    }

    vtEventInfo = v7->_vtEventInfo;
    v7->_vtEventInfo = v44;

    v49 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionProfileArray"];

    if (v49)
    {
      v50 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionProfileArray"];
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

    v54 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionMaxAudioSecs"];

    if (v54)
    {
      v55 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionMaxAudioSecs"];
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

    v60 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionAsset"];

    if (v60)
    {
      v61 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionAsset"];
    }

    else
    {
      v77 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionAssetArray"];

      if (v77)
      {
        v62 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionAssetArray"];
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
          v67 = [(CSAsset *)v66 configVersion];
          configVersion = v7->_configVersion;
          v7->_configVersion = v67;

          [(CSAsset *)v7->_asset psrCombinationWeight];
          v7->_combinationWeight = v69;
          v70 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionUsePayloadProfile"];
          if (v70 && (v71 = v70, [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionUsePayloadProfile"], v72 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v73 = objc_opt_isKindOfClass(), v72, v71, (v73 & 1) != 0))
          {
            v74 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionUsePayloadProfile"];
            v75 = [v74 BOOLValue];

            if ((v75 & 1) == 0)
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
                v98 = [(CSAsset *)v7->_asset resourcePath];
                v99 = [v97 URLWithString:v98];
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

                  v105 = [MEMORY[0x277D01788] sharedPreferences];
                  v104->_scoreType = [v105 speakerIdScoreReportingType];

                  v106 = [MEMORY[0x277CCAD78] UUID];
                  v107 = [v106 UUIDString];
                  sessionId = v104->_sessionId;
                  v104->_sessionId = v107;

                  v109 = +[SSRUtils ssrAudioLogsDir];
                  v110 = MEMORY[0x277CCACA8];
                  v111 = [SSRUtils stringForInvocationStyle:v7->_recognitionStyle];
                  v112 = [SSRUtils stringForCSSpIdType:v7->_spIdType];
                  v113 = [v110 stringWithFormat:@"%@_%@_%@", v111, v112, v104->_sessionId, v131, v132, v133, v134];

                  v114 = [v113 stringByAppendingPathExtension:@"wav"];
                  v115 = [v109 stringByAppendingPathComponent:v114];
                  debugUtteranceAudioFile = v104->_debugUtteranceAudioFile;
                  v104->_debugUtteranceAudioFile = v115;

                  v117 = [v113 stringByAppendingPathExtension:@"json"];
                  v118 = [v109 stringByAppendingPathComponent:v117];
                  debugUtteranceMetaFile = v104->_debugUtteranceMetaFile;
                  v104->_debugUtteranceMetaFile = v118;

                  v104->_osTransactionReqd = 1;
                  v120 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionOSTransactionReqd"];

                  if (v120)
                  {
                    v121 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionOSTransactionReqd"];
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
                  if (!a4)
                  {
                    goto LABEL_77;
                  }
                }

                else if (!a4)
                {
LABEL_77:
                  [(SSRLoggingAggregator *)v7->_logAggregator setSpeakerRecognitionProcessingStatus:713];

                  goto LABEL_18;
                }

                v126 = MEMORY[0x277CCA9B8];
                v137 = @"reason";
                v138 = v124;
                v127 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
                *a4 = [v126 errorWithDomain:@"com.apple.speakerrecognition" code:713 userInfo:v127];

                goto LABEL_77;
              }

              v88 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionVADAssetPath"];

              if (v88)
              {
                v89 = MEMORY[0x277D015F8];
                v90 = [v6 objectForKeyedSubscript:@"SSRSpeakerRecognitionVADAssetPath"];
                v91 = [v89 assetForAssetType:1 resourcePath:v90 configVersion:@"SSR"];

                v92 = [v91 path];
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
                v92 = [v94 path];
              }

              if (v92)
              {
                v95 = [MEMORY[0x277CBEBC0] fileURLWithPath:v92];
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
                if (!a4)
                {
                  goto LABEL_82;
                }
              }

              else if (!a4)
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
              *a4 = [v129 errorWithDomain:@"com.apple.speakerrecognition" code:107 userInfo:v130];

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
          if (!a4)
          {
            goto LABEL_55;
          }
        }

        else if (!a4)
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
        *a4 = [v86 errorWithDomain:@"com.apple.speakerrecognition" code:107 userInfo:v87];

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
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a4)
  {
LABEL_11:
    v29 = MEMORY[0x277CCA9B8];
    v143 = @"reason";
    v144 = v27;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
    *a4 = [v29 errorWithDomain:@"com.apple.speakerrecognition" code:109 userInfo:v30];
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