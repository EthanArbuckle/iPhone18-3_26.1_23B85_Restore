@interface WAPersistentContainer
+ (BOOL)_storeNeedsImmediatePruning:(id)a3;
+ (WAPersistentContainer)waPersistentContainerWithName:(id)a3 managedObjectModel:(id)a4 storeDescriptor:(id)a5;
+ (id)constraintsForEntity:(id)a3;
+ (id)dimensionsForUsageEntity:(id)a3;
+ (id)getConstraintsValues:(id)a3;
+ (id)predicateForRecordsNewerThan:(double)a3;
+ (id)predicateForRecordsOlderThan:(double)a3;
+ (id)sortByNewestDateFirstOnProperty:(id)a3;
+ (id)sortByOlderDateFirstOnProperty:(id)a3;
+ (void)performBlock:(id)a3 overConstraintsOfEntity:(id)a4 withConstraints:(id)a5;
- (BOOL)_pruneManagedObjects;
- (BOOL)ageOutAnalyticsWithReason:(id)a3 withExtraWeeks:(unint64_t)a4 withError:(id *)a5;
- (BOOL)managedObjectContextSave:(BOOL)a3 reset:(BOOL)a4 release:(BOOL)a5 withError:(id *)a6;
- (BOOL)saveManagedObjectContextWithError:(id *)a3;
- (BOOL)updateBandsInUniqueMO:(id)a3;
- (BOOL)updateUsage:(id)a3 with:(id)a4 on:(id)a5 at:(id)a6;
- (BOOL)validateUniqueObjectFor:(id)a3 withConstraints:(id)a4 withError:(id *)a5;
- (NSManagedObjectContext)backgroundMOC;
- (double)analyticsAgeOutTimeIntervalSecs;
- (id)_datedRecordEntities;
- (id)_entitiesWithDate;
- (id)_usageEntities;
- (id)bssForBssid:(id)a3 prefetchProperties:(id)a4 withError:(id *)a5;
- (id)bssidCountBy:(id)a3 inUniqueMO:(id)a4 withError:(id *)a5;
- (id)createNewObjectForEntity:(id)a3 withError:(id *)a4;
- (id)createUniqueObjectFor:(id)a3 withConstraints:(id)a4 withError:(id *)a5;
- (id)datePropertyForEntity:(id)a3;
- (id)entitiesWithProperties:(id)a3;
- (id)expressionWithAggregateFunction:(id)a3 overField:(id)a4 called:(id)a5;
- (id)fetch:(id)a3 withError:(id *)a4;
- (id)fetchDefaultAggregatedPropertyIn:(id)a3 withPredicate:(id)a4 groupBy:(id)a5 having:(id)a6 withSorting:(id)a7 withError:(id *)a8;
- (id)fetchDistinctPropertiesIn:(id)a3 withPredicate:(id)a4 withSorting:(id)a5 withPrefetchedProperties:(id)a6 withLimit:(unint64_t)a7 withError:(id *)a8;
- (id)fetchObjects:(id)a3 withPredicate:(id)a4 withSorting:(id)a5 withPrefetchedProperties:(id)a6 withLimit:(unint64_t)a7 withError:(id *)a8;
- (id)lanContainingBSS:(id)a3 prefetchProperties:(id)a4 withError:(id *)a5;
- (id)lanFor:(id)a3 prefetchProperties:(id)a4 withError:(id *)a5;
- (id)lansInNetwork:(id)a3 withError:(id *)a4;
- (id)lansWithPredicate:(id)a3 inNetworksWithPredicate:(id)a4 withError:(id *)a5;
- (id)lansWithPredicate:(id)a3 prefetchedProperties:(id)a4 withError:(id *)a5;
- (id)mostRecentDatedEvent:(id)a3 before:(id)a4 withPrefetchedProperties:(id)a5 withError:(id *)a6;
- (id)mostRecentDatedEvents:(unint64_t)a3 withError:(id *)a4;
- (id)mostRecentPolicy:(id)a3 withError:(id *)a4;
- (id)mostRecentPolicyFilteredBy:(id)a3 withError:(id *)a4;
- (id)mostRecentRoamsFromBSS:(id)a3 withPrefetchedProperties:(id)a4 limit:(unint64_t)a5;
- (id)mostRecentRoamsFromBssid:(id)a3 withPrefetchedProperties:(id)a4 limit:(unint64_t)a5;
- (id)networkForBSSID:(id)a3 prefetchProperties:(id)a4 withError:(id *)a5;
- (id)networkForSSID:(id)a3 prefetchProperties:(id)a4 withError:(id *)a5;
- (id)networksInLAN:(id)a3 withError:(id *)a4;
- (id)networksInSameLANsAsBSS:(id)a3 withError:(id *)a4;
- (id)networksInSameLANsAsNetwork:(id)a3 withError:(id *)a4;
- (id)networksWithPredicate:(id)a3 inLANs:(id)a4 withError:(id *)a5;
- (id)networksWithPredicate:(id)a3 inLANsWithPredicate:(id)a4 withError:(id *)a5;
- (id)networksWithPredicate:(id)a3 prefetchedProperties:(id)a4 withError:(id *)a5;
- (id)networksWithTrait:(unint64_t)a3 prefetchedProperties:(id)a4 withError:(id *)a5;
- (id)newDatedEventObjectFor:(id)a3 withDate:(id)a4 withError:(id *)a5;
- (id)performPruneBasedOnStoreSize;
- (id)predicateForEntity:(id)a3 before:(id)a4 withError:(id *)a5;
- (id)predicateForEntity:(id)a3 newerThan:(double)a4 withError:(id *)a5;
- (id)predicateForEntity:(id)a3 newerThanDate:(id)a4 withError:(id *)a5;
- (id)predicateForEntity:(id)a3 olderThan:(double)a4 withError:(id *)a5;
- (id)predicateForLAN:(id)a3 withError:(id *)a4;
- (id)predicateForLan:(id)a3 withError:(id *)a4;
- (id)predicateForNetwork:(id)a3 atKeyPath:(id)a4 withError:(id *)a5;
- (id)predicateForUniqueMO:(id)a3 withConstraints:(id)a4 atKeyPath:(id)a5 withError:(id *)a6;
- (id)predicatesForRecordsWithNoBssRelationshipByEntities:(id)a3 onlyDated:(BOOL)a4;
- (id)requestFor:(unint64_t)a3 forEntity:(id)a4 orForEntityWithName:(id)a5 withPredicate:(id)a6 withSorting:(id)a7 withPrefetchedProperties:(id)a8 groupBy:(id)a9 having:(id)a10 withLimit:(unint64_t)a11;
- (id)requestForObjectsInEntity:(id)a3 withBSSInList:(id)a4;
- (id)uniqueObjectFor:(id)a3 withConstraints:(id)a4 allowCreate:(BOOL)a5 prefetchProperties:(id)a6 withError:(id *)a7;
- (id)uniqueObjectFor:(id)a3 withPredicate:(id)a4 prefetchProperties:(id)a5 withError:(id *)a6;
- (id)uniqueObjectPropertiesFor:(id)a3 withConstraints:(id)a4 prefetchProperties:(id)a5 withError:(id *)a6;
- (id)uniqueObjectPropertiesFor:(id)a3 withPredicate:(id)a4 prefetchProperties:(id)a5 withError:(id *)a6;
- (id)usageOf:(id)a3 inUsageTable:(id)a4 forDateSpan:(id)a5 withSorting:(id)a6 withError:(id *)a7;
- (int64_t)defaultFetchLimitForEntity:(id)a3;
- (int64_t)defaultFetchMaxAgeForEntity:(id)a3;
- (unint64_t)batchDelete:(id)a3 newerThanDate:(id)a4 andPredicate:(id)a5 withError:(id *)a6;
- (unint64_t)batchDelete:(id)a3 olderThan:(double)a4 withError:(id *)a5;
- (unint64_t)batchDelete:(id)a3 where:(id)a4 withError:(id *)a5;
- (unint64_t)batchDelete:(id)a3 withError:(id *)a4;
- (unint64_t)batchDeleteBSSList:(id)a3 withError:(id *)a4;
- (unint64_t)batchDeleteDatedEntitiesOlderThan:(double)a3 withError:(id *)a4;
- (unint64_t)batchDeleteEntitiesWithNilBssWithError:(id *)a3;
- (unint64_t)batchDeleteUsageRecordsHavingBSSInList:(id)a3 withError:(id *)a4;
- (unint64_t)countObjects:(id)a3 withPredicate:(id)a4 withError:(id *)a5;
- (unint64_t)fetchCount:(id)a3 withError:(id *)a4;
- (unint64_t)lansCountInNetwork:(id)a3 withError:(id *)a4;
- (unint64_t)networkCountForLAN:(id)a3 withError:(id *)a4;
- (unint64_t)successfulRoamCountFrom:(id)a3 to:(id)a4;
- (void)releaseBackgroundMOC;
- (void)resetManagedObjectContext;
@end

@implementation WAPersistentContainer

- (NSManagedObjectContext)backgroundMOC
{
  v17 = *MEMORY[0x1E69E9840];
  backgroundMOC = self->_backgroundMOC;
  if (!backgroundMOC)
  {
    v4 = [(NSPersistentContainer *)self newBackgroundContext];
    v5 = self->_backgroundMOC;
    self->_backgroundMOC = v4;

    v6 = [MEMORY[0x1E695D650] mergeByPropertyObjectTrumpMergePolicy];
    [(NSManagedObjectContext *)self->_backgroundMOC setMergePolicy:v6];

    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_backgroundMOC;
      v11 = 136446722;
      v12 = "[WAPersistentContainer backgroundMOC]";
      v13 = 1024;
      v14 = 1462;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Created BG context(%p)", &v11, 0x1Cu);
    }

    backgroundMOC = self->_backgroundMOC;
  }

  v9 = *MEMORY[0x1E69E9840];

  return backgroundMOC;
}

- (void)resetManagedObjectContext
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_backgroundMOC)
  {
    v3 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      backgroundMOC = self->_backgroundMOC;
      v8 = 136446722;
      v9 = "[WAPersistentContainer resetManagedObjectContext]";
      v10 = 1024;
      v11 = 1418;
      v12 = 2048;
      v13 = backgroundMOC;
      _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:moc reset (%p)", &v8, 0x1Cu);
    }

    v5 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v5))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer resetManagedObjectContext", "", &v8, 2u);
    }

    [(NSManagedObjectContext *)self->_backgroundMOC reset];
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer resetManagedObjectContext", "", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)releaseBackgroundMOC
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (self->_backgroundMOC)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      backgroundMOC = self->_backgroundMOC;
      v7 = 136446722;
      v8 = "[WAPersistentContainer releaseBackgroundMOC]";
      v9 = 1024;
      v10 = 1471;
      v11 = 2048;
      v12 = backgroundMOC;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:moc release (%p)", &v7, 0x1Cu);
    }

    [(WAPersistentContainer *)self setBackgroundMOC:0];
  }

  objc_autoreleasePoolPop(v3);
  v6 = *MEMORY[0x1E69E9840];
}

+ (WAPersistentContainer)waPersistentContainerWithName:(id)a3 managedObjectModel:(id)a4 storeDescriptor:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSPersistentContainer *)[WAPersistentContainer alloc] initWithName:v7 managedObjectModel:v8];
  if (v10)
  {
    v22[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [(NSPersistentContainer *)v10 setPersistentStoreDescriptions:v11];
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "+[WAPersistentContainer waPersistentContainerWithName:managedObjectModel:storeDescriptor:]";
      v16 = 1024;
      v17 = 59;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to get a PersistentContainer for model name: %@ (%@)", &v14, 0x26u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)createUniqueObjectFor:(id)a3 withConstraints:(id)a4 withError:(id *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v8 name];
    *buf = 136446722;
    v39 = "[WAPersistentContainer createUniqueObjectFor:withConstraints:withError:]";
    v40 = 1024;
    v41 = 78;
    v42 = 2112;
    v43 = v11;
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Creating new %@", buf, 0x1Cu);
  }

  v12 = [v8 name];
  v13 = [(WAPersistentContainer *)self createNewObjectForEntity:v12 withError:a5];

  if (!v13)
  {
    v22 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v23 = [v8 name];
      *buf = 136446722;
      v39 = "[WAPersistentContainer createUniqueObjectFor:withConstraints:withError:]";
      v40 = 1024;
      v41 = 81;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_FAULT, "%{public}s::%d:Failed to create a %@", buf, 0x1Cu);
    }

    v20 = WALogCategoryDeviceStoreHandle();
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_17;
    }

LABEL_16:
    v29 = [v8 name];
    *buf = 138412290;
    v39 = v29;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer uniqueObjectFor", "%@ - FAILED", buf, 0xCu);

LABEL_17:
    v14 = 0;
LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v25 = [v13 entity];
      v26 = [v25 name];
      v27 = objc_opt_class();
      *buf = 136446978;
      v39 = "[WAPersistentContainer createUniqueObjectFor:withConstraints:withError:]";
      v40 = 1024;
      v41 = 86;
      v42 = 2112;
      v43 = v26;
      v44 = 2112;
      v45 = v27;
      v28 = v27;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_FAULT, "%{public}s::%d:Object %@ (%@) is not a UniqueMo entity type", buf, 0x26u);
    }

    v20 = WALogCategoryDeviceStoreHandle();
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = v13;
  v15 = [v8 managedObjectClassName];
  NSClassFromString(v15);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v32 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      v33 = [v8 name];
      v34 = [v8 managedObjectClassName];
      *buf = 136446978;
      v39 = "[WAPersistentContainer createUniqueObjectFor:withConstraints:withError:]";
      v40 = 1024;
      v41 = 93;
      v42 = 2112;
      v43 = v33;
      v44 = 2112;
      v45 = v34;
      _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_FAULT, "%{public}s::%d:Entity %@ is not a %@ entity type", buf, 0x26u);
    }

    v20 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v20))
    {
      v35 = [v8 name];
      *buf = 138412290;
      v39 = v35;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer uniqueObjectFor", "%@ - FAILED", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v17 = objc_opt_class();
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __73__WAPersistentContainer_createUniqueObjectFor_withConstraints_withError___block_invoke;
  v36[3] = &unk_1E830E578;
  v18 = v14;
  v37 = v18;
  [v17 performBlock:v36 overConstraintsOfEntity:v8 withConstraints:v9];
  v19 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v39 = "[WAPersistentContainer createUniqueObjectFor:withConstraints:withError:]";
    v40 = 1024;
    v41 = 104;
    v42 = 2112;
    v43 = v18;
    _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Added new %@", buf, 0x1Cu);
  }

  v14 = v18;
  v20 = v37;
  v21 = v14;
