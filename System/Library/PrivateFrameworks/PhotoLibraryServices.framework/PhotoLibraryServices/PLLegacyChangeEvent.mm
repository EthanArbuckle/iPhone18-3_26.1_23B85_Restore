@interface PLLegacyChangeEvent
+ (BOOL)isEmptyEvent:(id)event;
+ (id)_descriptionForEvent:(id)event;
+ (id)_descriptionForEvent:(id)event withPersistentStoreCoordinator:(id)coordinator;
+ (id)localChangeEventFromChangeHubEvent:(id)event withLibraryBundle:(id)bundle;
@end

@implementation PLLegacyChangeEvent

+ (BOOL)isEmptyEvent:(id)event
{
  v26 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = eventCopy;
  if (eventCopy && xpc_dictionary_get_count(eventCopy))
  {
    if (xpc_dictionary_get_uint64(v4, "eventKind") == 1)
    {
      v5 = xpc_dictionary_get_value(v4, [*MEMORY[0x1E695D320] UTF8String]);
      v6 = v5;
      if (v5 && xpc_array_get_count(v5))
      {
        v7 = 0;
      }

      else
      {
        v8 = xpc_dictionary_get_value(v4, [*MEMORY[0x1E695D4C8] UTF8String]);
        v9 = v8;
        if (v8 && xpc_array_get_count(v8))
        {
          v7 = 0;
        }

        else
        {
          v10 = xpc_dictionary_get_value(v4, [*MEMORY[0x1E695D2F0] UTF8String]);
          v11 = v10;
          if (v10 && xpc_array_get_count(v10))
          {
            v7 = 0;
          }

          else
          {
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v12 = PLAllCloudDeletionKeys();
            v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v22;
              while (2)
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v22 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v21 + 1) + 8 * i);
                  v18 = xpc_dictionary_get_value(v4, [v17 UTF8String]);
                  v19 = v18;
                  if (v18 && xpc_array_get_count(v18))
                  {

                    v7 = 0;
                    goto LABEL_26;
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            v7 = 1;
LABEL_26:
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)_descriptionForEvent:(id)event withPersistentStoreCoordinator:(id)coordinator
{
  v89 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  coordinatorCopy = coordinator;
  if (!eventCopy)
  {
    v21 = @"<empty>";
    goto LABEL_37;
  }

  v8 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v10 = eventCopy;
  uint64 = xpc_dictionary_get_uint64(eventCopy, "eventKind");
  xdict = v10;
  if (uint64 != 5)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"index: #%llu", xpc_dictionary_get_uint64(v10, "eventIndex")];
    [array addObject:v22];

    if (xpc_dictionary_get_uuid(v10, "eventUUID"))
    {
      memset(out, 0, 37);
      uuid = xpc_dictionary_get_uuid(v10, "eventUUID");
      uuid_unparse(uuid, out);
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
      v13 = [v24 substringToIndex:8];
    }

    else
    {
      v13 = @"assetsd";
    }

    v25 = xpc_dictionary_get_remote_connection(v10);
    v15 = v25;
    if (v25)
    {
      v26 = [(__CFString *)v13 stringByAppendingFormat:@" (pid %d)", xpc_connection_get_pid(v25)];

      v13 = v26;
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"origin: %@", v13];
    [array addObject:v27];

    switch(uint64)
    {
      case 4u:
        [array addObject:@"kind: GetPendingEvents"];
        eventCopy = xdict;
        uint64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"last index: %llu", xpc_dictionary_get_uint64(xdict, "eventLastIndex")];
        [array addObject:uint64];
        break;
      case 3u:
        [array addObject:@"kind: SetConnectionUUID"];
        eventCopy = xdict;
        v63 = xpc_dictionary_get_value(xdict, "eventUUID");
        uint64 = v63;
        if (v63)
        {
          memset(out, 0, 37);
          bytes = xpc_uuid_get_bytes(v63);
          uuid_unparse(bytes, out);
          v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UUID: %s", out];
          [array addObject:v65];
        }

        break;
      case 1u:
        v71 = v13;
        v72 = v8;
        [array addObject:@"kind: ContextDidSave"];
        eventCopy = xdict;
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"change source: %lld", xpc_dictionary_get_int64(xdict, "changeSource")];
        [array addObject:v28];

        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sync change marker: %d", xpc_dictionary_get_BOOL(xdict, "syncChangeMarker")];
        [array addObject:v29];

        v30 = xpc_dictionary_get_value(xdict, [*MEMORY[0x1E695D320] UTF8String]);
        v31 = v30;
        if (v30)
        {
          v32 = MEMORY[0x1E696AEC0];
          count = xpc_array_get_count(v30);
          v34 = _descriptionOfManagedObjectIDArray(v31, 0, 0, coordinatorCopy);
          v35 = [v32 stringWithFormat:@"%lu inserts: {%@}", count, v34];
          [array addObject:v35];
        }

        v70 = v31;
        v74 = array;
        v36 = xpc_dictionary_get_value(xdict, [*MEMORY[0x1E695D4C8] UTF8String]);
        v37 = v36;
        if (v36)
        {
          v38 = MEMORY[0x1E696AEC0];
          v39 = xpc_array_get_count(v36);
          v40 = xpc_dictionary_get_value(xdict, "PLUpdatedAttributesKey");
          v41 = xpc_dictionary_get_value(xdict, "PLUpdatedRelationshipsKey");
          v42 = _descriptionOfManagedObjectIDArray(v37, v40, v41, coordinatorCopy);
          v43 = [v38 stringWithFormat:@"%lu updates: {%@}", v39, v42];
          [v74 addObject:v43];
        }

        v69 = v37;
        v44 = xpc_dictionary_get_value(xdict, [*MEMORY[0x1E695D2F0] UTF8String]);
        v45 = v44;
        if (v44)
        {
          v46 = MEMORY[0x1E696AEC0];
          v47 = xpc_array_get_count(v44);
          v48 = _descriptionOfManagedObjectIDArray(v45, 0, 0, coordinatorCopy);
          v49 = [v46 stringWithFormat:@"%lu deletes: {%@}", v47, v48];
          [v74 addObject:v49];
        }

        v68 = v45;
        v73 = coordinatorCopy;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v50 = PLAllCloudDeletionKeys();
        v51 = [v50 countByEnumeratingWithState:&v79 objects:v87 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v80;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v80 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v55 = *(*(&v79 + 1) + 8 * i);
              v56 = xpc_dictionary_get_value(eventCopy, [v55 UTF8String]);
              v57 = v56;
              if (v56)
              {
                v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:xpc_array_get_count(v56)];
                v76[0] = MEMORY[0x1E69E9820];
                v76[1] = 3221225472;
                v76[2] = __75__PLLegacyChangeEvent__descriptionForEvent_withPersistentStoreCoordinator___block_invoke_2;
                v76[3] = &unk_1E7570AE0;
                v76[4] = v55;
                v77 = eventCopy;
                v78 = v58;
                v59 = v58;
                xpc_array_apply(v57, v76);
                v60 = MEMORY[0x1E696AEC0];
                v67 = xpc_array_get_count(v57);
                v61 = v60;
                eventCopy = xdict;
                v62 = [v61 stringWithFormat:@"%lu %@: {%@}", v67, v55, v59];
                [v74 addObject:v62];
              }
            }

            v52 = [v50 countByEnumeratingWithState:&v79 objects:v87 count:16];
          }

          while (v52);
        }

        array = v74;
        [PLDelayedFiledSystemDeletions appendDescriptionForEvent:eventCopy toComponents:v74];

        v8 = v72;
        coordinatorCopy = v73;
        v13 = v71;
        uint64 = v70;
        break;
      default:
        uint64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"kind: invalid (%lu)", uint64];
        [array addObject:uint64];
        eventCopy = xdict;
        break;
    }

    goto LABEL_35;
  }

  [array addObject:@"kind: PendingEvents"];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"last index: %llu", xpc_dictionary_get_uint64(v10, "eventLastIndex")];
  [array addObject:v12];

  v13 = xpc_dictionary_get_value(v10, "events");
  if (v13)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __75__PLLegacyChangeEvent__descriptionForEvent_withPersistentStoreCoordinator___block_invoke;
    applier[3] = &unk_1E7570198;
    v84 = array2;
    selfCopy = self;
    v85 = coordinatorCopy;
    v15 = array2;
    xpc_array_apply(v13, applier);
    v16 = MEMORY[0x1E696AEC0];
    v17 = xpc_array_get_count(v13);
    v18 = [(_xpc_connection_s *)v15 componentsJoinedByString:@"\n"];
    v19 = [v16 stringWithFormat:@"events: %zu (\n%@\n)", v17, v18];
    [array addObject:v19];

    eventCopy = xdict;
    uint64 = v84;
