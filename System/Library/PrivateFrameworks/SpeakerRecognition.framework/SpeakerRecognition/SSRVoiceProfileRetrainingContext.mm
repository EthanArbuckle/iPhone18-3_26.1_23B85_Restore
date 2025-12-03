@interface SSRVoiceProfileRetrainingContext
- (SSRVoiceProfileRetrainingContext)initWithVoiceRetrainingContext:(id)context skipClassTypeValidate:(BOOL)validate error:(id *)error;
- (id)description;
@end

@implementation SSRVoiceProfileRetrainingContext

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  sessionId = self->_sessionId;
  asset = self->_asset;
  profileID = [(SSRVoiceProfile *)self->_voiceProfile profileID];
  v6 = [v2 stringWithFormat:@"[SessionId: %@, Asset: %@, ProfileID: %@]", sessionId, asset, profileID];

  return v6;
}

- (SSRVoiceProfileRetrainingContext)initWithVoiceRetrainingContext:(id)context skipClassTypeValidate:(BOOL)validate error:(id *)error
{
  v150[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v131.receiver = self;
  v131.super_class = SSRVoiceProfileRetrainingContext;
  v7 = [(SSRVoiceProfileRetrainingContext *)&v131 init];
  if (!v7)
  {
    goto LABEL_96;
  }

  v8 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingVoiceProfile"];

  if (validate)
  {
    if (!v8)
    {
LABEL_9:
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: VoiceProfile is invalid - Bailing out"];
      v17 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[SSRVoiceProfileRetrainingContext initWithVoiceRetrainingContext:skipClassTypeValidate:error:]";
        *&buf[12] = 2114;
        *&buf[14] = v16;
        _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v18 = MEMORY[0x277CCA9B8];
        v149 = @"reason";
        v150[0] = v16;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:&v149 count:1];
        *error = [v18 errorWithDomain:@"com.apple.speakerrecognition" code:713 userInfo:v19];
      }

LABEL_13:

LABEL_14:
      v20 = 0;
      goto LABEL_97;
    }
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingVoiceProfile"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v11 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingVoiceProfile"];
  v12 = *(v7 + 4);
  *(v7 + 4) = v11;

  v13 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingAsset"];

  if (v13)
  {
    v14 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingAsset"];
    v15 = *(v7 + 10);
    *(v7 + 10) = v14;
  }

  else
  {
    v15 = +[SSRAssetManager sharedManager];
    locale = [*(v7 + 4) locale];
    v22 = [v15 installedAssetOfType:3 forLanguage:locale];
    v23 = *(v7 + 10);
    *(v7 + 10) = v22;
  }

  if ([MEMORY[0x277D018F8] supportsSecureAssetForSpeakerRecognition])
  {
    v24 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingSecureAsset"];

    if (v24)
    {
      v25 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingSecureAsset"];
      v26 = *(v7 + 11);
      *(v7 + 11) = v25;
    }

    else
    {
      v26 = objc_alloc_init(SSRSecureAssetProvider);
      locale2 = [*(v7 + 4) locale];
      v28 = [(SSRSecureAssetProvider *)v26 fetchSecureAssetForLocale:locale2 withAsset:*(v7 + 10)];
      v29 = *(v7 + 11);
      *(v7 + 11) = v28;
    }
  }

  v30 = *(v7 + 10);
  if (!v30 && !*(v7 + 11))
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Last known assets are nil - Bailing out"];
    v44 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileRetrainingContext initWithVoiceRetrainingContext:skipClassTypeValidate:error:]";
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_error_impl(&dword_225E12000, v44, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v45 = MEMORY[0x277CCA9B8];
      v147 = @"reason";
      v148 = v16;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
      *error = [v45 errorWithDomain:@"com.apple.speakerrecognition" code:107 userInfo:v46];
    }

    goto LABEL_13;
  }

  configVersion = [v30 configVersion];
  v32 = *(v7 + 7);
  *(v7 + 7) = configVersion;

  [*(v7 + 10) psrCombinationWeight];
  *(v7 + 3) = v33;
  v34 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingPayloadProfile"];

  if (v34)
  {
    v35 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingPayloadProfile"];
    bOOLValue = [v35 BOOLValue];
    v37 = 3;
    if (!bOOLValue)
    {
      v37 = 1;
    }

    *(v7 + 5) = v37;
  }

  else
  {
    v38 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingSpIdType"];
    if (!v38 || ([contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingSpIdType"], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "intValue") == 0, v39, v38, v40))
    {
      v42 = *(v7 + 10);
      if (CSIsCommunalDevice())
      {
        v43 = 3;
      }

      else if ((CSIsIOS() & 1) != 0 || CSIsAppleSiliconMac())
      {
        [v42 psrCombinationWeight];
        if (((v47 == 1.0) & [v42 useTDTIEnrollment]) != 0)
        {
          v43 = 3;
        }

        else
        {
          v43 = 1;
        }
      }

      else
      {
        v43 = 1;
      }

      *(v7 + 5) = v43;
    }

    else
    {
      v41 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingSpIdType"];
      *(v7 + 5) = [v41 intValue];
    }
  }

  v48 = MEMORY[0x277CBEBC0];
  resourcePath = [*(v7 + 10) resourcePath];
  v50 = [v48 URLWithString:resourcePath];
  v51 = *(v7 + 6);
  *(v7 + 6) = v50;

  v52 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingCompareVoiceProfiles"];
  if (v52)
  {
    v53 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingCompareVoiceProfiles"];
    objc_opt_class();
    v54 = objc_opt_isKindOfClass();

    if ((v54 & 1) == 0)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: VoiceProfile is invalid - Bailing out"];
      v104 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[SSRVoiceProfileRetrainingContext initWithVoiceRetrainingContext:skipClassTypeValidate:error:]";
        *&buf[12] = 2114;
        *&buf[14] = v16;
        _os_log_error_impl(&dword_225E12000, v104, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v105 = MEMORY[0x277CCA9B8];
        v145 = @"reason";
        v146 = v16;
        v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
        *error = [v105 errorWithDomain:@"com.apple.speakerrecognition" code:713 userInfo:v106];
      }

      goto LABEL_13;
    }
  }

  *(v7 + 9) = 0;
  v55 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingForce"];

  if (v55)
  {
    v56 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingForce"];
    *(v7 + 9) = [v56 BOOLValue];
  }

  v57 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingCompareVoiceProfiles"];
  v58 = *(v7 + 3);
  *(v7 + 3) = v57;

  v124 = objc_alloc_init(MEMORY[0x277CBEB38]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v59 = 0;
  v60 = 1;
  *&v61 = 136315906;
  v121 = v61;
  while (1)
  {
    v62 = v59;
    v63 = *(v7 + 5);
    if (v63 != 3)
    {
      break;
    }

    if (v59)
    {
      goto LABEL_76;
    }

LABEL_53:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v143 = __Block_byref_object_copy__5510;
    *&v144 = __Block_byref_object_dispose__5511;
    *(&v144 + 1) = 0;
    if (*(v7 + 10) && ([MEMORY[0x277D018F8] needRetrainingForExclaveOnly] & 1) == 0)
    {
      v64 = +[SSRUtils satConfigFileNameForCSSpIdType:forModelType:forAssetType:](SSRUtils, "satConfigFileNameForCSSpIdType:forModelType:forAssetType:", *(v7 + 5), v60, [*(v7 + 10) assetProvider]);
      v67 = MEMORY[0x277CBEBC0];
      resourcePath2 = [*(v7 + 10) resourcePath];
      v69 = [resourcePath2 stringByAppendingPathComponent:v64];
      v65 = [v67 URLWithString:v69];

      v70 = [*(v7 + 4) voiceProfileModelFilePathForRecognizerType:v60 spIdType:*(v7 + 5)];
      hashFromResourcePath = [*(v7 + 10) hashFromResourcePath];
      v66 = [v70 URLByAppendingPathComponent:hashFromResourcePath];

      v72 = *(v7 + 5);
      v73 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingCompareVoiceProfilesSpIdType"];

      if (v73)
      {
        v74 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingCompareVoiceProfilesSpIdType"];
        LODWORD(v72) = [v74 intValue];

        v72 = v72;
      }

      v75 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v76 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v75;

      v77 = *(v7 + 3);
      v126[0] = MEMORY[0x277D85DD0];
      v126[1] = 3221225472;
      v126[2] = __95__SSRVoiceProfileRetrainingContext_initWithVoiceRetrainingContext_skipClassTypeValidate_error___block_invoke;
      v126[3] = &unk_278578A20;
      v129 = v60;
      v130 = v72;
      v127 = v7;
      v128 = buf;
      [v77 enumerateObjectsUsingBlock:v126];
    }

    else
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
    }

    if ([MEMORY[0x277D018F8] supportsSecureAssetForSpeakerRecognition])
    {
      v78 = [*(v7 + 4) exclaveVoiceProfileModelFilePathForRecognizerType:v60 spIdType:*(v7 + 5)];
      v79 = [SSRUtils getEmbeddingFileName:*(v7 + 11)];
      v80 = [v78 URLByAppendingPathComponent:v79];

      v81 = [SSRVoiceProfileModelContext alloc];
      if ([*(*&buf[8] + 40) count])
      {
        v82 = *(*&buf[8] + 40);
      }

      else
      {
        v82 = 0;
      }

      v87 = [(SSRVoiceProfileModelContext *)v81 initWithConfigFilePath:v65 withModelPath:v66 withModelPathExclave:v80 withCompareModelFilePaths:v82];
    }

    else
    {
      path = [v65 path];
      v84 = [defaultManager fileExistsAtPath:path];

      if ((v84 & 1) == 0)
      {
        v87 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          v88 = [SSRUtils stringForCSSpIdType:*(v7 + 5)];
          v89 = [SSRUtils stringForSpeakerRecognizerType:v60];
          locale3 = [*(v7 + 4) locale];
          *v134 = v121;
          v135 = "[SSRVoiceProfileRetrainingContext initWithVoiceRetrainingContext:skipClassTypeValidate:error:]";
          v136 = 2114;
          v137 = v88;
          v138 = 2114;
          v139 = v89;
          v140 = 2114;
          v141 = locale3;
          _os_log_impl(&dword_225E12000, v87, OS_LOG_TYPE_DEFAULT, "%s Skipping model {%{public}@, %{public}@} for %{public}@", v134, 0x2Au);
        }

        goto LABEL_74;
      }

      v85 = [SSRVoiceProfileModelContext alloc];
      if ([*(*&buf[8] + 40) count])
      {
        v86 = *(*&buf[8] + 40);
      }

      else
      {
        v86 = 0;
      }

      v87 = [(SSRVoiceProfileModelContext *)v85 initWithConfigFilePath:v65 withModelPath:v66 withCompareModelFilePaths:v86];
    }

    v91 = [SSRUtils stringForSpeakerRecognizerType:v60];
    [v124 setValue:v87 forKey:v91];

    v92 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      v93 = [SSRUtils stringForCSSpIdType:*(v7 + 5)];
      v94 = [SSRUtils stringForSpeakerRecognizerType:v60];
      locale4 = [*(v7 + 4) locale];
      *v134 = v121;
      v135 = "[SSRVoiceProfileRetrainingContext initWithVoiceRetrainingContext:skipClassTypeValidate:error:]";
      v136 = 2114;
      v137 = v93;
      v138 = 2114;
      v139 = v94;
      v140 = 2114;
      v141 = locale4;
      _os_log_impl(&dword_225E12000, v92, OS_LOG_TYPE_DEFAULT, "%s Added model context {%{public}@, %{public}@} for %{public}@", v134, 0x2Au);
    }

LABEL_74:
    _Block_object_dispose(buf, 8);

    v59 = 1;
    v60 = 2;
    if (v62)
    {
      goto LABEL_78;
    }
  }

  if ((v59 & (v63 == 4)) == 0)
  {
    goto LABEL_53;
  }

