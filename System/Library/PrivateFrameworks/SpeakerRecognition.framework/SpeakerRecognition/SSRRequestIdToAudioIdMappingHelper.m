@interface SSRRequestIdToAudioIdMappingHelper
+ (id)_convertNestedDictionaryToMutable:(id)a3;
+ (id)_loadRequestIdToAudioIdMappingFromPlist;
+ (id)getAudioIdWithRequestId:(id)a3 languageCode:(id)a4 date:(id)a5 error:(id *)a6;
+ (id)getRequestIdsForLocale:(id)a3 date:(id)a4 error:(id *)a5;
+ (void)_writeMappingIntoPlist:(id)a3;
+ (void)purgeAllEntriesInSpkeakerIdBiome;
+ (void)removeMapping;
+ (void)removeMappingOnAndBefore:(id)a3 completion:(id)a4;
+ (void)removeMappingWithLocale:(id)a3 completion:(id)a4;
+ (void)removeMappingWithLocale:(id)a3 date:(id)a4 completion:(id)a5;
+ (void)writeIntoMappingWithRequestId:(id)a3 audioId:(id)a4 date:(id)a5 locale:(id)a6 completion:(id)a7;
@end

@implementation SSRRequestIdToAudioIdMappingHelper

+ (void)purgeAllEntriesInSpkeakerIdBiome
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = BiomeLibrary();
  v3 = [v2 Siri];
  v4 = [v3 OnDeviceAnalytics];
  v5 = [v4 SpeakerIdSampling];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = [v5 pruner];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__SSRRequestIdToAudioIdMappingHelper_purgeAllEntriesInSpkeakerIdBiome__block_invoke;
  v10[3] = &unk_278577FB8;
  v10[4] = &v11;
  [v6 deleteWithPolicy:@"Delete all SpeakerId data" eventsPassingTest:v10];

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v12[3];
    *buf = 136315394;
    v16 = "+[SSRRequestIdToAudioIdMappingHelper purgeAllEntriesInSpkeakerIdBiome]";
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Cleaned up %lu entries", buf, 0x16u);
  }

  _Block_object_dispose(&v11, 8);

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)_convertNestedDictionaryToMutable:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a3 mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      v10 = [v3 objectForKeyedSubscript:v9];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v12 = [v3 objectForKeyedSubscript:v9];
      v13 = [SSRRequestIdToAudioIdMappingHelper _convertNestedDictionaryToMutable:v12];
      [v3 setObject:v13 forKeyedSubscript:v9];

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)_writeMappingIntoPlist:(id)a3
{
  v3 = a3;
  v4 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  [v4 saveRequestIdsToAudioIdsMapping:v3];
}

