@interface PJXBDBF1h0EU80dy
+ (BOOL)canSerialize:(id)a3;
+ (PJXBDBF1h0EU80dy)sharedInstance;
- (BOOL)updateGeoCodeForAddresses:(id)a3 locations:(id)a4 error:(id *)a5;
- (PJXBDBF1h0EU80dy)init;
- (PJXBDBF1h0EU80dy)initWithCoreDataManager:(id)a3;
- (id)YKIcrg8ijyspX6ho:(id)a3 entityName:(id)a4;
- (id)YKIcrg8ijyspX6ho:(id)a3 forVersion:(unsigned int)a4;
- (id)ab491f0831ce63bb:(id)a3 error:(id *)a4;
- (id)canonicalStringForAddress:(id)a3;
- (id)evrtH713YbFfEOzk:(id)a3 error:(id *)a4;
- (id)f55HW2T4cquHq2nn:(id)a3;
- (id)fetchAllBindings;
- (id)fetchGeoCodingsForAddresses:(id)a3;
- (id)rKKialn8e4bTPAC9:(id)a3 error:(id *)a4;
- (id)removeAllGeocodings;
- (id)removeRavioli;
- (id)retrieveLegacyRavioliWithCoreDataManager:(id)a3;
- (int64_t)ax7Szgk7yfiKNgSDError:(id *)a3;
- (int64_t)nYOW3DfIUVSEf2Hm:(id)a3 rTZQrPNUbDSIifrh:(id *)a4;
- (void)c94QZ147F1UWY71l:(id)a3 jkjlhN0UgO78kW6q:(id)a4 error:(id *)a5;
- (void)cZK3HwMuoGcCgDQI;
- (void)commitWithBindings:(id)a3 clearingExistingBindings:(BOOL)a4;
- (void)dKsJLlNX54lzKt5n:(id)a3 eqF2XJh3hHBJQf2K:(id)a4;
- (void)lJIqliFcwusu4FxD:(NSArray *)a3 workflowID:(NSString *)a4 completionHandler:(id)a5;
- (void)removeAllBindings;
- (void)serializeCacheEntryV2WithMaxCacheAge:(int64_t)a3 gXKoR0dNwQUyaeOl:(unsigned int)a4 lEWFPyiFIAJ2uoyd:(id)a5;
- (void)serializeCacheEntryWithCacheWritingTTL:(int64_t)a3 gXKoR0dNwQUyaeOl:(unsigned int)a4 lEWFPyiFIAJ2uoyd:(id)a5;
@end

@implementation PJXBDBF1h0EU80dy

+ (PJXBDBF1h0EU80dy)sharedInstance
{
  if (qword_1006D7D40[0] != -1)
  {
    sub_100594F30();
  }

  v3 = qword_1006D7D38;

  return v3;
}

- (PJXBDBF1h0EU80dy)init
{
  v3 = +[ASCoreDataManager sharedInstance];
  coreDataManager = self->_coreDataManager;
  self->_coreDataManager = v3;

  v5 = [(ASCoreDataManager *)self->_coreDataManager gFJw2BGPtEQWyLz5];
  managedObjectContext = self->_managedObjectContext;
  self->_managedObjectContext = v5;

  v7 = dispatch_queue_create("CCompletionQueue", 0);
  cacheOperationCompletionQueue = self->_cacheOperationCompletionQueue;
  self->_cacheOperationCompletionQueue = v7;

  return self;
}

- (PJXBDBF1h0EU80dy)initWithCoreDataManager:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_coreDataManager, a3);
  v6 = [(ASCoreDataManager *)self->_coreDataManager gFJw2BGPtEQWyLz5];
  managedObjectContext = self->_managedObjectContext;
  self->_managedObjectContext = v6;

  return self;
}

- (id)YKIcrg8ijyspX6ho:(id)a3 forVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = @"DB_C56902430";
  }

  else
  {
    v7 = @"DB_R101288420";
  }

  v8 = [(PJXBDBF1h0EU80dy *)self YKIcrg8ijyspX6ho:v6 entityName:v7];

  return v8;
}

- (id)YKIcrg8ijyspX6ho:(id)a3 entityName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSFetchRequest fetchRequestWithEntityName:v7];
  v9 = v8;
  if (v6)
  {
    [v8 setPredicate:v6];
  }

  if ([&off_1006BAC10 containsObject:v7])
  {
    v10 = [NSSortDescriptor sortDescriptorWithKey:@"presentTime" ascending:0];
    v46 = v10;
    v11 = [NSArray arrayWithObjects:&v46 count:1];
    [v9 setSortDescriptors:v11];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10003DD48;
  v38 = sub_10003DD58;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10003DD48;
  v32 = sub_10003DD58;
  v33 = 0;
  managedObjectContext = self->_managedObjectContext;
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10003DD60;
  v23 = &unk_100690DB8;
  v26 = &v28;
  v24 = self;
  v13 = v9;
  v25 = v13;
  v27 = &v34;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:&v20];
  v14 = v29[5];
  if (!v14)
  {
    v15 = qword_1006DF770;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [v35[5] localizedDescription];
      v19 = [v35[5] userInfo];
      *buf = 138412802;
      v41 = v7;
      v42 = 2112;
      v43 = v18;
      v44 = 2112;
      v45 = v19;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error fetching objects for entity %@: %@\n%@", buf, 0x20u);
    }

    v14 = v29[5];
  }

  v16 = v14;

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v16;
}

