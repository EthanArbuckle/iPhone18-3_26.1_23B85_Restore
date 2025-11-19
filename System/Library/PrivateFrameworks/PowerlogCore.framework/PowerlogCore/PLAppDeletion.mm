@interface PLAppDeletion
+ (BOOL)changeClassProtection:(int)a3;
+ (BOOL)changePermissionForDirectory:(id)a3 withProtectionLevel:(id)a4;
+ (BOOL)changePermissionsForFilesInDirectory:(id)a3 withProtectionLevel:(id)a4;
+ (BOOL)deferXPCActivity:(id)a3;
+ (BOOL)finishXPCActivity:(id)a3;
+ (BOOL)setFileProtectionForPath:(id)a3 withLevel:(id)a4;
+ (id)appDeletionCriteria;
+ (id)constructUpdateQueries;
+ (id)filePermissionCriteria;
+ (id)getProtectionLevel:(int)a3;
+ (id)pluginsForBundleID:(id)a3;
+ (id)processNameForBundleID:(id)a3;
+ (void)addFilesToList:(id)a3;
+ (void)constructAppReferenceMapping;
+ (void)constructAppReferenceTableList;
+ (void)constructFileNames;
+ (void)constructUpdateQueries;
+ (void)deleteAppReferenceMapping;
+ (void)deleteAppReferences:(id)a3;
+ (void)deleteAppReferencesFromCompressedFiles:(id)a3;
+ (void)deleteAppReferencesInCurrentPowerlog;
+ (void)filePermissionCriteria;
+ (void)handleAppDeletionXPCActivityCallback:(id)a3;
+ (void)handleFilePermissionXPCActivityCallback:(id)a3;
+ (void)iterateAgents;
+ (void)iterateMetrics;
+ (void)iterateServices;
+ (void)maskAssociatedPlugins:(id)a3 withMaskedDictionary:(id)a4;
+ (void)maskProcessName:(id)a3 withMaskedDictionary:(id)a4;
+ (void)populateIdentifiers:(id)a3;
+ (void)registerAppDeletionActivity;
+ (void)registerFilePermissionActivity;
+ (void)resetStateVariables;
+ (void)setup;
+ (void)traverseVersionDirectory:(id)a3 withBlock:(id)a4;
+ (void)updateQuery:(id)a3;
@end

@implementation PLAppDeletion

+ (id)getProtectionLevel:(int)a3
{
  if (!a3)
  {
    v4 = MEMORY[0x1E696A380];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (a3 == 1)
  {
    v4 = MEMORY[0x1E696A388];
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

+ (void)traverseVersionDirectory:(id)a3 withBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 contentsOfDirectoryAtPath:v5 error:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PLAppDeletion_traverseVersionDirectory_withBlock___block_invoke;
  v11[3] = &unk_1E851A638;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v8 enumerateObjectsUsingBlock:v11];
}

void __52__PLAppDeletion_traverseVersionDirectory_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  (*(*(a1 + 40) + 16))();
}

+ (BOOL)setFileProtectionForPath:(id)a3 withLevel:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = *MEMORY[0x1E696A3A0];
  v22[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v14 = 0;
  v9 = [v7 setAttributes:v8 ofItemAtPath:v5 error:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = PLLogAppDeletion();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&dword_1D8611000, v11, OS_LOG_TYPE_ERROR, "Failed to set file protection %@ for file at path: %@ with error: %@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)changePermissionsForFilesInDirectory:(id)a3 withProtectionLevel:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  [v8 contentsOfDirectoryAtPath:v6 error:0];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v23;
    *&v11 = 138412546;
    v21 = v11;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [v6 stringByAppendingPathComponent:{*(*(&v22 + 1) + 8 * v14), v21, v22}];
        v16 = PLLogAppDeletion();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = v21;
          v27 = v15;
          v28 = 2112;
          v29 = v7;
          _os_log_debug_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEBUG, "Changing permission for file %@ to %@", buf, 0x16u);
        }

        if (([a1 setFileProtectionForPath:v15 withLevel:v7] & 1) == 0)
        {
          v18 = PLLogAppDeletion();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            +[PLAppDeletion changePermissionsForFilesInDirectory:withProtectionLevel:];
          }

          v17 = 0;
          goto LABEL_15;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_15:

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)changePermissionForDirectory:(id)a3 withProtectionLevel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__PLAppDeletion_changePermissionForDirectory_withProtectionLevel___block_invoke;
  v10[3] = &unk_1E851A660;
  v12 = &v14;
  v13 = a1;
  v8 = v7;
  v11 = v8;
  [a1 traverseVersionDirectory:v6 withBlock:v10];
  LOBYTE(a1) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return a1;
}

