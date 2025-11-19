@interface RMFileConduit
+ (id)_generateEnrollmentToken;
- (BOOL)_prepareDirectoryWithURL:(id)a3 error:(id *)a4;
- (BOOL)_syncDeclarationsWithManagementSource:(id)a3 error:(id *)a4;
- (BOOL)_syncWithManagementSource:(id)a3 onlyIfNeeded:(BOOL)a4 error:(id *)a5;
- (BOOL)isSyncAllowed;
- (RMFileConduit)initWithManagementSourceObjectID:(id)a3 inContext:(id)a4;
- (RMFileConduitDelegate)delegate;
- (id)statusItemsToImplicitlySubscribeTo;
- (id)statusItemsToSendDuringEnrollment;
- (signed)errorState;
- (void)enrollWithStatusItems:(id)a3 completionHandler:(id)a4;
- (void)sendStatusData:(id)a3 completionHandler:(id)a4;
- (void)startWithCompletionHandler:(id)a3;
- (void)syncOnlyIfNeeded:(BOOL)a3 completionHandler:(id)a4;
- (void)unenrollWithCompletionHandler:(id)a3;
@end

@implementation RMFileConduit

- (RMFileConduit)initWithManagementSourceObjectID:(id)a3 inContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = RMFileConduit;
  v9 = [(RMFileConduit *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_managementSourceObjectID, a3);
    objc_storeStrong(&v10->_context, a4);
    v11 = objc_opt_new();
    statusWritingLock = v10->_statusWritingLock;
    v10->_statusWritingLock = v11;
  }

  return v10;
}

- (void)startWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "FileConduit: starting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  [(RMFileConduit *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F6D0;
  v6 = v7[3] = &unk_1000D1270;
  v8 = v6;
  v9 = self;
  [v6 performBlockAndWait:v7];
  v4[2](v4);

  os_activity_scope_leave(&state);
}

- (signed)errorState
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [(RMFileConduit *)self context];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002F8A8;
  v3 = v5[3] = &unk_1000D0E38;
  v6 = v3;
  v7 = v2;
  v8 = &v9;
  [v3 performBlockAndWait:v5];
  LOWORD(v2) = *(v10 + 12);

  _Block_object_dispose(&v9, 8);
  return v2;
}

