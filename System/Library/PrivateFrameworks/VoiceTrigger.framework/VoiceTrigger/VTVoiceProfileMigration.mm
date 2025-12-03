@interface VTVoiceProfileMigration
+ (BOOL)migrateVoiceProfileToVersion:(unint64_t)version forLanguageCode:(id)code;
+ (unint64_t)getCurrentVoiceProfileVersionForLanguageCode:(id)code;
+ (void)updateVoiceProfileVersionFileForLanguageCode:(id)code;
@end

@implementation VTVoiceProfileMigration

+ (void)updateVoiceProfileVersionFileForLanguageCode:(id)code
{
  v46 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v4 = [VTSpeakerIdUtilities getProfileVersionFilePathForLanguageCode:codeCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v39 = 0;
  v6 = +[VTUtilities deviceProductType];
  if (!v6 || (v7 = [VTUtilities deviceCategoryForDeviceProductType:v6]) == 0)
  {
    v8 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v43 = v6;
      v44 = 2114;
      v45 = codeCopy;
      _os_log_error_impl(&dword_223A31000, v8, OS_LOG_TYPE_ERROR, "ERR: Unknown device-category for device: %{public}@, languageCode: %{public}@", buf, 0x16u);
    }

    v7 = 0;
  }

  if ([defaultManager fileExistsAtPath:v4 isDirectory:&v39] && (v39 & 1) == 0)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4];
    v38 = 0;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v20 options:0 error:&v38];
    v27 = v38;
    v22 = v27;
    if (!v9 || v27)
    {
      v32 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v43 = v4;
        v44 = 2112;
        v45 = v22;
        _os_log_error_impl(&dword_223A31000, v32, OS_LOG_TYPE_ERROR, "Could not read existing %@ file: err: %@", buf, 0x16u);
      }

      goto LABEL_20;
    }

    v19 = [v9 mutableCopy];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
    [v19 setValue:v28 forKey:@"VoiceProfileCompatabiltyVersion"];

    v29 = +[VTUtilities deviceProductType];
    [v19 setValue:v29 forKey:@"VoiceProfileProductType"];

    v30 = +[VTUtilities deviceSoftwareVersion];
    [v19 setValue:v30 forKey:@"VoiceProfileSWVersion"];

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v7];
    [v19 setValue:v31 forKey:@"VoiceProfileCategoryType"];

    v18 = [v19 copy];
  }

  else
  {
    v40[0] = @"VoiceProfileCompatabiltyVersion";
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
    v41[0] = v34;
    v40[1] = @"VoiceProfileProductType";
    v9 = +[VTUtilities deviceProductType];
    v41[1] = v9;
    v40[2] = @"VoiceProfileSWVersion";
    v10 = +[VTUtilities deviceSoftwareVersion];
    v41[2] = v10;
    v40[3] = @"VoiceProfileCategoryType";
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v7];
    v41[3] = v11;
    v40[4] = @"VoiceProfileIdentifier";
    [MEMORY[0x277CCAD78] UUID];
    v12 = v4;
    v13 = v6;
    v14 = defaultManager;
    v16 = v15 = codeCopy;
    uUIDString = [v16 UUIDString];
    v41[4] = uUIDString;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:5];

    codeCopy = v15;
    defaultManager = v14;
    v6 = v13;
    v4 = v12;
    v19 = v34;
  }

  v37 = 0;
  v20 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v18 options:1 error:&v37];
  v21 = v37;
  v22 = v21;
  if (!v20 || v21)
  {
    v25 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = v18;
      v44 = 2112;
      v45 = v22;
      v26 = "ERR: error creating updatedVoiceProfileJsonData from: %@, err: %@";
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if ([defaultManager fileExistsAtPath:v4 isDirectory:&v39] && (v39 & 1) == 0)
  {
    v36 = 0;
    v33 = [defaultManager removeItemAtPath:v4 error:&v36];
    v22 = v36;
    if ((v33 & 1) == 0)
    {
      v25 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v43 = v4;
        v44 = 2112;
        v45 = v22;
        v26 = "ERR: error removing voice profile version file at: %@, err: %@";
        goto LABEL_31;
      }

LABEL_19:
      v9 = v18;
LABEL_20:

      v18 = v9;
      goto LABEL_21;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v35 = v22;
  v24 = [v20 writeToFile:v4 options:0 error:&v35];
  v22 = v35;

  if (!v24 || v22)
  {
    v25 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = v4;
      v44 = 2112;
      v45 = v22;
      v26 = "ERR: Error writing voice profile version file at: %@, err:%@";
LABEL_31:
      _os_log_error_impl(&dword_223A31000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x16u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

LABEL_21:
}

+ (BOOL)migrateVoiceProfileToVersion:(unint64_t)version forLanguageCode:(id)code
{
  v93 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v6 = [VTVoiceProfileMigration getCurrentVoiceProfileVersionForLanguageCode:codeCopy];
  v7 = v6;
  v85 = 0;
  if (version != 1 || v6)
  {
    v58 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v87 = codeCopy;
      v88 = 2048;
      v89 = v7;
      v90 = 2048;
      versionCopy = version;
      _os_log_impl(&dword_223A31000, v58, OS_LOG_TYPE_DEFAULT, "Migrating Voice Profile for %{public}@ from %lu to %lu not supported", buf, 0x20u);
    }
  }

  else
  {
    v8 = [VTSpeakerIdUtilities getSATDirectoryForLanguageCode:codeCopy];
    v9 = 0x277CCA000uLL;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v84 = 0;
    v11 = [defaultManager contentsOfDirectoryAtPath:v8 error:&v84];
    v12 = v84;

    v69 = [VTSpeakerIdUtilities getSATDirectoryForModelType:1 forLanguageCode:codeCopy];
    if (v12 || !v11)
    {
      v59 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v87 = v8;
        v88 = 2114;
        v89 = v12;
        _os_log_impl(&dword_223A31000, v59, OS_LOG_TYPE_DEFAULT, "Coudn't fetch the list of files at path: %{public}@ %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v13 = [VTSpeakerIdUtilities createSATDirectoriesForType:1 forLanguageCode:codeCopy];
      v14 = [VTSpeakerIdUtilities createSATDirectoriesForType:3 forLanguageCode:codeCopy];
      v62 = codeCopy;
      v15 = [VTSpeakerIdUtilities createSATDirectoriesForType:2 forLanguageCode:codeCopy];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v61 = v11;
      obj = v11;
      v74 = [obj countByEnumeratingWithState:&v80 objects:v92 count:16];
      v12 = 0;
      if (v74)
      {
        v73 = *v81;
        v63 = v8;
        do
        {
          for (i = 0; i != v74; ++i)
          {
            if (*v81 != v73)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v80 + 1) + 8 * i);
            if (v17)
            {
              v18 = [v8 stringByAppendingPathComponent:*(*(&v80 + 1) + 8 * i)];
              v19 = [v69 stringByAppendingPathComponent:v17];
              if (![v17 isEqualToString:@"audio"])
              {
                goto LABEL_36;
              }

              v66 = v19;
              v20 = v12;
              v21 = [v18 stringByAppendingPathComponent:@"meta_version.json"];
              v72 = [v18 stringByAppendingPathComponent:@"enrollment_migrated"];
              v68 = v18;
              v67 = [v18 stringByAppendingPathComponent:@"enrollment_completed"];
              v22 = [v8 stringByAppendingPathComponent:@"meta_version.json"];
              v71 = [v8 stringByAppendingPathComponent:@"enrollment_migrated"];
              v23 = v21;
              v70 = [v8 stringByAppendingPathComponent:@"enrollment_completed"];
              defaultManager2 = [*(v9 + 2560) defaultManager];
              v25 = v9;
              v26 = [defaultManager2 fileExistsAtPath:v21 isDirectory:&v85];

              v65 = v22;
              if (v26)
              {
                defaultManager3 = [*(v25 + 2560) defaultManager];
                v79 = v20;
                v28 = [defaultManager3 moveItemAtPath:v21 toPath:v22 error:&v79];
                v29 = v79;

                if ((v28 & 1) == 0)
                {
                  v30 = VTLogContextFacilityVoiceTrigger;
                  v19 = v66;
                  v31 = v72;
                  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543874;
                    v87 = v23;
                    v88 = 2114;
                    v89 = v22;
                    v90 = 2114;
                    versionCopy = v29;
                    _os_log_impl(&dword_223A31000, v30, OS_LOG_TYPE_DEFAULT, "ERR: Failed to move %{public}@ to %{public}@ with error %{public}@", buf, 0x20u);
                  }

                  v18 = v68;
LABEL_23:
                  v9 = 0x277CCA000uLL;
                  defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
                  v33 = [defaultManager4 fileExistsAtPath:v31 isDirectory:&v85];

                  if (v33)
                  {
                    defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
                    v78 = v29;
                    v35 = [defaultManager5 moveItemAtPath:v31 toPath:v71 error:&v78];
                    v36 = v78;

                    if ((v35 & 1) == 0)
                    {
                      v37 = VTLogContextFacilityVoiceTrigger;
                      v38 = v67;
                      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543874;
                        v87 = v72;
                        v88 = 2114;
                        v89 = v71;
                        v90 = 2114;
                        versionCopy = v36;
                        _os_log_impl(&dword_223A31000, v37, OS_LOG_TYPE_DEFAULT, "ERR: Failed to move %{public}@ to %{public}@ with error %{public}@", buf, 0x20u);
                      }

LABEL_29:
                      defaultManager6 = [MEMORY[0x277CCAA00] defaultManager];
                      v40 = [defaultManager6 fileExistsAtPath:v38 isDirectory:&v85];

                      if (v40)
                      {
                        defaultManager7 = [MEMORY[0x277CCAA00] defaultManager];
                        v77 = v36;
                        v42 = [defaultManager7 moveItemAtPath:v38 toPath:v70 error:&v77];
                        v12 = v77;

                        if ((v42 & 1) == 0)
                        {
                          v43 = VTLogContextFacilityVoiceTrigger;
                          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138543874;
                            v87 = v38;
                            v88 = 2114;
                            v89 = v70;
                            v90 = 2114;
                            versionCopy = v12;
                            _os_log_impl(&dword_223A31000, v43, OS_LOG_TYPE_DEFAULT, "ERR: Failed to move %{public}@ to %{public}@ with error %{public}@", buf, 0x20u);
                          }
                        }

                        v9 = 0x277CCA000;
                      }

                      else
                      {
                        v12 = v36;
                      }

                      v8 = v63;
LABEL_36:
                      if (([v17 isEqualToString:{@"audio", v61}] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"model") & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"td-sr-model"))
                      {
                        defaultManager8 = [*(v9 + 2560) defaultManager];
                        v45 = [defaultManager8 fileExistsAtPath:v19 isDirectory:&v85];

                        if (v45)
                        {
                          defaultManager9 = [*(v9 + 2560) defaultManager];
                          v76 = v12;
                          v47 = [defaultManager9 removeItemAtPath:v19 error:&v76];
                          v48 = v76;

                          if ((v47 & 1) == 0)
                          {
                            v49 = VTLogContextFacilityVoiceTrigger;
                            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138543618;
                              v87 = v19;
                              v88 = 2114;
                              v89 = v48;
                              _os_log_impl(&dword_223A31000, v49, OS_LOG_TYPE_DEFAULT, "ERR: Failed to delete %{public}@ with error %{public}@", buf, 0x16u);
                            }
                          }
                        }

                        else
                        {
                          v48 = v12;
                        }

                        defaultManager10 = [*(v9 + 2560) defaultManager];
                        v75 = v48;
                        v51 = [defaultManager10 moveItemAtPath:v18 toPath:v19 error:&v75];
                        v12 = v75;

                        v52 = VTLogContextFacilityVoiceTrigger;
                        v53 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
                        if (v51)
                        {
                          if (v53)
                          {
                            *buf = 138543618;
                            v87 = v18;
                            v88 = 2114;
                            v89 = v19;
                            v54 = v52;
                            v55 = "Successfully moved %{public}@ to %{public}@";
                            v56 = 22;
                            goto LABEL_9;
                          }

LABEL_10:

                          continue;
                        }

                        if (!v53)
                        {
                          goto LABEL_10;
                        }

                        *buf = 138543874;
                        v87 = v18;
                        v88 = 2114;
                        v89 = v19;
                        v90 = 2114;
                        versionCopy = v12;
                        v54 = v52;
                        v55 = "ERR: Failed to move %{public}@ to %{public}@ with error %{public}@";
                        v56 = 32;
                      }

                      else
                      {
                        v57 = VTLogContextFacilityVoiceTrigger;
                        if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_10;
                        }

                        *buf = 138543362;
                        v87 = v18;
                        v54 = v57;
                        v55 = "Skipping moving of file %{public}@";
                        v56 = 12;
                      }

LABEL_9:
                      _os_log_impl(&dword_223A31000, v54, OS_LOG_TYPE_DEFAULT, v55, buf, v56);
                      goto LABEL_10;
                    }
                  }

                  else
                  {
                    v36 = v29;
                  }

                  v38 = v67;
                  goto LABEL_29;
                }
              }

              else
              {
                v29 = v20;
              }

              v19 = v66;
              v18 = v68;
              v31 = v72;
              goto LABEL_23;
            }
          }

          v74 = [obj countByEnumeratingWithState:&v80 objects:v92 count:16];
        }

        while (v74);
      }

      codeCopy = v62;
      [VTVoiceProfileMigration updateVoiceProfileVersionFileForLanguageCode:v62];
      v11 = v61;
    }
  }

  return 1;
}

