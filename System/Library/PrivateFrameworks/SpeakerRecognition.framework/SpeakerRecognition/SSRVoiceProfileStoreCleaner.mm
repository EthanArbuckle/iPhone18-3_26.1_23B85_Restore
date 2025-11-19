@interface SSRVoiceProfileStoreCleaner
- (id)_cleanupAppDomain:(id)a3;
- (id)_cleanupContentsOfSatFolder:(id)a3;
- (id)_cleanupImplicitUtteranceCacheForProfile:(id)a3;
- (id)_cleanupInvalidAudioFiles:(id)a3;
- (id)_cleanupOrphanedMetafilesAtURL:(id)a3;
- (id)_cleanupOrphanedMetafilesForProfile:(id)a3 payloadUtteranceLifeTimeInDays:(int64_t)a4;
- (id)_cleanupPayloadUtterancesFromProfile:(id)a3 forModelType:(unint64_t)a4 exceedingLifeTimeInDays:(int64_t)a5;
- (id)_cleanuplanguageCodePath:(id)a3 forAppDomain:(id)a4;
- (id)cleanupProfileStore;
- (id)deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:(id)a3 appDomain:(id)a4;
- (id)filterDuplicatedSiriProfilesFrom:(id)a3;
- (id)filterInvalidSiriProfilesFrom:(id)a3;
- (void)_cleanupModelFilesAtDir:(id)a3 forAssetArray:(id)a4;
- (void)cleanupInvalidModelsForProfile:(id)a3 withAssetArray:(id)a4;
@end

@implementation SSRVoiceProfileStoreCleaner

- (void)_cleanupModelFilesAtDir:(id)a3 forAssetArray:(id)a4
{
  v63[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v5 path];
  v9 = [v7 fileExistsAtPath:v8];

  if (!v9)
  {
    goto LABEL_35;
  }

  v63[0] = *MEMORY[0x277CBE8E8];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
  v54 = 0;
  v11 = [v7 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v10 options:0 error:&v54];
  v12 = v54;

  if (!v12)
  {
    v41 = v5;
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v40 = v6;
    v17 = v6;
    v18 = [v17 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v51;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v51 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v50 + 1) + 8 * i) hashFromResourcePath];
          [v15 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v19);
    }

    v42 = v7;

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v39 = v11;
    obj = v11;
    v23 = [obj countByEnumeratingWithState:&v46 objects:v61 count:16];
    if (!v23)
    {
      v44 = 0;
      goto LABEL_33;
    }

    v24 = v23;
    v44 = 0;
    v25 = *v47;
    v26 = 0x277D01000uLL;
    while (1)
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v46 + 1) + 8 * j);
        v29 = [v28 absoluteString];
        v30 = [v29 lastPathComponent];

        if ([*(v26 + 2296) isExclaveHardware])
        {
          v31 = v25;
          v32 = v26;
          v33 = [v28 URLByDeletingPathExtension];
          v34 = [v33 absoluteString];
          v35 = [v34 lastPathComponent];

          if ([v15 containsObject:v30])
          {
            v26 = v32;
            v25 = v31;
            goto LABEL_29;
          }

          if (v35)
          {
            v26 = v32;
            v25 = v31;
            if ([v15 containsObject:v35])
            {
              goto LABEL_29;
            }
          }

          else
          {
            v26 = v32;
            v25 = v31;
          }
        }

        else
        {
          v35 = 0;
          if ([v15 containsObject:v30])
          {
            goto LABEL_29;
          }
        }

        v45 = v44;
        [v42 removeItemAtURL:v28 error:&v45];
        v36 = v45;

        v37 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v56 = "[SSRVoiceProfileStoreCleaner _cleanupModelFilesAtDir:forAssetArray:]";
          v57 = 2114;
          v58 = v30;
          v59 = 2114;
          v60 = v36;
          _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s Deleting model file %{public}@ with err %{public}@", buf, 0x20u);
        }

        v44 = v36;
LABEL_29:
      }

      v24 = [obj countByEnumeratingWithState:&v46 objects:v61 count:16];
      if (!v24)
      {
LABEL_33:

        v6 = v40;
        v5 = v41;
        v7 = v42;
        v11 = v39;
        v12 = v44;
        goto LABEL_34;
      }
    }
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [v12 localizedDescription];
  v15 = [v13 stringWithFormat:@"Error reading contents of modelDir: %@, err: %@", v5, v14];

  v16 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v56 = "[SSRVoiceProfileStoreCleaner _cleanupModelFilesAtDir:forAssetArray:]";
    v57 = 2114;
    v58 = v15;
    _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

LABEL_34:

LABEL_35:
  v38 = *MEMORY[0x277D85DE8];
}

- (void)cleanupInvalidModelsForProfile:(id)a3 withAssetArray:(id)a4
{
  v12 = a3;
  v6 = a4;
  for (i = 1; i != 6; ++i)
  {
    v8 = [v12 voiceProfileModelDirForSpidType:i recognizerType:2];
    v9 = [v12 voiceProfileModelDirForSpidType:i recognizerType:1];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    [(SSRVoiceProfileStoreCleaner *)self _cleanupModelFilesAtDir:v10 forAssetArray:v6];

    v11 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    [(SSRVoiceProfileStoreCleaner *)self _cleanupModelFilesAtDir:v11 forAssetArray:v6];
  }
}