LABEL_19:

  v30 = *MEMORY[0x1E69E9840];

  return v21;
}

uint64_t __73__WAPersistentContainer_createUniqueObjectFor_withConstraints_withError___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) setValue:a3 forKey:a2];
  }

  return result;
}

- (id)uniqueObjectPropertiesFor:(id)a3 withConstraints:(id)a4 prefetchProperties:(id)a5 withError:(id *)a6
{
  v34[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v13))
  {
    v14 = [v10 name];
    v25 = 138412290;
    v26 = v14;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer uniqueObjectPropertiesFor", "%@", &v25, 0xCu);
  }

  if (v11)
  {
    v15 = [(WAPersistentContainer *)self predicateForUniqueMO:v10 withConstraints:v11 withError:a6];
    if (v15)
    {
      v16 = [(WAPersistentContainer *)self uniqueObjectPropertiesFor:v10 withPredicate:v15 prefetchProperties:v12 withError:a6];
      if (!v16)
      {
        v17 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v10 name];
          v25 = 136446978;
          v26 = "[WAPersistentContainer uniqueObjectPropertiesFor:withConstraints:prefetchProperties:withError:]";
          v27 = 1024;
          v28 = 124;
          v29 = 2112;
          v30 = v18;
          v31 = 2112;
          v32 = v11;
          _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@ for %@ not found", &v25, 0x26u);
        }
      }

      v19 = WALogCategoryDeviceStoreHandle();
      if (os_signpost_enabled(v19))
      {
        v20 = [v10 name];
        v25 = 138412290;
        v26 = v20;
        _os_signpost_emit_with_name_impl(&dword_1C8460000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer uniqueObjectPropertiesFor", "%@", &v25, 0xCu);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v23 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = 136446466;
      v26 = "[WAPersistentContainer uniqueObjectPropertiesFor:withConstraints:prefetchProperties:withError:]";
      v27 = 1024;
      v28 = 117;
      _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:Invalid input (nil constraints)", &v25, 0x12u);
    }

    if (a6)
    {
      v24 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A588];
      v34[0] = @"WAErrorCodeInvalidInput";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      [v24 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v19];
      v15 = 0;
      *a6 = v16 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v15 = 0;
  }

  v16 = 0;
LABEL_12:

  v21 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)uniqueObjectFor:(id)a3 withConstraints:(id)a4 allowCreate:(BOOL)a5 prefetchProperties:(id)a6 withError:(id *)a7
{
  v9 = a5;
  v38[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v15))
  {
    v16 = [v12 name];
    v29 = 138412290;
    v30 = v16;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer uniqueObjectFor", "%@", &v29, 0xCu);
  }

  if (v13)
  {
    v17 = [(WAPersistentContainer *)self predicateForUniqueMO:v12 withConstraints:v13 withError:a7];
    if (v17)
    {
      v18 = [(WAPersistentContainer *)self uniqueObjectFor:v12 withPredicate:v17 prefetchProperties:v14 withError:a7];
      if (v18)
      {
LABEL_8:
        v19 = v18;
        goto LABEL_9;
      }

      if (v9)
      {
        v18 = [(WAPersistentContainer *)self createUniqueObjectFor:v12 withConstraints:v13 withError:a7];
        goto LABEL_8;
      }

      v24 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v12 name];
        v29 = 136446978;
        v30 = "[WAPersistentContainer uniqueObjectFor:withConstraints:allowCreate:prefetchProperties:withError:]";
        v31 = 1024;
        v32 = 155;
        v33 = 2112;
        v34 = v25;
        v35 = 2112;
        v36 = v13;
        _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@ for %@ not found", &v29, 0x26u);
      }
    }
  }

  else
  {
    v26 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = 136446466;
      v30 = "[WAPersistentContainer uniqueObjectFor:withConstraints:allowCreate:prefetchProperties:withError:]";
      v31 = 1024;
      v32 = 141;
      _os_log_impl(&dword_1C8460000, v26, OS_LOG_TYPE_ERROR, "%{public}s::%d:Invalid input (nil constraints)", &v29, 0x12u);
    }

    if (a7)
    {
      v27 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A588];
      v38[0] = @"WAErrorCodeInvalidInput";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      *a7 = [v27 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v28];
    }

    v17 = 0;
  }

  v19 = 0;
LABEL_9:
  v20 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v20))
  {
    v21 = [v12 name];
    v29 = 138412290;
    v30 = v21;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer uniqueObjectFor", "%@", &v29, 0xCu);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)predicateForLAN:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = +[LANMO entity];
  v8 = [LANMO constraintsWithDhcpServerInfo:v6];

  v9 = [(WAPersistentContainer *)self predicateForUniqueMO:v7 withConstraints:v8 atKeyPath:@"lan" withError:a4];

  return v9;
}

- (id)predicateForNetwork:(id)a3 atKeyPath:(id)a4 withError:(id *)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF = %@", v8];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = +[NetworkMO entity];
      v26 = @"ssid";
      v27[0] = v8;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      a5 = [(WAPersistentContainer *)self predicateForUniqueMO:v10 withConstraints:v11 atKeyPath:v9 withError:a5];
    }

    else
    {
      v12 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446722;
        v21 = "[WAPersistentContainer predicateForNetwork:atKeyPath:withError:]";
        v22 = 1024;
        v23 = 188;
        v24 = 2112;
        v25 = objc_opt_class();
        v13 = v25;
        _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, "%{public}s::%d:network of type %@ is not supported", buf, 0x1Cu);
      }

      if (a5)
      {
        v14 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A588];
        v19 = @"WAErrorCodeInvalidInput";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        *a5 = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v15];

        a5 = 0;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return a5;
}

- (id)predicateForUniqueMO:(id)a3 withConstraints:(id)a4 atKeyPath:(id)a5 withError:(id *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  if (v11)
  {
    if ([(WAPersistentContainer *)self validateUniqueObjectFor:v10 withConstraints:v11 withError:a6])
    {
      v14 = objc_opt_class();
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __82__WAPersistentContainer_predicateForUniqueMO_withConstraints_atKeyPath_withError___block_invoke;
      v24 = &unk_1E830E5A0;
      v25 = v12;
      v15 = v13;
      v26 = v15;
      [v14 performBlock:&v21 overConstraintsOfEntity:v10 withConstraints:v11];

      a6 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:{v15, v21, v22, v23, v24}];
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v18 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v30 = "[WAPersistentContainer predicateForUniqueMO:withConstraints:atKeyPath:withError:]";
    v31 = 1024;
    v32 = 201;
    _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:Invalid input (nil constraints)", buf, 0x12u);
  }

  if (a6)
  {
    v19 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A588];
    v28 = @"WAErrorCodeInvalidInput";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *a6 = [v19 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v20];

LABEL_11:
    a6 = 0;
  }

LABEL_4:

  v16 = *MEMORY[0x1E69E9840];

  return a6;
}

void __82__WAPersistentContainer_predicateForUniqueMO_withConstraints_atKeyPath_withError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K == %@", v6, v9, v5];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.%K == %@", v9, v5, v8];
    }
    v7 = ;
    [*(a1 + 40) addObject:v7];
  }
}

- (id)predicateForLan:(id)a3 withError:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF = %@", v6];
    v8 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    v7 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = +[LANMO entity];
  v10 = [LANMO constraintsWithDhcpServerInfo:v6];
  v13 = 0;
  v7 = [(WAPersistentContainer *)self predicateForUniqueMO:v9 withConstraints:v10 withError:&v13];
  v8 = v13;

  if (a4)
  {
LABEL_8:
    v11 = v8;
    *a4 = v8;
  }

LABEL_9:

  return v7;
}

- (id)uniqueObjectFor:(id)a3 withPredicate:(id)a4 prefetchProperties:(id)a5 withError:(id *)a6
{
  v8 = [(WAPersistentContainer *)self requestForObjects:a3 withPredicate:a4 withSorting:0 withPrefetchedProperties:a5 withLimit:1];
  v9 = [(WAPersistentContainer *)self fetch:v8 withError:a6];
  v10 = [v9 firstObject];

  return v10;
}

- (id)uniqueObjectPropertiesFor:(id)a3 withPredicate:(id)a4 prefetchProperties:(id)a5 withError:(id *)a6
{
  v8 = [(WAPersistentContainer *)self requestForDistinctProperties:a3 withPredicate:a4 withSorting:0 withPrefetchedProperties:a5 withLimit:1];
  v9 = [(WAPersistentContainer *)self fetch:v8 withError:a6];
  v10 = [v9 firstObject];

  return v10;
}

- (id)bssForBssid:(id)a3 prefetchProperties:(id)a4 withError:(id *)a5
{
  v8 = a4;
  v9 = [BSSMO formattedMACAddressNotation:a3 as:6];
  v10 = [(WAPersistentContainer *)self bssForBSSID:v9 allowCreate:0 prefetchProperties:v8 withError:a5];

  return v10;
}

- (id)networkForSSID:(id)a3 prefetchProperties:(id)a4 withError:(id *)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[NetworkMO entity];
  v26 = @"ssid";
  v27[0] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v12 = [(WAPersistentContainer *)self uniqueObjectFor:v10 withConstraints:v11 allowCreate:0 prefetchProperties:v9 withError:a5];

  if (a5)
  {
    if (*a5 | v12)
    {
      goto LABEL_5;
    }
  }

  else if (v12)
  {
    goto LABEL_5;
  }

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v21 = "[WAPersistentContainer networkForSSID:prefetchProperties:withError:]";
    v22 = 1024;
    v23 = 319;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Network %@ is not known", buf, 0x1Cu);
  }

  if (a5)
  {
    v16 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A588];
    v19 = @"WAErrorCodeStore_NetworkNotFound";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    *a5 = [v16 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9039 userInfo:v17];
  }

LABEL_5:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)networkForBSSID:(id)a3 prefetchProperties:(id)a4 withError:(id *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[NetworkMO entity];
  v11 = [NetworkMO predicateForNetworkContainingBSSID:v8];
  v12 = [(WAPersistentContainer *)self uniqueObjectFor:v10 withPredicate:v11 prefetchProperties:v9 withError:a5];

  if (a5)
  {
    if (*a5 | v12)
    {
      goto LABEL_5;
    }
  }

  else if (v12)
  {
    goto LABEL_5;
  }

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v21 = "[WAPersistentContainer networkForBSSID:prefetchProperties:withError:]";
    v22 = 1024;
    v23 = 337;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Network for %@ is not known", buf, 0x1Cu);
  }

  if (a5)
  {
    v16 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A588];
    v19 = @"WAErrorCodeStore_NetworkNotFound";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    *a5 = [v16 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9039 userInfo:v17];
  }

LABEL_5:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)networksWithTrait:(unint64_t)a3 prefetchedProperties:(id)a4 withError:(id *)a5
{
  v8 = a4;
  v9 = [NetworkMO predicateForNetworkWithTrait:a3];
  if (v9)
  {
    v10 = +[NetworkMO entity];
    v11 = [(WAPersistentContainer *)self fetchObjects:v10 withPredicate:v9 withSorting:0 withPrefetchedProperties:v8 withLimit:0 withError:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)networksWithPredicate:(id)a3 prefetchedProperties:(id)a4 withError:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = +[NetworkMO entity];
    a5 = [(WAPersistentContainer *)self fetchObjects:v10 withPredicate:v8 withSorting:0 withPrefetchedProperties:v9 withLimit:0 withError:a5];
  }

  else if (a5)
  {
    v13 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"WAErrorCodeStore_Fault";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a5 = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v14];

    a5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return a5;
}

- (id)lanFor:(id)a3 prefetchProperties:(id)a4 withError:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[LANMO entity];
  v11 = [LANMO constraintsWithDhcpServerInfo:v8];
  v12 = [(WAPersistentContainer *)self uniqueObjectFor:v10 withConstraints:v11 allowCreate:0 prefetchProperties:v9 withError:a5];

  if (a5)
  {
    if (*a5 | v12)
    {
      goto LABEL_5;
    }
  }

  else if (v12)
  {
    goto LABEL_5;
  }

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [LANMO constraintsWithDhcpServerInfo:v8];
    *buf = 136446722;
    v22 = "[WAPersistentContainer lanFor:prefetchProperties:withError:]";
    v23 = 1024;
    v24 = 393;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:LAN for %@ not found", buf, 0x1Cu);
  }

  if (a5)
  {
    v17 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A588];
    v20 = @"WAErrorCodeStore_LANNotFound";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    *a5 = [v17 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9040 userInfo:v18];
  }

LABEL_5:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)lanContainingBSS:(id)a3 prefetchProperties:(id)a4 withError:(id *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v21 = 0;
  v9 = [LANMO predicateForLanContainingBSS:a3 withError:&v21];
  v10 = v21;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v11 = +[LANMO entity];
    v20 = 0;
    v12 = [(WAPersistentContainer *)self uniqueObjectFor:v11 withPredicate:v9 prefetchProperties:v8 withError:&v20];
    v13 = v20;

    if (v13)
    {
      goto LABEL_5;
    }

    if (v12)
    {
      v13 = 0;
LABEL_5:
      if (!a5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v25 = "[WAPersistentContainer lanContainingBSS:prefetchProperties:withError:]";
      v26 = 1024;
      v27 = 416;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:LAN for %@ not found", buf, 0x1Cu);
    }

    v18 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A588];
    v23 = @"WAErrorCodeStore_LANNotFound";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v13 = [v18 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9040 userInfo:v19];
  }

  v12 = 0;
  if (a5)
  {
LABEL_6:
    v14 = v13;
    *a5 = v13;
  }

