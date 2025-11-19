@interface MOTemplateStore
- (MOTemplateStore)initWithPersistenceManager:(id)a3;
- (MOTemplateStore)initWithPersistenceManager:(id)a3 configurationManager:(id)a4;
- (id)_createPredicateForBundleContent:(id)a3;
- (id)_createPredicateForBundleContent:(id)a3 withMoreMetaData:(id)a4;
- (id)_createPredicateForBundleContentWithLessMetaData:(id)a3;
- (id)_createPredicateForDefaultValueWithMetaDataName:(id)a3;
- (id)_createPredicateWithMetaDataName:(id)a3 bundleContent:(id)a4;
- (id)_createPredicatesWithBundleContent:(id)a3 combination:(id)a4;
- (id)_generateCombinationsFromMetaData:(id)a3;
- (void)checkTemplateStoreIsEmptyWithHandler:(id)a3;
- (void)fetchTemplatesWithBundleContent:(id)a3 handler:(id)a4;
- (void)loadNewTemplatesFromFileWithHandler:(id)a3;
- (void)removeAllTemplatesWithHandler:(id)a3;
- (void)reset;
- (void)storeTemplates:(id)a3 handler:(id)a4;
@end

@implementation MOTemplateStore

- (MOTemplateStore)initWithPersistenceManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = MOTemplateStore;
    v6 = [(MOTemplateStore *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_persistenceManager, a3);
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("MOTemplateStore", v8);
      queue = v7->_queue;
      v7->_queue = v9;
    }

    self = v7;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (MOTemplateStore)initWithPersistenceManager:(id)a3 configurationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v17.receiver = self;
    v17.super_class = MOTemplateStore;
    v11 = [(MOTemplateStore *)&v17 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_persistenceManager, a3);
      objc_storeStrong(&v12->_configurationManager, a4);
      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_create("MOTemplateStore", v13);
      queue = v12->_queue;
      v12->_queue = v14;
    }

    self = v12;
    v10 = self;
  }

  return v10;
}

- (void)reset
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(MOTemplateStore *)self persistenceManager];
  [v4 performBlockAndWait:&__block_literal_global_3];

  objc_autoreleasePoolPop(v3);
}

- (void)fetchTemplatesWithBundleContent:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = objc_opt_new();
  v9 = [(MOTemplateStore *)self persistenceManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __59__MOTemplateStore_fetchTemplatesWithBundleContent_handler___block_invoke;
  v13[3] = &unk_1000B4F18;
  v13[4] = self;
  v10 = v7;
  v14 = v10;
  v15 = &v24;
  v16 = &v18;
  v17 = a2;
  [v9 performBlockAndWait:v13];

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v19[5];
    *buf = 138412290;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "retrieved templates %@", buf, 0xCu);
  }

  if (v8)
  {
    v8[2](v8, v19[5], v25[5]);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
}

void __59__MOTemplateStore_fetchTemplatesWithBundleContent_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOTemplateMO fetchRequest];
  v5 = [*(a1 + 32) _createPredicateForBundleContent:*(a1 + 40)];
  if (v5)
  {
    [v4 setPredicate:v5];
  }

  [v4 setReturnsObjectsAsFaults:0];
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = NSStringFromSelector(*(a1 + 64));
    v19 = [v7 count];
    v20 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138413058;
    v29 = v18;
    v30 = 2112;
    v31 = v4;
    v32 = 2048;
    v33 = v19;
    v34 = 2112;
    v35 = v20;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@, request, %@, template results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[MOTemplate alloc] initWithTemplateMO:*(*(&v22 + 1) + 8 * v16)];
          if (v17)
          {
            [*(*(*(a1 + 56) + 8) + 40) addObject:v17];
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    v7 = v21;
  }

  [v3 reset];
}

