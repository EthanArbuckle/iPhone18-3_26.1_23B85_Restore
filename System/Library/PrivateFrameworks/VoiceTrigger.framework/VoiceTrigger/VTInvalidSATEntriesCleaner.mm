@interface VTInvalidSATEntriesCleaner
+ (id)cleanupInvalidSATEntriesAtSATRoot:(id)a3 payloadUtteranceLifeTimeInDays:(int64_t)a4 dryRun:(BOOL)a5;
+ (id)cleanupOrphanedMetafilesAtURL:(id)a3 dryRun:(BOOL)a4;
+ (id)cleanupOrphanedMetafilesForLanguage:(id)a3 payloadUtteranceLifeTimeInDays:(int64_t)a4 dryRun:(BOOL)a5;
+ (id)cleanupPayloadUtterancesExceedingLifeTimeInDays:(int64_t)a3 forType:(unint64_t)a4 forLanguageCode:(id)a5 dryRun:(BOOL)a6;
@end

@implementation VTInvalidSATEntriesCleaner

+ (id)cleanupPayloadUtterancesExceedingLifeTimeInDays:(int64_t)a3 forType:(unint64_t)a4 forLanguageCode:(id)a5 dryRun:(BOOL)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3 * -86400.0];
  v11 = VTLogContextFacilityVoiceTrigger;
  if (v10)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v9;
      v20 = 1024;
      v21 = a4;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "Checking payload utterances prior to %{public}@ for language %{public}@ and modelType %d", buf, 0x1Cu);
    }

    v12 = [VTSpeakerIdUtilities getImplicitEnrollmentUtterancesPriorTo:v10 forType:a4 forLanguageCode:v9];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __109__VTInvalidSATEntriesCleaner_cleanupPayloadUtterancesExceedingLifeTimeInDays_forType_forLanguageCode_dryRun___block_invoke;
    v14[3] = &__block_descriptor_33_e25_v32__0__NSString_8Q16_B24l;
    v15 = a6;
    [v12 enumerateObjectsUsingBlock:v14];
  }

  else
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_223A31000, v11, OS_LOG_TYPE_ERROR, "ERR: obsoleteCutOffDate is nil - Bailing out", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

void __109__VTInvalidSATEntriesCleaner_cleanupPayloadUtterancesExceedingLifeTimeInDays_forType_forLanguageCode_dryRun___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(a1 + 32) & 1) == 0)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    [v4 removeItemAtPath:v3 error:&v13];
    v5 = v13;

    v6 = VTLogContextFacilityVoiceTrigger;
    if (v5)
    {
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = v3;
        v16 = 2114;
        v17 = v5;
        _os_log_error_impl(&dword_223A31000, v6, OS_LOG_TYPE_ERROR, "ERR: Failed deleting %{public}@ with error %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v3;
      _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "Deleted lifetimeexpired SAT entry %{public}@", buf, 0xCu);
    }

    v7 = [v3 stringByDeletingPathExtension];
    v8 = [v7 stringByAppendingPathExtension:@"json"];

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = 0;
    [v9 removeItemAtPath:v8 error:&v12];
    v10 = v12;

    v11 = VTLogContextFacilityVoiceTrigger;
    if (v10)
    {
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = v8;
        v16 = 2114;
        v17 = v10;
        _os_log_error_impl(&dword_223A31000, v11, OS_LOG_TYPE_ERROR, "ERR: Failed deleting %{public}@ with error %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "Deleted lifetimeexpired metafile %{public}@", buf, 0xCu);
    }
  }
}