LABEL_7:

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)lansWithPredicate:(id)a3 prefetchedProperties:(id)a4 withError:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = +[LANMO entity];
    a5 = [(WAPersistentContainer *)self fetchObjects:v10 withPredicate:v8 withSorting:0 withPrefetchedProperties:v9 withLimit:0 withError:a5];
  }

  else if (a5)
  {
    v13 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"WAErrorCodeStore_Fault";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a5 = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v14];

    a5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return a5;
}

- (id)bssidCountBy:(id)a3 inUniqueMO:(id)a4 withError:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*(*(&v26 + 1) + 8 * i) ascending:1];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v13);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"lan = %@", v9];
  }

  else
  {
    v17 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"network = %@", v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [(WAPersistentContainer *)self predicateForLAN:v9 withError:a5];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_18;
      }

      v18 = [(WAPersistentContainer *)self predicateForNetwork:v9 atKeyPath:@"network" withError:a5];
    }
  }

  v19 = v18;

  v17 = v19;
LABEL_18:
  if (v17)
  {
    v20 = +[BSSMO entity];
    v21 = [(WAPersistentContainer *)self fetchDefaultAggregatedPropertyIn:v20 withPredicate:v17 groupBy:v11 having:0 withSorting:v10 withError:a5];
  }

  else
  {
    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      *buf = 136446722;
      v31 = "[WAPersistentContainer bssidCountBy:inUniqueMO:withError:]";
      v32 = 1024;
      v33 = 456;
      v34 = 2112;
      v35 = v24;
      v25 = v24;
    }

    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)networksWithPredicate:(id)a3 inLANsWithPredicate:(id)a4 withError:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(WAPersistentContainer *)self lansWithPredicate:v9 prefetchedProperties:0 withError:a5];
  v11 = *a5;
  v12 = WALogCategoryDeviceStoreHandle();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *a5;
      v18 = 136446978;
      v19 = "[WAPersistentContainer networksWithPredicate:inLANsWithPredicate:withError:]";
      v20 = 1024;
      v21 = 478;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Fetching lansWithPredicate:%@ failed with %@", &v18, 0x26u);
    }

    v14 = 0;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136447234;
      v19 = "[WAPersistentContainer networksWithPredicate:inLANsWithPredicate:withError:]";
      v20 = 1024;
      v21 = 479;
      v22 = 2048;
      v23 = [v10 count];
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found %lu lans in %@: %@", &v18, 0x30u);
    }

    v14 = [(WAPersistentContainer *)self networksWithPredicate:v8 inLANs:v10 withError:a5];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)networksWithPredicate:(id)a3 inLANs:(id)a4 withError:(id *)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v33 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v35;
    *&v12 = 136447234;
    v31 = v12;
    obj = v10;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = MEMORY[0x1E695DF70];
        v18 = [NetworkMO predicateForNetworkInLAN:v16, v31];
        v19 = [v17 arrayWithObject:v18];

        if (*a5)
        {
          v21 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v26 = *a5;
            *buf = 136446722;
            v41 = "[WAPersistentContainer networksWithPredicate:inLANs:withError:]";
            v42 = 1024;
            v43 = 495;
            v44 = 2112;
            *v45 = v26;
            _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:Bailing: %@", buf, 0x1Cu);
          }

          goto LABEL_22;
        }

        if (v8)
        {
          [v19 addObject:v8];
        }

        v20 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v19];
        v21 = [(WAPersistentContainer *)self networksWithPredicate:v20 prefetchedProperties:&unk_1F483E4A0 withError:a5];

        if (*a5)
        {
          v27 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = *a5;
            *buf = 136446978;
            v41 = "[WAPersistentContainer networksWithPredicate:inLANs:withError:]";
            v42 = 1024;
            v43 = 502;
            v44 = 2112;
            *v45 = v16;
            *&v45[8] = 2112;
            *&v45[10] = v28;
            _os_log_impl(&dword_1C8460000, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:Fetching networksInLAN:%@ failed with %@", buf, 0x26u);
          }

LABEL_22:
          v10 = obj;

          v25 = obj;
          goto LABEL_23;
        }

        [v33 addObjectsFromArray:v21];
        [v16 setT_networksCount:{-[NSObject count](v21, "count")}];
        v22 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = [v16 t_networksCount];
          *buf = v31;
          v41 = "[WAPersistentContainer networksWithPredicate:inLANs:withError:]";
          v42 = 1024;
          v43 = 505;
          v44 = 1024;
          *v45 = v23;
          *&v45[4] = 2112;
          *&v45[6] = v16;
          *&v45[14] = 2112;
          *&v45[16] = v21;
          _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found %d networks in %@: %@", buf, 0x2Cu);
        }
      }

      v10 = obj;
      v13 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if ([v10 count] >= 2 && a5)
  {
    v24 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A588];
    v39 = @"WAErrorCodeStore_MultiLANInNetwork";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *a5 = [v24 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9041 userInfo:v25];
LABEL_23:
  }

  v29 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)networksInLAN:(id)a3 withError:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v18 = 0;
    v8 = &v18;
    v9 = [(WAPersistentContainer *)self networksWithPredicate:0 inLANs:v7 withError:&v18];
LABEL_5:
    v11 = v9;
    v12 = *v8;
    goto LABEL_6;
  }

  v17 = 0;
  v7 = [(WAPersistentContainer *)self predicateForLan:v6 withError:&v17];
  v10 = v17;
  if (!v10)
  {
    v16 = 0;
    v8 = &v16;
    v9 = [(WAPersistentContainer *)self networksWithPredicate:0 inLANsWithPredicate:v7 withError:&v16];
    goto LABEL_5;
  }

  v12 = v10;
  v11 = 0;
LABEL_6:

  if (a4)
  {
    v13 = v12;
    *a4 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (unint64_t)networkCountForLAN:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [v6 t_networksCount];
  v8 = +[LANMO entity];
  v9 = [v8 attributesByName];
  v10 = [v9 objectForKeyedSubscript:@"t_networksCount"];
  v11 = [v10 defaultValue];
  v12 = [v11 longLongValue];

  if (v12 == v7)
  {
    v13 = [(WAPersistentContainer *)self networksInLAN:v6 withError:a4];
  }

  v14 = [v6 t_networksCount];

  return v14;
}

- (id)networksInSameLANsAsNetwork:(id)a3 withError:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0;
  v7 = [LANMO predicateForLANsInNetwork:v6 withError:&v16];
  v8 = v16;
  if (!v8)
  {
    v15 = 0;
    v9 = [(WAPersistentContainer *)self networksWithPredicate:0 inLANsWithPredicate:v7 withError:&v15];
    v10 = v15;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = v8;
  v14 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v18 = "[WAPersistentContainer networksInSameLANsAsNetwork:withError:]";
    v19 = 1024;
    v20 = 574;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:predicateForLanInNetwork:%@ failed %@", buf, 0x26u);
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v11 = v10;
    *a4 = v10;
  }

LABEL_4:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)networksInSameLANsAsBSS:(id)a3 withError:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0;
  v7 = [LANMO predicateForLanContainingBSS:v6 withError:&v16];
  v8 = v16;
  if (!v8)
  {
    v15 = 0;
    v9 = [(WAPersistentContainer *)self networksWithPredicate:0 inLANsWithPredicate:v7 withError:&v15];
    v10 = v15;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = v8;
  v14 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v18 = "[WAPersistentContainer networksInSameLANsAsBSS:withError:]";
    v19 = 1024;
    v20 = 589;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:predicateForLanContainingBSS:%@ failed %@", buf, 0x26u);
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v11 = v10;
    *a4 = v10;
  }

LABEL_4:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)lansWithPredicate:(id)a3 inNetworksWithPredicate:(id)a4 withError:(id *)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v35 = objc_opt_new();
  v10 = [(WAPersistentContainer *)self networksWithPredicate:v9 prefetchedProperties:&unk_1F483E4B8 withError:a5];
  v11 = *a5;
  v12 = WALogCategoryDeviceStoreHandle();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v31 = *a5;
      *buf = 136446978;
      v42 = "[WAPersistentContainer lansWithPredicate:inNetworksWithPredicate:withError:]";
      v43 = 1024;
      v44 = 608;
      v45 = 2112;
      *v46 = v9;
      *&v46[8] = 2112;
      *&v46[10] = v31;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Fetching networksWithPredicate:%@ failed with %@", buf, 0x26u);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447234;
      v42 = "[WAPersistentContainer lansWithPredicate:inNetworksWithPredicate:withError:]";
      v43 = 1024;
      v44 = 609;
      v45 = 2048;
      *v46 = [v10 count];
      *&v46[8] = 2112;
      *&v46[10] = v9;
      *&v46[18] = 2112;
      *&v46[20] = v10;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found %lu networks in %@: %@", buf, 0x30u);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v10;
    v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v32 = v10;
      v33 = v9;
      v16 = *v37;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          v19 = MEMORY[0x1E695DF70];
          v20 = [LANMO predicateForLANsInNetwork:v18 withError:a5, v32, v33];
          v21 = [v19 arrayWithObject:v20];

          if (*a5)
          {
            v23 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v26 = *a5;
              *buf = 136446722;
              v42 = "[WAPersistentContainer lansWithPredicate:inNetworksWithPredicate:withError:]";
              v43 = 1024;
              v44 = 613;
              v45 = 2112;
              *v46 = v26;
              _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:Bailing: %@", buf, 0x1Cu);
            }

            goto LABEL_24;
          }

          if (v8)
          {
            [v21 addObject:v8];
          }

          v22 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v21];
          v23 = [(WAPersistentContainer *)self lansWithPredicate:v22 prefetchedProperties:0 withError:a5];

          if (*a5)
          {
            v27 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = *a5;
              *buf = 136446978;
              v42 = "[WAPersistentContainer lansWithPredicate:inNetworksWithPredicate:withError:]";
              v43 = 1024;
              v44 = 620;
              v45 = 2112;
              *v46 = v18;
              *&v46[8] = 2112;
              *&v46[10] = v28;
              _os_log_impl(&dword_1C8460000, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:Fetching lansWithPredicate:%@ failed with %@", buf, 0x26u);
            }

LABEL_24:
            v10 = v32;
            v9 = v33;
            v13 = obj;

            goto LABEL_25;
          }

          [v35 addObjectsFromArray:v23];
          [v18 setT_lansCount:{-[NSObject count](v23, "count")}];
          v24 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = [v18 t_lansCount];
            *buf = 136447234;
            v42 = "[WAPersistentContainer lansWithPredicate:inNetworksWithPredicate:withError:]";
            v43 = 1024;
            v44 = 623;
            v45 = 1024;
            *v46 = v25;
            *&v46[4] = 2112;
            *&v46[6] = v18;
            *&v46[14] = 2112;
            *&v46[16] = v23;
            _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found %d lans in %@: %@", buf, 0x2Cu);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v10 = v32;
      v9 = v33;
    }

    v13 = obj;
  }

LABEL_25:

  v29 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)lansInNetwork:(id)a3 withError:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0;
  v7 = [(WAPersistentContainer *)self predicateForNetwork:v6 atKeyPath:0 withError:&v16];
  v8 = v16;
  if (!v8)
  {
    v15 = 0;
    v9 = [(WAPersistentContainer *)self lansInNetworksWithPredicate:v7 withError:&v15];
    v10 = v15;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = v8;
  v14 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v18 = "[WAPersistentContainer lansInNetwork:withError:]";
    v19 = 1024;
    v20 = 639;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to fetch LAN for %@: %@", buf, 0x26u);
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v11 = v10;
    *a4 = v10;
  }

LABEL_4:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (unint64_t)lansCountInNetwork:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [v6 t_lansCount];
  v8 = +[NetworkMO entity];
  v9 = [v8 attributesByName];
  v10 = [v9 objectForKeyedSubscript:@"t_lansCount"];
  v11 = [v10 defaultValue];
  v12 = [v11 longLongValue];

  if (v12 == v7)
  {
    v13 = [(WAPersistentContainer *)self lansInNetwork:v6 withError:a4];
  }

  v14 = [v6 t_lansCount];

  return v14;
}

- (BOOL)updateBandsInUniqueMO:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0;
  v25 = 0;
  if (!v4)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v29 = "[WAPersistentContainer updateBandsInUniqueMO:]";
      v30 = 1024;
      v31 = 694;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_FAULT, "%{public}s::%d:nil mo", buf, 0x12u);
    }

    goto LABEL_18;
  }

  v24 = 0;
  v5 = [(WAPersistentContainer *)self bssidCountBy:&unk_1F483E4D0 inUniqueMO:v4 withError:&v24];
  v6 = v24;
  if (v6)
  {
    v7 = v6;
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v4 entity];
      v19 = [v18 name];
      *buf = 136447234;
      v29 = "[WAPersistentContainer updateBandsInUniqueMO:]";
      v30 = 1024;
      v31 = 697;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v4;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch bssidCountByBandIn%@:%@ %@", buf, 0x30u);
    }

LABEL_18:
    LOBYTE(v14) = 0;
    goto LABEL_12;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
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

        v12 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:{@"mostRecentBand", v20}];
        *(&v25 + [v12 shortValue]) = 1;
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v9);
  }

  v13 = 0;
  v14 = 1;
  do
  {
    v14 &= [(WAPersistentContainer *)self setHasBandsForMO:v4 forBand:v13 to:*(&v25 + v13), v20];
    ++v13;
  }

  while (v13 != 3);