- (id)_createPredicateForBundleContentWithLessMetaData:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"patternType == %d", [v3 patternType]);
  [v4 addObject:v5];

  v6 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"activityType == %d", [v3 activityType]);
  [v4 addObject:v6];

  v7 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"placeType == %d", [v3 placeType]);
  [v4 addObject:v7];

  v8 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"time == %d", [v3 time]);
  [v4 addObject:v8];

  v9 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"bundleType == %d", [v3 bundleType]);
  [v4 addObject:v9];

  v10 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"peopleClassification == %d", [v3 peopleClassification]);
  [v4 addObject:v10];

  v11 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"photoTrait == %d", [v3 photoTrait]);
  [v4 addObject:v11];

  if ([v3 hasPersonName])
  {
    v12 = @"hasPersonName == 1";
  }

  else
  {
    v12 = @"hasPersonName == 0";
  }

  v13 = [NSPredicate predicateWithFormat:v12];
  [v4 addObject:v13];

  if ([v3 hasPlaceName])
  {
    v14 = @"hasPlaceName == 1";
  }

  else
  {
    v14 = @"hasPlaceName == 0";
  }

  v15 = [NSPredicate predicateWithFormat:v14];
  [v4 addObject:v15];

  if ([v3 hasCityName])
  {
    v16 = @"hasCityName == 1";
  }

  else
  {
    v16 = @"hasCityName == 0";
  }

  v17 = [NSPredicate predicateWithFormat:v16];
  [v4 addObject:v17];

  if ([v3 hasTimeReference])
  {
    v18 = @"hasTimeReference == 1";
  }

  else
  {
    v18 = @"hasTimeReference == 0";
  }

  v19 = [NSPredicate predicateWithFormat:v18];
  [v4 addObject:v19];

  if ([v4 count])
  {
    v20 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "createPredicateForBundleContentWithLessMetaData, predicate %@", buf, 0xCu);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_createPredicateForBundleContent:(id)a3 withMoreMetaData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(MOTemplateStore *)self _generateCombinationsFromMetaData:v7];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(MOTemplateStore *)self _createPredicatesWithBundleContent:v6 combination:*(*(&v17 + 1) + 8 * i)];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v15 = [NSCompoundPredicate orPredicateWithSubpredicates:v8];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_createPredicateForBundleContent:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 patternType])
  {
    [v5 addObject:@"patternType"];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if ([v4 placeType])
  {
    [v5 addObject:@"placeType"];
    ++v6;
  }

  if ([v4 activityType])
  {
    [v5 addObject:@"activityType"];
    ++v6;
  }

  if ([v4 time])
  {
    [v5 addObject:@"time"];
    ++v6;
  }

  if ([v4 bundleType])
  {
    [v5 addObject:@"bundleType"];
    ++v6;
  }

  if ([v4 peopleClassification])
  {
    [v5 addObject:@"peopleClassification"];
    ++v6;
  }

  if ([v4 hasPersonName])
  {
    [v5 addObject:@"hasPersonName"];
    ++v6;
  }

  if ([v4 hasPlaceName])
  {
    [v5 addObject:@"hasPlaceName"];
    ++v6;
  }

  if ([v4 hasCityName])
  {
    [v5 addObject:@"hasCityName"];
    ++v6;
  }

  if ([v4 hasTimeReference])
  {
    [v5 addObject:@"hasTimeReference"];
    ++v6;
  }

  if ([v4 photoTrait])
  {
    [v5 addObject:@"photoTrait"];
    ++v6;
  }

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "non default value metadata, %@", &v10, 0xCu);
  }

  if (v6 > 1)
  {
    [(MOTemplateStore *)self _createPredicateForBundleContent:v4 withMoreMetaData:v5];
  }

  else
  {
    [(MOTemplateStore *)self _createPredicateForBundleContentWithLessMetaData:v4];
  }
  v8 = ;

  return v8;
}

