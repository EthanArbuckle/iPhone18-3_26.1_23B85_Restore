@interface STPersistUsageOperation
- (BOOL)_persistFetchedUsageReportWithUser:(id)a3 device:(id)a4 inManagedObjectContext:(id)a5 error:(id *)a6;
- (BOOL)_persistUsageReports:(id)a3 usage:(id)a4 aggregateUsage:(BOOL)a5 reportStartDate:(id)a6 durationInMinutes:(unint64_t)a7 calendar:(id)a8 shareWebUsage:(BOOL)a9 inManagedObjectContext:(id)a10 error:(id *)a11;
- (STPersistUsageOperation)initWithManagedObjectContext:(id)a3 fetchUsageOperation:(id)a4 userDeviceState:(id)a5 referenceDate:(id)a6 duration:(int64_t)a7;
- (STPersistUsageOperation)initWithPersistenceController:(id)a3 fetchedUsageResults:(id)a4 userDSID:(id)a5 deviceIdentifier:(id)a6 duration:(int64_t)a7;
- (id)_countedItemByBundleTrustIdentifiersForCountedItems:(id)a3;
- (id)_ensureUsageExistForUser:(id)a3 forCoreDuetIdentifiers:(id)a4 inManagedObjectContext:(id)a5 error:(id *)a6;
- (id)_fetchOrCreateUsageForUser:(id)a3 device:(id)a4 inManagedObjectContext:(id)a5 error:(id *)a6;
- (id)_truncateDate:(id)a3 usingCalendar:(id)a4;
- (id)_usageBlockByTrimmedStartDate:(id)a3 reportStartDate:(id)a4 durationInMinutes:(unint64_t)a5 calendar:(id)a6;
- (id)_usageCategoryByIdentifierForCategories:(id)a3;
- (id)_usagesForUser:(id)a3 devices:(id)a4 error:(id *)a5;
- (void)_purgeExpiredAggregateUsageForUser:(id)a3 managedObjectContext:(id)a4;
- (void)_runWithManagedObjectContext:(id)a3;
- (void)_updateUsageBlock:(id)a3 usageCategory:(id)a4 countedItemsByBundleIdentifier:(id)a5 webUsageReports:(id)a6 applicationUsageReports:(id)a7 shareWebUsage:(BOOL)a8 inManagedObjectContext:(id)a9;
- (void)main;
@end

@implementation STPersistUsageOperation

- (STPersistUsageOperation)initWithPersistenceController:(id)a3 fetchedUsageResults:(id)a4 userDSID:(id)a5 deviceIdentifier:(id)a6 duration:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v24.receiver = self;
  v24.super_class = STPersistUsageOperation;
  v17 = [(STOperation *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_persistenceController, a3);
    objc_storeStrong(&v18->_fetchedUsageResults, a4);
    v19 = [v15 copy];
    userDSID = v18->_userDSID;
    v18->_userDSID = v19;

    v21 = [v16 copy];
    deviceIdentifier = v18->_deviceIdentifier;
    v18->_deviceIdentifier = v21;

    v18->_duration = a7;
  }

  return v18;
}

- (STPersistUsageOperation)initWithManagedObjectContext:(id)a3 fetchUsageOperation:(id)a4 userDeviceState:(id)a5 referenceDate:(id)a6 duration:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [v15 managedObjectContext];

  if (v17 != v13)
  {
    sub_100119CDC(a2, self);
  }

  v24.receiver = self;
  v24.super_class = STPersistUsageOperation;
  v18 = [(STOperation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_moc, a3);
    objc_storeStrong(&v19->_fetchUsageOperation, a4);
    v20 = [v15 objectID];
    userDeviceStateID = v19->_userDeviceStateID;
    v19->_userDeviceStateID = v20;

    objc_storeStrong(&v19->_referenceDate, a6);
    v19->_duration = a7;
  }

  return v19;
}

