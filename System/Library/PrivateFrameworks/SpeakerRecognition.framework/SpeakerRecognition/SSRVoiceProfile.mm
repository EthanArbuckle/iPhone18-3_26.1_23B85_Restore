@interface SSRVoiceProfile
- (BOOL)_isSATMarkedWithMarker:(id)marker;
- (BOOL)_markSATEnrollmentWithMarker:(id)marker;
- (BOOL)deleteModelForSpidType:(unint64_t)type recognizerType:(unint64_t)recognizerType;
- (BOOL)isValidForRPIWithError:(id *)error;
- (BOOL)markSATEnrollmentSuccess;
- (BOOL)profileLocallyAvailable;
- (BOOL)updatePruningCookie:(id)cookie;
- (NSString)pruningCookie;
- (NSString)voiceProfileIdentity;
- (SSRVoiceProfile)initWithCoder:(id)coder;
- (SSRVoiceProfile)initWithDictionary:(id)dictionary;
- (id)_getEnrollmentUtterancesForType:(unint64_t)type;
- (id)_voiceProfilePathForSpidType:(unint64_t)type;
- (id)addUtterances:(id)utterances spIdType:(unint64_t)type;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exclaveVoiceProfileModelFilePathForRecognizerType:(unint64_t)type spIdType:(unint64_t)idType;
- (id)getEnrollmentUtterancesForModelType:(unint64_t)type;
- (id)getExplicitEnrollmentUtterancesForType:(unint64_t)type;
- (id)getExplicitMarkedEnrollmentUtterancesForType:(unint64_t)type;
- (id)getImplicitEnrollmentUtterancesForType:(unint64_t)type;
- (id)getImplicitEnrollmentUtterancesPriorTo:(id)to forType:(unint64_t)type;
- (id)importVoiceProfileAtPath:(id)path;
- (id)initNewVoiceProfileWithLocale:(id)locale withAppDomain:(id)domain;
- (id)voiceProfileAudioDirPathForSpidType:(unint64_t)type;
- (id)voiceProfileModelDirForSpidType:(unint64_t)type recognizerType:(unint64_t)recognizerType;
- (id)voiceProfileModelFilePathForRecognizerType:(unint64_t)type spIdType:(unint64_t)idType;
- (unint64_t)_copyExplicitAudio:(id)audio withSpIdType:(unint64_t)type;
- (unint64_t)copyTDAudioToTDTI;
- (unint64_t)getTDAudioCount;
- (unint64_t)productCategory;
- (unint64_t)voiceProfileVersion;
- (void)_updateVoiceProfileVersionFile;
- (void)addDonationId:(id)id;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSRVoiceProfile

- (id)_getEnrollmentUtterancesForType:(unint64_t)type
{
  v36 = *MEMORY[0x277D85DE8];
  profileBasePath = [(SSRVoiceProfile *)self profileBasePath];
  v5 = [SSRUtils stringForCSSpIdType:type];
  v6 = objc_alloc(MEMORY[0x277CBEBC0]);
  v7 = [profileBasePath stringByAppendingPathComponent:v5];
  v8 = [v7 stringByAppendingPathComponent:@"audio"];
  v9 = [v6 initWithString:v8];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager enumeratorAtURL:v9 includingPropertiesForKeys:0 options:0 errorHandler:&__block_literal_global_4466];

  if (v11)
  {
    v27 = v5;
    v28 = profileBasePath;
    array = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v11;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          path = [v18 path];
          v20 = [path hasSuffix:@".wav"];

          if (v20)
          {
            v21 = [[SSREnrollmentUtterance alloc] initWithEnrollmentUtteranceUrl:v18];
            v22 = v21;
            if (v21 && [(SSREnrollmentUtterance *)v21 isExplicit])
            {
              [array addObject:v22];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    v5 = v27;
    profileBasePath = v28;
    v11 = v26;
  }

  else
  {
    v23 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v35 = "[SSRVoiceProfile _getEnrollmentUtterancesForType:]";
      _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s Enumator being nil for TDTI enrollment folder", buf, 0xCu);
    }

    array = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return array;
}

uint64_t __51__SSRVoiceProfile__getEnrollmentUtterancesForType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "[SSRVoiceProfile _getEnrollmentUtterancesForType:]_block_invoke";
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s Enumrating URL: %@ with error: %@", &v9, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)updatePruningCookie:(id)cookie
{
  v34 = *MEMORY[0x277D85DE8];
  cookieCopy = cookie;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _getProfileVersionFilePath = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  v7 = [SSRUtils readJsonFileAtPath:_getProfileVersionFilePath];
  v8 = v7;
  v27 = 0;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    [v9 setObject:cookieCopy forKeyedSubscript:@"VoiceProfilePruningCookie"];
    v10 = MEMORY[0x277CCAAA0];
    v11 = [v9 copy];
    v26 = 0;
    v12 = [v10 dataWithJSONObject:v11 options:1 error:&v26];
    v13 = v26;

    if (v12)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      v15 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v29 = "[SSRVoiceProfile updatePruningCookie:]";
        v30 = 2112;
        v31 = v8;
        v32 = 2112;
        v33 = v13;
        v16 = "%s ERR: error updating updatedVoiceProfileJsonData from: %@, err: %@";
LABEL_21:
        _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x20u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if ([defaultManager fileExistsAtPath:_getProfileVersionFilePath isDirectory:&v27])
    {
      v25 = 0;
      v19 = [defaultManager removeItemAtPath:_getProfileVersionFilePath error:&v25];
      v13 = v25;
      if ((v19 & 1) == 0)
      {
        v15 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v29 = "[SSRVoiceProfile updatePruningCookie:]";
          v30 = 2112;
          v31 = _getProfileVersionFilePath;
          v32 = 2112;
          v33 = v13;
          v16 = "%s ERR: error removing voice profile version file at: %@, err: %@";
          goto LABEL_21;
        }

LABEL_22:
        v18 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
    }

    v20 = v13;
    v24 = v13;
    v21 = [v12 writeToFile:_getProfileVersionFilePath options:0 error:&v24];
    v13 = v24;

    if (v21 && !v13)
    {
      v18 = 1;
LABEL_23:

      goto LABEL_24;
    }

    v15 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v29 = "[SSRVoiceProfile updatePruningCookie:]";
      v30 = 2112;
      v31 = _getProfileVersionFilePath;
      v32 = 2112;
      v33 = v13;
      v16 = "%s ERR: Error writing voice profile version file at: %@, err:%@";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v17 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v29 = "[SSRVoiceProfile updatePruningCookie:]";
    _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s ERR: Profile dict is nil - Bailing out", buf, 0xCu);
  }

  v13 = 0;
  v9 = 0;
  v18 = 0;
LABEL_24:

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (NSString)pruningCookie
{
  _getProfileVersionFilePath = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  v3 = [SSRUtils readJsonFileAtPath:_getProfileVersionFilePath];

  v4 = [v3 objectForKeyedSubscript:@"VoiceProfilePruningCookie"];

  if (v4)
  {
    v4 = [v3 objectForKeyedSubscript:@"VoiceProfilePruningCookie"];
  }

  return v4;
}

- (void)_updateVoiceProfileVersionFile
{
  v46 = *MEMORY[0x277D85DE8];
  _getProfileVersionFilePath = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v37 = 0;
  deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
  if (!deviceProductType || (v5 = [SSRUtils deviceCategoryForDeviceProductType:deviceProductType]) == 0)
  {
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[SSRVoiceProfile _updateVoiceProfileVersionFile]";
      v42 = 2114;
      v43 = deviceProductType;
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s ERR: Unknown device-category for device: %{public}@", buf, 0x16u);
    }

    v5 = 0;
  }

  if (![defaultManager fileExistsAtPath:_getProfileVersionFilePath isDirectory:&v37] || (v37 & 1) != 0)
  {
    v38[0] = @"VoiceProfileCompatabiltyVersion";
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 1];
    v39[0] = v7;
    v38[1] = @"VoiceProfileProductType";
    deviceProductType2 = [MEMORY[0x277D018F8] deviceProductType];
    v39[1] = deviceProductType2;
    v38[2] = @"VoiceProfileSWVersion";
    deviceBuildVersion = [MEMORY[0x277D018F8] deviceBuildVersion];
    v39[2] = deviceBuildVersion;
    v38[3] = @"VoiceProfileCategoryType";
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v5];
    v39[3] = v10;
    v38[4] = @"VoiceProfileIdentifier";
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v39[4] = uUIDString;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:5];

