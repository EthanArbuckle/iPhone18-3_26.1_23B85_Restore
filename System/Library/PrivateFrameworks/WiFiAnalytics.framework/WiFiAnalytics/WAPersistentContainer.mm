@interface WAPersistentContainer
+ (BOOL)_storeNeedsImmediatePruning:(id)pruning;
+ (WAPersistentContainer)waPersistentContainerWithName:(id)name managedObjectModel:(id)model storeDescriptor:(id)descriptor;
+ (id)constraintsForEntity:(id)entity;
+ (id)dimensionsForUsageEntity:(id)entity;
+ (id)getConstraintsValues:(id)values;
+ (id)predicateForRecordsNewerThan:(double)than;
+ (id)predicateForRecordsOlderThan:(double)than;
+ (id)sortByNewestDateFirstOnProperty:(id)property;
+ (id)sortByOlderDateFirstOnProperty:(id)property;
+ (void)performBlock:(id)block overConstraintsOfEntity:(id)entity withConstraints:(id)constraints;
- (BOOL)_pruneManagedObjects;
- (BOOL)ageOutAnalyticsWithReason:(id)reason withExtraWeeks:(unint64_t)weeks withError:(id *)error;
- (BOOL)managedObjectContextSave:(BOOL)save reset:(BOOL)reset release:(BOOL)release withError:(id *)error;
- (BOOL)saveManagedObjectContextWithError:(id *)error;
- (BOOL)updateBandsInUniqueMO:(id)o;
- (BOOL)updateUsage:(id)usage with:(id)with on:(id)on at:(id)at;
- (BOOL)validateUniqueObjectFor:(id)for withConstraints:(id)constraints withError:(id *)error;
- (NSManagedObjectContext)backgroundMOC;
- (double)analyticsAgeOutTimeIntervalSecs;
- (id)_datedRecordEntities;
- (id)_entitiesWithDate;
- (id)_usageEntities;
- (id)bssForBssid:(id)bssid prefetchProperties:(id)properties withError:(id *)error;
- (id)bssidCountBy:(id)by inUniqueMO:(id)o withError:(id *)error;
- (id)createNewObjectForEntity:(id)entity withError:(id *)error;
- (id)createUniqueObjectFor:(id)for withConstraints:(id)constraints withError:(id *)error;
- (id)datePropertyForEntity:(id)entity;
- (id)entitiesWithProperties:(id)properties;
- (id)expressionWithAggregateFunction:(id)function overField:(id)field called:(id)called;
- (id)fetch:(id)fetch withError:(id *)error;
- (id)fetchDefaultAggregatedPropertyIn:(id)in withPredicate:(id)predicate groupBy:(id)by having:(id)having withSorting:(id)sorting withError:(id *)error;
- (id)fetchDistinctPropertiesIn:(id)in withPredicate:(id)predicate withSorting:(id)sorting withPrefetchedProperties:(id)properties withLimit:(unint64_t)limit withError:(id *)error;
- (id)fetchObjects:(id)objects withPredicate:(id)predicate withSorting:(id)sorting withPrefetchedProperties:(id)properties withLimit:(unint64_t)limit withError:(id *)error;
- (id)lanContainingBSS:(id)s prefetchProperties:(id)properties withError:(id *)error;
- (id)lanFor:(id)for prefetchProperties:(id)properties withError:(id *)error;
- (id)lansInNetwork:(id)network withError:(id *)error;
- (id)lansWithPredicate:(id)predicate inNetworksWithPredicate:(id)withPredicate withError:(id *)error;
- (id)lansWithPredicate:(id)predicate prefetchedProperties:(id)properties withError:(id *)error;
- (id)mostRecentDatedEvent:(id)event before:(id)before withPrefetchedProperties:(id)properties withError:(id *)error;
- (id)mostRecentDatedEvents:(unint64_t)events withError:(id *)error;
- (id)mostRecentPolicy:(id)policy withError:(id *)error;
- (id)mostRecentPolicyFilteredBy:(id)by withError:(id *)error;
- (id)mostRecentRoamsFromBSS:(id)s withPrefetchedProperties:(id)properties limit:(unint64_t)limit;
- (id)mostRecentRoamsFromBssid:(id)bssid withPrefetchedProperties:(id)properties limit:(unint64_t)limit;
- (id)networkForBSSID:(id)d prefetchProperties:(id)properties withError:(id *)error;
- (id)networkForSSID:(id)d prefetchProperties:(id)properties withError:(id *)error;
- (id)networksInLAN:(id)n withError:(id *)error;
- (id)networksInSameLANsAsBSS:(id)s withError:(id *)error;
- (id)networksInSameLANsAsNetwork:(id)network withError:(id *)error;
- (id)networksWithPredicate:(id)predicate inLANs:(id)ns withError:(id *)error;
- (id)networksWithPredicate:(id)predicate inLANsWithPredicate:(id)withPredicate withError:(id *)error;
- (id)networksWithPredicate:(id)predicate prefetchedProperties:(id)properties withError:(id *)error;
- (id)networksWithTrait:(unint64_t)trait prefetchedProperties:(id)properties withError:(id *)error;
- (id)newDatedEventObjectFor:(id)for withDate:(id)date withError:(id *)error;
- (id)performPruneBasedOnStoreSize;
- (id)predicateForEntity:(id)entity before:(id)before withError:(id *)error;
- (id)predicateForEntity:(id)entity newerThan:(double)than withError:(id *)error;
- (id)predicateForEntity:(id)entity newerThanDate:(id)date withError:(id *)error;
- (id)predicateForEntity:(id)entity olderThan:(double)than withError:(id *)error;
- (id)predicateForLAN:(id)n withError:(id *)error;
- (id)predicateForLan:(id)lan withError:(id *)error;
- (id)predicateForNetwork:(id)network atKeyPath:(id)path withError:(id *)error;
- (id)predicateForUniqueMO:(id)o withConstraints:(id)constraints atKeyPath:(id)path withError:(id *)error;
- (id)predicatesForRecordsWithNoBssRelationshipByEntities:(id)entities onlyDated:(BOOL)dated;
- (id)requestFor:(unint64_t)for forEntity:(id)entity orForEntityWithName:(id)name withPredicate:(id)predicate withSorting:(id)sorting withPrefetchedProperties:(id)properties groupBy:(id)by having:(id)self0 withLimit:(unint64_t)self1;
- (id)requestForObjectsInEntity:(id)entity withBSSInList:(id)list;
- (id)uniqueObjectFor:(id)for withConstraints:(id)constraints allowCreate:(BOOL)create prefetchProperties:(id)properties withError:(id *)error;
- (id)uniqueObjectFor:(id)for withPredicate:(id)predicate prefetchProperties:(id)properties withError:(id *)error;
- (id)uniqueObjectPropertiesFor:(id)for withConstraints:(id)constraints prefetchProperties:(id)properties withError:(id *)error;
- (id)uniqueObjectPropertiesFor:(id)for withPredicate:(id)predicate prefetchProperties:(id)properties withError:(id *)error;
- (id)usageOf:(id)of inUsageTable:(id)table forDateSpan:(id)span withSorting:(id)sorting withError:(id *)error;
- (int64_t)defaultFetchLimitForEntity:(id)entity;
- (int64_t)defaultFetchMaxAgeForEntity:(id)entity;
- (unint64_t)batchDelete:(id)delete newerThanDate:(id)date andPredicate:(id)predicate withError:(id *)error;
- (unint64_t)batchDelete:(id)delete olderThan:(double)than withError:(id *)error;
- (unint64_t)batchDelete:(id)delete where:(id)where withError:(id *)error;
- (unint64_t)batchDelete:(id)delete withError:(id *)error;
- (unint64_t)batchDeleteBSSList:(id)list withError:(id *)error;
- (unint64_t)batchDeleteDatedEntitiesOlderThan:(double)than withError:(id *)error;
- (unint64_t)batchDeleteEntitiesWithNilBssWithError:(id *)error;
- (unint64_t)batchDeleteUsageRecordsHavingBSSInList:(id)list withError:(id *)error;
- (unint64_t)countObjects:(id)objects withPredicate:(id)predicate withError:(id *)error;
- (unint64_t)fetchCount:(id)count withError:(id *)error;
- (unint64_t)lansCountInNetwork:(id)network withError:(id *)error;
- (unint64_t)networkCountForLAN:(id)n withError:(id *)error;
- (unint64_t)successfulRoamCountFrom:(id)from to:(id)to;
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
    newBackgroundContext = [(NSPersistentContainer *)self newBackgroundContext];
    v5 = self->_backgroundMOC;
    self->_backgroundMOC = newBackgroundContext;

    mergeByPropertyObjectTrumpMergePolicy = [MEMORY[0x1E695D650] mergeByPropertyObjectTrumpMergePolicy];
    [(NSManagedObjectContext *)self->_backgroundMOC setMergePolicy:mergeByPropertyObjectTrumpMergePolicy];

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

+ (WAPersistentContainer)waPersistentContainerWithName:(id)name managedObjectModel:(id)model storeDescriptor:(id)descriptor
{
  v22[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  modelCopy = model;
  descriptorCopy = descriptor;
  v10 = [(NSPersistentContainer *)[WAPersistentContainer alloc] initWithName:nameCopy managedObjectModel:modelCopy];
  if (v10)
  {
    v22[0] = descriptorCopy;
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
      v19 = nameCopy;
      v20 = 2112;
      v21 = modelCopy;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to get a PersistentContainer for model name: %@ (%@)", &v14, 0x26u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)createUniqueObjectFor:(id)for withConstraints:(id)constraints withError:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  forCopy = for;
  constraintsCopy = constraints;
  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    name = [forCopy name];
    *buf = 136446722;
    v39 = "[WAPersistentContainer createUniqueObjectFor:withConstraints:withError:]";
    v40 = 1024;
    v41 = 78;
    v42 = 2112;
    v43 = name;
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Creating new %@", buf, 0x1Cu);
  }

  name2 = [forCopy name];
  v13 = [(WAPersistentContainer *)self createNewObjectForEntity:name2 withError:error];

  if (!v13)
  {
    v22 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      name3 = [forCopy name];
      *buf = 136446722;
      v39 = "[WAPersistentContainer createUniqueObjectFor:withConstraints:withError:]";
      v40 = 1024;
      v41 = 81;
      v42 = 2112;
      v43 = name3;
      _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_FAULT, "%{public}s::%d:Failed to create a %@", buf, 0x1Cu);
    }

    v20 = WALogCategoryDeviceStoreHandle();
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_17;
    }

