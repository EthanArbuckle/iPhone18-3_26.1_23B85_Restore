@interface SSRUtils
+ (BOOL)isCurrentDeviceCompatibleWithNewerVoiceProfileAt:(id)a3;
+ (BOOL)isCurrentDeviceCompatibleWithVoiceProfileAt:(id)a3;
+ (BOOL)isMphVTUIKeywordDetectorSupportedPlatform;
+ (BOOL)isSpeakerRecognitionSupportedInLocale:(id)a3;
+ (BOOL)ssrAudioLogsCountWithinPrivacyLimit;
+ (id)_getUtterancesFromDirectory:(id)a3;
+ (id)baseDir;
+ (id)combineScoreFromPSR:(id)a3 fromSAT:(id)a4 withCombinedWt:(float)a5;
+ (id)concatenateDonationId:(id)a3 triggerPhraseId:(unint64_t)a4;
+ (id)convertSchemaTypeWithLocale:(id)a3;
+ (id)createDirectoryIfDoesNotExist:(id)a3;
+ (id)deviceCategoryStringRepresentationForCategoryType:(unint64_t)a3;
+ (id)generateEnrollmentId;
+ (id)getContentsOfDirectory:(id)a3;
+ (id)getEmbeddingFileName:(id)a3;
+ (id)getEnrollmentUtterancesFromDirectory:(id)a3;
+ (id)getExplicitEnrollmentUtterancesFromDirectory:(id)a3;
+ (id)getExplicitMarkedEnrollmentUtterancesFromDirectory:(id)a3;
+ (id)getImplicitEnrollmentUtterancesFromDirectory:(id)a3;
+ (id)getImplicitUtteranceCacheDirectory;
+ (id)getVoiceEnrollmentDownloadBaseDir;
+ (id)getVoiceProfileForSiriProfileId:(id)a3 forLanguageCode:(id)a4;
+ (id)getVoiceProfileIdentityFromVersionFilePath:(id)a3;
+ (id)getVoiceProfilesForSiriProfileId:(id)a3;
+ (id)moveContentsOfSrcDirectory:(id)a3 toDestDirectory:(id)a4;
+ (id)psrConfigFileNameForCSSpIdType:(unint64_t)a3;
+ (id)readJsonFileAtPath:(id)a3;
+ (id)removeItemAtPath:(id)a3;
+ (id)satConfigFileNameForCSSpIdType:(unint64_t)a3;
+ (id)satConfigFileNameForCSSpIdType:(unint64_t)a3 forModelType:(unint64_t)a4 forAssetType:(unint64_t)a5;
+ (id)spIdVoiceProfileImportRootDir;
+ (id)spidAudioTrainUtterancesDir;
+ (id)ssrAudioLogsDir;
+ (id)stringForCSSpIdType:(unint64_t)a3;
+ (id)stringForInvocationStyle:(unint64_t)a3;
+ (id)stringForSpeakerRecognizerType:(unint64_t)a3;
+ (id)stringForVoiceProfileRetrainerType:(unint64_t)a3;
+ (id)timeStampString;
+ (int)convertToSchemaEnumWithPhId:(unint64_t)a3;
+ (int64_t)getNumberOfAudioFilesInDirectory:(id)a3;
+ (unint64_t)convertToEnrollmentTriggerPhraseWithPhId:(unint64_t)a3;
+ (unint64_t)deviceCategoryForDeviceProductType:(id)a3;
+ (unint64_t)deviceCategoryFromString:(id)a3;
+ (unint64_t)explicitSpIdTypeForSpId:(unint64_t)a3;
+ (unint64_t)getCurrentDeviceCategoryType;
+ (unint64_t)getVoiceProfileProductCategoryFromVersionFilePath:(id)a3;
+ (unint64_t)spIdTypeForString:(id)a3;
+ (void)cleanupOrphanedVoiceIdGradingFiles;
+ (void)dumpFilesInDirectory:(id)a3;
+ (void)getEnrollmentUtterancesCountFromDirectory:(id)a3 withCountBlock:(id)a4;
+ (void)getHomeUserIdForVoiceProfile:(id)a3 withCompletion:(id)a4;
+ (void)logSpeakerRecognitionGradingMetadataAtFilepath:(id)a3 withScoreInfo:(id)a4;
+ (void)segmentVoiceTriggerFromAudioFile:(id)a3 withVTEventInfo:(id)a4 withStorePayloadPortion:(BOOL)a5 withCompletion:(id)a6;
+ (void)streamAudioFromFileUrl:(id)a3 audioStreamBasicDescriptor:(AudioStreamBasicDescription *)a4 samplesPerStreamChunk:(unint64_t)a5 audioDataAvailableHandler:(id)a6;
@end

@implementation SSRUtils

+ (id)getEmbeddingFileName:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 assetHash];
  v5 = [v3 assetVersion];

  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"nil";
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = @"nil";
    }

    *buf = 136315650;
    v17 = "+[SSRUtils getEmbeddingFileName:]";
    v18 = 2112;
    v19 = v8;
    if (v5)
    {
      v7 = v5;
    }

    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s asset hash is %@, asset version is %@", buf, 0x20u);
  }

  v9 = @"nohash";
  if (v4)
  {
    v9 = v4;
  }

  v10 = v9;

  v11 = @"0.0";
  if (v5)
  {
    v11 = v5;
  }

  v12 = v11;

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v10, v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (unint64_t)convertToEnrollmentTriggerPhraseWithPhId:(unint64_t)a3
{
  if (a3)
  {
    return 2 * (a3 == 1);
  }

  else
  {
    return 1;
  }
}

+ (int)convertToSchemaEnumWithPhId:(unint64_t)a3
{
  if (a3)
  {
    return 2 * (a3 == 1);
  }

  else
  {
    return 1;
  }
}

+ (id)convertSchemaTypeWithLocale:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D5A908]);
  if (v3)
  {
    v5 = [MEMORY[0x277D5ACF8] convertLanguageCodeToSchemaLocale:v3];
    if (v5 <= 0x3E)
    {
      v6 = dword_225EA9F7C[v5];
      [v4 setCountryCode:dword_225EA9E80[v5]];
      [v4 setLanguageCode:v6];
    }
  }

  return v4;
}

+ (id)concatenateDonationId:(id)a3 triggerPhraseId:(unint64_t)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%lu", a4];
  v8 = [v6 stringByAppendingFormat:@"%@%@", @"-TriggerPhrase-", v7];

  return v8;
}

+ (id)generateEnrollmentId
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  return v3;
}

+ (id)timeStampString
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd-HH:mm:ss"];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

+ (BOOL)isMphVTUIKeywordDetectorSupportedPlatform
{
  if (CSIsIOS())
  {
    return 1;
  }

  return CSIsAppleSiliconMac();
}