- (id)_createPredicatesWithBundleContent:(id)a3 combination:(id)a4
{
  v30 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v36;
    *&v10 = 138412546;
    v28 = v10;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [(MOTemplateStore *)self _createPredicateWithMetaDataName:v14 bundleContent:v30, v28];
        v16 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = v28;
          v41 = v14;
          v42 = 2112;
          v43 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "meta data name, %@ and predicate from bundle value, %@", buf, 0x16u);
        }

        if (v15)
        {
          [v7 addObject:v15];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v11);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = kCompletePropertySet;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v32;
    *&v19 = 138412546;
    v29 = v19;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        if (([v8 containsObject:{v23, v29}] & 1) == 0)
        {
          v24 = [(MOTemplateStore *)self _createPredicateForDefaultValueWithMetaDataName:v23];
          v25 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = v29;
            v41 = v23;
            v42 = 2112;
            v43 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "meta data name, %@ and predicate from default value, %@", buf, 0x16u);
          }

          if (v24)
          {
            [v7 addObject:v24];
          }
        }
      }

      v20 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v20);
  }

  if ([v7 count])
  {
    v26 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_createPredicateWithMetaDataName:(id)a3 bundleContent:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"patternType"])
  {
    v10 = [v6 patternType];
    v7 = @"patternType == %d";
LABEL_13:
    v8 = [NSPredicate predicateWithFormat:v7, v10];
    goto LABEL_14;
  }

  if ([v5 isEqualToString:@"placeType"])
  {
    v10 = [v6 placeType];
    v7 = @"placeType == %d";
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"activityType"])
  {
    v10 = [v6 activityType];
    v7 = @"activityType == %d";
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"time"])
  {
    v10 = [v6 time];
    v7 = @"time == %d";
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"bundleType"])
  {
    v10 = [v6 bundleType];
    v7 = @"bundleType == %d";
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"peopleClassification"])
  {
    v10 = [v6 peopleClassification];
    v7 = @"peopleClassification == %d";
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"hasPersonName"])
  {
    v7 = @"hasPersonName == 1";
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"hasPlaceName"])
  {
    v7 = @"hasPlaceName == 1";
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"hasCityName"])
  {
    v7 = @"hasCityName == 1";
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"hasTimeReference"])
  {
    v7 = @"hasTimeReference == 1";
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"photoTrait"])
  {
    v10 = [v6 photoTrait];
    v7 = @"photoTrait == %d";
    goto LABEL_13;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (id)_createPredicateForDefaultValueWithMetaDataName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"patternType"])
  {
    [NSPredicate predicateWithFormat:@"patternType == %d", 0];
    v5 = LABEL_24:;
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"placeType"])
  {
    [NSPredicate predicateWithFormat:@"placeType == %d", 0];
    goto LABEL_24;
  }

  if ([v3 isEqualToString:@"activityType"])
  {
    [NSPredicate predicateWithFormat:@"activityType == %d", 0];
    goto LABEL_24;
  }

  if ([v3 isEqualToString:@"time"])
  {
    [NSPredicate predicateWithFormat:@"time == %d", 0];
    goto LABEL_24;
  }

  if ([v3 isEqualToString:@"bundleType"])
  {
    [NSPredicate predicateWithFormat:@"bundleType == %d", 0];
    goto LABEL_24;
  }

  if ([v3 isEqualToString:@"peopleClassification"])
  {
    [NSPredicate predicateWithFormat:@"peopleClassification == %d", 0];
    goto LABEL_24;
  }

  if ([v3 isEqualToString:@"hasPersonName"])
  {
    v4 = @"hasPersonName == 0";
LABEL_23:
    [NSPredicate predicateWithFormat:v4, v7];
    goto LABEL_24;
  }

  if ([v3 isEqualToString:@"hasPlaceName"])
  {
    v4 = @"hasPlaceName == 0";
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"hasCityName"])
  {
    v4 = @"hasCityName == 0";
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"hasTimeReference"])
  {
    v4 = @"hasTimeReference == 0";
    goto LABEL_23;
  }

  if ([v3 isEqualToString:@"photoTrait"])
  {
    v7 = 0;
    v4 = @"photoTrait == %d";
    goto LABEL_23;
  }

  v5 = 0;
LABEL_25:

  return v5;
}