LABEL_16:
    name4 = [forCopy name];
    *buf = 138412290;
    v39 = name4;
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
      entity = [v13 entity];
      name5 = [entity name];
      v27 = objc_opt_class();
      *buf = 136446978;
      v39 = "[WAPersistentContainer createUniqueObjectFor:withConstraints:withError:]";
      v40 = 1024;
      v41 = 86;
      v42 = 2112;
      v43 = name5;
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
  managedObjectClassName = [forCopy managedObjectClassName];
  NSClassFromString(managedObjectClassName);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v32 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      name6 = [forCopy name];
      managedObjectClassName2 = [forCopy managedObjectClassName];
      *buf = 136446978;
      v39 = "[WAPersistentContainer createUniqueObjectFor:withConstraints:withError:]";
      v40 = 1024;
      v41 = 93;
      v42 = 2112;
      v43 = name6;
      v44 = 2112;
      v45 = managedObjectClassName2;
      _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_FAULT, "%{public}s::%d:Entity %@ is not a %@ entity type", buf, 0x26u);
    }

    v20 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v20))
    {
      name7 = [forCopy name];
      *buf = 138412290;
      v39 = name7;
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
  [v17 performBlock:v36 overConstraintsOfEntity:forCopy withConstraints:constraintsCopy];
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

- (id)uniqueObjectPropertiesFor:(id)for withConstraints:(id)constraints prefetchProperties:(id)properties withError:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  forCopy = for;
  constraintsCopy = constraints;
  propertiesCopy = properties;
  v13 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v13))
  {
    name = [forCopy name];
    v25 = 138412290;
    v26 = name;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer uniqueObjectPropertiesFor", "%@", &v25, 0xCu);
  }

  if (constraintsCopy)
  {
    v15 = [(WAPersistentContainer *)self predicateForUniqueMO:forCopy withConstraints:constraintsCopy withError:error];
    if (v15)
    {
      v16 = [(WAPersistentContainer *)self uniqueObjectPropertiesFor:forCopy withPredicate:v15 prefetchProperties:propertiesCopy withError:error];
      if (!v16)
      {
        v17 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [forCopy name];
          v25 = 136446978;
          v26 = "[WAPersistentContainer uniqueObjectPropertiesFor:withConstraints:prefetchProperties:withError:]";
          v27 = 1024;
          v28 = 124;
          v29 = 2112;
          v30 = name2;
          v31 = 2112;
          v32 = constraintsCopy;
          _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@ for %@ not found", &v25, 0x26u);
        }
      }

      v19 = WALogCategoryDeviceStoreHandle();
      if (os_signpost_enabled(v19))
      {
        name3 = [forCopy name];
        v25 = 138412290;
        v26 = name3;
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

    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A588];
      v34[0] = @"WAErrorCodeInvalidInput";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      [v24 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v19];
      v15 = 0;
      *error = v16 = 0;
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

- (id)uniqueObjectFor:(id)for withConstraints:(id)constraints allowCreate:(BOOL)create prefetchProperties:(id)properties withError:(id *)error
{
  createCopy = create;
  v38[1] = *MEMORY[0x1E69E9840];
  forCopy = for;
  constraintsCopy = constraints;
  propertiesCopy = properties;
  v15 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v15))
  {
    name = [forCopy name];
    v29 = 138412290;
    v30 = name;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer uniqueObjectFor", "%@", &v29, 0xCu);
  }

  if (constraintsCopy)
  {
    v17 = [(WAPersistentContainer *)self predicateForUniqueMO:forCopy withConstraints:constraintsCopy withError:error];
    if (v17)
    {
      v18 = [(WAPersistentContainer *)self uniqueObjectFor:forCopy withPredicate:v17 prefetchProperties:propertiesCopy withError:error];
      if (v18)
      {
LABEL_8:
        v19 = v18;
        goto LABEL_9;
      }

      if (createCopy)
      {
        v18 = [(WAPersistentContainer *)self createUniqueObjectFor:forCopy withConstraints:constraintsCopy withError:error];
        goto LABEL_8;
      }

      v24 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [forCopy name];
        v29 = 136446978;
        v30 = "[WAPersistentContainer uniqueObjectFor:withConstraints:allowCreate:prefetchProperties:withError:]";
        v31 = 1024;
        v32 = 155;
        v33 = 2112;
        v34 = name2;
        v35 = 2112;
        v36 = constraintsCopy;
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

    if (error)
    {
      v27 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A588];
      v38[0] = @"WAErrorCodeInvalidInput";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      *error = [v27 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v28];
    }

    v17 = 0;
  }

  v19 = 0;
LABEL_9:
  v20 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v20))
  {
    name3 = [forCopy name];
    v29 = 138412290;
    v30 = name3;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer uniqueObjectFor", "%@", &v29, 0xCu);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)predicateForLAN:(id)n withError:(id *)error
{
  nCopy = n;
  v7 = +[LANMO entity];
  v8 = [LANMO constraintsWithDhcpServerInfo:nCopy];

  v9 = [(WAPersistentContainer *)self predicateForUniqueMO:v7 withConstraints:v8 atKeyPath:@"lan" withError:error];

  return v9;
}

- (id)predicateForNetwork:(id)network atKeyPath:(id)path withError:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  networkCopy = network;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    error = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF = %@", networkCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = +[NetworkMO entity];
      v26 = @"ssid";
      v27[0] = networkCopy;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      error = [(WAPersistentContainer *)self predicateForUniqueMO:v10 withConstraints:v11 atKeyPath:pathCopy withError:error];
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

      if (error)
      {
        v14 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A588];
        v19 = @"WAErrorCodeInvalidInput";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        *error = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v15];

        error = 0;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return error;
}

- (id)predicateForUniqueMO:(id)o withConstraints:(id)constraints atKeyPath:(id)path withError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  oCopy = o;
  constraintsCopy = constraints;
  pathCopy = path;
  v13 = objc_opt_new();
  if (constraintsCopy)
  {
    if ([(WAPersistentContainer *)self validateUniqueObjectFor:oCopy withConstraints:constraintsCopy withError:error])
    {
      v14 = objc_opt_class();
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __82__WAPersistentContainer_predicateForUniqueMO_withConstraints_atKeyPath_withError___block_invoke;
      v24 = &unk_1E830E5A0;
      v25 = pathCopy;
      v15 = v13;
      v26 = v15;
      [v14 performBlock:&v21 overConstraintsOfEntity:oCopy withConstraints:constraintsCopy];

      error = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:{v15, v21, v22, v23, v24}];
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

  if (error)
  {
    v19 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A588];
    v28 = @"WAErrorCodeInvalidInput";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *error = [v19 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v20];

LABEL_11:
    error = 0;
  }

LABEL_4:

  v16 = *MEMORY[0x1E69E9840];

  return error;
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

- (id)predicateForLan:(id)lan withError:(id *)error
{
  lanCopy = lan;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    lanCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF = %@", lanCopy];
    v8 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    lanCopy = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = +[LANMO entity];
  v10 = [LANMO constraintsWithDhcpServerInfo:lanCopy];
  v13 = 0;
  lanCopy = [(WAPersistentContainer *)self predicateForUniqueMO:v9 withConstraints:v10 withError:&v13];
  v8 = v13;

  if (error)
  {
LABEL_8:
    v11 = v8;
    *error = v8;
  }

LABEL_9:

  return lanCopy;
}

- (id)uniqueObjectFor:(id)for withPredicate:(id)predicate prefetchProperties:(id)properties withError:(id *)error
{
  v8 = [(WAPersistentContainer *)self requestForObjects:for withPredicate:predicate withSorting:0 withPrefetchedProperties:properties withLimit:1];
  v9 = [(WAPersistentContainer *)self fetch:v8 withError:error];
  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)uniqueObjectPropertiesFor:(id)for withPredicate:(id)predicate prefetchProperties:(id)properties withError:(id *)error
{
  v8 = [(WAPersistentContainer *)self requestForDistinctProperties:for withPredicate:predicate withSorting:0 withPrefetchedProperties:properties withLimit:1];
  v9 = [(WAPersistentContainer *)self fetch:v8 withError:error];
  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)bssForBssid:(id)bssid prefetchProperties:(id)properties withError:(id *)error
{
  propertiesCopy = properties;
  v9 = [BSSMO formattedMACAddressNotation:bssid as:6];
  v10 = [(WAPersistentContainer *)self bssForBSSID:v9 allowCreate:0 prefetchProperties:propertiesCopy withError:error];

  return v10;
}

- (id)networkForSSID:(id)d prefetchProperties:(id)properties withError:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  propertiesCopy = properties;
  v10 = +[NetworkMO entity];
  v26 = @"ssid";
  v27[0] = dCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v12 = [(WAPersistentContainer *)self uniqueObjectFor:v10 withConstraints:v11 allowCreate:0 prefetchProperties:propertiesCopy withError:error];

  if (error)
  {
    if (*error | v12)
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
    v25 = dCopy;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Network %@ is not known", buf, 0x1Cu);
  }

  if (error)
  {
    v16 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A588];
    v19 = @"WAErrorCodeStore_NetworkNotFound";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    *error = [v16 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9039 userInfo:v17];
  }

LABEL_5:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)networkForBSSID:(id)d prefetchProperties:(id)properties withError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  propertiesCopy = properties;
  v10 = +[NetworkMO entity];
  v11 = [NetworkMO predicateForNetworkContainingBSSID:dCopy];
  v12 = [(WAPersistentContainer *)self uniqueObjectFor:v10 withPredicate:v11 prefetchProperties:propertiesCopy withError:error];

  if (error)
  {
    if (*error | v12)
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
    v25 = dCopy;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Network for %@ is not known", buf, 0x1Cu);
  }

  if (error)
  {
    v16 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A588];
    v19 = @"WAErrorCodeStore_NetworkNotFound";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    *error = [v16 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9039 userInfo:v17];
  }