LABEL_12:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)updateUsage:(id)a3 with:(id)a4 on:(id)a5 at:(id)a6
{
  v53[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v42 = 0;
  v14 = [(WAPersistentContainer *)self bssForBssid:v12 prefetchProperties:&unk_1F483E4E8 withError:&v42];
  v15 = v42;
  v16 = v15;
  if (!v14 || v15)
  {
    v36 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v44 = "[WAPersistentContainer updateUsage:with:on:at:]";
      v45 = 1024;
      v46 = 722;
      v47 = 2112;
      v48 = v12;
      v49 = 2112;
      v50 = v16;
      _os_log_impl(&dword_1C8460000, v36, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to find BSS record for %@: %@", buf, 0x26u);
    }

    goto LABEL_18;
  }

  v17 = [v10 managedObjectClassName];
  NSClassFromString(v17);
  v18 = objc_opt_respondsToSelector();

  if ((v18 & 1) == 0)
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v36 = [v10 managedObjectClassName];
      v37 = [v10 name];
      *buf = 136446978;
      v44 = "[WAPersistentContainer updateUsage:with:on:at:]";
      v45 = 1024;
      v46 = 724;
      v47 = 2112;
      v48 = v36;
      v49 = 2112;
      v50 = v37;
      v38 = "%{public}s::%d:Class %@ for %@ does not implement constraintsWithBss:date:lqm:";
LABEL_17:
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_FAULT, v38, buf, 0x26u);

LABEL_18:
    }

LABEL_22:
    v33 = 0;
    goto LABEL_10;
  }

  v19 = [v10 managedObjectClassName];
  NSClassFromString(v19);
  v20 = objc_opt_respondsToSelector();

  if ((v20 & 1) == 0)
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v36 = [v10 managedObjectClassName];
      v37 = [v10 name];
      *buf = 136446978;
      v44 = "[WAPersistentContainer updateUsage:with:on:at:]";
      v45 = 1024;
      v46 = 725;
      v47 = 2112;
      v48 = v36;
      v49 = 2112;
      v50 = v37;
      v38 = "%{public}s::%d:Class %@ for %@ does not implement accumulator";
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  v21 = [v10 managedObjectClassName];
  v22 = [NSClassFromString(v21) constraintsWithBss:v14 date:v13 lqm:v11 onEntity:v10];

  v23 = [v10 managedObjectClassName];
  v24 = [NSClassFromString(v23) accumulator];

  v53[0] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
  v41 = 0;
  v26 = [(WAPersistentContainer *)self uniqueObjectFor:v10 withConstraints:v22 allowCreate:1 prefetchProperties:v25 withError:&v41];
  v16 = v41;

  if (!v26 || v16)
  {
    v39 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v44 = "[WAPersistentContainer updateUsage:with:on:at:]";
      v45 = 1024;
      v46 = 732;
      v47 = 2112;
      v48 = v16;
      _os_log_impl(&dword_1C8460000, v39, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to get a record in Weekly RSSI Usage table:%@", buf, 0x1Cu);
    }

    goto LABEL_22;
  }

  v40 = v12;
  [v26 setValue:v14 forKey:@"bss"];
  [v14 setLastSeen:v13];
  v27 = MEMORY[0x1E696AD98];
  v28 = [v26 valueForKey:v24];
  v29 = [v27 numberWithLongLong:{objc_msgSend(v11, "duration") + objc_msgSend(v28, "longLongValue")}];
  [v26 setValue:v29 forKey:v24];

  v30 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v10 name];
    v32 = [v26 valueForKey:v24];
    *buf = 136447234;
    v44 = "[WAPersistentContainer updateUsage:with:on:at:]";
    v45 = 1024;
    v46 = 738;
    v47 = 2112;
    v48 = v31;
    v49 = 2112;
    v50 = v22;
    v51 = 2112;
    v52 = v32;
    _os_log_impl(&dword_1C8460000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:updated %@ for %@ to %@", buf, 0x30u);
  }

  v33 = 1;
  v16 = v26;
  v12 = v40;
LABEL_10:

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

+ (id)dimensionsForUsageEntity:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = objc_opt_new();
  v5 = [v4 managedObjectClassName];
  NSClassFromString(v5);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__WAPersistentContainer_dimensionsForUsageEntity___block_invoke;
    v14[3] = &unk_1E830E5C8;
    v16 = &v17;
    v15 = v4;
    [a1 performBlock:v14 overConstraintsOfEntity:v15 withConstraints:0];
    v7 = v15;
  }

  else
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v11 = [v4 managedObjectClassName];
      v12 = [v4 name];
      *buf = 136446978;
      v24 = "+[WAPersistentContainer dimensionsForUsageEntity:]";
      v25 = 1024;
      v26 = 750;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v13 = v12;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ for %@ is not a Usage Table", buf, 0x26u);
    }
  }

  v8 = v18[5];
  _Block_object_dispose(&v17, 8);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __50__WAPersistentContainer_dimensionsForUsageEntity___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isEqualToString:@"date_ge"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"date_lt") & 1) == 0)
  {
    v3 = [WADeviceAnalyticsUsageDimension dimensionWith:v4 forEntity:*(a1 + 32)];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v3 forKeyedSubscript:v4];
  }
}

- (id)usageOf:(id)a3 inUsageTable:(id)a4 forDateSpan:(id)a5 withSorting:(id)a6 withError:(id *)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = MEMORY[0x1E695DF70];
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [WADeviceAnalyticsUsageDimension dimensionsUsedAsFilterIn:v15];
  v17 = [v16 valueForKey:@"filterPredicate"];
  v18 = [v12 arrayWithArray:v17];

  v19 = MEMORY[0x1E696AE18];
  v20 = [v14 greaterOrEqualTo];
  v21 = [v19 predicateWithFormat:@"date_ge == %@", v20];
  [v18 addObject:v21];

  v22 = MEMORY[0x1E696AE18];
  v23 = [v14 lowerThan];

  v24 = [v22 predicateWithFormat:@"date_lt == %@", v23];
  [v18 addObject:v24];

  v25 = MEMORY[0x1E695DF70];
  v26 = [WADeviceAnalyticsUsageDimension dimensionsUsedAsGroupBy:v15];

  v27 = [v26 valueForKey:@"dimension"];
  v28 = [v25 arrayWithArray:v27];

  [v28 addObject:@"date_ge"];
  [v28 addObject:@"date_lt"];
  v29 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = [v11 name];
    *buf = 136447234;
    v38 = "[WAPersistentContainer usageOf:inUsageTable:forDateSpan:withSorting:withError:]";
    v39 = 1024;
    v40 = 792;
    v41 = 2112;
    v42 = v30;
    v43 = 2112;
    v44 = v18;
    v45 = 2112;
    v46 = v28;
    _os_log_impl(&dword_1C8460000, v29, OS_LOG_TYPE_DEBUG, "%{public}s::%d:querying table: %@ with filters: %@ and group-by: %@", buf, 0x30u);
  }

  v31 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v18];
  v32 = [(WAPersistentContainer *)self fetchDefaultAggregatedPropertyIn:v11 withPredicate:v31 groupBy:v28 having:0 withSorting:v13 withError:a7];

  if (v32 && (!a7 || !*a7))
  {
    v33 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v38 = "[WAPersistentContainer usageOf:inUsageTable:forDateSpan:withSorting:withError:]";
      v39 = 1024;
      v40 = 801;
      v41 = 2112;
      v42 = v32;
      _os_log_impl(&dword_1C8460000, v33, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Returning: %@", buf, 0x1Cu);
    }

    if (a7)
    {
      *a7 = 0;
    }
  }

  v34 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)newDatedEventObjectFor:(id)a3 withDate:(id)a4 withError:(id *)a5
{
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    if (a5)
    {
      v16 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A588];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entity nil"];
      v44[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      *a5 = [v16 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v18];
    }

    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v36 = "[WAPersistentContainer newDatedEventObjectFor:withDate:withError:]";
      v37 = 1024;
      v38 = 818;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_FAULT, "%{public}s::%d:entity nil", buf, 0x12u);
    }

    goto LABEL_14;
  }

  if (!v9)
  {
    if (a5)
    {
      v20 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A588];
      v21 = MEMORY[0x1E696AEC0];
      v22 = [v8 name];
      v23 = [v21 stringWithFormat:@"Dated events %@ must provide a non nil date", v22];
      v42 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *a5 = [v20 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v24];
    }

    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v25 = [v8 name];
      *buf = 136446722;
      v36 = "[WAPersistentContainer newDatedEventObjectFor:withDate:withError:]";
      v37 = 1024;
      v38 = 819;
      v39 = 2112;
      v40 = v25;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_FAULT, "%{public}s::%d:Dated events %@ must provide a non nil date", buf, 0x1Cu);
    }

LABEL_14:

    v12 = 0;
LABEL_20:
    v13 = 0;
    goto LABEL_5;
  }

  v11 = [v8 name];
  v12 = [(WAPersistentContainer *)self createNewObjectForEntity:v11 withError:a5];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a5)
    {
      v26 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A588];
      v27 = MEMORY[0x1E696AEC0];
      v28 = [v8 name];
      v29 = [v27 stringWithFormat:@"Entity %@ is not a Dated Event", v28];
      v34 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *a5 = [v26 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v30];
    }

    v31 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      v32 = [v8 name];
      *buf = 136446722;
      v36 = "[WAPersistentContainer newDatedEventObjectFor:withDate:withError:]";
      v37 = 1024;
      v38 = 822;
      v39 = 2112;
      v40 = v32;
      _os_log_impl(&dword_1C8460000, v31, OS_LOG_TYPE_FAULT, "%{public}s::%d:Entity %@ is not a Dated Event", buf, 0x1Cu);
    }

    goto LABEL_20;
  }

  v12 = v12;
  [v12 setDate:v10];
  v13 = v12;
LABEL_5:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)mostRecentDatedEvent:(id)a3 before:(id)a4 withPrefetchedProperties:(id)a5 withError:(id *)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v13))
  {
    v14 = [v10 name];
    *buf = 138412290;
    v27 = v14;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer mostRecentDatedEvent", "%@", buf, 0xCu);
  }

  if (v11)
  {
    v15 = [(WAPersistentContainer *)self predicateForEntity:v10 before:v11 withError:a6];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v25 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v18 = [(WAPersistentContainer *)self requestForObjects:v10 withPredicate:v15 withSorting:v17 withPrefetchedProperties:v12 withLimit:1];

  if (v11)
  {
  }

  v19 = [(WAPersistentContainer *)self fetch:v18 withError:a6];
  v20 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v20))
  {
    v21 = [v10 name];
    *buf = 138412290;
    v27 = v21;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer mostRecentDatedEvent", "%@", buf, 0xCu);
  }

  v22 = [v19 firstObject];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)mostRecentDatedEvents:(unint64_t)a3 withError:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer mostRecentDatedEvents", "", v16, 2u);
  }

  v8 = +[WADeviceAnalyticsDatedRecord entity];
  v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v17[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v11 = [(WAPersistentContainer *)self requestForObjects:v8 withPredicate:0 withSorting:v10 withPrefetchedProperties:0 withLimit:a3];

  v12 = [(WAPersistentContainer *)self fetch:v11 withError:a4];
  v13 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer mostRecentDatedEvents", "", v16, 2u);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)mostRecentRoamsFromBssid:(id)a3 withPrefetchedProperties:(id)a4 limit:(unint64_t)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[RoamMO entity];
  v11 = [RoamMO roamsOutOfBssid:v8];
  v12 = +[WAPersistentContainer sortByNewestDateFirst];
  v33[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v24 = 0;
  v14 = [(WAPersistentContainer *)self fetchObjects:v10 withPredicate:v11 withSorting:v13 withPrefetchedProperties:v9 withLimit:a5 withError:&v24];

  v15 = v24;
  if (v15)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v26 = "[WAPersistentContainer mostRecentRoamsFromBssid:withPrefetchedProperties:limit:]";
      v27 = 1024;
      v28 = 882;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch latest roam out of %@: %@", buf, 0x26u);
    }

    goto LABEL_6;
  }

  if ([v14 count])
  {
    v16 = [v14 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19 = [v14 firstObject];
        v20 = objc_opt_class();
        *buf = 136446722;
        v26 = "[WAPersistentContainer mostRecentRoamsFromBssid:withPrefetchedProperties:limit:]";
        v27 = 1024;
        v28 = 884;
        v29 = 2112;
        v30 = v20;
        v21 = v20;
        _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_FAULT, "%{public}s::%d:fetch returned unpexpected object of type %@", buf, 0x1Cu);
      }

LABEL_6:
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)mostRecentRoamsFromBSS:(id)a3 withPrefetchedProperties:(id)a4 limit:(unint64_t)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[RoamMO entity];
  v11 = [RoamMO roamsOutOf:v8];
  v12 = +[WAPersistentContainer sortByNewestDateFirst];
  v33[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v24 = 0;
  v14 = [(WAPersistentContainer *)self fetchObjects:v10 withPredicate:v11 withSorting:v13 withPrefetchedProperties:v9 withLimit:a5 withError:&v24];

  v15 = v24;
  if (v15)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v26 = "[WAPersistentContainer mostRecentRoamsFromBSS:withPrefetchedProperties:limit:]";
      v27 = 1024;
      v28 = 904;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch latest roam out of %@: %@", buf, 0x26u);
    }

    goto LABEL_6;
  }

  if ([v14 count])
  {
    v16 = [v14 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19 = [v14 firstObject];
        v20 = objc_opt_class();
        *buf = 136446722;
        v26 = "[WAPersistentContainer mostRecentRoamsFromBSS:withPrefetchedProperties:limit:]";
        v27 = 1024;
        v28 = 906;
        v29 = 2112;
        v30 = v20;
        v21 = v20;
        _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_FAULT, "%{public}s::%d:fetch returned unpexpected object of type %@", buf, 0x1Cu);
      }

LABEL_6:
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