- (id)_cleanupPayloadUtterancesFromProfile:(id)a3 forModelType:(unint64_t)a4 exceedingLifeTimeInDays:(int64_t)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a5 * -86400.0];
  v9 = MEMORY[0x277D01970];
  v10 = *MEMORY[0x277D01970];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v7 profileID];
      v20 = 136315906;
      v21 = "[SSRVoiceProfileStoreCleaner _cleanupPayloadUtterancesFromProfile:forModelType:exceedingLifeTimeInDays:]";
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v12;
      v26 = 1024;
      v27 = a4;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Checking payload utterances prior to %{public}@ for profile %{public}@ and modelType %d", &v20, 0x26u);
    }

    v13 = [v7 getImplicitEnrollmentUtterancesPriorTo:v8 forType:a4];
    [v13 enumerateObjectsUsingBlock:&__block_literal_global_51];
    v14 = 0;
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[SSRVoiceProfileStoreCleaner _cleanupPayloadUtterancesFromProfile:forModelType:exceedingLifeTimeInDays:]";
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ObsoleteCutOffDate is nil - Bailing out", &v20, 0xCu);
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"obsoleteCutOffDate is nil - Bailing out"];
    v15 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[SSRVoiceProfileStoreCleaner _cleanupPayloadUtterancesFromProfile:forModelType:exceedingLifeTimeInDays:]";
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", &v20, 0x16u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v28 = @"reason";
    v29[0] = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v14 = [v16 errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:v17];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