LABEL_9:
    v35 = 0;
    v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:1 error:&v35];
    v15 = v35;
    v16 = v15;
    if (!v14 || v15)
    {
      v19 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v41 = "[SSRVoiceProfile _updateVoiceProfileVersionFile]";
        v42 = 2112;
        v43 = v13;
        v44 = 2112;
        v45 = v16;
        v20 = "%s ERR: error creating updatedVoiceProfileJsonData from: %@, err: %@";
        goto LABEL_35;
      }

      goto LABEL_19;
    }

    if ([defaultManager fileExistsAtPath:_getProfileVersionFilePath isDirectory:&v37] && (v37 & 1) == 0)
    {
      v34 = 0;
      v30 = [defaultManager removeItemAtPath:_getProfileVersionFilePath error:&v34];
      v16 = v34;
      if ((v30 & 1) == 0)
      {
        v19 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v41 = "[SSRVoiceProfile _updateVoiceProfileVersionFile]";
          v42 = 2112;
          v43 = _getProfileVersionFilePath;
          v44 = 2112;
          v45 = v16;
          v20 = "%s ERR: error removing voice profile version file at: %@, err: %@";
          goto LABEL_35;
        }

LABEL_19:

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v33 = v16;
    v18 = [v14 writeToFile:_getProfileVersionFilePath options:0 error:&v33];
    v16 = v33;

    if (v18 && !v16)
    {
      goto LABEL_20;
    }

    v19 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v41 = "[SSRVoiceProfile _updateVoiceProfileVersionFile]";
      v42 = 2112;
      v43 = _getProfileVersionFilePath;
      v44 = 2112;
      v45 = v16;
      v20 = "%s ERR: Error writing voice profile version file at: %@, err:%@";
LABEL_35:
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x20u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v22 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:_getProfileVersionFilePath];
  if (v22)
  {
    v23 = v22;
    v36 = 0;
    deviceProductType2 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v22 options:0 error:&v36];
    v24 = v36;
    v25 = v24;
    if (deviceProductType2 && !v24)
    {

      v7 = [deviceProductType2 mutableCopy];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 1];
      [v7 setValue:v26 forKey:@"VoiceProfileCompatabiltyVersion"];

      deviceProductType3 = [MEMORY[0x277D018F8] deviceProductType];
      [v7 setValue:deviceProductType3 forKey:@"VoiceProfileProductType"];

      deviceBuildVersion2 = [MEMORY[0x277D018F8] deviceBuildVersion];
      [v7 setValue:deviceBuildVersion2 forKey:@"VoiceProfileSWVersion"];

      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v5];
      [v7 setValue:v29 forKey:@"VoiceProfileCategoryType"];

      v13 = [v7 copy];
      goto LABEL_9;
    }

    v32 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v41 = "[SSRVoiceProfile _updateVoiceProfileVersionFile]";
      v42 = 2112;
      v43 = _getProfileVersionFilePath;
      v44 = 2112;
      v45 = v25;
      _os_log_error_impl(&dword_225E12000, v32, OS_LOG_TYPE_ERROR, "%s Could not read existing %@ file: err: %@", buf, 0x20u);
    }
  }

  else
  {
    v31 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[SSRVoiceProfile _updateVoiceProfileVersionFile]";
      v42 = 2112;
      v43 = _getProfileVersionFilePath;
      _os_log_error_impl(&dword_225E12000, v31, OS_LOG_TYPE_ERROR, "%s Unable to read data from file: %@", buf, 0x16u);
    }
  }

LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_markSATEnrollmentWithMarker:(id)marker
{
  v20 = *MEMORY[0x277D85DE8];
  markerCopy = marker;
  if (markerCopy)
  {
    v5 = self->_profileBasePath;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v5 isDirectory:0])
    {
      v7 = [(NSString *)v5 stringByAppendingPathComponent:markerCopy];
      v8 = [defaultManager createFileAtPath:v7 contents:0 attributes:0];
      v9 = *MEMORY[0x277D01970];
      if (v8)
      {
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = "[SSRVoiceProfile _markSATEnrollmentWithMarker:]";
          v16 = 2114;
          v17 = markerCopy;
          v18 = 2114;
          v19 = v7;
          _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Marked SAT enrollment %{public}@ at path %{public}@", &v14, 0x20u);
        }

        v10 = 1;
        goto LABEL_14;
      }

      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v14 = 136315650;
        v15 = "[SSRVoiceProfile _markSATEnrollmentWithMarker:]";
        v16 = 2114;
        v17 = markerCopy;
        v18 = 2114;
        v19 = v7;
        _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s Coudn't mark SAT enrollment %{public}@ at path %{public}@", &v14, 0x20u);
      }
    }

    else
    {
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "[SSRVoiceProfile _markSATEnrollmentWithMarker:]";
        v16 = 2114;
        v17 = markerCopy;
        _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s We can't mark SAT %{public}@ when there is no audio directory", &v14, 0x16u);
      }
    }

    v10 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v10 = 0;
LABEL_15:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (unint64_t)getTDAudioCount
{
  v2 = [(SSRVoiceProfile *)self getEnrollmentUtterancesForModelType:1];
  v3 = [v2 count];

  return v3;
}

- (BOOL)_isSATMarkedWithMarker:(id)marker
{
  v30 = *MEMORY[0x277D85DE8];
  markerCopy = marker;
  v5 = self->_profileBasePath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:v5 isDirectory:0])
  {
    v7 = [(NSString *)v5 stringByAppendingPathComponent:markerCopy];
    if ([defaultManager fileExistsAtPath:v7 isDirectory:0])
    {
      if ((CSIsIOS() & 1) != 0 || CSIsCommunalDevice())
      {
        v8 = 1;
        v9 = 3;
      }

      else
      {
        v8 = 0;
        v9 = 1;
      }

      v12 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:v9];
      v13 = [defaultManager contentsOfDirectoryAtPath:v12 error:0];
      v14 = [(SSRVoiceProfile *)self getEnrollmentUtterancesForModelType:v9];
      v15 = [v14 count];
      v16 = v15;
      if (v8 && v15 <= 4 && CSIsIOS())
      {
        if ([(SSRVoiceProfile *)self getTDAudioCount])
        {
          defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
          [defaultCenter postNotificationName:@"com.apple.speakerrecognition.migrateTDprofile" object:0];

          v18 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            v22 = 136315138;
            v23 = "[SSRVoiceProfile _isSATMarkedWithMarker:]";
            _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s Notification sent to trigger TD voice profile migration", &v22, 0xCu);
          }

          goto LABEL_16;
        }
      }

      else if (v16)
      {
LABEL_16:

        v11 = 1;
        goto LABEL_22;
      }

      v19 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v22 = 136315906;
        v23 = "[SSRVoiceProfile _isSATMarkedWithMarker:]";
        v24 = 2114;
        v25 = markerCopy;
        v26 = 1026;
        v27 = 0;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: Removing %{public}@ as explicit utterances %{public}d from audio dir - %{public}@", &v22, 0x26u);
      }

      [defaultManager removeItemAtPath:v7 error:0];
    }

LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v10 = *MEMORY[0x277D01970];
  v11 = 0;
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[SSRVoiceProfile _isSATMarkedWithMarker:]";
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s SAT path doesnt exist - %@", &v22, 0x16u);
    goto LABEL_21;
  }

LABEL_22:

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)markSATEnrollmentSuccess
{
  [(SSRVoiceProfile *)self _updateVoiceProfileVersionFile];

  return [(SSRVoiceProfile *)self _markSATEnrollmentWithMarker:@"enrollment_completed"];
}

- (unint64_t)productCategory
{
  _getProfileVersionFilePath = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  v3 = [SSRUtils getVoiceProfileProductCategoryFromVersionFilePath:_getProfileVersionFilePath];

  return v3;
}

- (NSString)voiceProfileIdentity
{
  _getProfileVersionFilePath = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  v3 = [SSRUtils getVoiceProfileIdentityFromVersionFilePath:_getProfileVersionFilePath];

  return v3;
}

- (unint64_t)voiceProfileVersion
{
  _getProfileVersionFilePath = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  v3 = [SSRUtils readJsonFileAtPath:_getProfileVersionFilePath];

  intValue = [v3 objectForKeyedSubscript:@"VoiceProfileCompatabiltyVersion"];

  if (intValue)
  {
    v5 = [v3 objectForKeyedSubscript:@"VoiceProfileCompatabiltyVersion"];
    intValue = [v5 intValue];
  }

  return intValue;
}