- (unint64_t)successfulRoamCountFrom:(id)a3 to:(id)a4
{
  v31[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[RoamMO entity];
  v9 = MEMORY[0x1E696AB28];
  v10 = [RoamMO roamsOutOfBssid:v6];
  v31[0] = v10;
  v11 = [RoamMO roamsOutOfBssid:v7];
  v31[1] = v11;
  v12 = +[RoamMO successfulRoams];
  v31[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  v14 = [v9 andPredicateWithSubpredicates:v13];
  v20 = 0;
  v15 = [(WAPersistentContainer *)self countObjects:v8 withPredicate:v14 withError:&v20];
  v16 = v20;

  if (v16)
  {
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447234;
      v22 = "[WAPersistentContainer successfulRoamCountFrom:to:]";
      v23 = 1024;
      v24 = 925;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch successful latest roam from %@ to %@: %@", buf, 0x30u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)predicateForRecordsOlderThan:(double)a3
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-a3];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %@", @"date", v3];

  return v4;
}

+ (id)predicateForRecordsNewerThan:(double)a3
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-a3];
  v4 = MEMORY[0x1E696AE18];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v4 predicateWithFormat:@"%K > %@ and %K < %@", @"date", v3, @"date", v5];

  return v6;
}

+ (id)sortByOlderDateFirstOnProperty:(id)a3
{
  v3 = MEMORY[0x1E696AEB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithKey:v4 ascending:1];

  return v5;
}

+ (id)sortByNewestDateFirstOnProperty:(id)a3
{
  v3 = MEMORY[0x1E696AEB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithKey:v4 ascending:0];

  return v5;
}

- (id)mostRecentPolicy:(id)a3 withError:(id *)a4
{
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"policyType = %@", a3];
  v7 = [(WAPersistentContainer *)self mostRecentPolicyFilteredBy:v6 withError:a4];

  return v7;
}

- (id)mostRecentPolicyFilteredBy:(id)a3 withError:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    *buf = 138412290;
    v19 = v6;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer mostRecentPolicy", "%@", buf, 0xCu);
  }

  v8 = +[PoliciesMO entity];
  v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v17 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v11 = [(WAPersistentContainer *)self requestForObjects:v8 withPredicate:v6 withSorting:v10 withPrefetchedProperties:&unk_1F483E500 withLimit:1];

  v12 = [(WAPersistentContainer *)self fetch:v11 withError:a4];
  v13 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v13))
  {
    *buf = 138412290;
    v19 = v6;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer mostRecentPolicy", "%@", buf, 0xCu);
  }

  v14 = [v12 firstObject];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (unint64_t)countObjects:(id)a3 withPredicate:(id)a4 withError:(id *)a5
{
  v7 = [(WAPersistentContainer *)self requestForObjects:a3 withPredicate:a4 withSorting:0 withPrefetchedProperties:0 withLimit:0];
  v8 = [(WAPersistentContainer *)self fetchCount:v7 withError:a5];

  return v8;
}

- (id)fetchObjects:(id)a3 withPredicate:(id)a4 withSorting:(id)a5 withPrefetchedProperties:(id)a6 withLimit:(unint64_t)a7 withError:(id *)a8
{
  v10 = [(WAPersistentContainer *)self requestForObjects:a3 withPredicate:a4 withSorting:a5 withPrefetchedProperties:a6 withLimit:a7];
  v11 = [(WAPersistentContainer *)self fetch:v10 withError:a8];

  return v11;
}

- (id)fetchDistinctPropertiesIn:(id)a3 withPredicate:(id)a4 withSorting:(id)a5 withPrefetchedProperties:(id)a6 withLimit:(unint64_t)a7 withError:(id *)a8
{
  v10 = [(WAPersistentContainer *)self requestForDistinctProperties:a3 withPredicate:a4 withSorting:a5 withPrefetchedProperties:a6 withLimit:a7];
  v11 = [(WAPersistentContainer *)self fetch:v10 withError:a8];

  return v11;
}

- (id)fetchDefaultAggregatedPropertyIn:(id)a3 withPredicate:(id)a4 groupBy:(id)a5 having:(id)a6 withSorting:(id)a7 withError:(id *)a8
{
  v10 = [(WAPersistentContainer *)self requestForDefaultAggregatedProperties:a3 withPredicate:a4 groupBy:a5 having:a6 withSorting:a7];
  v11 = [(WAPersistentContainer *)self fetch:v10 withError:a8];

  return v11;
}

- (id)createNewObjectForEntity:(id)a3 withError:(id *)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    *buf = 138412290;
    v39 = v6;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer createNewObjectForEntity", "%@", buf, 0xCu);
  }

  if (!v6)
  {
    if (a4)
    {
      v16 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A588];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entityName nil"];
      v45[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      *a4 = [v16 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v18];
    }

    v10 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v39 = "[WAPersistentContainer createNewObjectForEntity:withError:]";
    v40 = 1024;
    LODWORD(v41[0]) = 1075;
    v19 = "%{public}s::%d:entityName nil";
    v20 = v10;
    v21 = 18;
    goto LABEL_21;
  }

  v8 = [(WAPersistentContainer *)self viewContext];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __60__WAPersistentContainer_createNewObjectForEntity_withError___block_invoke;
  v28 = &unk_1E830E5F0;
  v31 = &v32;
  v9 = v6;
  v29 = v9;
  v30 = self;
  [v8 performBlockAndWait:&v25];

  if (!v33[5])
  {
    if (a4)
    {
      v22 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A588];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create a new object for entity %@", v9, v25, v26, v27, v28];
      v43 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *a4 = [v22 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v24];
    }

    v10 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    *buf = 136446722;
    v39 = "[WAPersistentContainer createNewObjectForEntity:withError:]";
    v40 = 1024;
    LODWORD(v41[0]) = 1080;
    WORD2(v41[0]) = 2112;
    *(v41 + 6) = v9;
    v19 = "%{public}s::%d:Unable to create a new object for entity %@";
    v20 = v10;
    v21 = 28;
LABEL_21:
    _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_FAULT, v19, buf, v21);
LABEL_22:
    v11 = @"FAILED";
    goto LABEL_8;
  }

  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    v39 = "[WAPersistentContainer createNewObjectForEntity:withError:]";
    v40 = 1024;
    LODWORD(v41[0]) = 1082;
    WORD2(v41[0]) = 2112;
    *(v41 + 6) = v9;
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_INFO, "%{public}s::%d:Inserted new %@", buf, 0x1Cu);
  }

  v11 = @"SUCCESSFUL";
LABEL_8:

  v12 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v12))
  {
    *buf = 138412546;
    v39 = v6;
    v40 = 2112;
    v41[0] = v11;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer createNewObjectForEntity", "%@ -- %@", buf, 0x16u);
  }

  v13 = v33[5];
  _Block_object_dispose(&v32, 8);

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __60__WAPersistentContainer_createNewObjectForEntity_withError___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695D5B8];
  v3 = *(a1 + 32);
  v7 = [*(a1 + 40) viewContext];
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)requestFor:(unint64_t)a3 forEntity:(id)a4 orForEntityWithName:(id)a5 withPredicate:(id)a6 withSorting:(id)a7 withPrefetchedProperties:(id)a8 groupBy:(id)a9 having:(id)a10 withLimit:(unint64_t)a11
{
  v68 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v56 = a5;
  v57 = a6;
  v18 = a7;
  v59 = a8;
  v58 = a9;
  v55 = a10;
  v53 = v18;
  if (v18)
  {
    v54 = [MEMORY[0x1E695DF70] arrayWithArray:v18];
  }

  else
  {
    v54 = objc_opt_new();
  }

  v19 = MEMORY[0x1E695D5E0];
  if (v17)
  {
    v20 = [v17 name];
    v21 = [v19 fetchRequestWithEntityName:v20];

    if (!v21)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v56];
    if (!v21)
    {
LABEL_45:
      v50 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        v51 = [v17 name];
        *buf = 136446978;
        v61 = "[WAPersistentContainer requestFor:forEntity:orForEntityWithName:withPredicate:withSorting:withPrefetchedProperties:groupBy:having:withLimit:]";
        v62 = 1024;
        v63 = 1141;
        v64 = 2112;
        v65 = v51;
        v66 = 2112;
        v67 = v17;
        _os_log_impl(&dword_1C8460000, v50, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to get fetchRequest for %@ %@", buf, 0x26u);
      }

      v21 = 0;
      goto LABEL_48;
    }
  }

  [v21 setResultType:{a3, a11, v53}];
  if (a3 == 2)
  {
    [v21 setReturnsDistinctResults:1];
    if (v58)
    {
      if (v59)
      {
        v43 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446466;
          v61 = "[WAPersistentContainer requestFor:forEntity:orForEntityWithName:withPredicate:withSorting:withPrefetchedProperties:groupBy:having:withLimit:]";
          v62 = 1024;
          v63 = 1147;
        }
      }

      else if (v17)
      {
        v22 = [v17 managedObjectClassName];
        NSClassFromString(v22);
        v23 = objc_opt_respondsToSelector();

        if (v23)
        {
          v24 = [v17 managedObjectClassName];
          NSClassFromString(v24);
          v25 = objc_opt_respondsToSelector();

          if (v25)
          {
            v26 = [v17 managedObjectClassName];
            NSClassFromString(v26);
            v27 = objc_opt_respondsToSelector();

            if (v27)
            {
              [v21 setPropertiesToGroupBy:v58];
              if (v55)
              {
                [v21 setHavingPredicate:?];
              }

              v28 = [MEMORY[0x1E695DF70] arrayWithArray:v58];
              v29 = [v17 managedObjectClassName];
              v30 = [NSClassFromString(v29) aggregateAs];
              v31 = [v17 managedObjectClassName];
              v32 = [NSClassFromString(v31) accumulator];
              v33 = [v17 managedObjectClassName];
              v34 = [NSClassFromString(v33) aggregateName];
              v35 = [(WAPersistentContainer *)self expressionWithAggregateFunction:v30 overField:v32 called:v34];
              [v28 addObject:v35];

              [v21 setPropertiesToFetch:v28];
              v36 = MEMORY[0x1E696AEB0];
              v37 = [v17 managedObjectClassName];
              v38 = [NSClassFromString(v37) aggregateName];
              v39 = [v36 sortDescriptorWithKey:v38 ascending:0];
              [v54 addObject:v39];

              goto LABEL_18;
            }

            v43 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
            {
              v48 = [v17 managedObjectClassName];
              v49 = [v17 name];
              *buf = 136446978;
              v61 = "[WAPersistentContainer requestFor:forEntity:orForEntityWithName:withPredicate:withSorting:withPrefetchedProperties:groupBy:having:withLimit:]";
              v62 = 1024;
              v63 = 1151;
              v64 = 2112;
              v65 = v48;
              v66 = 2112;
              v67 = v49;
              _os_log_impl(&dword_1C8460000, v43, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ for %@ does not implement aggregateName", buf, 0x26u);
            }
          }

          else
          {
            v43 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
            {
              v46 = [v17 managedObjectClassName];
              v47 = [v17 name];
              *buf = 136446978;
              v61 = "[WAPersistentContainer requestFor:forEntity:orForEntityWithName:withPredicate:withSorting:withPrefetchedProperties:groupBy:having:withLimit:]";
              v62 = 1024;
              v63 = 1150;
              v64 = 2112;
              v65 = v46;
              v66 = 2112;
              v67 = v47;
              _os_log_impl(&dword_1C8460000, v43, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ for %@ does not implement aggregateAs", buf, 0x26u);
            }
          }
        }

        else
        {
          v43 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            v44 = [v17 managedObjectClassName];
            v45 = [v17 name];
            *buf = 136446978;
            v61 = "[WAPersistentContainer requestFor:forEntity:orForEntityWithName:withPredicate:withSorting:withPrefetchedProperties:groupBy:having:withLimit:]";
            v62 = 1024;
            v63 = 1149;
            v64 = 2112;
            v65 = v44;
            v66 = 2112;
            v67 = v45;
            _os_log_impl(&dword_1C8460000, v43, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ for %@ does not implement accumulator", buf, 0x26u);
          }
        }
      }

      else
      {
        v43 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446466;
          v61 = "[WAPersistentContainer requestFor:forEntity:orForEntityWithName:withPredicate:withSorting:withPrefetchedProperties:groupBy:having:withLimit:]";
          v62 = 1024;
          v63 = 1148;
        }
      }

LABEL_48:
      v40 = v54;
      goto LABEL_27;
    }
  }

LABEL_18:
  if (v57)
  {
    [v21 setPredicate:?];
  }

  v40 = v54;
  if (v59)
  {
    [v21 setPropertiesToFetch:?];
  }

  if (v54 && [v54 count])
  {
    [v21 setSortDescriptors:v54];
  }

  if (v52)
  {
    [v21 setFetchLimit:?];
  }

