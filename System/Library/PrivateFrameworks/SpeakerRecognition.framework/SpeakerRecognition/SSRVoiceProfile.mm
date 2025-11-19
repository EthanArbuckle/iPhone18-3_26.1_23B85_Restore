@interface SSRVoiceProfile
- (BOOL)_isSATMarkedWithMarker:(id)a3;
- (BOOL)_markSATEnrollmentWithMarker:(id)a3;
- (BOOL)deleteModelForSpidType:(unint64_t)a3 recognizerType:(unint64_t)a4;
- (BOOL)isValidForRPIWithError:(id *)a3;
- (BOOL)markSATEnrollmentSuccess;
- (BOOL)profileLocallyAvailable;
- (BOOL)updatePruningCookie:(id)a3;
- (NSString)pruningCookie;
- (NSString)voiceProfileIdentity;
- (SSRVoiceProfile)initWithCoder:(id)a3;
- (SSRVoiceProfile)initWithDictionary:(id)a3;
- (id)_getEnrollmentUtterancesForType:(unint64_t)a3;
- (id)_voiceProfilePathForSpidType:(unint64_t)a3;
- (id)addUtterances:(id)a3 spIdType:(unint64_t)a4;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exclaveVoiceProfileModelFilePathForRecognizerType:(unint64_t)a3 spIdType:(unint64_t)a4;
- (id)getEnrollmentUtterancesForModelType:(unint64_t)a3;
- (id)getExplicitEnrollmentUtterancesForType:(unint64_t)a3;
- (id)getExplicitMarkedEnrollmentUtterancesForType:(unint64_t)a3;
- (id)getImplicitEnrollmentUtterancesForType:(unint64_t)a3;
- (id)getImplicitEnrollmentUtterancesPriorTo:(id)a3 forType:(unint64_t)a4;
- (id)importVoiceProfileAtPath:(id)a3;
- (id)initNewVoiceProfileWithLocale:(id)a3 withAppDomain:(id)a4;
- (id)voiceProfileAudioDirPathForSpidType:(unint64_t)a3;
- (id)voiceProfileModelDirForSpidType:(unint64_t)a3 recognizerType:(unint64_t)a4;
- (id)voiceProfileModelFilePathForRecognizerType:(unint64_t)a3 spIdType:(unint64_t)a4;
- (unint64_t)_copyExplicitAudio:(id)a3 withSpIdType:(unint64_t)a4;
- (unint64_t)copyTDAudioToTDTI;
- (unint64_t)getTDAudioCount;
- (unint64_t)productCategory;
- (unint64_t)voiceProfileVersion;
- (void)_updateVoiceProfileVersionFile;
- (void)addDonationId:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSRVoiceProfile

- (id)_getEnrollmentUtterancesForType:(unint64_t)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = [(SSRVoiceProfile *)self profileBasePath];
  v5 = [SSRUtils stringForCSSpIdType:a3];
  v6 = objc_alloc(MEMORY[0x277CBEBC0]);
  v7 = [v4 stringByAppendingPathComponent:v5];
  v8 = [v7 stringByAppendingPathComponent:@"audio"];
  v9 = [v6 initWithString:v8];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 enumeratorAtURL:v9 includingPropertiesForKeys:0 options:0 errorHandler:&__block_literal_global_4466];

  if (v11)
  {
    v27 = v5;
    v28 = v4;
    v12 = [MEMORY[0x277CBEB18] array];
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
          v19 = [v18 path];
          v20 = [v19 hasSuffix:@".wav"];

          if (v20)
          {
            v21 = [[SSREnrollmentUtterance alloc] initWithEnrollmentUtteranceUrl:v18];
            v22 = v21;
            if (v21 && [(SSREnrollmentUtterance *)v21 isExplicit])
            {
              [v12 addObject:v22];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    v5 = v27;
    v4 = v28;
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

    v12 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v12;
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

- (BOOL)updatePruningCookie:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  v7 = [SSRUtils readJsonFileAtPath:v6];
  v8 = v7;
  v27 = 0;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    [v9 setObject:v4 forKeyedSubscript:@"VoiceProfilePruningCookie"];
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

    if ([v5 fileExistsAtPath:v6 isDirectory:&v27])
    {
      v25 = 0;
      v19 = [v5 removeItemAtPath:v6 error:&v25];
      v13 = v25;
      if ((v19 & 1) == 0)
      {
        v15 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v29 = "[SSRVoiceProfile updatePruningCookie:]";
          v30 = 2112;
          v31 = v6;
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
    v21 = [v12 writeToFile:v6 options:0 error:&v24];
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
      v31 = v6;
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
  v2 = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  v3 = [SSRUtils readJsonFileAtPath:v2];

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
  v2 = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v37 = 0;
  v4 = [MEMORY[0x277D018F8] deviceProductType];
  if (!v4 || (v5 = [SSRUtils deviceCategoryForDeviceProductType:v4]) == 0)
  {
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[SSRVoiceProfile _updateVoiceProfileVersionFile]";
      v42 = 2114;
      v43 = v4;
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s ERR: Unknown device-category for device: %{public}@", buf, 0x16u);
    }

    v5 = 0;
  }

  if (![v3 fileExistsAtPath:v2 isDirectory:&v37] || (v37 & 1) != 0)
  {
    v38[0] = @"VoiceProfileCompatabiltyVersion";
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 1];
    v39[0] = v7;
    v38[1] = @"VoiceProfileProductType";
    v8 = [MEMORY[0x277D018F8] deviceProductType];
    v39[1] = v8;
    v38[2] = @"VoiceProfileSWVersion";
    v9 = [MEMORY[0x277D018F8] deviceBuildVersion];
    v39[2] = v9;
    v38[3] = @"VoiceProfileCategoryType";
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v5];
    v39[3] = v10;
    v38[4] = @"VoiceProfileIdentifier";
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    v39[4] = v12;
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

    if ([v3 fileExistsAtPath:v2 isDirectory:&v37] && (v37 & 1) == 0)
    {
      v34 = 0;
      v30 = [v3 removeItemAtPath:v2 error:&v34];
      v16 = v34;
      if ((v30 & 1) == 0)
      {
        v19 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v41 = "[SSRVoiceProfile _updateVoiceProfileVersionFile]";
          v42 = 2112;
          v43 = v2;
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
    v18 = [v14 writeToFile:v2 options:0 error:&v33];
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
      v43 = v2;
      v44 = 2112;
      v45 = v16;
      v20 = "%s ERR: Error writing voice profile version file at: %@, err:%@";
LABEL_35:
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x20u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v22 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2];
  if (v22)
  {
    v23 = v22;
    v36 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v22 options:0 error:&v36];
    v24 = v36;
    v25 = v24;
    if (v8 && !v24)
    {

      v7 = [v8 mutableCopy];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 1];
      [v7 setValue:v26 forKey:@"VoiceProfileCompatabiltyVersion"];

      v27 = [MEMORY[0x277D018F8] deviceProductType];
      [v7 setValue:v27 forKey:@"VoiceProfileProductType"];

      v28 = [MEMORY[0x277D018F8] deviceBuildVersion];
      [v7 setValue:v28 forKey:@"VoiceProfileSWVersion"];

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
      v43 = v2;
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
      v43 = v2;
      _os_log_error_impl(&dword_225E12000, v31, OS_LOG_TYPE_ERROR, "%s Unable to read data from file: %@", buf, 0x16u);
    }
  }

LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_markSATEnrollmentWithMarker:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = self->_profileBasePath;
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v6 fileExistsAtPath:v5 isDirectory:0])
    {
      v7 = [(NSString *)v5 stringByAppendingPathComponent:v4];
      v8 = [v6 createFileAtPath:v7 contents:0 attributes:0];
      v9 = *MEMORY[0x277D01970];
      if (v8)
      {
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = "[SSRVoiceProfile _markSATEnrollmentWithMarker:]";
          v16 = 2114;
          v17 = v4;
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
        v17 = v4;
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
        v17 = v4;
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

- (BOOL)_isSATMarkedWithMarker:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_profileBasePath;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v6 fileExistsAtPath:v5 isDirectory:0])
  {
    v7 = [(NSString *)v5 stringByAppendingPathComponent:v4];
    if ([v6 fileExistsAtPath:v7 isDirectory:0])
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
      v13 = [v6 contentsOfDirectoryAtPath:v12 error:0];
      v14 = [(SSRVoiceProfile *)self getEnrollmentUtterancesForModelType:v9];
      v15 = [v14 count];
      v16 = v15;
      if (v8 && v15 <= 4 && CSIsIOS())
      {
        if ([(SSRVoiceProfile *)self getTDAudioCount])
        {
          v17 = [MEMORY[0x277CCA9A0] defaultCenter];
          [v17 postNotificationName:@"com.apple.speakerrecognition.migrateTDprofile" object:0];

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
        v25 = v4;
        v26 = 1026;
        v27 = 0;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: Removing %{public}@ as explicit utterances %{public}d from audio dir - %{public}@", &v22, 0x26u);
      }

      [v6 removeItemAtPath:v7 error:0];
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
  v2 = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  v3 = [SSRUtils getVoiceProfileProductCategoryFromVersionFilePath:v2];

  return v3;
}

- (NSString)voiceProfileIdentity
{
  v2 = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  v3 = [SSRUtils getVoiceProfileIdentityFromVersionFilePath:v2];

  return v3;
}

- (unint64_t)voiceProfileVersion
{
  v2 = [(SSRVoiceProfile *)self _getProfileVersionFilePath];
  v3 = [SSRUtils readJsonFileAtPath:v2];

  v4 = [v3 objectForKeyedSubscript:@"VoiceProfileCompatabiltyVersion"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"VoiceProfileCompatabiltyVersion"];
    v4 = [v5 intValue];
  }

  return v4;
}

