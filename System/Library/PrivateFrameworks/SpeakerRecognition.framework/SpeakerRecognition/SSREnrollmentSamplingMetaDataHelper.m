@interface SSREnrollmentSamplingMetaDataHelper
+ (id)_convertToMetaDataDict:(id)a3;
+ (id)_getMetaDataForLocale:(id)a3 error:(id *)a4;
+ (id)_getMetaDataForLocale:(id)a3 metaDataDict:(id)a4 error:(id *)a5;
+ (id)_getVoiceProfileAndUpdateMetaDataWithLocale:(id)a3 error:(id *)a4;
+ (id)_getVoiceProfileWithEnrollmentId:(id)a3 error:(id *)a4;
+ (id)_getVoiceProfileWithLocale:(id)a3 error:(id *)a4;
+ (id)_loadMetaDataDict;
+ (id)_writeMetaData:(id)a3 locale:(id)a4;
+ (id)getDonationDataFromVoiceProfile:(id)a3;
+ (id)getDonationDataWithEnrollmentId:(id)a3 error:(id *)a4;
+ (id)getDonationDataWithVoiceProfileId:(id)a3 error:(id *)a4;
+ (id)getDonationIdsWithEnrollmentId:(id)a3 error:(id *)a4;
+ (id)getEnrollmentDateWithLocale:(id)a3 error:(id *)a4;
+ (id)getEnrollmentIdWithLocale:(id)a3 error:(id *)a4;
+ (id)getEnrollmentMetaDataWithVoiceProfileId:(id)a3;
+ (unint64_t)getEnrollmentSelectionStatusWithLocale:(id)a3 error:(id *)a4;
+ (void)_writeMetaData:(id)a3 locale:(id)a4 completion:(id)a5;
+ (void)_writeMetaDataDict:(id)a3;
+ (void)removeAllSamplingMetaData;
+ (void)removeMetaDataWithVoiceProfileId:(id)a3 completion:(id)a4;
+ (void)updateSelectionStatus:(unint64_t)a3 languageCode:(id)a4 completion:(id)a5;
+ (void)writeMetaDataWithSamplingSelectionStatus:(unint64_t)a3 voiceProfileId:(id)a4 locale:(id)a5 completion:(id)a6;
@end

@implementation SSREnrollmentSamplingMetaDataHelper

+ (void)_writeMetaData:(id)a3 locale:(id)a4 completion:(id)a5
{
  v7 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__SSREnrollmentSamplingMetaDataHelper__writeMetaData_locale_completion___block_invoke;
  v13[3] = &unk_278579690;
  v14 = v7;
  v8 = v7;
  v9 = a4;
  v10 = a3;
  v11 = MEMORY[0x22AA71400](v13);
  v12 = [SSREnrollmentSamplingMetaDataHelper _writeMetaData:v10 locale:v9];

  (v11)[2](v11, v12);
}

void __72__SSREnrollmentSamplingMetaDataHelper__writeMetaData_locale_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[SSREnrollmentSamplingMetaDataHelper _writeMetaData:locale:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s writeMetaData result error : %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)_writeMetaData:(id)a3 locale:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = +[SSREnrollmentSamplingMetaDataHelper _loadMetaDataDict];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKey:v6];

      if (v9)
      {
        v10 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315394;
          v15 = "+[SSREnrollmentSamplingMetaDataHelper _writeMetaData:locale:]";
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s locale already exists: %@, overwriting metaData", &v14, 0x16u);
        }
      }

      [v8 setObject:v5 forKeyedSubscript:v6];
      [SSREnrollmentSamplingMetaDataHelper _writeMetaDataDict:v8];
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1255 userInfo:&unk_283933770];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933748];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (void)_writeMetaDataDict:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SSREnrollmentSamplingMetaDataHelper__writeMetaDataDict___block_invoke;
  v8[3] = &unk_278578B18;
  v9 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  v7 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  [v7 saveEnrollmentSamplingMetaDataDict:v6];
}

void __58__SSREnrollmentSamplingMetaDataHelper__writeMetaDataDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

+ (id)_convertToMetaDataDict:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = v4;
  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__SSREnrollmentSamplingMetaDataHelper__convertToMetaDataDict___block_invoke;
    v7[3] = &unk_278578AF0;
    v8 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
  }

  return v5;
}

