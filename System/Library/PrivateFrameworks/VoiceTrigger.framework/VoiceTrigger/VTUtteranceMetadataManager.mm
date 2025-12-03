@interface VTUtteranceMetadataManager
+ (BOOL)_audioDirectoryNeedsUpgrade:(id)upgrade;
+ (BOOL)isUtteranceImplicitlyTrained:(id)trained;
+ (id)_getBaseMetaDictionaryForUtterancePath:(id)path;
+ (id)recordedTimeStampOfFile:(id)file;
+ (void)_saveMetaVersionFileAtPath:(id)path;
+ (void)_upgradeLocaleDirectoryIfNecessary:(id)necessary;
+ (void)_upgradeUtteranceMeta:(id)meta;
+ (void)_writeMetaDict:(id)dict forUtterancePath:(id)path;
+ (void)saveMetaVersionFileAtSATAudioDirectory:(id)directory;
+ (void)saveUtteranceMetadataForUtterance:(id)utterance isExplicitEnrollment:(BOOL)enrollment isHandheldEnrollment:(BOOL)handheldEnrollment withBiometricResult:(unint64_t)result;
+ (void)upgradeMetaFilesIfNecessaaryAtSATRoot:(id)root;
@end

@implementation VTUtteranceMetadataManager

+ (id)recordedTimeStampOfFile:(id)file
{
  v24 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  path = [fileCopy path];
  stringByDeletingPathExtension = [path stringByDeletingPathExtension];
  v6 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"json"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(stringByDeletingPathExtension) = [defaultManager fileExistsAtPath:v6];

  if (stringByDeletingPathExtension)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
    if (v8)
    {
      v19 = 0;
      v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v19];
      v10 = v19;
      if (v10)
      {
        v11 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v21 = fileCopy;
          v22 = 2114;
          v23 = v10;
          _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "Json-Err reading metaVersionFile: %{public}@: err: %{public}@", buf, 0x16u);
        }

        v12 = 0;
      }

      else
      {
        v15 = [v9 objectForKeyedSubscript:@"grainedDate"];
        if (v15)
        {
          v16 = objc_alloc_init(MEMORY[0x277CCA968]);
          v17 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
          [v16 setLocale:v17];

          [v16 setDateFormat:@"yyyyMMdd"];
          v12 = [v16 dateFromString:v15];
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v14 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v6;
        _os_log_impl(&dword_223A31000, v14, OS_LOG_TYPE_DEFAULT, "ERR: Unexpected. metaVersionFileData is empty while the file exists at: %{public}@", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&dword_223A31000, v13, OS_LOG_TYPE_DEFAULT, "ERR: %{public}@ is not present", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

+ (BOOL)isUtteranceImplicitlyTrained:(id)trained
{
  v23 = *MEMORY[0x277D85DE8];
  trainedCopy = trained;
  v4 = trainedCopy;
  if (trainedCopy)
  {
    v5 = MEMORY[0x277CBEA90];
    path = [(__CFString *)trainedCopy path];
    v7 = [v5 dataWithContentsOfFile:path];

    if (v7)
    {
      v18 = 0;
      v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v18];
      v9 = v18;
      if (v9)
      {
        v10 = VTLogContextFacilityVoiceTrigger;
        v11 = 0;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v20 = v4;
          v21 = 2114;
          v22 = v9;
          _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "ERR: read metafile %{public}@ failed with %{public}@ - defaulting to NO", buf, 0x16u);
          v11 = 0;
        }
      }

      else
      {
        v14 = [v8 objectForKeyedSubscript:@"trainingType"];
        v15 = v14;
        if (v14)
        {
          v11 = [v14 isEqualToString:@"implicit"];
        }

        else
        {
          v16 = VTLogContextFacilityVoiceTrigger;
          v11 = 0;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v20 = @"trainingType";
            v21 = 2114;
            v22 = v4;
            _os_log_impl(&dword_223A31000, v16, OS_LOG_TYPE_DEFAULT, "ERR: missing %{public}@ key in %{public}@ - defaulting to NO", buf, 0x16u);
            v11 = 0;
          }
        }
      }
    }

    else
    {
      v13 = VTLogContextFacilityVoiceTrigger;
      v11 = 0;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v4;
        _os_log_impl(&dword_223A31000, v13, OS_LOG_TYPE_DEFAULT, "ERR: metaData is nil, defaulting to NO for %{public}@", buf, 0xCu);
        v11 = 0;
      }
    }
  }

  else
  {
    v12 = VTLogContextFacilityVoiceTrigger;
    v11 = 0;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "ERR: uttMetaURL is nil, defaulting to NO", buf, 2u);
      v11 = 0;
    }
  }

  return v11;
}