+ (id)combineScoreFromPSR:(id)a3 fromSAT:(id)a4 withCombinedWt:(float)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = v9;
  if (v7 && !v8)
  {
    [v9 addEntriesFromDictionary:v7];
    v11 = @"spIdKnownUserPSRScores";
    v12 = v7;
LABEL_7:
    v13 = [v12 objectForKeyedSubscript:v11];
    [v10 setObject:v13 forKeyedSubscript:@"spIdKnownUserScores"];

    goto LABEL_8;
  }

  if (!v7 && v8)
  {
    [v9 addEntriesFromDictionary:v8];
    v11 = @"spIdKnownUserSATScores";
    v12 = v8;
    goto LABEL_7;
  }

  if (v7 && v8)
  {
    [v9 addEntriesFromDictionary:v8];
    v38 = v10;
    [v10 addEntriesFromDictionary:v7];
    v16 = [v7 objectForKeyedSubscript:@"spIdKnownUserPSRScores"];
    v37 = v8;
    v17 = [v8 objectForKeyedSubscript:@"spIdKnownUserSATScores"];
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      v23 = MEMORY[0x277D01970];
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v39 + 1) + 8 * i);
          v26 = [v17 objectForKeyedSubscript:v25];

          if (v26)
          {
            v27 = [v17 objectForKeyedSubscript:v25];
            [v27 floatValue];
            v29 = v28;

            v30 = [v19 objectForKeyedSubscript:v25];
            [v30 floatValue];
            v32 = v31;

            *&v33 = (v32 * a5) + ((1.0 - a5) * v29);
            v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
            [v18 setObject:v34 forKey:v25];
          }

          else
          {
            v35 = *v23;
            if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v44 = "+[SSRUtils combineScoreFromPSR:fromSAT:withCombinedWt:]";
              v45 = 2114;
              v46 = v25;
              v47 = 2114;
              v48 = v17;
              _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, "%s ERR: Scores for profileId %{public}@ not present in %{public}@ - Skipping", buf, 0x20u);
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v21);
    }

    v36 = [v18 copy];
    v10 = v38;
    [v38 setObject:v36 forKeyedSubscript:@"spIdKnownUserScores"];

    v8 = v37;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)moveContentsOfSrcDirectory:(id)a3 toDestDirectory:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = 0x277CCA000uLL;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v42 = 0;
  v9 = [v8 contentsOfDirectoryAtPath:v5 error:&v42];
  v10 = v42;

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v10 localizedDescription];
    obj = [v11 stringWithFormat:@"Failed to get contents of %@ with error %@", v5, v12];

    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "+[SSRUtils moveContentsOfSrcDirectory:toDestDirectory:]";
      v46 = 2114;
      v47 = obj;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v14 = v10;
    v15 = v14;
  }

  else
  {
    v16 = [SSRUtils createDirectoryIfDoesNotExist:v6];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v9;
    v17 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v36 = v6;
      v34 = v9;
      v14 = 0;
      v19 = *v39;
      do
      {
        v20 = 0;
        v21 = v14;
        do
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v38 + 1) + 8 * v20);
          v23 = v5;
          v24 = [v5 stringByAppendingPathComponent:v22];
          v25 = [v36 stringByAppendingPathComponent:v22];
          v26 = v7;
          v27 = [*(v7 + 2560) defaultManager];
          v37 = v21;
          [v27 moveItemAtPath:v24 toPath:v25 error:&v37];
          v14 = v37;

          if (v14)
          {
            v28 = MEMORY[0x277CCACA8];
            v29 = [v14 localizedDescription];
            v30 = [v28 stringWithFormat:@"Failed to move %@ to %@ with error %@", v24, v25, v29];

            v31 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v45 = "+[SSRUtils moveContentsOfSrcDirectory:toDestDirectory:]";
              v46 = 2114;
              v47 = v30;
              _os_log_error_impl(&dword_225E12000, v31, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
            }
          }

          ++v20;
          v21 = v14;
          v7 = v26;
          v5 = v23;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v18);
      v15 = 0;
      v9 = v34;
      v6 = v36;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)removeItemAtPath:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v13];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = 0;
    v7 = [v6 removeItemAtPath:v3 error:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      v9 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v15 = "+[SSRUtils removeItemAtPath:]";
        v16 = 2114;
        v17 = v3;
        v18 = 2114;
        v19 = v8;
        _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete %{public}@ with error %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_getUtterancesFromDirectory:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v21[0] = *MEMORY[0x277CBE8E8];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v14 = 0;
    v6 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v5 options:0 error:&v14];
    v7 = v14;

    if (v7)
    {
      v8 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v16 = "+[SSRUtils _getUtterancesFromDirectory:]";
        v17 = 2114;
        v18 = v3;
        v19 = 2114;
        v20 = v7;
        _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s ERR: Fetching contents of %{public}@ failed with error - %{public}@", buf, 0x20u);
      }
    }

    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self.absoluteString ENDSWITH '.wav'"];
    v10 = [v6 filteredArrayUsingPredicate:v9];
  }

  else
  {
    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "+[SSRUtils _getUtterancesFromDirectory:]";
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s satAudioDirectory is nil - Bailing out", buf, 0xCu);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)getImplicitEnrollmentUtterancesFromDirectory:(id)a3
{
  v3 = [a1 _getUtterancesFromDirectory:a3];
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_408];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_411];

  return v6;
}

uint64_t __57__SSRUtils_getImplicitEnrollmentUtterancesFromDirectory___block_invoke_409(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [SSRVoiceProfileMetadataManager recordedTimeStampOfFile:v4];
  v7 = [SSRVoiceProfileMetadataManager recordedTimeStampOfFile:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v6)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v14 = 1;
    }

    else
    {
      if (v6)
      {
        v11 = 1;
      }

      else
      {
        v11 = v7 == 0;
      }

      if (v11)
      {
        v12 = [v4 absoluteString];
        v13 = [v5 absoluteString];
        v14 = [v12 compare:v13 options:1];
      }

      else
      {
        v14 = -1;
      }
    }
  }

  else
  {
    v14 = [v6 compare:v7];
  }

  return v14;
}

uint64_t __57__SSRUtils_getImplicitEnrollmentUtterancesFromDirectory___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a2 URLByDeletingPathExtension];
  v3 = [v2 URLByAppendingPathExtension:@"json"];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if ((v6 & 1) == 0)
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[SSRUtils getImplicitEnrollmentUtterancesFromDirectory:]_block_invoke";
      v13 = 2114;
      v14 = v3;
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s metaVersionFile %{public}@ doesnt exist - Skipping", &v11, 0x16u);
    }

    goto LABEL_6;
  }

  if (![SSRVoiceProfileMetadataManager isUtteranceImplicitlyTrained:v3])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (void)getEnrollmentUtterancesCountFromDirectory:(id)a3 withCountBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _getUtterancesFromDirectory:v6];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SSRUtils_getEnrollmentUtterancesCountFromDirectory_withCountBlock___block_invoke;
  v9[3] = &unk_278578810;
  v9[4] = &v10;
  v9[5] = &v14;
  [v8 enumerateObjectsUsingBlock:v9];
  if (v7)
  {
    v7[2](v7, v15[3], v11[3]);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void __69__SSRUtils_getEnrollmentUtterancesCountFromDirectory_withCountBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:a2];
  v3 = [v5 isEqualToString:@"implicit"];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  ++*(*(*(a1 + v4) + 8) + 24);
}

+ (id)getExplicitMarkedEnrollmentUtterancesFromDirectory:(id)a3
{
  v3 = [a1 _getUtterancesFromDirectory:a3];
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_406];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

uint64_t __63__SSRUtils_getExplicitMarkedEnrollmentUtterancesFromDirectory___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [a2 URLByDeletingPathExtension];
  v3 = [v2 URLByAppendingPathExtension:@"json"];

  v4 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:v3];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v3 path];
  v7 = [v5 fileExistsAtPath:v6];

  if ((v7 & 1) == 0)
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v3 lastPathComponent];
      v14 = 136315394;
      v15 = "+[SSRUtils getExplicitMarkedEnrollmentUtterancesFromDirectory:]_block_invoke";
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s metaVersionFile %{public}@ doesnt exist - Skipping", &v14, 0x16u);
    }

    goto LABEL_6;
  }

  if (([v4 isEqualToString:@"explicit"] & 1) == 0)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)getExplicitEnrollmentUtterancesFromDirectory:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _getUtterancesFromDirectory:v4];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__4803;
  v33 = __Block_byref_object_dispose__4804;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (CSIsCommunalDevice())
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__4803;
    v26 = __Block_byref_object_dispose__4804;
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__4803;
    v20 = __Block_byref_object_dispose__4804;
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_2;
    v15[3] = &unk_278578810;
    v15[4] = &v22;
    v15[5] = &v16;
    [v5 enumerateObjectsUsingBlock:v15];
    [v30[5] addObjectsFromArray:v17[5]];
    if ([v23[5] count] && objc_msgSend(v30[5], "count") <= 4)
    {
      v6 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v23[5] count];
        *buf = 136315394;
        v36 = "+[SSRUtils getExplicitEnrollmentUtterancesFromDirectory:]";
        v37 = 1026;
        v38 = v7;
        _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Found %{public}d ambiguous explicit utterances", buf, 0x12u);
      }

      v8 = [v23[5] sortedArrayUsingComparator:&__block_literal_global_403];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_2_404;
      v14[3] = &unk_2785787E8;
      v14[4] = &v29;
      [v8 enumerateObjectsUsingBlock:v14];
    }

    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_393];
    v10 = [v5 filteredArrayUsingPredicate:v9];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_398;
    v28[3] = &unk_2785787E8;
    v28[4] = &v29;
    [v10 enumerateObjectsUsingBlock:v28];
  }

  v11 = v30[5];
  _Block_object_dispose(&v29, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_398(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:?];
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"explicit"] & 1) != 0)
  {
    [*(*(*(a1 + 32) + 8) + 40) insertObject:v5 atIndex:0];
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }
}