LABEL_5:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)networksWithTrait:(unint64_t)trait prefetchedProperties:(id)properties withError:(id *)error
{
  propertiesCopy = properties;
  v9 = [NetworkMO predicateForNetworkWithTrait:trait];
  if (v9)
  {
    v10 = +[NetworkMO entity];
    v11 = [(WAPersistentContainer *)self fetchObjects:v10 withPredicate:v9 withSorting:0 withPrefetchedProperties:propertiesCopy withLimit:0 withError:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)networksWithPredicate:(id)predicate prefetchedProperties:(id)properties withError:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  propertiesCopy = properties;
  if (predicateCopy)
  {
    v10 = +[NetworkMO entity];
    error = [(WAPersistentContainer *)self fetchObjects:v10 withPredicate:predicateCopy withSorting:0 withPrefetchedProperties:propertiesCopy withLimit:0 withError:error];
  }

  else if (error)
  {
    v13 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"WAErrorCodeStore_Fault";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v14];

    error = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return error;
}

- (id)lanFor:(id)for prefetchProperties:(id)properties withError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  forCopy = for;
  propertiesCopy = properties;
  v10 = +[LANMO entity];
  v11 = [LANMO constraintsWithDhcpServerInfo:forCopy];
  v12 = [(WAPersistentContainer *)self uniqueObjectFor:v10 withConstraints:v11 allowCreate:0 prefetchProperties:propertiesCopy withError:error];

  if (error)
  {
    if (*error | v12)
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
    v16 = [LANMO constraintsWithDhcpServerInfo:forCopy];
    *buf = 136446722;
    v22 = "[WAPersistentContainer lanFor:prefetchProperties:withError:]";
    v23 = 1024;
    v24 = 393;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:LAN for %@ not found", buf, 0x1Cu);
  }

  if (error)
  {
    v17 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A588];
    v20 = @"WAErrorCodeStore_LANNotFound";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    *error = [v17 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9040 userInfo:v18];
  }

LABEL_5:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)lanContainingBSS:(id)s prefetchProperties:(id)properties withError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v21 = 0;
  v9 = [LANMO predicateForLanContainingBSS:s withError:&v21];
  v10 = v21;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v11 = +[LANMO entity];
    v20 = 0;
    v12 = [(WAPersistentContainer *)self uniqueObjectFor:v11 withPredicate:v9 prefetchProperties:propertiesCopy withError:&v20];
    v13 = v20;

    if (v13)
    {
      goto LABEL_5;
    }

    if (v12)
    {
      v13 = 0;
LABEL_5:
      if (!error)
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
  if (error)
  {
LABEL_6:
    v14 = v13;
    *error = v13;
  }

LABEL_7:

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)lansWithPredicate:(id)predicate prefetchedProperties:(id)properties withError:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  propertiesCopy = properties;
  if (predicateCopy)
  {
    v10 = +[LANMO entity];
    error = [(WAPersistentContainer *)self fetchObjects:v10 withPredicate:predicateCopy withSorting:0 withPrefetchedProperties:propertiesCopy withLimit:0 withError:error];
  }

  else if (error)
  {
    v13 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"WAErrorCodeStore_Fault";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v14];

    error = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return error;
}

- (id)bssidCountBy:(id)by inUniqueMO:(id)o withError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  byCopy = by;
  oCopy = o;
  v10 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = byCopy;
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
    oCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"lan = %@", oCopy];
  }

  else
  {
    oCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    oCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"network = %@", oCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      oCopy2 = [(WAPersistentContainer *)self predicateForLAN:oCopy withError:error];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_18;
      }

      oCopy2 = [(WAPersistentContainer *)self predicateForNetwork:oCopy atKeyPath:@"network" withError:error];
    }
  }

  v19 = oCopy2;

  oCopy = v19;
LABEL_18:
  if (oCopy)
  {
    v20 = +[BSSMO entity];
    v21 = [(WAPersistentContainer *)self fetchDefaultAggregatedPropertyIn:v20 withPredicate:oCopy groupBy:v11 having:0 withSorting:v10 withError:error];
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

- (id)networksWithPredicate:(id)predicate inLANsWithPredicate:(id)withPredicate withError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  withPredicateCopy = withPredicate;
  v10 = [(WAPersistentContainer *)self lansWithPredicate:withPredicateCopy prefetchedProperties:0 withError:error];
  v11 = *error;
  v12 = WALogCategoryDeviceStoreHandle();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *error;
      v18 = 136446978;
      v19 = "[WAPersistentContainer networksWithPredicate:inLANsWithPredicate:withError:]";
      v20 = 1024;
      v21 = 478;
      v22 = 2112;
      v23 = withPredicateCopy;
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
      v25 = withPredicateCopy;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found %lu lans in %@: %@", &v18, 0x30u);
    }

    v14 = [(WAPersistentContainer *)self networksWithPredicate:predicateCopy inLANs:v10 withError:error];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)networksWithPredicate:(id)predicate inLANs:(id)ns withError:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  nsCopy = ns;
  v33 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = nsCopy;
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

        if (*error)
        {
          v21 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v26 = *error;
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

        if (predicateCopy)
        {
          [v19 addObject:predicateCopy];
        }

        v20 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v19];
        v21 = [(WAPersistentContainer *)self networksWithPredicate:v20 prefetchedProperties:&unk_1F483E4A0 withError:error];

        if (*error)
        {
          v27 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = *error;
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
          t_networksCount = [v16 t_networksCount];
          *buf = v31;
          v41 = "[WAPersistentContainer networksWithPredicate:inLANs:withError:]";
          v42 = 1024;
          v43 = 505;
          v44 = 1024;
          *v45 = t_networksCount;
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

  if ([v10 count] >= 2 && error)
  {
    v24 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A588];
    v39 = @"WAErrorCodeStore_MultiLANInNetwork";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *error = [v24 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9041 userInfo:v25];
LABEL_23:
  }

  v29 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)networksInLAN:(id)n withError:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  nCopy = n;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19[0] = nCopy;
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
  v7 = [(WAPersistentContainer *)self predicateForLan:nCopy withError:&v17];
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

  if (error)
  {
    v13 = v12;
    *error = v12;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (unint64_t)networkCountForLAN:(id)n withError:(id *)error
{
  nCopy = n;
  t_networksCount = [nCopy t_networksCount];
  v8 = +[LANMO entity];
  attributesByName = [v8 attributesByName];
  v10 = [attributesByName objectForKeyedSubscript:@"t_networksCount"];
  defaultValue = [v10 defaultValue];
  longLongValue = [defaultValue longLongValue];

  if (longLongValue == t_networksCount)
  {
    v13 = [(WAPersistentContainer *)self networksInLAN:nCopy withError:error];
  }

  t_networksCount2 = [nCopy t_networksCount];

  return t_networksCount2;
}

- (id)networksInSameLANsAsNetwork:(id)network withError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v16 = 0;
  v7 = [LANMO predicateForLANsInNetwork:networkCopy withError:&v16];
  v8 = v16;
  if (!v8)
  {
    v15 = 0;
    v9 = [(WAPersistentContainer *)self networksWithPredicate:0 inLANsWithPredicate:v7 withError:&v15];
    v10 = v15;
    if (!error)
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
    v22 = networkCopy;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:predicateForLanInNetwork:%@ failed %@", buf, 0x26u);
  }

  v9 = 0;
  if (error)
  {
LABEL_3:
    v11 = v10;
    *error = v10;
  }

LABEL_4:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)networksInSameLANsAsBSS:(id)s withError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  sCopy = s;
  v16 = 0;
  v7 = [LANMO predicateForLanContainingBSS:sCopy withError:&v16];
  v8 = v16;
  if (!v8)
  {
    v15 = 0;
    v9 = [(WAPersistentContainer *)self networksWithPredicate:0 inLANsWithPredicate:v7 withError:&v15];
    v10 = v15;
    if (!error)
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
    v22 = sCopy;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:predicateForLanContainingBSS:%@ failed %@", buf, 0x26u);
  }

  v9 = 0;
  if (error)
  {
LABEL_3:
    v11 = v10;
    *error = v10;
  }

LABEL_4:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)lansWithPredicate:(id)predicate inNetworksWithPredicate:(id)withPredicate withError:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  withPredicateCopy = withPredicate;
  v35 = objc_opt_new();
  v10 = [(WAPersistentContainer *)self networksWithPredicate:withPredicateCopy prefetchedProperties:&unk_1F483E4B8 withError:error];
  v11 = *error;
  v12 = WALogCategoryDeviceStoreHandle();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v31 = *error;
      *buf = 136446978;
      v42 = "[WAPersistentContainer lansWithPredicate:inNetworksWithPredicate:withError:]";
      v43 = 1024;
      v44 = 608;
      v45 = 2112;
      *v46 = withPredicateCopy;
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
      *&v46[10] = withPredicateCopy;
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
      v33 = withPredicateCopy;
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
          v20 = [LANMO predicateForLANsInNetwork:v18 withError:error, v32, v33];
          v21 = [v19 arrayWithObject:v20];

          if (*error)
          {
            v23 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v26 = *error;
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

          if (predicateCopy)
          {
            [v21 addObject:predicateCopy];
          }

          v22 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v21];
          v23 = [(WAPersistentContainer *)self lansWithPredicate:v22 prefetchedProperties:0 withError:error];

          if (*error)
          {
            v27 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = *error;
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
            withPredicateCopy = v33;
            v13 = obj;

            goto LABEL_25;
          }

          [v35 addObjectsFromArray:v23];
          [v18 setT_lansCount:{-[NSObject count](v23, "count")}];
          v24 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            t_lansCount = [v18 t_lansCount];
            *buf = 136447234;
            v42 = "[WAPersistentContainer lansWithPredicate:inNetworksWithPredicate:withError:]";
            v43 = 1024;
            v44 = 623;
            v45 = 1024;
            *v46 = t_lansCount;
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
      withPredicateCopy = v33;
    }

    v13 = obj;
  }

LABEL_25:

  v29 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)lansInNetwork:(id)network withError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v16 = 0;
  v7 = [(WAPersistentContainer *)self predicateForNetwork:networkCopy atKeyPath:0 withError:&v16];
  v8 = v16;
  if (!v8)
  {
    v15 = 0;
    v9 = [(WAPersistentContainer *)self lansInNetworksWithPredicate:v7 withError:&v15];
    v10 = v15;
    if (!error)
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
    v22 = networkCopy;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to fetch LAN for %@: %@", buf, 0x26u);
  }

  v9 = 0;
  if (error)
  {
LABEL_3:
    v11 = v10;
    *error = v10;
  }

LABEL_4:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (unint64_t)lansCountInNetwork:(id)network withError:(id *)error
{
  networkCopy = network;
  t_lansCount = [networkCopy t_lansCount];
  v8 = +[NetworkMO entity];
  attributesByName = [v8 attributesByName];
  v10 = [attributesByName objectForKeyedSubscript:@"t_lansCount"];
  defaultValue = [v10 defaultValue];
  longLongValue = [defaultValue longLongValue];

  if (longLongValue == t_lansCount)
  {
    v13 = [(WAPersistentContainer *)self lansInNetwork:networkCopy withError:error];
  }

  t_lansCount2 = [networkCopy t_lansCount];

  return t_lansCount2;
}