- (id)statusItemsToImplicitlySubscribeTo
{
  v5[0] = RMModelStatusItemManagementClientCapabilities;
  v5[1] = RMModelStatusItemManagementDeclarations;
  v5[2] = RMModelStatusItemManagementPushToken;
  v2 = [NSArray arrayWithObjects:v5 count:3];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (id)statusItemsToSendDuringEnrollment
{
  v3 = [NSMutableArray arrayWithCapacity:2];
  [v3 addObject:RMModelStatusItemManagementClientCapabilities];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  [(RMFileConduit *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002FB84;
  v4 = v7[3] = &unk_1000D0E38;
  v8 = v4;
  v9 = self;
  v10 = &v11;
  [v4 performBlockAndWait:v7];
  if (*(v12 + 24) == 1)
  {
    [v3 addObject:RMModelStatusItemDeviceSerialNumber];
    [v3 addObject:RMModelStatusItemDeviceUDID];
  }

  v5 = [NSSet setWithArray:v3];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (void)enrollWithStatusItems:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "FileConduit: enrolling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10002FDB0;
  v18 = sub_10002FDC0;
  v19 = 0;
  [(RMFileConduit *)self context];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FDC8;
  v9 = v10[3] = &unk_1000D0E38;
  v11 = v9;
  v12 = self;
  v13 = &v14;
  [v9 performBlockAndWait:v10];
  v7[2](v7, v15[5]);

  _Block_object_dispose(&v14, 8);
  os_activity_scope_leave(&state);
}

- (BOOL)_prepareDirectoryWithURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v26 = 0;
  v6 = [v5 getResourceValue:&v26 forKey:NSURLIsDirectoryKey error:a4];
  v7 = v26;
  v8 = v7;
  if (v6)
  {
    if ([v7 BOOLValue])
    {
      v30[0] = @"Declarations";
      v30[1] = @"Subscriptions";
      v30[2] = @"Status";
      v9 = [NSArray arrayWithObjects:v30 count:3];
      v10 = +[NSFileManager defaultManager];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [v5 URLByAppendingPathComponent:*(*(&v22 + 1) + 8 * i) isDirectory:{1, v22}];
            v17 = [v10 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:a4];

            if (!v17)
            {
              v18 = 0;
              goto LABEL_17;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v18 = 1;
LABEL_17:

      goto LABEL_18;
    }

    if (a4)
    {
      v27 = NSURLErrorKey;
      v28 = v5;
      v19 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v11 = [NSError errorWithDomain:NSCocoaErrorDomain code:260 userInfo:v19];

      if (v11)
      {
        v20 = v11;
        v18 = 0;
        *a4 = v11;
      }

      else
      {
        v18 = 0;
      }

LABEL_18:

      goto LABEL_19;
    }
  }

  v18 = 0;
LABEL_19:

  return v18;
}

+ (id)_generateEnrollmentToken
{
  v2 = objc_opt_new();
  v3 = [v2 UUIDString];

  return v3;
}

- (void)unenrollWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "FileConduit: unenrolling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10002FDB0;
  v15 = sub_10002FDC0;
  v16 = 0;
  [(RMFileConduit *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000304EC;
  v6 = v7[3] = &unk_1000D0E38;
  v8 = v6;
  v9 = self;
  v10 = &v11;
  [v6 performBlockAndWait:v7];
  v4[2](v4, 0, v12[5]);

  _Block_object_dispose(&v11, 8);
  os_activity_scope_leave(&state);
}

- (BOOL)isSyncAllowed
{
  v2 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  [(RMFileConduit *)self context];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000307AC;
  v3 = v5[3] = &unk_1000D0E38;
  v6 = v3;
  v7 = v2;
  v8 = &v9;
  [v3 performBlockAndWait:v5];
  LOBYTE(v2) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v2;
}

- (void)syncOnlyIfNeeded:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = _os_activity_create(&_mh_execute_header, "FileConduit: syncing only if needed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = +[RMLog fileConduit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100032928(a3, v8);
  }

  [(RMFileConduit *)self setMadeChangesDuringSync:0];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10002FDB0;
  v23 = sub_10002FDC0;
  v24 = 0;
  [(RMFileConduit *)self context];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100030ABC;
  v9 = v14 = &unk_1000D1CD8;
  v15 = v9;
  v16 = self;
  v18 = a3;
  v17 = &v19;
  [v9 performBlockAndWait:&v11];
  v10 = [(RMFileConduit *)self madeChangesDuringSync:v11];
  v6[2](v6, v10, v20[5]);

  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);
}

- (BOOL)_syncWithManagementSource:(id)a3 onlyIfNeeded:(BOOL)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  v16 = 0;
  v9 = [(RMFileConduit *)self _syncDeclarationsWithManagementSource:v7 error:&v16];

  v10 = v16;
  v11 = v10;
  if ((v9 & 1) == 0 && v10)
  {
    [v8 addObject:v10];
  }

  v12 = [v8 count];
  v13 = v12;
  if (a5 && v12)
  {
    v14 = [RMErrorUtilities createMultipleErrorOrReturnTheSingleErrorWithErrors:v8];
    if (v14)
    {
      v14 = v14;
      *a5 = v14;
    }
  }

  return v13 == 0;
}

- (BOOL)_syncDeclarationsWithManagementSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v94 = self;
  v92 = [(RMFileConduit *)self context];
  v6 = v5;
  v7 = [v6 assets];
  v8 = [v6 activations];
  v9 = [v6 configurations];
  v93 = v6;
  [v6 management];
  v103 = v107 = v9;
  v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count] + objc_msgSend(v8, "count") + objc_msgSend(v103, "count") + objc_msgSend(v9, "count"));
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v118 objects:buf count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v119;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v119 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v118 + 1) + 8 * i);
        v16 = [v15 identifier];
        v17 = [v15 serverToken];
        v18 = [NSString stringWithFormat:@"%@-%@", v16, v17];
        [v10 setObject:v15 forKeyedSubscript:v18];
      }

      v12 = [obj countByEnumeratingWithState:&v118 objects:buf count:16];
    }

    while (v12);
  }

  v19 = v10;
  v20 = v8;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v118 objects:buf count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v119;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v119 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v118 + 1) + 8 * j);
        v26 = [v25 identifier];
        v27 = [v25 serverToken];
        v28 = [NSString stringWithFormat:@"%@-%@", v26, v27];
        [v19 setObject:v25 forKeyedSubscript:v28];
      }

      v22 = [v20 countByEnumeratingWithState:&v118 objects:buf count:16];
    }

    while (v22);
  }

  v101 = v20;

  v29 = v19;
  v30 = v107;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v31 = [v30 countByEnumeratingWithState:&v118 objects:buf count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v119;
    do
    {
      for (k = 0; k != v32; k = k + 1)
      {
        if (*v119 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v118 + 1) + 8 * k);
        v36 = [v35 identifier];
        v37 = [v35 serverToken];
        v38 = [NSString stringWithFormat:@"%@-%@", v36, v37];
        [v29 setObject:v35 forKeyedSubscript:v38];
      }

      v32 = [v30 countByEnumeratingWithState:&v118 objects:buf count:16];
    }

    while (v32);
  }

  v108 = v29;
  v39 = v103;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v40 = [v39 countByEnumeratingWithState:&v118 objects:buf count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v119;
    do
    {
      for (m = 0; m != v41; m = m + 1)
      {
        if (*v119 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v118 + 1) + 8 * m);
        v45 = [v44 identifier];
        v46 = [v44 serverToken];
        v47 = [NSString stringWithFormat:@"%@-%@", v45, v46];
        [v108 setObject:v44 forKeyedSubscript:v47];
      }

      v41 = [v39 countByEnumeratingWithState:&v118 objects:buf count:16];
    }

    while (v41);
  }

  v48 = v108;
  v49 = objc_opt_new();
  v50 = [v93 bootstrapURI];
  v51 = [v50 URLByAppendingPathComponent:@"Declarations" isDirectory:1];

  v52 = +[NSFileManager defaultManager];
  v123 = NSURLNameKey;
  v53 = [NSArray arrayWithObjects:&v123 count:1];
  v91 = v51;
  v54 = [v52 enumeratorAtURL:v51 includingPropertiesForKeys:v53 options:5 errorHandler:0];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v100 = v54;
  obja = [v100 countByEnumeratingWithState:&v114 objects:v122 count:16];
  v55 = 0;
  if (obja)
  {
    v56 = &DeviceIdentityIssueClientCertificateWithCompletion_ptr;
    v104 = *v115;
    v98 = v49;
    do
    {
      v57 = 0;
      do
      {
        if (*v115 != v104)
        {
          objc_enumerationMutation(v100);
        }

        v58 = *(*(&v114 + 1) + 8 * v57);
        v59 = v56[413];
        v113 = v55;
        v60 = [v59 dataWithContentsOfURL:v58 options:0 error:&v113];
        v61 = v113;

        if (v60)
        {
          v112 = v61;
          v62 = [RMModelDeclarationBase loadData:v60 serializationType:1 error:&v112];
          v55 = v112;

          if (!v62)
          {
            v63 = +[RMLog fileConduit];
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v125 = v58;
              v126 = 2114;
              v127 = v55;
              _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Could not parse declaration from file data: %{public}@ %{public}@", buf, 0x16u);
            }

            goto LABEL_59;
          }

          v63 = [v58 lastPathComponent];
          v64 = [v62 declarationIdentifier];
          v102 = [v49 objectForKeyedSubscript:v64];
          if (v102)
          {
            v65 = +[RMLog fileConduit];
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v125 = v63;
              v126 = 2114;
              v66 = v102;
              v127 = v102;
              _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Ignoring declaration file %{public}@ because identifier matches file %{public}@", buf, 0x16u);
            }

            else
            {
              v66 = v102;
            }

LABEL_58:

            v56 = &DeviceIdentityIssueClientCertificateWithCompletion_ptr;
LABEL_59:

            goto LABEL_60;
          }

          [v49 setObject:v63 forKeyedSubscript:v64];
          v99 = [v62 declarationServerToken];
          v67 = [NSString stringWithFormat:@"%@-%@", v64, v99];
          [v48 objectForKeyedSubscript:v67];
          v69 = v68 = v48;

          if (v69)
          {
            [v68 removeObjectForKey:v67];
            v48 = v68;
            v49 = v98;
            v66 = 0;
LABEL_57:

            v65 = v99;
            goto LABEL_58;
          }

          v97 = v67;
          [(RMFileConduit *)v94 setMadeChangesDuringSync:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v71 = off_1000D0438;
          if (isKindOfClass)
          {
            goto LABEL_50;
          }

          objc_opt_class();
          v72 = objc_opt_isKindOfClass();
          v71 = off_1000D0430;
          if (v72 & 1) != 0 || (objc_opt_class(), v73 = objc_opt_isKindOfClass(), v71 = off_1000D0440, (v73) || (objc_opt_class(), v74 = objc_opt_isKindOfClass(), v71 = &off_1000D0478, (v74))
          {
LABEL_50:
            v75 = [objc_alloc(*v71) initWithContext:v92];
            [v75 setManagementSource:v93];
            [v75 setIdentifier:v64];
            [v75 setServerToken:v99];
            v111 = v55;
            v96 = v75;
            v76 = [v75 loadPayload:v62 error:&v111];
            v77 = v111;

            v49 = v98;
            if (v76)
            {
              v55 = v77;
              v48 = v108;
              v66 = 0;
LABEL_56:

              v67 = v97;
              goto LABEL_57;
            }

            v78 = +[RMLog fileConduit];
            log = v78;
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v125 = v58;
              v126 = 2114;
              v127 = v77;
              _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Unable to load payload for declaration %{public}@: %{public}@", buf, 0x16u);
            }

            v55 = v77;
          }

          else
          {
            log = +[RMLog fileConduit];
            v49 = v98;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v79 = objc_opt_class();
              v80 = NSStringFromClass(v79);
              *buf = 138543618;
              v125 = v80;
              v126 = 2114;
              v127 = v58;
              _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid type %{public}@ for declaration: %{public}@", buf, 0x16u);
            }

            v96 = 0;
          }

          v48 = v108;
          v66 = 0;

          goto LABEL_56;
        }

        v62 = +[RMLog fileConduit];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v125 = v58;
          v126 = 2114;
          v127 = v61;
          _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Could not read declaration file data: %{public}@ %{public}@", buf, 0x16u);
        }

        v55 = v61;