void __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:?];
  v4 = v3;
  if (v3)
  {
    if (![v3 isEqualToString:@"explicit"])
    {
      goto LABEL_6;
    }

    v5 = 40;
  }

  else
  {
    v5 = 32;
  }

  [*(*(*(a1 + v5) + 8) + 40) addObject:v6];
LABEL_6:
}

void __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_2_404(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(*(*(a1 + 32) + 8) + 40) count] > 4)
  {
    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }
}

uint64_t __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_400(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [SSRVoiceProfileMetadataManager recordedTimeStampFromFileName:v4];
  v7 = [SSRVoiceProfileMetadataManager recordedTimeStampFromFileName:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v6)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v14 = -1;
    }

    else
    {
      if (v6)
      {
        v11 = 1;
      }

      else
      {
        v11 = v7 == 0;
      }

      if (v11)
      {
        v12 = [v4 absoluteString];
        v13 = [v5 absoluteString];
        v14 = [v12 compare:v13 options:1];
      }

      else
      {
        v14 = 1;
      }
    }
  }

  else
  {
    v14 = [v6 compare:v7];
  }

  return v14;
}

uint64_t __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [a2 URLByDeletingPathExtension];
  v3 = [v2 URLByAppendingPathExtension:@"json"];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [SSRVoiceProfileMetadataManager isUtteranceImplicitlyTrained:v3]^ 1;
  }

  else
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v3 lastPathComponent];
      v13 = 136315394;
      v14 = "+[SSRUtils getExplicitEnrollmentUtterancesFromDirectory:]_block_invoke";
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s metaVersionFile %{public}@ doesnt exist", &v13, 0x16u);
    }

    v7 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)getEnrollmentUtterancesFromDirectory:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [a1 getExplicitEnrollmentUtterancesFromDirectory:v4];
    v6 = [a1 getImplicitEnrollmentUtterancesFromDirectory:v4];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "+[SSRUtils getEnrollmentUtterancesFromDirectory:]";
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s satAudioDirectory is nil - Bailing out", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)segmentVoiceTriggerFromAudioFile:(id)a3 withVTEventInfo:(id)a4 withStorePayloadPortion:(BOOL)a5 withCompletion:(id)a6
{
  v7 = a5;
  v90[1] = *MEMORY[0x277D85DE8];
  v52 = a3;
  v50 = a4;
  v9 = a6;
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v10 UUIDString];
  v51 = [v11 stringByAppendingString:@".wav"];

  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  v14 = [v13 stringByAppendingString:@".wav"];

  v15 = [v52 URLByDeletingLastPathComponent];
  v16 = [v15 path];

  v17 = [v16 stringByAppendingPathComponent:v51];
  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x277D01830]);
    v19 = [MEMORY[0x277CBEBC0] URLWithString:v17];
    [MEMORY[0x277D01748] lpcmInt16ASBD];
    [MEMORY[0x277D01748] lpcmInt16ASBD];
    v20 = [v18 initWithURL:v19 inputFormat:buf outputFormat:v80];

    if (v7)
    {
      v21 = [v16 stringByAppendingPathComponent:v14];
      v22 = objc_alloc(MEMORY[0x277D01830]);
      v23 = [MEMORY[0x277CBEBC0] URLWithString:v21];
      [MEMORY[0x277D01748] lpcmInt16ASBD];
      [MEMORY[0x277D01748] lpcmInt16ASBD];
      v24 = [v22 initWithURL:v23 inputFormat:buf outputFormat:v80];
    }

    else
    {
      v24 = 0;
      v21 = 0;
    }

    if (v20 | v24)
    {
      v80[0] = 0;
      v80[1] = v80;
      v80[2] = 0x2020000000;
      v80[3] = 0xFFFFFFFFLL;
      v79[0] = 0;
      v79[1] = v79;
      v79[2] = 0x2020000000;
      v79[3] = 0xFFFFFFFFLL;
      v78[0] = 0;
      v78[1] = v78;
      v78[2] = 0x2020000000;
      v78[3] = 0xFFFFFFFFLL;
      v77[0] = 0;
      v77[1] = v77;
      v77[2] = 0x2020000000;
      v77[3] = 0;
      v76[0] = 0;
      v76[1] = v76;
      v76[2] = 0x2020000000;
      v76[3] = 0;
      v75[0] = 0;
      v75[1] = v75;
      v75[2] = 0x2020000000;
      v75[3] = 0;
      v74[0] = 0;
      v74[1] = v74;
      v74[2] = 0x2020000000;
      v74[3] = 0;
      v73[0] = 0;
      v73[1] = v73;
      v73[2] = 0x2020000000;
      v73[3] = 0;
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      v72 = 0;
      v29 = *MEMORY[0x277D01E80];
      v30 = [v50 objectForKeyedSubscript:*MEMORY[0x277D01E80]];

      if (v30)
      {
        v31 = [v50 objectForKeyedSubscript:v29];
        v32 = [v31 integerValue];
        v70[3] = v32;

        v33 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v14;
          v34 = v70[3];
          v35 = [v50 objectForKeyedSubscript:v29];
          v36 = [v35 integerValue];
          [MEMORY[0x277D016E0] inputRecordingSampleRate];
          *buf = 136315650;
          v84 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]";
          v85 = 2048;
          v86 = v34;
          v87 = 2048;
          v88 = (v36 / v37);
          _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, "%s Setting payloadstartSample %lu for trigger duration of %fsecs", buf, 0x20u);

          v14 = v48;
        }
      }

      else
      {
        [MEMORY[0x277D016E0] inputRecordingSampleRate];
        v41 = v14;
        v43 = v70;
        v70[3] = vcvtd_n_u64_f64(v42, 2uLL);
        v33 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v45 = v43[3];
          v49 = [v50 objectForKeyedSubscript:v29];
          v46 = [v49 integerValue];
          [MEMORY[0x277D016E0] inputRecordingSampleRate];
          *buf = 136315650;
          v84 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]";
          v85 = 2048;
          v86 = v45;
          v87 = 2048;
          v88 = (v46 / v47);
          _os_log_error_impl(&dword_225E12000, v33, OS_LOG_TYPE_ERROR, "%s ERR: Setting max payloadstartSample %lu for trigger duration of %fsecs", buf, 0x20u);
        }

        v14 = v41;
      }

      [MEMORY[0x277D01748] lpcmInt16ASBD];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __100__SSRUtils_segmentVoiceTriggerFromAudioFile_withVTEventInfo_withStorePayloadPortion_withCompletion___block_invoke;
      v53[3] = &unk_2785787A0;
      v54 = v52;
      v59 = v9;
      v55 = v17;
      v21 = v21;
      v56 = v21;
      v60 = v80;
      v61 = v76;
      v62 = v79;
      v63 = v75;
      v64 = v78;
      v65 = v74;
      v66 = v77;
      v67 = v73;
      v27 = v20;
      v57 = v27;
      v28 = v24;
      v58 = v28;
      v68 = &v69;
      [SSRUtils streamAudioFromFileUrl:v54 audioStreamBasicDescriptor:buf samplesPerStreamChunk:640 audioDataAvailableHandler:v53];

      _Block_object_dispose(&v69, 8);
      _Block_object_dispose(v73, 8);
      _Block_object_dispose(v74, 8);
      _Block_object_dispose(v75, 8);
      _Block_object_dispose(v76, 8);
      _Block_object_dispose(v77, 8);
      _Block_object_dispose(v78, 8);
      _Block_object_dispose(v79, 8);
      _Block_object_dispose(v80, 8);
    }

    else
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Failed initializing loggers at %@ and %@", v17, v21];
      v38 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v84 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]";
        v85 = 2114;
        v86 = v27;
        _os_log_error_impl(&dword_225E12000, v38, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
        if (!v9)
        {
          goto LABEL_20;
        }
      }

      else if (!v9)
      {
LABEL_20:

        goto LABEL_21;
      }

      v39 = MEMORY[0x277CCA9B8];
      v81 = *MEMORY[0x277CCA450];
      v82 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v40 = [v39 errorWithDomain:@"com.apple.speakerrecognition" code:744 userInfo:v28];
      (*(v9 + 2))(v9, v40, 0, 0);
    }

