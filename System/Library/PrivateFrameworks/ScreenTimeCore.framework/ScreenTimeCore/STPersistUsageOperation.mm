@interface STPersistUsageOperation
- (BOOL)_persistFetchedUsageReportWithUser:(id)user device:(id)device inManagedObjectContext:(id)context error:(id *)error;
- (BOOL)_persistUsageReports:(id)reports usage:(id)usage aggregateUsage:(BOOL)aggregateUsage reportStartDate:(id)date durationInMinutes:(unint64_t)minutes calendar:(id)calendar shareWebUsage:(BOOL)webUsage inManagedObjectContext:(id)self0 error:(id *)self1;
- (STPersistUsageOperation)initWithManagedObjectContext:(id)context fetchUsageOperation:(id)operation userDeviceState:(id)state referenceDate:(id)date duration:(int64_t)duration;
- (STPersistUsageOperation)initWithPersistenceController:(id)controller fetchedUsageResults:(id)results userDSID:(id)d deviceIdentifier:(id)identifier duration:(int64_t)duration;
- (id)_countedItemByBundleTrustIdentifiersForCountedItems:(id)items;
- (id)_ensureUsageExistForUser:(id)user forCoreDuetIdentifiers:(id)identifiers inManagedObjectContext:(id)context error:(id *)error;
- (id)_fetchOrCreateUsageForUser:(id)user device:(id)device inManagedObjectContext:(id)context error:(id *)error;
- (id)_truncateDate:(id)date usingCalendar:(id)calendar;
- (id)_usageBlockByTrimmedStartDate:(id)date reportStartDate:(id)startDate durationInMinutes:(unint64_t)minutes calendar:(id)calendar;
- (id)_usageCategoryByIdentifierForCategories:(id)categories;
- (id)_usagesForUser:(id)user devices:(id)devices error:(id *)error;
- (void)_purgeExpiredAggregateUsageForUser:(id)user managedObjectContext:(id)context;
- (void)_runWithManagedObjectContext:(id)context;
- (void)_updateUsageBlock:(id)block usageCategory:(id)category countedItemsByBundleIdentifier:(id)identifier webUsageReports:(id)reports applicationUsageReports:(id)usageReports shareWebUsage:(BOOL)usage inManagedObjectContext:(id)context;
- (void)main;
@end

@implementation STPersistUsageOperation

- (STPersistUsageOperation)initWithPersistenceController:(id)controller fetchedUsageResults:(id)results userDSID:(id)d deviceIdentifier:(id)identifier duration:(int64_t)duration
{
  controllerCopy = controller;
  resultsCopy = results;
  dCopy = d;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = STPersistUsageOperation;
  v17 = [(STOperation *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_persistenceController, controller);
    objc_storeStrong(&v18->_fetchedUsageResults, results);
    v19 = [dCopy copy];
    userDSID = v18->_userDSID;
    v18->_userDSID = v19;

    v21 = [identifierCopy copy];
    deviceIdentifier = v18->_deviceIdentifier;
    v18->_deviceIdentifier = v21;

    v18->_duration = duration;
  }

  return v18;
}

- (STPersistUsageOperation)initWithManagedObjectContext:(id)context fetchUsageOperation:(id)operation userDeviceState:(id)state referenceDate:(id)date duration:(int64_t)duration
{
  contextCopy = context;
  operationCopy = operation;
  stateCopy = state;
  dateCopy = date;
  managedObjectContext = [stateCopy managedObjectContext];

  if (managedObjectContext != contextCopy)
  {
    sub_100119CDC(a2, self);
  }

  v24.receiver = self;
  v24.super_class = STPersistUsageOperation;
  v18 = [(STOperation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_moc, context);
    objc_storeStrong(&v19->_fetchUsageOperation, operation);
    objectID = [stateCopy objectID];
    userDeviceStateID = v19->_userDeviceStateID;
    v19->_userDeviceStateID = objectID;

    objc_storeStrong(&v19->_referenceDate, date);
    v19->_duration = duration;
  }

  return v19;
}