- (id)_generateCombinationsFromMetaData:(id)a3
{
  v3 = a3;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "generateCombinationsFromMetaData, input meta data, %@", buf, 0xCu);
  }

  v5 = +[NSMutableArray array];
  v6 = [v3 count];
  v7 = exp2(v6);
  if (v7 >= 2)
  {
    *&v8 = 134218242;
    v17 = v8;
    for (i = 1; i != v7; ++i)
    {
      v10 = +[NSMutableArray array];
      if (v6)
      {
        for (j = 0; j != v6; ++j)
        {
          if ((i & (1 << j)) != 0)
          {
            v12 = [v3 objectAtIndexedSubscript:j];
            [v10 addObject:v12];
          }
        }
      }

      v13 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = v17;
        v19 = i;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "generateCombinationsFromMetaData, index, %lu, combination, %@", buf, 0x16u);
      }

      v14 = [v10 copy];
      [v5 addObject:v14];
    }
  }

  v15 = [v5 copy];

  return v15;
}

- (void)storeTemplates:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  if ([v6 count])
  {
    v8 = [(MOTemplateStore *)self persistenceManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __42__MOTemplateStore_storeTemplates_handler___block_invoke;
    v11[3] = &unk_1000B4E58;
    v12 = v6;
    v13 = &v14;
    [v8 performBlockAndWait:v11];

    [(MOTemplateStore *)self reset];
    v9 = v12;
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "no template to be saved", v10, 2u);
    }
  }

  if (v7)
  {
    v7[2](v7, v15[5]);
  }

  _Block_object_dispose(&v14, 8);
}

void __42__MOTemplateStore_storeTemplates_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = a1;
  v35 = (a1 + 32);
  v4 = *(a1 + 32);
  v38 = [v4 countByEnumeratingWithState:&v41 objects:v51 count:16];
  v5 = 0;
  if (v38)
  {
    v6 = *v42;
    v37 = *v42;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        v9 = +[MOTemplateMO fetchRequest];
        v10 = [v8 templateIdentifier];
        v11 = [NSPredicate predicateWithFormat:@"templateIdentifier == %@", v10];
        [v9 setPredicate:v11];

        v40 = 0;
        v12 = [v3 executeFetchRequest:v9 error:&v40];
        v13 = v40;
        v14 = v13;
        if (v13)
        {
          v15 = v13;

          v16 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            __42__MOTemplateStore_storeTemplates_handler___block_invoke_cold_1(v49, v15, &v50, v16);
          }

          goto LABEL_16;
        }

        if (![v12 count] || (objc_msgSend(v12, "lastObject"), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v15 = v5;
LABEL_16:
          v21 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v48 = v8;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "save template, %@", buf, 0xCu);
          }

          v22 = [MOTemplateMO managedObjectWithTemplate:v8 inManagedObjectContext:v3];
          v5 = v15;
          goto LABEL_19;
        }

        v18 = v17;
        v19 = v4;
        v20 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = v8;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "update template, %@", buf, 0xCu);
        }

        [MOTemplateMO updateManagedObject:v18 withTemplate:v8 inManagedObjectContext:v3];
        v4 = v19;
        v6 = v37;
LABEL_19:
      }

      v38 = [v4 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v38);
  }

  v23 = v36 + 40;
  v24 = *(*(v36 + 40) + 8);
  obj = *(v24 + 40);
  v25 = [v3 save:&obj];
  objc_storeStrong((v24 + 40), obj);
  v26 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
  v27 = v26;
  if (v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v28 = [*v35 count];
      *buf = 134217984;
      v48 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "saving templates succeeded, template count, %lu", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    __42__MOTemplateStore_storeTemplates_handler___block_invoke_cold_2(v23, v35, v27);
  }

  if (*(*(*v23 + 8) + 40))
  {
    v29 = 1;
  }

  else
  {
    v29 = v5 == 0;
  }

  if (!v29)
  {
    v45 = NSLocalizedDescriptionKey;
    v46 = @"MOTemplateStore:storeTemplates persistence error";
    v30 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v31 = [NSError errorWithDomain:@"MOContextErrorDomain" code:2314 userInfo:v30];
    v32 = [NSError errorUsingError:v31 withUnderyingError:v5];
    v33 = *(*v23 + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;
  }
}

