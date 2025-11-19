@interface STPersistBlueprints
+ (BOOL)validateBlueprintDictionary:(id)a3;
+ (id)_updateBlueprintsFromDictionaries:(id)a3 forUser:(id)a4 payload:(id)a5;
+ (void)persistBlueprintsPayload:(id)a3 persistenceController:(id)a4 completionHandler:(id)a5;
@end

@implementation STPersistBlueprints

+ (void)persistBlueprintsPayload:(id)a3 persistenceController:(id)a4 completionHandler:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004EF38;
  v10[3] = &unk_1001A4798;
  v11 = a3;
  v12 = a5;
  v13 = a1;
  v8 = v11;
  v9 = v12;
  [a4 performBackgroundTask:v10];
}

+ (id)_updateBlueprintsFromDictionaries:(id)a3 forUser:(id)a4 payload:(id)a5
{
  v8 = a3;
  v57 = a4;
  v9 = a5;
  v56 = objc_opt_new();
  v52 = v9;
  v10 = [v9 userInfo];
  v51 = [v10 objectForKeyedSubscript:@"TreatPayloadAsDelta"];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v64 objects:v73 count:16];
  v53 = v11;
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v65;
    v58 = STBlueprintTypeDowntime;
    v54 = STBlueprintTypeUsageLimit;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v65 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v64 + 1) + 8 * v16);
      if ([a1 validateBlueprintDictionary:v17])
      {
        v18 = [v57 managedObjectContext];
        v63 = v14;
        v19 = [STBlueprint fetchOrCreateWithDictionaryRepresentation:v17 inContext:v18 error:&v63];
        v20 = v63;

        if (!v19)
        {
          v29 = STXPCSafeErrorFromCoreDataError();
          v30 = [STResult failure:v29];
          v27 = v52;
LABEL_24:

          v35 = v11;
          v14 = v20;
          v28 = v57;
          goto LABEL_38;
        }

        if (([v19 updateWithDictionaryRepresentation:v17] & 1) == 0)
        {
          v31 = [STUnifiedTransportPayloadDestination alloc];
          v27 = v52;
          v32 = [v52 userInfo];
          v33 = [v32 objectForKeyedSubscript:@"altURI"];
          v29 = [v31 initWithAddress:v33 type:STUnifiedTransportPayloadDestinationTypeDevice];

          v34 = [STUpdateBlueprintsResult outOfDateWithReturnDestination:v29];
          v30 = [STResult success:v34];

          goto LABEL_24;
        }

        v21 = [v19 type];
        if (([v21 isEqualToString:v58] & 1) != 0 || objc_msgSend(v21, "isEqualToString:", v54))
        {
          v22 = +[STLog blueprint];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v19 identifier];
            *buf = 138543618;
            v70 = v23;
            v71 = 2114;
            v72 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Performing category migration while persisting blueprint serialized over IDS: %{public}@ with type: %{public}@", buf, 0x16u);

            v11 = v53;
          }

          [v19 migrateToVersion2CategoriesIfNeeded];
        }

        v24 = [v19 identifier];
        [v56 addObject:v24];

        v14 = v20;
      }

      if (v13 == ++v16)
      {
        v13 = [v11 countByEnumeratingWithState:&v64 objects:v73 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }
  }

  v14 = 0;
LABEL_19:

  v25 = +[STLog blueprint];
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v51)
  {
    v27 = v52;
    v28 = v57;
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Treating blueprint payload as delta. Not performing deletion of unmodified blueprints", buf, 2u);
    }
  }

  else
  {
    v55 = v14;
    v28 = v57;
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not treating blueprint payload as delta. Performing deletion of unmodified blueprints", buf, 2u);
    }

    v36 = [v57 familySettings];
    v37 = [v36 organization];
    v38 = [v37 blueprints];
    v39 = [NSPredicate predicateWithFormat:@"NOT (%K IN %@)", @"identifier", v56];
    v40 = [v38 filteredSetUsingPredicate:v39];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v25 = v40;
    v41 = [v25 countByEnumeratingWithState:&v59 objects:v68 count:16];
    v42 = &_sSo17OS_dispatch_queueC8DispatchE10AttributesVMa_ptr;
    if (v41)
    {
      v43 = v41;
      v44 = *v60;
      do
      {
        for (i = 0; i != v43; i = i + 1)
        {
          if (*v60 != v44)
          {
            objc_enumerationMutation(v25);
          }

          v46 = *(*(&v59 + 1) + 8 * i);
          v47 = [v42[357] blueprint];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v48 = [v46 uniqueIdentifier];
            *buf = 138412290;
            v70 = v48;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "PersistBlueprintsOperation - Deleting blueprint: %@", buf, 0xCu);

            v42 = &_sSo17OS_dispatch_queueC8DispatchE10AttributesVMa_ptr;
          }

          v49 = [v57 managedObjectContext];
          [v49 deleteObject:v46];
        }

        v43 = [v25 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v43);
    }

    v27 = v52;
    v11 = v53;
    v14 = v55;
  }

  v35 = +[STUpdateBlueprintsResult success];
  v30 = [STResult success:v35];
LABEL_38:

  return v30;
}

+ (BOOL)validateBlueprintDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"organization.class"];
  v5 = [STCoreOrganization internalClassForSerializableClassName:v4];
  if (v5)
  {
    if (![v5 isEqual:objc_opt_class()])
    {
      v7 = 1;
      goto LABEL_9;
    }

    v6 = +[STLog blueprint];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100118A58(v3, v6);
    }
  }

  else
  {
    v6 = +[STLog blueprint];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100118C90(v4, v3, v6);
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end