- (id)removeRavioli
{
  v3 = [NSFetchRequest fetchRequestWithEntityName:@"DB_R115061196"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003DD48;
  v16 = sub_10003DD58;
  v17 = 0;
  managedObjectContext = self->_managedObjectContext;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003DF28;
  v8[3] = &unk_100690DE0;
  v9 = v3;
  v10 = self;
  v11 = &v12;
  v5 = v3;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

- (void)cZK3HwMuoGcCgDQI
{
  if ([(NSManagedObjectContext *)self->_managedObjectContext hasChanges])
  {
    [(NSManagedObjectContext *)self->_managedObjectContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    managedObjectContext = self->_managedObjectContext;
    v7 = 0;
    v4 = [(NSManagedObjectContext *)managedObjectContext save:&v7];
    v5 = v7;
    if ((v4 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
      {
        sub_100594FC4();
      }

      v6 = qword_1006DF770;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
      {
        sub_100595038(v5, v6);
      }
    }
  }
}

- (void)serializeCacheEntryWithCacheWritingTTL:(int64_t)a3 gXKoR0dNwQUyaeOl:(unsigned int)a4 lEWFPyiFIAJ2uoyd:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8 && ([v8 rEI50SHLlVc37Bvu] & 1) != 0)
  {
    v10 = [v9 lL9A0cjB5y6UgZsI];
    if (v10)
    {
      [(PJXBDBF1h0EU80dy *)self managedObjectContext];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10003E9D0;
      v13 = v12[3] = &unk_100690E80;
      v17 = a3;
      v14 = v10;
      v18 = a4;
      v15 = v9;
      v16 = self;
      v11 = v13;
      [v11 performBlock:v12];
    }
  }
}

- (void)serializeCacheEntryV2WithMaxCacheAge:(int64_t)a3 gXKoR0dNwQUyaeOl:(unsigned int)a4 lEWFPyiFIAJ2uoyd:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8 && ([v8 rEI50SHLlVc37Bvu] & 1) != 0)
  {
    v10 = [v9 lL9A0cjB5y6UgZsI];
    if (v10)
    {
      [(PJXBDBF1h0EU80dy *)self managedObjectContext];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10003EC8C;
      v13 = v12[3] = &unk_100690E80;
      v17 = a3;
      v14 = v10;
      v18 = a4;
      v15 = v9;
      v16 = self;
      v11 = v13;
      [v11 performBlock:v12];
    }
  }
}

- (int64_t)ax7Szgk7yfiKNgSDError:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  managedObjectContext = self->_managedObjectContext;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003F014;
  v6[3] = &unk_100690EA8;
  v6[4] = self;
  v6[5] = &v7;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)nYOW3DfIUVSEf2Hm:(id)a3 rTZQrPNUbDSIifrh:(id *)a4
{
  v6 = a3;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_10003DD48;
  v46 = sub_10003DD58;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10003DD48;
  v40 = sub_10003DD58;
  v41 = 0;
  v7 = [v6 objectForKey:@"all"];
  v8 = [v7 BOOLValue];

  v9 = objc_opt_new();
  v10 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v55 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "ALL = %d", buf, 8u);
  }

  managedObjectContext = self->_managedObjectContext;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10003F718;
  v32[3] = &unk_100690ED0;
  v32[4] = self;
  v12 = v9;
  v35 = v8;
  v33 = v12;
  v34 = &v48;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v32];

  v13 = self->_managedObjectContext;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10003F9D4;
  v30[3] = &unk_100690EF8;
  v31 = v8;
  v30[4] = self;
  v30[5] = &v42;
  v30[6] = &v48;
  [(NSManagedObjectContext *)v13 performBlockAndWait:v30];
  v14 = v43[5] != 0;
  v15 = self->_managedObjectContext;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10003FC18;
  v29[3] = &unk_100690F20;
  v29[4] = self;
  v29[5] = &v36;
  v29[6] = &v48;
  [(NSManagedObjectContext *)v15 performBlockAndWait:v29];
  if (v14)
  {
    v16 = [NSString alloc];
    v17 = @"OK";
    if (v14)
    {
      v17 = @"ERROR";
    }

    v18 = [v16 initWithFormat:@"Error cleaning up cache. V1: %@, V2: %@-%@", @"OK", v17, @"OK"];
    v52 = NSLocalizedDescriptionKey;
    v53 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v20 = v19;
    if (v43[5] || v37[5])
    {
      v21 = [v19 mutableCopy];
      v22 = v21;
      v23 = v43[5];
      if (v23)
      {
        [v21 setValue:v23 forKey:@"CacheV2ErrorDetail"];
      }

      v24 = v37[5];
      if (v24)
      {
        [v22 setValue:v24 forKey:@"CacheV2UniqueErrorDetail"];
      }
    }

    else
    {
      v22 = v19;
    }

    v25 = [NSString stringWithUTF8String:off_1006C9430];
    v26 = [v22 copy];
    *a4 = [NSError errorWithDomain:v25 code:-27109 userInfo:v26];
  }

  v27 = v49[3];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
  return v27;
}