- (BOOL)updateBandsInUniqueMO:(id)o
{
  v38 = *MEMORY[0x1E69E9840];
  oCopy = o;
  v26 = 0;
  v25 = 0;
  if (!oCopy)
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
  v5 = [(WAPersistentContainer *)self bssidCountBy:&unk_1F483E4D0 inUniqueMO:oCopy withError:&v24];
  v6 = v24;
  if (v6)
  {
    v7 = v6;
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      entity = [oCopy entity];
      name = [entity name];
      *buf = 136447234;
      v29 = "[WAPersistentContainer updateBandsInUniqueMO:]";
      v30 = 1024;
      v31 = 697;
      v32 = 2112;
      v33 = name;
      v34 = 2112;
      v35 = oCopy;
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
    v14 &= [(WAPersistentContainer *)self setHasBandsForMO:oCopy forBand:v13 to:*(&v25 + v13), v20];
    ++v13;
  }

  while (v13 != 3);
LABEL_12:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)updateUsage:(id)usage with:(id)with on:(id)on at:(id)at
{
  v53[1] = *MEMORY[0x1E69E9840];
  usageCopy = usage;
  withCopy = with;
  onCopy = on;
  atCopy = at;
  v42 = 0;
  v14 = [(WAPersistentContainer *)self bssForBssid:onCopy prefetchProperties:&unk_1F483E4E8 withError:&v42];
  v15 = v42;
  v16 = v15;
  if (!v14 || v15)
  {
    managedObjectClassName2 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(managedObjectClassName2, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v44 = "[WAPersistentContainer updateUsage:with:on:at:]";
      v45 = 1024;
      v46 = 722;
      v47 = 2112;
      v48 = onCopy;
      v49 = 2112;
      v50 = v16;
      _os_log_impl(&dword_1C8460000, managedObjectClassName2, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to find BSS record for %@: %@", buf, 0x26u);
    }

    goto LABEL_18;
  }

  managedObjectClassName = [usageCopy managedObjectClassName];
  NSClassFromString(managedObjectClassName);
  v18 = objc_opt_respondsToSelector();

  if ((v18 & 1) == 0)
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      managedObjectClassName2 = [usageCopy managedObjectClassName];
      name = [usageCopy name];
      *buf = 136446978;
      v44 = "[WAPersistentContainer updateUsage:with:on:at:]";
      v45 = 1024;
      v46 = 724;
      v47 = 2112;
      v48 = managedObjectClassName2;
      v49 = 2112;
      v50 = name;
      v38 = "%{public}s::%d:Class %@ for %@ does not implement constraintsWithBss:date:lqm:";
LABEL_17:
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_FAULT, v38, buf, 0x26u);

LABEL_18:
    }

LABEL_22:
    v33 = 0;
    goto LABEL_10;
  }

  managedObjectClassName3 = [usageCopy managedObjectClassName];
  NSClassFromString(managedObjectClassName3);
  v20 = objc_opt_respondsToSelector();

  if ((v20 & 1) == 0)
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      managedObjectClassName2 = [usageCopy managedObjectClassName];
      name = [usageCopy name];
      *buf = 136446978;
      v44 = "[WAPersistentContainer updateUsage:with:on:at:]";
      v45 = 1024;
      v46 = 725;
      v47 = 2112;
      v48 = managedObjectClassName2;
      v49 = 2112;
      v50 = name;
      v38 = "%{public}s::%d:Class %@ for %@ does not implement accumulator";
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  managedObjectClassName4 = [usageCopy managedObjectClassName];
  v22 = [NSClassFromString(managedObjectClassName4) constraintsWithBss:v14 date:atCopy lqm:withCopy onEntity:usageCopy];

  managedObjectClassName5 = [usageCopy managedObjectClassName];
  accumulator = [NSClassFromString(managedObjectClassName5) accumulator];

  v53[0] = accumulator;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
  v41 = 0;
  v26 = [(WAPersistentContainer *)self uniqueObjectFor:usageCopy withConstraints:v22 allowCreate:1 prefetchProperties:v25 withError:&v41];
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

  v40 = onCopy;
  [v26 setValue:v14 forKey:@"bss"];
  [v14 setLastSeen:atCopy];
  v27 = MEMORY[0x1E696AD98];
  v28 = [v26 valueForKey:accumulator];
  v29 = [v27 numberWithLongLong:{objc_msgSend(withCopy, "duration") + objc_msgSend(v28, "longLongValue")}];
  [v26 setValue:v29 forKey:accumulator];

  v30 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [usageCopy name];
    v32 = [v26 valueForKey:accumulator];
    *buf = 136447234;
    v44 = "[WAPersistentContainer updateUsage:with:on:at:]";
    v45 = 1024;
    v46 = 738;
    v47 = 2112;
    v48 = name2;
    v49 = 2112;
    v50 = v22;
    v51 = 2112;
    v52 = v32;
    _os_log_impl(&dword_1C8460000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:updated %@ for %@ to %@", buf, 0x30u);
  }

  v33 = 1;
  v16 = v26;
  onCopy = v40;
LABEL_10:

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

+ (id)dimensionsForUsageEntity:(id)entity
{
  v31 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = objc_opt_new();
  managedObjectClassName = [entityCopy managedObjectClassName];
  NSClassFromString(managedObjectClassName);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__WAPersistentContainer_dimensionsForUsageEntity___block_invoke;
    v14[3] = &unk_1E830E5C8;
    v16 = &v17;
    v15 = entityCopy;
    [self performBlock:v14 overConstraintsOfEntity:v15 withConstraints:0];
    v7 = v15;
  }

  else
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      managedObjectClassName2 = [entityCopy managedObjectClassName];
      name = [entityCopy name];
      *buf = 136446978;
      v24 = "+[WAPersistentContainer dimensionsForUsageEntity:]";
      v25 = 1024;
      v26 = 750;
      v27 = 2112;
      v28 = managedObjectClassName2;
      v29 = 2112;
      v30 = name;
      v13 = name;
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

- (id)usageOf:(id)of inUsageTable:(id)table forDateSpan:(id)span withSorting:(id)sorting withError:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  v12 = MEMORY[0x1E695DF70];
  sortingCopy = sorting;
  spanCopy = span;
  ofCopy = of;
  v16 = [WADeviceAnalyticsUsageDimension dimensionsUsedAsFilterIn:ofCopy];
  v17 = [v16 valueForKey:@"filterPredicate"];
  v18 = [v12 arrayWithArray:v17];

  v19 = MEMORY[0x1E696AE18];
  greaterOrEqualTo = [spanCopy greaterOrEqualTo];
  v21 = [v19 predicateWithFormat:@"date_ge == %@", greaterOrEqualTo];
  [v18 addObject:v21];

  v22 = MEMORY[0x1E696AE18];
  lowerThan = [spanCopy lowerThan];

  v24 = [v22 predicateWithFormat:@"date_lt == %@", lowerThan];
  [v18 addObject:v24];

  v25 = MEMORY[0x1E695DF70];
  v26 = [WADeviceAnalyticsUsageDimension dimensionsUsedAsGroupBy:ofCopy];

  v27 = [v26 valueForKey:@"dimension"];
  v28 = [v25 arrayWithArray:v27];

  [v28 addObject:@"date_ge"];
  [v28 addObject:@"date_lt"];
  v29 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    name = [tableCopy name];
    *buf = 136447234;
    v38 = "[WAPersistentContainer usageOf:inUsageTable:forDateSpan:withSorting:withError:]";
    v39 = 1024;
    v40 = 792;
    v41 = 2112;
    v42 = name;
    v43 = 2112;
    v44 = v18;
    v45 = 2112;
    v46 = v28;
    _os_log_impl(&dword_1C8460000, v29, OS_LOG_TYPE_DEBUG, "%{public}s::%d:querying table: %@ with filters: %@ and group-by: %@", buf, 0x30u);
  }

  v31 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v18];
  v32 = [(WAPersistentContainer *)self fetchDefaultAggregatedPropertyIn:tableCopy withPredicate:v31 groupBy:v28 having:0 withSorting:sortingCopy withError:error];

  if (v32 && (!error || !*error))
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

    if (error)
    {
      *error = 0;
    }
  }

  v34 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)newDatedEventObjectFor:(id)for withDate:(id)date withError:(id *)error
{
  v44[1] = *MEMORY[0x1E69E9840];
  forCopy = for;
  dateCopy = date;
  v10 = dateCopy;
  if (!forCopy)
  {
    if (error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A588];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entity nil"];
      v44[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      *error = [v16 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v18];
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

  if (!dateCopy)
  {
    if (error)
    {
      v20 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A588];
      v21 = MEMORY[0x1E696AEC0];
      name = [forCopy name];
      v23 = [v21 stringWithFormat:@"Dated events %@ must provide a non nil date", name];
      v42 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *error = [v20 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v24];
    }

    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      name2 = [forCopy name];
      *buf = 136446722;
      v36 = "[WAPersistentContainer newDatedEventObjectFor:withDate:withError:]";
      v37 = 1024;
      v38 = 819;
      v39 = 2112;
      v40 = name2;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_FAULT, "%{public}s::%d:Dated events %@ must provide a non nil date", buf, 0x1Cu);
    }

LABEL_14:

    v12 = 0;
LABEL_20:
    v13 = 0;
    goto LABEL_5;
  }

  name3 = [forCopy name];
  v12 = [(WAPersistentContainer *)self createNewObjectForEntity:name3 withError:error];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v26 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A588];
      v27 = MEMORY[0x1E696AEC0];
      name4 = [forCopy name];
      v29 = [v27 stringWithFormat:@"Entity %@ is not a Dated Event", name4];
      v34 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *error = [v26 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v30];
    }

    v31 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      name5 = [forCopy name];
      *buf = 136446722;
      v36 = "[WAPersistentContainer newDatedEventObjectFor:withDate:withError:]";
      v37 = 1024;
      v38 = 822;
      v39 = 2112;
      v40 = name5;
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

