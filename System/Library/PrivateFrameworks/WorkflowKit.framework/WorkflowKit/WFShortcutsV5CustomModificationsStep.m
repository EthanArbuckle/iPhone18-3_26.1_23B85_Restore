@interface WFShortcutsV5CustomModificationsStep
- (BOOL)performModificationsWithContext:(id)a3 error:(id *)a4;
@end

@implementation WFShortcutsV5CustomModificationsStep

- (BOOL)performModificationsWithContext:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Shortcut"];
  [v7 setFetchLimit:5];
  [v7 setPropertiesToFetch:&unk_1F4A9B548];
  v39 = 0;
  v29 = v7;
  v8 = [v5 executeFetchRequest:v7 error:&v39];
  v9 = v39;
  if (![v8 count])
  {
LABEL_13:

    objc_autoreleasePoolPop(v6);
    if (a4)
    {
      v22 = v9;
      *a4 = v9;
    }

    v23 = v9 == 0;
    goto LABEL_19;
  }

  v10 = [MEMORY[0x1E695D5B8] entityForName:@"ShortcutActions" inManagedObjectContext:v5];
  if (v10)
  {
    v11 = v10;
    v27 = a4;
    v28 = v6;
    do
    {
      v31 = v9;
      v12 = v5;
      context = objc_autoreleasePoolPush();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v8;
      v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v35 + 1) + 8 * i);
            v18 = objc_autoreleasePoolPush();
            v19 = [objc_alloc(MEMORY[0x1E695D620]) initWithEntity:v11 insertIntoManagedObjectContext:v12];
            v20 = [v17 valueForKey:@"actionsData"];
            [v19 setValue:v20 forKey:@"data"];
            [v17 setValue:v19 forKey:@"actions"];
            [v17 setValue:0 forKey:@"actionsData"];

            objc_autoreleasePoolPop(v18);
          }

          v14 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v14);
      }

      v34 = v31;
      v5 = v12;
      [v12 save:&v34];
      v21 = v34;

      [v12 reset];
      [v29 setFetchOffset:{objc_msgSend(v29, "fetchOffset") + objc_msgSend(v29, "fetchLimit")}];
      v33 = v21;
      v8 = [v12 executeFetchRequest:v29 error:&v33];
      v9 = v33;

      objc_autoreleasePoolPop(context);
    }

    while ([v8 count]);

    a4 = v27;
    v6 = v28;
    goto LABEL_13;
  }

  v24 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v42 = "[WFShortcutsV5CustomModificationsStep performModificationsWithContext:error:]";
    _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s Couldn't make a ShortcutActions entity description", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v23 = 0;
LABEL_19:

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

@end