void __66__PLAppDeletion_changePermissionForDirectory_withProtectionLevel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 48) changePermissionsForFilesInDirectory:v3 withProtectionLevel:*(a1 + 32)];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4 = PLLogAppDeletion();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__PLAppDeletion_changePermissionForDirectory_withProtectionLevel___block_invoke_cold_1();
    }
  }
}

+ (BOOL)changeClassProtection:(int)a3
{
  v4 = [a1 getProtectionLevel:?];
  if (!v4)
  {
    v12 = PLLogAppDeletion();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[PLAppDeletion changeClassProtection:];
    }

    goto LABEL_13;
  }

  v5 = +[PLUtilities containerPath];
  v6 = [v5 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MajorVersion"];
  v7 = [a1 changePermissionForDirectory:v6 withProtectionLevel:v4];

  if ((v7 & 1) == 0)
  {
    v12 = PLLogAppDeletion();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[PLAppDeletion changeClassProtection:];
    }

    goto LABEL_13;
  }

  v8 = +[PLUtilities containerPath];
  v9 = [v8 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MinorVersion"];
  v10 = [a1 changePermissionForDirectory:v9 withProtectionLevel:v4];

  v11 = PLLogAppDeletion();
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[PLAppDeletion changeClassProtection:];
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[PLAppDeletion changeClassProtection:];
  }

  v13 = 1;
LABEL_14:

  return v13;
}

+ (id)filePermissionCriteria
{
  v2 = PLLogAppDeletion();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[PLAppDeletion filePermissionCriteria];
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9DA0], 1);
  xpc_dictionary_set_string(v3, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);

  return v3;
}

+ (void)registerFilePermissionActivity
{
  v3 = [a1 filePermissionCriteria];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __47__PLAppDeletion_registerFilePermissionActivity__block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = a1;
  xpc_activity_register("com.apple.powerlogd.XPCFilePermissionScheduler", v3, handler);
}

void __47__PLAppDeletion_registerFilePermissionActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    [*(a1 + 32) handleFilePermissionXPCActivityCallback:v3];
  }

  else
  {
    v4 = PLLogAppDeletion();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __47__PLAppDeletion_registerFilePermissionActivity__block_invoke_cold_1();
    }
  }
}

+ (void)handleFilePermissionXPCActivityCallback:(id)a3
{
  v4 = a3;
  v5 = [PLAppDeletion changeClassProtection:1];
  v6 = PLLogAppDeletion();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[PLAppDeletion handleFilePermissionXPCActivityCallback:];
    }

    [a1 finishXPCActivity:v4];
    [a1 registerAppDeletionActivity];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "Deferring activity as changing class protection to ClassC failed", v8, 2u);
    }

    if (([a1 deferXPCActivity:v4] & 1) == 0)
    {
      [a1 finishXPCActivity:v4];
    }
  }
}

+ (void)setup
{
  [a1 constructAppReferenceTableList];
  [a1 constructFileNames];
  [a1 constructAppReferenceMapping];
  v3 = [a1 constructUpdateQueries];
}