void __62__SSREnrollmentSamplingMetaDataHelper__convertToMetaDataDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [[SSREnrollmentSamplingMetaData alloc] initWithDictionary:v6];
  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
  }

  else
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "+[SSREnrollmentSamplingMetaDataHelper _convertToMetaDataDict:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s cannot load metadata for key: %@ with obj: %@", &v10, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)_loadMetaDataDict
{
  v2 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  v3 = [v2 loadEnrollmentSamplingMetaDataDict];

  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  v4 = [SSREnrollmentSamplingMetaDataHelper _convertToMetaDataDict:v3];

  return v4;
}

+ (id)_getMetaDataForLocale:(id)a3 metaDataDict:(id)a4 error:(id *)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v8)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sampling meta data is not loaded"];
    v10 = v21;
    if (!a5)
    {
      goto LABEL_16;
    }

    v22 = MEMORY[0x277CCA9B8];
    v32 = @"reason";
    v33[0] = v21;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v19 = v22;
    v20 = 1255;
    goto LABEL_15;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v8 allKeys];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if ([v15 isEqualToString:v7])
        {
          a5 = [v9 objectForKeyedSubscript:v15];
          goto LABEL_16;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"not found for locale: %@", v7];
  v10 = v16;
  if (a5)
  {
    v17 = MEMORY[0x277CCA9B8];
    v29 = @"reason";
    v30 = v16;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v19 = v17;
    v20 = 1254;
LABEL_15:
    *a5 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:v20 userInfo:v18];

    a5 = 0;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];

  return a5;
}

+ (id)_getMetaDataForLocale:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[SSREnrollmentSamplingMetaDataHelper _loadMetaDataDict];
  v7 = [SSREnrollmentSamplingMetaDataHelper _getMetaDataForLocale:v5 metaDataDict:v6 error:a4];

  return v7;
}

+ (id)_getVoiceProfileWithLocale:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SSRVoiceProfileStore sharedInstance];
  v7 = [v6 loadCurrentVoiceProfiles];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v30 = a4;
    v11 = 0;
    v12 = *v32;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [v14 locale];
        v16 = [v15 isEqualToString:v5];

        if (v16)
        {
          v17 = [v14 appDomain];
          v18 = [v17 isEqualToString:@"com.apple.siri"];

          if (v18)
          {
            v24 = v14;
            v25 = v8;
            goto LABEL_19;
          }

          v11 = 1;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    a4 = v30;
    if (v11)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"locale: %@ is found, but not with domain: %@", v5, @"com.apple.siri"];
      v20 = MEMORY[0x277CCA9B8];
      v35 = @"reason";
      v36 = v19;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v22 = v20;
      v23 = 1264;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"voiceProfile with locale: %@ is not found", v5];
  v26 = MEMORY[0x277CCA9B8];
  v37 = @"reason";
  v38 = v19;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v22 = v26;
  v23 = 1260;
LABEL_16:
  v25 = [v22 errorWithDomain:@"com.apple.speakerrecognition" code:v23 userInfo:v21];

  if (a4)
  {
    v27 = v25;
    v24 = 0;
    *a4 = v25;
  }

  else
  {
    v24 = 0;
  }

LABEL_19:

  v28 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)_getVoiceProfileAndUpdateMetaDataWithLocale:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [SSREnrollmentSamplingMetaDataHelper _getMetaDataForLocale:v5 error:a4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 voiceProfileId];
    v9 = [SSREnrollmentSamplingMetaDataHelper _getVoiceProfileWithLocale:v5 error:a4];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 profileID];
      v12 = [v11 isEqualToString:v8];

      if ((v12 & 1) == 0)
      {
        v13 = [SSREnrollmentSamplingMetaData alloc];
        v14 = [v10 profileID];
        v15 = [(SSREnrollmentSamplingMetaData *)v13 initWithSelectionStatus:&unk_283933930 voiceProfileId:v14];

        v16 = [SSREnrollmentSamplingMetaDataHelper _writeMetaData:v15 locale:v5];
        v17 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v19 = [v10 profileID];
          v23 = 136315906;
          v24 = "+[SSREnrollmentSamplingMetaDataHelper _getVoiceProfileAndUpdateMetaDataWithLocale:error:]";
          v25 = 2112;
          v26 = v5;
          v27 = 2112;
          v28 = v19;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s update metaData for locale: %@ profileId: %@ with error: %@", &v23, 0x2Au);
        }
      }

      v20 = v10;
    }
  }

  else
  {
    v10 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_getVoiceProfileWithEnrollmentId:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SSRVoiceProfileStore sharedInstance];
  v7 = [v6 loadCurrentVoiceProfiles];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 enrollmentId];
        v15 = [v14 isEqualToString:v5];

        if (v15)
        {
          a4 = v13;
          v16 = v8;
          goto LABEL_12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (a4)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"voiceProfile with enrollmentId: %@ is not found", v5];
    v17 = MEMORY[0x277CCA9B8];
    v25 = @"reason";
    v26 = v16;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *a4 = [v17 errorWithDomain:@"com.apple.speakerrecognition" code:1260 userInfo:v18];

    a4 = 0;