LABEL_76:
  v96 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v97 = v96;
    v98 = [SSRUtils stringForCSSpIdType:v63];
    v99 = [SSRUtils stringForSpeakerRecognizerType:v60];
    locale5 = [*(v7 + 4) locale];
    *buf = v121;
    *&buf[4] = "[SSRVoiceProfileRetrainingContext initWithVoiceRetrainingContext:skipClassTypeValidate:error:]";
    *&buf[12] = 2114;
    *&buf[14] = v98;
    *&buf[22] = 2114;
    v143 = v99;
    LOWORD(v144) = 2114;
    *(&v144 + 2) = locale5;
    _os_log_impl(&dword_225E12000, v97, OS_LOG_TYPE_DEFAULT, "%s Skipping SAT Model {%{public}@, %{public}@} for %{public}@", buf, 0x2Au);
  }

LABEL_78:
  if ([v124 count])
  {
    v101 = v124;
  }

  else
  {
    v101 = 0;
  }

  objc_storeStrong(v7 + 9, v101);
  if (!*(v7 + 9))
  {
    v107 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: _modelsContext is nil - Bailing out"];
    v108 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileRetrainingContext initWithVoiceRetrainingContext:skipClassTypeValidate:error:]";
      *&buf[12] = 2114;
      *&buf[14] = v107;
      _os_log_error_impl(&dword_225E12000, v108, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v109 = MEMORY[0x277CCA9B8];
      v132 = @"reason";
      v133 = v107;
      v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
      *error = [v109 errorWithDomain:@"com.apple.speakerrecognition" code:713 userInfo:v110];
    }

    goto LABEL_14;
  }

  v102 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingFilterToVoiceTriggerUtterances"];

  if (v102)
  {
    v103 = [contextCopy objectForKeyedSubscript:@"SSRVoiceRetrainingFilterToVoiceTriggerUtterances"];
    *(v7 + 8) = [v103 BOOLValue];
  }

  else
  {
    *(v7 + 8) = 0;
  }

  *(v7 + 8) = [*(v7 + 10) maxAllowedEnrollmentUtterances];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v113 = *(v7 + 2);
  *(v7 + 2) = uUIDString;

  v114 = [SSRLoggingAggregator alloc];
  locale6 = [*(v7 + 4) locale];
  configVersion2 = [*(v7 + 10) configVersion];
  v117 = [(SSRLoggingAggregator *)v114 initWithEvent:@"retraining" locale:locale6 configVersion:configVersion2];
  v118 = *(v7 + 12);
  *(v7 + 12) = v117;

LABEL_96:
  v20 = v7;
LABEL_97:

  v119 = *MEMORY[0x277D85DE8];
  return v20;
}

void __95__SSRVoiceProfileRetrainingContext_initWithVoiceRetrainingContext_skipClassTypeValidate_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[7];
  v5 = a2;
  v6 = [v5 voiceProfileModelFilePathForRecognizerType:v3 spIdType:v4];
  v7 = [*(a1[4] + 80) hashFromResourcePath];
  v10 = [v6 URLByAppendingPathComponent:v7];

  v8 = *(*(a1[5] + 8) + 40);
  v9 = [v5 profileID];

  [v8 setValue:v10 forKey:v9];
}

@end