- (id)mostRecentDatedEvent:(id)event before:(id)before withPrefetchedProperties:(id)properties withError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  beforeCopy = before;
  propertiesCopy = properties;
  v13 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v13))
  {
    name = [eventCopy name];
    *buf = 138412290;
    v27 = name;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer mostRecentDatedEvent", "%@", buf, 0xCu);
  }

  if (beforeCopy)
  {
    v15 = [(WAPersistentContainer *)self predicateForEntity:eventCopy before:beforeCopy withError:error];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v25 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v18 = [(WAPersistentContainer *)self requestForObjects:eventCopy withPredicate:v15 withSorting:v17 withPrefetchedProperties:propertiesCopy withLimit:1];

  if (beforeCopy)
  {
  }

  v19 = [(WAPersistentContainer *)self fetch:v18 withError:error];
  v20 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v20))
  {
    name2 = [eventCopy name];
    *buf = 138412290;
    v27 = name2;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer mostRecentDatedEvent", "%@", buf, 0xCu);
  }

  firstObject = [v19 firstObject];

  v23 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)mostRecentDatedEvents:(unint64_t)events withError:(id *)error
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
  v11 = [(WAPersistentContainer *)self requestForObjects:v8 withPredicate:0 withSorting:v10 withPrefetchedProperties:0 withLimit:events];

  v12 = [(WAPersistentContainer *)self fetch:v11 withError:error];
  v13 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer mostRecentDatedEvents", "", v16, 2u);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)mostRecentRoamsFromBssid:(id)bssid withPrefetchedProperties:(id)properties limit:(unint64_t)limit
{
  v33[1] = *MEMORY[0x1E69E9840];
  bssidCopy = bssid;
  propertiesCopy = properties;
  v10 = +[RoamMO entity];
  v11 = [RoamMO roamsOutOfBssid:bssidCopy];
  v12 = +[WAPersistentContainer sortByNewestDateFirst];
  v33[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v24 = 0;
  v14 = [(WAPersistentContainer *)self fetchObjects:v10 withPredicate:v11 withSorting:v13 withPrefetchedProperties:propertiesCopy withLimit:limit withError:&v24];

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
      v30 = bssidCopy;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch latest roam out of %@: %@", buf, 0x26u);
    }

    goto LABEL_6;
  }

  if ([v14 count])
  {
    firstObject = [v14 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        firstObject2 = [v14 firstObject];
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

- (id)mostRecentRoamsFromBSS:(id)s withPrefetchedProperties:(id)properties limit:(unint64_t)limit
{
  v33[1] = *MEMORY[0x1E69E9840];
  sCopy = s;
  propertiesCopy = properties;
  v10 = +[RoamMO entity];
  v11 = [RoamMO roamsOutOf:sCopy];
  v12 = +[WAPersistentContainer sortByNewestDateFirst];
  v33[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v24 = 0;
  v14 = [(WAPersistentContainer *)self fetchObjects:v10 withPredicate:v11 withSorting:v13 withPrefetchedProperties:propertiesCopy withLimit:limit withError:&v24];

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
      v30 = sCopy;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch latest roam out of %@: %@", buf, 0x26u);
    }

    goto LABEL_6;
  }

  if ([v14 count])
  {
    firstObject = [v14 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        firstObject2 = [v14 firstObject];
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

- (unint64_t)successfulRoamCountFrom:(id)from to:(id)to
{
  v31[3] = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v8 = +[RoamMO entity];
  v9 = MEMORY[0x1E696AB28];
  v10 = [RoamMO roamsOutOfBssid:fromCopy];
  v31[0] = v10;
  v11 = [RoamMO roamsOutOfBssid:toCopy];
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
      v26 = fromCopy;
      v27 = 2112;
      v28 = toCopy;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch successful latest roam from %@ to %@: %@", buf, 0x30u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)predicateForRecordsOlderThan:(double)than
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-than];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %@", @"date", v3];

  return v4;
}

+ (id)predicateForRecordsNewerThan:(double)than
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-than];
  v4 = MEMORY[0x1E696AE18];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [v4 predicateWithFormat:@"%K > %@ and %K < %@", @"date", v3, @"date", date];

  return v6;
}

+ (id)sortByOlderDateFirstOnProperty:(id)property
{
  v3 = MEMORY[0x1E696AEB0];
  propertyCopy = property;
  v5 = [[v3 alloc] initWithKey:propertyCopy ascending:1];

  return v5;
}

+ (id)sortByNewestDateFirstOnProperty:(id)property
{
  v3 = MEMORY[0x1E696AEB0];
  propertyCopy = property;
  v5 = [[v3 alloc] initWithKey:propertyCopy ascending:0];

  return v5;
}

- (id)mostRecentPolicy:(id)policy withError:(id *)error
{
  policy = [MEMORY[0x1E696AE18] predicateWithFormat:@"policyType = %@", policy];
  v7 = [(WAPersistentContainer *)self mostRecentPolicyFilteredBy:policy withError:error];

  return v7;
}

- (id)mostRecentPolicyFilteredBy:(id)by withError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  byCopy = by;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    *buf = 138412290;
    v19 = byCopy;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer mostRecentPolicy", "%@", buf, 0xCu);
  }

  v8 = +[PoliciesMO entity];
  v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v17 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v11 = [(WAPersistentContainer *)self requestForObjects:v8 withPredicate:byCopy withSorting:v10 withPrefetchedProperties:&unk_1F483E500 withLimit:1];

  v12 = [(WAPersistentContainer *)self fetch:v11 withError:error];
  v13 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v13))
  {
    *buf = 138412290;
    v19 = byCopy;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer mostRecentPolicy", "%@", buf, 0xCu);
  }

  firstObject = [v12 firstObject];

  v15 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (unint64_t)countObjects:(id)objects withPredicate:(id)predicate withError:(id *)error
{
  v7 = [(WAPersistentContainer *)self requestForObjects:objects withPredicate:predicate withSorting:0 withPrefetchedProperties:0 withLimit:0];
  v8 = [(WAPersistentContainer *)self fetchCount:v7 withError:error];

  return v8;
}

- (id)fetchObjects:(id)objects withPredicate:(id)predicate withSorting:(id)sorting withPrefetchedProperties:(id)properties withLimit:(unint64_t)limit withError:(id *)error
{
  v10 = [(WAPersistentContainer *)self requestForObjects:objects withPredicate:predicate withSorting:sorting withPrefetchedProperties:properties withLimit:limit];
  v11 = [(WAPersistentContainer *)self fetch:v10 withError:error];

  return v11;
}

- (id)fetchDistinctPropertiesIn:(id)in withPredicate:(id)predicate withSorting:(id)sorting withPrefetchedProperties:(id)properties withLimit:(unint64_t)limit withError:(id *)error
{
  v10 = [(WAPersistentContainer *)self requestForDistinctProperties:in withPredicate:predicate withSorting:sorting withPrefetchedProperties:properties withLimit:limit];
  v11 = [(WAPersistentContainer *)self fetch:v10 withError:error];

  return v11;
}

- (id)fetchDefaultAggregatedPropertyIn:(id)in withPredicate:(id)predicate groupBy:(id)by having:(id)having withSorting:(id)sorting withError:(id *)error
{
  v10 = [(WAPersistentContainer *)self requestForDefaultAggregatedProperties:in withPredicate:predicate groupBy:by having:having withSorting:sorting];
  v11 = [(WAPersistentContainer *)self fetch:v10 withError:error];

  return v11;
}