LABEL_27:

  v41 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)expressionWithAggregateFunction:(id)a3 overField:(id)a4 called:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setName:v7];

  v11 = MEMORY[0x1E696ABC8];
  v12 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v8];

  v17[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v14 = [v11 expressionForFunction:v9 arguments:v13];

  [v10 setExpression:v14];
  [v10 setExpressionResultType:300];
  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)fetch:(id)a3 withError:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    v8 = [v6 entityName];
    v9 = [v6 predicate];
    v10 = [v9 predicateFormat];
    *buf = 138412802;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    v45 = [v6 fetchLimit];
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer fetchObjects", "%@ %@ %lu", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v45 = __Block_byref_object_copy__1;
  v46 = __Block_byref_object_dispose__1;
  v47 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v11 = [(WAPersistentContainer *)self viewContext];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __41__WAPersistentContainer_fetch_withError___block_invoke;
  v25 = &unk_1E830E618;
  v12 = v6;
  v26 = v12;
  v27 = self;
  v28 = buf;
  v29 = &v30;
  [v11 performBlockAndWait:&v22];

  if (a4)
  {
    *a4 = v31[5];
  }

  v13 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v13))
  {
    v14 = [v12 entityName];
    v15 = [v12 predicate];
    v16 = [v15 predicateFormat];
    v17 = [v12 fetchLimit];
    if (*(*&buf[8] + 40))
    {
      v18 = @"successful";
    }

    else
    {
      v18 = @"FAILED";
    }

    *v36 = 138413058;
    v37 = v14;
    v38 = 2112;
    v39 = v16;
    v40 = 2048;
    v41 = v17;
    v42 = 2112;
    v43 = v18;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer fetchObjects", "%@ %@ %lu -- %@", v36, 0x2Au);
  }

  v19 = *(*&buf[8] + 40);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(buf, 8);
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __41__WAPersistentContainer_fetch_withError___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setIncludesPendingChanges:1];
  v2 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 136446722;
    v13 = "[WAPersistentContainer fetch:withError:]_block_invoke";
    v14 = 1024;
    v15 = 1244;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Fetching request: %@", buf, 0x1Cu);
  }

  v4 = [*(a1 + 40) viewContext];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 executeFetchRequest:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)fetchCount:(id)a3 withError:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    v8 = [v6 entityName];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer fetchCount", "%@", &buf, 0xCu);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = 0;
  v9 = [(WAPersistentContainer *)self viewContext];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __46__WAPersistentContainer_fetchCount_withError___block_invoke;
  v22 = &unk_1E830E618;
  v23 = v6;
  v24 = self;
  v25 = &v27;
  p_buf = &buf;
  [v9 performBlockAndWait:&v19];

  if (a4)
  {
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      *a4 = v10;
    }
  }

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v11))
  {
    v12 = [v6 entityName];
    v13 = v12;
    v14 = v28[3];
    if (*(*(&buf + 1) + 40))
    {
      v15 = @"FAILED";
    }

    else
    {
      v15 = @"successful";
    }

    *v31 = 138412802;
    v32 = v12;
    v33 = 2048;
    v34 = v14;
    v35 = 2112;
    v36 = v15;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer fetchCount", "%@ count:%ld -- %@", v31, 0x20u);
  }

  v16 = v28[3];
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v27, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void __46__WAPersistentContainer_fetchCount_withError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 136446722;
    v14 = "[WAPersistentContainer fetchCount:withError:]_block_invoke";
    v15 = 1024;
    v16 = 1276;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Fetching count for request: %@", buf, 0x1Cu);
  }

  v4 = [*(a1 + 40) viewContext];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 countForFetchRequest:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v7;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 136446978;
      v14 = "[WAPersistentContainer fetchCount:withError:]_block_invoke";
      v15 = 1024;
      v16 = 1279;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error fetching count for %@: %@", buf, 0x26u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)predicateForEntity:(id)a3 olderThan:(double)a4 withError:(id *)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(WAPersistentContainer *)self datePropertyForEntity:v8];
  if (v9)
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-a4];
    v12 = [v10 predicateWithFormat:@"%K < %@", v9, v11];
  }

  else
  {
    if (a5)
    {
      v15 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A588];
      v29[0] = @"WAErrorCodeStore_EntityNotDated";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *a5 = [v15 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9037 userInfo:v16];
    }

    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v8 name];
      v19 = [v8 managedObjectClassName];
      *buf = 136446978;
      v21 = "[WAPersistentContainer predicateForEntity:olderThan:withError:]";
      v22 = 1024;
      v23 = 1302;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to filter entity %@ by date: unknown dated property [%@ does not respond to selector 'propertyForAging'", buf, 0x26u);
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)predicateForEntity:(id)a3 before:(id)a4 withError:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(WAPersistentContainer *)self datePropertyForEntity:v8];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %@", v10, v9];
  }

  else
  {
    if (a5)
    {
      v14 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A588];
      v28[0] = @"WAErrorCodeStore_EntityNotDated";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      *a5 = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9037 userInfo:v15];
    }

    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v8 name];
      v18 = [v8 managedObjectClassName];
      *buf = 136446978;
      v20 = "[WAPersistentContainer predicateForEntity:before:withError:]";
      v21 = 1024;
      v22 = 1314;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to filter entity %@ by date: unknown dated property [%@ does not respond to selector 'propertyForAging'", buf, 0x26u);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)predicateForEntity:(id)a3 newerThan:(double)a4 withError:(id *)a5
{
  v7 = MEMORY[0x1E695DF00];
  v8 = -a4;
  v9 = a3;
  v10 = [v7 dateWithTimeIntervalSinceNow:v8];
  v11 = [(WAPersistentContainer *)self predicateForEntity:v9 newerThanDate:v10 withError:a5];

  return v11;
}

- (id)predicateForEntity:(id)a3 newerThanDate:(id)a4 withError:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(WAPersistentContainer *)self datePropertyForEntity:v8];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %@", v10, v9];
  }

  else
  {
    if (a5)
    {
      v14 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A588];
      v28[0] = @"WAErrorCodeStore_EntityNotDated";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      *a5 = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9037 userInfo:v15];
    }

    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v8 name];
      v18 = [v8 managedObjectClassName];
      *buf = 136446978;
      v20 = "[WAPersistentContainer predicateForEntity:newerThanDate:withError:]";
      v21 = 1024;
      v22 = 1343;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to filter entity %@ by date: unknown dated property [%@ does not respond to selector 'propertyForAging'", buf, 0x26u);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)datePropertyForEntity:(id)a3
{
  v3 = a3;
  v4 = [v3 attributesByName];
  v5 = [v4 allKeys];
  if ([v5 containsObject:@"date"])
  {
    v6 = [v3 attributesByName];
    v7 = @"date";
    v8 = [v6 objectForKeyedSubscript:@"date"];
    v9 = [v8 attributeType];

    if (v9 == 900)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = [v3 managedObjectClassName];
  NSClassFromString(v10);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [v3 managedObjectClassName];
    v7 = [NSClassFromString(v12) propertyForAging];
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (int64_t)defaultFetchMaxAgeForEntity:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectClassName];
  NSClassFromString(v4);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v3 managedObjectClassName];
    v7 = [NSClassFromString(v6) defaultFetchMaxAge];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)defaultFetchLimitForEntity:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectClassName];
  NSClassFromString(v4);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v3 managedObjectClassName];
    v7 = [NSClassFromString(v6) defaultFetchLimit];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (BOOL)managedObjectContextSave:(BOOL)a3 reset:(BOOL)a4 release:(BOOL)a5 withError:(id *)a6
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  backgroundMOC = self->_backgroundMOC;
  if (backgroundMOC)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__WAPersistentContainer_managedObjectContextSave_reset_release_withError___block_invoke;
    v10[3] = &unk_1E830E640;
    v11 = a3;
    v10[4] = self;
    v10[5] = &v20;
    v10[6] = &v14;
    v12 = a4;
    v13 = a5;
    [(NSManagedObjectContext *)backgroundMOC performBlockAndWait:v10];
  }

  if (a6)
  {
    *a6 = v15[5];
  }

  v8 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v8;
}

void __74__WAPersistentContainer_managedObjectContextSave_reset_release_withError___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 48) + 8);
    obj = *(v3 + 40);
    v4 = [v2 saveManagedObjectContextWithError:&obj];
    objc_storeStrong((v3 + 40), obj);
  }

  else
  {
    v4 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  if (*(a1 + 57) == 1)
  {
    [*(a1 + 32) resetManagedObjectContext];
  }

  if (*(a1 + 58) == 1)
  {
    [*(a1 + 32) releaseBackgroundMOC];
  }
}

- (BOOL)saveManagedObjectContextWithError:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_backgroundMOC)
  {
    v9 = 0;
    LOBYTE(v8) = 0;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v5))
  {
    backgroundMOC = self->_backgroundMOC;
    *buf = 134217984;
    v24 = backgroundMOC;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer save", "(%p)", buf, 0xCu);
  }

  [(NSManagedObjectContext *)self->_backgroundMOC processPendingChanges];
  if ([(NSManagedObjectContext *)self->_backgroundMOC hasChanges])
  {
    v7 = self->_backgroundMOC;
    v22 = 0;
    v8 = [(NSManagedObjectContext *)v7 save:&v22];
    v9 = v22;
    v10 = WALogCategoryDeviceStoreHandle();
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_backgroundMOC;
        *buf = 136446722;
        v24 = "[WAPersistentContainer saveManagedObjectContextWithError:]";
        v25 = 1024;
        v26 = 1442;
        v27 = 2048;
        v28 = v12;
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Saved context(%p)", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_backgroundMOC;
      v14 = [v9 localizedDescription];
      v15 = [v9 userInfo];
      *buf = 136447234;
      v24 = "[WAPersistentContainer saveManagedObjectContextWithError:]";
      v25 = 1024;
      v26 = 1440;
      v27 = 2048;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error saving context(%p): %@ %@", buf, 0x30u);
    }

    v16 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v16))
    {
      v17 = self->_backgroundMOC;
      *buf = 134218240;
      v24 = v17;
      v25 = 1024;
      v26 = v8;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer save", "(%p) success:%d", buf, 0x12u);
    }
  }

  else
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = self->_backgroundMOC;
      *buf = 136446722;
      v24 = "[WAPersistentContainer saveManagedObjectContextWithError:]";
      v25 = 1024;
      v26 = 1435;
      v27 = 2048;
      v28 = v21;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:No changes to be saved (%p)", buf, 0x1Cu);
    }

    v9 = 0;
    LOBYTE(v8) = 1;
  }

  if (a3)
  {
LABEL_13:
    v18 = v9;
    *a3 = v9;
  }

LABEL_14:

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

- (double)analyticsAgeOutTimeIntervalSecs
{
  v2 = +[WAUtil customAgeOutTimeIntervalSecs];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 4233600.0;
  }

  return v5;
}

- (BOOL)ageOutAnalyticsWithReason:(id)a3 withExtraWeeks:(unint64_t)a4 withError:(id *)a5
{
  v78 = *MEMORY[0x1E69E9840];
  v60 = a3;
  context = objc_autoreleasePoolPush();
  [(WAPersistentContainer *)self analyticsAgeOutTimeIntervalSecs];
  v8 = v7 - (604800 * a4);
  v9 = v8 / 86400.0;
  v11 = WALogCategoryDeviceStoreHandle();
  v10 = v8 / 604800.0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1503;
    v72 = 2048;
    v73 = v9;
    v74 = 2048;
    v75 = v10;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting all dated records older than %ld days (%ld weeks) ago", buf, 0x26u);
  }

  v67 = 0;
  v12 = [(WAPersistentContainer *)self batchDeleteDatedEntitiesOlderThan:&v67 withError:v8];
  v13 = v67;
  v14 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1505;
    v72 = 2048;
    v73 = v12;
    v74 = 2048;
    v75 = v9;
    v76 = 2048;
    v77 = v10;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deleted %lu dated records older than %ld days (%ld weeks) ago", buf, 0x30u);
  }

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1508;
    v72 = 2048;
    v73 = v9;
    v74 = 2048;
    v75 = v10;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting all BSS last seen earlier than %ld days (%ld weeks) ago", buf, 0x26u);
  }

  v16 = +[BSSMO entity];
  v66 = v13;
  v17 = [(WAPersistentContainer *)self batchDelete:v16 olderThan:&v66 withError:v8];
  v61 = v66;

  v18 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1510;
    v72 = 2048;
    v73 = v17;
    v74 = 2048;
    v75 = v9;
    v76 = 2048;
    v77 = v10;
    _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deleted %lu BSS last seen earlier than %ld days (%ld weeks) ago", buf, 0x30u);
  }

  v19 = +[BSSMO entity];
  v20 = [(WAPersistentContainer *)self predicatesForRecordsWithNoBssRelationshipByEntities:v19 onlyDated:0];

  v21 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1514;
    v72 = 2112;
    v73 = v20;
    _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_DEBUG, "%{public}s::%d:predicateForRecordsWithNoBssRelationshipByEntity:%@", buf, 0x1Cu);
  }

  v57 = v13;

  v22 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1516;
    _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting all Networks with no BSSes", buf, 0x12u);
  }

  v23 = +[NetworkMO entity];
  v24 = +[NetworkMO entity];
  v25 = [v24 name];
  v26 = [v20 objectForKeyedSubscript:v25];
  v65 = v61;
  v27 = [(WAPersistentContainer *)self batchDelete:v23 where:v26 withError:&v65];
  v28 = v65;

  v29 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1518;
    v72 = 2048;
    v73 = v27;
    _os_log_impl(&dword_1C8460000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deleted %lu Networks with no BSSes", buf, 0x1Cu);
  }

  v30 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1521;
    _os_log_impl(&dword_1C8460000, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting all LAN with no Networks", buf, 0x12u);
  }

  v31 = +[LANMO entity];
  v32 = +[LANMO entity];
  v33 = [v32 name];
  v34 = [v20 objectForKeyedSubscript:v33];
  v64 = v28;
  v35 = [(WAPersistentContainer *)self batchDelete:v31 where:v34 withError:&v64];
  v36 = v64;

  v37 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1523;
    v72 = 2048;
    v73 = v35;
    _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deleted %lu LAN with no Networks", buf, 0x1Cu);
  }

  v38 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1526;
    _os_log_impl(&dword_1C8460000, v38, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting all WeeklyUsage with no valid BSS", buf, 0x12u);
  }

  v39 = +[UsageWeeklyMO entity];
  v40 = +[UsageWeeklyMO entity];
  v41 = [v40 name];
  v42 = [v20 objectForKeyedSubscript:v41];
  v63 = v36;
  v43 = [(WAPersistentContainer *)self batchDelete:v39 where:v42 withError:&v63];
  v44 = v63;

  v45 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1528;
    v72 = 2048;
    v73 = v43;
    _os_log_impl(&dword_1C8460000, v45, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deleted %lu WeeklyUsage with no valid BSS", buf, 0x1Cu);
  }

  v46 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1531;
    _os_log_impl(&dword_1C8460000, v46, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting all MonthlyUsage with no valid BSS", buf, 0x12u);
  }

  v47 = +[UsageMonthlyMO entity];
  v48 = +[UsageMonthlyMO entity];
  v49 = [v48 name];
  v50 = [v20 objectForKeyedSubscript:v49];
  v62 = v44;
  v51 = [(WAPersistentContainer *)self batchDelete:v47 where:v50 withError:&v62];
  v52 = v62;

  v53 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v69 = "[WAPersistentContainer ageOutAnalyticsWithReason:withExtraWeeks:withError:]";
    v70 = 1024;
    v71 = 1533;
    v72 = 2048;
    v73 = v51;
    _os_log_impl(&dword_1C8460000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deleting %lu MonthlyUsage with no valid BSS", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(context);
  if (a5)
  {
    v54 = v52;
    *a5 = v52;
  }

  v55 = *MEMORY[0x1E69E9840];
  return (v57 | v61 | v28 | v36 | v44 | v52) == 0;
}