LABEL_19:

    goto LABEL_20;
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Audio path is nil - Bailing out"];
  v25 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v84 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]";
    v85 = 2114;
    v86 = v21;
    _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

  if (v9)
  {
LABEL_6:
    v26 = MEMORY[0x277CCA9B8];
    v89 = *MEMORY[0x277CCA450];
    v90[0] = v21;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    v28 = [v26 errorWithDomain:@"com.apple.speakerrecognition" code:715 userInfo:v27];
    (*(v9 + 2))(v9, v28, 0, 0);
    goto LABEL_19;
  }

LABEL_21:

  v44 = *MEMORY[0x277D85DE8];
}

void __100__SSRUtils_segmentVoiceTriggerFromAudioFile_withVTEventInfo_withStorePayloadPortion_withCompletion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    v8 = MEMORY[0x277D01970];
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 136315394;
      v49 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]_block_invoke";
      v50 = 2112;
      v51 = v10;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Failed to read file: %@", buf, 0x16u);
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Failed to read file: %@", *(a1 + 32)];
    v12 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v49 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]_block_invoke";
      v50 = 2112;
      v51 = v11;
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    if (*(a1 + 72))
    {
      v13 = [SSRUtils removeItemAtPath:*(a1 + 40)];

      if (!v13)
      {
        v14 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          *buf = 136315394;
          v49 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]_block_invoke";
          v50 = 2114;
          v51 = v15;
          _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Deleted file %{public}@", buf, 0x16u);
        }
      }

      v16 = [SSRUtils removeItemAtPath:*(a1 + 48)];

      if (!v16)
      {
        v17 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 48);
          *buf = 136315394;
          v49 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]_block_invoke";
          v50 = 2114;
          v51 = v18;
          _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Deleted file %{public}@", buf, 0x16u);
        }
      }

      v19 = *(a1 + 72);
      v20 = MEMORY[0x277CCA9B8];
      v58 = *MEMORY[0x277CCA450];
      v59[0] = v11;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:716 userInfo:v21];
      (*(v19 + 16))(v19, v22, 0, 0);
    }

    goto LABEL_32;
  }

  if (!a3)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    v40 = [v11 length];
    [MEMORY[0x277D01748] lpcmInt16ASBD];
    v41 = v40 / v47;
    *(*(*(a1 + 88) + 8) + 24) += v41;
    if (*(a1 + 56))
    {
      v42 = *(*(a1 + 104) + 8);
      v43 = *(v42 + 24);
      if (v43 < *(*(*(a1 + 144) + 8) + 24))
      {
        *(v42 + 24) = v43 + v41;
        [*(a1 + 56) addSamples:objc_msgSend(v11 numSamples:{"bytes"), v41}];
      }
    }

    if (*(a1 + 64) && (v44 = *(*(*(a1 + 120) + 8) + 24), [MEMORY[0x277D016E0] inputRecordingSampleRate], v45 * 4.0 > v44))
    {
      *(*(*(a1 + 120) + 8) + 24) += v41;
      [*(a1 + 64) addSamples:objc_msgSend(v11 numSamples:{"bytes"), v41}];
    }

    else
    {
      *(*(*(a1 + 136) + 8) + 24) += v41;
    }

    goto LABEL_32;
  }

  v23 = *(*(*(a1 + 88) + 8) + 24);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(*(a1 + 80) + 8) + 24) = ((v23 / v24) * 1000.0);
  v25 = *(*(*(a1 + 104) + 8) + 24);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(*(a1 + 96) + 8) + 24) = ((v25 / v26) * 1000.0);
  v27 = *(*(*(a1 + 120) + 8) + 24);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(*(a1 + 112) + 8) + 24) = ((v27 / v28) * 1000.0);
  v29 = *(*(*(a1 + 136) + 8) + 24);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(*(a1 + 128) + 8) + 24) = ((v29 / v30) * 1000.0);
  v31 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(*(*(a1 + 80) + 8) + 24);
    v33 = *(*(*(a1 + 96) + 8) + 24);
    v34 = *(*(*(a1 + 112) + 8) + 24);
    v35 = *(*(*(a1 + 128) + 8) + 24);
    *buf = 136316162;
    v49 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]_block_invoke";
    v50 = 2048;
    v51 = v32;
    v52 = 2048;
    v53 = v33;
    v54 = 2048;
    v55 = v34;
    v56 = 2048;
    v57 = v35;
    _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s EOF: utteranceLength: %lums, tdlength: %lums tdtiLength: %lums tdtiDiscardedLength: %lums", buf, 0x34u);
  }

  v36 = *(a1 + 56);
  if (v36)
  {
    [v36 endAudio];
  }

  v37 = *(a1 + 64);
  if (v37)
  {
    [v37 endAudio];
  }

  v38 = *(a1 + 72);
  if (v38)
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 40)];
    if (*(a1 + 48))
    {
      v39 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
      (*(v38 + 16))(v38, 0, v11, v39);
    }

    else
    {
      (*(v38 + 16))(v38, 0, v11, 0);
    }

LABEL_32:
  }

  v46 = *MEMORY[0x277D85DE8];
}

+ (void)logSpeakerRecognitionGradingMetadataAtFilepath:(id)a3 withScoreInfo:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v18 = 0;
      v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:1 error:&v18];
      v9 = v18;
      if (v9)
      {
        v10 = *MEMORY[0x277D015C8];
        if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
LABEL_16:

          goto LABEL_17;
        }

        *buf = 136315394;
        v20 = "+[SSRUtils logSpeakerRecognitionGradingMetadataAtFilepath:withScoreInfo:]";
        v21 = 2112;
        v22 = v9;
        v11 = "%s Error creating uttMetaJsonData: %@";
        v12 = v10;
        v13 = 22;
      }

      else
      {
        if (v8)
        {
          [v8 writeToFile:v5 atomically:0];
          goto LABEL_16;
        }

        v16 = *MEMORY[0x277D015C8];
        if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 136315138;
        v20 = "+[SSRUtils logSpeakerRecognitionGradingMetadataAtFilepath:withScoreInfo:]";
        v11 = "%s Failed to create UttMeta...";
        v12 = v16;
        v13 = 12;
      }

      _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      goto LABEL_16;
    }

    v14 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "+[SSRUtils logSpeakerRecognitionGradingMetadataAtFilepath:withScoreInfo:]";
      v15 = "%s scoreCard is nil!";
      goto LABEL_11;
    }
  }

  else
  {
    v14 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "+[SSRUtils logSpeakerRecognitionGradingMetadataAtFilepath:withScoreInfo:]";
      v15 = "%s uttMetaPath is nil!";
LABEL_11:
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    }
  }

LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)getVoiceProfileForSiriProfileId:(id)a3 forLanguageCode:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  v8 = [v7 userVoiceProfilesForAppDomain:@"com.apple.siri" forLocale:v6];
  if (!v5 && ((CSIsIOS() & 1) != 0 || CSIsOSX()) && [v8 count])
  {
    if ([v8 count] >= 2)
    {
      v20 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v28 = "+[SSRUtils getVoiceProfileForSiriProfileId:forLanguageCode:]";
        _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s ERR: Seeing more than one voice profiles for Siri App Domain", buf, 0xCu);
      }
    }

    v17 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v21 = v6;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (v5)
          {
            v14 = *(*(&v22 + 1) + 8 * i);
            v15 = [v14 siriProfileId];
            v16 = [v15 isEqualToString:v5];

            if (v16)
            {
              v17 = v14;

              goto LABEL_13;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_13:
    v6 = v21;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)getVoiceProfilesForSiriProfileId:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SSRVoiceProfileStore sharedInstance];
  v5 = [v4 userVoiceProfilesForAppDomain:@"com.apple.siri"];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (CSIsIOS())
  {
    if (!v3)
    {
LABEL_6:
      v8 = v5;
      goto LABEL_20;
    }
  }

  else
  {
    v7 = CSIsOSX();
    if (!v3 && (v7 & 1) != 0)
    {
      goto LABEL_6;
    }
  }

  v19 = v4;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 siriProfileId];
        v16 = [v15 isEqualToString:v3];

        if (v16)
        {
          [v6 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  if ([v6 count])
  {
    v8 = [v6 copy];
  }

  else
  {
    v8 = 0;
  }

  v4 = v19;
LABEL_20:

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)getHomeUserIdForVoiceProfile:(id)a3 withCompletion:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4803;
  v38 = __Block_byref_object_dispose__4804;
  v39 = 0;
  v7 = objc_alloc_init(MEMORY[0x277D01710]);
  v8 = objc_alloc_init(MEMORY[0x277CEF310]);
  v9 = MEMORY[0x277D01970];
  v10 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 siriProfileId];
    *buf = 136315394;
    v43 = "+[SSRUtils getHomeUserIdForVoiceProfile:withCompletion:]";
    v44 = 2114;
    v45 = v11;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Fetching homeUserId for siriProfileId %{public}@", buf, 0x16u);
  }

  [v7 enter];
  v12 = [v5 siriProfileId];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __56__SSRUtils_getHomeUserIdForVoiceProfile_withCompletion___block_invoke;
  v28 = &unk_278578778;
  v13 = v8;
  v29 = v13;
  v33 = &v34;
  v14 = v5;
  v30 = v14;
  v15 = v7;
  v31 = v15;
  v16 = v6;
  v32 = v16;
  [v13 getHomeUserIdForSharedUserId:v12 completion:&v25];

  if ([v15 waitWithTimeout:{dispatch_time(0, 100000000)}])
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [v14 siriProfileId];
    v19 = [v17 stringWithFormat:@"homeUserId query for siriProfileId %@ timedout !", v18, v25, v26, v27, v28, v29, v30, v31];

    v20 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41 = v19;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:749 userInfo:v21];

    v23 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v43 = "+[SSRUtils getHomeUserIdForVoiceProfile:withCompletion:]";
      v44 = 2112;
      v45 = v19;
      _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    else if (!v16)
    {
LABEL_7:

      goto LABEL_8;
    }

    (*(v16 + 2))(v16, v35[5], v22);
    goto LABEL_7;
  }

LABEL_8:

  _Block_object_dispose(&v34, 8);
  v24 = *MEMORY[0x277D85DE8];
}

void __56__SSRUtils_getHomeUserIdForVoiceProfile_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 40);
    v11 = v9;
    v12 = [v10 siriProfileId];
    v18 = 136315651;
    v19 = "+[SSRUtils getHomeUserIdForVoiceProfile:withCompletion:]_block_invoke";
    v20 = 2114;
    v21 = v12;
    v22 = 2113;
    v23 = v7;
    _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s ERR: Home User Id erred %{public}@ for Siri Profile Id %{private}@", &v18, 0x20u);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v13 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 40);
    v11 = v13;
    v12 = [v14 siriProfileId];
    v15 = *(*(*(a1 + 64) + 8) + 40);
    v18 = 136315650;
    v19 = "+[SSRUtils getHomeUserIdForVoiceProfile:withCompletion:]_block_invoke";
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = v15;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s siriProfileId %{public}@ maps to homeUserId %{public}@", &v18, 0x20u);
  }

LABEL_7:
  [*(a1 + 48) leave];
  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, *(*(*(a1 + 64) + 8) + 40), v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)getContentsOfDirectory:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v23[0] = *MEMORY[0x277CBE8E8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v16 = 0;
  v6 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v5 options:0 error:&v16];
  v7 = v16;

  if (v7)
  {
    v8 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      v9 = 0;
      goto LABEL_6;
    }

    *buf = 136315650;
    v18 = "+[SSRUtils getContentsOfDirectory:]";
    v19 = 2112;
    v20 = v3;
    v21 = 2112;
    v22 = v7;
    v13 = "%s Error reading directory at %@: err: %@";
    v14 = v8;
    v15 = 32;
LABEL_12:
    _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    goto LABEL_3;
  }

  if (![v6 count])
  {
    v12 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 136315394;
    v18 = "+[SSRUtils getContentsOfDirectory:]";
    v19 = 2112;
    v20 = v3;
    v13 = "%s %@ is empty";
    v14 = v12;
    v15 = 22;
    goto LABEL_12;
  }

  v9 = v6;
LABEL_6:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)dumpFilesInDirectory:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v16 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v27 = "+[SSRUtils dumpFilesInDirectory:]";
    v17 = "%s ERR: Directory is nil - Bailing out";
    v18 = v16;
    v19 = 12;
LABEL_18:
    _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    goto LABEL_16;
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    v20 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315394;
    v27 = "+[SSRUtils dumpFilesInDirectory:]";
    v28 = 2114;
    v29 = v3;
    v17 = "%s ERR: %{public}@ doesnt exist - Bailing out";
    v18 = v20;
    v19 = 22;
    goto LABEL_18;
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 enumeratorAtPath:v3];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v12 = MEMORY[0x277D01970];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(*(&v22 + 1) + 8 * i);
          *buf = 136315650;
          v27 = "+[SSRUtils dumpFilesInDirectory:]";
          v28 = 2114;
          v29 = v3;
          v30 = 2114;
          v31 = v15;
          _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Dump content of %{public}@ - %{public}@", buf, 0x20u);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v10);
  }

LABEL_16:
  v21 = *MEMORY[0x277D85DE8];
}

+ (int64_t)getNumberOfAudioFilesInDirectory:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "+[SSRUtils getNumberOfAudioFilesInDirectory:]";
      v19 = 2114;
      v20 = v3;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: fetching contents of %{public}@ failed with error %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__SSRUtils_getNumberOfAudioFilesInDirectory___block_invoke;
    v11[3] = &unk_278578750;
    v11[4] = &v13;
    [v5 enumerateObjectsUsingBlock:v11];
  }

  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void __45__SSRUtils_getNumberOfAudioFilesInDirectory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pathExtension];
  v4 = [v3 isEqualToString:@"wav"];

  if (v4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

+ (id)getImplicitUtteranceCacheDirectory
{
  v2 = [a1 baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"Caches/VoiceTrigger/ImplicitUtterences"];

  return v3;
}

+ (BOOL)isCurrentDeviceCompatibleWithVoiceProfileAt:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D018F8] deviceProductType];
  if (v4)
  {
    v5 = [SSRUtils deviceCategoryForDeviceProductType:v4];
    v62 = 0;
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v3 stringByAppendingPathComponent:@"audio"];
    if ([v6 fileExistsAtPath:v7 isDirectory:&v62] && v62 == 1)
    {
      v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      if (!v8)
      {
        v15 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
          v65 = 2114;
          v66 = v7;
          _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s Malformed audio-dir URL for string <%{public}@>:url", buf, 0x16u);
        }

        goto LABEL_55;
      }

      v9 = v8;
      v61 = 0;
      v10 = [v6 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v61];
      v11 = v61;
      if (v11)
      {
        v12 = v11;
        v13 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
          v65 = 2114;
          v66 = v12;
          _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: reading contents of audioDir: %{public}@", buf, 0x16u);
        }

LABEL_55:
        LOBYTE(v9) = 0;