- (BOOL)deleteModelForSpidType:(unint64_t)type recognizerType:(unint64_t)recognizerType
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = [(SSRVoiceProfile *)self voiceProfileModelDirForSpidType:type recognizerType:recognizerType];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4 isDirectory:0];

  if (v6)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v33 = 0;
    v8 = [defaultManager2 contentsOfDirectoryAtPath:v4 error:&v33];
    v9 = v33;

    if (v9 || !v8)
    {
      v22 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v25 = v22;
        localizedDescription = [v9 localizedDescription];
        *buf = 136315650;
        v35 = "[SSRVoiceProfile deleteModelForSpidType:recognizerType:]";
        v36 = 2114;
        v37 = v4;
        v38 = 2114;
        v39 = localizedDescription;
        _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s Couldn't delete invalidated speaker model at path %{public}@ %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v27 = v8;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v30;
        v14 = MEMORY[0x277D01970];
        do
        {
          v15 = 0;
          do
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(v10);
            }

            if (*(*(&v29 + 1) + 8 * v15))
            {
              v16 = [v4 stringByAppendingPathComponent:?];
              defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
              v28 = 0;
              [defaultManager3 removeItemAtPath:v16 error:&v28];
              v18 = v28;

              if (v18)
              {
                v19 = *v14;
                if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
                {
                  v20 = v19;
                  localizedDescription2 = [v18 localizedDescription];
                  *buf = 136315650;
                  v35 = "[SSRVoiceProfile deleteModelForSpidType:recognizerType:]";
                  v36 = 2114;
                  v37 = v16;
                  v38 = 2114;
                  v39 = localizedDescription2;
                  _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s Couldn't delete invalidated speaker model at path %{public}@ %{public}@", buf, 0x20u);

                  v14 = MEMORY[0x277D01970];
                }
              }
            }

            ++v15;
          }

          while (v12 != v15);
          v12 = [v10 countByEnumeratingWithState:&v29 objects:v40 count:16];
        }

        while (v12);
      }

      v9 = 0;
      v8 = v27;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_voiceProfilePathForSpidType:(unint64_t)type
{
  if ([MEMORY[0x277D018F8] isDarwinOS])
  {
    v5 = self->_profileBasePath;
  }

  else
  {
    v6 = [SSRUtils stringForCSSpIdType:type];
    v5 = [(NSString *)self->_profileBasePath stringByAppendingPathComponent:v6];
  }

  return v5;
}

- (id)voiceProfileModelDirForSpidType:(unint64_t)type recognizerType:(unint64_t)recognizerType
{
  v5 = [(SSRVoiceProfile *)self _voiceProfilePathForSpidType:type];
  v6 = v5;
  if (recognizerType == 1)
  {
    v7 = @"td-sr-model";
    goto LABEL_5;
  }

  if (recognizerType == 2)
  {
    v7 = @"model";
LABEL_5:
    v8 = [v5 stringByAppendingPathComponent:v7];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)voiceProfileAudioDirPathForSpidType:(unint64_t)type
{
  typeCopy = 3;
  if (type != 4)
  {
    typeCopy = type;
  }

  if (type == 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = typeCopy;
  }

  v5 = [(SSRVoiceProfile *)self _voiceProfilePathForSpidType:v4];
  v6 = [v5 stringByAppendingPathComponent:@"audio"];

  return v6;
}

- (BOOL)profileLocallyAvailable
{
  v3 = [(SSRVoiceProfile *)self getEnrollmentUtterancesForModelType:3];
  v4 = [v3 count];

  if ((CSIsCommunalDevice() & 1) == 0)
  {
    v5 = [(SSRVoiceProfile *)self getEnrollmentUtterancesForModelType:1];
    v4 += [v5 count];
  }

  return v4 != 0;
}

- (id)getImplicitEnrollmentUtterancesForType:(unint64_t)type
{
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:?];
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    v3 = [SSRUtils getImplicitEnrollmentUtterancesFromDirectory:v5];
  }

  return v3;
}

- (id)getImplicitEnrollmentUtterancesPriorTo:(id)to forType:(unint64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (toCopy)
  {
    v7 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:type];
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    v9 = [SSRUtils getImplicitEnrollmentUtterancesFromDirectory:v8];

    v10 = MEMORY[0x277CCAC30];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__SSRVoiceProfile_getImplicitEnrollmentUtterancesPriorTo_forType___block_invoke;
    v16[3] = &unk_278578638;
    v17 = toCopy;
    v11 = [v10 predicateWithBlock:v16];
    v12 = [v9 filteredArrayUsingPredicate:v11];
  }

  else
  {
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[SSRVoiceProfile getImplicitEnrollmentUtterancesPriorTo:forType:]";
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: date is nil - Bailing out", buf, 0xCu);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __66__SSRVoiceProfile_getImplicitEnrollmentUtterancesPriorTo_forType___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 pathExtension];
  v5 = [v4 isEqualToString:@"wav"];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v3 URLByDeletingPathExtension];
  v7 = [v6 URLByAppendingPathExtension:@"json"];

  v8 = [SSRVoiceProfileMetadataManager recordedTimeStampOfFile:v7];
  if (!+[SSRVoiceProfileMetadataManager isUtteranceImplicitlyTrained:](SSRVoiceProfileMetadataManager, "isUtteranceImplicitlyTrained:", v7) || !v8 || ([v8 timeIntervalSinceDate:*(a1 + 32)], v9 >= 0.0))
  {

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v10 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[SSRVoiceProfile getImplicitEnrollmentUtterancesPriorTo:forType:]_block_invoke";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Filtered %@ with enrolled date %@", &v14, 0x20u);
  }

  v11 = 1;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)getEnrollmentUtterancesForModelType:(unint64_t)type
{
  if (type == 4)
  {
    v3 = 3;
    goto LABEL_5;
  }

  if (type == 5)
  {
    v3 = 1;
LABEL_5:
    v4 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:v3];
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
    v6 = [SSRUtils getExplicitEnrollmentUtterancesFromDirectory:v5];
    goto LABEL_7;
  }

  v4 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:?];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = [SSRUtils getEnrollmentUtterancesFromDirectory:v5];
LABEL_7:
  v7 = v6;

  return v7;
}