- (void)main
{
  v3 = _os_activity_create(&_mh_execute_header, "STPersistUsageOperation start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  [(STOperation *)self setActivity:v3];

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = [(STOperation *)self activity];
  os_activity_scope_enter(v4, &state);

  v5 = [(STPersistUsageOperation *)self moc];

  if (v5)
  {
    v6 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    v7 = [(STPersistUsageOperation *)self moc];
    [v6 setParentContext:v7];
  }

  else
  {
    v7 = [(STPersistUsageOperation *)self persistenceController];
    v6 = [v7 newBackgroundContext];
  }

  if (v6)
  {
    v8 = [(STPersistUsageOperation *)self referenceDate];

    if (!v8)
    {
      v9 = +[NSDate date];
      [(STPersistUsageOperation *)self setReferenceDate:v9];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100054C68;
    v12[3] = &unk_1001A3020;
    v12[4] = self;
    v13 = v6;
    [v13 performBlockAndWait:v12];
  }

  else
  {
    v10 = +[STLog usage];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100119D50(v10);
    }

    v11 = [NSError errorWithDomain:STErrorDomain code:1 userInfo:0];
    [(STPersistUsageOperation *)self endOperationWithError:v11];
  }

  os_activity_scope_leave(&state);
}

- (id)_truncateDate:(id)a3 usingCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STPersistUsageOperation *)self duration];
  if (v8 == 1440)
  {
    v10 = [v7 startOfDayForDate:v6];
  }

  else if (v8 == 60)
  {
    v9 = [v7 components:62 fromDate:v6];
    v10 = [v7 dateFromComponents:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_runWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(STPersistUsageOperation *)self userDSID];
  v6 = v5;
  if (!v5)
  {
    v7 = [(STPersistUsageOperation *)self userDeviceStateID];
    v8 = [v4 objectWithID:v7];

    v9 = 0;
LABEL_16:
    if ([v8 screenTimeEnabled])
    {
      v20 = [v8 user];
      v21 = [v8 device];
      v34 = v9;
      v22 = [(STPersistUsageOperation *)self _persistFetchedUsageReportWithUser:v20 device:v21 inManagedObjectContext:v4 error:&v34];
      v23 = v34;

      if (v22)
      {
        [(STPersistUsageOperation *)self _purgeExpiredAggregateUsageForUser:v20 managedObjectContext:v4];
        if ([v4 hasChanges])
        {
          v33 = v23;
          v24 = [v4 save:&v33];
          v25 = v33;

          if ((v24 & 1) == 0)
          {
            v26 = +[STLog usage];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              sub_100119F98();
            }

            [(STPersistUsageOperation *)self endOperationWithError:v25];
          }
        }

        else
        {
          v25 = v23;
        }

        v30 = +[STLog usage];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Successfully persisted usage", buf, 2u);
        }

        [(STPersistUsageOperation *)self endOperationWithResultObject:0];
        v23 = v25;
      }

      else
      {
        v29 = +[STLog usage];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_100119EE4(v23, v8, v29);
        }

        [(STPersistUsageOperation *)self endOperationWithError:v23];
      }

      v9 = v23;
    }

    else
    {
      v27 = [NSError alloc];
      v20 = [v27 initWithDomain:STErrorDomain code:7 userInfo:0];
      v28 = +[STLog usage];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100119E70();
      }

      [(STPersistUsageOperation *)self endOperationWithError:v20];
    }

    goto LABEL_35;
  }

  if ([v5 longLongValue])
  {
    [NSPredicate predicateWithFormat:@"%K == %@", @"user.dsid", v6];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"%K != NULL", @"user.localUserDeviceState", v31];
  }
  v10 = ;
  v11 = [(STPersistUsageOperation *)self deviceIdentifier];
  v12 = [NSPredicate predicateWithFormat:@"%K == %@", @"device.identifier", v11];

  v13 = +[STUserDeviceState fetchRequest];
  v37[0] = v10;
  v37[1] = v12;
  v14 = [NSArray arrayWithObjects:v37 count:2];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];
  [v13 setPredicate:v15];

  v36 = @"screenTimeEnabled";
  v16 = [NSArray arrayWithObjects:&v36 count:1];
  [v13 setPropertiesToFetch:v16];

  v35 = 0;
  v17 = [v13 execute:&v35];
  v9 = v35;
  if (v17)
  {
    if ([v17 count] >= 2)
    {
      v18 = +[STLog usage];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_100119D94();
      }
    }

    v8 = [v17 firstObject];
  }

  else
  {
    v19 = +[STLog usage];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100119DFC();
    }

    [(STPersistUsageOperation *)self endOperationWithError:v9];
    v8 = 0;
  }

  if (v17)
  {
    goto LABEL_16;
  }

LABEL_35:
}