+ (void)resetStateVariables
{
  v14 = *MEMORY[0x1E69E9840];
  processedFilesCounter = 0;
  v2 = [listOfFileNames allKeys];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [listOfFileNames setObject:&unk_1F5406048 forKeyedSubscript:*(*(&v9 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"PLAppDeletionActivityComplete" object:0 userInfo:0];

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)pluginsForBundleID:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [[PLValueComparison alloc] initWithKey:@"PluginParentApp" withValue:v3 withComparisonOperation:0];

  v5 = +[PowerlogCore sharedCore];
  v6 = [v5 storage];
  v11[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v6 entriesForKey:@"PLApplicationAgent_EventNone_AllPlugins" withComparisons:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (void)maskAssociatedPlugins:(id)a3 withMaskedDictionary:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 pluginsForBundleID:a3];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"PluginId"];

        if (v13)
        {
          v14 = _MergedGlobals;
          v15 = [v12 objectForKeyedSubscript:@"PluginId"];
          [v14 setObject:v6 forKeyedSubscript:v15];
        }

        v16 = [v12 objectForKeyedSubscript:@"PluginExecutableName"];

        if (v16)
        {
          v17 = qword_1EDFFF260;
          v18 = [v12 objectForKeyedSubscript:@"PluginExecutableName"];
          [v17 setObject:v6 forKeyedSubscript:v18];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (id)processNameForBundleID:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [[PLValueComparison alloc] initWithKey:@"BundleID" withValue:v3 withComparisonOperation:0];

  v5 = +[PowerlogCore sharedCore];
  v6 = [v5 storage];
  v12[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v6 lastEntryForKey:@"PLProcessMonitorAgent_EventForward_ProcessID" withComparisons:v7 isSingleton:1];

  v9 = [v8 objectForKeyedSubscript:@"ProcessName"];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)maskProcessName:(id)a3 withMaskedDictionary:(id)a4
{
  v7 = a4;
  v6 = [a1 processNameForBundleID:a3];
  if (v6)
  {
    [qword_1EDFFF260 setObject:v7 forKeyedSubscript:v6];
  }
}

+ (void)constructAppReferenceMapping
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)populateIdentifiers:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    v24 = v34;
    v25 = v29;
    v7 = 0x1E8518000uLL;
    v8 = 0x1E8518000uLL;
    v26 = v3;
    do
    {
      v9 = 0;
      do
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [*(v7 + 2384) sharedSQLiteConnection];
        v13 = [v12 tableExistsForTableName:v10];

        if (v13)
        {
          v27 = v11;
          v14 = v5;
          v15 = v6;
          v16 = v8;
          v17 = objc_opt_new();
          v18 = objc_opt_new();
          v19 = objc_opt_new();
          if ([*(v16 + 2656) PPSEnabled:v10])
          {
            v20 = [*(v16 + 2656) hasAppIdentiferKeys:v10];
            v6 = v15;
            v5 = v14;
            v11 = v27;
            if (v20)
            {
              v21 = [PPSEntryKey allMetricsForEntryKey:v10];
              v33[0] = MEMORY[0x1E69E9820];
              v33[1] = 3221225472;
              v34[0] = __37__PLAppDeletion_populateIdentifiers___block_invoke;
              v34[1] = &unk_1E851A6A8;
              v35 = v17;
              v36 = v18;
              v37 = v19;
              [v21 enumerateKeysAndObjectsUsingBlock:v33];

              v22 = v35;
              goto LABEL_12;
            }
          }

          else
          {
            v21 = [PLEntryDefinition definitionForEntryKey:v10];
            if ([PLEntryDefinition hasAppIdentifierKeysForEntryDefinition:v21])
            {
              v22 = [PLEntryDefinition keyConfigsForEntryDefinition:v21];
              v28[0] = MEMORY[0x1E69E9820];
              v28[1] = 3221225472;
              v29[0] = __37__PLAppDeletion_populateIdentifiers___block_invoke_2;
              v29[1] = &unk_1E8519318;
              v30 = v17;
              v31 = v18;
              v32 = v19;
              [v22 enumerateKeysAndObjectsUsingBlock:v28];

              v6 = v15;
              v5 = v14;
              v11 = v27;
LABEL_12:

              v3 = v26;
            }

            else
            {
              v6 = v15;
              v5 = v14;
              v11 = v27;
            }

            v7 = 0x1E8518000;
          }

          if ([v17 count])
          {
            [tableNameToBundleIdentifier setObject:v17 forKeyedSubscript:v10];
          }

          if ([v18 count])
          {
            [tableNameToAppIdentifier setObject:v18 forKeyedSubscript:v10];
          }

          if ([v19 count])
          {
            [tableNameToProcessIdentifier setObject:v19 forKeyedSubscript:v10];
          }

          v8 = 0x1E8518000;
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v5 != v9);
      v5 = [v3 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v5);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __37__PLAppDeletion_populateIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 appIdentifier] - 1;
  if (v5 <= 2)
  {
    [*(a1 + 8 * v5 + 32) addObject:v6];
  }
}

void __37__PLAppDeletion_populateIdentifiers___block_invoke_2(id *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"BundleID"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    [a1[4] addObject:v12];
  }

  v8 = [v5 objectForKeyedSubscript:@"AppName"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    [a1[5] addObject:v12];
  }

  v10 = [v5 objectForKeyedSubscript:@"ProcessName"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    [a1[6] addObject:v12];
  }
}