+ (BOOL)canSerialize:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)f55HW2T4cquHq2nn:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10003DD48;
  v18 = sub_10003DD58;
  v19 = 0;
  v13 = 0;
  v5 = [(PJXBDBF1h0EU80dy *)self rKKialn8e4bTPAC9:v4 error:&v13];
  v6 = v13;
  if (v5)
  {
    managedObjectContext = self->_managedObjectContext;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000402EC;
    v10[3] = &unk_100690F48;
    v12 = &v14;
    v11 = v5;
    [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v10];
    v8 = v15[5];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)canonicalStringForAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 ISOCountryCode];
  v5 = [v3 country];
  v6 = [v3 postalCode];
  v7 = [v3 state];
  v8 = [v3 subAdministrativeArea];
  v9 = [v3 city];
  v10 = [v3 subLocality];
  v11 = [v3 street];
  v12 = [NSString stringWithFormat:@"%@€%@€%@€%@€%@€%@€%@€%@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)removeAllGeocodings
{
  v3 = +[ASGeoCodeCacheEntry fetchRequest];
  v4 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v3];
  [v4 setResultType:1];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10003DD48;
  v25 = sub_10003DD58;
  v26 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_10003DD48;
  v19[4] = sub_10003DD58;
  v20 = 0;
  managedObjectContext = self->_managedObjectContext;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100040784;
  v14 = &unk_100690DB8;
  v17 = v19;
  v15 = self;
  v6 = v4;
  v16 = v6;
  v18 = &v21;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:&v11];
  v7 = v22[5];
  if (v7)
  {
    v8 = qword_1006DF770;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v22[5] localizedDescription];
      objc_claimAutoreleasedReturnValue();
      [v22[5] userInfo];
      objc_claimAutoreleasedReturnValue();
      sub_1005951A0();
    }

    v7 = v22[5];
  }

  v9 = v7;

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (BOOL)updateGeoCodeForAddresses:(id)a3 locations:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 count];
  if (v10 != [v9 count])
  {
    v13 = [NSString stringWithUTF8String:off_1006C9430];
    v26 = NSLocalizedDescriptionKey;
    v27 = @"Mismatched location and address counts.";
    v14 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [NSError errorWithDomain:v13 code:-27109 userInfo:v14];
LABEL_7:
    v15 = 0;
    *a5 = v16;
    goto LABEL_8;
  }

  if ([v8 count] > 0x1E || !objc_msgSend(v8, "count"))
  {
    v13 = [NSString stringWithUTF8String:off_1006C9430];
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Invalid update size - min 1, max 30.";
    v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v16 = [NSError errorWithDomain:v13 code:-27109 userInfo:v14];
    goto LABEL_7;
  }

  v11 = +[NSDate now];
  v12 = self->_managedObjectContext;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100040B0C;
  v18[3] = &unk_100690F70;
  v19 = v12;
  v20 = v8;
  v21 = v9;
  v22 = self;
  v23 = v11;
  v13 = v11;
  v14 = v12;
  [(NSManagedObjectContext *)v14 performBlock:v18];

  v15 = 1;
LABEL_8:

  return v15;
}

- (id)fetchGeoCodingsForAddresses:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = self->_managedObjectContext;
  v7 = +[NSDate now];
  Class = objc_getClass("ASGeoCodeResult");
  if (Class)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100041234;
    v14[3] = &unk_100690F98;
    v15 = v4;
    v16 = self;
    v9 = v6;
    v17 = v9;
    v10 = v5;
    v18 = v10;
    v20 = Class;
    v19 = v7;
    [(NSManagedObjectContext *)v9 performBlockAndWait:v14];
    if ([v10 count])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100041560;
      v13[3] = &unk_100690FC0;
      v13[4] = self;
      [(NSManagedObjectContext *)v9 performBlock:v13];
    }

    v11 = v10;
  }

  else
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_1005952CC();
    }

    v11 = 0;
  }

  return v11;
}