- (BOOL)_persistFetchedUsageReportWithUser:(id)a3 device:(id)a4 inManagedObjectContext:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v56 = [v10 shareWebUsage];
  v13 = [(STPersistUsageOperation *)self fetchedUsageResults];
  v59 = v12;
  if (v13)
  {
    v14 = v13;
    goto LABEL_4;
  }

  v15 = [(STPersistUsageOperation *)self fetchUsageOperation];
  v14 = [v15 resultObject];

  if (v14)
  {
LABEL_4:
    v55 = [v14 partitionDurationInMinutes];
    v16 = +[NSCalendar currentCalendar];
    v17 = [v14 dateInterval];
    v18 = [v17 startDate];
    v58 = v16;
    v57 = [(STPersistUsageOperation *)self _truncateDate:v18 usingCalendar:v16];

    v54 = v14;
    v19 = [v14 usageReportsByCoreDuetIdentifier];
    v20 = [v19 allKeys];
    v21 = [NSSet setWithArray:v20];

    v22 = [(STPersistUsageOperation *)self _ensureUsageExistForUser:v10 forCoreDuetIdentifiers:v21 inManagedObjectContext:v12 error:a6];
    if (!v22)
    {
      LOBYTE(v38) = 0;
LABEL_44:

      v45 = v54;
      goto LABEL_45;
    }

    v23 = [v10 localUserDeviceState];

    v53 = v22;
    if (v23)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v24 = v22;
      v25 = [v24 countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v61;
        v51 = v11;
        v52 = v10;
        v50 = v21;
        while (2)
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v61 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v60 + 1) + 8 * i);
            if ([(STPersistUsageOperation *)self isCanceled])
            {
              v11 = v51;
              v10 = v52;
              v21 = v50;
              v22 = v53;
              if (a6)
              {
                [NSError errorWithDomain:CATErrorDomain code:404 userInfo:0];
                *a6 = LOBYTE(v38) = 0;
              }

              else
              {
                LOBYTE(v38) = 0;
              }

              goto LABEL_43;
            }

            v30 = [v24 objectForKeyedSubscript:v29];
            v31 = [v19 objectForKeyedSubscript:v29];
            LOBYTE(v49) = v56;
            v32 = [(STPersistUsageOperation *)self _persistUsageReports:v31 usage:v30 aggregateUsage:0 reportStartDate:v57 durationInMinutes:v55 calendar:v58 shareWebUsage:v49 inManagedObjectContext:v59 error:a6];

            if (!v32)
            {
              LOBYTE(v38) = 0;
              v11 = v51;
              v10 = v52;
              v21 = v50;
              goto LABEL_42;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v60 objects:v64 count:16];
          v11 = v51;
          v10 = v52;
          v21 = v50;
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v12 = v59;
    }

    v24 = [v54 localUsageReports];
    if (v24)
    {
      v33 = [(STPersistUsageOperation *)self _fetchOrCreateUsageForUser:v10 device:v11 inManagedObjectContext:v12 error:a6];
      if (!v33 || (v34 = v33, LOBYTE(v49) = v56, v35 = [(STPersistUsageOperation *)self _persistUsageReports:v24 usage:v33 aggregateUsage:0 reportStartDate:v57 durationInMinutes:v55 calendar:v58 shareWebUsage:v49 inManagedObjectContext:v12 error:a6], v34, !v35))
      {
        LOBYTE(v38) = 0;
        goto LABEL_42;
      }
    }

    v36 = [v54 aggregateUsageReports];
    v37 = [v10 localUserDeviceState];

    if (v37)
    {
      if (([v10 syncingEnabled] & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (![v36 count])
    {
      goto LABEL_32;
    }

    v43 = [(STPersistUsageOperation *)self _fetchOrCreateUsageForUser:v10 device:0 inManagedObjectContext:v59 error:a6];
    if (!v43)
    {
      LOBYTE(v38) = 0;
      goto LABEL_41;
    }

    v44 = v43;
    LOBYTE(v49) = v56;
    v38 = [(STPersistUsageOperation *)self _persistUsageReports:v36 usage:v43 aggregateUsage:1 reportStartDate:v57 durationInMinutes:v55 calendar:v58 shareWebUsage:v49 inManagedObjectContext:v59 error:a6];

    if (!v38)
    {
LABEL_41:

LABEL_42:
      v22 = v53;
LABEL_43:

      goto LABEL_44;
    }

LABEL_32:
    LOBYTE(v38) = 1;
    goto LABEL_41;
  }

  v39 = [(STPersistUsageOperation *)self fetchUsageOperation];
  v40 = [v39 error];
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = [NSError errorWithDomain:STErrorDomain code:1 userInfo:0];
  }

  v45 = v42;

  v46 = +[STLog usage];
  if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
  {
    sub_10011A000();
  }

  if (a6)
  {
    v47 = v45;
    LOBYTE(v38) = 0;
    *a6 = v45;
  }

  else
  {
    LOBYTE(v38) = 0;
  }

LABEL_45:

  return v38;
}