- (id)getExplicitMarkedEnrollmentUtterancesForType:(unint64_t)type
{
  v3 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:type];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v5 = [SSRUtils getExplicitMarkedEnrollmentUtterancesFromDirectory:v4];

  return v5;
}

- (id)getExplicitEnrollmentUtterancesForType:(unint64_t)type
{
  v3 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:type];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v5 = [SSRUtils getExplicitEnrollmentUtterancesFromDirectory:v4];

  return v5;
}

- (id)addUtterances:(id)utterances spIdType:(unint64_t)type
{
  v76[1] = *MEMORY[0x277D85DE8];
  utterancesCopy = utterances;
  v7 = utterancesCopy;
  if (utterancesCopy && [utterancesCopy count])
  {
    selfCopy = self;
    v8 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:type];
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    v52 = v8;
    v10 = [SSRUtils createDirectoryIfDoesNotExist:v8];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v53 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v60 objects:v74 count:16];
    if (v13)
    {
      v14 = v13;
      v55 = 0;
      v15 = 0;
      v57 = *v61;
      v54 = defaultManager;
      obj = v12;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v61 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v60 + 1) + 8 * i);
          lastPathComponent = [v17 lastPathComponent];
          v19 = [v9 URLByAppendingPathComponent:lastPathComponent];

          uRLByDeletingPathExtension = [v17 URLByDeletingPathExtension];
          v21 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"json"];

          lastPathComponent2 = [v21 lastPathComponent];
          v23 = [v9 URLByAppendingPathComponent:lastPathComponent2];

          v59 = v15;
          [defaultManager copyItemAtURL:v17 toURL:v19 error:&v59];
          v24 = v59;

          v25 = *MEMORY[0x277D01970];
          v26 = *MEMORY[0x277D01970];
          if (v24)
          {
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v33 = v25;
              localizedDescription = [v24 localizedDescription];
              *buf = 136315906;
              v67 = "[SSRVoiceProfile addUtterances:spIdType:]";
              v68 = 2114;
              v69 = v17;
              v70 = 2114;
              v71 = v19;
              v72 = 2114;
              v73 = localizedDescription;
              _os_log_error_impl(&dword_225E12000, v33, OS_LOG_TYPE_ERROR, "%s Error to copy utterance from %{public}@ to %{public}@, error: %{public}@", buf, 0x2Au);

              defaultManager = v54;
            }

            v15 = v24;
          }

          else
          {
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v67 = "[SSRVoiceProfile addUtterances:spIdType:]";
              v68 = 2114;
              v69 = v17;
              v70 = 2114;
              v71 = v19;
              _os_log_impl(&dword_225E12000, v25, OS_LOG_TYPE_DEFAULT, "%s Copied Utterance from %{public}@ to %{public}@", buf, 0x20u);
            }

            path = [v21 path];
            v28 = [defaultManager fileExistsAtPath:path];

            if (v28 && (v58 = 0, [defaultManager copyItemAtURL:v21 toURL:v23 error:&v58], (v29 = v58) != 0))
            {
              v15 = v29;
              v30 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                v35 = v30;
                localizedDescription2 = [v15 localizedDescription];
                *buf = 136315906;
                v67 = "[SSRVoiceProfile addUtterances:spIdType:]";
                v68 = 2114;
                v69 = v21;
                v70 = 2114;
                v71 = v23;
                v72 = 2114;
                v73 = localizedDescription2;
                _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, "%s Error to copy jsonFile from %{public}@ to %{public}@, error: %{public}@", buf, 0x2Au);
              }

              path2 = [v19 path];
              v32 = [SSRUtils removeItemAtPath:path2];

              defaultManager = v54;
            }

            else
            {
              v15 = 0;
              ++v55;
            }
          }
        }

        v12 = obj;
        v14 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
      }

      while (v14);
    }

    else
    {
      v55 = 0;
      v15 = 0;
    }

    v41 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      v43 = [v12 count];
      profileID = selfCopy->_profileID;
      *buf = 136315906;
      v67 = "[SSRVoiceProfile addUtterances:spIdType:]";
      v68 = 2050;
      v69 = v55;
      v70 = 2050;
      v71 = v43;
      v72 = 2114;
      v73 = profileID;
      _os_log_impl(&dword_225E12000, v42, OS_LOG_TYPE_DEFAULT, "%s Successfully copied %{public}lu(%{public}lu) utterances to profile %{public}@", buf, 0x2Au);
    }

    v7 = v53;
    if (v55)
    {
      v40 = 0;
    }

    else
    {
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to copy utterances with error %@", v15];
      v46 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v67 = "[SSRVoiceProfile addUtterances:spIdType:]";
        v68 = 2114;
        v69 = v45;
        _os_log_error_impl(&dword_225E12000, v46, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v47 = MEMORY[0x277CCA9B8];
      v64 = @"reason";
      v65 = v45;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v40 = [v47 errorWithDomain:@"com.apple.speakerrecognition" code:721 userInfo:v48];
    }

    v37 = v52;
  }

  else
  {
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"utterances passed is nil!"];
    v38 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v67 = "[SSRVoiceProfile addUtterances:spIdType:]";
      v68 = 2114;
      v69 = v37;
      _os_log_error_impl(&dword_225E12000, v38, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v39 = MEMORY[0x277CCA9B8];
    v75 = @"reason";
    v76[0] = v37;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
    v40 = [v39 errorWithDomain:@"com.apple.speakerrecognition" code:727 userInfo:v9];
  }

  v49 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)importVoiceProfileAtPath:(id)path
{
  v60 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v43 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_profileBasePath];
  path = [v43 path];
  v6 = [SSRUtils createDirectoryIfDoesNotExist:path];

  v39 = pathCopy;
  [SSRUtils getContentsOfDirectory:pathCopy];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = v48 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v8)
  {
    v9 = v8;
    v41 = 0;
    v42 = 0;
    v10 = *v46;
    v40 = v7;
    do
    {
      v11 = 0;
      do
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v45 + 1) + 8 * v11);
        lastPathComponent = [v12 lastPathComponent];
        v14 = [SSRUtils stringForCSSpIdType:2];
        v15 = [lastPathComponent isEqualToString:v14];

        if ((v15 & 1) == 0)
        {
          v16 = [SSRUtils stringForCSSpIdType:1];
          v17 = [lastPathComponent isEqualToString:v16];

          if (v17)
          {
            if ((CSIsCommunalDevice() & 1) == 0)
            {
              v41 = [(SSRVoiceProfile *)self _copyExplicitAudio:v12 withSpIdType:1];
            }
          }

          else
          {
            v18 = [SSRUtils stringForCSSpIdType:3];
            v19 = [lastPathComponent isEqualToString:v18];

            if (v19)
            {
              v42 = [(SSRVoiceProfile *)self _copyExplicitAudio:v12 withSpIdType:3];
            }

            else
            {
              selfCopy = self;
              lastPathComponent2 = [v12 lastPathComponent];
              v22 = [v43 URLByAppendingPathComponent:lastPathComponent2];

              defaultManager = [MEMORY[0x277CCAA00] defaultManager];
              v44 = 0;
              [defaultManager copyItemAtURL:v12 toURL:v22 error:&v44];
              v24 = v44;

              v25 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v52 = "[SSRVoiceProfile importVoiceProfileAtPath:]";
                v53 = 2114;
                v54 = v12;
                v55 = 2114;
                v56 = v22;
                v57 = 2114;
                v58 = v24;
                _os_log_impl(&dword_225E12000, v25, OS_LOG_TYPE_DEFAULT, "%s Copied %{public}@ to %{public}@ with error %{public}@", buf, 0x2Au);
              }

              if (v24)
              {
                v27 = [SSRUtils removeItemAtPath:selfCopy->_profileBasePath];

                v7 = v40;
                v28 = v40;
                v29 = v39;
                goto LABEL_21;
              }

              self = selfCopy;
              v7 = v40;
            }
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v26 = [v7 countByEnumeratingWithState:&v45 objects:v59 count:16];
      v9 = v26;
    }

    while (v26);
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v24 = 0;
  if (CSIsCommunalDevice())
  {
    v29 = v39;
    if (v42 <= 4)
    {
      v32 = [SSRUtils stringForCSSpIdType:1];
      v33 = [v39 URLByAppendingPathComponent:v32];

      v34 = [(SSRVoiceProfile *)self _copyExplicitAudio:v33 withSpIdType:3];
      v35 = MEMORY[0x277D01970];
      v36 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v52 = "[SSRVoiceProfile importVoiceProfileAtPath:]";
        v53 = 2050;
        v54 = v41;
        v55 = 2050;
        v56 = v34;
        v57 = 2050;
        v58 = v42;
        _os_log_impl(&dword_225E12000, v36, OS_LOG_TYPE_DEFAULT, "%s Copied TD audio files %{public}lu to TDTI which now has %{public}lu(%{public}lu) utterances", buf, 0x2Au);
      }

      if (v34 > 2)
      {
        v24 = 0;
      }

      else
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Too less audio files (%ld) for onboarding", v34];
        v37 = *v35;
        if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v52 = "[SSRVoiceProfile importVoiceProfileAtPath:]";
          v53 = 2114;
          v54 = v28;
          _os_log_error_impl(&dword_225E12000, v37, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
        }

        v38 = MEMORY[0x277CCA9B8];
        v49 = @"reason";
        v50 = v28;
        lastPathComponent = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v24 = [v38 errorWithDomain:@"com.apple.speakerrecognition" code:733 userInfo:lastPathComponent];
LABEL_21:
      }
    }
  }

  else
  {
    v29 = v39;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v24;
}

