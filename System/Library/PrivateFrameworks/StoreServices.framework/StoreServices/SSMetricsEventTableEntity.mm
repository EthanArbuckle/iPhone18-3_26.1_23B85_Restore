@interface SSMetricsEventTableEntity
- (id)reportingCanaryIdentifier;
- (id)reportingDictionary;
- (id)reportingJSON;
- (void)dealloc;
@end

@implementation SSMetricsEventTableEntity

- (void)dealloc
{
  reportingDictionary = self->_reportingDictionary;
  self->_reportingDictionary = 0;

  v4.receiver = self;
  v4.super_class = SSMetricsEventTableEntity;
  [(SSMetricsEventTableEntity *)&v4 dealloc];
}

- (id)reportingCanaryIdentifier
{
  reportingDictionary = [(SSMetricsEventTableEntity *)self reportingDictionary];
  v3 = [reportingDictionary objectForKey:@"canary"];

  return v3;
}

- (id)reportingDictionary
{
  v36[2] = *MEMORY[0x1E69E9840];
  reportingDictionary = self->_reportingDictionary;
  if (reportingDictionary)
  {
    v3 = reportingDictionary;
    goto LABEL_27;
  }

  database = [(SSSQLiteEntity *)self database];
  if (database)
  {
    v6 = database;
    persistentID = [(SSSQLiteEntity *)self persistentID];

    if (persistentID)
    {
      v8 = objc_autoreleasePoolPush();
      v36[0] = @"eventBody";
      v36[1] = @"timestampReported";
      v34 = 0;
      v35 = 0;
      [(SSSQLiteEntity *)self getValues:&v34 forProperties:v36 count:2];
      if (![v35 intValue])
      {
        if (v34)
        {
          v22 = [MEMORY[0x1E696AE40] propertyListWithData:v34 options:2 format:0 error:0];
        }

        else
        {
          v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
        }

        persistentID = v22;
        goto LABEL_23;
      }

      v9 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = shouldLog | 2;
      }

      else
      {
        v11 = shouldLog;
      }

      oSLogObject = [v9 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v13 = objc_opt_class();
        v14 = v13;
        v28 = 138412802;
        v29 = v13;
        v30 = 2048;
        persistentID2 = [(SSSQLiteEntity *)self persistentID];
        v32 = 2112;
        v33 = v35;
        LODWORD(v27) = 32;
        v15 = _os_log_send_and_compose_impl();

        if (!v15)
        {
LABEL_17:

          persistentID = 0;
LABEL_23:
          for (i = 1; i != -1; --i)
          {
          }

          objc_autoreleasePoolPop(v8);
          goto LABEL_26;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v28, v27}];
        free(v15);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
      }

      goto LABEL_17;
    }
  }

  else
  {
    persistentID = 0;
  }

LABEL_26:
  v24 = self->_reportingDictionary;
  self->_reportingDictionary = persistentID;
  v25 = persistentID;

  v3 = self->_reportingDictionary;
LABEL_27:

  return v3;
}

- (id)reportingJSON
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  reportingDictionary = [(SSMetricsEventTableEntity *)self reportingDictionary];
  if (reportingDictionary)
  {
    v33 = 0;
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:reportingDictionary options:1 error:&v33];
    v6 = v33;
    if (v5)
    {
      goto LABEL_27;
    }

    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v34 = 138412802;
      v35 = v11;
      v36 = 2112;
      selfCopy = v6;
      v38 = 2112;
      v39 = reportingDictionary;
      v12 = v11;
      LODWORD(v32) = 32;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_14:

        goto LABEL_27;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v34, v32}];
      free(v13);
      SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_14;
  }

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [(SSMetricsEventTableEntity *)v6 shouldLog];
  if ([(SSMetricsEventTableEntity *)v6 shouldLogToDisk])
  {
    v21 = shouldLog2 | 2;
  }

  else
  {
    v21 = shouldLog2;
  }

  oSLogObject2 = [(SSMetricsEventTableEntity *)v6 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v21 &= 2u;
  }

  if (!v21)
  {
    goto LABEL_25;
  }

  v34 = 138412546;
  v35 = objc_opt_class();
  v36 = 2112;
  selfCopy = self;
  v23 = v35;
  LODWORD(v32) = 22;
  v24 = _os_log_send_and_compose_impl();

  if (v24)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v34, v32}];
    free(v24);
    SSFileLog(v6, @"%@", v25, v26, v27, v28, v29, v30, oSLogObject2);
LABEL_25:
  }

  v5 = 0;
LABEL_27:

  objc_autoreleasePoolPop(v3);

  return v5;
}

@end