- (id)_ensureUsageExistForUser:(id)a3 forCoreDuetIdentifiers:(id)a4 inManagedObjectContext:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v54 = a5;
  v12 = +[STUserDeviceState fetchRequest];
  v55 = v10;
  v13 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K IN %@)", @"user", v10, @"coreDuetIdentifier", v11];
  [v12 setPredicate:v13];

  v72 = @"device";
  v14 = [NSArray arrayWithObjects:&v72 count:1];
  [v12 setRelationshipKeyPathsForPrefetching:v14];

  v15 = [v12 execute:a6];
  if (v15)
  {
    v16 = self;
    v50 = v11;
    obj = a6;
    v49 = v12;
    v17 = +[NSMapTable strongToStrongObjectsMapTable];
    v18 = objc_opt_new();
    v56 = objc_opt_new();
    v19 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v48 = v15;
    v20 = v15;
    v21 = [v20 countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v66;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v66 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v65 + 1) + 8 * i);
          v26 = [v25 device];
          v27 = [v25 coreDuetIdentifier];
          [v17 setObject:v27 forKey:v26];
          [v18 setObject:v26 forKeyedSubscript:v27];
          [v56 addObject:v26];
          [v19 addObject:v27];
        }

        v22 = [v20 countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v22);
    }

    v28 = [(STPersistUsageOperation *)v16 _usagesForUser:v55 devices:v56 error:obj];
    if (v28)
    {
      v29 = objc_opt_new();
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v47 = v28;
      obja = v28;
      v30 = [obja countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v62;
        do
        {
          for (j = 0; j != v31; j = j + 1)
          {
            if (*v62 != v32)
            {
              objc_enumerationMutation(obja);
            }

            v34 = *(*(&v61 + 1) + 8 * j);
            v35 = [v34 device];
            v36 = [v17 objectForKey:v35];

            [v29 setObject:v34 forKeyedSubscript:v36];
            [v19 removeObject:v36];
          }

          v31 = [obja countByEnumeratingWithState:&v61 objects:v70 count:16];
        }

        while (v31);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      objb = v19;
      v37 = [objb countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v58;
        do
        {
          for (k = 0; k != v38; k = k + 1)
          {
            if (*v58 != v39)
            {
              objc_enumerationMutation(objb);
            }

            v41 = *(*(&v57 + 1) + 8 * k);
            v42 = [[STUsage alloc] initWithContext:v54];
            [v42 setUser:v55];
            v43 = [v18 objectForKeyedSubscript:v41];
            [v42 setDevice:v43];

            [v29 setObject:v42 forKeyedSubscript:v41];
            v44 = +[NSDate date];
            [v42 setLastUpdatedDate:v44];
          }

          v38 = [objb countByEnumeratingWithState:&v57 objects:v69 count:16];
        }

        while (v38);
      }

      v45 = [v29 copy];
      v28 = v47;
    }

    else
    {
      v45 = 0;
    }

    v12 = v49;
    v11 = v50;
    v15 = v48;
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

- (id)_fetchOrCreateUsageForUser:(id)a3 device:(id)a4 inManagedObjectContext:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v11)
  {
    v14 = [(STPersistUsageOperation *)self _usagesForUser:v10 devices:0 error:a6];
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v13 = [NSSet setWithObject:v11];
  v14 = [(STPersistUsageOperation *)self _usagesForUser:v10 devices:v13 error:a6];

  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ([v14 count] >= 2)
  {
    v15 = +[STLog usage];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10011A068();
    }
  }

  v16 = [v14 firstObject];
  if (!v16)
  {
    v16 = [[STUsage alloc] initWithContext:v12];
    [v16 setUser:v10];
    [v16 setDevice:v11];
    v17 = +[NSDate date];
    [v16 setLastUpdatedDate:v17];
  }

LABEL_11:

  return v16;
}

- (id)_usagesForUser:(id)a3 devices:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [NSPredicate predicateWithFormat:@"%K = %@", @"user", a3];
  if (v7)
  {
    [NSPredicate predicateWithFormat:@"%K IN %@", @"device", v7];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"%K == NULL", @"device", v16];
  }
  v9 = ;
  v10 = +[STUsage fetchRequest];
  v18[0] = v8;
  v18[1] = v9;
  v11 = [NSArray arrayWithObjects:v18 count:2];
  v12 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];
  [v10 setPredicate:v12];

  v17[0] = @"device";
  v17[1] = @"blocks";
  v13 = [NSArray arrayWithObjects:v17 count:2];
  [v10 setRelationshipKeyPathsForPrefetching:v13];

  v14 = [v10 execute:a5];

  return v14;
}