void __105__SSRVoiceProfileStoreCleaner__cleanupPayloadUtterancesFromProfile_forModelType_exceedingLifeTimeInDays___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 URLByDeletingPathExtension];
  v4 = [v3 URLByAppendingPathExtension:@"json"];

  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SSRVoiceProfileStoreCleaner _cleanupPayloadUtterancesFromProfile:forModelType:exceedingLifeTimeInDays:]_block_invoke";
    v15 = 2114;
    v16 = v2;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Deleting lifetimeexpired SAT entry %{public}@", &v13, 0x16u);
  }

  v7 = [v2 path];
  v8 = [SSRUtils removeItemAtPath:v7];

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SSRVoiceProfileStoreCleaner _cleanupPayloadUtterancesFromProfile:forModelType:exceedingLifeTimeInDays:]_block_invoke";
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Deleted lifetimeexpired metafile %{public}@", &v13, 0x16u);
  }

  v10 = [v4 path];
  v11 = [SSRUtils removeItemAtPath:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_cleanupOrphanedMetafilesAtURL:(id)a3
{
  v72[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v4 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v72[0] = *MEMORY[0x277CBE8E8];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:1];
    v63 = 0;
    v10 = [v5 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v9 options:0 error:&v63];
    v11 = v63;

    if (v11)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [v11 localizedDescription];
      v14 = [v12 stringWithFormat:@"Failed reading contents of audioDir: %@, err: %@", v4, v13];

      v15 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v65 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesAtURL:]";
        v66 = 2114;
        v67 = v14;
        _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v16 = v11;
    }

    else
    {
      v50 = self;
      v52 = v5;
      v53 = v4;
      v18 = [MEMORY[0x277CBEB38] dictionary];
      v54 = [@"meta_version.json" stringByDeletingPathExtension];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v51 = v10;
      v19 = v10;
      v20 = [v19 countByEnumeratingWithState:&v59 objects:v71 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v60;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v60 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v59 + 1) + 8 * i);
            v25 = [v24 absoluteString];
            v26 = [v25 lastPathComponent];
            v27 = [v26 stringByDeletingPathExtension];

            if ([v27 compare:@"enrollment_completed"] && (objc_msgSend(v27, "isEqualToString:", v54) & 1) == 0)
            {
              v28 = [v18 objectForKeyedSubscript:v27];

              if (v28)
              {
                [v18 removeObjectForKey:v27];
              }

              else
              {
                [v18 setObject:v24 forKeyedSubscript:v27];
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v59 objects:v71 count:16];
        }

        while (v21);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v14 = v18;
      v29 = [v14 countByEnumeratingWithState:&v55 objects:v70 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v56;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v56 != v31)
            {
              objc_enumerationMutation(v14);
            }

            v33 = *(*(&v55 + 1) + 8 * j);
            v34 = [v14 objectForKeyedSubscript:v33];
            v35 = [v34 pathExtension];
            v36 = [v35 compare:@"json"];

            v37 = *MEMORY[0x277D01970];
            v38 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
            if (v36)
            {
              if (v38)
              {
                *buf = 136315394;
                v65 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesAtURL:]";
                v66 = 2114;
                v67 = v34;
                _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s Found non-meta file: %{public}@", buf, 0x16u);
              }
            }

            else
            {
              if (v38)
              {
                *buf = 136315650;
                v65 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesAtURL:]";
                v66 = 2114;
                v67 = v33;
                v68 = 2114;
                v69[0] = v34;
                _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid SAT entry: %{public}@ : <%{public}@>", buf, 0x20u);
              }

              v39 = [v34 path];
              v40 = [SSRUtils removeItemAtPath:v39];
            }
          }

          v30 = [v14 countByEnumeratingWithState:&v55 objects:v70 count:16];
        }

        while (v30);
      }

      v4 = v53;
      v41 = [(SSRVoiceProfileStoreCleaner *)v50 _cleanupInvalidAudioFiles:v53];
      v42 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        v44 = [SSRUtils getExplicitEnrollmentUtterancesFromDirectory:v53];
        v45 = [v44 count];
        v46 = [SSRUtils getImplicitEnrollmentUtterancesFromDirectory:v53];
        v47 = [v46 count];
        *buf = 136315906;
        v65 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesAtURL:]";
        v66 = 2114;
        v67 = v53;
        v68 = 1026;
        LODWORD(v69[0]) = v45;
        WORD2(v69[0]) = 1026;
        *(v69 + 6) = v47;
        _os_log_impl(&dword_225E12000, v43, OS_LOG_TYPE_DEFAULT, "%s Processed %{public}@ with %{public}d explicit and %{public}d implicit utterances", buf, 0x22u);
      }

      v16 = v41;

      v10 = v51;
      v5 = v52;
    }
  }

  else
  {
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v65 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesAtURL:]";
      v66 = 2114;
      v67 = v4;
      _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s File path doesnt exist - %{public}@", buf, 0x16u);
    }

    v16 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_cleanupInvalidAudioFiles:(id)a3
{
  v64[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v54 = 0;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v3 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v64[0] = *MEMORY[0x277CBE8E8];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
    v53 = 0;
    v9 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v8 options:0 error:&v53];
    v10 = v53;

    if (v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [v10 localizedDescription];
      v13 = [v11 stringWithFormat:@"Failed reading contents of audioDir: %@, err: %@", v3, v12];

      v14 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v56 = "[SSRVoiceProfileStoreCleaner _cleanupInvalidAudioFiles:]";
        v57 = 2114;
        v58 = v13;
        _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v15 = v10;
    }

    else
    {
      v44 = v9;
      v45 = v3;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = v9;
      v17 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        v20 = *v50;
        do
        {
          v21 = 0;
          v46 = v18;
          do
          {
            if (*v50 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v49 + 1) + 8 * v21);
            v23 = [v22 pathExtension];
            v24 = [v23 isEqualToString:@"wav"];

            if (v24)
            {
              v25 = [v22 path];
              v48 = v19;
              v26 = v4;
              v27 = [v4 attributesOfItemAtPath:v25 error:&v48];
              v28 = v48;

              v29 = [v27 fileSize];
              if (v28 || !v29)
              {
                v41 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  v56 = "[SSRVoiceProfileStoreCleaner _cleanupInvalidAudioFiles:]";
                  v57 = 2114;
                  v58 = v22;
                  v59 = 2114;
                  v60 = v28;
                  v61 = 2050;
                  v62 = v29;
                  _os_log_error_impl(&dword_225E12000, v41, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get atrributes of file %{public}@, err %{public}@, size %{public}llu", buf, 0x2Au);
                }

                v19 = v28;
              }

              else
              {
                v30 = [v22 URLByDeletingPathExtension];
                v31 = [v30 URLByAppendingPathExtension:@"json"];

                v32 = [v31 path];
                v33 = [v26 fileExistsAtPath:v32 isDirectory:&v54];

                v34 = @"n/a";
                if (v33)
                {
                  v34 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:v31];
                }

                v35 = [(__CFString *)v34 isEqualToString:@"explicit"];
                if (!(v29 >> 13) && (v35 & 1) == 0)
                {
                  v36 = [v22 path];
                  v37 = [SSRUtils removeItemAtPath:v36];

                  v38 = [v31 path];
                  v39 = [SSRUtils removeItemAtPath:v38];

                  v40 = *MEMORY[0x277D01970];
                  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v56 = "[SSRVoiceProfileStoreCleaner _cleanupInvalidAudioFiles:]";
                    v57 = 2114;
                    v58 = v22;
                    v59 = 2114;
                    v60 = v31;
                    _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid SAT entry: %{public}@ %{public}@", buf, 0x20u);
                  }
                }

                v19 = 0;
              }

              v4 = v26;
              v18 = v46;
            }

            ++v21;
          }

          while (v18 != v21);
          v18 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      v15 = v19;
      v9 = v44;
      v3 = v45;
    }
  }

  else
  {
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v56 = "[SSRVoiceProfileStoreCleaner _cleanupInvalidAudioFiles:]";
      v57 = 2114;
      v58 = v3;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s File path doesnt exist - %{public}@", buf, 0x16u);
    }

    v15 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_cleanupContentsOfSatFolder:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = 0x278577000uLL;
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
  v5 = [SSRUtils getContentsOfDirectory:v4];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v31;
    *&v8 = 136315394;
    v27 = v8;
    v28 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        v13 = [v12 lastPathComponent];
        v14 = [*(v3 + 1160) stringForCSSpIdType:1];
        if ([v13 isEqualToString:v14])
        {
          goto LABEL_11;
        }

        v15 = [*(v3 + 1160) stringForCSSpIdType:3];
        if ([v13 isEqualToString:v15])
        {
          goto LABEL_10;
        }

        v16 = [*(v3 + 1160) stringForCSSpIdType:4];
        if ([v13 isEqualToString:v16])
        {

LABEL_10:
LABEL_11:

          goto LABEL_12;
        }

        [*(v3 + 1160) stringForCSSpIdType:5];
        v17 = v9;
        v18 = v6;
        v20 = v19 = v3;
        v29 = [v13 isEqualToString:v20];

        v3 = v19;
        v6 = v18;
        v9 = v17;
        v10 = v28;

        if ((v29 & 1) == 0 && ([v13 containsString:@"enrollment_version.json"] & 1) == 0 && (objc_msgSend(v13, "containsString:", @"meta_version.json") & 1) == 0 && (objc_msgSend(v13, "containsString:", @"enrollment_completed") & 1) == 0 && (objc_msgSend(v13, "containsString:", @"enrollment_migrated") & 1) == 0)
        {
          v21 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v35 = "[SSRVoiceProfileStoreCleaner _cleanupContentsOfSatFolder:]";
            v36 = 2114;
            v37 = v12;
            _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid SAT entry: %{public}@", buf, 0x16u);
          }

          v22 = *(v3 + 1160);
          v14 = [v12 path];
          v23 = [v22 removeItemAtPath:v14];
          v10 = v28;
          goto LABEL_11;
        }