- (BOOL)deleteModelForSpidType:(unint64_t)a3 recognizerType:(unint64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = [(SSRVoiceProfile *)self voiceProfileModelDirForSpidType:a3 recognizerType:a4];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:0];

  if (v6)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v33 = 0;
    v8 = [v7 contentsOfDirectoryAtPath:v4 error:&v33];
    v9 = v33;

    if (v9 || !v8)
    {
      v22 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v25 = v22;
        v26 = [v9 localizedDescription];
        *buf = 136315650;
        v35 = "[SSRVoiceProfile deleteModelForSpidType:recognizerType:]";
        v36 = 2114;
        v37 = v4;
        v38 = 2114;
        v39 = v26;
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
              v17 = [MEMORY[0x277CCAA00] defaultManager];
              v28 = 0;
              [v17 removeItemAtPath:v16 error:&v28];
              v18 = v28;

              if (v18)
              {
                v19 = *v14;
                if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
                {
                  v20 = v19;
                  v21 = [v18 localizedDescription];
                  *buf = 136315650;
                  v35 = "[SSRVoiceProfile deleteModelForSpidType:recognizerType:]";
                  v36 = 2114;
                  v37 = v16;
                  v38 = 2114;
                  v39 = v21;
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

- (id)_voiceProfilePathForSpidType:(unint64_t)a3
{
  if ([MEMORY[0x277D018F8] isDarwinOS])
  {
    v5 = self->_profileBasePath;
  }

  else
  {
    v6 = [SSRUtils stringForCSSpIdType:a3];
    v5 = [(NSString *)self->_profileBasePath stringByAppendingPathComponent:v6];
  }

  return v5;
}

- (id)voiceProfileModelDirForSpidType:(unint64_t)a3 recognizerType:(unint64_t)a4
{
  v5 = [(SSRVoiceProfile *)self _voiceProfilePathForSpidType:a3];
  v6 = v5;
  if (a4 == 1)
  {
    v7 = @"td-sr-model";
    goto LABEL_5;
  }

  if (a4 == 2)
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

- (id)voiceProfileAudioDirPathForSpidType:(unint64_t)a3
{
  v3 = 3;
  if (a3 != 4)
  {
    v3 = a3;
  }

  if (a3 == 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
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

- (id)getImplicitEnrollmentUtterancesForType:(unint64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 4)
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

- (id)getImplicitEnrollmentUtterancesPriorTo:(id)a3 forType:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:a4];
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    v9 = [SSRUtils getImplicitEnrollmentUtterancesFromDirectory:v8];

    v10 = MEMORY[0x277CCAC30];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__SSRVoiceProfile_getImplicitEnrollmentUtterancesPriorTo_forType___block_invoke;
    v16[3] = &unk_278578638;
    v17 = v6;
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

- (id)getEnrollmentUtterancesForModelType:(unint64_t)a3
{
  if (a3 == 4)
  {
    v3 = 3;
    goto LABEL_5;
  }

  if (a3 == 5)
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

- (id)getExplicitMarkedEnrollmentUtterancesForType:(unint64_t)a3
{
  v3 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:a3];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v5 = [SSRUtils getExplicitMarkedEnrollmentUtterancesFromDirectory:v4];

  return v5;
}

- (id)getExplicitEnrollmentUtterancesForType:(unint64_t)a3
{
  v3 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:a3];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v5 = [SSRUtils getExplicitEnrollmentUtterancesFromDirectory:v4];

  return v5;
}

- (id)addUtterances:(id)a3 spIdType:(unint64_t)a4
{
  v76[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v51 = self;
    v8 = [(SSRVoiceProfile *)self voiceProfileAudioDirPathForSpidType:a4];
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    v52 = v8;
    v10 = [SSRUtils createDirectoryIfDoesNotExist:v8];
    v11 = [MEMORY[0x277CCAA00] defaultManager];
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
      v54 = v11;
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
          v18 = [v17 lastPathComponent];
          v19 = [v9 URLByAppendingPathComponent:v18];

          v20 = [v17 URLByDeletingPathExtension];
          v21 = [v20 URLByAppendingPathExtension:@"json"];

          v22 = [v21 lastPathComponent];
          v23 = [v9 URLByAppendingPathComponent:v22];

          v59 = v15;
          [v11 copyItemAtURL:v17 toURL:v19 error:&v59];
          v24 = v59;

          v25 = *MEMORY[0x277D01970];
          v26 = *MEMORY[0x277D01970];
          if (v24)
          {
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v33 = v25;
              v34 = [v24 localizedDescription];
              *buf = 136315906;
              v67 = "[SSRVoiceProfile addUtterances:spIdType:]";
              v68 = 2114;
              v69 = v17;
              v70 = 2114;
              v71 = v19;
              v72 = 2114;
              v73 = v34;
              _os_log_error_impl(&dword_225E12000, v33, OS_LOG_TYPE_ERROR, "%s Error to copy utterance from %{public}@ to %{public}@, error: %{public}@", buf, 0x2Au);

              v11 = v54;
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

            v27 = [v21 path];
            v28 = [v11 fileExistsAtPath:v27];

            if (v28 && (v58 = 0, [v11 copyItemAtURL:v21 toURL:v23 error:&v58], (v29 = v58) != 0))
            {
              v15 = v29;
              v30 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                v35 = v30;
                v36 = [v15 localizedDescription];
                *buf = 136315906;
                v67 = "[SSRVoiceProfile addUtterances:spIdType:]";
                v68 = 2114;
                v69 = v21;
                v70 = 2114;
                v71 = v23;
                v72 = 2114;
                v73 = v36;
                _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, "%s Error to copy jsonFile from %{public}@ to %{public}@, error: %{public}@", buf, 0x2Au);
              }

              v31 = [v19 path];
              v32 = [SSRUtils removeItemAtPath:v31];

              v11 = v54;
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
      profileID = v51->_profileID;
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

- (id)importVoiceProfileAtPath:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_profileBasePath];
  v5 = [v43 path];
  v6 = [SSRUtils createDirectoryIfDoesNotExist:v5];

  v39 = v4;
  [SSRUtils getContentsOfDirectory:v4];
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
        v13 = [v12 lastPathComponent];
        v14 = [SSRUtils stringForCSSpIdType:2];
        v15 = [v13 isEqualToString:v14];

        if ((v15 & 1) == 0)
        {
          v16 = [SSRUtils stringForCSSpIdType:1];
          v17 = [v13 isEqualToString:v16];

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
            v19 = [v13 isEqualToString:v18];

            if (v19)
            {
              v42 = [(SSRVoiceProfile *)self _copyExplicitAudio:v12 withSpIdType:3];
            }

            else
            {
              v20 = self;
              v21 = [v12 lastPathComponent];
              v22 = [v43 URLByAppendingPathComponent:v21];

              v23 = [MEMORY[0x277CCAA00] defaultManager];
              v44 = 0;
              [v23 copyItemAtURL:v12 toURL:v22 error:&v44];
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
                v27 = [SSRUtils removeItemAtPath:v20->_profileBasePath];

                v7 = v40;
                v28 = v40;
                v29 = v39;
                goto LABEL_21;
              }

              self = v20;
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
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v24 = [v38 errorWithDomain:@"com.apple.speakerrecognition" code:733 userInfo:v13];
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

- (unint64_t)_copyExplicitAudio:(id)a3 withSpIdType:(unint64_t)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 URLByAppendingPathComponent:@"audio"];
  v8 = [SSRUtils getExplicitEnrollmentUtterancesFromDirectory:v7];
  v9 = [SSRUtils stringForCSSpIdType:a4];
  v10 = MEMORY[0x277D01970];
  v11 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    profileID = self->_profileID;
    v13 = v11;
    v14 = [v6 path];
    v28 = 136315906;
    v29 = "[SSRVoiceProfile _copyExplicitAudio:withSpIdType:]";
    v30 = 2114;
    v31 = v9;
    v32 = 2114;
    v33 = profileID;
    v34 = 2114;
    v35 = v14;
    _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Importing %{public}@ of %{public}@ from import Dir %{public}@", &v28, 0x2Au);
  }

  v15 = [(SSRVoiceProfile *)self addUtterances:v8 spIdType:a4];
  if (v15)
  {
    v16 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_profileID;
      v18 = v16;
      v19 = [v6 path];
      v28 = 136315906;
      v29 = "[SSRVoiceProfile _copyExplicitAudio:withSpIdType:]";
      v30 = 2114;
      v31 = v9;
      v32 = 2114;
      v33 = v17;
      v34 = 2114;
      v35 = v19;
      _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s Failed in importing %{public}@ of %{public}@ from import Dir %{public}@", &v28, 0x2Au);
    }

    v20 = 0;
  }

  else
  {
    v21 = [(SSRVoiceProfile *)self getExplicitEnrollmentUtterancesForType:a4];
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

- (BOOL)isValidForRPIWithError:(id *)a3
{
  if ([(NSString *)self->_appDomain isEqualToString:@"com.apple.siri"])
  {
    if (self->_donationIds)
    {
      return 1;
    }

    if (a3)
    {
      v6 = 1265;
      goto LABEL_8;
    }
  }

  else if (a3)
  {
    v6 = 1264;
LABEL_8:
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:v6 userInfo:0];
    v8 = v7;
    result = 0;
    *a3 = v7;
    return result;
  }

  return 0;
}

- (void)addDonationId:(id)a3
{
  v4 = a3;
  if (v4)
  {
    donationIds = self->_donationIds;
    v8 = v4;
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

- (id)exclaveVoiceProfileModelFilePathForRecognizerType:(unint64_t)a3 spIdType:(unint64_t)a4
{
  v4 = [(SSRVoiceProfile *)self voiceProfileModelFilePathForRecognizerType:a3 spIdType:a4];
  v5 = [v4 URLByAppendingPathExtension:@"exclave"];

  return v5;
}

- (id)voiceProfileModelFilePathForRecognizerType:(unint64_t)a3 spIdType:(unint64_t)a4
{
  v4 = [(SSRVoiceProfile *)self voiceProfileModelDirForSpidType:a4 recognizerType:a3];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];

  return v5;
}

- (id)description
{
  v2 = [(SSRVoiceProfile *)self dictionaryRepresentation];
  v3 = [v2 description];

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

- (SSRVoiceProfile)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v40.receiver = self;
    v40.super_class = SSRVoiceProfile;
    self = [(SSRVoiceProfile *)&v40 init];
    if (self)
    {
      v5 = [v4 objectForKeyedSubscript:@"UserVoiceProfileID"];
      profileID = self->_profileID;
      self->_profileID = &v5->super.isa;

      if (!v5)
      {
        NSLog(&cfstr_CreatingSsrvoi.isa, v4);
        goto LABEL_16;
      }

      v7 = MEMORY[0x277CBEAA8];
      v8 = [v4 objectForKeyedSubscript:@"UserVoiceProfileDateTrained"];
      [v8 doubleValue];
      v9 = [v7 dateWithTimeIntervalSince1970:?];
      dateAdded = self->_dateAdded;
      self->_dateAdded = v9;

      v11 = [v4 objectForKeyedSubscript:@"UserVoiceProfilePath"];
      profileBasePath = self->_profileBasePath;
      self->_profileBasePath = v11;

      v13 = [v4 objectForKeyedSubscript:@"UserVoiceProfilePathExclave"];
      profileBasePathExclave = self->_profileBasePathExclave;
      self->_profileBasePathExclave = v13;

      v15 = [v4 objectForKeyedSubscript:@"UserVoiceProfileID"];
      v16 = self->_profileID;
      self->_profileID = v15;

      v17 = [v4 objectForKeyedSubscript:@"UserVoiceProfileLocale"];
      locale = self->_locale;
      self->_locale = v17;

      v19 = [v4 objectForKeyedSubscript:@"UserSharedSiriID"];
      siriProfileId = self->_siriProfileId;
      self->_siriProfileId = v19;

      v21 = [v4 objectForKeyedSubscript:@"UserVoiceProfileAppDomain"];
      appDomain = self->_appDomain;
      self->_appDomain = v21;

      v23 = [v4 objectForKeyedSubscript:@"UserVoiceProfileEnrollmentId"];
      enrollmentId = self->_enrollmentId;
      self->_enrollmentId = v23;

      v25 = [v4 objectForKey:@"UserVoiceProfilePitch"];

      if (v25)
      {
        v26 = [v4 objectForKey:@"UserVoiceProfilePitch"];
        profilePitch = self->_profilePitch;
        self->_profilePitch = v26;
      }

      if (CSIsInternalBuild())
      {
        v28 = [v4 objectForKeyedSubscript:@"UserVoiceProfileUserName"];
        userName = self->_userName;
        self->_userName = v28;
      }

      v30 = [v4 objectForKey:@"VoiceProfileEnrollmentDonationIds"];
      if (v30)
      {
        v31 = v30;
        v32 = [v4 objectForKeyedSubscript:@"VoiceProfileEnrollmentDonationIds"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v34 = [v4 objectForKey:@"VoiceProfileEnrollmentDonationIds"];
          donationIds = self->_donationIds;
          self->_donationIds = v34;
        }
      }

      v36 = [v4 objectForKey:@"UserPersonaID"];

      if (v36)
      {
        v37 = [v4 objectForKey:@"UserPersonaID"];
        personaID = self->_personaID;
        self->_personaID = v37;
      }
    }

    self = self;
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

LABEL_16:

  return v5;
}

- (id)initNewVoiceProfileWithLocale:(id)a3 withAppDomain:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = SSRVoiceProfile;
  v9 = [(SSRVoiceProfile *)&v30 init];
  if (!v9)
  {
    goto LABEL_5;
  }

  if (v7 && v8)
  {
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v10 UUIDString];
    profileID = v9->_profileID;
    v9->_profileID = v11;

    v13 = [MEMORY[0x277CBEAA8] date];
    dateAdded = v9->_dateAdded;
    v9->_dateAdded = v13;

    v15 = +[SSRVoiceProfileManager sharedInstance];
    v16 = [v15 SSRSpeakerProfilesBasePath];

    v17 = [v16 stringByAppendingPathComponent:v8];
    v18 = [v17 stringByAppendingPathComponent:v7];
    v19 = [v18 stringByAppendingPathComponent:v9->_profileID];
    profileBasePath = v9->_profileBasePath;
    v9->_profileBasePath = v19;

    objc_storeStrong(&v9->_appDomain, a4);
    objc_storeStrong(&v9->_locale, a3);
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

- (void)encodeWithCoder:(id)a3
{
  locale = self->_locale;
  v5 = a3;
  [v5 encodeObject:locale forKey:@"UserVoiceProfileLocale"];
  [v5 encodeObject:self->_appDomain forKey:@"UserVoiceProfileAppDomain"];
  [v5 encodeObject:self->_profileID forKey:@"UserVoiceProfileID"];
  [v5 encodeObject:self->_siriProfileId forKey:@"UserSharedSiriID"];
  [v5 encodeObject:self->_dateAdded forKey:@"UserVoiceProfileDateTrained"];
  [v5 encodeObject:self->_profileBasePath forKey:@"UserVoiceProfilePath"];
  [v5 encodeObject:self->_profileBasePathExclave forKey:@"UserVoiceProfilePathExclave"];
  [v5 encodeObject:self->_profilePitch forKey:@"UserVoiceProfilePitch"];
  [v5 encodeObject:self->_donationIds forKey:@"VoiceProfileEnrollmentDonationIds"];
  [v5 encodeObject:self->_enrollmentId forKey:@"UserVoiceProfileEnrollmentId"];
  [v5 encodeObject:self->_personaID forKey:@"UserPersonaID"];
}

- (SSRVoiceProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SSRVoiceProfile;
  v5 = [(SSRVoiceProfile *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfileLocale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfileAppDomain"];
    appDomain = v5->_appDomain;
    v5->_appDomain = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfileID"];
    profileID = v5->_profileID;
    v5->_profileID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserSharedSiriID"];
    siriProfileId = v5->_siriProfileId;
    v5->_siriProfileId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfileDateTrained"];
    dateAdded = v5->_dateAdded;
    v5->_dateAdded = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfilePath"];
    profileBasePath = v5->_profileBasePath;
    v5->_profileBasePath = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfilePathExclave"];
    profileBasePathExclave = v5->_profileBasePathExclave;
    v5->_profileBasePathExclave = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfilePitch"];
    profilePitch = v5->_profilePitch;
    v5->_profilePitch = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"VoiceProfileEnrollmentDonationIds"];
    donationIds = v5->_donationIds;
    v5->_donationIds = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserVoiceProfileEnrollmentId"];
    enrollmentId = v5->_enrollmentId;
    v5->_enrollmentId = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserPersonaID"];
    personaID = v5->_personaID;
    v5->_personaID = v29;
  }

  return v5;
}

@end