+ (void)iterateAgents
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = +[PowerlogCore sharedCore];
  v4 = [v3 agents];
  v5 = [v4 allOperators];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) entryKeys];
        v11 = [v10 copy];

        [a1 populateIdentifiers:v11];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)iterateServices
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = +[PowerlogCore sharedCore];
  v4 = [v3 services];
  v5 = [v4 allOperators];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) entryKeys];
        v11 = [v10 copy];

        [a1 populateIdentifiers:v11];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)iterateMetrics
{
  v3 = +[PPSEntryKey allEntryKeys];
  [a1 populateIdentifiers:v3];
}

+ (void)constructAppReferenceTableList
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __47__PLAppDeletion_constructAppReferenceTableList__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = tableNameToBundleIdentifier;
  tableNameToBundleIdentifier = v2;

  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = tableNameToAppIdentifier;
  tableNameToAppIdentifier = v4;

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = tableNameToProcessIdentifier;
  tableNameToProcessIdentifier = v6;

  [*(a1 + 32) iterateAgents];
  [*(a1 + 32) iterateServices];
  [*(a1 + 32) iterateMetrics];
  v8 = tableNameToBundleIdentifier;

  return [v8 setObject:&unk_1F540B818 forKeyedSubscript:@"PLAccountingOperator_EventNone_Nodes"];
}

+ (id)constructUpdateQueries
{
  v2 = objc_opt_new();
  v3 = updateQueries;
  updateQueries = v2;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PLAppDeletion_constructUpdateQueries__block_invoke;
  v8[3] = &unk_1E851A6D0;
  v9 = @"PLApplicationAgent_EventNone_AllApps";
  v10 = @"AppDistributorID";
  [tableNameToBundleIdentifier enumerateKeysAndObjectsUsingBlock:v8];
  [tableNameToAppIdentifier enumerateKeysAndObjectsUsingBlock:&__block_literal_global_111];
  [tableNameToProcessIdentifier enumerateKeysAndObjectsUsingBlock:&__block_literal_global_113];
  v4 = PLLogAppDeletion();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[PLAppDeletion constructUpdateQueries];
  }

  v5 = updateQueries;
  v6 = updateQueries;

  return v5;
}

