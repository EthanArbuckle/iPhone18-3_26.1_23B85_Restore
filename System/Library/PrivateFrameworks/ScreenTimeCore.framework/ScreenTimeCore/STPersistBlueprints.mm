@interface STPersistBlueprints
+ (BOOL)validateBlueprintDictionary:(id)dictionary;
+ (id)_updateBlueprintsFromDictionaries:(id)dictionaries forUser:(id)user payload:(id)payload;
+ (void)persistBlueprintsPayload:(id)payload persistenceController:(id)controller completionHandler:(id)handler;
@end

@implementation STPersistBlueprints

+ (void)persistBlueprintsPayload:(id)payload persistenceController:(id)controller completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004EF38;
  v10[3] = &unk_1001A4798;
  payloadCopy = payload;
  handlerCopy = handler;
  selfCopy = self;
  v8 = payloadCopy;
  v9 = handlerCopy;
  [controller performBackgroundTask:v10];
}

+ (id)_updateBlueprintsFromDictionaries:(id)dictionaries forUser:(id)user payload:(id)payload
{
  dictionariesCopy = dictionaries;
  userCopy = user;
  payloadCopy = payload;
  v56 = objc_opt_new();
  v52 = payloadCopy;
  userInfo = [payloadCopy userInfo];
  v51 = [userInfo objectForKeyedSubscript:@"TreatPayloadAsDelta"];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v11 = dictionariesCopy;
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
      if ([self validateBlueprintDictionary:v17])
      {
        managedObjectContext = [userCopy managedObjectContext];
        v63 = v14;
        v19 = [STBlueprint fetchOrCreateWithDictionaryRepresentation:v17 inContext:managedObjectContext error:&v63];
        v20 = v63;

        if (!v19)
        {
          v29 = STXPCSafeErrorFromCoreDataError();
          v30 = [STResult failure:v29];
          v27 = v52;
LABEL_24:

          v35 = v11;
          v14 = v20;
          v28 = userCopy;
          goto LABEL_38;
        }

        if (([v19 updateWithDictionaryRepresentation:v17] & 1) == 0)
        {
          v31 = [STUnifiedTransportPayloadDestination alloc];
          v27 = v52;
          userInfo2 = [v52 userInfo];
          v33 = [userInfo2 objectForKeyedSubscript:@"altURI"];
          v29 = [v31 initWithAddress:v33 type:STUnifiedTransportPayloadDestinationTypeDevice];

          v34 = [STUpdateBlueprintsResult outOfDateWithReturnDestination:v29];
          v30 = [STResult success:v34];

          goto LABEL_24;
        }

        type = [v19 type];
        if (([type isEqualToString:v58] & 1) != 0 || objc_msgSend(type, "isEqualToString:", v54))
        {
          v22 = +[STLog blueprint];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v19 identifier];
            *buf = 138543618;
            v70 = identifier;
            v71 = 2114;
            v72 = type;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Performing category migration while persisting blueprint serialized over IDS: %{public}@ with type: %{public}@", buf, 0x16u);

            v11 = v53;
          }

          [v19 migrateToVersion2CategoriesIfNeeded];
        }

        identifier2 = [v19 identifier];
        [v56 addObject:identifier2];

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
    v28 = userCopy;
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Treating blueprint payload as delta. Not performing deletion of unmodified blueprints", buf, 2u);
    }
  }

  else
  {
    v55 = v14;
    v28 = userCopy;
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not treating blueprint payload as delta. Performing deletion of unmodified blueprints", buf, 2u);
    }

    familySettings = [userCopy familySettings];
    organization = [familySettings organization];
    blueprints = [organization blueprints];
    v39 = [NSPredicate predicateWithFormat:@"NOT (%K IN %@)", @"identifier", v56];
    v40 = [blueprints filteredSetUsingPredicate:v39];

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
          blueprint = [v42[357] blueprint];
          if (os_log_type_enabled(blueprint, OS_LOG_TYPE_INFO))
          {
            uniqueIdentifier = [v46 uniqueIdentifier];
            *buf = 138412290;
            v70 = uniqueIdentifier;
            _os_log_impl(&_mh_execute_header, blueprint, OS_LOG_TYPE_INFO, "PersistBlueprintsOperation - Deleting blueprint: %@", buf, 0xCu);

            v42 = &_sSo17OS_dispatch_queueC8DispatchE10AttributesVMa_ptr;
          }

          managedObjectContext2 = [userCopy managedObjectContext];
          [managedObjectContext2 deleteObject:v46];
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

+ (BOOL)validateBlueprintDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"organization.class"];
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
      sub_100118A58(dictionaryCopy, v6);
    }
  }

  else
  {
    v6 = +[STLog blueprint];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100118C90(v4, dictionaryCopy, v6);
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end