LABEL_12:

        ++v11;
      }

      while (v9 != v11);
      v24 = [v6 countByEnumeratingWithState:&v30 objects:v38 count:16];
      v9 = v24;
    }

    while (v24);
  }

  v25 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_cleanupOrphanedMetafilesForProfile:(id)a3 payloadUtteranceLifeTimeInDays:(int64_t)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 voiceProfileIdentity];
  v8 = [v6 voiceProfileVersion];
  v9 = MEMORY[0x277D01970];
  v10 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v6 profileID];
    v30 = 136315906;
    v31 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesForProfile:payloadUtteranceLifeTimeInDays:]";
    v32 = 2114;
    v33 = v12;
    v34 = 1026;
    v35 = v8;
    v36 = 2114;
    v37 = v7;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Processing profile %{public}@ with version %{public}d and identity %{public}@", &v30, 0x26u);
  }

  if ([v6 voiceProfileVersion])
  {
    v13 = [v6 voiceProfileBasePath];
    v14 = [(SSRVoiceProfileStoreCleaner *)self _cleanupContentsOfSatFolder:v13];

    if (v14)
    {
      v15 = v14;
    }

    v16 = [v6 voiceProfileAudioDirPathForSpidType:1];
    v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
    v18 = [(SSRVoiceProfileStoreCleaner *)self _cleanupOrphanedMetafilesAtURL:v17];

    if (v18)
    {
      v19 = v18;

      v14 = v19;
    }

    v20 = [v6 voiceProfileAudioDirPathForSpidType:3];
    v21 = [MEMORY[0x277CBEBC0] URLWithString:v20];
    v22 = [(SSRVoiceProfileStoreCleaner *)self _cleanupOrphanedMetafilesAtURL:v21];

    if (v22)
    {
      v23 = v22;

      v14 = v23;
    }

    v24 = [(SSRVoiceProfileStoreCleaner *)self _cleanupPayloadUtterancesFromProfile:v6 forModelType:3 exceedingLifeTimeInDays:a4];

    if (v24)
    {
      v25 = v24;

      v14 = v25;
    }

    v26 = v14;
  }

  else
  {
    v27 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315138;
      v31 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesForProfile:payloadUtteranceLifeTimeInDays:]";
      _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEFAULT, "%s Found legacy voice profile - Skipping", &v30, 0xCu);
    }

    v26 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_cleanupImplicitUtteranceCacheForProfile:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a3 voiceProfileImplicitCacheDirPath];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SSRVoiceProfileStoreCleaner _cleanupImplicitUtteranceCacheForProfile:]";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Removing Implicit utterance cache directory at %{public}@", &v8, 0x16u);
  }

  v5 = [SSRUtils removeItemAtPath:v3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_cleanuplanguageCodePath:(id)a3 forAppDomain:(id)a4
{
  v66[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = *MEMORY[0x277CBE868];
  v66[0] = *MEMORY[0x277CBE8E8];
  v66[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
  v56 = 0;
  v11 = [v8 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:v10 options:0 error:&v56];
  v12 = v56;

  if (!v12)
  {
    v48 = self;
    v46 = v7;
    v47 = v6;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v45 = v11;
    obj = v11;
    v16 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (!v16)
    {
      v12 = 0;
      goto LABEL_33;
    }

    v17 = v16;
    v18 = v9;
    v12 = 0;
    v19 = *v53;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v52 + 1) + 8 * i);
        v22 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = [v21 lastPathComponent];
          *buf = 136315394;
          v59 = "[SSRVoiceProfileStoreCleaner _cleanuplanguageCodePath:forAppDomain:]";
          v60 = 2114;
          v61 = v24;
          _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Processing profile - %{public}@", buf, 0x16u);
        }

        v50 = 0;
        v51 = 0;
        [v21 getResourceValue:&v51 forKey:v18 error:&v50];
        v25 = v51;
        v26 = v50;
        if (v26)
        {
          v27 = v26;
          v28 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v59 = "[SSRVoiceProfileStoreCleaner _cleanuplanguageCodePath:forAppDomain:]";
            v60 = 2114;
            v61 = v21;
            v62 = 2114;
            v63 = v27;
            _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s ERR: Failed determining if file is dir-entry url=%{public}@ with %{public}@", buf, 0x20u);
          }

          v29 = v27;

          v12 = v29;
        }

        else
        {
          if (v25)
          {
            v29 = [v21 lastPathComponent];
            v30 = +[SSRVoiceProfileManager sharedInstance];
            v31 = [v30 voiceProfileForId:v29];

            if (v31)
            {
              v32 = v48;
              v33 = [(SSRVoiceProfileStoreCleaner *)v48 _cleanupOrphanedMetafilesForProfile:v31 payloadUtteranceLifeTimeInDays:180];
              v34 = v33;
              if (v33)
              {
                v35 = v33;

                v12 = v35;
                v32 = v48;
              }

              v36 = [(SSRVoiceProfileStoreCleaner *)v32 _cleanupImplicitUtteranceCacheForProfile:v31];

              if (v36)
              {
                v37 = v36;

                v12 = v37;
                goto LABEL_27;
              }
            }

            else
            {
              v40 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v59 = "[SSRVoiceProfileStoreCleaner _cleanuplanguageCodePath:forAppDomain:]";
                v60 = 2114;
                v61 = v21;
                _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid profile %{public}@", buf, 0x16u);
              }

              v37 = [v21 path];
              v41 = [SSRUtils removeItemAtPath:v37];
LABEL_27:
            }

            goto LABEL_29;
          }

          v38 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v59 = "[SSRVoiceProfileStoreCleaner _cleanuplanguageCodePath:forAppDomain:]";
            v60 = 2114;
            v61 = v21;
            _os_log_impl(&dword_225E12000, v38, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid file %{public}@", buf, 0x16u);
          }

          v29 = [v21 path];
          v39 = [SSRUtils removeItemAtPath:v29];
        }