- (BOOL)_persistUsageReports:(id)a3 usage:(id)a4 aggregateUsage:(BOOL)a5 reportStartDate:(id)a6 durationInMinutes:(unint64_t)a7 calendar:(id)a8 shareWebUsage:(BOOL)a9 inManagedObjectContext:(id)a10 error:(id *)a11
{
  v101 = a5;
  v95 = a3;
  v104 = a4;
  v14 = a6;
  v103 = a8;
  v115 = a10;
  v15 = +[STLog usage];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v95 count];
    v17 = [v104 user];
    v18 = [v17 dsid];
    [v104 device];
    v20 = v19 = v14;
    v21 = [v20 name];
    v22 = v21;
    *buf = 134219010;
    v23 = @"NO";
    v140 = v16;
    v141 = 2112;
    if (v101)
    {
      v23 = @"YES";
    }

    v142 = v18;
    v143 = 2112;
    v144 = v21;
    v145 = 2112;
    v146 = v23;
    v147 = 2112;
    v148 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Persisting %lu reports from user: %@ - device: %@ - is aggregate: %@ - startDate: %@", buf, 0x34u);

    v14 = v19;
  }

  v24 = [(STPersistUsageOperation *)self _usageBlockByTrimmedStartDate:v104 reportStartDate:v14 durationInMinutes:a7 calendar:v103];
  if (!v24)
  {
    v28 = 0;
    goto LABEL_83;
  }

  v25 = [(STPersistUsageOperation *)self referenceDate];

  if (!v25)
  {
    v26 = +[NSDate date];
    [(STPersistUsageOperation *)self setReferenceDate:v26];
  }

  if (self)
  {
    v27 = [(STPersistUsageOperation *)self referenceDate];
    if (v27)
    {
      [(STPersistUsageOperation *)self referenceDate];
    }

    else
    {
      +[NSDate date];
    }
    v29 = ;
    [v104 setLastUpdatedDate:v29];
  }

  else
  {
    v27 = +[NSDate date];
    [v104 setLastUpdatedDate:v27];
  }

  v30 = [v24 allKeys];
  v102 = [NSMutableSet setWithArray:v30];

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = v95;
  v99 = [obj countByEnumeratingWithState:&v131 objects:v138 count:16];
  v93 = v14;
  if (!v99)
  {
    v75 = 0;
    v94 = 1;
    goto LABEL_65;
  }

  v31 = 0;
  v98 = *v132;
  v94 = 1;
  v97 = v24;
  while (2)
  {
    for (i = 0; i != v99; i = i + 1)
    {
      if (*v132 != v98)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(*(&v131 + 1) + 8 * i);
      v34 = objc_autoreleasePoolPush();
      if ([(STPersistUsageOperation *)self isCanceled])
      {
        v75 = [NSError errorWithDomain:CATErrorDomain code:404 userInfo:0];

        v80 = +[STLog usage];
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          sub_10011A0D0(v80);
        }

        objc_autoreleasePoolPop(v34);
        v94 = 0;
        goto LABEL_65;
      }

      v35 = [v33 interval];
      v36 = [v35 startDate];
      v37 = [(STPersistUsageOperation *)self _truncateDate:v36 usingCalendar:v103];

      [v33 screenTime];
      v39 = v38;
      v40 = [v24 objectForKeyedSubscript:v37];
      if (v101)
      {
        v41 = [v104 user];
        v42 = [v41 localUserDeviceState];
        if (v42)
        {
        }

        else
        {
          v43 = [v40 screenTimeInSeconds];

          if (v39 < v43)
          {
            [v102 removeObject:v37];

            objc_autoreleasePoolPop(v34);
            continue;
          }
        }
      }

      v107 = v35;
      v108 = v31;
      v109 = i;
      v110 = v34;
      if (!v40)
      {
        v40 = [[STUsageBlock alloc] initWithContext:v115];
        [v40 setUsage:v104];
      }

      v106 = v37;
      [v40 setStartDate:v37];
      [v40 setDurationInMinutes:a7];
      [v40 setScreenTimeInSeconds:v39];
      v44 = [v33 lastEventDate];
      [v40 setLastEventDate:v44];

      v45 = [v33 firstPickup];
      [v40 setFirstPickupDate:v45];

      v46 = [v33 longestSession];
      v47 = [v46 startDate];
      [v40 setLongestSessionStartDate:v47];

      v105 = v46;
      v48 = [v46 endDate];
      [v40 setLongestSessionEndDate:v48];

      [v40 setNumberOfPickupsWithoutApplicationUsage:{objc_msgSend(v33, "pickupsWithoutApplicationUsage")}];
      v49 = [(STPersistUsageOperation *)self duration];
      v50 = [v40 categories];
      v51 = [(STPersistUsageOperation *)self _usageCategoryByIdentifierForCategories:v50];

      v114 = v40;
      v52 = [v40 countedItems];
      v111 = [(STPersistUsageOperation *)self _countedItemByBundleTrustIdentifiersForCountedItems:v52];

      v53 = [v51 allKeys];
      v54 = [NSMutableSet setWithArray:v53];

      v55 = [v33 categoryUsage];
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v113 = v55;
      v56 = [v55 countByEnumeratingWithState:&v127 objects:v137 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v128;
        do
        {
          for (j = 0; j != v57; j = j + 1)
          {
            if (*v128 != v58)
            {
              objc_enumerationMutation(v113);
            }

            v60 = *(*(&v127 + 1) + 8 * j);
            v61 = [v60 categoryIdentifier];
            v62 = [v51 objectForKeyedSubscript:v61];
            [v60 totalUsageTime];
            if (v63 <= 0.0)
            {
              if (v62)
              {
                [v115 deleteObject:v62];

                v62 = 0;
              }
            }

            else
            {
              v64 = v63;
              if (!v62)
              {
                v62 = [[STUsageCategory alloc] initWithContext:v115];
                [v62 setIdentifier:v61];
                [v62 setBlock:v114];
              }

              [v62 setTotalTimeInSeconds:v64];
            }

            if (v49 != 1440)
            {
              v65 = [v60 webUsage];
              v66 = [v60 applicationUsage];
              [(STPersistUsageOperation *)self _updateUsageBlock:v114 usageCategory:v62 countedItemsByBundleIdentifier:v111 webUsageReports:v65 applicationUsageReports:v66 shareWebUsage:a9 inManagedObjectContext:v115];
            }

            [v54 removeObject:v61];
          }

          v57 = [v113 countByEnumeratingWithState:&v127 objects:v137 count:16];
        }

        while (v57);
      }

      v125[0] = _NSConcreteStackBlock;
      v125[1] = 3221225472;
      v125[2] = sub_100056B84;
      v125[3] = &unk_1001A4908;
      v67 = v115;
      v126 = v67;
      [v111 enumerateKeysAndObjectsUsingBlock:v125];
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v68 = v54;
      v69 = [v68 countByEnumeratingWithState:&v121 objects:v136 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v122;
        do
        {
          for (k = 0; k != v70; k = k + 1)
          {
            if (*v122 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = [v51 objectForKeyedSubscript:*(*(&v121 + 1) + 8 * k)];
            [v67 deleteObject:v73];
          }

          v70 = [v68 countByEnumeratingWithState:&v121 objects:v136 count:16];
        }

        while (v70);
      }

      [v102 removeObject:v106];
      if (![v67 hasChanges])
      {
        v75 = v108;
        i = v109;
LABEL_56:
        v78 = v110;
        v79 = v114;
        [v67 refreshObject:v114 mergeChanges:0];
        v77 = 1;
        v24 = v97;
        goto LABEL_57;
      }

      v120 = v108;
      v74 = [v67 save:&v120];
      v75 = v120;

      i = v109;
      if (v74)
      {
        goto LABEL_56;
      }

      v76 = +[STLog usage];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v140 = v75;
        _os_log_fault_impl(&_mh_execute_header, v76, OS_LOG_TYPE_FAULT, "_persistUsageReports Failed to persist usage: %{public}@", buf, 0xCu);
      }

      v94 = 0;
      v77 = 0;
      v24 = v97;
      v78 = v110;
      v79 = v114;
LABEL_57:

      objc_autoreleasePoolPop(v78);
      v31 = v75;
      if (!v77)
      {
        goto LABEL_65;
      }
    }

    v75 = v31;
    v99 = [obj countByEnumeratingWithState:&v131 objects:v138 count:16];
    if (v99)
    {
      continue;
    }

    break;
  }

