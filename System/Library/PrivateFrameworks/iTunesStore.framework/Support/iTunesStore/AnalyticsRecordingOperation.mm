@interface AnalyticsRecordingOperation
- (AnalyticsRecordingOperation)initWithMetricsEvents:(id)a3;
- (void)run;
@end

@implementation AnalyticsRecordingOperation

- (AnalyticsRecordingOperation)initWithMetricsEvents:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AnalyticsRecordingOperation;
  v6 = [(AnalyticsRecordingOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_events, a3);
  }

  return v7;
}

- (void)run
{
  if (![(NSArray *)self->_events count])
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v108 = 138412290;
      v109 = objc_opt_class();
      v8 = v109;
      LODWORD(v80) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_15:

        [(AnalyticsRecordingOperation *)self setSuccess:1];
        return;
      }

      v7 = [NSString stringWithCString:v9 encoding:4, &v108, v80];
      free(v9);
      SSFileLog();
    }

    goto LABEL_15;
  }

  if ([(NSString *)self->_eventTopicOverride length])
  {
    eventTopicOverride = self->_eventTopicOverride;
  }

  else
  {
    eventTopicOverride = @"xp_its_main";
  }

  v84 = eventTopicOverride;
  v10 = +[SSAccountStore defaultStore];
  v11 = [v10 activeAccount];

  v12 = +[SSVCookieStorage sharedStorage];
  v82 = v11;
  v13 = [v12 allCookiesForAccount:v11];

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v100 objects:v107 count:16];
  if (v15)
  {
    v16 = *v101;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v101 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v100 + 1) + 8 * i);
        v19 = [v18 name];
        v20 = [v19 isEqualToString:@"xp_ci"];

        if (v20)
        {
          v15 = [v18 value];
          goto LABEL_27;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v100 objects:v107 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  if ([v15 length])
  {
    v81 = v14;
  }

  else
  {
    v21 = +[SSVCookieStorage sharedStorage];
    v22 = [v21 allCookiesForUserIdentifier:&off_10034C1F8];

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v96 objects:v106 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v97;
      while (2)
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v97 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v96 + 1) + 8 * j);
          v29 = [v28 name];
          v30 = [v29 isEqualToString:@"xp_ci"];

          if (v30)
          {
            v31 = [v28 value];

            v15 = v31;
            goto LABEL_39;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v96 objects:v106 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:
    v81 = v23;
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v32 = self->_events;
  v33 = [(NSArray *)v32 countByEnumeratingWithState:&v92 objects:v105 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v93;
    do
    {
      for (k = 0; k != v34; k = k + 1)
      {
        if (*v93 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v92 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v37 setTopic:v84];
          if (v15)
          {
            [v37 setProperty:v15 forBodyKey:@"clientId"];
          }

          if (self->_appBundleId)
          {
            [v37 setApplicationIdentifier:?];
          }
        }
      }

      v34 = [(NSArray *)v32 countByEnumeratingWithState:&v92 objects:v105 count:16];
    }

    while (v34);
  }

  v38 = +[AMSMetrics bagSubProfile];
  v39 = +[AMSMetrics bagSubProfileVersion];
  v40 = [AMSBag bagForProfile:v38 profileVersion:v39];

  if (_os_feature_enabled_impl() && [v40 asd_iTunesStoreMetricsIsEnabled])
  {
    v41 = [[AMSMetrics alloc] initWithContainerID:@"com.apple.AppleMediaServices" bag:v40];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v42 = self->_events;
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v88 objects:v104 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v89;
      do
      {
        for (m = 0; m != v44; m = m + 1)
        {
          if (*v89 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v88 + 1) + 8 * m);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = [AMSMetricsEvent alloc];
            v49 = [v47 bodyDictionary];
            v50 = [v48 initWithUnderlyingDictionary:v49];

            [v41 enqueueEvent:v50];
          }
        }

        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v88 objects:v104 count:16];
      }

      while (v44);
      v51 = v41;
      v52 = v81;
    }

    else
    {
      v51 = v41;
      v52 = v81;
    }

    goto LABEL_96;
  }

  v53 = objc_alloc_init(ISLoadURLBagOperation);
  v87 = 0;
  [(AnalyticsRecordingOperation *)self runSubOperation:v53 returningError:&v87];
  v42 = v87;
  v54 = [v53 URLBag];
  v55 = v54;
  if (!v42 && v54)
  {
    v51 = v53;
    v56 = [v54 valueForKey:SSMetricsURLBagKey];
    if ([v56 count])
    {
      v57 = [[SSMetricsConfiguration alloc] initWithGlobalConfiguration:v56];
      v58 = objc_alloc_init(SSMetricsController);
      metricsController = self->_metricsController;
      self->_metricsController = v58;
      v60 = v58;

      [(SSMetricsController *)v60 setGlobalConfiguration:v57];
      events = self->_events;
      v86[0] = _NSConcreteStackBlock;
      v86[1] = 3221225472;
      v86[2] = sub_10020C6D4;
      v86[3] = &unk_1003276D0;
      v86[4] = self;
      [(SSMetricsController *)v60 insertEvents:events withCompletionHandler:v86];
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_10020C870;
      v85[3] = &unk_1003276D0;
      v85[4] = self;
      [(SSMetricsController *)v60 flushUnreportedEventsWithCompletionHandler:v85];
      [(AnalyticsRecordingOperation *)self setSuccess:1];

      v52 = v81;
LABEL_94:

      goto LABEL_95;
    }

    v83 = v56;
    v71 = +[SSLogConfig sharedDaemonConfig];
    if (!v71)
    {
      v71 = +[SSLogConfig sharedConfig];
    }

    v72 = [v71 shouldLog];
    if ([v71 shouldLogToDisk])
    {
      v73 = v72 | 2;
    }

    else
    {
      v73 = v72;
    }

    v74 = [v71 OSLogObject];
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = v73;
    }

    else
    {
      v75 = v73 & 2;
    }

    if (v75)
    {
      v76 = objc_opt_class();
      v108 = 138412290;
      v109 = v76;
      v77 = v55;
      v78 = v76;
      LODWORD(v80) = 12;
      v79 = _os_log_send_and_compose_impl();

      v55 = v77;
      if (!v79)
      {
LABEL_93:

        [(AnalyticsRecordingOperation *)self setSuccess:0];
        v52 = v81;
        v56 = v83;
        goto LABEL_94;
      }

      v74 = [NSString stringWithCString:v79 encoding:4, &v108, v80];
      free(v79);
      SSFileLog();
    }

    goto LABEL_93;
  }

  v51 = v53;
  v62 = +[SSLogConfig sharedDaemonConfig];
  if (!v62)
  {
    v62 = +[SSLogConfig sharedConfig];
  }

  v63 = [v62 shouldLog];
  if ([v62 shouldLogToDisk])
  {
    v64 = v63 | 2;
  }

  else
  {
    v64 = v63;
  }

  v65 = [v62 OSLogObject];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = v64;
  }

  else
  {
    v66 = v64 & 2;
  }

  if (!v66)
  {
    goto LABEL_79;
  }

  v67 = objc_opt_class();
  v108 = 138412290;
  v109 = v67;
  v68 = v55;
  v69 = v67;
  LODWORD(v80) = 12;
  v70 = _os_log_send_and_compose_impl();

  v55 = v68;
  if (v70)
  {
    v65 = [NSString stringWithCString:v70 encoding:4, &v108, v80];
    free(v70);
    SSFileLog();
LABEL_79:
  }

  [(AnalyticsRecordingOperation *)self setSuccess:0];
  v52 = v81;
LABEL_95:

LABEL_96:
}

@end