+ (void)_upgradeUtteranceMeta:(id)meta
{
  v28 = *MEMORY[0x277D85DE8];
  metaCopy = meta;
  if (metaCopy)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:metaCopy];
    if (v5)
    {
      v25 = 0;
      v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v25];
      v7 = v25;
      if (v7)
      {
        v8 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v27 = v7;
          _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "error reading meta-file: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        path = [metaCopy path];
        v13 = [path stringByReplacingOccurrencesOfString:@".json" withString:@".wav"];

        v24 = v13;
        [dictionary setObject:v13 forKeyedSubscript:@"utteranceWav"];
        v14 = [v6 objectForKeyedSubscript:@"productType"];
        if (!v14)
        {
          v14 = +[VTUtilities deviceProductType];
        }

        v23 = v14;
        [dictionary setObject:v14 forKeyedSubscript:@"productType"];
        v15 = [v6 objectForKeyedSubscript:@"productVersion"];
        if (!v15)
        {
          v15 = +[VTUtilities deviceProductVersion];
        }

        [dictionary setObject:v15 forKeyedSubscript:@"productVersion"];
        v16 = [v6 objectForKeyedSubscript:@"trainingType"];
        v17 = v16;
        if (v16)
        {
          if ([v16 isEqualToString:@"explicit"])
          {
            v18 = @"explicit";
          }

          else
          {
            v18 = @"implicit";
          }

          [dictionary setObject:v18 forKeyedSubscript:@"trainingType"];
        }

        v19 = [v6 objectForKeyedSubscript:@"handheld"];
        v20 = v19;
        if (v19)
        {
          if ([v19 isEqualToString:@"near-field"])
          {
            v21 = @"near-field";
          }

          else
          {
            v21 = @"far-field";
          }

          [dictionary setObject:v21 forKeyedSubscript:@"handheld"];
        }

        path2 = [metaCopy path];
        [self _writeMetaDict:dictionary forUtterancePath:path2];
      }
    }

    else
    {
      v10 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = metaCopy;
        _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "ERR: Unexpected. metaData is nil while the uttMetaPath exists at: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "ERR: uttMetaURL is nil", buf, 2u);
    }
  }
}

+ (BOOL)_audioDirectoryNeedsUpgrade:(id)upgrade
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [upgrade URLByAppendingPathComponent:@"meta_version.json"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v3 path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3];
    if (v7)
    {
      v15 = 0;
      v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v15];
      v9 = v15;
      if (v9)
      {
        v10 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v17 = v3;
          v18 = 2114;
          v19 = v9;
          _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "Json-Err reading metaVersionFile: %{public}@: err: %{public}@", buf, 0x16u);
        }

        v11 = 1;
      }

      else
      {
        v13 = [v8 objectForKeyedSubscript:@"meta_version"];
        v11 = [v13 unsignedIntegerValue] < 4;
      }
    }

    else
    {
      v12 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v3;
        _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "ERR: Unexpected. metaVersionFileData is empty while the file exists at: %{public}@", buf, 0xCu);
      }

      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (void)_upgradeLocaleDirectoryIfNecessary:(id)necessary
{
  v45[1] = *MEMORY[0x277D85DE8];
  v3 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:1 forLanguageCode:necessary];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  if ([VTUtteranceMetadataManager _audioDirectoryNeedsUpgrade:v4])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v45[0] = *MEMORY[0x277CBE8E8];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    v39 = 0;
    v34 = defaultManager;
    v7 = [defaultManager contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v6 options:0 error:&v39];
    v8 = v39;

    if (v8)
    {
      v9 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v42 = v4;
        v43 = 2114;
        v44 = v8;
        _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "Error reading contents of audioDir: %{public}@, err: %{public}@", buf, 0x16u);
      }

      goto LABEL_24;
    }

    v30 = 0;
    v31 = v4;
    v32 = v3;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v29 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (!v11)
    {
LABEL_23:

      v4 = v31;
      v28 = [v31 URLByAppendingPathComponent:@"meta_version.json"];
      [VTUtteranceMetadataManager _saveMetaVersionFileAtPath:v28];

      v3 = v32;
      v7 = v29;
      v8 = v30;
LABEL_24:

      goto LABEL_25;
    }

    v12 = v11;
    v13 = @"meta_version.json";
    v14 = *v36;