+ (id)_loadRequestIdToAudioIdMappingFromPlist
{
  v2 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  v3 = [v2 loadRequestIdsToAudioIdsMapping];

  v4 = [SSRRequestIdToAudioIdMappingHelper _convertNestedDictionaryToMutable:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v4;
}

+ (void)removeMappingOnAndBefore:(id)a3 completion:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __74__SSRRequestIdToAudioIdMappingHelper_removeMappingOnAndBefore_completion___block_invoke;
  v61[3] = &unk_2785796F8;
  v7 = v5;
  v62 = v7;
  v8 = v6;
  v63 = v8;
  v9 = MEMORY[0x22AA71400](v61);
  v10 = +[SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist];
  if (v10)
  {
    v42 = v9;
    v43 = v8;
    v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v41 = v10;
    obj = v10;
    v45 = [obj countByEnumeratingWithState:&v57 objects:v71 count:16];
    if (v45)
    {
      v44 = *v58;
      do
      {
        v11 = 0;
        do
        {
          if (*v58 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v46 = v11;
          v12 = *(*(&v57 + 1) + 8 * v11);
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v13 = [obj objectForKeyedSubscript:{v12, v41}];
          v14 = [v13 countByEnumeratingWithState:&v53 objects:v70 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v54;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v54 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v53 + 1) + 8 * i);
                v19 = [MEMORY[0x277D018F8] defaultDateFormatter];
                v20 = [v19 dateFromString:v18];

                if (([v20 compare:v7] + 1) <= 1)
                {
                  v69[0] = v12;
                  v69[1] = v18;
                  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
                  [v48 addObject:v21];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v53 objects:v70 count:16];
            }

            while (v15);
          }

          v11 = v46 + 1;
        }

        while (v46 + 1 != v45);
        v45 = [obj countByEnumeratingWithState:&v57 objects:v71 count:16];
      }

      while (v45);
    }

    v22 = v48;
    if ([v48 count])
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v23 = v48;
      v24 = [v23 countByEnumeratingWithState:&v49 objects:v64 count:16];
      v8 = v43;
      if (v24)
      {
        v25 = v24;
        v26 = *v50;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v50 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v49 + 1) + 8 * j);
            v29 = [v28 objectAtIndexedSubscript:{0, v41}];
            v30 = [v28 objectAtIndexedSubscript:1];
            v31 = [obj objectForKeyedSubscript:v29];
            [v31 removeObjectForKey:v30];

            v32 = [obj objectForKeyedSubscript:v29];
            v33 = [v32 count];

            if (!v33)
            {
              [obj removeObjectForKey:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v49 objects:v64 count:16];
        }

        while (v25);
      }

      [SSRRequestIdToAudioIdMappingHelper _writeMappingIntoPlist:obj];
      v10 = v41;
      v22 = v48;
    }

    else
    {
      v35 = *MEMORY[0x277D01970];
      v8 = v43;
      v10 = v41;
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v36 = MEMORY[0x277D018F8];
        v37 = v35;
        v38 = [v36 defaultDateFormatter];
        v39 = [v38 stringFromDate:v7];
        *buf = 136315394;
        v66 = "+[SSRRequestIdToAudioIdMappingHelper removeMappingOnAndBefore:completion:]";
        v67 = 2112;
        v68 = v39;
        _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s mapping before date: %@ not found", buf, 0x16u);
      }
    }

    v34 = 0;
    v9 = v42;
  }

  else
  {
    v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1258 userInfo:&unk_2839334A0];
  }

  (v9)[2](v9, v34);

  v40 = *MEMORY[0x277D85DE8];
}

void __74__SSRRequestIdToAudioIdMappingHelper_removeMappingOnAndBefore_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 136315650;
    v9 = "+[SSRRequestIdToAudioIdMappingHelper removeMappingOnAndBefore:completion:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s remove mapping before and On date: %@ with error: %@", &v8, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)getRequestIdsForLocale:(id)a3 date:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v7)
  {
    v10 = +[SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:v7];

      if (v12)
      {
        v13 = [MEMORY[0x277D018F8] defaultDateFormatter];
        v14 = [v13 stringFromDate:v8];

        if (v14 && ([v11 objectForKeyedSubscript:v7], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKeyedSubscript:", v14), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v17 = [v11 objectForKeyedSubscript:v7];
          v18 = [v17 objectForKeyedSubscript:v14];

          v19 = [v18 countByEnumeratingWithState:&v31 objects:v37 count:16];
          if (v19)
          {
            v20 = *v32;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v32 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                [v9 addObject:*(*(&v31 + 1) + 8 * i)];
              }

              v19 = [v18 countByEnumeratingWithState:&v31 objects:v37 count:16];
            }

            while (v19);
          }
        }

        else
        {
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"requests for date: %@ and locale: %@ cannot be found", v14, v7];
          v25 = MEMORY[0x277CCA9B8];
          v35 = @"reason";
          v36 = v18;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v19 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:1259 userInfo:v26];
        }