LABEL_60:

        v57 = v57 + 1;
      }

      while (obja != v57);
      v81 = [v100 countByEnumeratingWithState:&v114 objects:v122 count:16];
      obja = v81;
    }

    while (v81);
  }

  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = sub_100031984;
  v110[3] = &unk_1000D1D00;
  v110[4] = v94;
  [v48 enumerateKeysAndObjectsUsingBlock:v110];
  if (![v92 hasChanges])
  {
    v83 = 0;
LABEL_75:
    v86 = +[RMLog fileConduit];
    v88 = 1;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "Successfully synced data", buf, 2u);
    }

    goto LABEL_77;
  }

  v109 = 0;
  v82 = [v92 save:&v109];
  v83 = v109;
  if (v82)
  {
    goto LABEL_75;
  }

  v84 = +[RMLog fileConduit];
  if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
  {
    sub_100032A64();
  }

  [(RMFileConduit *)v94 setMadeChangesDuringSync:0];
  [v92 rollback];
  if (!a4)
  {
    v88 = 0;
    goto LABEL_78;
  }

  v85 = +[RMErrorUtilities createInternalError];
  v86 = v85;
  if (v85)
  {
    v87 = v85;
    v88 = 0;
    *a4 = v86;
  }

  else
  {
    v88 = 0;
  }