- (void)main
{
  v3 = _os_activity_create(&_mh_execute_header, "STPersistUsageOperation start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  [(STOperation *)self setActivity:v3];

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(STOperation *)self activity];
  os_activity_scope_enter(activity, &state);

  v5 = [(STPersistUsageOperation *)self moc];

  if (v5)
  {
    newBackgroundContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    persistenceController = [(STPersistUsageOperation *)self moc];
    [newBackgroundContext setParentContext:persistenceController];
  }

  else
  {
    persistenceController = [(STPersistUsageOperation *)self persistenceController];
    newBackgroundContext = [persistenceController newBackgroundContext];
  }

  if (newBackgroundContext)
  {
    referenceDate = [(STPersistUsageOperation *)self referenceDate];

    if (!referenceDate)
    {
      v9 = +[NSDate date];
      [(STPersistUsageOperation *)self setReferenceDate:v9];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100054C68;
    v12[3] = &unk_1001A3020;
    v12[4] = self;
    v13 = newBackgroundContext;
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

- (id)_truncateDate:(id)date usingCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  duration = [(STPersistUsageOperation *)self duration];
  if (duration == 1440)
  {
    v10 = [calendarCopy startOfDayForDate:dateCopy];
  }

  else if (duration == 60)
  {
    v9 = [calendarCopy components:62 fromDate:dateCopy];
    v10 = [calendarCopy dateFromComponents:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_runWithManagedObjectContext:(id)context
{
  contextCopy = context;
  userDSID = [(STPersistUsageOperation *)self userDSID];
  v6 = userDSID;
  if (!userDSID)
  {
    userDeviceStateID = [(STPersistUsageOperation *)self userDeviceStateID];
    firstObject = [contextCopy objectWithID:userDeviceStateID];

    v9 = 0;
LABEL_16:
    if ([firstObject screenTimeEnabled])
    {
      user = [firstObject user];
      device = [firstObject device];
      v34 = v9;
      v22 = [(STPersistUsageOperation *)self _persistFetchedUsageReportWithUser:user device:device inManagedObjectContext:contextCopy error:&v34];
      v23 = v34;

      if (v22)
      {
        [(STPersistUsageOperation *)self _purgeExpiredAggregateUsageForUser:user managedObjectContext:contextCopy];
        if ([contextCopy hasChanges])
        {
          v33 = v23;
          v24 = [contextCopy save:&v33];
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
          sub_100119EE4(v23, firstObject, v29);
        }

        [(STPersistUsageOperation *)self endOperationWithError:v23];
      }

      v9 = v23;
    }

    else
    {
      v27 = [NSError alloc];
      user = [v27 initWithDomain:STErrorDomain code:7 userInfo:0];
      v28 = +[STLog usage];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100119E70();
      }

      [(STPersistUsageOperation *)self endOperationWithError:user];
    }

    goto LABEL_35;
  }

  if ([userDSID longLongValue])
  {
    [NSPredicate predicateWithFormat:@"%K == %@", @"user.dsid", v6];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"%K != NULL", @"user.localUserDeviceState", v31];
  }
  v10 = ;
  deviceIdentifier = [(STPersistUsageOperation *)self deviceIdentifier];
  v12 = [NSPredicate predicateWithFormat:@"%K == %@", @"device.identifier", deviceIdentifier];

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

    firstObject = [v17 firstObject];
  }

  else
  {
    v19 = +[STLog usage];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100119DFC();
    }

    [(STPersistUsageOperation *)self endOperationWithError:v9];
    firstObject = 0;
  }

  if (v17)
  {
    goto LABEL_16;
  }

LABEL_35:
}

- (BOOL)_persistFetchedUsageReportWithUser:(id)user device:(id)device inManagedObjectContext:(id)context error:(id *)error
{
  userCopy = user;
  deviceCopy = device;
  contextCopy = context;
  shareWebUsage = [userCopy shareWebUsage];
  fetchedUsageResults = [(STPersistUsageOperation *)self fetchedUsageResults];
  v59 = contextCopy;
  if (fetchedUsageResults)
  {
    resultObject = fetchedUsageResults;
    goto LABEL_4;
  }

  fetchUsageOperation = [(STPersistUsageOperation *)self fetchUsageOperation];
  resultObject = [fetchUsageOperation resultObject];

  if (resultObject)
  {
LABEL_4:
    partitionDurationInMinutes = [resultObject partitionDurationInMinutes];
    v16 = +[NSCalendar currentCalendar];
    dateInterval = [resultObject dateInterval];
    startDate = [dateInterval startDate];
    v58 = v16;
    v57 = [(STPersistUsageOperation *)self _truncateDate:startDate usingCalendar:v16];

    v54 = resultObject;
    usageReportsByCoreDuetIdentifier = [resultObject usageReportsByCoreDuetIdentifier];
    allKeys = [usageReportsByCoreDuetIdentifier allKeys];
    v21 = [NSSet setWithArray:allKeys];

    v22 = [(STPersistUsageOperation *)self _ensureUsageExistForUser:userCopy forCoreDuetIdentifiers:v21 inManagedObjectContext:contextCopy error:error];
    if (!v22)
    {
      LOBYTE(v38) = 0;
LABEL_44:

      v45 = v54;
      goto LABEL_45;
    }

    localUserDeviceState = [userCopy localUserDeviceState];

    v53 = v22;
    if (localUserDeviceState)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      localUsageReports = v22;
      v25 = [localUsageReports countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v61;
        v51 = deviceCopy;
        v52 = userCopy;
        v50 = v21;
        while (2)
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v61 != v27)
            {
              objc_enumerationMutation(localUsageReports);
            }

            v29 = *(*(&v60 + 1) + 8 * i);
            if ([(STPersistUsageOperation *)self isCanceled])
            {
              deviceCopy = v51;
              userCopy = v52;
              v21 = v50;
              v22 = v53;
              if (error)
              {
                [NSError errorWithDomain:CATErrorDomain code:404 userInfo:0];
                *error = LOBYTE(v38) = 0;
              }

              else
              {
                LOBYTE(v38) = 0;
              }

              goto LABEL_43;
            }

            v30 = [localUsageReports objectForKeyedSubscript:v29];
            v31 = [usageReportsByCoreDuetIdentifier objectForKeyedSubscript:v29];
            LOBYTE(v49) = shareWebUsage;
            v32 = [(STPersistUsageOperation *)self _persistUsageReports:v31 usage:v30 aggregateUsage:0 reportStartDate:v57 durationInMinutes:partitionDurationInMinutes calendar:v58 shareWebUsage:v49 inManagedObjectContext:v59 error:error];

            if (!v32)
            {
              LOBYTE(v38) = 0;
              deviceCopy = v51;
              userCopy = v52;
              v21 = v50;
              goto LABEL_42;
            }
          }

          v26 = [localUsageReports countByEnumeratingWithState:&v60 objects:v64 count:16];
          deviceCopy = v51;
          userCopy = v52;
          v21 = v50;
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      contextCopy = v59;
    }

    localUsageReports = [v54 localUsageReports];
    if (localUsageReports)
    {
      v33 = [(STPersistUsageOperation *)self _fetchOrCreateUsageForUser:userCopy device:deviceCopy inManagedObjectContext:contextCopy error:error];
      if (!v33 || (v34 = v33, LOBYTE(v49) = shareWebUsage, v35 = [(STPersistUsageOperation *)self _persistUsageReports:localUsageReports usage:v33 aggregateUsage:0 reportStartDate:v57 durationInMinutes:partitionDurationInMinutes calendar:v58 shareWebUsage:v49 inManagedObjectContext:contextCopy error:error], v34, !v35))
      {
        LOBYTE(v38) = 0;
        goto LABEL_42;
      }
    }

    aggregateUsageReports = [v54 aggregateUsageReports];
    localUserDeviceState2 = [userCopy localUserDeviceState];

    if (localUserDeviceState2)
    {
      if (([userCopy syncingEnabled] & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (![aggregateUsageReports count])
    {
      goto LABEL_32;
    }

    v43 = [(STPersistUsageOperation *)self _fetchOrCreateUsageForUser:userCopy device:0 inManagedObjectContext:v59 error:error];
    if (!v43)
    {
      LOBYTE(v38) = 0;
      goto LABEL_41;
    }

    v44 = v43;
    LOBYTE(v49) = shareWebUsage;
    v38 = [(STPersistUsageOperation *)self _persistUsageReports:aggregateUsageReports usage:v43 aggregateUsage:1 reportStartDate:v57 durationInMinutes:partitionDurationInMinutes calendar:v58 shareWebUsage:v49 inManagedObjectContext:v59 error:error];

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

  fetchUsageOperation2 = [(STPersistUsageOperation *)self fetchUsageOperation];
  error = [fetchUsageOperation2 error];
  v41 = error;
  if (error)
  {
    v42 = error;
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

  if (error)
  {
    v47 = v45;
    LOBYTE(v38) = 0;
    *error = v45;
  }

  else
  {
    LOBYTE(v38) = 0;
  }

LABEL_45:

  return v38;
}

- (id)_ensureUsageExistForUser:(id)user forCoreDuetIdentifiers:(id)identifiers inManagedObjectContext:(id)context error:(id *)error
{
  userCopy = user;
  identifiersCopy = identifiers;
  contextCopy = context;
  v12 = +[STUserDeviceState fetchRequest];
  v55 = userCopy;
  identifiersCopy = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K IN %@)", @"user", userCopy, @"coreDuetIdentifier", identifiersCopy];
  [v12 setPredicate:identifiersCopy];

  v72 = @"device";
  v14 = [NSArray arrayWithObjects:&v72 count:1];
  [v12 setRelationshipKeyPathsForPrefetching:v14];

  v15 = [v12 execute:error];
  if (v15)
  {
    selfCopy = self;
    v50 = identifiersCopy;
    obj = error;
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
          device = [v25 device];
          coreDuetIdentifier = [v25 coreDuetIdentifier];
          [v17 setObject:coreDuetIdentifier forKey:device];
          [v18 setObject:device forKeyedSubscript:coreDuetIdentifier];
          [v56 addObject:device];
          [v19 addObject:coreDuetIdentifier];
        }

        v22 = [v20 countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v22);
    }

    v28 = [(STPersistUsageOperation *)selfCopy _usagesForUser:v55 devices:v56 error:obj];
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
            device2 = [v34 device];
            v36 = [v17 objectForKey:device2];

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
            v42 = [[STUsage alloc] initWithContext:contextCopy];
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
    identifiersCopy = v50;
    v15 = v48;
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

- (id)_fetchOrCreateUsageForUser:(id)user device:(id)device inManagedObjectContext:(id)context error:(id *)error
{
  userCopy = user;
  deviceCopy = device;
  contextCopy = context;
  if (!deviceCopy)
  {
    v14 = [(STPersistUsageOperation *)self _usagesForUser:userCopy devices:0 error:error];
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:
    firstObject = 0;
    goto LABEL_11;
  }

  v13 = [NSSet setWithObject:deviceCopy];
  v14 = [(STPersistUsageOperation *)self _usagesForUser:userCopy devices:v13 error:error];

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

  firstObject = [v14 firstObject];
  if (!firstObject)
  {
    firstObject = [[STUsage alloc] initWithContext:contextCopy];
    [firstObject setUser:userCopy];
    [firstObject setDevice:deviceCopy];
    v17 = +[NSDate date];
    [firstObject setLastUpdatedDate:v17];
  }

LABEL_11:

  return firstObject;
}

- (id)_usagesForUser:(id)user devices:(id)devices error:(id *)error
{
  devicesCopy = devices;
  user = [NSPredicate predicateWithFormat:@"%K = %@", @"user", user];
  if (devicesCopy)
  {
    [NSPredicate predicateWithFormat:@"%K IN %@", @"device", devicesCopy];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"%K == NULL", @"device", v16];
  }
  v9 = ;
  v10 = +[STUsage fetchRequest];
  v18[0] = user;
  v18[1] = v9;
  v11 = [NSArray arrayWithObjects:v18 count:2];
  v12 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];
  [v10 setPredicate:v12];

  v17[0] = @"device";
  v17[1] = @"blocks";
  v13 = [NSArray arrayWithObjects:v17 count:2];
  [v10 setRelationshipKeyPathsForPrefetching:v13];

  v14 = [v10 execute:error];

  return v14;
}

- (BOOL)_persistUsageReports:(id)reports usage:(id)usage aggregateUsage:(BOOL)aggregateUsage reportStartDate:(id)date durationInMinutes:(unint64_t)minutes calendar:(id)calendar shareWebUsage:(BOOL)webUsage inManagedObjectContext:(id)self0 error:(id *)self1
{
  aggregateUsageCopy = aggregateUsage;
  reportsCopy = reports;
  usageCopy = usage;
  dateCopy = date;
  calendarCopy = calendar;
  contextCopy = context;
  v15 = +[STLog usage];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [reportsCopy count];
    user = [usageCopy user];
    dsid = [user dsid];
    [usageCopy device];
    v20 = v19 = dateCopy;
    name = [v20 name];
    v22 = name;
    *buf = 134219010;
    v23 = @"NO";
    v140 = v16;
    v141 = 2112;
    if (aggregateUsageCopy)
    {
      v23 = @"YES";
    }

    v142 = dsid;
    v143 = 2112;
    v144 = name;
    v145 = 2112;
    v146 = v23;
    v147 = 2112;
    v148 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Persisting %lu reports from user: %@ - device: %@ - is aggregate: %@ - startDate: %@", buf, 0x34u);

    dateCopy = v19;
  }

  v24 = [(STPersistUsageOperation *)self _usageBlockByTrimmedStartDate:usageCopy reportStartDate:dateCopy durationInMinutes:minutes calendar:calendarCopy];
  if (!v24)
  {
    v28 = 0;
    goto LABEL_83;
  }

  referenceDate = [(STPersistUsageOperation *)self referenceDate];

  if (!referenceDate)
  {
    v26 = +[NSDate date];
    [(STPersistUsageOperation *)self setReferenceDate:v26];
  }

  if (self)
  {
    referenceDate2 = [(STPersistUsageOperation *)self referenceDate];
    if (referenceDate2)
    {
      [(STPersistUsageOperation *)self referenceDate];
    }

    else
    {
      +[NSDate date];
    }
    v29 = ;
    [usageCopy setLastUpdatedDate:v29];
  }

  else
  {
    referenceDate2 = +[NSDate date];
    [usageCopy setLastUpdatedDate:referenceDate2];
  }

  allKeys = [v24 allKeys];
  v102 = [NSMutableSet setWithArray:allKeys];

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = reportsCopy;
  v99 = [obj countByEnumeratingWithState:&v131 objects:v138 count:16];
  v93 = dateCopy;
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

      interval = [v33 interval];
      startDate = [interval startDate];
      v37 = [(STPersistUsageOperation *)self _truncateDate:startDate usingCalendar:calendarCopy];

      [v33 screenTime];
      v39 = v38;
      v40 = [v24 objectForKeyedSubscript:v37];
      if (aggregateUsageCopy)
      {
        user2 = [usageCopy user];
        localUserDeviceState = [user2 localUserDeviceState];
        if (localUserDeviceState)
        {
        }

        else
        {
          screenTimeInSeconds = [v40 screenTimeInSeconds];

          if (v39 < screenTimeInSeconds)
          {
            [v102 removeObject:v37];

            objc_autoreleasePoolPop(v34);
            continue;
          }
        }
      }

      v107 = interval;
      v108 = v31;
      v109 = i;
      v110 = v34;
      if (!v40)
      {
        v40 = [[STUsageBlock alloc] initWithContext:contextCopy];
        [v40 setUsage:usageCopy];
      }

      v106 = v37;
      [v40 setStartDate:v37];
      [v40 setDurationInMinutes:minutes];
      [v40 setScreenTimeInSeconds:v39];
      lastEventDate = [v33 lastEventDate];
      [v40 setLastEventDate:lastEventDate];

      firstPickup = [v33 firstPickup];
      [v40 setFirstPickupDate:firstPickup];

      longestSession = [v33 longestSession];
      startDate2 = [longestSession startDate];
      [v40 setLongestSessionStartDate:startDate2];

      v105 = longestSession;
      endDate = [longestSession endDate];
      [v40 setLongestSessionEndDate:endDate];

      [v40 setNumberOfPickupsWithoutApplicationUsage:{objc_msgSend(v33, "pickupsWithoutApplicationUsage")}];
      duration = [(STPersistUsageOperation *)self duration];
      categories = [v40 categories];
      v51 = [(STPersistUsageOperation *)self _usageCategoryByIdentifierForCategories:categories];

      v114 = v40;
      countedItems = [v40 countedItems];
      v111 = [(STPersistUsageOperation *)self _countedItemByBundleTrustIdentifiersForCountedItems:countedItems];

      allKeys2 = [v51 allKeys];
      v54 = [NSMutableSet setWithArray:allKeys2];

      categoryUsage = [v33 categoryUsage];
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v113 = categoryUsage;
      v56 = [categoryUsage countByEnumeratingWithState:&v127 objects:v137 count:16];
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
            categoryIdentifier = [v60 categoryIdentifier];
            v62 = [v51 objectForKeyedSubscript:categoryIdentifier];
            [v60 totalUsageTime];
            if (v63 <= 0.0)
            {
              if (v62)
              {
                [contextCopy deleteObject:v62];

                v62 = 0;
              }
            }

            else
            {
              v64 = v63;
              if (!v62)
              {
                v62 = [[STUsageCategory alloc] initWithContext:contextCopy];
                [v62 setIdentifier:categoryIdentifier];
                [v62 setBlock:v114];
              }

              [v62 setTotalTimeInSeconds:v64];
            }

            if (duration != 1440)
            {
              webUsage = [v60 webUsage];
              applicationUsage = [v60 applicationUsage];
              [(STPersistUsageOperation *)self _updateUsageBlock:v114 usageCategory:v62 countedItemsByBundleIdentifier:v111 webUsageReports:webUsage applicationUsageReports:applicationUsage shareWebUsage:webUsage inManagedObjectContext:contextCopy];
            }

            [v54 removeObject:categoryIdentifier];
          }

          v57 = [v113 countByEnumeratingWithState:&v127 objects:v137 count:16];
        }

        while (v57);
      }

      v125[0] = _NSConcreteStackBlock;
      v125[1] = 3221225472;
      v125[2] = sub_100056B84;
      v125[3] = &unk_1001A4908;
      v67 = contextCopy;
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
        [contextCopy deleteObject:v88];
      }

      v85 = [v83 countByEnumeratingWithState:&v116 objects:v135 count:16];
    }

    while (v85);
  }

  if (v94)
  {
    v89 = +[STLog usage];
    dateCopy = v93;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      lastUpdatedDate = [usageCopy lastUpdatedDate];
      *buf = 138412290;
      v140 = lastUpdatedDate;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Successfully persisted reports at: %@", buf, 0xCu);
    }
  }

  else
  {
    dateCopy = v93;
    if (error)
    {
      v91 = v75;
      *error = v75;
    }
  }

