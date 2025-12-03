@interface VTSpeakerIdUtilities
+ (BOOL)deleteExistingSATModelForLanguageCode:(id)code;
+ (id)_getAssetHashFromConfigPath:(id)path;
+ (id)createSATDirectoriesForType:(unint64_t)type forLanguageCode:(id)code;
+ (id)getExplicitEnrollmentUtterancesForType:(unint64_t)type forLanguageCode:(id)code;
+ (id)getImplicitEnrollmentUtterancesPriorTo:(id)to forType:(unint64_t)type forLanguageCode:(id)code;
+ (id)getProfileVersionFilePathForLanguageCode:(id)code;
+ (id)getSATAudioDirectoryForType:(unint64_t)type forLanguageCode:(id)code;
+ (id)getSATDirectoryForLanguageCode:(id)code;
+ (id)getSATDirectoryForModelType:(unint64_t)type forLanguageCode:(id)code;
+ (id)getSATModelDirectoryForType:(unint64_t)type forLanguageCode:(id)code;
+ (id)getSortedEnrollmentUtterancesForType:(unint64_t)type forLanguageCode:(id)code;
+ (id)getSortedImplicitEnrollmentUtterancesForType:(unint64_t)type forLanguageCode:(id)code;
+ (id)getSpeakerModelPathForType:(unint64_t)type withLanguageCode:(id)code withConfigPath:(id)path createDirectory:(BOOL)directory;
+ (id)stringForVTSpIdType:(unint64_t)type;
+ (id)timeStampWithSaltGrain;
@end

@implementation VTSpeakerIdUtilities

+ (BOOL)deleteExistingSATModelForLanguageCode:(id)code
{
  v46 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v4 = [VTSpeakerIdUtilities getSATModelDirectoryForType:1 forLanguageCode:codeCopy];
  if ([v4 isEqualToString:@"/tmp"])
  {
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v4;
      v6 = "ERR: trying to remove %@ directory, bailing out";
LABEL_27:
      _os_log_error_impl(&dword_223A31000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
      v30 = 0;
      goto LABEL_25;
    }

LABEL_21:
    v30 = 0;
    goto LABEL_25;
  }

  if (!v4)
  {
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = codeCopy;
      v6 = "ERR: satTDModelDirector is nil for LanguageCode %@";
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v7 = 0x277CCA000uLL;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v4 isDirectory:0];

  if (v9)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v40 = 0;
    v11 = [defaultManager2 contentsOfDirectoryAtPath:v4 error:&v40];
    v12 = v40;

    if (!v12 && v11)
    {
      v32 = v11;
      v33 = codeCopy;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v37;
        p_cache = VTTriggerEventMonitorManager.cache;
        do
        {
          v18 = 0;
          v34 = v15;
          do
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if (*(*(&v36 + 1) + 8 * v18))
            {
              v19 = [v4 stringByAppendingPathComponent:?];
              defaultManager3 = [*(v7 + 2560) defaultManager];
              v35 = 0;
              [defaultManager3 removeItemAtPath:v19 error:&v35];
              v21 = v35;

              if (v21)
              {
                v22 = p_cache[145];
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = v22;
                  [v21 localizedDescription];
                  v24 = v16;
                  v25 = v13;
                  v26 = v4;
                  v27 = v7;
                  v29 = v28 = p_cache;
                  *buf = 138543618;
                  v42 = v19;
                  v43 = 2114;
                  v44 = v29;
                  _os_log_impl(&dword_223A31000, v23, OS_LOG_TYPE_DEFAULT, "Couldn't delete invalidated speaker model at path %{public}@ %{public}@", buf, 0x16u);

                  p_cache = v28;
                  v7 = v27;
                  v4 = v26;
                  v13 = v25;
                  v16 = v24;
                  v15 = v34;
                }
              }
            }

            ++v18;
          }

          while (v15 != v18);
          v15 = [v13 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v15);
      }

      v11 = v32;
      codeCopy = v33;
      v12 = 0;
    }
  }

  v30 = 1;
LABEL_25:

  return v30;
}

+ (id)timeStampWithSaltGrain
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd"];
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:arc4random_uniform(7u) * -86400.0];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