void __39__PLAppDeletion_constructUpdateQueries__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = a3;
  v44 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v44)
  {
    v43 = *v61;
    v6 = &sharedInstance_result;
    v51 = v5;
    v48 = a1;
    do
    {
      v7 = 0;
      do
      {
        if (*v61 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v7;
        v8 = *(*(&v60 + 1) + 8 * v7);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v47 = v6[77];
        v49 = [v47 countByEnumeratingWithState:&v56 objects:v67 count:16];
        if (v49)
        {
          v9 = *v57;
          v46 = *v57;
          do
          {
            for (i = 0; i != v49; i = i + 1)
            {
              if (*v57 != v9)
              {
                objc_enumerationMutation(v47);
              }

              v11 = *(*(&v56 + 1) + 8 * i);
              v12 = [v5 isEqualToString:*(a1 + 32)];
              v13 = MEMORY[0x1E696AD60];
              if (v12)
              {
                v14 = *(a1 + 32);
                v15 = *(a1 + 40);
                v16 = [v6[77] objectForKeyedSubscript:v11];
                v17 = [v16 objectForKeyedSubscript:@"MaskedName"];
                v18 = [v13 stringWithFormat:@"UPDATE '%@' SET %@ ='%@' WHERE %@ = '%@' AND AppDeletedDate != 0", v14, v15, v17, v8, v11];;

                [updateQueries addObject:v18];
                v19 = PLLogAppDeletion();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v66 = v18;
                  _os_log_debug_impl(&dword_1D8611000, v19, OS_LOG_TYPE_DEBUG, "AppDeletion : updateQueries for AppDistributorID is %@", buf, 0xCu);
                }

                v20 = MEMORY[0x1E696AD60];
                v21 = [v6[77] objectForKeyedSubscript:v11];
                v22 = [v21 objectForKeyedSubscript:@"MaskedName"];
                v5 = v51;
                v23 = [v20 stringWithFormat:@"UPDATE '%@' SET %@ ='%@' WHERE %@ = '%@' AND AppDeletedDate != 0", v51, v8, v22, v8, v11];;

                [updateQueries addObject:v23];
                v9 = v46;
              }

              else
              {
                v24 = [v6[77] objectForKeyedSubscript:v11];
                v25 = [v24 objectForKeyedSubscript:@"MaskedName"];
                v26 = [v6[77] objectForKeyedSubscript:v11];
                v27 = [v26 objectForKeyedSubscript:@"DeleteTimestamp"];
                [v27 doubleValue];
                v18 = [v13 stringWithFormat:@"UPDATE '%@' SET %@ ='%@' WHERE %@ = '%@' AND timestamp <= %f", v5, v8, v25, v8, v11, v28];;

                [updateQueries addObject:v18];
              }

              a1 = v48;
              v6 = &sharedInstance_result;
            }

            v49 = [v47 countByEnumeratingWithState:&v56 objects:v67 count:16];
          }

          while (v49);
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = _MergedGlobals;
        v29 = [v50 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v53;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v53 != v31)
              {
                objc_enumerationMutation(v50);
              }

              v33 = *(*(&v52 + 1) + 8 * j);
              v34 = MEMORY[0x1E696AD60];
              v35 = [_MergedGlobals objectForKeyedSubscript:v33];
              v36 = [v35 objectForKeyedSubscript:@"MaskedName"];
              v37 = [_MergedGlobals objectForKeyedSubscript:v33];
              v38 = [v37 objectForKeyedSubscript:@"DeleteTimestamp"];
              [v38 doubleValue];
              v40 = [v34 stringWithFormat:@"UPDATE '%@' SET %@ ='%@' WHERE %@ = '%@' AND timestamp <= %f", v51, v8, v36, v8, v33, v39];;

              [updateQueries addObject:v40];
            }

            v30 = [v50 countByEnumeratingWithState:&v52 objects:v64 count:16];
          }

          while (v30);
        }

        v7 = v45 + 1;
        v5 = v51;
        a1 = v48;
        v6 = &sharedInstance_result;
      }

      while (v45 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v44);
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __39__PLAppDeletion_constructUpdateQueries__block_invoke_109(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a3;
  v21 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v21)
  {
    v20 = *v30;
    do
    {
      v4 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        v5 = *(*(&v29 + 1) + 8 * v4);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v23 = qword_1EDFFF270;
        v6 = [v23 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v26;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v26 != v8)
              {
                objc_enumerationMutation(v23);
              }

              v10 = *(*(&v25 + 1) + 8 * i);
              v11 = MEMORY[0x1E696AD60];
              v12 = [qword_1EDFFF270 objectForKeyedSubscript:v10];
              v13 = [v12 objectForKeyedSubscript:@"MaskedName"];
              v14 = [qword_1EDFFF270 objectForKeyedSubscript:v10];
              v15 = [v14 objectForKeyedSubscript:@"DeleteTimestamp"];
              [v15 doubleValue];
              v17 = [v11 stringWithFormat:@"UPDATE '%@' SET %@ ='%@' WHERE %@ = '%@' AND timestamp <= %f", v24, v5, v13, v5, v10, v16];;

              [updateQueries addObject:v17];
            }

            v7 = [v23 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v7);
        }

        v4 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __39__PLAppDeletion_constructUpdateQueries__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a3;
  v21 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v21)
  {
    v20 = *v30;
    do
    {
      v4 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        v5 = *(*(&v29 + 1) + 8 * v4);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v23 = qword_1EDFFF260;
        v6 = [v23 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v26;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v26 != v8)
              {
                objc_enumerationMutation(v23);
              }

              v10 = *(*(&v25 + 1) + 8 * i);
              v11 = MEMORY[0x1E696AD60];
              v12 = [qword_1EDFFF260 objectForKeyedSubscript:v10];
              v13 = [v12 objectForKeyedSubscript:@"MaskedName"];
              v14 = [qword_1EDFFF260 objectForKeyedSubscript:v10];
              v15 = [v14 objectForKeyedSubscript:@"DeleteTimestamp"];
              [v15 doubleValue];
              v17 = [v11 stringWithFormat:@"UPDATE '%@' SET %@ ='%@' WHERE %@ = '%@' AND timestamp <= %f", v24, v5, v13, v5, v10, v16];;

              [updateQueries addObject:v17];
            }

            v7 = [v23 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v7);
        }

        v4 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)addFilesToList:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v14 = [MEMORY[0x1E696AC08] defaultManager];
  [v14 contentsOfDirectoryAtPath:v3 error:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = MEMORY[0x1E696AEC0];
        v10 = [v8 pathExtension];
        v11 = [v9 stringWithFormat:@".%@", v10];

        if ([v11 isEqualToString:@".gz"])
        {
          v12 = [v3 stringByAppendingPathComponent:v8];
          [listOfFileNames setObject:&unk_1F5406048 forKeyedSubscript:v12];
        }

        else
        {
          v12 = PLLogAppDeletion();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v21 = v8;
            _os_log_debug_impl(&dword_1D8611000, v12, OS_LOG_TYPE_DEBUG, "AppDeletion : skipping non-gz file %@", buf, 0xCu);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)constructFileNames
{
  v3 = objc_opt_new();
  v4 = listOfFileNames;
  listOfFileNames = v3;

  v5 = +[PLUtilities containerPath];
  v6 = [v5 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
  [a1 addFilesToList:v6];

  v7 = +[PLUtilities containerPath];
  v8 = [v7 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MajorVersion"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__PLAppDeletion_constructFileNames__block_invoke;
  v12[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
  v12[4] = a1;
  [PLAppDeletion traverseVersionDirectory:v8 withBlock:v12];

  v9 = +[PLUtilities containerPath];
  v10 = [v9 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MinorVersion"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__PLAppDeletion_constructFileNames__block_invoke_2;
  v11[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
  v11[4] = a1;
  [PLAppDeletion traverseVersionDirectory:v10 withBlock:v11];
}

+ (void)updateQuery:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  errmsg = 0;
  ppDb = 0;
  if (sqlite3_open_v2([v3 UTF8String], &ppDb, 2, 0))
  {
    v4 = PLLogAppDeletion();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      +[PLAppDeletion updateQuery:];
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = updateQueries;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v15 = v3;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = sqlite3_exec(ppDb, [v9 UTF8String], 0, 0, &errmsg);
          if (v11)
          {
            v12 = v11;
            v13 = PLLogAppDeletion();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v23 = v9;
              v24 = 1024;
              v25 = v12;
              v26 = 2080;
              v27 = errmsg;
              _os_log_error_impl(&dword_1D8611000, v13, OS_LOG_TYPE_ERROR, "failed to execute update query %@ - %d and %s", buf, 0x1Cu);
            }

            sqlite3_free(errmsg);
          }

          objc_autoreleasePoolPop(v10);
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v28 count:16];
      }

      while (v6);
      v3 = v15;
    }
  }

  sqlite3_close(ppDb);
  v14 = *MEMORY[0x1E69E9840];
}

+ (void)deleteAppReferencesFromCompressedFiles:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  activity = a3;
  v33 = [MEMORY[0x1E696AC08] defaultManager];
  [listOfFileNames allKeys];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v3 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v40;
    *&v4 = 138412546;
    v32 = v4;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        v9 = [listOfFileNames objectForKeyedSubscript:{v8, v32}];
        v10 = [v9 intValue];

        if (v10)
        {
          v11 = PLLogAppDeletion();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v8;
            _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "AppDeletion : filename %@ is processed", buf, 0xCu);
          }
        }

        else
        {
          v11 = [v8 stringByDeletingLastPathComponent];
          v12 = [v8 lastPathComponent];
          v13 = [v12 stringByDeletingPathExtension];

          v14 = [v11 stringByAppendingPathComponent:v13];
          v15 = PLLogAppDeletion();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v8;
            _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "AppDeletion : invoking decompress on file %@", buf, 0xCu);
          }

          v16 = [PLUtilities decompressWithSource:v8 withDestination:v14 withRemoveSrc:1];
          v17 = PLLogAppDeletion();
          v18 = v17;
          if (v16)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = v14;
              _os_log_debug_impl(&dword_1D8611000, v18, OS_LOG_TYPE_DEBUG, "AppDeletion : invoking update query on file %@", buf, 0xCu);
            }

            [a1 updateQuery:v14];
            v19 = PLLogAppDeletion();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v44 = v14;
              _os_log_impl(&dword_1D8611000, v19, OS_LOG_TYPE_DEFAULT, "AppDeletion : invoking compress on file %@", buf, 0xCu);
            }

            [PLUtilities compressWithSource:v14 withDestination:v8 withLevel:4];
            [v33 removeItemAtPath:v14 error:0];
            v20 = [v14 stringByAppendingString:@"-shm"];
            [v33 removeItemAtPath:v20 error:0];

            v21 = [v14 stringByAppendingString:@"-wal"];
            [v33 removeItemAtPath:v21 error:0];

            [listOfFileNames setObject:&unk_1F5406060 forKeyedSubscript:v8];
            v22 = ++processedFilesCounter;
            if (v22 == [obj count])
            {
              v28 = PLLogAppDeletion();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [listOfFileNames objectForKeyedSubscript:v8];
                v30 = [v29 intValue];
                *buf = v32;
                v44 = v8;
                v45 = 1024;
                v46 = v30;
                _os_log_impl(&dword_1D8611000, v28, OS_LOG_TYPE_DEFAULT, "Did not defer activity file %@ and processed %d", buf, 0x12u);
              }

              v24 = PLLogAppDeletion();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1D8611000, v24, OS_LOG_TYPE_DEFAULT, "All compressed files processed", buf, 2u);
              }

              goto LABEL_38;
            }

            if (activity && xpc_activity_should_defer(activity))
            {
              v23 = [a1 deferXPCActivity:activity];
              v24 = PLLogAppDeletion();
              v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
              if (v23)
              {
                if (v25)
                {
                  [(PLAppDeletion *)v8 deleteAppReferencesFromCompressedFiles:v24];
                }

LABEL_38:

                goto LABEL_39;
              }

              if (v25)
              {
                [(PLAppDeletion *)&v37 deleteAppReferencesFromCompressedFiles:v38, v24];
              }
            }

            else
            {
              v24 = PLLogAppDeletion();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [listOfFileNames objectForKeyedSubscript:v8];
                v27 = [v26 intValue];
                *buf = v32;
                v44 = v8;
                v45 = 1024;
                v46 = v27;
                _os_log_impl(&dword_1D8611000, v24, OS_LOG_TYPE_DEFAULT, "Did not defer activity file %@ and processed %d", buf, 0x12u);
              }
            }
          }

          else
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v44 = v14;
              _os_log_error_impl(&dword_1D8611000, v18, OS_LOG_TYPE_ERROR, "AppDeletion : failed to decompress file %@", buf, 0xCu);
            }

            ++processedFilesCounter;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_39:

  v31 = *MEMORY[0x1E69E9840];
}