LABEL_35:

    goto LABEL_36;
  }

  eventCopy = v10;
LABEL_36:

  v21 = [array componentsJoinedByString:{@", "}];

  objc_autoreleasePoolPop(v8);
LABEL_37:

  return v21;
}

uint64_t __75__PLLegacyChangeEvent__descriptionForEvent_withPersistentStoreCoordinator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 48) _descriptionForEvent:a3 withPersistentStoreCoordinator:*(a1 + 40)];
  [v3 addObject:v4];

  return 1;
}

uint64_t __75__PLLegacyChangeEvent__descriptionForEvent_withPersistentStoreCoordinator___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  string_ptr = xpc_string_get_string_ptr(v5);
  if (string_ptr)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string_ptr];
    if (v7)
    {
      [*(a1 + 48) addObject:v7];
    }
  }

  else
  {
    v7 = PLChangeHandlingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 138413058;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      v15 = 2048;
      v16 = a2;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "xpc_string_get_string_ptr returns nil while processing %@ for value = %@, index = %zu, event = %@", &v11, 0x2Au);
    }
  }

  return 1;
}

+ (id)_descriptionForEvent:(id)event
{
  eventCopy = event;
  v5 = +[PLPhotoLibraryBundleController sharedBundleController];
  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v7 = [v5 bundleForLibraryURL:systemLibraryURL];

  persistentContainer = [v7 persistentContainer];
  v9 = [persistentContainer sharedPersistentStoreCoordinatorWithError:0];

  v10 = [self _descriptionForEvent:eventCopy withPersistentStoreCoordinator:v9];

  return v10;
}