- (id)fetchAllBindings
{
  v3 = objc_alloc_init(NSMutableArray);
  managedObjectContext = self->_managedObjectContext;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100041648;
  v11 = &unk_100690FE8;
  v12 = self;
  v5 = v3;
  v13 = v5;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:&v8];
  v6 = [v5 copy];

  return v6;
}

- (void)removeAllBindings
{
  v3 = +[ASBindingKeyVal fetchRequest];
  v4 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v3];
  [v4 setResultType:1];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10003DD48;
  v22 = sub_10003DD58;
  v23 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10003DD48;
  v16[4] = sub_10003DD58;
  v17 = 0;
  managedObjectContext = self->_managedObjectContext;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100041B18;
  v11 = &unk_100690DB8;
  v14 = v16;
  v12 = self;
  v6 = v4;
  v13 = v6;
  v15 = &v18;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:&v8];
  if (v19[5])
  {
    v7 = qword_1006DF770;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v19[5] localizedDescription];
      objc_claimAutoreleasedReturnValue();
      [v19[5] userInfo];
      objc_claimAutoreleasedReturnValue();
      sub_100595308();
    }
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);
}

- (void)commitWithBindings:(id)a3 clearingExistingBindings:(BOOL)a4
{
  v6 = a3;
  managedObjectContext = self->_managedObjectContext;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100041C58;
  v9[3] = &unk_100691010;
  v11 = a4;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v9];
}

- (void)dKsJLlNX54lzKt5n:(id)a3 eqF2XJh3hHBJQf2K:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_managedObjectContext;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000420B4;
  v12[3] = &unk_100691038;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v16 = v8;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  [(NSManagedObjectContext *)v9 performBlock:v12];
}

- (id)evrtH713YbFfEOzk:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10003DD48;
  v26 = sub_10003DD58;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10003DD48;
  v20 = sub_10003DD58;
  v21 = 0;
  managedObjectContext = self->_managedObjectContext;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100042400;
  v11[3] = &unk_100691060;
  v12 = v6;
  v13 = self;
  v14 = &v16;
  v15 = &v22;
  v8 = v6;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v11];
  *a4 = v17[5];
  v9 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

- (void)c94QZ147F1UWY71l:(id)a3 jkjlhN0UgO78kW6q:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self->_managedObjectContext;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004268C;
  v13[3] = &unk_100691038;
  v13[4] = self;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [(NSManagedObjectContext *)v10 performBlockAndWait:v13];
}

- (id)ab491f0831ce63bb:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[DB_R115061196 fetchRequest];
  [v7 setFetchLimit:1];
  [v7 setResultType:0];
  v8 = [NSPredicate predicateWithFormat:@"id = %@", v6];
  [v7 setPredicate:v8];
  managedObjectContext = self->_managedObjectContext;
  v20 = 0;
  v10 = [(NSManagedObjectContext *)managedObjectContext executeFetchRequest:v7 error:&v20];
  v11 = v20;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = qword_1006DF770;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v13 localizedDescription];
      sub_100595458(v6, v15, v23);
    }
  }

  if (![v10 count])
  {
    v16 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "JSON Bag with ID %@ doesn't exist currently.", buf, 0xCu);
    }
  }

  if ([v10 count] == 1)
  {
    v17 = [v10 firstObject];
  }

  else
  {
    v17 = 0;
  }

  if ([v10 count] >= 2 && os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_1005954A4();
  }

  v18 = v12;
  *a4 = v12;

  return v17;
}

- (id)rKKialn8e4bTPAC9:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10003DD48;
  v25 = sub_10003DD58;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10003DD48;
  v19 = sub_10003DD58;
  v20 = 0;
  managedObjectContext = self->_managedObjectContext;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100042CC0;
  v11[3] = &unk_100691060;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = &v21;
  v8 = v6;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v11];
  *a4 = v16[5];
  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)retrieveLegacyRavioliWithCoreDataManager:(id)a3
{
  v3 = a3;
  v4 = [v3 gFJw2BGPtEQWyLz5];
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"DB_R09283478"];
  [v5 setFetchLimit:1];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_10003DD48;
  v24[4] = sub_10003DD58;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_10003DD48;
  v22[4] = sub_10003DD58;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10003DD48;
  v20 = sub_10003DD58;
  v21 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004308C;
  v10[3] = &unk_100691088;
  v13 = v22;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v14 = v24;
  v15 = &v16;
  [v6 performBlockAndWait:v10];
  v8 = v17[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v22, 8);

  _Block_object_dispose(v24, 8);

  return v8;
}

- (void)lJIqliFcwusu4FxD:(NSArray *)a3 workflowID:(NSString *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1000CAD58(&unk_1005CF2E0, v9);
}

@end