- (void)removeAllTemplatesWithHandler:(id)a3
{
  v5 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  [(MOTemplateStore *)self reset];
  v6 = objc_autoreleasePoolPush();
  v7 = [(MOTemplateStore *)self persistenceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __49__MOTemplateStore_removeAllTemplatesWithHandler___block_invoke;
  v8[3] = &unk_1000B4EA8;
  v8[4] = &v9;
  v8[5] = a2;
  [v7 performBlockAndWait:v8];

  objc_autoreleasePoolPop(v6);
  [(MOTemplateStore *)self reset];
  if (v5)
  {
    v5[2](v5, v10[5]);
  }

  _Block_object_dispose(&v9, 8);
}

void __49__MOTemplateStore_removeAllTemplatesWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOTemplateMO fetchRequest];
  v5 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v4];
  [v5 setResultType:2];
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = [v3 executeRequest:v5 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  v8 = [v7 result];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = NSStringFromSelector(*(a1 + 40));
    v12 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138413058;
    v15 = v11;
    v16 = 2112;
    v17 = v4;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v12;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@, delete request, %@, template results count, %@, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 32) + 8) + 40) && [v8 integerValue] >= 1)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "templates deletion operation succeeded", buf, 2u);
    }
  }
}

- (void)loadNewTemplatesFromFileWithHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __55__MOTemplateStore_loadNewTemplatesFromFileWithHandler___block_invoke;
  v4[3] = &unk_1000B4F68;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MOTemplateStore *)v5 removeAllTemplatesWithHandler:v4];
}

void __55__MOTemplateStore_loadNewTemplatesFromFileWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v49 = a2;
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
  v3 = v2;
  if (v49)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __55__MOTemplateStore_loadNewTemplatesFromFileWithHandler___block_invoke_cold_1(v49, v3, v4, v5, v6, v7, v8, v9);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "removing old templates to load new templates succeeded", &buf, 2u);
    }

    v52 = objc_alloc_init(MOTemplateLoader);
    v10 = [(MOTemplateLoader *)v52 getTemplateDirectoryURL];
    v11 = [v10 path];
    v53 = [v11 stringByAppendingPathComponent:@"templates"];

    v47 = +[NSFileManager defaultManager];
    v68 = 0;
    v46 = [v47 contentsOfDirectoryAtPath:v53 error:&v68];
    v45 = v68;
    v12 = [NSPredicate predicateWithFormat:@"self ENDSWITH '.json'"];
    v48 = [v46 filteredArrayUsingPredicate:v12];

    v13 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v53;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "directory for template: %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__1;
    v75 = __Block_byref_object_dispose__1;
    v76 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    if (v48 && [v48 count])
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      obj = v48;
      v14 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
      if (v14)
      {
        v51 = *v61;
        v15 = 0.0;
        do
        {
          v16 = 0;
          v54 = v14;
          do
          {
            if (*v61 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v56 = v16;
            v17 = *(*(&v60 + 1) + 8 * v16);
            context = objc_autoreleasePoolPush();
            v57 = [v53 stringByAppendingPathComponent:v17];
            v18 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *v69 = 138412290;
              v70 = v57;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "file template path: %@", v69, 0xCu);
            }

            v19 = objc_autoreleasePoolPush();
            v20 = [(MOTemplateLoader *)v52 loadTemplatesFromFile:v57];
            v21 = v20;
            if (v15 == 0.0)
            {
              v22 = [v20 firstObject];
              v23 = [v22 promptVersion];

              v24 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v25 = [v21 firstObject];
                v26 = [v25 promptVersion];
                *v69 = 134217984;
                v70 = v26;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "prompt version: %lu", v69, 0xCu);
              }

              v15 = v23;
            }

            objc_autoreleasePoolPop(v19);
            v27 = 0;
            for (i = 0; i < [v21 count]; i += 35)
            {
              v29 = objc_autoreleasePoolPush();
              v30 = [v21 count];
              if (v30 + v27 >= 0x23)
              {
                v31 = 35;
              }

              else
              {
                v31 = v30 + v27;
              }

              v32 = *(a1 + 32);
              v33 = [v21 subarrayWithRange:{i, v31}];
              v59[0] = _NSConcreteStackBlock;
              v59[1] = 3221225472;
              v59[2] = __55__MOTemplateStore_loadNewTemplatesFromFileWithHandler___block_invoke_102;
              v59[3] = &unk_1000B4F40;
              v59[4] = v17;
              v59[5] = &buf;
              v59[6] = &v64;
              [v32 storeTemplates:v33 handler:v59];

              objc_autoreleasePoolPop(v29);
              v27 -= 35;
            }

            objc_autoreleasePoolPop(context);
            v16 = v56 + 1;
          }

          while ((v56 + 1) != v54);
          v14 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0.0;
      }

      v34 = obj;
    }

    else
    {
      v34 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
      v15 = 0.0;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        __55__MOTemplateStore_loadNewTemplatesFromFileWithHandler___block_invoke_cold_2(v53, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    if ((v65[3] & 1) == 0)
    {
      v41 = [*(a1 + 32) configurationManager];
      v42 = [v41 defaultsManager];
      v43 = [NSNumber numberWithDouble:v15];
      [v42 setObject:v43 forKey:@"LocalTemplateVersion"];
    }

    v44 = *(*(&buf + 1) + 40);
    (*(*(a1 + 40) + 16))();
    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&buf, 8);
  }
}