LABEL_56:

        goto LABEL_57;
      }

      v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"pathExtension='json'"];
      v17 = [v10 filteredArrayUsingPredicate:v16];
      v53 = v7;
      v54 = v6;
      v51 = v10;
      v52 = v9;
      v50 = v17;
      if ([v17 count])
      {
        v49 = v16;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = v17;
        v18 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
        if (v18)
        {
          v19 = v18;
          v47 = v5;
          v48 = v3;
          v20 = 0;
          v21 = *v58;
          v9 = MEMORY[0x277D01970];
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v58 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v57 + 1) + 8 * i);
              v24 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:{v23, v47}];
              if (v24)
              {
                v25 = v24;
                v56 = v20;
                v26 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v24 options:0 error:&v56];
                v27 = v56;

                if (v27)
                {
                  v28 = *v9;
                  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                    v65 = 2114;
                    v66 = v23;
                    _os_log_impl(&dword_225E12000, v28, OS_LOG_TYPE_DEFAULT, "%s Error reading metaDict at path: %{public}@", buf, 0x16u);
                  }

                  v20 = v27;
                }

                else
                {
                  v30 = [v26 objectForKeyedSubscript:@"productType"];
                  v31 = *v9;
                  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                    v65 = 2114;
                    v66 = v30;
                    _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s metaProductType: %{public}@", buf, 0x16u);
                  }

                  if (v30)
                  {
                    v35 = [SSRUtils deviceCategoryForDeviceProductType:v30];
                    v36 = *v9;
                    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                    {
                      v37 = v36;
                      v9 = v47;
                      v38 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v47];
                      v39 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v35];
                      *buf = 136316162;
                      v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                      v65 = 2114;
                      v66 = v4;
                      v67 = 2114;
                      v68 = v38;
                      v69 = 2114;
                      v70 = v30;
                      v71 = 2114;
                      v72 = v39;
                      _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s vtprofile: currDevice=[%{public}@:%{public}@] ; vpDirDevice=[%{public}@:%{public}@]", buf, 0x34u);

                      v36 = *MEMORY[0x277D01970];
                    }

                    else
                    {
                      v9 = v47;
                    }

                    v3 = v48;
                    v40 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
                    LOBYTE(v9) = v9 == v35;
                    if (v9)
                    {
                      if (v40)
                      {
                        *buf = 136315138;
                        v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                        v41 = "%s VoiceProfile MATCH";
                        goto LABEL_49;
                      }
                    }

                    else if (v40)
                    {
                      *buf = 136315138;
                      v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                      v41 = "%s VoiceProfile MIS-MATCH";
LABEL_49:
                      _os_log_impl(&dword_225E12000, v36, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
                    }

                    v20 = 0;
                    v33 = 0;
                    goto LABEL_51;
                  }

                  v32 = *v9;
                  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                    _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_DEFAULT, "%s Could not find productType in VT-Meta file, trying next one", buf, 0xCu);
                  }

                  v20 = 0;
                }
              }

              else
              {
                v29 = *v9;
                if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                  v65 = 2114;
                  v66 = v23;
                  _os_log_impl(&dword_225E12000, v29, OS_LOG_TYPE_DEFAULT, "%s Unexpected: empty JSON data for file: %{public}@", buf, 0x16u);
                }
              }
            }

            v19 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          v33 = 1;
          v3 = v48;
        }

        else
        {
          v20 = 0;
          v33 = 1;
        }

LABEL_51:

        v16 = v49;
      }

      else
      {
        v34 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          v45 = v34;
          v46 = [v17 count];
          *buf = 136315650;
          v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
          v65 = 2114;
          v66 = v9;
          v67 = 2050;
          v68 = v46;
          _os_log_error_impl(&dword_225E12000, v45, OS_LOG_TYPE_ERROR, "%s No jsonFiles found in %{public}@: jsonFiles.count=%{public}lu", buf, 0x20u);
        }

        v20 = 0;
        v33 = 0;
        LOBYTE(v9) = 0;
      }

      v7 = v53;
      v6 = v54;
      if (!v33)
      {
        goto LABEL_56;
      }
    }

    v42 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
      v65 = 2114;
      v66 = v4;
      _os_log_impl(&dword_225E12000, v42, OS_LOG_TYPE_DEFAULT, "%s No compatible VT profile found for CurrDevice: %{public}@", buf, 0x16u);
    }

    goto LABEL_55;
  }

  v14 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v64 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
    v65 = 2114;
    v66 = 0;
    _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: Unknown device. returning false: %{public}@", buf, 0x16u);
  }

  LOBYTE(v9) = 0;
LABEL_57:

  v43 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

+ (BOOL)isCurrentDeviceCompatibleWithNewerVoiceProfileAt:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D018F8];
  v4 = a3;
  v5 = [v3 deviceProductType];
  v6 = [v4 stringByAppendingPathComponent:@"enrollment_version.json"];

  if (!v5)
  {
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "+[SSRUtils isCurrentDeviceCompatibleWithNewerVoiceProfileAt:]";
      v24 = 2114;
      v25 = 0;
      v11 = "%s ERR: Unknown device. returning false: %{public}@";
      v12 = v10;
      v13 = 22;
LABEL_9:
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, v11, &v22, v13);
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (!v6)
  {
    v14 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v22 = 136315138;
      v23 = "+[SSRUtils isCurrentDeviceCompatibleWithNewerVoiceProfileAt:]";
      v11 = "%s ERR: satLanguagePath is nil. returning false";
      v12 = v14;
      v13 = 12;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v7 = [SSRUtils deviceCategoryForDeviceProductType:v5];
  v8 = [SSRUtils getVoiceProfileProductCategoryFromVersionFilePath:v6];
  if (v7 != v8)
  {
    v15 = v8;
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v7];
      v19 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v15];
      v22 = 136315650;
      v23 = "+[SSRUtils isCurrentDeviceCompatibleWithNewerVoiceProfileAt:]";
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Voice Profile Mismatch - CurrentDeviceCategory %@ VoiceProfileCategory %@", &v22, 0x20u);
    }

    goto LABEL_12;
  }

  v9 = 1;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (unint64_t)getCurrentDeviceCategoryType
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D018F8] deviceProductType];
  if (v2)
  {
    v3 = [SSRUtils deviceCategoryForDeviceProductType:v2];
  }

  else
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "+[SSRUtils getCurrentDeviceCategoryType]";
      v9 = 2114;
      v10 = 0;
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: Unknown device: %{public}@", &v7, 0x16u);
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (unint64_t)deviceCategoryFromString:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 caseInsensitiveCompare:@"kCSDeviceCategory_Unknown"])
  {
    if (![v3 caseInsensitiveCompare:@"kCSDeviceCategory_iOS_NonAop"])
    {
      v5 = 1;
      goto LABEL_15;
    }

    if (![v3 caseInsensitiveCompare:@"kCSDeviceCategory_iOS_Aop"])
    {
      v5 = 2;
      goto LABEL_15;
    }

    if (![v3 caseInsensitiveCompare:@"kCSDeviceCategory_macOS"])
    {
      v5 = 3;
      goto LABEL_15;
    }

    if (![v3 caseInsensitiveCompare:@"kCSDeviceCategory_AudioAccessory"])
    {
      v5 = 4;
      goto LABEL_15;
    }

    if (![v3 caseInsensitiveCompare:@"kCSDeviceCategory_iOS_Aop_Explicit"])
    {
      v5 = 5;
      goto LABEL_15;
    }

    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "+[SSRUtils deviceCategoryFromString:]";
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s %@ didn't match to any device category name. Returning unknown", &v8, 0x16u);
    }
  }

  v5 = 0;