LABEL_77:

LABEL_78:
  return v88;
}

- (void)sendStatusData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_10002FDB0;
  v65 = sub_10002FDC0;
  v66 = 0;
  [(RMFileConduit *)self context];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100032314;
  v8 = v57[3] = &unk_1000D0E38;
  v58 = v8;
  v59 = self;
  v60 = &v61;
  [v8 performBlockAndWait:v57];
  v56 = 0;
  v9 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v56];
  v10 = v56;
  if (v9)
  {
    v11 = [RMDateFormat stringLocalTimeZoneFractionalSecondsWithDate:0];
    v53 = [v11 stringByAppendingPathExtension:@"json"];

    v52 = [v62[5] URLByAppendingPathComponent:v53 isDirectory:0];
    v55 = v10;
    LOBYTE(v11) = [RMJSONUtilities serializeJSONDictionary:v9 fileURL:v52 error:&v55];
    v51 = v55;

    if ((v11 & 1) == 0)
    {
      v21 = +[RMLog fileConduit];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100032B4C();
      }

      v7[2](v7, v51);
      goto LABEL_53;
    }

    v50 = [v9 objectForKeyedSubscript:@"StatusItems"];
    if (!v50)
    {
      v22 = +[RMLog fileConduit];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100032CEC();
      }

      v23 = +[RMErrorUtilities createInternalError];
      v7[2](v7, v23);

      goto LABEL_52;
    }

    obj = self->_statusWritingLock;
    objc_sync_enter(obj);
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000323BC;
    v54[3] = &unk_1000D1D28;
    v54[4] = &v61;
    [v50 enumerateKeysAndObjectsUsingBlock:v54];
    v12 = v62[5];
    v47 = [v9 objectForKeyedSubscript:@"FullReport"];
    v44 = [v47 BOOLValue];
    v13 = v12;
    v46 = v50;
    v48 = v13;
    v14 = [v48 URLByAppendingPathComponent:@"OverallStatus.json" isDirectory:0];
    v67[0] = 0;
    v15 = [NSData dataWithContentsOfURL:v14 options:0 error:v67];
    v16 = v67[0];
    v17 = v16;
    if (v15)
    {
      *buf = v16;
      oslog = [NSJSONSerialization JSONObjectWithData:v15 options:1 error:buf];
      v18 = *buf;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_27;
      }

      v19 = +[RMLog fileConduit];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100032BB4();
      }
    }

    else
    {
      v24 = [v16 domain];
      if ([v24 isEqualToString:NSCocoaErrorDomain])
      {
        v25 = [v17 code] == 260;

        if (v25)
        {
          v18 = v17;
LABEL_26:
          oslog = objc_opt_new();
LABEL_27:

          if (v44)
          {
            v26 = objc_opt_new();
LABEL_44:
            v67[0] = _NSConcreteStackBlock;
            v67[1] = 3221225472;
            v67[2] = sub_1000325F4;
            v67[3] = &unk_1000D0F08;
            v35 = v26;
            v68 = v35;
            [v46 enumerateKeysAndObjectsUsingBlock:v67];
            if (([v35 isEqualToDictionary:oslog] & 1) == 0)
            {
              v36 = v48;
              v37 = v35;
              v38 = [v36 URLByAppendingPathComponent:@"OverallStatus.json" isDirectory:0];
              v69 = 0;
              v39 = [RMJSONUtilities serializeJSONDictionary:v37 fileURL:v38 error:&v69];
              v40 = v69;
              if (v39)
              {
                v41 = +[RMLog fileConduit];
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543362;
                  *&buf[4] = v38;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Updated overall status %{public}@", buf, 0xCu);
                }
              }

              else
              {
                v41 = +[RMLog fileConduit];
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  sub_100032C84();
                }
              }
            }

            objc_sync_exit(obj);
            v7[2](v7, 0);
LABEL_52:

LABEL_53:
            v10 = v51;
            goto LABEL_54;
          }

          v42 = v48;
          v45 = [v42 URLByAppendingPathComponent:@"OverallStatus.json" isDirectory:0];
          v67[0] = 0;
          v27 = [NSData dataWithContentsOfURL:v45 options:0 error:v67];
          v28 = v67[0];
          v29 = v28;
          if (v27)
          {
            *buf = v28;
            v30 = [NSJSONSerialization JSONObjectWithData:v27 options:1 error:buf];
            v31 = *buf;

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
LABEL_43:

              v26 = [v30 mutableCopy];
              goto LABEL_44;
            }

            v32 = +[RMLog fileConduit];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              sub_100032BB4();
            }
          }

          else
          {
            v33 = [v28 domain];
            if ([v33 isEqualToString:NSCocoaErrorDomain])
            {
              v34 = [v29 code] == 260;

              if (v34)
              {
                v31 = v29;
LABEL_42:
                v30 = objc_opt_new();
                goto LABEL_43;
              }
            }

            else
            {
            }

            v30 = +[RMLog fileConduit];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_100032C1C();
            }

            v31 = v29;
          }

          goto LABEL_42;
        }
      }

      else
      {
      }

      oslog = +[RMLog fileConduit];
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100032C1C();
      }

      v18 = v17;
    }

    goto LABEL_26;
  }

  v20 = +[RMLog fileConduit];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100032D54();
  }

  v7[2](v7, v10);
LABEL_54:

  _Block_object_dispose(&v61, 8);
}

- (RMFileConduitDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end