LABEL_21:
        if (!a5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = &unk_283933478;
      v24 = 113;
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = &unk_283933450;
      v24 = 1258;
    }

    v19 = [v22 errorWithDomain:@"com.apple.speakerrecognition" code:v24 userInfo:v23];
    goto LABEL_21;
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933428];
  if (a5)
  {
LABEL_22:
    v27 = v19;
    *a5 = v19;
  }

LABEL_23:
  v28 = [v9 copy];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (void)removeMappingWithLocale:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __73__SSRRequestIdToAudioIdMappingHelper_removeMappingWithLocale_completion___block_invoke;
  v20 = &unk_2785796F8;
  v7 = v5;
  v21 = v7;
  v8 = v6;
  v22 = v8;
  v9 = MEMORY[0x22AA71400](&v17);
  if (v7)
  {
    v10 = [SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist:v17];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:v7];

      if (v12)
      {
        [v11 removeObjectForKey:v7];
        [SSRRequestIdToAudioIdMappingHelper _writeMappingIntoPlist:v11];
        v13 = 0;
LABEL_9:

        goto LABEL_10;
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = &unk_283933400;
      v16 = 113;
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = &unk_2839333D8;
      v16 = 1258;
    }

    v13 = [v14 errorWithDomain:@"com.apple.speakerrecognition" code:v16 userInfo:v15];
    goto LABEL_9;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:{&unk_2839333B0, v17, v18, v19, v20, v21}];
LABEL_10:
  (v9)[2](v9, v13);
}

void __73__SSRRequestIdToAudioIdMappingHelper_removeMappingWithLocale_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 136315650;
    v9 = "+[SSRRequestIdToAudioIdMappingHelper removeMappingWithLocale:completion:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s remove mapping locale: %@ with error: %@", &v8, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)removeMapping
{
  v6 = *MEMORY[0x277D85DE8];
  [SSRRequestIdToAudioIdMappingHelper _writeMappingIntoPlist:0];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[SSRRequestIdToAudioIdMappingHelper removeMapping]";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Deleting all RPI audioId to requestId mapping", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (void)removeMappingWithLocale:(id)a3 date:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__SSRRequestIdToAudioIdMappingHelper_removeMappingWithLocale_date_completion___block_invoke;
  v24[3] = &unk_278577F90;
  v10 = v7;
  v25 = v10;
  v11 = v8;
  v26 = v11;
  v12 = v9;
  v27 = v12;
  v13 = MEMORY[0x22AA71400](v24);
  if (v10 && v11)
  {
    v14 = [MEMORY[0x277D018F8] defaultDateFormatter];
    v15 = [v14 stringFromDate:v11];

    if (v15)
    {
      v16 = +[SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist];
      if (!v16)
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1258 userInfo:&unk_283933338];
        (v13)[2](v13, v22);

        v17 = 0;
        goto LABEL_14;
      }

      v17 = v16;
      v18 = [v16 objectForKeyedSubscript:v10];

      if (v18)
      {
        v19 = [v17 objectForKeyedSubscript:v10];
        v20 = [v19 objectForKeyedSubscript:v15];

        v21 = [v17 objectForKeyedSubscript:v10];
        [v21 removeObjectForKey:v15];

        if (v20)
        {
          [SSRRequestIdToAudioIdMappingHelper _writeMappingIntoPlist:v17];
          v13[2](v13, 0);
LABEL_14:

          goto LABEL_15;
        }

        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933388];
        (v13)[2](v13, v23);
      }

      else
      {
        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933360];
        (v13)[2](v13, v23);
      }

      goto LABEL_14;
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933310];
    (v13)[2](v13, v17);
    goto LABEL_14;
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_2839332E8];
  (v13)[2](v13, v15);
LABEL_15:
}