LABEL_83:
  return v28 & 1;
}

- (id)_usageBlockByTrimmedStartDate:(id)date reportStartDate:(id)startDate durationInMinutes:(unint64_t)minutes calendar:(id)calendar
{
  selfCopy = self;
  startDateCopy = startDate;
  calendarCopy = calendar;
  blocks = [date blocks];
  v11 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = blocks;
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
        if ([v17 durationInMinutes] == minutes)
        {
          startDate = [v17 startDate];
          v19 = [startDate compare:startDateCopy];

          if (v19 != -1)
          {
            startDate2 = [v17 startDate];
            v21 = [(STPersistUsageOperation *)selfCopy _truncateDate:startDate2 usingCalendar:calendarCopy];

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

- (id)_countedItemByBundleTrustIdentifiersForCountedItems:(id)items
{
  itemsCopy = items;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = itemsCopy;
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
        bundleIdentifier = [v10 bundleIdentifier];
        v13 = [v11 initWithIdentifier:bundleIdentifier usageTrusted:{objc_msgSend(v10, "usageTrusted")}];

        [v4 setObject:v10 forKeyedSubscript:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_usageCategoryByIdentifierForCategories:(id)categories
{
  categoriesCopy = categories;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = categoriesCopy;
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
        identifier = [v10 identifier];
        [v4 setObject:v10 forKeyedSubscript:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (void)_updateUsageBlock:(id)block usageCategory:(id)category countedItemsByBundleIdentifier:(id)identifier webUsageReports:(id)reports applicationUsageReports:(id)usageReports shareWebUsage:(BOOL)usage inManagedObjectContext:(id)context
{
  usageCopy = usage;
  blockCopy = block;
  categoryCopy = category;
  identifierCopy = identifier;
  reportsCopy = reports;
  obj = usageReports;
  contextCopy = context;
  v77 = objc_opt_new();
  v78 = objc_opt_new();
  v73 = objc_opt_new();
  v74 = objc_opt_new();
  v70 = objc_opt_new();
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v75 = categoryCopy;
  timedItems = [categoryCopy timedItems];
  v17 = [timedItems countByEnumeratingWithState:&v99 objects:v108 count:16];
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
          objc_enumerationMutation(timedItems);
        }

        v21 = *(*(&v99 + 1) + 8 * i);
        domain = [v21 domain];
        if (domain)
        {
          v23 = [[STUsageTrustIdentifier alloc] initWithIdentifier:domain usageTrusted:{objc_msgSend(v21, "usageTrusted")}];
          [v77 setObject:v21 forKeyedSubscript:v23];
          [v73 addObject:v23];
        }

        bundleIdentifier = [v21 bundleIdentifier];
        if (bundleIdentifier)
        {
          v25 = [[STUsageTrustIdentifier alloc] initWithIdentifier:bundleIdentifier usageTrusted:{objc_msgSend(v21, "usageTrusted")}];
          [v78 setObject:v21 forKeyedSubscript:v25];
          [v74 addObject:v25];
        }
      }

      v18 = [timedItems countByEnumeratingWithState:&v99 objects:v108 count:16];
    }

    while (v18);
  }

  if (v75 && usageCopy)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v26 = reportsCopy;
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
          domainIdentifier = [v31 domainIdentifier];
          v33 = [[STUsageTrustIdentifier alloc] initWithIdentifier:domainIdentifier usageTrusted:{objc_msgSend(v31, "webUsageTrusted")}];
          v34 = [v77 objectForKeyedSubscript:v33];
          if (!v34)
          {
            v34 = [[STUsageTimedItem alloc] initWithContext:contextCopy];
            [v34 setDomain:domainIdentifier];
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
        canonicalBundleIdentifier = [v40 canonicalBundleIdentifier];
        v42 = [[STUsageTrustIdentifier alloc] initWithIdentifier:canonicalBundleIdentifier usageTrusted:{objc_msgSend(v40, "applicationUsageTrusted")}];
        v43 = [v78 objectForKeyedSubscript:v42];
        [v40 totalUsageTime];
        if (v75 && (v45 = v44, v44 >= 1))
        {
          if (!v43)
          {
            v43 = [[STUsageTimedItem alloc] initWithContext:contextCopy];
            [v43 setBundleIdentifier:canonicalBundleIdentifier];
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

          [contextCopy deleteObject:v43];
        }

LABEL_37:
        v46 = [identifierCopy objectForKeyedSubscript:v42];
        totalUserNotifications = [v40 totalUserNotifications];
        totalPickups = [v40 totalPickups];
        if (totalUserNotifications <= 0 && totalPickups < 1)
        {
          if (!v46)
          {
            goto LABEL_47;
          }

          [contextCopy deleteObject:v46];
        }

        else
        {
          v50 = totalPickups;
          if (!v46)
          {
            v46 = [[STUsageCountedItem alloc] initWithContext:contextCopy];
            [v46 setBundleIdentifier:canonicalBundleIdentifier];
            [v46 setUsageTrusted:{objc_msgSend(v40, "applicationUsageTrusted")}];
            [v46 setBlock:blockCopy];
          }

          [v46 setNumberOfNotifications:totalUserNotifications];
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

        v56 = [v77 objectForKeyedSubscript:{*(*(&v87 + 1) + 8 * m), reportsCopy}];
        [contextCopy deleteObject:v56];
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

        v62 = [v78 objectForKeyedSubscript:{*(*(&v83 + 1) + 8 * n), reportsCopy}];
        [contextCopy deleteObject:v62];
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

        [identifierCopy setObject:0 forKeyedSubscript:{*(*(&v79 + 1) + 8 * ii), reportsCopy}];
      }

      v65 = [v63 countByEnumeratingWithState:&v79 objects:v103 count:16];
    }

    while (v65);
  }
}

- (void)_purgeExpiredAggregateUsageForUser:(id)user managedObjectContext:(id)context
{
  userCopy = user;
  contextCopy = context;
  localUserDeviceState = [userCopy localUserDeviceState];

  if (localUserDeviceState)
  {
    if (([userCopy syncingEnabled] & 1) == 0)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      usages = [userCopy usages];
      v9 = [usages countByEnumeratingWithState:&v35 objects:v40 count:16];
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
              objc_enumerationMutation(usages);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            device = [v13 device];

            if (!device)
            {
              [contextCopy deleteObject:v13];
              goto LABEL_34;
            }
          }

          v10 = [usages countByEnumeratingWithState:&v35 objects:v40 count:16];
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
  usages2 = [userCopy usages];
  usages = [usages2 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (!usages)
  {

    v17 = 0;
    v16 = 0;
    goto LABEL_33;
  }

  v28 = contextCopy;
  v29 = userCopy;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *v32;
  obj = usages2;
  do
  {
    for (j = 0; j != usages; j = j + 1)
    {
      if (*v32 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v31 + 1) + 8 * j);
      lastUpdatedDate = [v21 lastUpdatedDate];
      device2 = [v21 device];

      if (device2)
      {
        if (v17)
        {
          v24 = v17;
          v25 = lastUpdatedDate;
          if ([lastUpdatedDate compare:v17] != -1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v24 = 0;
          v25 = lastUpdatedDate;
        }
      }

      else
      {
        v26 = v21;

        v24 = v16;
        v16 = lastUpdatedDate;
        v25 = v17;
        v18 = v26;
      }

      v27 = lastUpdatedDate;

      v17 = v25;
LABEL_24:
    }

    usages = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  }

  while (usages);

  usages = v18;
  if (v18)
  {
    contextCopy = v28;
    userCopy = v29;
    if (v17 && [v16 compare:v17] == -1)
    {
      [v28 deleteObject:v18];
    }
  }

  else
  {
    contextCopy = v28;
    userCopy = v29;
  }

LABEL_33:

LABEL_34:
LABEL_35:
}

@end