+ (void)deleteAppReferencesInCurrentPowerlog
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = updateQueries;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = +[PLSQLiteConnection sharedSQLiteConnection];
        v9 = [v8 performQuery:v7 returnValue:0 returnResult:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)deleteAppReferenceMapping
{
  v43 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = qword_1EDFFF268;
  v2 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v38;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v38 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        v7 = MEMORY[0x1E696AD60];
        v8 = [qword_1EDFFF268 objectForKeyedSubscript:v6];
        v9 = [v8 objectForKeyedSubscript:@"MaskedName"];
        v10 = [qword_1EDFFF268 objectForKeyedSubscript:v6];
        v11 = [v10 objectForKeyedSubscript:@"DeleteTimestamp"];
        [v11 doubleValue];
        v13 = [v7 stringWithFormat:@"UPDATE '%@' SET AppBundleId ='%@' WHERE AppBundleId = '%@' AND timestamp <= %f", @"PLApplicationAgent_EventForward_ApplicationDidUninstall", v9, v6, v12];;

        v14 = +[PLSQLiteConnection sharedSQLiteConnection];
        v15 = [v14 performQuery:v13 returnValue:0 returnResult:0];
      }

      v3 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v3);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obja = qword_1EDFFF270;
  v16 = [obja countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(obja);
        }

        v20 = *(*(&v33 + 1) + 8 * j);
        v21 = MEMORY[0x1E696AD60];
        v22 = [qword_1EDFFF270 objectForKeyedSubscript:v20];
        v23 = [v22 objectForKeyedSubscript:@"MaskedName"];
        v24 = [qword_1EDFFF270 objectForKeyedSubscript:v20];
        v25 = [v24 objectForKeyedSubscript:@"DeleteTimestamp"];
        [v25 doubleValue];
        v27 = [v21 stringWithFormat:@"UPDATE '%@' SET AppName ='%@' WHERE AppName = '%@' AND timestamp <= %f", @"PLApplicationAgent_EventForward_ApplicationDidUninstall", v23, v20, v26];;

        v28 = +[PLSQLiteConnection sharedSQLiteConnection];
        v29 = [v28 performQuery:v27 returnValue:0 returnResult:0];
      }

      v17 = [obja countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v17);
  }

  v30 = *MEMORY[0x1E69E9840];
}