void __55__MOTemplateStore_loadNewTemplatesFromFileWithHandler___block_invoke_102(void *a1, void *a2)
{
  v4 = a2;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__MOTemplateStore_loadNewTemplatesFromFileWithHandler___block_invoke_102_cold_1(a1, v4, v6);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "storing new templates from file succeeded, with file: %@", &v8, 0xCu);
    }
  }
}

- (void)checkTemplateStoreIsEmptyWithHandler:(id)a3
{
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__1;
  v10[4] = __Block_byref_object_dispose__1;
  v11 = 0;
  v6 = [(MOTemplateStore *)self persistenceManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __56__MOTemplateStore_checkTemplateStoreIsEmptyWithHandler___block_invoke;
  v9[3] = &unk_1000B4F90;
  v9[5] = &v12;
  v9[6] = a2;
  v9[4] = v10;
  [v6 performBlockAndWait:v9];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v13 + 24);
    *buf = 67109120;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "checkTemplateStoreIsEmpty,  %d", buf, 8u);
  }

  if (v5)
  {
    v5[2](v5, *(v13 + 24));
  }

  _Block_object_dispose(v10, 8);

  _Block_object_dispose(&v12, 8);
}

void __56__MOTemplateStore_checkTemplateStoreIsEmptyWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOTemplateMO fetchRequest];
  [v4 setFetchLimit:1];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = a1 + 32;
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = NSStringFromSelector(*(a1 + 48));
    v17 = [v7 count];
    v18 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138413058;
    v21 = v16;
    v22 = 2112;
    v23 = v4;
    v24 = 2048;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@, request, %@, checkTemplateStoreIsEmptyWithHandler, template results count, %lu, error, %@", buf, 0x2Au);
  }

  if (*(*(*v5 + 8) + 40))
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityTemplateStore);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __56__MOTemplateStore_checkTemplateStoreIsEmptyWithHandler___block_invoke_cold_1(v5, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else if ([v7 count] == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  [v3 reset];
}

void __42__MOTemplateStore_storeTemplates_handler___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 localizedDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "storeTemplates: '%@'", a1, 0xCu);
}

void __42__MOTemplateStore_storeTemplates_handler___block_invoke_cold_2(uint64_t a1, id *a2, NSObject *a3)
{
  v4 = *(*(*a1 + 8) + 40);
  v5 = [*a2 count];
  v6 = 138412546;
  v7 = v4;
  v8 = 2048;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "saving templates error, %@, templates count, %lu", &v6, 0x16u);
}

void __55__MOTemplateStore_loadNewTemplatesFromFileWithHandler___block_invoke_102_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "storing new templates from file failed, with file: %@, error: %@", &v4, 0x16u);
}

@end