+ (id)getSortedEnrollmentUtterancesForType:(unint64_t)type forLanguageCode:(id)code
{
  codeCopy = code;
  v6 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:type forLanguageCode:codeCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager contentsOfDirectoryAtPath:v6 error:0];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__609;
  v24 = __Block_byref_object_dispose__610;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count") + 1}];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __77__VTSpeakerIdUtilities_getSortedEnrollmentUtterancesForType_forLanguageCode___block_invoke;
  v17 = &unk_2784EC488;
  v9 = v6;
  v18 = v9;
  v19 = &v20;
  [v8 enumerateObjectsUsingBlock:&v14];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.wav'", v14, v15, v16, v17];
  v11 = [v21[5] filteredArrayUsingPredicate:v10];
  v12 = [v11 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  _Block_object_dispose(&v20, 8);

  return v12;
}

void __77__VTSpeakerIdUtilities_getSortedEnrollmentUtterancesForType_forLanguageCode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

+ (id)getImplicitEnrollmentUtterancesPriorTo:(id)to forType:(unint64_t)type forLanguageCode:(id)code
{
  toCopy = to;
  codeCopy = code;
  if (toCopy)
  {
    v9 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:type forLanguageCode:codeCopy];
    if (v9)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v30 = 0;
      v11 = [defaultManager contentsOfDirectoryAtPath:v9 error:&v30];
      v12 = v30;

      *buf = 0;
      v25 = buf;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__609;
      v28 = __Block_byref_object_dispose__610;
      v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count") + 1}];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __87__VTSpeakerIdUtilities_getImplicitEnrollmentUtterancesPriorTo_forType_forLanguageCode___block_invoke;
      v21[3] = &unk_2784EC488;
      v22 = v9;
      v23 = buf;
      [v11 enumerateObjectsUsingBlock:v21];
      v13 = MEMORY[0x277CCAC30];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __87__VTSpeakerIdUtilities_getImplicitEnrollmentUtterancesPriorTo_forType_forLanguageCode___block_invoke_2;
      v19[3] = &unk_2784EC4F0;
      v20 = toCopy;
      v14 = [v13 predicateWithBlock:v19];
      v15 = [*(v25 + 5) filteredArrayUsingPredicate:v14];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v17 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_223A31000, v17, OS_LOG_TYPE_ERROR, "ERR: satAudioDirectory is nil - Bailing out", buf, 2u);
      }

      v12 = 0;
      v15 = 0;
    }
  }

  else
  {
    v16 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "ERR: date is nil - Bailing out", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

void __87__VTSpeakerIdUtilities_getImplicitEnrollmentUtterancesPriorTo_forType_forLanguageCode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

uint64_t __87__VTSpeakerIdUtilities_getImplicitEnrollmentUtterancesPriorTo_forType_forLanguageCode___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 pathExtension];
  v5 = [v4 isEqualToString:@"wav"];

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [v3 stringByDeletingPathExtension];
  v7 = [v6 stringByAppendingPathExtension:@"json"];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  v9 = [VTUtteranceMetadataManager recordedTimeStampOfFile:v8];

  v10 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  if (![VTUtteranceMetadataManager isUtteranceImplicitlyTrained:v10]|| !v9)
  {

    goto LABEL_9;
  }

  [v9 timeIntervalSinceDate:*(a1 + 32)];
  v12 = v11;

  if (v12 >= 0.0)
  {
LABEL_9:

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v13 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_223A31000, v13, OS_LOG_TYPE_DEFAULT, "Filtered %@ with enrolled date %@", &v16, 0x16u);
  }

  v14 = 1;
LABEL_11:

  return v14;
}

+ (id)getSortedImplicitEnrollmentUtterancesForType:(unint64_t)type forLanguageCode:(id)code
{
  codeCopy = code;
  v6 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:type forLanguageCode:codeCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  v8 = [defaultManager contentsOfDirectoryAtPath:v6 error:&v25];
  v9 = v25;

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__609;
  v23 = __Block_byref_object_dispose__610;
  v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count") + 1}];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count") + 1}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__VTSpeakerIdUtilities_getSortedImplicitEnrollmentUtterancesForType_forLanguageCode___block_invoke;
  v16[3] = &unk_2784EC488;
  v11 = v6;
  v17 = v11;
  v18 = &v19;
  [v8 enumerateObjectsUsingBlock:v16];
  v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_45];
  v13 = [v20[5] filteredArrayUsingPredicate:v12];

  v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_48];

  _Block_object_dispose(&v19, 8);

  return v14;
}