+ (void)deleteAppReferences:(id)a3
{
  v4 = a3;
  [a1 setup];
  v5 = [updateQueries count];
  v6 = PLLogAppDeletion();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      +[PLAppDeletion deleteAppReferences:];
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"PLAppDeletionActivityStarted" object:a1 userInfo:qword_1EDFFF268];

    [a1 deleteAppReferencesInCurrentPowerlog];
    [a1 deleteAppReferencesFromCompressedFiles:v4];
  }

  else
  {
    if (v7)
    {
      +[PLAppDeletion deleteAppReferences:];
    }

    processedFilesCounter = [listOfFileNames count];
  }
}

+ (id)appDeletionCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x1E69E9C40], 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x1E69E9DC0], 1);
  xpc_dictionary_set_string(v2, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);

  return v2;
}

+ (void)registerAppDeletionActivity
{
  v3 = [a1 appDeletionCriteria];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __44__PLAppDeletion_registerAppDeletionActivity__block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = a1;
  xpc_activity_register("com.apple.powerlogd.XPCAppDeletionScheduler", v3, handler);
}

void __44__PLAppDeletion_registerAppDeletionActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = PLLogAppDeletion();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __44__PLAppDeletion_registerAppDeletionActivity__block_invoke_cold_1();
  }

  if (state == 2)
  {
    [*(a1 + 32) handleAppDeletionXPCActivityCallback:v3];
  }

  else
  {
    v6 = PLLogAppDeletion();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __44__PLAppDeletion_registerAppDeletionActivity__block_invoke_cold_2();
    }
  }
}