- (id)performPruneBasedOnStoreSize
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler performPruneBasedOnStoreSizeAndSave", "", &v11, 2u);
  }

  v4 = [WAUtil getNumberPreference:@"WAStore_maxSize" domain:@"com.apple.wifi.analytics"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue];
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136447234;
      v12 = "[WAPersistentContainer performPruneBasedOnStoreSize]";
      v13 = 1024;
      v14 = 1550;
      v15 = 2112;
      v16 = @"WAStore_maxSize";
      v17 = 1024;
      v18 = 100;
      v19 = 2048;
      v20 = v6 >> 10;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:OVERRIDING %@ from %d MB to %lu KB", &v11, 0x2Cu);
    }
  }

  else
  {
    v6 = 104857600;
  }

  v8 = [[WAPCStoreSize alloc] initWithMaxStoreSize:v6];
  if ([objc_opt_class() _storeNeedsImmediatePruning:v8])
  {
    [(WAPCStoreSize *)v8 setNoError:[(WAPersistentContainer *)self _pruneManagedObjects]];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)_pruneManagedObjects
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler pruneManagedObjects", "", buf, 2u);
  }

  v3 = MEMORY[0x1E695DFA8];
  v4 = [(WAPersistentContainer *)self _entitiesWithDate];
  v5 = [v3 setWithArray:v4];

  v6 = [(WAPersistentContainer *)self _usageEntities];
  [v5 addObjectsFromArray:v6];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (!v8)
  {
    v43 = 1;
    goto LABEL_32;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0x1E830D000uLL;
  v12 = *v53;
  v47 = *v53;
  do
  {
    v13 = 0;
    v46 = v9;
    do
    {
      if (*v53 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v52 + 1) + 8 * v13);
      v15 = [v14 superentity];

      if (v15)
      {
        v16 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v14 name];
          *buf = 136446722;
          v57 = "[WAPersistentContainer _pruneManagedObjects]";
          v58 = 1024;
          v59 = 1589;
          v60 = 2112;
          v61 = v17;
          _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:entity %@ is a sub-entity, skip (will be pruned at the parent level)", buf, 0x1Cu);
        }

        goto LABEL_28;
      }

      v16 = objc_opt_new();
      v18 = [v14 managedObjectClassName];
      NSClassFromString(v18);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_15:
        v48 = v10;
        v24 = v7;
        v25 = [v14 propertiesByName];
        v26 = [v25 allKeys];
        v27 = [*(v11 + 656) defaultDatedPropertyName];
        v28 = v11;
        v29 = [v26 containsObject:v27];

        if (v29)
        {
          v30 = *(v28 + 656);
          v22 = [v30 defaultDatedPropertyName];
          v31 = [v30 sortByOlderDateFirstOnProperty:v22];
          [v16 addObject:v31];

          v11 = v28;
        }

        else
        {
          v22 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            v32 = [v14 name];
            v11 = 0x1E830D000uLL;
            v33 = +[WAPersistentContainer defaultDatedPropertyName];
            *buf = 136446978;
            v57 = "[WAPersistentContainer _pruneManagedObjects]";
            v58 = 1024;
            v59 = 1600;
            v60 = 2112;
            v61 = v32;
            v62 = 2112;
            v63 = v33;
            _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_FAULT, "%{public}s::%d:entity %@ does not respond to selector datedProperty, nor contains a %@ property and cannot be sorted before pruning!!", buf, 0x26u);
          }

          else
          {
            v11 = 0x1E830D000;
          }
        }

        v7 = v24;
        v10 = v48;
        goto LABEL_21;
      }

      v19 = [v14 managedObjectClassName];
      v20 = [NSClassFromString(v19) performSelector:sel_datedProperty];

      if (!v20)
      {
        goto LABEL_15;
      }

      v21 = *(v11 + 656);
      v22 = [v14 managedObjectClassName];
      v23 = [v21 sortByOlderDateFirstOnProperty:{-[objc_class performSelector:](NSClassFromString(&v22->isa), "performSelector:", sel_datedProperty)}];
      [v16 addObject:v23];

LABEL_21:
      v51 = 0;
      v34 = [(WAPersistentContainer *)self countObjects:v14 withPredicate:0 withError:&v51];
      v35 = v51;
      v10 |= v35 != 0;
      if (v34)
      {
        v36 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v37 = [v14 name];
          *buf = 136446978;
          v57 = "[WAPersistentContainer _pruneManagedObjects]";
          v58 = 1024;
          v59 = 1612;
          v60 = 2112;
          v61 = v37;
          v62 = 2048;
          v63 = v34;
          _os_log_impl(&dword_1C8460000, v36, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Total objects for %@:%lu", buf, 0x26u);
        }

        v38 = [(WAPersistentContainer *)self requestForObjects:v14 withPredicate:0 withSorting:v16 withPrefetchedProperties:0 withLimit:v34 >> 1];
        v50 = v35;
        [(WAPersistentContainer *)self batchDelete:v38 withError:&v50];
        v39 = v50;

        v40 = [(WAPersistentContainer *)self countObjects:v14 withPredicate:0 withError:0];
        v41 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v42 = [v14 name];
          *buf = 136446978;
          v57 = "[WAPersistentContainer _pruneManagedObjects]";
          v58 = 1024;
          v59 = 1625;
          v60 = 2112;
          v61 = v42;
          v62 = 2048;
          v63 = v40;
          _os_log_impl(&dword_1C8460000, v41, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Total objects after pruning for %@:%lu", buf, 0x26u);
        }

        v10 |= v39 != 0;

        v35 = v39;
        v9 = v46;
        v11 = 0x1E830D000;
      }

      v12 = v47;
LABEL_28:

      ++v13;
    }

    while (v9 != v13);
    v9 = [v7 countByEnumeratingWithState:&v52 objects:v64 count:16];
  }

  while (v9);
  v43 = v10 ^ 1;
LABEL_32:

  v44 = *MEMORY[0x1E69E9840];
  return v43 & 1;
}

- (id)requestForObjectsInEntity:(id)a3 withBSSInList:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __65__WAPersistentContainer_requestForObjectsInEntity_withBSSInList___block_invoke;
  v16 = &unk_1E830E668;
  v17 = v8;
  v9 = v8;
  [v6 enumerateObjectsUsingBlock:&v13];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bssid IN (%@)", v9, v13, v14, v15, v16];
  v11 = [(WAPersistentContainer *)self requestForObjects:v7 withPredicate:v10 withSorting:0 withPrefetchedProperties:0 withLimit:0];

  return v11;
}

void __65__WAPersistentContainer_requestForObjectsInEntity_withBSSInList___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [BSSMO formattedMACAddressNotation:a2 as:6];
  [v2 addObject:v3];
}

- (unint64_t)batchDeleteBSSList:(id)a3 withError:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136446722;
    v14 = "[WAPersistentContainer batchDeleteBSSList:withError:]";
    v15 = 1024;
    v16 = 1650;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting BSSMO with bssid in %@", &v13, 0x1Cu);
  }

  v8 = +[BSSMO entity];
  v9 = [(WAPersistentContainer *)self requestForObjectsInEntity:v8 withBSSInList:v6];
  v10 = [(WAPersistentContainer *)self batchDelete:v9 withError:a4];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unint64_t)batchDelete:(id)a3 newerThanDate:(id)a4 andPredicate:(id)a5 withError:(id *)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(WAPersistentContainer *)self _entitiesWithDate];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"name = %@", v10];
  v15 = [WAUtil filterArray:v13 usingPredicate:v14];
  v16 = [v15 firstObject];

  if (v16)
  {
    v17 = MEMORY[0x1E695DF70];
    v18 = [(WAPersistentContainer *)self predicateForEntity:v16 newerThanDate:v11 withError:a6];
    v19 = [v17 arrayWithObject:v18];

    if (v12)
    {
      [v19 addObject:v12];
    }

    v20 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v19];
    v21 = [(WAPersistentContainer *)self requestForObjects:v16 withPredicate:v20 withSorting:0 withPrefetchedProperties:0 withLimit:0];

    v22 = [(WAPersistentContainer *)self batchDelete:v21 withError:a6];
  }

  else
  {
    v25 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v30 = "[WAPersistentContainer batchDelete:newerThanDate:andPredicate:withError:]";
      v31 = 1024;
      v32 = 1663;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:%@ is not a dated entity", buf, 0x1Cu);
    }

    if (!a6)
    {
      v22 = 0;
      goto LABEL_6;
    }

    v26 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A588];
    v28 = @"WAErrorCodeInvalidInput";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v26 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v19];
    *a6 = v22 = 0;
  }

LABEL_6:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (unint64_t)batchDelete:(id)a3 olderThan:(double)a4 withError:(id *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(WAPersistentContainer *)self predicateForEntity:v8 olderThan:a5 withError:a4];
  if (v9)
  {
    v10 = [(WAPersistentContainer *)self requestForObjects:v8 withPredicate:v9 withSorting:0 withPrefetchedProperties:0 withLimit:0];
    v11 = [(WAPersistentContainer *)self batchDelete:v10 withError:a5];
  }

  else
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v14 = 136446466;
      v15 = "[WAPersistentContainer batchDelete:olderThan:withError:]";
      v16 = 1024;
      v17 = 1686;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "%{public}s::%d:nil predicate", &v14, 0x12u);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)batchDeleteDatedEntitiesOlderThan:(double)a3 withError:(id *)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v6 = [(WAPersistentContainer *)self _entitiesWithDate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__WAPersistentContainer_batchDeleteDatedEntitiesOlderThan_withError___block_invoke;
  v10[3] = &unk_1E830E690;
  v11 = vdivq_f64(vdupq_lane_s64(*&a3, 0), xmmword_1C85A1230);
  v12 = a3;
  v10[4] = self;
  v10[5] = &v13;
  v10[6] = &v19;
  [v6 enumerateObjectsUsingBlock:v10];

  if (a4)
  {
    *a4 = v14[5];
  }

  v7 = v20[3];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v7;
}

void __69__WAPersistentContainer_batchDeleteDatedEntitiesOlderThan_withError___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 superentity];

  v8 = WALogCategoryDeviceStoreHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      v10 = [v6 name];
      *buf = 136446722;
      v25 = "[WAPersistentContainer batchDeleteDatedEntitiesOlderThan:withError:]_block_invoke";
      v26 = 1024;
      v27 = 1714;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:entity %@ is a sub-entity, skip (aged in the parent entity, i.e., the actual SQL table)", buf, 0x1Cu);
    }
  }

  else
  {
    if (v9)
    {
      v11 = [v6 name];
      v12 = *(a1 + 64);
      v13 = *(a1 + 56);
      *buf = 136447234;
      v25 = "[WAPersistentContainer batchDeleteDatedEntitiesOlderThan:withError:]_block_invoke";
      v26 = 1024;
      v27 = 1708;
      v28 = 2112;
      v29 = v11;
      v30 = 2048;
      v31 = v13;
      v32 = 2048;
      v33 = v12;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting %@ records older than %ld days (%ld weeks) ago", buf, 0x30u);
    }

    v14 = *(a1 + 72);
    v15 = *(a1 + 32);
    v16 = *(*(a1 + 40) + 8);
    obj = *(v16 + 40);
    v17 = [v15 batchDelete:v6 olderThan:&obj withError:v14];
    objc_storeStrong((v16 + 40), obj);
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v6 name];
      v20 = *(a1 + 64);
      v21 = *(a1 + 56);
      *buf = 136447490;
      v25 = "[WAPersistentContainer batchDeleteDatedEntitiesOlderThan:withError:]_block_invoke";
      v26 = 1024;
      v27 = 1710;
      v28 = 2048;
      v29 = v17;
      v30 = 2112;
      v31 = v19;
      v32 = 2048;
      v33 = v21;
      v34 = 2048;
      v35 = v20;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deleted %ld %@ records older than %ld days (%ld weeks) ago", buf, 0x3Au);
    }

    *(*(*(a1 + 48) + 8) + 24) += v17;
    *a4 = *(*(*(a1 + 40) + 8) + 40) != 0;
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (unint64_t)batchDeleteEntitiesWithNilBssWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v5 = +[BSSMO entity];
  v6 = [(WAPersistentContainer *)self predicatesForRecordsWithNoBssRelationshipByEntities:v5 onlyDated:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__WAPersistentContainer_batchDeleteEntitiesWithNilBssWithError___block_invoke;
  v9[3] = &unk_1E830E6B8;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = &v16;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  if (a3)
  {
    *a3 = v11[5];
  }

  v7 = v17[3];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

void __64__WAPersistentContainer_batchDeleteEntitiesWithNilBssWithError___block_invoke(uint64_t a1, void *a2, void *a3, BOOL *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v8 predicateFormat];
    *buf = 136446978;
    v19 = "[WAPersistentContainer batchDeleteEntitiesWithNilBssWithError:]_block_invoke";
    v20 = 1024;
    v21 = 1730;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting %@ with %@", buf, 0x26u);
  }

  v11 = [*(a1 + 32) requestFor:0 forEntity:0 orForEntityWithName:v7 withPredicate:v8 withSorting:0 withPrefetchedProperties:0 groupBy:0 having:0 withLimit:0];
  v12 = *(a1 + 32);
  v13 = *(*(a1 + 40) + 8);
  obj = *(v13 + 40);
  v14 = [v12 batchDelete:v11 withError:&obj];
  objc_storeStrong((v13 + 40), obj);
  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v19 = "[WAPersistentContainer batchDeleteEntitiesWithNilBssWithError:]_block_invoke";
    v20 = 1024;
    v21 = 1737;
    v22 = 2048;
    v23 = v14;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deleted %ld %@ with %@", buf, 0x30u);
  }

  *(*(*(a1 + 48) + 8) + 24) += v14;
  *a4 = *(*(*(a1 + 40) + 8) + 40) != 0;

  v16 = *MEMORY[0x1E69E9840];
}