LABEL_29:
      }

      v17 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (!v17)
      {
LABEL_33:

        v7 = v46;
        v6 = v47;
        v11 = v45;
        goto LABEL_34;
      }
    }
  }

  v13 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v14 = v13;
    v15 = [v12 localizedDescription];
    *buf = 136315906;
    v59 = "[SSRVoiceProfileStoreCleaner _cleanuplanguageCodePath:forAppDomain:]";
    v60 = 2114;
    v61 = v7;
    v62 = 2114;
    v63 = v6;
    v64 = 2114;
    v65 = v15;
    _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: Failed reading AppDomain %{public}@ at %{public}@ with %{public}@", buf, 0x2Au);
  }

LABEL_34:
  v42 = v12;

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)_cleanupAppDomain:(id)a3
{
  v61[2] = *MEMORY[0x277D85DE8];
  v42 = a3;
  v4 = +[SSRVoiceProfileManager sharedInstance];
  v5 = [v4 SSRBasePathForAppDomain:@"com.apple.siri"];

  v43 = AFPreferencesSupportedLanguages();
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v8 = *MEMORY[0x277CBE868];
  v61[0] = *MEMORY[0x277CBE8E8];
  v61[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v51 = 0;
  v10 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v9 options:0 error:&v51];
  v11 = v51;

  if (!v11)
  {
    v39 = v10;
    v40 = v5;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v10;
    v15 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (!v15)
    {
      v11 = 0;
      goto LABEL_36;
    }

    v16 = v15;
    v41 = self;
    v11 = 0;
    v17 = *v48;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v47 + 1) + 8 * v18);
        v20 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          v22 = [v19 lastPathComponent];
          *buf = 136315394;
          v54 = "[SSRVoiceProfileStoreCleaner _cleanupAppDomain:]";
          v55 = 2114;
          v56 = v22;
          _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Processing locale - %{public}@", buf, 0x16u);
        }

        v45 = 0;
        v46 = 0;
        [v19 getResourceValue:&v46 forKey:v8 error:{&v45, v39, v40}];
        v23 = v46;
        v24 = v45;
        if (v24)
        {
          v25 = v24;
          v26 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v54 = "[SSRVoiceProfileStoreCleaner _cleanupAppDomain:]";
            v55 = 2114;
            v56 = v19;
            v57 = 2114;
            v58 = v25;
            _os_log_error_impl(&dword_225E12000, v26, OS_LOG_TYPE_ERROR, "%s ERR: Failed determining if file is dir-entry url=%{public}@ with %{public}@", buf, 0x20u);
          }

          v27 = v25;

          v11 = v27;
        }

        else
        {
          if (v23)
          {
            v27 = [v19 lastPathComponent];
            v28 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
            if (v43 && [v43 count] && v28 && (objc_msgSend(v27, "isEqualToString:", v28) & 1) == 0 && (objc_msgSend(v43, "containsObject:", v27) & 1) == 0)
            {
              v33 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v54 = "[SSRVoiceProfileStoreCleaner _cleanupAppDomain:]";
                v55 = 2114;
                v56 = v19;
                v57 = 2114;
                v58 = v43;
                v59 = 2114;
                v60 = v28;
                _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid locale %{public}@ not supported in set %{public}@ and current language %{public}@", buf, 0x2Au);
              }

              v30 = [v19 path];
              v34 = [SSRUtils removeItemAtPath:v30];
LABEL_23:
            }

            else
            {
              v29 = [(SSRVoiceProfileStoreCleaner *)v41 _cleanuplanguageCodePath:v19 forAppDomain:v42];
              if (v29)
              {
                v30 = v29;

                v11 = v30;
                goto LABEL_23;
              }
            }

            goto LABEL_28;
          }

          v31 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v54 = "[SSRVoiceProfileStoreCleaner _cleanupAppDomain:]";
            v55 = 2114;
            v56 = v19;
            _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid file %{public}@", buf, 0x16u);
          }

          v27 = [v19 path];
          v32 = [SSRUtils removeItemAtPath:v27];
        }

