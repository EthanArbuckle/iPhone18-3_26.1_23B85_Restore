@interface OsLogStream
+ (BOOL)putOsLogStreamToFile:(id)a3 process:(id)a4 imagePath:(id)a5 history:(double)a6;
@end

@implementation OsLogStream

+ (BOOL)putOsLogStreamToFile:(id)a3 process:(id)a4 imagePath:(id)a5 history:(double)a6
{
  v10 = objc_autoreleasePoolPush();
  v43 = 0;
  v44 = &v43;
  v45 = 0x3052000000;
  v46 = sub_100002E0C;
  v47 = sub_100002E1C;
  v48 = 0;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100002E28;
  v42[3] = &unk_100020680;
  v42[4] = &v43;
  [+[OSLogEventStore localStore](OSLogEventStore "localStore")];
  if (!v44[5])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to prepare oslog stream", buf, 2u);
    }

    v27 = 0;
    goto LABEL_29;
  }

  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:a3 attributes:0, 0];
  v11 = [NSFileHandle fileHandleForWritingAtPath:a3];
  if (!v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v30 = [a3 UTF8String];
      *buf = 136315138;
      v52 = *&v30;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create file: %s", buf, 0xCu);
    }

    goto LABEL_36;
  }

  v12 = dispatch_group_create();
  if (!v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to get group", buf, 2u);
    }

    [(NSFileHandle *)v11 closeFile];

LABEL_36:
    v28 = 0;
    v27 = 0;
    goto LABEL_37;
  }

  v13 = v12;
  [v44[5] setFlags:21];
  v31 = v10;
  v14 = +[NSMutableArray array];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [a4 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v15)
  {
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(a4);
        }

        [v14 addObject:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"process == %@", *(*(&v38 + 1) + 8 * i))}];
      }

      v15 = [a4 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v15);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = [a5 countByEnumeratingWithState:&v34 objects:v49 count:16];
  if (v18)
  {
    v19 = *v35;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(a5);
        }

        [v14 addObject:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"senderImagePath CONTAINS[cd] %@", *(*(&v34 + 1) + 8 * j))}];
      }

      v18 = [a5 countByEnumeratingWithState:&v34 objects:v49 count:16];
    }

    while (v18);
  }

  if ([v14 count])
  {
    v21 = [NSCompoundPredicate orPredicateWithSubpredicates:v14];
    [v44[5] setFilterPredicate:v21];
  }

  v22 = v44[5];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100002F04;
  v33[3] = &unk_1000206A8;
  v33[4] = v11;
  [v22 setEventHandler:v33];
  v23 = v44[5];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100003088;
  v32[3] = &unk_1000206D0;
  v32[4] = v13;
  [v23 setInvalidationHandler:v32];
  v10 = v31;
  v24 = [[NSDate dateWithTimeIntervalSinceReferenceDate:?], "dateByAddingTimeInterval:", 0.0 - a6];
  dispatch_group_enter(v13);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v52 = a6;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Getting oslog stream: history = %f", buf, 0xCu);
  }

  [v44[5] activateStreamFromDate:v24];
  v25 = dispatch_time(0, 180000000000);
  v26 = dispatch_group_wait(v13, v25);
  v27 = v26 == 0;
  if (v26)
  {
    [v44[5] invalidate];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Timeout on getting oslog stream", buf, 2u);
    }
  }

  dispatch_release(v13);
  [(NSFileHandle *)v11 closeFile];

LABEL_29:
  v28 = 1;
LABEL_37:
  _Block_object_dispose(&v43, 8);
  objc_autoreleasePoolPop(v10);
  return v28 & v27;
}

@end