void __85__VTSpeakerIdUtilities_getSortedImplicitEnrollmentUtterancesForType_forLanguageCode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

uint64_t __85__VTSpeakerIdUtilities_getSortedImplicitEnrollmentUtterancesForType_forLanguageCode___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  v7 = [VTUtteranceMetadataManager recordedTimeStampOfFile:v6];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v9 = [VTUtteranceMetadataManager recordedTimeStampOfFile:v8];

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v13 = [v7 compare:v9];
LABEL_13:
    v12 = v13;
    goto LABEL_15;
  }

  if (v7)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = 1;
    goto LABEL_15;
  }

  if (v7 || !v9)
  {
    v13 = [v4 compare:v5 options:1];
    goto LABEL_13;
  }

  v12 = -1;
LABEL_15:

  return v12;
}

BOOL __85__VTSpeakerIdUtilities_getSortedImplicitEnrollmentUtterancesForType_forLanguageCode___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 pathExtension];
  v4 = [v3 isEqualToString:@"wav"];

  v8 = 0;
  if (v4)
  {
    v5 = [v2 stringByDeletingPathExtension];
    v6 = [v5 stringByAppendingPathExtension:@"json"];

    v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    LOBYTE(v5) = [VTUtteranceMetadataManager isUtteranceImplicitlyTrained:v7];

    if (v5)
    {
      v8 = 1;
    }
  }

  return v8;
}

+ (id)getExplicitEnrollmentUtterancesForType:(unint64_t)type forLanguageCode:(id)code
{
  codeCopy = code;
  v6 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:type forLanguageCode:codeCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  v8 = [defaultManager contentsOfDirectoryAtPath:v6 error:&v23];
  v9 = v23;

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__609;
  v21 = __Block_byref_object_dispose__610;
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count") + 1}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__VTSpeakerIdUtilities_getExplicitEnrollmentUtterancesForType_forLanguageCode___block_invoke;
  v14[3] = &unk_2784EC488;
  v10 = v6;
  v15 = v10;
  v16 = &v17;
  [v8 enumerateObjectsUsingBlock:v14];
  v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_623];
  v12 = [v18[5] filteredArrayUsingPredicate:v11];

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __79__VTSpeakerIdUtilities_getExplicitEnrollmentUtterancesForType_forLanguageCode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

BOOL __79__VTSpeakerIdUtilities_getExplicitEnrollmentUtterancesForType_forLanguageCode___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 pathExtension];
  v4 = [v3 isEqualToString:@"wav"];

  v8 = 0;
  if (v4)
  {
    v5 = [v2 stringByDeletingPathExtension];
    v6 = [v5 stringByAppendingPathExtension:@"json"];

    v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    LODWORD(v5) = [VTUtteranceMetadataManager isUtteranceImplicitlyTrained:v7];

    if (!v5)
    {
      v8 = 1;
    }
  }

  return v8;
}

+ (id)_getAssetHashFromConfigPath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy rangeOfString:@"com_apple_MobileAsset_VoiceTriggerAssets/"];
  v6 = v5;
  v7 = [pathCopy rangeOfString:@".asset"];
  v9 = @"nohash";
  if (v6 && v8)
  {
    v9 = [pathCopy substringWithRange:{v4 + v6, v7 - (v4 + v6)}];
  }

  return v9;
}

+ (id)getProfileVersionFilePathForLanguageCode:(id)code
{
  v3 = [VTSpeakerIdUtilities getSATDirectoryForLanguageCode:code];
  v4 = [v3 stringByAppendingPathComponent:@"enrollment_version.json"];

  return v4;
}

+ (id)getSpeakerModelPathForType:(unint64_t)type withLanguageCode:(id)code withConfigPath:(id)path createDirectory:(BOOL)directory
{
  directoryCopy = directory;
  codeCopy = code;
  pathCopy = path;
  if (directoryCopy)
  {
    v11 = [VTSpeakerIdUtilities createSATDirectoriesForType:type forLanguageCode:codeCopy];
  }

  v12 = [VTSpeakerIdUtilities _getAssetHashFromConfigPath:pathCopy];
  v13 = [VTSpeakerIdUtilities getSATModelDirectoryForType:type forLanguageCode:codeCopy];
  v14 = [v13 stringByAppendingPathComponent:v12];

  return v14;
}