- (unint64_t)_copyExplicitAudio:(id)audio withSpIdType:(unint64_t)type
{
  v38 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  v7 = [audioCopy URLByAppendingPathComponent:@"audio"];
  v8 = [SSRUtils getExplicitEnrollmentUtterancesFromDirectory:v7];
  v9 = [SSRUtils stringForCSSpIdType:type];
  v10 = MEMORY[0x277D01970];
  v11 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    profileID = self->_profileID;
    v13 = v11;
    path = [audioCopy path];
    v28 = 136315906;
    v29 = "[SSRVoiceProfile _copyExplicitAudio:withSpIdType:]";
    v30 = 2114;
    v31 = v9;
    v32 = 2114;
    v33 = profileID;
    v34 = 2114;
    v35 = path;
    _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Importing %{public}@ of %{public}@ from import Dir %{public}@", &v28, 0x2Au);
  }

  v15 = [(SSRVoiceProfile *)self addUtterances:v8 spIdType:type];
  if (v15)
  {
    v16 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_profileID;
      v18 = v16;
      path2 = [audioCopy path];
      v28 = 136315906;
      v29 = "[SSRVoiceProfile _copyExplicitAudio:withSpIdType:]";
      v30 = 2114;
      v31 = v9;
      v32 = 2114;
      v33 = v17;
      v34 = 2114;
      v35 = path2;
      _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s Failed in importing %{public}@ of %{public}@ from import Dir %{public}@", &v28, 0x2Au);
    }

    v20 = 0;
  }

  else
  {
    v21 = [(SSRVoiceProfile *)self getExplicitEnrollmentUtterancesForType:type];
    v20 = [v21 count];

    v22 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [v8 count];
      v25 = self->_profileID;
      v28 = 136316162;
      v29 = "[SSRVoiceProfile _copyExplicitAudio:withSpIdType:]";
      v30 = 2112;
      v31 = v9;
      v32 = 2050;
      v33 = v20;
      v34 = 2050;
      v35 = v24;
      v36 = 2114;
      v37 = v25;
      _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Successfully imported %{publice}@ %{public}lu(%{public}lu) utterances to profile %{public}@", &v28, 0x34u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

- (unint64_t)copyTDAudioToTDTI
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBC0];
  v4 = [(SSRVoiceProfile *)self _voiceProfilePathForSpidType:1];
  v5 = [v3 URLWithString:v4];

  v6 = MEMORY[0x277D01970];
  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[SSRVoiceProfile copyTDAudioToTDTI]";
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Copying TD audio files: %@ to TDTI", &v14, 0x16u);
  }

  v8 = [(SSRVoiceProfile *)self getEnrollmentUtterancesForModelType:3];
  v9 = v8;
  if (v8 && [v8 count] >= 5)
  {
    v10 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[SSRVoiceProfile copyTDAudioToTDTI]";
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s TDTI audio files exist. Aborting copy", &v14, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = [(SSRVoiceProfile *)self _copyExplicitAudio:v5 withSpIdType:3];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isValidForRPIWithError:(id *)error
{
  if ([(NSString *)self->_appDomain isEqualToString:@"com.apple.siri"])
  {
    if (self->_donationIds)
    {
      return 1;
    }

    if (error)
    {
      v6 = 1265;
      goto LABEL_8;
    }
  }

  else if (error)
  {
    v6 = 1264;
LABEL_8:
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:v6 userInfo:0];
    v8 = v7;
    result = 0;
    *error = v7;
    return result;
  }

  return 0;
}