LABEL_28:

        ++v18;
      }

      while (v16 != v18);
      v35 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      v16 = v35;
      if (!v35)
      {
LABEL_36:

        v10 = v39;
        v5 = v40;
        goto LABEL_37;
      }
    }
  }

  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v13 = v12;
    v14 = [v11 localizedDescription];
    *buf = 136315906;
    v54 = "[SSRVoiceProfileStoreCleaner _cleanupAppDomain:]";
    v55 = 2114;
    v56 = v42;
    v57 = 2114;
    v58 = v5;
    v59 = 2114;
    v60 = v14;
    _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: Failed reading AppDomain %{public}@ at %{public}@ with %{public}@", buf, 0x2Au);
  }

LABEL_37:
  v36 = v11;

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:(id)a3 appDomain:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (CSIsCommunalDevice())
  {
    v7 = 0;
  }

  else
  {
    v8 = +[SSRVoiceProfileStore sharedInstance];
    v9 = [v8 userVoiceProfilesForAppDomain:v6 forLocale:v5];
    if ([v9 count] < 2)
    {
      v7 = 0;
    }

    else
    {
      v27 = v6;
      v28 = v5;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = v9;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v11)
      {
        v12 = v11;
        v7 = 0;
        v13 = *v30;
        v14 = MEMORY[0x277D01970];
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v29 + 1) + 8 * i);
            v17 = [v16 getEnrollmentUtterancesForModelType:1];
            v18 = v17;
            if (!v17 || ![v17 count])
            {
              v19 = *v14;
              if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v34 = "[SSRVoiceProfileStoreCleaner deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:appDomain:]";
                v35 = 2112;
                v36 = v16;
                _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s Found profile %@ with no enrollment utts. Deleting..", buf, 0x16u);
              }

              v20 = [v8 deleteUserVoiceProfile:v16];

              v21 = *v14;
              if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v21;
                v23 = [v20 localizedDescription];
                *buf = 136315394;
                v34 = "[SSRVoiceProfileStoreCleaner deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:appDomain:]";
                v35 = 2114;
                v36 = v23;
                _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s Deleted voiceprofile with error %{public}@", buf, 0x16u);
              }

              v7 = v20;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v12);
      }

      else
      {
        v7 = 0;
      }

      v6 = v27;
      v5 = v28;
      v9 = v26;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)cleanupProfileStore
{
  v62[2] = *MEMORY[0x277D85DE8];
  v2 = +[SSRVoiceProfileManager sharedInstance];
  v39 = [v2 provisionedVoiceProfilesForAppDomain:0 withLocale:0];

  v3 = +[SSRVoiceProfileManager sharedInstance];
  v40 = [v3 SSRSpeakerProfilesBasePath];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v40];

  if ((v5 & 1) == 0)
  {
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
      *&buf[12] = 2114;
      *&buf[14] = v40;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s File path doesnt exist - %{public}@", buf, 0x16u);
    }

    v12 = 0;
    goto LABEL_38;
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v40];
  v8 = *MEMORY[0x277CBE868];
  v62[0] = *MEMORY[0x277CBE8E8];
  v62[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  v50 = 0;
  v38 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v9 options:0 error:&v50];
  v10 = v50;

  if (!v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v59 = __Block_byref_object_copy__3854;
    v60 = __Block_byref_object_dispose__3855;
    v61 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:5];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __50__SSRVoiceProfileStoreCleaner_cleanupProfileStore__block_invoke;
    v49[3] = &unk_2785784F8;
    v49[4] = buf;
    [v39 enumerateObjectsUsingBlock:v49];
    v14 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*&buf[8] + 40);
      *v51 = 136315394;
      v52 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
      v53 = 2114;
      v54 = v15;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s App domains in use - %{public}@", v51, 0x16u);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v16 = v38;
    v17 = [v16 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (!v17)
    {
      v42 = 0;
      goto LABEL_36;
    }

    v42 = 0;
    v18 = *v46;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v43 = 0;
        v44 = 0;
        [v20 getResourceValue:&v44 forKey:v8 error:&v43];
        v21 = v44;
        v22 = v43;
        if (v22)
        {
          v23 = v22;
          v24 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *v51 = 136315650;
            v52 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
            v53 = 2114;
            v54 = v20;
            v55 = 2114;
            v56 = v23;
            _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s ERR: Failed determining if file is dir-entry url=%{public}@ with %{public}@", v51, 0x20u);
          }
        }

        else if (v21)
        {
          v23 = [v20 lastPathComponent];
          v25 = [*(*&buf[8] + 40) containsObject:v23];
          v26 = *MEMORY[0x277D01970];
          v27 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
          if ((v25 & 1) == 0)
          {
            if (v27)
            {
              v32 = *(*&buf[8] + 40);
              *v51 = 136315650;
              v52 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
              v53 = 2114;
              v54 = v20;
              v55 = 2114;
              v56 = v32;
              _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid domain %{public}@ not part of domains %{public}@", v51, 0x20u);
            }

            v29 = [v20 path];
            v33 = [SSRUtils removeItemAtPath:v29];
            goto LABEL_31;
          }

          if (v27)
          {
            *v51 = 136315394;
            v52 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
            v53 = 2114;
            v54 = v23;
            _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Processing domain - %{public}@", v51, 0x16u);
          }

          v28 = [(SSRVoiceProfileStoreCleaner *)self _cleanupAppDomain:v23];
          if (v28)
          {
            v29 = v28;

            v42 = v29;
LABEL_31:
          }
        }

        else
        {
          v30 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *v51 = 136315394;
            v52 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
            v53 = 2114;
            v54 = v20;
            _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid file %{public}@", v51, 0x16u);
          }

          v23 = [v20 path];
          v31 = [SSRUtils removeItemAtPath:v23];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v45 objects:v57 count:16];
      if (!v17)
      {
LABEL_36:

        v12 = v42;
        _Block_object_dispose(buf, 8);

        goto LABEL_37;
      }
    }
  }

  v11 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v36 = v11;
    v37 = [v10 localizedDescription];
    *buf = 136315650;
    *&buf[4] = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
    *&buf[12] = 2114;
    *&buf[14] = v40;
    *&buf[22] = 2114;
    v59 = v37;
    _os_log_error_impl(&dword_225E12000, v36, OS_LOG_TYPE_ERROR, "%s ERR: Failed reading contents of SAT root %{public}@ with %{public}@", buf, 0x20u);
  }

  v12 = v10;