+ (id)cleanupOrphanedMetafilesAtURL:(id)a3 dryRun:(BOOL)a4
{
  v62[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v62[0] = *MEMORY[0x277CBE8E8];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
  v54 = 0;
  v41 = v6;
  v8 = [v6 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v7 options:0 error:&v54];
  v9 = v54;

  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error reading contents of audioDir: %@, err: %@", v5, v9];
    v11 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v56 = v10;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v61 = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
    goto LABEL_39;
  }

  v42 = a4;
  v40 = v5;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  v44 = [@"meta_version.json" stringByDeletingPathExtension];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v39 = v8;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v51;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v51 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v50 + 1) + 8 * i);
        v20 = [v19 absoluteString];
        v21 = [v20 lastPathComponent];
        v22 = [v21 stringByDeletingPathExtension];

        if ([v22 compare:@"enrollment_completed"] && (objc_msgSend(v22, "isEqualToString:", v44) & 1) == 0)
        {
          v23 = [v13 objectForKeyedSubscript:v22];

          if (v23)
          {
            [v13 removeObjectForKey:v22];
          }

          else
          {
            [v13 setObject:v19 forKeyedSubscript:v22];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v16);
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = v13;
  v24 = [v10 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v24)
  {
    v25 = v24;
    v43 = 0;
    v26 = *v47;
    while (1)
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(v10);
        }

        v29 = *(*(&v46 + 1) + 8 * j);
        v30 = [v10 objectForKeyedSubscript:v29];
        v31 = [v30 pathExtension];
        v32 = [v31 compare:@"json"];

        v33 = VTLogContextFacilityVoiceTrigger;
        v34 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
        if (v32)
        {
          if (v34)
          {
            *buf = 138543362;
            v56 = v30;
            _os_log_impl(&dword_223A31000, v33, OS_LOG_TYPE_DEFAULT, "Found non-meta file: %{public}@", buf, 0xCu);
          }

          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found non meta-file: %@", v30];
LABEL_22:
          [v12 addObject:v28];

          goto LABEL_23;
        }

        if (v34)
        {
          *buf = 138543618;
          v56 = v29;
          v57 = 2114;
          v58 = v30;
          _os_log_impl(&dword_223A31000, v33, OS_LOG_TYPE_DEFAULT, "Deleting invalid SAT entry: %{public}@ : <%{public}@>", buf, 0x16u);
        }

        v35 = [v30 absoluteString];
        [v12 addObject:v35];

        if (!v42)
        {
          v45 = v43;
          [v41 removeItemAtURL:v30 error:&v45];
          v36 = v45;

          if (v36)
          {
            v37 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v56 = v30;
              v57 = 2114;
              v58 = v36;
              _os_log_impl(&dword_223A31000, v37, OS_LOG_TYPE_DEFAULT, "Error deleting entry: %{public}@:%{public}@", buf, 0x16u);
            }

            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error deleting entry: %@:%@", v30, v36];
            v43 = v36;
            goto LABEL_22;
          }

          v43 = 0;
        }

LABEL_23:
      }

      v25 = [v10 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (!v25)
      {
        goto LABEL_38;
      }
    }
  }

  v43 = 0;
LABEL_38:

  v8 = v39;
  v5 = v40;
  v9 = v43;
LABEL_39:

  return v12;
}

+ (id)cleanupOrphanedMetafilesForLanguage:(id)a3 payloadUtteranceLifeTimeInDays:(int64_t)a4 dryRun:(BOOL)a5
{
  v5 = a5;
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v8;
    _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "Processing lang_dir: %{public}@", buf, 0xCu);
  }

  v25 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:1 forLanguageCode:v8];
  v11 = [MEMORY[0x277CBEBC0] URLWithString:?];
  v12 = [a1 cleanupOrphanedMetafilesAtURL:v11 dryRun:v5];

  if (v12)
  {
    [v9 addObjectsFromArray:v12];
  }

  v24 = v12;
  v23 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:3 forLanguageCode:v8];
  v13 = [MEMORY[0x277CBEBC0] URLWithString:?];
  v14 = [a1 cleanupOrphanedMetafilesAtURL:v13 dryRun:v5];

  if (v14)
  {
    [v9 addObjectsFromArray:v14];
  }

  v15 = a4;
  v16 = [a1 cleanupPayloadUtterancesExceedingLifeTimeInDays:a4 forType:3 forLanguageCode:v8 dryRun:v5];
  if (v16)
  {
    [v9 addObjectsFromArray:v16];
  }

  v17 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:2 forLanguageCode:v8];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:v17];
  v19 = [a1 cleanupOrphanedMetafilesAtURL:v18 dryRun:v5];

  if (v19)
  {
    [v9 addObjectsFromArray:v19];
  }

  v20 = [a1 cleanupPayloadUtterancesExceedingLifeTimeInDays:v15 forType:2 forLanguageCode:v8 dryRun:v5];
  if (v20)
  {
    [v9 addObjectsFromArray:v20];
  }

  v21 = [v9 copy];

  return v21;
}

