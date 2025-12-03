@interface STCoreDuetUsageQuery
+ (id)_streamsPredicate;
+ (id)earliestUsageEventStartDateCreatedSince:(id)since whereStartDateIsOnOrAfter:(id)after andEndDateOnOrBefore:(id)before;
@end

@implementation STCoreDuetUsageQuery

+ (id)_streamsPredicate
{
  v2 = +[_DKSystemEventStreams appUsageStream];
  v37[0] = v2;
  v3 = +[_DKSystemEventStreams appWebUsageStream];
  v37[1] = v3;
  v4 = +[_DKSystemEventStreams notificationUsageStream];
  v37[2] = v4;
  v5 = +[_DKSystemEventStreams displayIsBacklit];
  v37[3] = v5;
  v6 = [NSArray arrayWithObjects:v37 count:4];

  v29 = +[_DKTombstoneMetadataKey eventStreamName];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        name = [v14 name];
        v16 = [_DKQuery predicateForObjectsWithMetadataKey:v29 andStringValue:name];
        [v7 addObject:v16];

        name2 = [v14 name];
        v18 = [_DKQuery predicateForEventsWithStreamName:name2];
        [v8 addObject:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v11);
  }

  v19 = +[_DKSystemEventStreams tombstoneStream];
  name3 = [v19 name];
  v21 = [_DKQuery predicateForEventsWithStreamName:name3];
  v35[0] = v21;
  v22 = [NSCompoundPredicate orPredicateWithSubpredicates:v7];
  v35[1] = v22;
  v23 = [NSArray arrayWithObjects:v35 count:2];
  v24 = [NSCompoundPredicate andPredicateWithSubpredicates:v23];

  v25 = [NSCompoundPredicate orPredicateWithSubpredicates:v8];
  v34[0] = v24;
  v34[1] = v25;
  v26 = [NSArray arrayWithObjects:v34 count:2];
  v27 = [NSCompoundPredicate orPredicateWithSubpredicates:v26];

  return v27;
}

+ (id)earliestUsageEventStartDateCreatedSince:(id)since whereStartDateIsOnOrAfter:(id)after andEndDateOnOrBefore:(id)before
{
  sinceCopy = since;
  afterCopy = after;
  beforeCopy = before;
  _streamsPredicate = [self _streamsPredicate];
  v12 = [_DKQuery predicateForEventsWithLocalCreationInDateRangeFrom:sinceCopy toBefore:beforeCopy];
  [_DKQuery predicateForEventsIntersectingDateRangeFrom:afterCopy to:beforeCopy];
  v30 = v12;
  v31 = _streamsPredicate;
  v42[0] = _streamsPredicate;
  v29 = v42[1] = v12;
  v42[2] = v29;
  v13 = [NSArray arrayWithObjects:v42 count:3];
  v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v13];

  v15 = [_DKQuery startDateSortDescriptorAscending:1];
  v41 = v15;
  v16 = [NSArray arrayWithObjects:&v41 count:1];
  v17 = [_DKEventQuery eventQueryWithPredicate:v14 eventStreams:0 offset:0 limit:1 sortDescriptors:v16];

  v18 = +[_DKEventQuery allDevices];
  [v17 setDeviceIDs:v18];

  v19 = +[STLog usage];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v34 = sinceCopy;
    v35 = 2114;
    v36 = afterCopy;
    v37 = 2114;
    v38 = beforeCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Checking if any new events to Core Duet created after %{public}@ between %{public}@ and %{public}@", buf, 0x20u);
  }

  v20 = sinceCopy;

  v21 = +[_DKKnowledgeStore userKnowledgeStore];
  v32 = 0;
  v22 = [v21 executeQuery:v17 error:&v32];
  v23 = v32;

  if (!v22)
  {
    v24 = +[STLog usage];
    v25 = v24;
    if (v23)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v34 = v20;
        v35 = 2114;
        v36 = afterCopy;
        v37 = 2114;
        v38 = beforeCopy;
        v39 = 2114;
        v40 = v23;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "There was an error querying Core Duet for events created after %{public}@ between %{public}@ and %{public}@: %{public}@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Core Duet returned no new events", buf, 2u);
    }
  }

  firstObject = [v22 firstObject];
  startDate = [firstObject startDate];

  return startDate;
}

@end