- (id)createNewObjectForEntity:(id)entity withError:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  entityCopy = entity;
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
    v39 = entityCopy;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer createNewObjectForEntity", "%@", buf, 0xCu);
  }

  if (!entityCopy)
  {
    if (error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A588];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entityName nil"];
      v45[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      *error = [v16 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v18];
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

  viewContext = [(WAPersistentContainer *)self viewContext];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __60__WAPersistentContainer_createNewObjectForEntity_withError___block_invoke;
  v28 = &unk_1E830E5F0;
  v31 = &v32;
  v9 = entityCopy;
  v29 = v9;
  selfCopy = self;
  [viewContext performBlockAndWait:&v25];

  if (!v33[5])
  {
    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A588];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create a new object for entity %@", v9, v25, v26, v27, v28];
      v43 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *error = [v22 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v24];
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
    v39 = entityCopy;
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

- (id)requestFor:(unint64_t)for forEntity:(id)entity orForEntityWithName:(id)name withPredicate:(id)predicate withSorting:(id)sorting withPrefetchedProperties:(id)properties groupBy:(id)by having:(id)self0 withLimit:(unint64_t)self1
{
  v68 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  nameCopy = name;
  predicateCopy = predicate;
  sortingCopy = sorting;
  propertiesCopy = properties;
  byCopy = by;
  havingCopy = having;
  v53 = sortingCopy;
  if (sortingCopy)
  {
    v54 = [MEMORY[0x1E695DF70] arrayWithArray:sortingCopy];
  }

  else
  {
    v54 = objc_opt_new();
  }

  v19 = MEMORY[0x1E695D5E0];
  if (entityCopy)
  {
    name = [entityCopy name];
    v21 = [v19 fetchRequestWithEntityName:name];

    if (!v21)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:nameCopy];
    if (!v21)
    {
LABEL_45:
      v50 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        name2 = [entityCopy name];
        *buf = 136446978;
        v61 = "[WAPersistentContainer requestFor:forEntity:orForEntityWithName:withPredicate:withSorting:withPrefetchedProperties:groupBy:having:withLimit:]";
        v62 = 1024;
        v63 = 1141;
        v64 = 2112;
        v65 = name2;
        v66 = 2112;
        v67 = entityCopy;
        _os_log_impl(&dword_1C8460000, v50, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to get fetchRequest for %@ %@", buf, 0x26u);
      }

      v21 = 0;
      goto LABEL_48;
    }
  }

  [v21 setResultType:{for, limit, v53}];
  if (for == 2)
  {
    [v21 setReturnsDistinctResults:1];
    if (byCopy)
    {
      if (propertiesCopy)
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

      else if (entityCopy)
      {
        managedObjectClassName = [entityCopy managedObjectClassName];
        NSClassFromString(managedObjectClassName);
        v23 = objc_opt_respondsToSelector();

        if (v23)
        {
          managedObjectClassName2 = [entityCopy managedObjectClassName];
          NSClassFromString(managedObjectClassName2);
          v25 = objc_opt_respondsToSelector();

          if (v25)
          {
            managedObjectClassName3 = [entityCopy managedObjectClassName];
            NSClassFromString(managedObjectClassName3);
            v27 = objc_opt_respondsToSelector();

            if (v27)
            {
              [v21 setPropertiesToGroupBy:byCopy];
              if (havingCopy)
              {
                [v21 setHavingPredicate:?];
              }

              v28 = [MEMORY[0x1E695DF70] arrayWithArray:byCopy];
              managedObjectClassName4 = [entityCopy managedObjectClassName];
              aggregateAs = [NSClassFromString(managedObjectClassName4) aggregateAs];
              managedObjectClassName5 = [entityCopy managedObjectClassName];
              accumulator = [NSClassFromString(managedObjectClassName5) accumulator];
              managedObjectClassName6 = [entityCopy managedObjectClassName];
              aggregateName = [NSClassFromString(managedObjectClassName6) aggregateName];
              v35 = [(WAPersistentContainer *)self expressionWithAggregateFunction:aggregateAs overField:accumulator called:aggregateName];
              [v28 addObject:v35];

              [v21 setPropertiesToFetch:v28];
              v36 = MEMORY[0x1E696AEB0];
              managedObjectClassName7 = [entityCopy managedObjectClassName];
              aggregateName2 = [NSClassFromString(managedObjectClassName7) aggregateName];
              v39 = [v36 sortDescriptorWithKey:aggregateName2 ascending:0];
              [v54 addObject:v39];

              goto LABEL_18;
            }

            v43 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
            {
              managedObjectClassName8 = [entityCopy managedObjectClassName];
              name3 = [entityCopy name];
              *buf = 136446978;
              v61 = "[WAPersistentContainer requestFor:forEntity:orForEntityWithName:withPredicate:withSorting:withPrefetchedProperties:groupBy:having:withLimit:]";
              v62 = 1024;
              v63 = 1151;
              v64 = 2112;
              v65 = managedObjectClassName8;
              v66 = 2112;
              v67 = name3;
              _os_log_impl(&dword_1C8460000, v43, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ for %@ does not implement aggregateName", buf, 0x26u);
            }
          }

          else
          {
            v43 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
            {
              managedObjectClassName9 = [entityCopy managedObjectClassName];
              name4 = [entityCopy name];
              *buf = 136446978;
              v61 = "[WAPersistentContainer requestFor:forEntity:orForEntityWithName:withPredicate:withSorting:withPrefetchedProperties:groupBy:having:withLimit:]";
              v62 = 1024;
              v63 = 1150;
              v64 = 2112;
              v65 = managedObjectClassName9;
              v66 = 2112;
              v67 = name4;
              _os_log_impl(&dword_1C8460000, v43, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ for %@ does not implement aggregateAs", buf, 0x26u);
            }
          }
        }

        else
        {
          v43 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            managedObjectClassName10 = [entityCopy managedObjectClassName];
            name5 = [entityCopy name];
            *buf = 136446978;
            v61 = "[WAPersistentContainer requestFor:forEntity:orForEntityWithName:withPredicate:withSorting:withPrefetchedProperties:groupBy:having:withLimit:]";
            v62 = 1024;
            v63 = 1149;
            v64 = 2112;
            v65 = managedObjectClassName10;
            v66 = 2112;
            v67 = name5;
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
  if (predicateCopy)
  {
    [v21 setPredicate:?];
  }

  v40 = v54;
  if (propertiesCopy)
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

- (id)expressionWithAggregateFunction:(id)function overField:(id)field called:(id)called
{
  v17[1] = *MEMORY[0x1E69E9840];
  calledCopy = called;
  fieldCopy = field;
  functionCopy = function;
  v10 = objc_opt_new();
  [v10 setName:calledCopy];

  v11 = MEMORY[0x1E696ABC8];
  v12 = [MEMORY[0x1E696ABC8] expressionForKeyPath:fieldCopy];

  v17[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v14 = [v11 expressionForFunction:functionCopy arguments:v13];

  [v10 setExpression:v14];
  [v10 setExpressionResultType:300];
  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)fetch:(id)fetch withError:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    entityName = [fetchCopy entityName];
    predicate = [fetchCopy predicate];
    predicateFormat = [predicate predicateFormat];
    *buf = 138412802;
    *&buf[4] = entityName;
    *&buf[12] = 2112;
    *&buf[14] = predicateFormat;
    *&buf[22] = 2048;
    fetchLimit = [fetchCopy fetchLimit];
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAPersistentContainer fetchObjects", "%@ %@ %lu", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  fetchLimit = __Block_byref_object_copy__1;
  v46 = __Block_byref_object_dispose__1;
  v47 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  viewContext = [(WAPersistentContainer *)self viewContext];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __41__WAPersistentContainer_fetch_withError___block_invoke;
  v25 = &unk_1E830E618;
  v12 = fetchCopy;
  v26 = v12;
  selfCopy = self;
  v28 = buf;
  v29 = &v30;
  [viewContext performBlockAndWait:&v22];

  if (error)
  {
    *error = v31[5];
  }

  v13 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v13))
  {
    entityName2 = [v12 entityName];
    predicate2 = [v12 predicate];
    predicateFormat2 = [predicate2 predicateFormat];
    fetchLimit2 = [v12 fetchLimit];
    if (*(*&buf[8] + 40))
    {
      v18 = @"successful";
    }

    else
    {
      v18 = @"FAILED";
    }

    *v36 = 138413058;
    v37 = entityName2;
    v38 = 2112;
    v39 = predicateFormat2;
    v40 = 2048;
    v41 = fetchLimit2;
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

- (unint64_t)fetchCount:(id)count withError:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  countCopy = count;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    entityName = [countCopy entityName];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = entityName;
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
  viewContext = [(WAPersistentContainer *)self viewContext];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __46__WAPersistentContainer_fetchCount_withError___block_invoke;
  v22 = &unk_1E830E618;
  v23 = countCopy;
  selfCopy = self;
  v25 = &v27;
  p_buf = &buf;
  [viewContext performBlockAndWait:&v19];

  if (error)
  {
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v11))
  {
    entityName2 = [countCopy entityName];
    v13 = entityName2;
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
    v32 = entityName2;
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

- (id)predicateForEntity:(id)entity olderThan:(double)than withError:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  v9 = [(WAPersistentContainer *)self datePropertyForEntity:entityCopy];
  if (v9)
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-than];
    v12 = [v10 predicateWithFormat:@"%K < %@", v9, v11];
  }

  else
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A588];
      v29[0] = @"WAErrorCodeStore_EntityNotDated";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *error = [v15 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9037 userInfo:v16];
    }

    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      name = [entityCopy name];
      managedObjectClassName = [entityCopy managedObjectClassName];
      *buf = 136446978;
      v21 = "[WAPersistentContainer predicateForEntity:olderThan:withError:]";
      v22 = 1024;
      v23 = 1302;
      v24 = 2112;
      v25 = name;
      v26 = 2112;
      v27 = managedObjectClassName;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to filter entity %@ by date: unknown dated property [%@ does not respond to selector 'propertyForAging'", buf, 0x26u);
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)predicateForEntity:(id)entity before:(id)before withError:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  beforeCopy = before;
  v10 = [(WAPersistentContainer *)self datePropertyForEntity:entityCopy];
  if (v10)
  {
    beforeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %@", v10, beforeCopy];
  }

  else
  {
    if (error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A588];
      v28[0] = @"WAErrorCodeStore_EntityNotDated";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      *error = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9037 userInfo:v15];
    }

    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      name = [entityCopy name];
      managedObjectClassName = [entityCopy managedObjectClassName];
      *buf = 136446978;
      v20 = "[WAPersistentContainer predicateForEntity:before:withError:]";
      v21 = 1024;
      v22 = 1314;
      v23 = 2112;
      v24 = name;
      v25 = 2112;
      v26 = managedObjectClassName;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to filter entity %@ by date: unknown dated property [%@ does not respond to selector 'propertyForAging'", buf, 0x26u);
    }

    beforeCopy = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return beforeCopy;
}

- (id)predicateForEntity:(id)entity newerThan:(double)than withError:(id *)error
{
  v7 = MEMORY[0x1E695DF00];
  v8 = -than;
  entityCopy = entity;
  v10 = [v7 dateWithTimeIntervalSinceNow:v8];
  v11 = [(WAPersistentContainer *)self predicateForEntity:entityCopy newerThanDate:v10 withError:error];

  return v11;
}

- (id)predicateForEntity:(id)entity newerThanDate:(id)date withError:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  dateCopy = date;
  v10 = [(WAPersistentContainer *)self datePropertyForEntity:entityCopy];
  if (v10)
  {
    dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %@", v10, dateCopy];
  }

  else
  {
    if (error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A588];
      v28[0] = @"WAErrorCodeStore_EntityNotDated";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      *error = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9037 userInfo:v15];
    }

    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      name = [entityCopy name];
      managedObjectClassName = [entityCopy managedObjectClassName];
      *buf = 136446978;
      v20 = "[WAPersistentContainer predicateForEntity:newerThanDate:withError:]";
      v21 = 1024;
      v22 = 1343;
      v23 = 2112;
      v24 = name;
      v25 = 2112;
      v26 = managedObjectClassName;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to filter entity %@ by date: unknown dated property [%@ does not respond to selector 'propertyForAging'", buf, 0x26u);
    }

    dateCopy = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return dateCopy;
}

- (id)datePropertyForEntity:(id)entity
{
  entityCopy = entity;
  attributesByName = [entityCopy attributesByName];
  allKeys = [attributesByName allKeys];
  if ([allKeys containsObject:@"date"])
  {
    attributesByName2 = [entityCopy attributesByName];
    propertyForAging = @"date";
    v8 = [attributesByName2 objectForKeyedSubscript:@"date"];
    attributeType = [v8 attributeType];

    if (attributeType == 900)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  managedObjectClassName = [entityCopy managedObjectClassName];
  NSClassFromString(managedObjectClassName);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    managedObjectClassName2 = [entityCopy managedObjectClassName];
    propertyForAging = [NSClassFromString(managedObjectClassName2) propertyForAging];
  }

  else
  {
    propertyForAging = 0;
  }

LABEL_8:

  return propertyForAging;
}

- (int64_t)defaultFetchMaxAgeForEntity:(id)entity
{
  entityCopy = entity;
  managedObjectClassName = [entityCopy managedObjectClassName];
  NSClassFromString(managedObjectClassName);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    managedObjectClassName2 = [entityCopy managedObjectClassName];
    defaultFetchMaxAge = [NSClassFromString(managedObjectClassName2) defaultFetchMaxAge];
  }

  else
  {
    defaultFetchMaxAge = -1;
  }

  return defaultFetchMaxAge;
}

- (int64_t)defaultFetchLimitForEntity:(id)entity
{
  entityCopy = entity;
  managedObjectClassName = [entityCopy managedObjectClassName];
  NSClassFromString(managedObjectClassName);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    managedObjectClassName2 = [entityCopy managedObjectClassName];
    defaultFetchLimit = [NSClassFromString(managedObjectClassName2) defaultFetchLimit];
  }

  else
  {
    defaultFetchLimit = -1;
  }

  return defaultFetchLimit;
}