LABEL_37:

LABEL_38:
  v34 = *MEMORY[0x277D85DE8];

  return v12;
}

void __50__SSRVoiceProfileStoreCleaner_cleanupProfileStore__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 appDomain];

  if (v4)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v10 = [v3 appDomain];

    [v5 addObject:v10];
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Failed to get appdomain for profile %@", v3];

    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]_block_invoke";
      v13 = 2114;
      v14 = v7;
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (id)filterInvalidSiriProfilesFrom:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_4];
  v19 = v3;
  v4 = [v3 filteredArrayUsingPredicate:?];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v4;
  obj = [v4 reverseObjectEnumerator];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = MEMORY[0x277D01970];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v28 = "[SSRVoiceProfileStoreCleaner filterInvalidSiriProfilesFrom:]";
          v29 = 2114;
          v30 = v11;
          _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Processing onboarded Siri user: %{public}@", buf, 0x16u);
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __61__SSRVoiceProfileStoreCleaner_filterInvalidSiriProfilesFrom___block_invoke_6;
        v21[3] = &unk_2785784D0;
        v21[4] = v11;
        v22 = v5;
        [SSRUtils getHomeUserIdForVoiceProfile:v11 withCompletion:v21];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

void __61__SSRVoiceProfileStoreCleaner_filterInvalidSiriProfilesFrom___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:@"kAFAssistantErrorDomain"])
    {
      if ([v6 code] == 6001)
      {
      }

      else
      {
        v8 = [v6 code];

        if (v8 != 6002)
        {
          goto LABEL_10;
        }
      }

      v9 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v12 = 136315394;
        v13 = "[SSRVoiceProfileStoreCleaner filterInvalidSiriProfilesFrom:]_block_invoke";
        v14 = 2114;
        v15 = v10;
        _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Detected invalid user: %{public}@", &v12, 0x16u);
      }

      [*(a1 + 40) addObject:*(a1 + 32)];
    }

    else
    {
    }
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __61__SSRVoiceProfileStoreCleaner_filterInvalidSiriProfilesFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 appDomain];
  v3 = [v2 isEqualToString:@"com.apple.siri"];

  return v3;
}