LABEL_12:
  }

  v19 = *MEMORY[0x277D85DE8];

  return a4;
}

+ (id)getDonationDataFromVoiceProfile:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 getDonationIds];

  if (v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v3 getDonationIds];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [SSRDonationUtteranceData alloc];
          v12 = [v3 locale];
          v13 = [(SSRDonationUtteranceData *)v11 initWithDonationInfoString:v10 locale:v12];

          if (v13)
          {
            [v4 addObject:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  v14 = [v4 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)getEnrollmentMetaDataWithVoiceProfileId:(id)a3
{
  v3 = a3;
  v4 = +[SSREnrollmentSamplingMetaDataHelper _loadMetaDataDict];
  if (v4)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__5906;
    v14 = __Block_byref_object_dispose__5907;
    v15 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__SSREnrollmentSamplingMetaDataHelper_getEnrollmentMetaDataWithVoiceProfileId___block_invoke;
    v7[3] = &unk_278578AC8;
    v8 = v3;
    v9 = &v10;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __79__SSREnrollmentSamplingMetaDataHelper_getEnrollmentMetaDataWithVoiceProfileId___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 voiceProfileId];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

+ (void)removeAllSamplingMetaData
{
  v2 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  [v2 saveEnrollmentSamplingMetaDataDict:0];
}

+ (id)getDonationDataWithVoiceProfileId:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [SSRVoiceProfileLoader getVoiceProfileWithVoiceProfileId:v6];
    if (v7)
    {
      v8 = [a1 getDonationDataFromVoiceProfile:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933720];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)getDonationDataWithEnrollmentId:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [a1 _getVoiceProfileWithEnrollmentId:v6 error:a4];
    if (v7)
    {
      v8 = [a1 getDonationDataFromVoiceProfile:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_2839336F8];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)removeMetaDataWithVoiceProfileId:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __83__SSREnrollmentSamplingMetaDataHelper_removeMetaDataWithVoiceProfileId_completion___block_invoke;
  v24[3] = &unk_278579690;
  v7 = v6;
  v25 = v7;
  v8 = MEMORY[0x22AA71400](v24);
  v9 = +[SSREnrollmentSamplingMetaDataHelper _loadMetaDataDict];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __83__SSREnrollmentSamplingMetaDataHelper_removeMetaDataWithVoiceProfileId_completion___block_invoke_24;
  v16 = &unk_278578AA0;
  v10 = v5;
  v17 = v10;
  v11 = v9;
  v18 = v11;
  v19 = &v20;
  [v11 enumerateKeysAndObjectsUsingBlock:&v13];
  [SSREnrollmentSamplingMetaDataHelper _writeMetaDataDict:v11, v13, v14, v15, v16];
  if (v21[3])
  {
    v8[2](v8, 0);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1255 userInfo:&unk_2839336D0];
    (v8)[2](v8, v12);
  }

  _Block_object_dispose(&v20, 8);
}