- (BOOL)managedObjectContextSave:(BOOL)save reset:(BOOL)reset release:(BOOL)release withError:(id *)error
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
    saveCopy = save;
    v10[4] = self;
    v10[5] = &v20;
    v10[6] = &v14;
    resetCopy = reset;
    releaseCopy = release;
    [(NSManagedObjectContext *)backgroundMOC performBlockAndWait:v10];
  }

  if (error)
  {
    *error = v15[5];
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

- (BOOL)saveManagedObjectContextWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_backgroundMOC)
  {
    v9 = 0;
    LOBYTE(v8) = 0;
    if (!error)
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
      localizedDescription = [v9 localizedDescription];
      userInfo = [v9 userInfo];
      *buf = 136447234;
      v24 = "[WAPersistentContainer saveManagedObjectContextWithError:]";
      v25 = 1024;
      v26 = 1440;
      v27 = 2048;
      v28 = v13;
      v29 = 2112;
      v30 = localizedDescription;
      v31 = 2112;
      v32 = userInfo;
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

  if (error)
  {
LABEL_13:
    v18 = v9;
    *error = v9;
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

- (BOOL)ageOutAnalyticsWithReason:(id)reason withExtraWeeks:(unint64_t)weeks withError:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  context = objc_autoreleasePoolPush();
  [(WAPersistentContainer *)self analyticsAgeOutTimeIntervalSecs];
  v8 = v7 - (604800 * weeks);
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
  name = [v24 name];
  v26 = [v20 objectForKeyedSubscript:name];
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
  name2 = [v32 name];
  v34 = [v20 objectForKeyedSubscript:name2];
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
  name3 = [v40 name];
  v42 = [v20 objectForKeyedSubscript:name3];
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
  name4 = [v48 name];
  v50 = [v20 objectForKeyedSubscript:name4];
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
  if (error)
  {
    v54 = v52;
    *error = v52;
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
    unsignedIntegerValue = [v4 unsignedIntegerValue];
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
      v20 = unsignedIntegerValue >> 10;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:OVERRIDING %@ from %d MB to %lu KB", &v11, 0x2Cu);
    }
  }

  else
  {
    unsignedIntegerValue = 104857600;
  }

  v8 = [[WAPCStoreSize alloc] initWithMaxStoreSize:unsignedIntegerValue];
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
  _entitiesWithDate = [(WAPersistentContainer *)self _entitiesWithDate];
  v5 = [v3 setWithArray:_entitiesWithDate];

  _usageEntities = [(WAPersistentContainer *)self _usageEntities];
  [v5 addObjectsFromArray:_usageEntities];

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
      superentity = [v14 superentity];

      if (superentity)
      {
        v16 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          name = [v14 name];
          *buf = 136446722;
          v57 = "[WAPersistentContainer _pruneManagedObjects]";
          v58 = 1024;
          v59 = 1589;
          v60 = 2112;
          v61 = name;
          _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:entity %@ is a sub-entity, skip (will be pruned at the parent level)", buf, 0x1Cu);
        }

        goto LABEL_28;
      }

      v16 = objc_opt_new();
      managedObjectClassName = [v14 managedObjectClassName];
      NSClassFromString(managedObjectClassName);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_15:
        v48 = v10;
        v24 = v7;
        propertiesByName = [v14 propertiesByName];
        allKeys = [propertiesByName allKeys];
        defaultDatedPropertyName = [*(v11 + 656) defaultDatedPropertyName];
        v28 = v11;
        v29 = [allKeys containsObject:defaultDatedPropertyName];

        if (v29)
        {
          v30 = *(v28 + 656);
          defaultDatedPropertyName2 = [v30 defaultDatedPropertyName];
          v31 = [v30 sortByOlderDateFirstOnProperty:defaultDatedPropertyName2];
          [v16 addObject:v31];

          v11 = v28;
        }

        else
        {
          defaultDatedPropertyName2 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(defaultDatedPropertyName2, OS_LOG_TYPE_FAULT))
          {
            name2 = [v14 name];
            v11 = 0x1E830D000uLL;
            v33 = +[WAPersistentContainer defaultDatedPropertyName];
            *buf = 136446978;
            v57 = "[WAPersistentContainer _pruneManagedObjects]";
            v58 = 1024;
            v59 = 1600;
            v60 = 2112;
            v61 = name2;
            v62 = 2112;
            v63 = v33;
            _os_log_impl(&dword_1C8460000, defaultDatedPropertyName2, OS_LOG_TYPE_FAULT, "%{public}s::%d:entity %@ does not respond to selector datedProperty, nor contains a %@ property and cannot be sorted before pruning!!", buf, 0x26u);
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

      managedObjectClassName2 = [v14 managedObjectClassName];
      v20 = [NSClassFromString(managedObjectClassName2) performSelector:sel_datedProperty];

      if (!v20)
      {
        goto LABEL_15;
      }

      v21 = *(v11 + 656);
      defaultDatedPropertyName2 = [v14 managedObjectClassName];
      v23 = [v21 sortByOlderDateFirstOnProperty:{-[objc_class performSelector:](NSClassFromString(&defaultDatedPropertyName2->isa), "performSelector:", sel_datedProperty)}];
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
          name3 = [v14 name];
          *buf = 136446978;
          v57 = "[WAPersistentContainer _pruneManagedObjects]";
          v58 = 1024;
          v59 = 1612;
          v60 = 2112;
          v61 = name3;
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
          name4 = [v14 name];
          *buf = 136446978;
          v57 = "[WAPersistentContainer _pruneManagedObjects]";
          v58 = 1024;
          v59 = 1625;
          v60 = 2112;
          v61 = name4;
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

- (id)requestForObjectsInEntity:(id)entity withBSSInList:(id)list
{
  listCopy = list;
  entityCopy = entity;
  v8 = objc_opt_new();
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __65__WAPersistentContainer_requestForObjectsInEntity_withBSSInList___block_invoke;
  v16 = &unk_1E830E668;
  v17 = v8;
  v9 = v8;
  [listCopy enumerateObjectsUsingBlock:&v13];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bssid IN (%@)", v9, v13, v14, v15, v16];
  v11 = [(WAPersistentContainer *)self requestForObjects:entityCopy withPredicate:v10 withSorting:0 withPrefetchedProperties:0 withLimit:0];

  return v11;
}

void __65__WAPersistentContainer_requestForObjectsInEntity_withBSSInList___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [BSSMO formattedMACAddressNotation:a2 as:6];
  [v2 addObject:v3];
}

- (unint64_t)batchDeleteBSSList:(id)list withError:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136446722;
    v14 = "[WAPersistentContainer batchDeleteBSSList:withError:]";
    v15 = 1024;
    v16 = 1650;
    v17 = 2112;
    v18 = listCopy;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting BSSMO with bssid in %@", &v13, 0x1Cu);
  }

  v8 = +[BSSMO entity];
  v9 = [(WAPersistentContainer *)self requestForObjectsInEntity:v8 withBSSInList:listCopy];
  v10 = [(WAPersistentContainer *)self batchDelete:v9 withError:error];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unint64_t)batchDelete:(id)delete newerThanDate:(id)date andPredicate:(id)predicate withError:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  deleteCopy = delete;
  dateCopy = date;
  predicateCopy = predicate;
  _entitiesWithDate = [(WAPersistentContainer *)self _entitiesWithDate];
  deleteCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"name = %@", deleteCopy];
  v15 = [WAUtil filterArray:_entitiesWithDate usingPredicate:deleteCopy];
  firstObject = [v15 firstObject];

  if (firstObject)
  {
    v17 = MEMORY[0x1E695DF70];
    v18 = [(WAPersistentContainer *)self predicateForEntity:firstObject newerThanDate:dateCopy withError:error];
    v19 = [v17 arrayWithObject:v18];

    if (predicateCopy)
    {
      [v19 addObject:predicateCopy];
    }

    v20 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v19];
    v21 = [(WAPersistentContainer *)self requestForObjects:firstObject withPredicate:v20 withSorting:0 withPrefetchedProperties:0 withLimit:0];

    v22 = [(WAPersistentContainer *)self batchDelete:v21 withError:error];
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
      v34 = deleteCopy;
      _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:%@ is not a dated entity", buf, 0x1Cu);
    }

    if (!error)
    {
      v22 = 0;
      goto LABEL_6;
    }

    v26 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A588];
    v28 = @"WAErrorCodeInvalidInput";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v26 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v19];
    *error = v22 = 0;
  }