- (id)filterDuplicatedSiriProfilesFrom:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v53 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3875];
  v54 = v3;
  v4 = [v3 filteredArrayUsingPredicate:?];
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v4;
  v57 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
  if (!v57)
  {
    goto LABEL_47;
  }

  v5 = MEMORY[0x277D01970];
  v56 = *v70;
  do
  {
    v6 = 0;
    do
    {
      if (*v70 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v59 = v6;
      v7 = *(*(&v69 + 1) + 8 * v6);
      v8 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v74 = "[SSRVoiceProfileStoreCleaner filterDuplicatedSiriProfilesFrom:]";
        v75 = 2114;
        *v76 = v7;
        _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Processing onboarded Siri user: %{public}@", buf, 0x16u);
      }

      v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v9 = obj;
      v10 = [v9 countByEnumeratingWithState:&v65 objects:v80 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v66;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v66 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v65 + 1) + 8 * i);
            v15 = [v7 locale];
            v16 = [v14 locale];
            v17 = [v15 isEqualToString:v16];

            if ((CSIsCommunalDevice() & 1) == 0)
            {
              if ((v17 & 1) == 0)
              {
                continue;
              }

LABEL_17:
              [v60 addObject:v14];
              continue;
            }

            v18 = [v7 siriProfileId];
            v19 = [v14 siriProfileId];
            v20 = [v18 isEqualToString:v19];

            if ((v17 & v20) == 1)
            {
              goto LABEL_17;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v65 objects:v80 count:16];
        }

        while (v11);
      }

      v21 = [v60 count];
      v5 = MEMORY[0x277D01970];
      if (v21 >= 2)
      {
        v22 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = [v60 count];
          *buf = 136315650;
          v74 = "[SSRVoiceProfileStoreCleaner filterDuplicatedSiriProfilesFrom:]";
          v75 = 1026;
          *v76 = v24;
          *&v76[4] = 2114;
          *&v76[6] = v60;
          _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Detected matching %{public}d users: %{public}@", buf, 0x1Cu);
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v25 = v60;
        v26 = [v25 countByEnumeratingWithState:&v61 objects:v79 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v62;
LABEL_25:
          v29 = 0;
          while (1)
          {
            if (*v62 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v61 + 1) + 8 * v29);
            if ([v30 isMarkedSATEnrolled])
            {
              v31 = [v30 getExplicitEnrollmentUtterancesForType:1];
              v32 = [v31 count];

              if (v32 > 3)
              {
                break;
              }
            }

            if (v27 == ++v29)
            {
              v27 = [v25 countByEnumeratingWithState:&v61 objects:v79 count:16];
              if (v27)
              {
                goto LABEL_25;
              }

              goto LABEL_32;
            }
          }

          v33 = v30;

          if (v33)
          {
            goto LABEL_38;
          }
        }

        else
        {
LABEL_32:
        }

        v33 = [v25 objectAtIndexedSubscript:0];
        v34 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
          v36 = [v7 locale];
          v37 = [v7 siriProfileId];
          v38 = v37;
          *buf = 136315906;
          v39 = @"Primary";
          if (v37)
          {
            v39 = v37;
          }

          v74 = "[SSRVoiceProfileStoreCleaner filterDuplicatedSiriProfilesFrom:]";
          v75 = 2114;
          *v76 = v36;
          *&v76[8] = 2114;
          *&v76[10] = v39;
          v77 = 2114;
          v78 = v33;
          _os_log_impl(&dword_225E12000, v35, OS_LOG_TYPE_DEFAULT, "%s Valid profile not found %{public}@ and %{public}@ - defaulting to %{public}@", buf, 0x2Au);
        }

LABEL_38:
        v40 = [v33 profileID];
        v41 = [v7 profileID];
        v42 = [v40 isEqualToString:v41];

        v43 = *v5;
        v44 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
        if (v42)
        {
          if (v44)
          {
            v45 = v43;
            v46 = [v7 profileID];
            *buf = 136315394;
            v74 = "[SSRVoiceProfileStoreCleaner filterDuplicatedSiriProfilesFrom:]";
            v75 = 2114;
            *v76 = v46;
            _os_log_impl(&dword_225E12000, v45, OS_LOG_TYPE_DEFAULT, "%s Skipping retaining user %{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (v44)
          {
            v47 = v43;
            v48 = [v7 profileID];
            *buf = 136315394;
            v74 = "[SSRVoiceProfileStoreCleaner filterDuplicatedSiriProfilesFrom:]";
            v75 = 2114;
            *v76 = v48;
            _os_log_impl(&dword_225E12000, v47, OS_LOG_TYPE_DEFAULT, "%s Adding invalid user for deletion - %{public}@", buf, 0x16u);
          }

          [v55 addObject:v7];
        }
      }

      v6 = v59 + 1;
    }

    while (v59 + 1 != v57);
    v57 = [v9 countByEnumeratingWithState:&v69 objects:v81 count:16];
  }

  while (v57);
LABEL_47:

  if ([v55 count])
  {
    v49 = v55;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;

  v51 = *MEMORY[0x277D85DE8];
  return v49;
}

uint64_t __64__SSRVoiceProfileStoreCleaner_filterDuplicatedSiriProfilesFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 appDomain];
  v3 = [v2 isEqualToString:@"com.apple.siri"];

  return v3;
}

@end