LABEL_15:

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)deviceCategoryForDeviceProductType:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (deviceCategoryForDeviceProductType__onceToken == -1)
  {
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once(&deviceCategoryForDeviceProductType__onceToken, &__block_literal_global_246);
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  if (([deviceCategoryForDeviceProductType__nonAopDeviceSet containsObject:v4] & 1) == 0 && (objc_msgSend(v4, "containsString:", @"iPod") & 1) == 0)
  {
    if ([v4 containsString:@"Mac"])
    {
      v5 = 3;
      goto LABEL_17;
    }

    if ([v4 containsString:@"iPad"] & 1) != 0 || (objc_msgSend(v4, "containsString:", @"iPhone"))
    {
      v5 = 2;
      goto LABEL_17;
    }

    if ([v4 containsString:@"AudioAccessory"] & 1) != 0 || (objc_msgSend(v4, "containsString:", @"AppleTV"))
    {
      v5 = 4;
      goto LABEL_17;
    }

    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "+[SSRUtils deviceCategoryForDeviceProductType:]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Unknown Device category for deviceProduceType: %@", &v9, 0x16u);
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  v5 = 1;
LABEL_17:

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __47__SSRUtils_deviceCategoryForDeviceProductType___block_invoke()
{
  deviceCategoryForDeviceProductType__nonAopDeviceSet = [MEMORY[0x277CBEB98] setWithObjects:{@"iPad3, 4", @"iPad3, 5", @"iPad3, 6", @"iPad4, 1", @"iPad4, 2", @"iPad4, 3", @"iPad4, 4", @"iPad4, 5", @"iPad4, 6", @"iPad4, 7", @"iPad4, 8", @"iPad4, 9", @"iPad5, 1", @"iPad5, 2", @"iPad5, 3", @"iPad5, 4", @"iPad6, 7", @"iPad6, 8", @"iPad6, 11", @"iPad6, 12", @"iPhone5, 1", @"iPhone5, 2", @"iPhone5, 3", @"iPhone5, 4", @"iPhone6, 1", @"iPhone6, 2", @"iPhone7, 1", @"iPhone7, 2", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)deviceCategoryStringRepresentationForCategoryType:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"kCSDeviceCategory_Unknown";
  }

  else
  {
    return off_2785788B8[a3 - 1];
  }
}

+ (id)getVoiceProfileIdentityFromVersionFilePath:(id)a3
{
  v3 = [SSRUtils readJsonFileAtPath:a3];
  v4 = [v3 objectForKeyedSubscript:@"VoiceProfileIdentifier"];

  return v4;
}

+ (unint64_t)getVoiceProfileProductCategoryFromVersionFilePath:(id)a3
{
  v3 = [SSRUtils readJsonFileAtPath:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"VoiceProfileCategoryType"];

    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"VoiceProfileCategoryType"];
      v5 = [v6 intValue];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)readJsonFileAtPath:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = v4;
  v21 = 0;
  if (!v3)
  {
    v8 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "+[SSRUtils readJsonFileAtPath:]";
      v7 = "%s ERR: filePath passed as nil - Bailing out";
      v9 = v8;
      v10 = 12;
LABEL_11:
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, v7, buf, v10);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (![v4 fileExistsAtPath:v3 isDirectory:&v21])
  {
    v6 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "+[SSRUtils readJsonFileAtPath:]";
      v24 = 2112;
      v25 = v3;
      v7 = "%s ERR: file do not exist - %@";
      goto LABEL_10;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (v21)
  {
    v6 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "+[SSRUtils readJsonFileAtPath:]";
      v24 = 2112;
      v25 = v3;
      v7 = "%s ERR: %@ is a directory";
LABEL_10:
      v9 = v6;
      v10 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
  if (!v14)
  {
    v18 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "+[SSRUtils readJsonFileAtPath:]";
      v24 = 2112;
      v25 = v3;
      _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s Unable to read data from file: %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v15 = v14;
  v20 = 0;
  v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v14 options:0 error:&v20];
  v16 = v20;
  v17 = v16;
  if (!v11 || v16)
  {
    v19 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = "+[SSRUtils readJsonFileAtPath:]";
      v24 = 2112;
      v25 = v3;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s ERR: Could not read existing %@ file: err: %@", buf, 0x20u);
    }

    goto LABEL_12;
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)isSpeakerRecognitionSupportedInLocale:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SSRAssetManager sharedManager];
  v5 = [v4 installedAssetOfType:3 forLanguage:v3];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = +[SSRUtils satConfigFileNameForCSSpIdType:forModelType:forAssetType:](SSRUtils, "satConfigFileNameForCSSpIdType:forModelType:forAssetType:", 3, 1, [v5 assetProvider]);
  v8 = [v5 resourcePath];
  v9 = [v8 stringByAppendingPathComponent:v7];

  v10 = [v6 fileExistsAtPath:v9];
  if ((v10 & 1) == 0)
  {
    v11 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "+[SSRUtils isSpeakerRecognitionSupportedInLocale:]";
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s VoiceId not supported in language %{public}@", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)streamAudioFromFileUrl:(id)a3 audioStreamBasicDescriptor:(AudioStreamBasicDescription *)a4 samplesPerStreamChunk:(unint64_t)a5 audioDataAvailableHandler:(id)a6
{
  v36[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = a4->mBitsPerChannel * a5 * a4->mChannelsPerFrame;
  v12 = [MEMORY[0x277CBEB28] dataWithCapacity:a4->mBitsPerChannel * a5 * a4->mChannelsPerFrame];
  outAudioFile = 0;
  *&ioData.mNumberBuffers = 1;
  ioData.mBuffers[0].mNumberChannels = 1;
  ioData.mBuffers[0].mDataByteSize = v11;
  ioData.mBuffers[0].mData = [v12 mutableBytes];
  outExtAudioFile = 0;
  if (AudioFileOpenURL(v9, kAudioFileReadPermission, 0, &outAudioFile))
  {
    NSLog(&cfstr_Audiofileopenu.isa, v9);
    v13 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"AudioFileOpenURL failed: %@", v9];
    v36[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v16 = [v13 errorWithDomain:@"EARTests" code:1001 userInfo:v15];

    v17 = v10[2];
    v29 = ioData;
    v17(v10, &v29, 1, v16);
  }

  else if (ExtAudioFileWrapAudioFileID(outAudioFile, 0, &outExtAudioFile))
  {
    NSLog(&cfstr_Extaudiofilewr.isa, v9);
    v18 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"ExtAudioFileWrapAudioFileID failed: %@", v9];
    v34 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v21 = [v18 errorWithDomain:@"EARTests" code:1002 userInfo:v20];

    AudioFileClose(outAudioFile);
    v22 = v10[2];
    v29 = ioData;
    v22(v10, &v29, 1, v21);
  }

  else
  {
    ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, a4);
    for (i = 0; ; i += ioData.mBuffers[0].mDataByteSize)
    {
      ioNumberFrames = a5;
      v24 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &ioData);
      if (v24)
      {
        NSLog(&cfstr_ErrorReadingAu.isa, v24);
        goto LABEL_11;
      }

      if (!ioNumberFrames)
      {
        break;
      }

      v25 = v10[2];
      v29 = ioData;
      v25(v10, &v29, 0, 0);
    }

    NSLog(&cfstr_EofNumBytesRea.isa, i);
LABEL_11:
    v26 = v10[2];
    v29 = ioData;
    v26(v10, &v29, 1, 0);
    ExtAudioFileDispose(outExtAudioFile);
    AudioFileClose(outAudioFile);
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)getVoiceEnrollmentDownloadBaseDir
{
  v2 = [a1 baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"Caches/VoiceTrigger"];

  return v3;
}

+ (id)baseDir
{
  if ([MEMORY[0x277D018F8] isDarwinOS])
  {
    v2 = [@"/var/mobile" stringByAppendingPathComponent:@"Library"];
  }

  else
  {
    v3 = CPSharedResourcesDirectory();
    v2 = [v3 stringByAppendingPathComponent:@"Library"];
  }

  return v2;
}

+ (id)spidAudioTrainUtterancesDir
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3];

  v5 = [v4 URLByAppendingPathComponent:@"VoiceProfileCache"];
  v6 = [v5 path];
  v7 = [SSRUtils createDirectoryIfDoesNotExist:v6];

  v8 = [v5 path];

  return v8;
}