- (void)addDonationId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    donationIds = self->_donationIds;
    v8 = idCopy;
    if (!donationIds)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_donationIds;
      self->_donationIds = v6;

      donationIds = self->_donationIds;
    }

    [(NSMutableArray *)donationIds addObject:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (id)exclaveVoiceProfileModelFilePathForRecognizerType:(unint64_t)type spIdType:(unint64_t)idType
{
  v4 = [(SSRVoiceProfile *)self voiceProfileModelFilePathForRecognizerType:type spIdType:idType];
  v5 = [v4 URLByAppendingPathExtension:@"exclave"];

  return v5;
}

- (id)voiceProfileModelFilePathForRecognizerType:(unint64_t)type spIdType:(unint64_t)idType
{
  v4 = [(SSRVoiceProfile *)self voiceProfileModelDirForSpidType:idType recognizerType:type];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];

  return v5;
}

- (id)description
{
  dictionaryRepresentation = [(SSRVoiceProfile *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = MEMORY[0x277CBEB38];
  v4 = MEMORY[0x277CCACA8];
  [(NSDate *)self->_dateAdded timeIntervalSince1970];
  v6 = [v4 stringWithFormat:@"%f", v5];
  v7 = [v3 dictionaryWithObjectsAndKeys:{v6, @"UserVoiceProfileDateTrained", self->_locale, @"UserVoiceProfileLocale", self->_profileBasePath, @"UserVoiceProfilePath", self->_profileID, @"UserVoiceProfileID", self->_appDomain, @"UserVoiceProfileAppDomain", self->_profilePitch, @"UserVoiceProfilePitch", self->_enrollmentId, @"UserVoiceProfileEnrollmentId", 0}];

  siriProfileId = self->_siriProfileId;
  if (siriProfileId)
  {
    [v7 setObject:siriProfileId forKey:@"UserSharedSiriID"];
  }

  if (CSIsInternalBuild())
  {
    userName = self->_userName;
    if (userName)
    {
      [v7 setObject:userName forKey:@"UserVoiceProfileUserName"];
    }
  }

  profileBasePathExclave = self->_profileBasePathExclave;
  if (profileBasePathExclave)
  {
    [v7 setObject:profileBasePathExclave forKey:@"UserVoiceProfilePathExclave"];
  }

  donationIds = self->_donationIds;
  if (donationIds)
  {
    [v7 setObject:donationIds forKey:@"VoiceProfileEnrollmentDonationIds"];
  }

  personaID = self->_personaID;
  if (personaID)
  {
    [v7 setObject:personaID forKey:@"UserPersonaID"];
  }

  v13 = [v7 copy];

  return v13;
}

- (SSRVoiceProfile)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v40.receiver = self;
    v40.super_class = SSRVoiceProfile;
    self = [(SSRVoiceProfile *)&v40 init];
    if (self)
    {
      selfCopy = [dictionaryCopy objectForKeyedSubscript:@"UserVoiceProfileID"];
      profileID = self->_profileID;
      self->_profileID = &selfCopy->super.isa;

      if (!selfCopy)
      {
        NSLog(&cfstr_CreatingSsrvoi.isa, dictionaryCopy);
        goto LABEL_16;
      }

      v7 = MEMORY[0x277CBEAA8];
      v8 = [dictionaryCopy objectForKeyedSubscript:@"UserVoiceProfileDateTrained"];
      [v8 doubleValue];
      v9 = [v7 dateWithTimeIntervalSince1970:?];
      dateAdded = self->_dateAdded;
      self->_dateAdded = v9;

      v11 = [dictionaryCopy objectForKeyedSubscript:@"UserVoiceProfilePath"];
      profileBasePath = self->_profileBasePath;
      self->_profileBasePath = v11;

      v13 = [dictionaryCopy objectForKeyedSubscript:@"UserVoiceProfilePathExclave"];
      profileBasePathExclave = self->_profileBasePathExclave;
      self->_profileBasePathExclave = v13;

      v15 = [dictionaryCopy objectForKeyedSubscript:@"UserVoiceProfileID"];
      v16 = self->_profileID;
      self->_profileID = v15;

      v17 = [dictionaryCopy objectForKeyedSubscript:@"UserVoiceProfileLocale"];
      locale = self->_locale;
      self->_locale = v17;

      v19 = [dictionaryCopy objectForKeyedSubscript:@"UserSharedSiriID"];
      siriProfileId = self->_siriProfileId;
      self->_siriProfileId = v19;

      v21 = [dictionaryCopy objectForKeyedSubscript:@"UserVoiceProfileAppDomain"];
      appDomain = self->_appDomain;
      self->_appDomain = v21;

      v23 = [dictionaryCopy objectForKeyedSubscript:@"UserVoiceProfileEnrollmentId"];
      enrollmentId = self->_enrollmentId;
      self->_enrollmentId = v23;

      v25 = [dictionaryCopy objectForKey:@"UserVoiceProfilePitch"];

      if (v25)
      {
        v26 = [dictionaryCopy objectForKey:@"UserVoiceProfilePitch"];
        profilePitch = self->_profilePitch;
        self->_profilePitch = v26;
      }

      if (CSIsInternalBuild())
      {
        v28 = [dictionaryCopy objectForKeyedSubscript:@"UserVoiceProfileUserName"];
        userName = self->_userName;
        self->_userName = v28;
      }

      v30 = [dictionaryCopy objectForKey:@"VoiceProfileEnrollmentDonationIds"];
      if (v30)
      {
        v31 = v30;
        v32 = [dictionaryCopy objectForKeyedSubscript:@"VoiceProfileEnrollmentDonationIds"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v34 = [dictionaryCopy objectForKey:@"VoiceProfileEnrollmentDonationIds"];
          donationIds = self->_donationIds;
          self->_donationIds = v34;
        }
      }

      v36 = [dictionaryCopy objectForKey:@"UserPersonaID"];

      if (v36)
      {
        v37 = [dictionaryCopy objectForKey:@"UserPersonaID"];
        personaID = self->_personaID;
        self->_personaID = v37;
      }
    }

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_16:

  return selfCopy;
}

- (id)initNewVoiceProfileWithLocale:(id)locale withAppDomain:(id)domain
{
  v33 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  domainCopy = domain;
  v30.receiver = self;
  v30.super_class = SSRVoiceProfile;
  v9 = [(SSRVoiceProfile *)&v30 init];
  if (!v9)
  {
    goto LABEL_5;
  }

  if (localeCopy && domainCopy)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    profileID = v9->_profileID;
    v9->_profileID = uUIDString;

    date = [MEMORY[0x277CBEAA8] date];
    dateAdded = v9->_dateAdded;
    v9->_dateAdded = date;

    v15 = +[SSRVoiceProfileManager sharedInstance];
    sSRSpeakerProfilesBasePath = [v15 SSRSpeakerProfilesBasePath];

    v17 = [sSRSpeakerProfilesBasePath stringByAppendingPathComponent:domainCopy];
    v18 = [v17 stringByAppendingPathComponent:localeCopy];
    v19 = [v18 stringByAppendingPathComponent:v9->_profileID];
    profileBasePath = v9->_profileBasePath;
    v9->_profileBasePath = v19;

    objc_storeStrong(&v9->_appDomain, domain);
    objc_storeStrong(&v9->_locale, locale);
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    profilePitch = v9->_profilePitch;
    v9->_profilePitch = v21;

    donationIds = v9->_donationIds;
    v9->_donationIds = 0;

    v24 = +[SSRUtils generateEnrollmentId];
    enrollmentId = v9->_enrollmentId;
    v9->_enrollmentId = v24;

LABEL_5:
    v26 = v9;
    goto LABEL_9;
  }

  v27 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[SSRVoiceProfile initNewVoiceProfileWithLocale:withAppDomain:]";
    _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEFAULT, "%s ERR: missing arguments to create voice profile - Bailing out", buf, 0xCu);
  }

  v26 = 0;