LABEL_65:

  v28 = v94;
  if ([v102 count])
  {
    v81 = +[STLog usage];
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = [v102 count];
      *buf = 134217984;
      v140 = v82;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Deleting %lu orphaned start dates", buf, 0xCu);
    }
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v83 = v102;
  v84 = [v83 countByEnumeratingWithState:&v116 objects:v135 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v117;
    do
    {
      for (m = 0; m != v85; m = m + 1)
      {
        if (*v117 != v86)
        {
          objc_enumerationMutation(v83);
        }

        v88 = [v24 objectForKeyedSubscript:*(*(&v116 + 1) + 8 * m)];
        [v115 deleteObject:v88];
      }

      v85 = [v83 countByEnumeratingWithState:&v116 objects:v135 count:16];
    }

    while (v85);
  }

  if (v94)
  {
    v89 = +[STLog usage];
    v14 = v93;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = [v104 lastUpdatedDate];
      *buf = 138412290;
      v140 = v90;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Successfully persisted reports at: %@", buf, 0xCu);
    }
  }

  else
  {
    v14 = v93;
    if (a11)
    {
      v91 = v75;
      *a11 = v75;
    }
  }

LABEL_83:
  return v28 & 1;
}

- (id)_usageBlockByTrimmedStartDate:(id)a3 reportStartDate:(id)a4 durationInMinutes:(unint64_t)a5 calendar:(id)a6
{
  v24 = self;
  v9 = a4;
  v25 = a6;
  v10 = [a3 blocks];
  v11 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if ([v17 durationInMinutes] == a5)
        {
          v18 = [v17 startDate];
          v19 = [v18 compare:v9];

          if (v19 != -1)
          {
            v20 = [v17 startDate];
            v21 = [(STPersistUsageOperation *)v24 _truncateDate:v20 usingCalendar:v25];

            [v11 setObject:v17 forKeyedSubscript:v21];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v22 = [v11 copy];

  return v22;
}

- (id)_countedItemByBundleTrustIdentifiersForCountedItems:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [STUsageTrustIdentifier alloc];
        v12 = [v10 bundleIdentifier];
        v13 = [v11 initWithIdentifier:v12 usageTrusted:{objc_msgSend(v10, "usageTrusted")}];

        [v4 setObject:v10 forKeyedSubscript:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_usageCategoryByIdentifierForCategories:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (void)_updateUsageBlock:(id)a3 usageCategory:(id)a4 countedItemsByBundleIdentifier:(id)a5 webUsageReports:(id)a6 applicationUsageReports:(id)a7 shareWebUsage:(BOOL)a8 inManagedObjectContext:(id)a9
{
  v9 = a8;
  v69 = a3;
  v14 = a4;
  v76 = a5;
  v68 = a6;
  obj = a7;
  v15 = a9;
  v77 = objc_opt_new();
  v78 = objc_opt_new();
  v73 = objc_opt_new();
  v74 = objc_opt_new();
  v70 = objc_opt_new();
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v75 = v14;
  v16 = [v14 timedItems];
  v17 = [v16 countByEnumeratingWithState:&v99 objects:v108 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v100;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v100 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v99 + 1) + 8 * i);
        v22 = [v21 domain];
        if (v22)
        {
          v23 = [[STUsageTrustIdentifier alloc] initWithIdentifier:v22 usageTrusted:{objc_msgSend(v21, "usageTrusted")}];
          [v77 setObject:v21 forKeyedSubscript:v23];
          [v73 addObject:v23];
        }

        v24 = [v21 bundleIdentifier];
        if (v24)
        {
          v25 = [[STUsageTrustIdentifier alloc] initWithIdentifier:v24 usageTrusted:{objc_msgSend(v21, "usageTrusted")}];
          [v78 setObject:v21 forKeyedSubscript:v25];
          [v74 addObject:v25];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v99 objects:v108 count:16];
    }

    while (v18);
  }

  if (v75 && v9)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v26 = v68;
    v27 = [v26 countByEnumeratingWithState:&v95 objects:v107 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v96;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v96 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v95 + 1) + 8 * j);
          v32 = [v31 domainIdentifier];
          v33 = [[STUsageTrustIdentifier alloc] initWithIdentifier:v32 usageTrusted:{objc_msgSend(v31, "webUsageTrusted")}];
          v34 = [v77 objectForKeyedSubscript:v33];
          if (!v34)
          {
            v34 = [[STUsageTimedItem alloc] initWithContext:v15];
            [v34 setDomain:v32];
            [v34 setUsageTrusted:{objc_msgSend(v31, "webUsageTrusted")}];
            [v34 setCategory:v75];
          }

          [v31 totalUsageTime];
          [v34 setTotalTimeInSeconds:v35];
          [v73 removeObject:v33];
        }

        v28 = [v26 countByEnumeratingWithState:&v95 objects:v107 count:16];
      }

      while (v28);
    }
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obja = obj;
  v36 = [obja countByEnumeratingWithState:&v91 objects:v106 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v92;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v92 != v38)
        {
          objc_enumerationMutation(obja);
        }

        v40 = *(*(&v91 + 1) + 8 * k);
        v41 = [v40 canonicalBundleIdentifier];
        v42 = [[STUsageTrustIdentifier alloc] initWithIdentifier:v41 usageTrusted:{objc_msgSend(v40, "applicationUsageTrusted")}];
        v43 = [v78 objectForKeyedSubscript:v42];
        [v40 totalUsageTime];
        if (v75 && (v45 = v44, v44 >= 1))
        {
          if (!v43)
          {
            v43 = [[STUsageTimedItem alloc] initWithContext:v15];
            [v43 setBundleIdentifier:v41];
            [v43 setUsageTrusted:{objc_msgSend(v40, "applicationUsageTrusted")}];
            [v43 setCategory:v75];
          }

          [v43 setTotalTimeInSeconds:v45];
          [v74 removeObject:v42];
        }

        else
        {
          if (!v43)
          {
            goto LABEL_37;
          }

          [v15 deleteObject:v43];
        }