+ (id)cleanupInvalidSATEntriesAtSATRoot:(id)a3 payloadUtteranceLifeTimeInDays:(int64_t)a4 dryRun:(BOOL)a5
{
  v5 = a5;
  v48[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = *MEMORY[0x277CBE868];
  v48[0] = *MEMORY[0x277CBE8E8];
  v48[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v42 = 0;
  v32 = v8;
  v11 = [v8 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v10 options:0 error:&v42];
  v12 = v42;

  if (v12)
  {
    v13 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v45 = v7;
      v46 = 2114;
      v47 = v12;
      _os_log_impl(&dword_223A31000, v13, OS_LOG_TYPE_DEFAULT, "Error reading contents of SAT root: %{public}@: err: %{public}@", buf, 0x16u);
    }

    v14 = 0;
    goto LABEL_32;
  }

  v33 = a4;
  v31 = v7;
  v14 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = v11;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v34 = v5;
    v12 = 0;
    v18 = *v39;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v38 + 1) + 8 * i);
        v36 = 0;
        v37 = 0;
        [v20 getResourceValue:&v37 forKey:v9 error:&v36];
        v21 = v37;
        v22 = v36;

        if (v22)
        {
          v23 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v45 = v20;
            v46 = 2114;
            v47 = v22;
            _os_log_impl(&dword_223A31000, v23, OS_LOG_TYPE_DEFAULT, "Error determining if file is dir-entry: url=%{public}@, err=%{public}@", buf, 0x16u);
          }

          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error determining if file is a dir: url: %@, err: %@", v20, v22];
          [v14 addObject:v24];

LABEL_17:
          v12 = 0;
LABEL_18:

          goto LABEL_10;
        }

        if ([v21 BOOLValue])
        {
          v25 = [v20 lastPathComponent];
          v22 = [VTInvalidSATEntriesCleaner cleanupOrphanedMetafilesForLanguage:v25 payloadUtteranceLifeTimeInDays:v33 dryRun:v34];

          if (v22)
          {
            [v14 addObjectsFromArray:v22];
          }

          goto LABEL_17;
        }

        v26 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v45 = v20;
          _os_log_impl(&dword_223A31000, v26, OS_LOG_TYPE_DEFAULT, "Deleting invalid SAT file-entry: %{public}@", buf, 0xCu);
        }

        v27 = [v20 absoluteString];
        [v14 addObject:v27];

        if (v34)
        {
          v12 = 0;
          goto LABEL_10;
        }

        v35 = 0;
        [v32 removeItemAtURL:v20 error:&v35];
        v12 = v35;
        if (v12)
        {
          v28 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v45 = v20;
            v46 = 2114;
            v47 = v12;
            _os_log_impl(&dword_223A31000, v28, OS_LOG_TYPE_DEFAULT, "Error deleting invalid SAT file-entry=%{public}@, err=%{public}@", buf, 0x16u);
          }

          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error deleting invalid SAT file-entry: url: %@, err: %@", v20, v12];
          [v14 addObject:v22];
          goto LABEL_18;
        }

LABEL_10:
      }

      v17 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (!v17)
      {
        goto LABEL_31;
      }
    }
  }

  v12 = 0;
LABEL_31:

  v11 = v30;
  v7 = v31;
LABEL_32:

  return v14;
}

@end