LABEL_9:

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  locale = self->_locale;
  coderCopy = coder;
  [coderCopy encodeObject:locale forKey:@"UserVoiceProfileLocale"];
  [coderCopy encodeObject:self->_appDomain forKey:@"UserVoiceProfileAppDomain"];
  [coderCopy encodeObject:self->_profileID forKey:@"UserVoiceProfileID"];
  [coderCopy encodeObject:self->_siriProfileId forKey:@"UserSharedSiriID"];
  [coderCopy encodeObject:self->_dateAdded forKey:@"UserVoiceProfileDateTrained"];
  [coderCopy encodeObject:self->_profileBasePath forKey:@"UserVoiceProfilePath"];
  [coderCopy encodeObject:self->_profileBasePathExclave forKey:@"UserVoiceProfilePathExclave"];
  [coderCopy encodeObject:self->_profilePitch forKey:@"UserVoiceProfilePitch"];
  [coderCopy encodeObject:self->_donationIds forKey:@"VoiceProfileEnrollmentDonationIds"];
  [coderCopy encodeObject:self->_enrollmentId forKey:@"UserVoiceProfileEnrollmentId"];
  [coderCopy encodeObject:self->_personaID forKey:@"UserPersonaID"];
}

- (SSRVoiceProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = SSRVoiceProfile;
  v5 = [(SSRVoiceProfile *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfileLocale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfileAppDomain"];
    appDomain = v5->_appDomain;
    v5->_appDomain = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfileID"];
    profileID = v5->_profileID;
    v5->_profileID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserSharedSiriID"];
    siriProfileId = v5->_siriProfileId;
    v5->_siriProfileId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfileDateTrained"];
    dateAdded = v5->_dateAdded;
    v5->_dateAdded = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfilePath"];
    profileBasePath = v5->_profileBasePath;
    v5->_profileBasePath = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfilePathExclave"];
    profileBasePathExclave = v5->_profileBasePathExclave;
    v5->_profileBasePathExclave = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfilePitch"];
    profilePitch = v5->_profilePitch;
    v5->_profilePitch = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"VoiceProfileEnrollmentDonationIds"];
    donationIds = v5->_donationIds;
    v5->_donationIds = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfileEnrollmentId"];
    enrollmentId = v5->_enrollmentId;
    v5->_enrollmentId = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserPersonaID"];
    personaID = v5->_personaID;
    v5->_personaID = v29;
  }

  return v5;
}

@end