+ (id)localChangeEventFromChangeHubEvent:(id)event withLibraryBundle:(id)bundle
{
  eventCopy = event;
  bundleCopy = bundle;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__PLLegacyChangeEvent_localChangeEventFromChangeHubEvent_withLibraryBundle___block_invoke;
  v11[3] = &unk_1E7570160;
  v12 = bundleCopy;
  v13 = eventCopy;
  v7 = eventCopy;
  v8 = bundleCopy;
  v9 = [PLLocalChangeEventBuilder localEventWithBuilderBlock:v11];

  return v9;
}

void __76__PLLegacyChangeEvent_localChangeEventFromChangeHubEvent_withLibraryBundle___block_invoke(uint64_t a1, void *a2)
{
  v40[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) persistentContainer];
  v25 = [v4 sharedPersistentStoreCoordinatorWithError:0];

  v24 = xpc_dictionary_get_value(*(a1 + 40), "PLUpdatedAttributesKey");
  v23 = xpc_dictionary_get_value(*(a1 + 40), "PLUpdatedRelationshipsKey");
  v5 = *MEMORY[0x1E695D4C8];
  v40[0] = *MEMORY[0x1E695D320];
  v40[1] = v5;
  v40[2] = *MEMORY[0x1E695D2F0];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
  v7 = PLAllCloudDeletionKeys();
  v8 = [v6 arrayByAddingObjectsFromArray:v7];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = xpc_dictionary_get_value(*(a1 + 40), [v14 UTF8String]);
        if (v15)
        {
          v16 = PLAllCloudDeletionKeys();
          v17 = [v16 containsObject:v14];

          if (v17)
          {
            v18 = [v3 recordDeletedCloudGUIDBlockForChangeKey:v14];
            applier[0] = MEMORY[0x1E69E9820];
            applier[1] = 3221225472;
            applier[2] = __76__PLLegacyChangeEvent_localChangeEventFromChangeHubEvent_withLibraryBundle___block_invoke_2;
            applier[3] = &unk_1E7570100;
            applier[4] = v14;
            v34 = v18;
            v19 = v18;
            xpc_array_apply(v15, applier);
            v20 = v34;
          }

          else
          {
            v21 = [v3 recordChangedObjectIDBlockForChangeKey:v14];
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __76__PLLegacyChangeEvent_localChangeEventFromChangeHubEvent_withLibraryBundle___block_invoke_28;
            v26[3] = &unk_1E7570128;
            v22 = v25;
            v32 = v21;
            v27 = v22;
            v28 = v14;
            v29 = v24;
            v30 = v23;
            v31 = v3;
            v19 = v21;
            xpc_array_apply(v15, v26);

            v20 = v27;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v11);
  }

  [v3 setCoalescedEvent:{xpc_dictionary_get_BOOL(*(a1 + 40), "coalescedEvent")}];
  [v3 setSyncChange:{xpc_dictionary_get_BOOL(*(a1 + 40), "syncChangeMarker")}];
}

uint64_t __76__PLLegacyChangeEvent_localChangeEventFromChangeHubEvent_withLibraryBundle___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  string_ptr = xpc_string_get_string_ptr(v4);
  if (string_ptr)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string_ptr];
    if (v6)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v6 = PLChangeHandlingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "xpc_string_get_string_ptr returns nil for value, changeKey = %@, value = %@", &v9, 0x16u);
    }
  }

  return 1;
}

uint64_t __76__PLLegacyChangeEvent_localChangeEventFromChangeHubEvent_withLibraryBundle___block_invoke_28(uint64_t a1, size_t a2)
{
  v4 = PLManagedObjectIDFromXPCValue();
  if (v4)
  {
    (*(*(a1 + 72) + 16))();
    if ([*(a1 + 40) isEqualToString:*MEMORY[0x1E695D4C8]])
    {
      v5 = *(a1 + 48);
      if (v5)
      {
        if (*(a1 + 56))
        {
          v6 = *(a1 + 64);
          uint64 = xpc_array_get_uint64(v5, a2);
          [v6 recordUpdatedAttributes:uint64 andRelationships:xpc_array_get_uint64(*(a1 + 56) forObjectID:{a2), v4}];
        }
      }
    }
  }

  return 1;
}

@end