+ (void)cleanupOrphanedVoiceIdGradingFiles
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 ssrAudioLogsDir];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2];
  v38[0] = *MEMORY[0x277CBE8E8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v30 = 0;
  v6 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v5 options:0 error:&v30];
  v7 = v30;

  if (v7)
  {
    v8 = [v7 domain];
    if ([v8 isEqual:*MEMORY[0x277CCA050]])
    {
      v9 = [v7 code];

      if (v9 == 260)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v21 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "+[SSRUtils cleanupOrphanedVoiceIdGradingFiles]";
      v34 = 2114;
      v35 = v2;
      v36 = 2114;
      v37 = v7;
      _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s ERR: reading contents of gradingDir: %{public}@ with error %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v24 = v3;
    v25 = v2;
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [v16 absoluteString];
          v18 = [v17 lastPathComponent];
          v19 = [v18 stringByDeletingPathExtension];

          v20 = [v10 objectForKeyedSubscript:v19];

          if (v20)
          {
            [v10 removeObjectForKey:v19];
          }

          else
          {
            [v10 setObject:v16 forKeyedSubscript:v19];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    [v10 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4846];
    v3 = v24;
    v2 = v25;
    v6 = v23;
  }

LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
}

void __46__SSRUtils_cleanupOrphanedVoiceIdGradingFiles__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "+[SSRUtils cleanupOrphanedVoiceIdGradingFiles]_block_invoke";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_INFO, "%s Deleting orphaned grading file %{public}@", &v8, 0x16u);
  }

  v5 = [v3 path];
  v6 = [SSRUtils removeItemAtPath:v5];

  v7 = *MEMORY[0x277D85DE8];
}

+ (BOOL)ssrAudioLogsCountWithinPrivacyLimit
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = +[SSRUtils ssrAudioLogsDir];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v4 = [v3 contentsOfDirectoryAtPath:v2 error:&v15];
  v5 = v15;

  if (v4)
  {
    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.wav'"];
    v7 = [v4 filteredArrayUsingPredicate:v6];

    v8 = [v7 count];
    v9 = v8 < 0x65;
    if (v8 >= 0x65)
    {
      v10 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [v7 count];
        *buf = 136315650;
        v17 = "+[SSRUtils ssrAudioLogsCountWithinPrivacyLimit]";
        v18 = 2048;
        v19 = v12;
        v20 = 1024;
        v21 = 100;
        _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Exceeded privacy limit for grading utterances : %ld (%d)", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)ssrAudioLogsDir
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/Logs/CrashReporter/ssr"];

  return v3;
}

+ (id)createDirectoryIfDoesNotExist:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = v4;
  v19 = 0;
  if (v3)
  {
    v6 = [v4 fileExistsAtPath:v3 isDirectory:&v19];
    v7 = MEMORY[0x277D015C8];
    if (v6)
    {
      if (v19)
      {
        v8 = 0;
        goto LABEL_18;
      }

      v10 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "+[SSRUtils createDirectoryIfDoesNotExist:]";
        v22 = 2112;
        v23 = v3;
        _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Directory with same name exists, this will be removed: %@", buf, 0x16u);
      }

      [v5 removeItemAtPath:v3 error:0];
    }

    v11 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "+[SSRUtils createDirectoryIfDoesNotExist:]";
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Creating Directory : %@", buf, 0x16u);
    }

    v18 = 0;
    [v5 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v18];
    v8 = v18;
    if (v8)
    {
      v12 = *v7;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [v8 localizedDescription];
        *buf = 136315394;
        v21 = "+[SSRUtils createDirectoryIfDoesNotExist:]";
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Creating Directory failed : %@", buf, 0x16u);
      }

      v15 = v8;
    }
  }

  else
  {
    v9 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "+[SSRUtils createDirectoryIfDoesNotExist:]";
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s path is nil - Bailing out", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:764 userInfo:&unk_283933630];
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)spIdVoiceProfileImportRootDir
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 URLsForDirectory:9 inDomains:1];
  v4 = [v3 lastObject];

  v5 = [v4 path];
  v6 = [v5 stringByAppendingPathComponent:@"spid-imported"];

  return v6;
}

+ (id)satConfigFileNameForCSSpIdType:(unint64_t)a3 forModelType:(unint64_t)a4 forAssetType:(unint64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  if (CSIsCommunalDevice())
  {
    if (a3 - 1 < 5)
    {
      v7 = off_278578890[a3 - 1];
      goto LABEL_17;
    }

    v8 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v13 = 136315394;
    v14 = "+[SSRUtils satConfigFileNameForCSSpIdType:forModelType:forAssetType:]";
    v15 = 2048;
    v16 = a3;
    v9 = "%s ERR: Unknown CSSpIdType: %lu";
    goto LABEL_21;
  }

  if (a3 > 3)
  {
    if (a3 != 4 && a3 != 5)
    {
      goto LABEL_15;
    }
  }

  else if (a3 != 1 && a3 != 3)
  {
LABEL_15:
    v8 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v7 = 0;
      goto LABEL_17;
    }

    v13 = 136315394;
    v14 = "+[SSRUtils satConfigFileNameForCSSpIdType:forModelType:forAssetType:]";
    v15 = 2048;
    v16 = a3;
    v9 = "%s Unknown CSSpIdType: %lu";
LABEL_21:
    _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, v9, &v13, 0x16u);
    goto LABEL_16;
  }

  v10 = @"config.txt";
  if (a4 == 1)
  {
    v10 = @"config_sr_sat.txt";
  }

  v7 = v10;
LABEL_17:
  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)psrConfigFileNameForCSSpIdType:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
LABEL_8:
      v4 = CSIsCommunalDevice();
      v5 = @"config_sr_sat.txt";
      v6 = @"config_tdti_spid.txt";
      goto LABEL_9;
    }

    if (a3 != 5)
    {
LABEL_15:
      v10 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "+[SSRUtils psrConfigFileNameForCSSpIdType:]";
        v13 = 2048;
        v14 = a3;
        _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: Unknown CSSpIdType: %lu", &v11, 0x16u);
      }

      v7 = 0;
      goto LABEL_12;
    }
  }

  else if (a3 != 1)
  {
    if (a3 != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v4 = CSIsCommunalDevice();
  v5 = @"config_sr_sat.txt";
  v6 = @"config_td_spid.txt";
LABEL_9:
  if (v4)
  {
    v5 = v6;
  }

  v7 = v5;
LABEL_12:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)satConfigFileNameForCSSpIdType:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3 == 5)
  {
    v6 = CSIsCommunalDevice();
    v5 = @"config_sr_sat.txt";
    if (v6)
    {
      v5 = @"config_td_spid.txt";
    }

    goto LABEL_8;
  }

  if (a3 == 1)
  {
    v4 = CSIsCommunalDevice();
    v5 = @"config.txt";
    if (v4)
    {
      v5 = 0;
    }

LABEL_8:
    v7 = v5;
    goto LABEL_12;
  }

  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "+[SSRUtils satConfigFileNameForCSSpIdType:]";
    v13 = 2048;
    v14 = a3;
    _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s ERR: Unknown CSSpIdType: %lu", &v11, 0x16u);
  }

  v7 = 0;
LABEL_12:
  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)stringForVoiceProfileRetrainerType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = @"SAT";
  }

  else if (a3 == 2)
  {
    v4 = @"PSR";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown VoiceProfileRetrainerType: %lu", a3];
  }

  return v4;
}

+ (id)stringForSpeakerRecognizerType:(unint64_t)a3
{
  if (a3 == 2)
  {
    v4 = @"SAT";
  }

  else if (a3 == 1)
  {
    v4 = @"PSR";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown SpeakerRecognizerType: %lu", a3];
  }

  return v4;
}

+ (unint64_t)spIdTypeForString:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"td"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ti"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"tdti"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"tdtiexplicit"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"tdexplicit"])
  {
    v4 = 5;
  }

  else
  {
    v5 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "+[SSRUtils spIdTypeForString:]";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Unknown CSSpIdType string: %@", &v8, 0x16u);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (unint64_t)explicitSpIdTypeForSpId:(unint64_t)a3
{
  if (a3 - 3 < 2)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

+ (id)stringForCSSpIdType:(unint64_t)a3
{
  if (a3 - 1 >= 5)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown CSSpIdType: %lu", a3];
  }

  else
  {
    v4 = off_278578868[a3 - 1];
  }

  return v4;
}

+ (id)stringForInvocationStyle:(unint64_t)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown InvocationStyle: %lu", a3];
  }

  else
  {
    v4 = off_278578850[a3];
  }

  return v4;
}

@end