- (unint64_t)batchDeleteUsageRecordsHavingBSSInList:(id)a3 withError:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = +[UsageWeeklyMO entity];
  v41 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];

  obj = v8;
  v25 = [v8 countByEnumeratingWithState:&v27 objects:v42 count:16];
  if (v25)
  {
    v9 = 0;
    v10 = 0;
    v24 = *v28;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * v11);
        v14 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [v13 name];
          *buf = 136446978;
          v32 = "[WAPersistentContainer batchDeleteUsageRecordsHavingBSSInList:withError:]";
          v33 = 1024;
          v34 = 1755;
          v35 = 2112;
          v36 = v15;
          v37 = 2112;
          v38 = v6;
          _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting objects in %@ with bssid in %@", buf, 0x26u);
        }

        v16 = [(WAPersistentContainer *)self requestForObjectsInEntity:v13 withBSSInList:v6];
        v26 = v12;
        v17 = [(WAPersistentContainer *)self batchDelete:v16 withError:&v26];
        v9 = v26;

        if (a4)
        {
          v18 = v9;
          *a4 = v9;
        }

        if (v9)
        {
          v19 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = [v13 name];
            *buf = 136447234;
            v32 = "[WAPersistentContainer batchDeleteUsageRecordsHavingBSSInList:withError:]";
            v33 = 1024;
            v34 = 1761;
            v35 = 2112;
            v36 = v20;
            v37 = 2112;
            v38 = v6;
            v39 = 2112;
            v40 = v9;
            _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to delete records in %@ with bssid IN %@ (%@)", buf, 0x30u);
          }
        }

        v10 += v17;
        ++v11;
        v12 = v9;
      }

      while (v25 != v11);
      v25 = [obj countByEnumeratingWithState:&v27 objects:v42 count:16];
    }

    while (v25);
  }

  else
  {
    v10 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unint64_t)batchDelete:(id)a3 where:(id)a4 withError:(id *)a5
{
  v7 = [(WAPersistentContainer *)self requestForObjects:a3 withPredicate:a4 withSorting:0 withPrefetchedProperties:0 withLimit:0];
  v8 = [(WAPersistentContainer *)self batchDelete:v7 withError:a5];

  return v8;
}

- (unint64_t)batchDelete:(id)a3 withError:(id *)a4
{
  v75[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 fetchLimit];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__1;
  v60 = __Block_byref_object_dispose__1;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__1;
  v54 = __Block_byref_object_dispose__1;
  v55 = 0;
  v41 = v5;
  v42 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v5];
  [v42 setResultType:1];
  v44 = 0;
  *&v7 = 136447490;
  v40 = v7;
  while (1)
  {
    v8 = v6 - v44;
    if (v6 - v44 >= 0x64)
    {
      v8 = 100;
    }

    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = 100;
    }

    [v5 setFetchLimit:{v9, v40}];
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v63 = "[WAPersistentContainer batchDelete:withError:]";
      v64 = 1024;
      v65 = 1803;
      v66 = 2112;
      v67 = v42;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Executing batch delete: %@", buf, 0x1Cu);
    }

    v11 = [(WAPersistentContainer *)self viewContext];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __47__WAPersistentContainer_batchDelete_withError___block_invoke;
    v46[3] = &unk_1E830DB20;
    v48 = &v56;
    v46[4] = self;
    v12 = v42;
    v47 = v12;
    v49 = &v50;
    [v11 performBlockAndWait:v46];

    if (a4)
    {
      *a4 = v51[5];
    }

    if (v51[5])
    {
      v35 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = v51[5];
        *buf = 136446978;
        v63 = "[WAPersistentContainer batchDelete:withError:]";
        v64 = 1024;
        v65 = 1809;
        v66 = 2112;
        v67 = v42;
        v68 = 2112;
        v69 = v36;
        _os_log_impl(&dword_1C8460000, v35, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error executing batch delete for %@: %@", buf, 0x26u);
      }

      goto LABEL_29;
    }

    v13 = [v57[5] result];
    v14 = [v13 count];

    v15 = [v57[5] result];
    v16 = [v15 count];

    v44 += v16;
    if (v14 >= 1)
    {
      break;
    }

LABEL_17:

    v24 = v44 < v6 && v6 != 0;
    if ((v14 == 0 || v6 != 0) && !v24)
    {
      goto LABEL_22;
    }
  }

  if ([v57[5] resultType] == 1)
  {
    v17 = [(WAPersistentContainer *)self viewContext];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __47__WAPersistentContainer_batchDelete_withError___block_invoke_306;
    v45[3] = &unk_1E830D880;
    v45[4] = self;
    [v17 performBlockAndWait:v45];

    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v57[5] result];
      v20 = [v19 count];
      v21 = [v41 entityName];
      v22 = [v41 predicate];
      v23 = [v22 predicateFormat];
      *buf = v40;
      v63 = "[WAPersistentContainer batchDelete:withError:]";
      v64 = 1024;
      v65 = 1833;
      v66 = 2048;
      v67 = v20;
      v68 = 2112;
      v69 = v21;
      v70 = 2112;
      v71 = v23;
      v72 = 2048;
      v73 = v44;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Batch deleted %lu records of entity[%@] matching [%@] (deleted so far:%ld)", buf, 0x3Au);

      v5 = v41;
    }

    goto LABEL_17;
  }

  v37 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
  {
    v38 = [v57[5] resultType];
    *buf = 136446978;
    v63 = "[WAPersistentContainer batchDelete:withError:]";
    v64 = 1024;
    v65 = 1816;
    v66 = 2112;
    v67 = v42;
    v68 = 2048;
    v69 = v38;
    _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_FAULT, "%{public}s::%d:From %@: Unexpected ResultType %lu ", buf, 0x26u);
  }

  if (a4)
  {
    v39 = MEMORY[0x1E696ABC0];
    v74 = *MEMORY[0x1E696A588];
    v75[0] = @"WAErrorCodeTypeMismatch";
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    *a4 = [v39 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9000 userInfo:v35];
LABEL_29:
  }

LABEL_22:
  v25 = objc_opt_new();
  v26 = [MEMORY[0x1E696AE30] processInfo];
  v27 = [v26 processName];
  [v25 setObject:v27 forKeyedSubscript:@"process"];

  v28 = [v5 entityName];
  [v25 setObject:v28 forKeyedSubscript:@"entity"];

  v29 = [v5 predicate];
  v30 = [v29 predicateFormat];
  [v25 setObject:v30 forKeyedSubscript:@"predicate"];

  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v44];
  [v25 setObject:v31 forKeyedSubscript:@"deleted"];

  v32 = +[WAClient sharedClient];
  [v32 submitWiFiAnalytics:@"com.apple.wifi.batchdelete" data:v25];

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  v33 = *MEMORY[0x1E69E9840];
  return v44;
}

void __47__WAPersistentContainer_batchDelete_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewContext];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __47__WAPersistentContainer_batchDelete_withError___block_invoke_306(uint64_t a1)
{
  v1 = [*(a1 + 32) viewContext];
  [v1 reset];
}

+ (BOOL)_storeNeedsImmediatePruning:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[AnalyticsStoreDescriptor storeDescriptor];
  v5 = [v4 storeURL];
  v6 = [v5 path];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v8 = [v7 attributesOfItemAtPath:v6 error:&v21];
  v9 = v21;

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = [v8 objectForKey:*MEMORY[0x1E696A3B8]];
    [v3 setCurrentSize:v11];

    v12 = [v3 currentSize];
    v13 = [v12 unsignedLongLongValue];

    if (v13 > [v3 limit])
    {
      v14 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v3 limit];
        *buf = 136446978;
        v23 = "+[WAPersistentContainer _storeNeedsImmediatePruning:]";
        v24 = 1024;
        v25 = 1865;
        v26 = 2048;
        v27 = v13;
        v28 = 2048;
        v29 = v15;
        _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Store size %llu bytes exceeds %llu bytes", buf, 0x26u);
      }

      [v3 setStoreNeedsPruning:1];
    }
  }

  else
  {
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v23 = "+[WAPersistentContainer _storeNeedsImmediatePruning:]";
      v24 = 1024;
      v25 = 1858;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_FAULT, "%{public}s::%d:Failed to get attributes for storeURL with error %@", buf, 0x1Cu);
    }
  }

  [v3 setNoError:v9 != 0];
  v16 = [v3 storeNeedsPruning];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (void)performBlock:(id)a3 overConstraintsOfEntity:(id)a4 withConstraints:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [a4 uniquenessConstraints];
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              v17 = [v8 valueForKey:v16];
              v7[2](v7, v16, v17);
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v13);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (id)getConstraintsValues:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [v3 entity];
  v6 = [v5 uniquenessConstraints];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v21 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              v17 = [v3 valueForKey:v16];
              [v4 setObject:v17 forKeyedSubscript:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v13);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)entitiesWithProperties:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__WAPersistentContainer_entitiesWithProperties___block_invoke;
  v13[3] = &unk_1E830E668;
  v14 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v13];

  v7 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v6];
  v8 = [(NSPersistentContainer *)self managedObjectModel];
  v9 = [v8 entities];
  v10 = [WAUtil filterArray:v9 usingPredicate:v7];

  v11 = [MEMORY[0x1E695DFD8] setWithArray:v10];

  return v11;
}

void __48__WAPersistentContainer_entitiesWithProperties___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.properties.name CONTAINS %@", a2];
  [v2 addObject:v3];
}

- (id)predicatesForRecordsWithNoBssRelationshipByEntities:(id)a3 onlyDated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = objc_opt_new();
  if (v4)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = [(WAPersistentContainer *)self _entitiesWithDate];
    v9 = [v7 setWithArray:v8];
  }

  else
  {
    v10 = MEMORY[0x1E695DFA8];
    v8 = [(NSPersistentContainer *)self managedObjectModel];
    v11 = [v8 entities];
    v9 = [v10 setWithArray:v11];
  }

  v12 = MEMORY[0x1E696AE18];
  v13 = +[PoliciesMO entity];
  v14 = [v12 predicateWithFormat:@"SELF != %@", v13];
  v15 = [WAUtil filterSet:v9 usingPredicate:v14];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__WAPersistentContainer_predicatesForRecordsWithNoBssRelationshipByEntities_onlyDated___block_invoke;
  v19[3] = &unk_1E830E6E0;
  v16 = v6;
  v20 = v16;
  v21 = &v22;
  [v15 enumerateObjectsUsingBlock:v19];

  v17 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v17;
}

void __87__WAPersistentContainer_predicatesForRecordsWithNoBssRelationshipByEntities_onlyDated___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v3 relationshipsWithDestinationEntity:*(a1 + 32)];
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 isToMany];
        v11 = MEMORY[0x1E696AE18];
        v12 = [v9 name];
        v13 = v12;
        if (v10)
        {
          v14 = @"%K.@count == 0";
        }

        else
        {
          v14 = @"%K == nil";
        }

        v15 = [v11 predicateWithFormat:v14, v12];

        [v4 addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v16 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
    v17 = *(*(*(a1 + 40) + 8) + 40);
    v18 = [v3 name];
    [v17 setObject:v16 forKeyedSubscript:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_datedRecordEntities
{
  v2 = +[WADeviceAnalyticsDatedRecord entity];
  v3 = [v2 subentities];

  return v3;
}

- (id)_entitiesWithDate
{
  v2 = [(NSPersistentContainer *)self managedObjectModel];
  v3 = [v2 entities];
  v4 = +[WAPersistentContainer predicateForEntityWithDateField];
  v5 = [WAUtil filterArray:v3 usingPredicate:v4];

  return v5;
}

- (id)_usageEntities
{
  v2 = [(NSPersistentContainer *)self managedObjectModel];
  v3 = [v2 entities];
  v4 = +[WAPersistentContainer predicateForEntityWithDateBinField];
  v5 = [WAUtil filterArray:v3 usingPredicate:v4];

  return v5;
}

- (BOOL)validateUniqueObjectFor:(id)a3 withConstraints:(id)a4 withError:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 managedObjectClassName];
  v10 = NSClassFromString(v9);

  if (!v10)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v19 = [v7 name];
      v21 = 136446722;
      v22 = "[WAPersistentContainer validateUniqueObjectFor:withConstraints:withError:]";
      v23 = 1024;
      v24 = 1972;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to find class for %@", &v21, 0x1Cu);
LABEL_10:
    }

LABEL_11:

    goto LABEL_12;
  }

  v11 = [v7 managedObjectClassName];
  NSClassFromString(v11);
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) == 0)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v19 = [v7 managedObjectClassName];
      v20 = [v7 name];
      v21 = 136446978;
      v22 = "[WAPersistentContainer validateUniqueObjectFor:withConstraints:withError:]";
      v23 = 1024;
      v24 = 1973;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ for %@ does not implement verifyValidityOfData:", &v21, 0x26u);

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v13 = [v7 managedObjectClassName];
  v14 = [NSClassFromString(v13) verifyConstraints:v8 withError:a5];

  if ((v14 & 1) == 0)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_5;
  }

  v15 = 1;
LABEL_5:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)constraintsForEntity:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__WAPersistentContainer_constraintsForEntity___block_invoke;
  v7[3] = &unk_1E830E708;
  v7[4] = &v8;
  [a1 performBlock:v7 overConstraintsOfEntity:v4 withConstraints:0];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end