LABEL_8:
    v15 = 0;
    while (1)
    {
      if (*v36 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v35 + 1) + 8 * v15);
      absoluteString = [v17 absoluteString];
      lastPathComponent = [absoluteString lastPathComponent];

      if ([lastPathComponent isEqualToString:@"enrollment_completed"] & 1) != 0 || (objc_msgSend(lastPathComponent, "isEqualToString:", v13))
      {
        goto LABEL_11;
      }

      v20 = v13;
      path = [v17 path];
      pathExtension = [path pathExtension];
      v23 = [pathExtension isEqualToString:@"wav"];

      if (v23)
      {
        v24 = [path stringByReplacingOccurrencesOfString:@".wav" withString:@".json"];
        if (([v34 fileExistsAtPath:v24] & 1) == 0)
        {
          v27 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v42 = path;
            _os_log_impl(&dword_223A31000, v27, OS_LOG_TYPE_DEFAULT, "Missing meta-file: Creating new Meta file for audio file: %{public}@", buf, 0xCu);
          }

          v16 = [self _getBaseMetaDictionaryForUtterancePath:path];
          [self _writeMetaDict:v16 forUtterancePath:path];

          goto LABEL_10;
        }
      }

      pathExtension2 = [v17 pathExtension];
      v26 = [pathExtension2 isEqualToString:@"json"];

      if (v26)
      {
        [VTUtteranceMetadataManager _upgradeUtteranceMeta:v17];
      }

LABEL_10:

      v13 = v20;
LABEL_11:

      if (v12 == ++v15)
      {
        v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (!v12)
        {
          goto LABEL_23;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_25:
}

+ (void)_saveMetaVersionFileAtPath:(id)path
{
  v12[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v11 = @"meta_version";
  v12[0] = &unk_283715440;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:&v8];
  v6 = v8;
  if (v6)
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "ERROR creating meta-version json-data from dict: ERR: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    [v5 writeToURL:pathCopy atomically:0];
  }
}

+ (void)upgradeMetaFilesIfNecessaaryAtSATRoot:(id)root
{
  v33[2] = *MEMORY[0x277D85DE8];
  rootCopy = root;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = *MEMORY[0x277CBE868];
  v33[0] = *MEMORY[0x277CBE8E8];
  v33[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v27 = 0;
  v7 = [defaultManager contentsOfDirectoryAtURL:rootCopy includingPropertiesForKeys:v6 options:0 error:&v27];
  v8 = v27;

  if (!v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v7;
    v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = v10;
    v19 = defaultManager;
    v20 = rootCopy;
    v12 = *v24;
LABEL_7:
    v13 = 0;
    while (1)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v23 + 1) + 8 * v13);
      v21 = 0;
      v22 = 0;
      [v14 getResourceValue:&v22 forKey:v5 error:&v21];
      v15 = v22;
      v16 = v21;
      if (v16)
      {
        lastPathComponent = v16;
        v18 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v30 = v14;
          v31 = 2114;
          v32 = lastPathComponent;
          _os_log_impl(&dword_223A31000, v18, OS_LOG_TYPE_DEFAULT, "Error determining if file is dir-entry: url=%{public}@, err=%{public}@", buf, 0x16u);
        }
      }

      else
      {
        if (![v15 BOOLValue])
        {
          goto LABEL_9;
        }

        lastPathComponent = [v14 lastPathComponent];
        [VTUtteranceMetadataManager _upgradeLocaleDirectoryIfNecessary:lastPathComponent];
      }