LABEL_6:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (unint64_t)batchDelete:(id)delete olderThan:(double)than withError:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  deleteCopy = delete;
  v9 = [(WAPersistentContainer *)self predicateForEntity:deleteCopy olderThan:error withError:than];
  if (v9)
  {
    v10 = [(WAPersistentContainer *)self requestForObjects:deleteCopy withPredicate:v9 withSorting:0 withPrefetchedProperties:0 withLimit:0];
    v11 = [(WAPersistentContainer *)self batchDelete:v10 withError:error];
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

- (unint64_t)batchDeleteDatedEntitiesOlderThan:(double)than withError:(id *)error
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
  _entitiesWithDate = [(WAPersistentContainer *)self _entitiesWithDate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__WAPersistentContainer_batchDeleteDatedEntitiesOlderThan_withError___block_invoke;
  v10[3] = &unk_1E830E690;
  v11 = vdivq_f64(vdupq_lane_s64(*&than, 0), xmmword_1C85A1230);
  thanCopy = than;
  v10[4] = self;
  v10[5] = &v13;
  v10[6] = &v19;
  [_entitiesWithDate enumerateObjectsUsingBlock:v10];

  if (error)
  {
    *error = v14[5];
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

- (unint64_t)batchDeleteEntitiesWithNilBssWithError:(id *)error
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

  if (error)
  {
    *error = v11[5];
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

- (unint64_t)batchDeleteUsageRecordsHavingBSSInList:(id)list withError:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  listCopy = list;
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
          name = [v13 name];
          *buf = 136446978;
          v32 = "[WAPersistentContainer batchDeleteUsageRecordsHavingBSSInList:withError:]";
          v33 = 1024;
          v34 = 1755;
          v35 = 2112;
          v36 = name;
          v37 = 2112;
          v38 = listCopy;
          _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deleting objects in %@ with bssid in %@", buf, 0x26u);
        }

        v16 = [(WAPersistentContainer *)self requestForObjectsInEntity:v13 withBSSInList:listCopy];
        v26 = v12;
        v17 = [(WAPersistentContainer *)self batchDelete:v16 withError:&v26];
        v9 = v26;

        if (error)
        {
          v18 = v9;
          *error = v9;
        }

        if (v9)
        {
          v19 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            name2 = [v13 name];
            *buf = 136447234;
            v32 = "[WAPersistentContainer batchDeleteUsageRecordsHavingBSSInList:withError:]";
            v33 = 1024;
            v34 = 1761;
            v35 = 2112;
            v36 = name2;
            v37 = 2112;
            v38 = listCopy;
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

- (unint64_t)batchDelete:(id)delete where:(id)where withError:(id *)error
{
  v7 = [(WAPersistentContainer *)self requestForObjects:delete withPredicate:where withSorting:0 withPrefetchedProperties:0 withLimit:0];
  v8 = [(WAPersistentContainer *)self batchDelete:v7 withError:error];

  return v8;
}

- (unint64_t)batchDelete:(id)delete withError:(id *)error
{
  v75[1] = *MEMORY[0x1E69E9840];
  deleteCopy = delete;
  fetchLimit = [deleteCopy fetchLimit];
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
  v41 = deleteCopy;
  v42 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:deleteCopy];
  [v42 setResultType:1];
  v44 = 0;
  *&v7 = 136447490;
  v40 = v7;
  while (1)
  {
    v8 = fetchLimit - v44;
    if (fetchLimit - v44 >= 0x64)
    {
      v8 = 100;
    }

    if (fetchLimit)
    {
      v9 = v8;
    }

    else
    {
      v9 = 100;
    }

    [deleteCopy setFetchLimit:{v9, v40}];
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

    viewContext = [(WAPersistentContainer *)self viewContext];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __47__WAPersistentContainer_batchDelete_withError___block_invoke;
    v46[3] = &unk_1E830DB20;
    v48 = &v56;
    v46[4] = self;
    v12 = v42;
    v47 = v12;
    v49 = &v50;
    [viewContext performBlockAndWait:v46];

    if (error)
    {
      *error = v51[5];
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

    result = [v57[5] result];
    v14 = [result count];

    result2 = [v57[5] result];
    v16 = [result2 count];

    v44 += v16;
    if (v14 >= 1)
    {
      break;
    }

LABEL_17:

    v24 = v44 < fetchLimit && fetchLimit != 0;
    if ((v14 == 0 || fetchLimit != 0) && !v24)
    {
      goto LABEL_22;
    }
  }

  if ([v57[5] resultType] == 1)
  {
    viewContext2 = [(WAPersistentContainer *)self viewContext];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __47__WAPersistentContainer_batchDelete_withError___block_invoke_306;
    v45[3] = &unk_1E830D880;
    v45[4] = self;
    [viewContext2 performBlockAndWait:v45];

    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      result3 = [v57[5] result];
      v20 = [result3 count];
      entityName = [v41 entityName];
      predicate = [v41 predicate];
      predicateFormat = [predicate predicateFormat];
      *buf = v40;
      v63 = "[WAPersistentContainer batchDelete:withError:]";
      v64 = 1024;
      v65 = 1833;
      v66 = 2048;
      v67 = v20;
      v68 = 2112;
      v69 = entityName;
      v70 = 2112;
      v71 = predicateFormat;
      v72 = 2048;
      v73 = v44;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Batch deleted %lu records of entity[%@] matching [%@] (deleted so far:%ld)", buf, 0x3Au);

      deleteCopy = v41;
    }

    goto LABEL_17;
  }

  v37 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
  {
    resultType = [v57[5] resultType];
    *buf = 136446978;
    v63 = "[WAPersistentContainer batchDelete:withError:]";
    v64 = 1024;
    v65 = 1816;
    v66 = 2112;
    v67 = v42;
    v68 = 2048;
    v69 = resultType;
    _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_FAULT, "%{public}s::%d:From %@: Unexpected ResultType %lu ", buf, 0x26u);
  }

  if (error)
  {
    v39 = MEMORY[0x1E696ABC0];
    v74 = *MEMORY[0x1E696A588];
    v75[0] = @"WAErrorCodeTypeMismatch";
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    *error = [v39 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9000 userInfo:v35];
LABEL_29:
  }

LABEL_22:
  v25 = objc_opt_new();
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  [v25 setObject:processName forKeyedSubscript:@"process"];

  entityName2 = [deleteCopy entityName];
  [v25 setObject:entityName2 forKeyedSubscript:@"entity"];

  predicate2 = [deleteCopy predicate];
  predicateFormat2 = [predicate2 predicateFormat];
  [v25 setObject:predicateFormat2 forKeyedSubscript:@"predicate"];

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

+ (BOOL)_storeNeedsImmediatePruning:(id)pruning
{
  v30 = *MEMORY[0x1E69E9840];
  pruningCopy = pruning;
  v4 = +[AnalyticsStoreDescriptor storeDescriptor];
  storeURL = [v4 storeURL];
  path = [storeURL path];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v8 = [defaultManager attributesOfItemAtPath:path error:&v21];
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
    [pruningCopy setCurrentSize:v11];

    currentSize = [pruningCopy currentSize];
    unsignedLongLongValue = [currentSize unsignedLongLongValue];

    if (unsignedLongLongValue > [pruningCopy limit])
    {
      v14 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        limit = [pruningCopy limit];
        *buf = 136446978;
        v23 = "+[WAPersistentContainer _storeNeedsImmediatePruning:]";
        v24 = 1024;
        v25 = 1865;
        v26 = 2048;
        v27 = unsignedLongLongValue;
        v28 = 2048;
        v29 = limit;
        _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Store size %llu bytes exceeds %llu bytes", buf, 0x26u);
      }

      [pruningCopy setStoreNeedsPruning:1];
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

  [pruningCopy setNoError:v9 != 0];
  storeNeedsPruning = [pruningCopy storeNeedsPruning];

  v17 = *MEMORY[0x1E69E9840];
  return storeNeedsPruning;
}

+ (void)performBlock:(id)block overConstraintsOfEntity:(id)entity withConstraints:(id)constraints
{
  v32 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  constraintsCopy = constraints;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [entity uniquenessConstraints];
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
              v17 = [constraintsCopy valueForKey:v16];
              blockCopy[2](blockCopy, v16, v17);
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

+ (id)getConstraintsValues:(id)values
{
  v32 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  entity = [valuesCopy entity];
  uniquenessConstraints = [entity uniquenessConstraints];

  obj = uniquenessConstraints;
  v7 = [uniquenessConstraints countByEnumeratingWithState:&v26 objects:v31 count:16];
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
              v17 = [valuesCopy valueForKey:v16];
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

- (id)entitiesWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__WAPersistentContainer_entitiesWithProperties___block_invoke;
  v13[3] = &unk_1E830E668;
  v14 = v5;
  v6 = v5;
  [propertiesCopy enumerateObjectsUsingBlock:v13];

  v7 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v6];
  managedObjectModel = [(NSPersistentContainer *)self managedObjectModel];
  entities = [managedObjectModel entities];
  v10 = [WAUtil filterArray:entities usingPredicate:v7];

  v11 = [MEMORY[0x1E695DFD8] setWithArray:v10];

  return v11;
}

void __48__WAPersistentContainer_entitiesWithProperties___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.properties.name CONTAINS %@", a2];
  [v2 addObject:v3];
}

- (id)predicatesForRecordsWithNoBssRelationshipByEntities:(id)entities onlyDated:(BOOL)dated
{
  datedCopy = dated;
  entitiesCopy = entities;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = objc_opt_new();
  if (datedCopy)
  {
    v7 = MEMORY[0x1E695DFD8];
    _entitiesWithDate = [(WAPersistentContainer *)self _entitiesWithDate];
    v9 = [v7 setWithArray:_entitiesWithDate];
  }

  else
  {
    v10 = MEMORY[0x1E695DFA8];
    _entitiesWithDate = [(NSPersistentContainer *)self managedObjectModel];
    entities = [_entitiesWithDate entities];
    v9 = [v10 setWithArray:entities];
  }

  v12 = MEMORY[0x1E696AE18];
  v13 = +[PoliciesMO entity];
  v14 = [v12 predicateWithFormat:@"SELF != %@", v13];
  v15 = [WAUtil filterSet:v9 usingPredicate:v14];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__WAPersistentContainer_predicatesForRecordsWithNoBssRelationshipByEntities_onlyDated___block_invoke;
  v19[3] = &unk_1E830E6E0;
  v16 = entitiesCopy;
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
  subentities = [v2 subentities];

  return subentities;
}

- (id)_entitiesWithDate
{
  managedObjectModel = [(NSPersistentContainer *)self managedObjectModel];
  entities = [managedObjectModel entities];
  v4 = +[WAPersistentContainer predicateForEntityWithDateField];
  v5 = [WAUtil filterArray:entities usingPredicate:v4];

  return v5;
}

- (id)_usageEntities
{
  managedObjectModel = [(NSPersistentContainer *)self managedObjectModel];
  entities = [managedObjectModel entities];
  v4 = +[WAPersistentContainer predicateForEntityWithDateBinField];
  v5 = [WAUtil filterArray:entities usingPredicate:v4];

  return v5;
}

- (BOOL)validateUniqueObjectFor:(id)for withConstraints:(id)constraints withError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  forCopy = for;
  constraintsCopy = constraints;
  managedObjectClassName = [forCopy managedObjectClassName];
  v10 = NSClassFromString(managedObjectClassName);

  if (!v10)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      name = [forCopy name];
      v21 = 136446722;
      v22 = "[WAPersistentContainer validateUniqueObjectFor:withConstraints:withError:]";
      v23 = 1024;
      v24 = 1972;
      v25 = 2112;
      v26 = name;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to find class for %@", &v21, 0x1Cu);
LABEL_10:
    }

LABEL_11:

    goto LABEL_12;
  }

  managedObjectClassName2 = [forCopy managedObjectClassName];
  NSClassFromString(managedObjectClassName2);
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) == 0)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      name = [forCopy managedObjectClassName];
      name2 = [forCopy name];
      v21 = 136446978;
      v22 = "[WAPersistentContainer validateUniqueObjectFor:withConstraints:withError:]";
      v23 = 1024;
      v24 = 1973;
      v25 = 2112;
      v26 = name;
      v27 = 2112;
      v28 = name2;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ for %@ does not implement verifyValidityOfData:", &v21, 0x26u);

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  managedObjectClassName3 = [forCopy managedObjectClassName];
  v14 = [NSClassFromString(managedObjectClassName3) verifyConstraints:constraintsCopy withError:error];

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

+ (id)constraintsForEntity:(id)entity
{
  entityCopy = entity;
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
  [self performBlock:v7 overConstraintsOfEntity:entityCopy withConstraints:0];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end