@interface WFShortcutsV10CustomModificationStep
- (BOOL)performModificationsWithContext:(id)a3 error:(id *)a4;
@end

@implementation WFShortcutsV10CustomModificationStep

- (BOOL)performModificationsWithContext:(id)a3 error:(id *)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v5 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 136315394;
    v63 = "[WFShortcutsV10CustomModificationStep performModificationsWithContext:error:]";
    v64 = 2112;
    v65 = v7;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Performing custom modification step: %@", buf, 0x16u);
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Shortcut"];
  [v9 setFetchLimit:5];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"triggers.@count > 0"];
  [v9 setPredicate:v10];

  v59 = 0;
  v11 = [v45 executeFetchRequest:v9 error:&v59];
  v12 = v59;
  v40 = v8;
  v42 = a4;
  if ([v11 count])
  {
    v13 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v63 = "[WFShortcutsV10CustomModificationStep performModificationsWithContext:error:]";
      v64 = 2112;
      v65 = v11;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Associated triggers found for %@ shortcuts. Setting hiddenFromLibraryAndSync flag to YES", buf, 0x16u);
    }

    v14 = MEMORY[0x1E695E118];
    do
    {
      context = objc_autoreleasePoolPush();
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v15 = v11;
      v16 = [v15 countByEnumeratingWithState:&v55 objects:v61 count:{16, v40}];
      if (v16)
      {
        v17 = v16;
        v18 = *v56;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v56 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v55 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            [v20 setValue:v14 forKey:@"hiddenFromLibraryAndSync"];
            objc_autoreleasePoolPop(v21);
          }

          v17 = [v15 countByEnumeratingWithState:&v55 objects:v61 count:16];
        }

        while (v17);
      }

      v54 = v12;
      [v45 save:&v54];
      v22 = v54;

      [v45 reset];
      [v9 setFetchOffset:{objc_msgSend(v9, "fetchOffset") + objc_msgSend(v9, "fetchLimit")}];
      v53 = v22;
      v11 = [v45 executeFetchRequest:v9 error:&v53];
      v12 = v53;

      objc_autoreleasePoolPop(context);
    }

    while ([v11 count]);
  }

  objc_autoreleasePoolPop(v40);
  v23 = objc_autoreleasePoolPush();
  v24 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Trigger"];
  [v24 setFetchLimit:5];
  v52 = v12;
  v25 = [v45 executeFetchRequest:v24 error:&v52];
  v26 = v52;

  v41 = v23;
  if ([v25 count])
  {
    v27 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v63 = "[WFShortcutsV10CustomModificationStep performModificationsWithContext:error:]";
      v64 = 2112;
      v65 = v25;
      _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_DEFAULT, "%s Triggers found: %@. Setting editableShortcut flag to YES", buf, 0x16u);
    }

    v28 = MEMORY[0x1E695E118];
    do
    {
      contexta = objc_autoreleasePoolPush();
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v29 = v25;
      v30 = [v29 countByEnumeratingWithState:&v48 objects:v60 count:{16, v41}];
      if (v30)
      {
        v31 = v30;
        v32 = *v49;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v49 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v48 + 1) + 8 * j);
            v35 = objc_autoreleasePoolPush();
            [v34 setValue:v28 forKey:@"editableShortcut"];
            objc_autoreleasePoolPop(v35);
          }

          v31 = [v29 countByEnumeratingWithState:&v48 objects:v60 count:16];
        }

        while (v31);
      }

      v47 = v26;
      [v45 save:&v47];
      v36 = v47;

      [v45 reset];
      [v24 setFetchOffset:{objc_msgSend(v24, "fetchOffset") + objc_msgSend(v24, "fetchLimit")}];
      v46 = v36;
      v25 = [v45 executeFetchRequest:v24 error:&v46];
      v26 = v46;

      objc_autoreleasePoolPop(contexta);
    }

    while ([v25 count]);
  }

  objc_autoreleasePoolPop(v41);
  if (v42)
  {
    v37 = v26;
    *v42 = v26;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v26 == 0;
}

@end