+ (unint64_t)getCurrentVoiceProfileVersionForLanguageCode:(id)code
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  codeCopy = code;
  defaultManager = [v3 defaultManager];
  v6 = [VTSpeakerIdUtilities getProfileVersionFilePathForLanguageCode:codeCopy];

  v19 = 0;
  if (![defaultManager fileExistsAtPath:v6 isDirectory:&v19])
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ doesnt exist!!!", buf, 0xCu);
      v8 = 0;
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if (v19)
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v6;
      _os_log_error_impl(&dword_223A31000, v7, OS_LOG_TYPE_ERROR, "ERR:%{public}@ is a directory!!!", buf, 0xCu);
      v8 = 0;
      goto LABEL_16;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_16;
  }

  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
  v18 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&v18];
  v11 = v18;
  if (v8)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v13 = v11;
    v14 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v13;
      _os_log_error_impl(&dword_223A31000, v14, OS_LOG_TYPE_ERROR, "ERR: Could not read existing %@ file: err: %@", buf, 0x16u);
    }

    intValue = 0;
    goto LABEL_18;
  }

LABEL_16:
  v16 = [v8 objectForKeyedSubscript:@"VoiceProfileCompatabiltyVersion"];

  if (!v16)
  {
    intValue = 0;
    goto LABEL_20;
  }

  v10 = [v8 objectForKeyedSubscript:@"VoiceProfileCompatabiltyVersion"];
  intValue = [v10 intValue];
LABEL_18:

LABEL_20:
  return intValue;
}

@end