void __78__SSRRequestIdToAudioIdMappingHelper_removeMappingWithLocale_date_completion___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = 136315906;
    v10 = "+[SSRRequestIdToAudioIdMappingHelper removeMappingWithLocale:date:completion:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s remove mapping locale: %@ and date: %@ with error: %@", &v9, 0x2Au);
  }

  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)writeIntoMappingWithRequestId:(id)a3 audioId:(id)a4 date:(id)a5 locale:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = __99__SSRRequestIdToAudioIdMappingHelper_writeIntoMappingWithRequestId_audioId_date_locale_completion___block_invoke;
  v37 = &unk_278577F68;
  v16 = v11;
  v38 = v16;
  v17 = v12;
  v39 = v17;
  v18 = v14;
  v40 = v18;
  v19 = v15;
  v41 = v19;
  v20 = MEMORY[0x22AA71400](&v34);
  if (v13 && v16 && v17 && v18)
  {
    v21 = [MEMORY[0x277D018F8] defaultDateFormatter];
    v22 = [v21 stringFromDate:v13];

    if (v22)
    {
      v23 = +[SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist];
      v24 = v23;
      if (v23)
      {
        v25 = [v23 objectForKeyedSubscript:v18];

        if (!v25)
        {
          v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v24 setObject:v26 forKeyedSubscript:v18];
        }

        v27 = [v24 objectForKeyedSubscript:v18];
        v28 = [v27 objectForKeyedSubscript:v22];

        if (!v28)
        {
          v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v30 = [v24 objectForKeyedSubscript:v18];
          [v30 setObject:v29 forKeyedSubscript:v22];
        }

        v31 = [v24 objectForKeyedSubscript:v18];
        v32 = [v31 objectForKeyedSubscript:v22];
        [v32 setObject:v17 forKeyedSubscript:v16];

        [SSRRequestIdToAudioIdMappingHelper _writeMappingIntoPlist:v24];
        v33 = 0;
      }

      else
      {
        v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1258 userInfo:&unk_2839332C0];
      }

      (v20)[2](v20, v33);
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933298];
      (v20)[2](v20, v24);
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:{&unk_283933270, v34, v35, v36, v37, v38, v39, v40}];
    (v20)[2](v20, v22);
  }
}

void __99__SSRRequestIdToAudioIdMappingHelper_writeIntoMappingWithRequestId_audioId_date_locale_completion___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = 136316162;
    v11 = "+[SSRRequestIdToAudioIdMappingHelper writeIntoMappingWithRequestId:audioId:date:locale:completion:]_block_invoke";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v3;
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s write into mapping for requestId: %@, audioId: %@, locale: %@ with error: %@", &v10, 0x34u);
  }

  v5 = a1[7];
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)getAudioIdWithRequestId:(id)a3 languageCode:(id)a4 date:(id)a5 error:(id *)a6
{
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10 && v9 && v11)
  {
    v13 = [MEMORY[0x277D018F8] defaultDateFormatter];
    v14 = [v13 stringFromDate:v12];

    if (!v14)
    {
      if (a6)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933220];
        *a6 = v22 = 0;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_20;
    }

    v15 = +[SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:v10];
      v18 = [v17 objectForKeyedSubscript:v14];
      v19 = [v18 objectForKeyedSubscript:v9];

      if (v19)
      {
        v20 = [v16 objectForKeyedSubscript:v10];
        v21 = [v20 objectForKeyedSubscript:v14];
        v22 = [v21 objectForKeyedSubscript:v9];

        if (v22)
        {
          goto LABEL_19;
        }
      }

      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"requestId: %@ not found in map", v9];
      v24 = v23;
      if (a6)
      {
        v25 = MEMORY[0x277CCA9B8];
        v29 = @"reason";
        v30[0] = v23;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        *a6 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:1257 userInfo:v26];
      }
    }

    else if (a6)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1258 userInfo:&unk_283933248];
      *a6 = v22 = 0;
LABEL_19:

LABEL_20:
      goto LABEL_21;
    }

    v22 = 0;
    goto LABEL_19;
  }

  if (a6)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_2839331F8];
    *a6 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_21:

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

@end