LABEL_37:
        v46 = [v76 objectForKeyedSubscript:v42];
        v47 = [v40 totalUserNotifications];
        v48 = [v40 totalPickups];
        if (v47 <= 0 && v48 < 1)
        {
          if (!v46)
          {
            goto LABEL_47;
          }

          [v15 deleteObject:v46];
        }

        else
        {
          v50 = v48;
          if (!v46)
          {
            v46 = [[STUsageCountedItem alloc] initWithContext:v15];
            [v46 setBundleIdentifier:v41];
            [v46 setUsageTrusted:{objc_msgSend(v40, "applicationUsageTrusted")}];
            [v46 setBlock:v69];
          }

          [v46 setNumberOfNotifications:v47];
          [v46 setNumberOfPickups:v50];
          [v70 addObject:v42];
        }

LABEL_47:
      }

      v37 = [obja countByEnumeratingWithState:&v91 objects:v106 count:16];
    }

    while (v37);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v51 = v73;
  v52 = [v51 countByEnumeratingWithState:&v87 objects:v105 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v88;
    do
    {
      for (m = 0; m != v53; m = m + 1)
      {
        if (*v88 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [v77 objectForKeyedSubscript:{*(*(&v87 + 1) + 8 * m), v68}];
        [v15 deleteObject:v56];
      }

      v53 = [v51 countByEnumeratingWithState:&v87 objects:v105 count:16];
    }

    while (v53);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v57 = v74;
  v58 = [v57 countByEnumeratingWithState:&v83 objects:v104 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v84;
    do
    {
      for (n = 0; n != v59; n = n + 1)
      {
        if (*v84 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = [v78 objectForKeyedSubscript:{*(*(&v83 + 1) + 8 * n), v68}];
        [v15 deleteObject:v62];
      }

      v59 = [v57 countByEnumeratingWithState:&v83 objects:v104 count:16];
    }

    while (v59);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v63 = v70;
  v64 = [v63 countByEnumeratingWithState:&v79 objects:v103 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v80;
    do
    {
      for (ii = 0; ii != v65; ii = ii + 1)
      {
        if (*v80 != v66)
        {
          objc_enumerationMutation(v63);
        }

        [v76 setObject:0 forKeyedSubscript:{*(*(&v79 + 1) + 8 * ii), v68}];
      }

      v65 = [v63 countByEnumeratingWithState:&v79 objects:v103 count:16];
    }

    while (v65);
  }
}

- (void)_purgeExpiredAggregateUsageForUser:(id)a3 managedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 localUserDeviceState];

  if (v7)
  {
    if (([v5 syncingEnabled] & 1) == 0)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v8 = [v5 usages];
      v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v36;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            v14 = [v13 device];

            if (!v14)
            {
              [v6 deleteObject:v13];
              goto LABEL_34;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = [v5 usages];
  v8 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (!v8)
  {

    v17 = 0;
    v16 = 0;
    goto LABEL_33;
  }

  v28 = v6;
  v29 = v5;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *v32;
  obj = v15;
  do
  {
    for (j = 0; j != v8; j = j + 1)
    {
      if (*v32 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v31 + 1) + 8 * j);
      v22 = [v21 lastUpdatedDate];
      v23 = [v21 device];

      if (v23)
      {
        if (v17)
        {
          v24 = v17;
          v25 = v22;
          if ([v22 compare:v17] != -1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v24 = 0;
          v25 = v22;
        }
      }

      else
      {
        v26 = v21;

        v24 = v16;
        v16 = v22;
        v25 = v17;
        v18 = v26;
      }

      v27 = v22;

      v17 = v25;
LABEL_24:
    }

    v8 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  }

  while (v8);

  v8 = v18;
  if (v18)
  {
    v6 = v28;
    v5 = v29;
    if (v17 && [v16 compare:v17] == -1)
    {
      [v28 deleteObject:v18];
    }
  }

  else
  {
    v6 = v28;
    v5 = v29;
  }

LABEL_33:

LABEL_34:
LABEL_35:
}

@end