+ (id)createSATDirectoriesForType:(unint64_t)type forLanguageCode:(id)code
{
  v31 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v6 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:type forLanguageCode:codeCopy];
  v7 = [VTSpeakerIdUtilities getSATModelDirectoryForType:type forLanguageCode:codeCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v6 isDirectory:0];

  v10 = 0;
  if ((v9 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v12 = [defaultManager2 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v26];
    v10 = v26;

    v13 = VTLogContextFacilityVoiceTrigger;
    if (v12)
    {
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v6;
        _os_log_impl(&dword_223A31000, v13, OS_LOG_TYPE_DEFAULT, "Creating SAT audio directory at path %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v21 = v13;
      localizedDescription = [v10 localizedDescription];
      *buf = 138543618;
      v28 = v6;
      v29 = 2114;
      v30 = localizedDescription;
      _os_log_error_impl(&dword_223A31000, v21, OS_LOG_TYPE_ERROR, "Couldn't create SAT audio directory at path %{public}@ %{public}@", buf, 0x16u);
    }
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [defaultManager3 fileExistsAtPath:v7 isDirectory:0];

  if (v15)
  {
    v16 = v10;
  }

  else
  {
    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = v10;
    v18 = [defaultManager4 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v25];
    v16 = v25;

    v19 = VTLogContextFacilityVoiceTrigger;
    if (v18)
    {
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v7;
        _os_log_impl(&dword_223A31000, v19, OS_LOG_TYPE_DEFAULT, "Creating SAT model directory at path %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v23 = v19;
      localizedDescription2 = [v16 localizedDescription];
      *buf = 138543618;
      v28 = v7;
      v29 = 2114;
      v30 = localizedDescription2;
      _os_log_error_impl(&dword_223A31000, v23, OS_LOG_TYPE_ERROR, "Couldn't create SAT model directory at path %{public}@ %{public}@", buf, 0x16u);
    }
  }

  return v16;
}

+ (id)getSATAudioDirectoryForType:(unint64_t)type forLanguageCode:(id)code
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [VTSpeakerIdUtilities getSATDirectoryForModelType:type forLanguageCode:code];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 stringByAppendingPathComponent:@"audio"];
  }

  else
  {
    v8 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "ERR: Invalid ModelType path for SpIdType %ld - Bailing out", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)getSATModelDirectoryForType:(unint64_t)type forLanguageCode:(id)code
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [VTSpeakerIdUtilities getSATDirectoryForModelType:type forLanguageCode:code];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 stringByAppendingPathComponent:@"model"];
  }

  else
  {
    v8 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "ERR: Invalid ModelType path for SpIdType %ld - Bailing out", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)getSATDirectoryForModelType:(unint64_t)type forLanguageCode:(id)code
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [VTSpeakerIdUtilities getSATDirectoryForLanguageCode:code];
  v6 = [VTSpeakerIdUtilities stringForVTSpIdType:type];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 stringByAppendingPathComponent:v6];
      goto LABEL_10;
    }

    v13 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      typeCopy = type;
      v10 = "ERR: Invalid SpIdType %ld - Bailing out";
      v11 = v13;
      v12 = 12;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v10 = "ERR: SAT Base Directory path is nil - Bailing out";
      v11 = v9;
      v12 = 2;
LABEL_8:
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

+ (id)stringForVTSpIdType:(unint64_t)type
{
  v8 = *MEMORY[0x277D85DE8];
  if (type - 1 < 3)
  {
    return off_2784EC510[type - 1];
  }

  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "ERR: Unknown VTSpIdType:%lu", &v6, 0xCu);
  }

  return 0;
}

+ (id)getSATDirectoryForLanguageCode:(id)code
{
  codeCopy = code;
  v4 = CPSharedResourcesDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"Library/VoiceTrigger/SAT"];
  v6 = v5;
  if (codeCopy)
  {
    v7 = codeCopy;
  }

  else
  {
    v7 = @"xx_XX";
  }

  v8 = [v5 stringByAppendingPathComponent:v7];

  return v8;
}

@end