void __83__SSREnrollmentSamplingMetaDataHelper_removeMetaDataWithVoiceProfileId_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[SSREnrollmentSamplingMetaDataHelper removeMetaDataWithVoiceProfileId:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s removeMetaDataWithVoiceProfileId result error : %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __83__SSREnrollmentSamplingMetaDataHelper_removeMetaDataWithVoiceProfileId_completion___block_invoke_24(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a3 voiceProfileId];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 136315394;
      v14 = "+[SSREnrollmentSamplingMetaDataHelper removeMetaDataWithVoiceProfileId:completion:]_block_invoke";
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s removing voiceProfileId: %@", &v13, 0x16u);
    }

    [*(a1 + 40) removeObjectForKey:v7];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)updateSelectionStatus:(unint64_t)a3 languageCode:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__SSREnrollmentSamplingMetaDataHelper_updateSelectionStatus_languageCode_completion___block_invoke;
  v20[3] = &unk_278579690;
  v9 = v8;
  v21 = v9;
  v10 = MEMORY[0x22AA71400](v20);
  v19 = 0;
  v11 = [SSREnrollmentSamplingMetaDataHelper _getVoiceProfileWithLocale:v7 error:&v19];
  v12 = v19;
  if (v11)
  {
    v13 = [SSREnrollmentSamplingMetaData alloc];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v15 = [v11 profileID];
    v16 = [(SSREnrollmentSamplingMetaData *)v13 initWithSelectionStatus:v14 voiceProfileId:v15];

    if (v16)
    {
      v17 = +[SSREnrollmentSamplingMetaDataHelper _loadMetaDataDict];
      [v17 setObject:v16 forKeyedSubscript:v7];
      [SSREnrollmentSamplingMetaDataHelper _writeMetaDataDict:v17];
      v18 = 0;
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_2839336A8];
      v17 = v18;
    }

    v10[2](v10, v18);
  }

  else
  {
    (v10)[2](v10, v12);
  }
}

void __85__SSREnrollmentSamplingMetaDataHelper_updateSelectionStatus_languageCode_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[SSREnrollmentSamplingMetaDataHelper updateSelectionStatus:languageCode:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s updateSelectionStatus result error : %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)writeMetaDataWithSamplingSelectionStatus:(unint64_t)a3 voiceProfileId:(id)a4 locale:(id)a5 completion:(id)a6
{
  v15 = a4;
  v9 = a5;
  v10 = a6;
  if (v15 && v9)
  {
    v11 = [SSREnrollmentSamplingMetaData alloc];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v13 = [(SSREnrollmentSamplingMetaData *)v11 initWithSelectionStatus:v12 voiceProfileId:v15];

    if (v13)
    {
      [SSREnrollmentSamplingMetaDataHelper _writeMetaData:v13 locale:v9 completion:v10];
    }

    else
    {
      if (v10)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933680];
        v10[2](v10, v14);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933658];
    if (v10)
    {
      v10[2](v10, v13);
    }
  }
}

+ (id)getDonationIdsWithEnrollmentId:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a1 getDonationDataWithEnrollmentId:a3 error:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) donationId];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (unint64_t)getEnrollmentSelectionStatusWithLocale:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [SSREnrollmentSamplingMetaDataHelper _getMetaDataForLocale:v5 error:a4];
  if (!v6)
  {
    v8 = [SSREnrollmentSamplingMetaDataHelper _getVoiceProfileWithLocale:v5 error:a4];

    if (v8)
    {
      v9 = 0;
      if (a4)
      {
        *a4 = 0;
      }
    }

    else
    {
      v9 = 4;
    }

    goto LABEL_9;
  }

  v7 = [SSREnrollmentSamplingMetaDataHelper _getVoiceProfileAndUpdateMetaDataWithLocale:v5 error:a4];

  if (v7)
  {
    v8 = [v6 selectionStatus];
    v9 = [v8 unsignedIntegerValue];
LABEL_9:

    goto LABEL_10;
  }

  v9 = 4;
LABEL_10:

  return v9;
}

+ (id)getEnrollmentIdWithLocale:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [SSREnrollmentSamplingMetaDataHelper _getVoiceProfileWithLocale:a3 error:a4];
  v5 = [v4 enrollmentId];
  v6 = [v4 enrollmentId];

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 profileID];

    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "+[SSREnrollmentSamplingMetaDataHelper getEnrollmentIdWithLocale:error:]";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s currentProfile is legacy voice profile before RPI, using voiceprofileId: %@", &v11, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)getEnrollmentDateWithLocale:(id)a3 error:(id *)a4
{
  v4 = [SSREnrollmentSamplingMetaDataHelper _getVoiceProfileWithLocale:a3 error:a4];
  v5 = [v4 dateAdded];

  return v5;
}

@end