LABEL_9:
      if (v11 == ++v13)
      {
        v11 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (!v11)
        {
          defaultManager = v19;
          rootCopy = v20;
          goto LABEL_18;
        }

        goto LABEL_7;
      }
    }
  }

  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = rootCopy;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "Error reading contents of SAT root: %{public}@: err: %{public}@", buf, 0x16u);
  }

LABEL_18:
}

+ (void)saveMetaVersionFileAtSATAudioDirectory:(id)directory
{
  v3 = [directory URLByAppendingPathComponent:@"meta_version.json"];
  [VTUtteranceMetadataManager _saveMetaVersionFileAtPath:v3];
}

+ (void)_writeMetaDict:(id)dict forUtterancePath:(id)path
{
  v17 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  pathCopy = path;
  if (pathCopy)
  {
    if (dictCopy)
    {
      v14 = 0;
      v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictCopy options:1 error:&v14];
      v8 = v14;
      if (v8)
      {
        v9 = VTLogContextFacilityVoiceTrigger;
        if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
LABEL_13:

          goto LABEL_14;
        }

        v10 = v9;
        localizedDescription = [v8 localizedDescription];
        *buf = 138543362;
        v16 = localizedDescription;
        _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "::: Error creating json Metadata: %{public}@", buf, 0xCu);
      }

      else
      {
        v10 = [pathCopy stringByReplacingOccurrencesOfString:@".wav" withString:@".json"];
        [v7 writeToFile:v10 atomically:0];
      }

      goto LABEL_13;
    }

    v12 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "ERR: called with nil uttMeta";
      goto LABEL_10;
    }
  }

  else
  {
    v12 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "ERR: called with nil uttPath";
LABEL_10:
      _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    }
  }

LABEL_14:
}

+ (id)_getBaseMetaDictionaryForUtterancePath:(id)path
{
  v11[3] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (pathCopy)
  {
    v10[0] = @"productType";
    v4 = +[VTUtilities deviceProductType];
    v11[0] = v4;
    v10[1] = @"productVersion";
    v5 = +[VTUtilities deviceProductVersion];
    v10[2] = @"utteranceWav";
    v11[1] = v5;
    v11[2] = pathCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  }

  else
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "ERR: called with nil uttPath", v9, 2u);
    }

    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

+ (void)saveUtteranceMetadataForUtterance:(id)utterance isExplicitEnrollment:(BOOL)enrollment isHandheldEnrollment:(BOOL)handheldEnrollment withBiometricResult:(unint64_t)result
{
  handheldEnrollmentCopy = handheldEnrollment;
  enrollmentCopy = enrollment;
  utteranceCopy = utterance;
  if (utteranceCopy)
  {
    v11 = MEMORY[0x277CBEB38];
    v12 = [self _getBaseMetaDictionaryForUtterancePath:utteranceCopy];
    v13 = [v11 dictionaryWithDictionary:v12];

    if (enrollmentCopy)
    {
      v14 = @"explicit";
    }

    else
    {
      v14 = @"implicit";
    }

    [v13 setObject:v14 forKeyedSubscript:@"trainingType"];
    if (handheldEnrollmentCopy)
    {
      v15 = @"near-field";
    }

    else
    {
      v15 = @"far-field";
    }

    [v13 setObject:v15 forKeyedSubscript:@"handheld"];
    v16 = +[VTSpeakerIdUtilities timeStampWithSaltGrain];
    [v13 setObject:v16 forKeyedSubscript:@"grainedDate"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:result];
    [v13 setObject:v17 forKeyedSubscript:@"otherSourceProfileMatch"];

    [self _writeMetaDict:v13 forUtterancePath:utteranceCopy];
  }

  else
  {
    v18 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_223A31000, v18, OS_LOG_TYPE_DEFAULT, "ERR: called with nil uttPath", v19, 2u);
    }
  }
}

@end