+ (void)handleAppDeletionXPCActivityCallback:(id)a3
{
  v4 = a3;
  v5 = PLLogAppDeletion();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[PLAppDeletion handleAppDeletionXPCActivityCallback:];
  }

  [a1 deleteAppReferences:v4];
  v6 = processedFilesCounter;
  if (v6 == [listOfFileNames count])
  {
    [a1 deleteAppReferenceMapping];
    [a1 finishXPCActivity:v4];
    v7 = PLLogAppDeletion();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[PLAppDeletion handleAppDeletionXPCActivityCallback:];
    }

    v8 = PLLogAppDeletion();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[PLAppDeletion handleAppDeletionXPCActivityCallback:];
    }

    [PLAppDeletion changeClassProtection:0];
    [a1 resetStateVariables];
  }

  else
  {
    v9 = PLLogAppDeletion();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[PLAppDeletion handleAppDeletionXPCActivityCallback:];
    }
  }
}

+ (BOOL)finishXPCActivity:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = xpc_activity_set_state(v3, 5);
    v6 = PLLogAppDeletion();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        +[PLAppDeletion finishXPCActivity:];
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[PLAppDeletion finishXPCActivity:];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)deferXPCActivity:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (xpc_activity_get_state(v3) == 3)
    {
      v5 = PLLogAppDeletion();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        +[PLAppDeletion deferXPCActivity:];
      }
    }

    else
    {
      v7 = xpc_activity_set_state(v4, 3);
      v5 = PLLogAppDeletion();
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
      if (!v7)
      {
        if (v8)
        {
          +[PLAppDeletion deferXPCActivity:];
        }

        v6 = 0;
        goto LABEL_13;
      }

      if (v8)
      {
        +[PLAppDeletion deferXPCActivity:];
      }
    }

    v6 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (void)changePermissionsForFilesInDirectory:withProtectionLevel:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __66__PLAppDeletion_changePermissionForDirectory_withProtectionLevel___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)changeClassProtection:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)changeClassProtection:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)changeClassProtection:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)changeClassProtection:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)filePermissionCriteria
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__PLAppDeletion_registerFilePermissionActivity__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)handleFilePermissionXPCActivityCallback:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)constructUpdateQueries
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)updateQuery:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)deleteAppReferencesFromCompressedFiles:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "Could not set state to defer, continue", buf, 2u);
}

+ (void)deleteAppReferencesFromCompressedFiles:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [listOfFileNames objectForKeyedSubscript:a1];
  v6 = 138412546;
  v7 = a1;
  v8 = 1024;
  v9 = [v4 intValue];
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "Deferring activity after file %@ and processed %d", &v6, 0x12u);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)deleteAppReferences:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)deleteAppReferences:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__PLAppDeletion_registerAppDeletionActivity__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __44__PLAppDeletion_registerAppDeletionActivity__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)handleAppDeletionXPCActivityCallback:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)handleAppDeletionXPCActivityCallback:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)handleAppDeletionXPCActivityCallback:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)handleAppDeletionXPCActivityCallback:.cold.4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)finishXPCActivity:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)finishXPCActivity:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)deferXPCActivity:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)deferXPCActivity:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)deferXPCActivity:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end