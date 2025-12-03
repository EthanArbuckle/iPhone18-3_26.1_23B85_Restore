@interface DeploymentMetricHandler
- (BOOL)appendBssAnalyticsToMetric:(id)metric bssMo:(id)mo maxAgeInDays:(unint64_t)days;
- (BOOL)appendNetworkAnalyticsToMetric:(id)metric ssid:(id)ssid deploymentUuid:(id)uuid maxAgeInDays:(unint64_t)days;
- (BOOL)metricNeedsSubmission:(id)submission deploymentUuid:(id)uuid interval:(unint64_t)interval;
- (DeploymentMetricHandler)initWithAnalyticsStore:(id)store;
- (id)leavesSummary:(id)summary bssid:(id)bssid maxAgeInDays:(unint64_t)days;
- (id)roamsSummary:(id)summary bssid:(id)bssid maxAgeInDays:(unint64_t)days;
- (void)appendJoinsSummaryToMetric:(id)metric ssid:(id)ssid maxAgeInDays:(unint64_t)days;
- (void)networkDeploymentMetricCheckAndSubmit:(id)submit interval:(unint64_t)interval;
- (void)submitBssAnalyticsMetrics:(id)metrics deploymentUuid:(id)uuid stitchIndex:(int64_t)index;
@end

@implementation DeploymentMetricHandler

- (DeploymentMetricHandler)initWithAnalyticsStore:(id)store
{
  v17 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = DeploymentMetricHandler;
  v6 = [(DeploymentMetricHandler *)&v12 init];
  v7 = v6;
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_storeMOHandler, store);
  if (!v7->_storeMOHandler)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "[DeploymentMetricHandler initWithAnalyticsStore:]";
      v15 = 1024;
      v16 = 96;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error getting _roamPolicyMOHandler", buf, 0x12u);
    }

    goto LABEL_7;
  }

  v7->_isInternalInstall = MGGetBoolAnswer();
  v8 = v7;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)metricNeedsSubmission:(id)submission deploymentUuid:(id)uuid interval:(unint64_t)interval
{
  v41 = *MEMORY[0x1E69E9840];
  submissionCopy = submission;
  uuidCopy = uuid;
  v10 = uuidCopy;
  if (!submissionCopy)
  {
    v34 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v36 = 136446466;
      *&v36[4] = "[DeploymentMetricHandler metricNeedsSubmission:deploymentUuid:interval:]";
      *&v36[12] = 1024;
      *&v36[14] = 116;
      v35 = "%{public}s::%d:networkMO nil";
LABEL_33:
      _os_log_impl(&dword_1C8460000, v34, OS_LOG_TYPE_ERROR, v35, v36, 0x12u);
    }

LABEL_34:

    LOBYTE(v29) = 0;
    goto LABEL_28;
  }

  if (!uuidCopy)
  {
    v34 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v36 = 136446466;
      *&v36[4] = "[DeploymentMetricHandler metricNeedsSubmission:deploymentUuid:interval:]";
      *&v36[12] = 1024;
      *&v36[14] = 117;
      v35 = "%{public}s::%d:deploymentUuid nil";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v11 = objc_autoreleasePoolPush();
  date = [MEMORY[0x1E695DF00] date];
  v13 = [NetworkMO networkManagedObjectPropertyValue:submissionCopy forKey:@"DeploymentMetricInfo"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKey:v10];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 objectForKey:@"DeploymentMetricLastSubmissionDate"];

      if (v17)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v36 = 136446722;
      *&v36[4] = "[DeploymentMetricHandler metricNeedsSubmission:deploymentUuid:interval:]";
      *&v36[12] = 1024;
      *&v36[14] = 132;
      *&v36[18] = 2112;
      *&v36[20] = v10;
      v19 = "%{public}s::%d:No previous metric info for deployment:%@";
      v20 = v18;
      v21 = 28;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v36 = 136446466;
      *&v36[4] = "[DeploymentMetricHandler metricNeedsSubmission:deploymentUuid:interval:]";
      *&v36[12] = 1024;
      *&v36[14] = 135;
      v19 = "%{public}s::%d:No previous deployment metric available";
      v20 = v18;
      v21 = 18;
LABEL_11:
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_DEBUG, v19, v36, v21);
    }
  }

LABEL_13:
  ssid = [submissionCopy ssid];
  storeMOHandler = [(DeploymentMetricHandler *)self storeMOHandler];
  managedObjectContext = [storeMOHandler managedObjectContext];
  v17 = [WADeviceAnalyticsJoinRecord earliestJoinDate:ssid moc:managedObjectContext];

  v25 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *v36 = 136446722;
    *&v36[4] = "[DeploymentMetricHandler metricNeedsSubmission:deploymentUuid:interval:]";
    *&v36[12] = 1024;
    *&v36[14] = 140;
    *&v36[18] = 2112;
    *&v36[20] = v17;
    _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_DEBUG, "%{public}s::%d:No previous submission: Earliest join date %@", v36, 0x1Cu);
  }

  if (!v17)
  {
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v36 = 136446466;
      *&v36[4] = "[DeploymentMetricHandler metricNeedsSubmission:deploymentUuid:interval:]";
      *&v36[12] = 1024;
      *&v36[14] = 143;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:Not enough time elapsed.. bailing", v36, 0x12u);
    }

    LOBYTE(v29) = 0;
    goto LABEL_27;
  }

LABEL_16:
  [date timeIntervalSinceDate:v17];
  v27 = (v26 / 86400.0);
  if (interval)
  {
    v28 = v27 <= interval;
  }

  else
  {
    v28 = 0;
  }

  v29 = !v28;
  v30 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *&v36[4] = "[DeploymentMetricHandler metricNeedsSubmission:deploymentUuid:interval:]";
    *&v36[12] = 1024;
    v31 = "NO";
    *&v36[14] = 150;
    *&v36[18] = 2080;
    *v36 = 136447490;
    if (v29)
    {
      v31 = "YES";
    }

    *&v36[20] = v31;
    *&v36[28] = 2112;
    *&v36[30] = v17;
    v37 = 2048;
    v38 = v27;
    v39 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_1C8460000, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Needs submisssion: %s (Previous metric from %@, diffDays:%ld interval:%ld) ", v36, 0x3Au);
  }

LABEL_27:
  objc_autoreleasePoolPop(v11);
LABEL_28:

  v32 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)networkDeploymentMetricCheckAndSubmit:(id)submit interval:(unint64_t)interval
{
  v55 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if (submitCopy)
  {
    v7 = objc_autoreleasePoolPush();
    apid = [submitCopy apid];
    v9 = apid;
    if (!apid || ([apid UUIDString], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10) || (objc_msgSend(v9, "UUIDString"), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      dictionary = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEBUG))
      {
        network = [submitCopy network];
        ssid = [network ssid];
        *buf = 136446722;
        v46 = "[DeploymentMetricHandler networkDeploymentMetricCheckAndSubmit:interval:]";
        v47 = 1024;
        v48 = 168;
        v49 = 2112;
        v50 = ssid;
        _os_log_impl(&dword_1C8460000, dictionary, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deployment uuid not set for %@", buf, 0x1Cu);
      }

      v12 = 0;
      goto LABEL_13;
    }

    v12 = v11;
    network2 = [submitCopy network];
    v14 = [(DeploymentMetricHandler *)self metricNeedsSubmission:network2 deploymentUuid:v12 interval:interval];

    if (!v14)
    {
LABEL_14:

      objc_autoreleasePoolPop(v7);
      goto LABEL_15;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    network3 = [submitCopy network];
    ssid2 = [network3 ssid];
    v18 = [(DeploymentMetricHandler *)self appendNetworkAnalyticsToMetric:dictionary ssid:ssid2 deploymentUuid:v12 maxAgeInDays:14];

    if (!v18)
    {
LABEL_13:

      goto LABEL_14;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v20 = llround(v19);
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
    [dictionary setObject:v21 forKeyedSubscript:@"MetricStitchIndex"];

    dictionary = dictionary;
    v22 = AnalyticsSendEventLazy();
    v23 = WALogCategoryDeviceStoreHandle();
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        network4 = [submitCopy network];
        ssid3 = [network4 ssid];
        *buf = 136447234;
        v46 = "[DeploymentMetricHandler networkDeploymentMetricCheckAndSubmit:interval:]";
        v47 = 1024;
        v48 = 189;
        v49 = 2112;
        v50 = ssid3;
        v51 = 2112;
        v52 = v12;
        v53 = 2048;
        v54 = [dictionary count];
        v27 = "%{public}s::%d:Sending DeploymentMetric for ssid: %@ (deploymentUuid: %@) with fieldCount: %lu";
        v28 = v24;
        v29 = OS_LOG_TYPE_DEBUG;
LABEL_18:
        _os_log_impl(&dword_1C8460000, v28, v29, v27, buf, 0x30u);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      network4 = [submitCopy network];
      ssid3 = [network4 ssid];
      *buf = 136447234;
      v46 = "[DeploymentMetricHandler networkDeploymentMetricCheckAndSubmit:interval:]";
      v47 = 1024;
      v48 = 187;
      v49 = 2112;
      v50 = ssid3;
      v51 = 2112;
      v52 = v12;
      v53 = 2048;
      v54 = [dictionary count];
      v27 = "%{public}s::%d:Failed sending DeploymentMetric for ssid: %@ (deploymentUuid: %@) with fieldCount: %lu";
      v28 = v24;
      v29 = OS_LOG_TYPE_ERROR;
      goto LABEL_18;
    }

    network5 = [submitCopy network];
    ssid4 = [network5 ssid];
    [(DeploymentMetricHandler *)self submitBssAnalyticsMetrics:ssid4 deploymentUuid:v12 stitchIndex:v20];

    date = [MEMORY[0x1E695DF00] date];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v37 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v46 = "[DeploymentMetricHandler networkDeploymentMetricCheckAndSubmit:interval:]";
      v47 = 1024;
      v48 = 197;
      v49 = 2112;
      v50 = date;
      _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Metric updated date: %@", buf, 0x1Cu);
    }

    v44 = date;
    [dictionary2 setObject:date forKey:@"DeploymentMetricLastSubmissionDate"];
    network6 = [submitCopy network];
    v39 = [NetworkMO networkManagedObjectPropertyValue:network6 forKey:@"DeploymentMetricInfo"];

    if (v39)
    {
      [v39 removeObjectForKey:v12];
      [v39 setObject:dictionary2 forKey:v12];
      dictionary3 = v39;
    }

    else
    {
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      [dictionary3 setObject:dictionary2 forKey:v12];
    }

    storeMOHandler = [(DeploymentMetricHandler *)self storeMOHandler];
    network7 = [submitCopy network];
    [storeMOHandler setNetworkManagedObjectPropertyValueForKeyWithoutSave:network7 forKey:@"DeploymentMetricInfo" withValue:dictionary3];

    goto LABEL_13;
  }

  v43 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v46 = "[DeploymentMetricHandler networkDeploymentMetricCheckAndSubmit:interval:]";
    v47 = 1024;
    v48 = 159;
    _os_log_impl(&dword_1C8460000, v43, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
  }

LABEL_15:
  v32 = *MEMORY[0x1E69E9840];
}

- (void)submitBssAnalyticsMetrics:(id)metrics deploymentUuid:(id)uuid stitchIndex:(int64_t)index
{
  v78 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  uuidCopy = uuid;
  v9 = objc_autoreleasePoolPush();
  if (!metricsCopy)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v67 = "[DeploymentMetricHandler submitBssAnalyticsMetrics:deploymentUuid:stitchIndex:]";
      v68 = 1024;
      v69 = 232;
      v56 = "%{public}s::%d:ssid nil";
LABEL_49:
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, v56, buf, 0x12u);
    }

LABEL_50:
    v12 = 0;
LABEL_44:

    goto LABEL_40;
  }

  storeMOHandler = [(DeploymentMetricHandler *)self storeMOHandler];
  managedObjectContext = [storeMOHandler managedObjectContext];
  v12 = [BSSMO copyBssidsForDeployment:metricsCopy deploymentUuid:uuidCopy moc:managedObjectContext];

  if (!v12)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v67 = "[DeploymentMetricHandler submitBssAnalyticsMetrics:deploymentUuid:stitchIndex:]";
      v68 = 1024;
      v69 = 236;
      v56 = "%{public}s::%d:bssidArray nil";
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  if (![v12 count])
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v67 = "[DeploymentMetricHandler submitBssAnalyticsMetrics:deploymentUuid:stitchIndex:]";
      v68 = 1024;
      v69 = 237;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssidArray empty", buf, 0x12u);
    }

    goto LABEL_44;
  }

  v59 = [v12 count];
  if (v59)
  {
    v57 = v9;
    v58 = metricsCopy;
    v60 = uuidCopy;
    v13 = 0;
    selfCopy = self;
    v65 = v12;
    while (1)
    {
      v14 = [v12 objectAtIndex:{v13, v57}];
      if (v14)
      {
        break;
      }

LABEL_38:

      if (++v13 == v59)
      {
        v9 = v57;
        metricsCopy = v58;
        uuidCopy = v60;
        goto LABEL_40;
      }
    }

    persistentContainer = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v16 = [persistentContainer bssForBssid:v14 prefetchProperties:&unk_1F483E590 withError:0];

    if (!v16)
    {
      v55 = WALogCategoryDeviceStoreHandle();
      metricsCopy = v58;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v67 = "[DeploymentMetricHandler submitBssAnalyticsMetrics:deploymentUuid:stitchIndex:]";
        v68 = 1024;
        v69 = 246;
        v70 = 2112;
        v71 = v58;
        v72 = 2112;
        v73 = v14;
        _os_log_impl(&dword_1C8460000, v55, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssMo nil for %@[%@]", buf, 0x26u);
      }

      uuidCopy = v60;
      v9 = v57;
      goto LABEL_44;
    }

    bssid = [v16 bssid];
    v18 = [v12 indexOfObject:bssid];

    v19 = [BSSMO bssManagedObjectPropertyValue:v16 forKey:@"NeighborInfo"];
    v20 = objc_autoreleasePoolPush();
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v61 = v14;
    if (![(DeploymentMetricHandler *)self appendBssAnalyticsToMetric:dictionary bssMo:v16 maxAgeInDays:14]|| v18 == 0x7FFFFFFFFFFFFFFFLL)
    {

      objc_autoreleasePoolPop(v20);
LABEL_37:

      self = selfCopy;
      v12 = v65;
      v14 = v61;
      goto LABEL_38;
    }

    v22 = [MEMORY[0x1E696AD98] numberWithInteger:index];
    [dictionary setObject:v22 forKeyedSubscript:@"MetricStitchIndex"];

    if (v19)
    {
      v23 = [v19 count];
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v23];
      [dictionary setObject:v24 forKeyedSubscript:@"NeighborsCount"];
    }

    else
    {
      v23 = 0;
    }

    v62 = v18;
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18 + 1];
    [dictionary setObject:v25 forKeyedSubscript:@"BssIndex"];

    v26 = dictionary;
    v27 = AnalyticsSendEventLazy();
    v28 = WALogCategoryDeviceStoreHandle();
    v29 = v28;
    if (v27)
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      v30 = [v26 count];
      *buf = 136447234;
      v67 = "[DeploymentMetricHandler submitBssAnalyticsMetrics:deploymentUuid:stitchIndex:]";
      v68 = 1024;
      v69 = 272;
      v70 = 2112;
      v71 = v14;
      v72 = 2112;
      v73 = v60;
      v74 = 2048;
      v75 = v30;
      v31 = v29;
      v32 = OS_LOG_TYPE_DEBUG;
      v33 = "%{public}s::%d:Send success DeploymentBssInfo for bssid: %@ (deploymentUuid: %@) with fieldCount: %lu";
    }

    else
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v34 = [v26 count];
      *buf = 136447234;
      v67 = "[DeploymentMetricHandler submitBssAnalyticsMetrics:deploymentUuid:stitchIndex:]";
      v68 = 1024;
      v69 = 274;
      v70 = 2112;
      v71 = v14;
      v72 = 2112;
      v73 = v60;
      v74 = 2048;
      v75 = v34;
      v31 = v29;
      v32 = OS_LOG_TYPE_ERROR;
      v33 = "%{public}s::%d:Failed sending DeploymentBssInfo for bssid: %@ (deploymentUuid: %@) with fieldCount: %lu";
    }

    _os_log_impl(&dword_1C8460000, v31, v32, v33, buf, 0x30u);
LABEL_20:

    objc_autoreleasePoolPop(v20);
    if (v23)
    {
      v35 = 0;
      while (1)
      {
        v36 = objc_autoreleasePoolPush();
        v37 = [v19 objectAtIndex:v35];
        if (!v37)
        {
          v44 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            bssid2 = [v16 bssid];
            *buf = 136446978;
            v67 = "[DeploymentMetricHandler submitBssAnalyticsMetrics:deploymentUuid:stitchIndex:]";
            v68 = 1024;
            v69 = 284;
            v70 = 2048;
            v71 = v35;
            v72 = 2112;
            v73 = bssid2;
            _os_log_impl(&dword_1C8460000, v44, OS_LOG_TYPE_ERROR, "%{public}s::%d:No neighbor data at index %lu for bssid:%@", buf, 0x26u);
          }

          goto LABEL_36;
        }

        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [dictionary2 addEntriesFromDictionary:v37];
        v39 = [v37 valueForKey:@"NeighborBssid"];
        v40 = [v65 indexOfObject:v39];

        if (v40 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v40 + 1];
          [dictionary2 setObject:v41 forKeyedSubscript:@"NeighborBssIndex"];
        }

        if (![(DeploymentMetricHandler *)selfCopy isInternalInstall])
        {
          [dictionary2 removeObjectForKey:@"NeighborBssid"];
        }

        v42 = [MEMORY[0x1E696AD98] numberWithInteger:index];
        [dictionary2 setObject:v42 forKeyedSubscript:@"MetricStitchIndex"];

        v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v62 + 1];
        [dictionary2 setObject:v43 forKeyedSubscript:@"BssIndex"];

        v44 = dictionary2;
        LODWORD(v43) = AnalyticsSendEventLazy();
        v45 = WALogCategoryDeviceStoreHandle();
        v46 = v45;
        if (v43)
        {
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v47 = [v37 valueForKey:@"NeighborBssid"];
            v48 = [v44 count];
            *buf = 136447490;
            v67 = "[DeploymentMetricHandler submitBssAnalyticsMetrics:deploymentUuid:stitchIndex:]";
            v68 = 1024;
            v69 = 311;
            v70 = 2112;
            v71 = v47;
            v72 = 2112;
            v73 = v61;
            v74 = 2112;
            v75 = v60;
            v76 = 2048;
            v77 = v48;
            v49 = v46;
            v50 = OS_LOG_TYPE_DEBUG;
            v51 = "%{public}s::%d:Send success DeploymentBssNeighborInfo for neighbor: %@ of bssid: %@ (deploymentUuid: %@) with fieldCount: %lu";
LABEL_34:
            _os_log_impl(&dword_1C8460000, v49, v50, v51, buf, 0x3Au);
          }
        }

        else if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v47 = [v37 valueForKey:@"NeighborBssid"];
          v53 = [v44 count];
          *buf = 136447490;
          v67 = "[DeploymentMetricHandler submitBssAnalyticsMetrics:deploymentUuid:stitchIndex:]";
          v68 = 1024;
          v69 = 313;
          v70 = 2112;
          v71 = v47;
          v72 = 2112;
          v73 = v61;
          v74 = 2112;
          v75 = v60;
          v76 = 2048;
          v77 = v53;
          v49 = v46;
          v50 = OS_LOG_TYPE_ERROR;
          v51 = "%{public}s::%d:Failed sending DeploymentBssNeighborInfo for neighbor: %@ of bssid: %@ (deploymentUuid: %@) with fieldCount: %lu";
          goto LABEL_34;
        }

LABEL_36:
        objc_autoreleasePoolPop(v36);
        v35 = (v35 + 1);
        if (v23 == v35)
        {
          goto LABEL_37;
        }
      }
    }

    goto LABEL_37;
  }

LABEL_40:

  objc_autoreleasePoolPop(v9);
  v54 = *MEMORY[0x1E69E9840];
}

- (BOOL)appendNetworkAnalyticsToMetric:(id)metric ssid:(id)ssid deploymentUuid:(id)uuid maxAgeInDays:(unint64_t)days
{
  v56 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  ssidCopy = ssid;
  uuidCopy = uuid;
  if (!ssidCopy)
  {
    v43 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v51 = "[DeploymentMetricHandler appendNetworkAnalyticsToMetric:ssid:deploymentUuid:maxAgeInDays:]";
      v52 = 1024;
      v53 = 332;
      v44 = "%{public}s::%d:ssidStr nil";
LABEL_17:
      _os_log_impl(&dword_1C8460000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0x12u);
    }

LABEL_18:

    v16 = 0;
    goto LABEL_12;
  }

  if (!metricCopy)
  {
    v43 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v51 = "[DeploymentMetricHandler appendNetworkAnalyticsToMetric:ssid:deploymentUuid:maxAgeInDays:]";
      v52 = 1024;
      v53 = 333;
      v44 = "%{public}s::%d:metricDict nil";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v13 = objc_autoreleasePoolPush();
  persistentContainer = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v15 = [persistentContainer networkForSSID:ssidCopy prefetchProperties:&unk_1F483E5A8 withError:0];

  v16 = v15 != 0;
  if (v15)
  {
    daysCopy = days;
    v48 = v13;
    v49 = uuidCopy;
    storeMOHandler = [(DeploymentMetricHandler *)self storeMOHandler];
    managedObjectContext = [storeMOHandler managedObjectContext];
    v46 = [RoamMO dwellTimeInBand:ssidCopy bandIs24:1 bssid:0 maxAgeInDays:0 moc:managedObjectContext];

    storeMOHandler2 = [(DeploymentMetricHandler *)self storeMOHandler];
    managedObjectContext2 = [storeMOHandler2 managedObjectContext];
    v21 = [RoamMO dwellTimeInBand:ssidCopy bandIs24:0 bssid:0 maxAgeInDays:0 moc:managedObjectContext2];

    storeMOHandler3 = [(DeploymentMetricHandler *)self storeMOHandler];
    managedObjectContext3 = [storeMOHandler3 managedObjectContext];
    v24 = [BSSMO numBssInBand:ssidCopy bandIs24:1 moc:managedObjectContext3];

    storeMOHandler4 = [(DeploymentMetricHandler *)self storeMOHandler];
    managedObjectContext4 = [storeMOHandler4 managedObjectContext];
    v27 = [BSSMO numBssInBand:ssidCopy bandIs24:0 moc:managedObjectContext4];

    v28 = [NetworkMO networkManagedObjectPropertyValue:v15 forKey:@"NetworkSummaryNetworkFlags"];
    if ([(DeploymentMetricHandler *)self isInternalInstall])
    {
      ssid = [v15 ssid];
      [metricCopy setObject:ssid forKeyedSubscript:@"Ssid"];
    }

    [metricCopy setObject:v28 forKeyedSubscript:@"AuthFlags"];
    v30 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v15, "bssCount")}];
    [metricCopy setObject:v30 forKeyedSubscript:@"NumBss"];

    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v46];
    [metricCopy setObject:v31 forKeyedSubscript:@"DwellTimePct_24GHZ"];

    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
    [metricCopy setObject:v32 forKeyedSubscript:@"DwellTimePct_5GHZ"];

    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
    [metricCopy setObject:v33 forKeyedSubscript:@"NumBss_24GHZ"];

    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
    [metricCopy setObject:v34 forKeyedSubscript:@"NumBss_5GHZ"];

    [(DeploymentMetricHandler *)self appendJoinsSummaryToMetric:metricCopy ssid:ssidCopy maxAgeInDays:daysCopy];
    v35 = objc_autoreleasePoolPush();
    v36 = [(DeploymentMetricHandler *)self roamsSummary:ssidCopy bssid:0 maxAgeInDays:daysCopy];
    if (v36)
    {
      v37 = v36;
      [metricCopy addEntriesFromDictionary:v36];
    }

    objc_autoreleasePoolPop(v35);
    v38 = objc_autoreleasePoolPush();
    v39 = [(DeploymentMetricHandler *)self leavesSummary:ssidCopy bssid:0 maxAgeInDays:daysCopy];
    v16 = v15 != 0;
    v13 = v48;
    if (v39)
    {
      v40 = v39;
      [metricCopy addEntriesFromDictionary:v39];
    }

    objc_autoreleasePoolPop(v38);

    uuidCopy = v49;
  }

  else
  {
    v45 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v51 = "[DeploymentMetricHandler appendNetworkAnalyticsToMetric:ssid:deploymentUuid:maxAgeInDays:]";
      v52 = 1024;
      v53 = 341;
      v54 = 2112;
      v55 = ssidCopy;
      _os_log_impl(&dword_1C8460000, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:networkMo nil for ssid %@", buf, 0x1Cu);
    }
  }

  objc_autoreleasePoolPop(v13);
LABEL_12:

  v41 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)roamsSummary:(id)summary bssid:(id)bssid maxAgeInDays:(unint64_t)days
{
  v94 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  bssidCopy = bssid;
  if (summaryCopy)
  {
    context = objc_autoreleasePoolPush();
    v10 = MEMORY[0x1E696AB28];
    v74 = summaryCopy;
    summaryCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.network.ssid == %@", summaryCopy];
    v12 = summaryCopy;
    v73 = bssidCopy;
    if (bssidCopy)
    {
      v89[0] = summaryCopy;
      bssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.bssid == %@", bssidCopy];
      v89[1] = bssidCopy;
      persistentContainer = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
      v15 = +[RoamMO entity];
      v16 = [persistentContainer predicateForEntity:v15 newerThan:0 withError:(86400 * days)];
      v89[2] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:3];
      v18 = [v10 andPredicateWithSubpredicates:v17];
    }

    else
    {
      v88[0] = summaryCopy;
      bssidCopy = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
      persistentContainer = +[RoamMO entity];
      v15 = [bssidCopy predicateForEntity:persistentContainer newerThan:0 withError:(86400 * days)];
      v88[1] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
      v18 = [v10 andPredicateWithSubpredicates:v16];
    }

    v19 = MEMORY[0x1E696AB28];
    v87[0] = v18;
    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"status == 0"];
    v87[1] = v20;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    v22 = v21 = v18;
    v75 = [v19 andPredicateWithSubpredicates:v22];

    v23 = MEMORY[0x1E696AB28];
    v86[0] = v21;
    v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"status != 0"];
    v86[1] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
    v76 = [v23 andPredicateWithSubpredicates:v25];

    v26 = MEMORY[0x1E696AB28];
    v85[0] = v21;
    3766617089 = [MEMORY[0x1E696AE18] predicateWithFormat:@"status == %d", 3766617089];
    v85[1] = 3766617089;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    v77 = [v26 andPredicateWithSubpredicates:v28];

    v29 = MEMORY[0x1E696AB28];
    v84[0] = v21;
    3766617092 = [MEMORY[0x1E696AE18] predicateWithFormat:@"status == %d", 3766617092];
    v84[1] = 3766617092;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
    v79 = [v29 andPredicateWithSubpredicates:v31];

    v32 = MEMORY[0x1E696AB28];
    v83[0] = v21;
    3766617091 = [MEMORY[0x1E696AE18] predicateWithFormat:@"status == %d", 3766617091];
    v83[1] = 3766617091;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
    v78 = [v32 andPredicateWithSubpredicates:v34];

    v35 = MEMORY[0x1E696AB28];
    v82[0] = v21;
    3766617163 = [MEMORY[0x1E696AE18] predicateWithFormat:@"status == %d", 3766617163];
    v82[1] = 3766617163;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
    v70 = [v35 andPredicateWithSubpredicates:v37];

    persistentContainer2 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v39 = +[RoamMO entity];
    v71 = [persistentContainer2 countObjects:v39 withPredicate:v21 withError:0];

    persistentContainer3 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v41 = +[RoamMO entity];
    v42 = [persistentContainer3 countObjects:v41 withPredicate:v75 withError:0];

    persistentContainer4 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v44 = +[RoamMO entity];
    v45 = [persistentContainer4 countObjects:v44 withPredicate:v76 withError:0];

    persistentContainer5 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v47 = +[RoamMO entity];
    v48 = [persistentContainer5 countObjects:v47 withPredicate:v77 withError:0];

    persistentContainer6 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v50 = +[RoamMO entity];
    v51 = [persistentContainer6 countObjects:v50 withPredicate:v79 withError:0];

    persistentContainer7 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v53 = +[RoamMO entity];
    v54 = [persistentContainer7 countObjects:v53 withPredicate:v78 withError:0];

    persistentContainer8 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v56 = +[RoamMO entity];
    v57 = [persistentContainer8 countObjects:v56 withPredicate:v70 withError:0];

    v80[0] = @"RoamsAttempted";
    v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v71];
    v81[0] = v58;
    v80[1] = @"RoamsSuccess";
    v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
    v81[1] = v59;
    v80[2] = @"RoamsFailed";
    v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v45];
    v81[2] = v60;
    v80[3] = @"RoamsFailReasonFailed";
    v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v48];
    v81[3] = v61;
    v80[4] = @"RoamsFailReasonAbort";
    v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v51];
    v81[4] = v62;
    v80[5] = @"RoamsFailReasonNoCand";
    v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v54];
    v81[5] = v63;
    v80[6] = @"RoamsFailReasonNoCandByScore";
    v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v57];
    v81[6] = v64;
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:7];

    v66 = [v65 copy];
    objc_autoreleasePoolPop(context);
    bssidCopy = v73;
    summaryCopy = v74;
  }

  else
  {
    v69 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v91 = "[DeploymentMetricHandler roamsSummary:bssid:maxAgeInDays:]";
      v92 = 1024;
      v93 = 386;
      _os_log_impl(&dword_1C8460000, v69, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    v66 = 0;
  }

  v67 = *MEMORY[0x1E69E9840];

  return v66;
}

- (id)leavesSummary:(id)summary bssid:(id)bssid maxAgeInDays:(unint64_t)days
{
  v112 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  bssidCopy = bssid;
  if (summaryCopy)
  {
    context = objc_autoreleasePoolPush();
    v10 = MEMORY[0x1E696AB28];
    v90 = summaryCopy;
    summaryCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", summaryCopy];
    v12 = summaryCopy;
    v89 = bssidCopy;
    if (bssidCopy)
    {
      v107[0] = summaryCopy;
      bssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.bssid == %@", bssidCopy];
      v107[1] = bssidCopy;
      v14 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * days)];
      v107[2] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:3];
      v16 = [v10 andPredicateWithSubpredicates:v15];
    }

    else
    {
      v106[0] = summaryCopy;
      bssidCopy = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * days)];
      v106[1] = bssidCopy;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
      v16 = [v10 andPredicateWithSubpredicates:v14];
    }

    v17 = MEMORY[0x1E696AB28];
    v105[0] = v16;
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 0];
    v105[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
    v96 = [v17 andPredicateWithSubpredicates:v19];

    v20 = MEMORY[0x1E696AB28];
    v104[0] = v16;
    v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1];
    v104[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
    v95 = [v20 andPredicateWithSubpredicates:v22];

    v23 = MEMORY[0x1E696AB28];
    v103[0] = v16;
    v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 2];
    v103[1] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];
    v93 = [v23 andPredicateWithSubpredicates:v25];

    v26 = MEMORY[0x1E696AB28];
    v102[0] = v16;
    v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 4];
    v102[1] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
    v94 = [v26 andPredicateWithSubpredicates:v28];

    v29 = MEMORY[0x1E696AB28];
    v101[0] = v16;
    1000 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1000];
    v101[1] = 1000;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:2];
    v87 = [v29 andPredicateWithSubpredicates:v31];

    v32 = MEMORY[0x1E696AB28];
    v100[0] = v16;
    1006 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1006];
    v100[1] = 1006;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
    v92 = [v32 andPredicateWithSubpredicates:v34];

    v35 = MEMORY[0x1E696AB28];
    v99[0] = v16;
    1011 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1011];
    v99[1] = 1011;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
    v91 = [v35 andPredicateWithSubpredicates:v37];

    v38 = MEMORY[0x1E696AB28];
    v98[0] = v16;
    1013 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1013];
    v98[1] = 1013;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
    v86 = [v38 andPredicateWithSubpredicates:v40];

    v41 = MEMORY[0x1E696AB28];
    v97[0] = v16;
    1007 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1007];
    v97[1] = 1007;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
    v44 = [v41 andPredicateWithSubpredicates:v43];

    persistentContainer = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v46 = +[WADeviceAnalyticsLeaveRecord entity];
    v85 = [persistentContainer countObjects:v46 withPredicate:v96 withError:0];

    persistentContainer2 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v48 = +[WADeviceAnalyticsLeaveRecord entity];
    v84 = [persistentContainer2 countObjects:v48 withPredicate:v95 withError:0];

    persistentContainer3 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v50 = +[WADeviceAnalyticsLeaveRecord entity];
    v83 = [persistentContainer3 countObjects:v50 withPredicate:v93 withError:0];

    persistentContainer4 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v52 = +[WADeviceAnalyticsLeaveRecord entity];
    v82 = [persistentContainer4 countObjects:v52 withPredicate:v94 withError:0];

    persistentContainer5 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v54 = +[WADeviceAnalyticsLeaveRecord entity];
    v55 = [persistentContainer5 countObjects:v54 withPredicate:v87 withError:0];

    persistentContainer6 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v57 = +[WADeviceAnalyticsLeaveRecord entity];
    v58 = [persistentContainer6 countObjects:v57 withPredicate:v92 withError:0];

    persistentContainer7 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v60 = +[WADeviceAnalyticsLeaveRecord entity];
    v81 = [persistentContainer7 countObjects:v60 withPredicate:v91 withError:0];

    persistentContainer8 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v62 = +[WADeviceAnalyticsLeaveRecord entity];
    v63 = [persistentContainer8 countObjects:v62 withPredicate:v86 withError:0];

    persistentContainer9 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v65 = +[WADeviceAnalyticsLeaveRecord entity];
    v66 = [persistentContainer9 countObjects:v65 withPredicate:v44 withError:0];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v85];
    [dictionary setObject:v68 forKeyedSubscript:@"LinkDownReasonUnknown"];

    v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v84];
    [dictionary setObject:v69 forKeyedSubscript:@"LinkDownReasonDeauth"];

    v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v83];
    [dictionary setObject:v70 forKeyedSubscript:@"LinkDownReasonBeaconLoss"];

    v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v82];
    [dictionary setObject:v71 forKeyedSubscript:@"LinkDownReasonSystemSleep"];

    v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v55];
    [dictionary setObject:v72 forKeyedSubscript:@"LinkDownReasonTrigDisc"];

    v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v58];
    [dictionary setObject:v73 forKeyedSubscript:@"LinkDownReasonThermal"];

    v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v81];
    [dictionary setObject:v74 forKeyedSubscript:@"LinkDownReasonControlCenter"];

    v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v63];
    [dictionary setObject:v75 forKeyedSubscript:@"LinkDownReasonNetworkTrans"];

    v76 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v66];
    [dictionary setObject:v76 forKeyedSubscript:@"LinkDownReasonInternetSharing"];

    v77 = [dictionary copy];
    objc_autoreleasePoolPop(context);
    bssidCopy = v89;
    summaryCopy = v90;
  }

  else
  {
    v80 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v109 = "[DeploymentMetricHandler leavesSummary:bssid:maxAgeInDays:]";
      v110 = 1024;
      v111 = 435;
      _os_log_impl(&dword_1C8460000, v80, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    v77 = 0;
  }

  v78 = *MEMORY[0x1E69E9840];

  return v77;
}

- (void)appendJoinsSummaryToMetric:(id)metric ssid:(id)ssid maxAgeInDays:(unint64_t)days
{
  v84 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  ssidCopy = ssid;
  if (!ssidCopy)
  {
    v57 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v81 = "[DeploymentMetricHandler appendJoinsSummaryToMetric:ssid:maxAgeInDays:]";
      v82 = 1024;
      v83 = 504;
      v58 = "%{public}s::%d:ssid nil";
LABEL_9:
      _os_log_impl(&dword_1C8460000, v57, OS_LOG_TYPE_ERROR, v58, buf, 0x12u);
    }

LABEL_10:

    goto LABEL_4;
  }

  if (!metricCopy)
  {
    v57 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v81 = "[DeploymentMetricHandler appendJoinsSummaryToMetric:ssid:maxAgeInDays:]";
      v82 = 1024;
      v83 = 505;
      v58 = "%{public}s::%d:dict nil";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  context = objc_autoreleasePoolPush();
  v10 = MEMORY[0x1E696AB28];
  [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", ssidCopy];
  v11 = v69 = ssidCopy;
  v79[0] = v11;
  v12 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * days)];
  v79[1] = v12;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
  v13 = v67 = metricCopy;
  v14 = [v10 andPredicateWithSubpredicates:v13];

  v66 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1];
  v72 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 0];
  v15 = MEMORY[0x1E696AE18];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v17 = [v15 predicateWithFormat:@"success == %@", v16];

  v18 = MEMORY[0x1E696AE18];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v20 = [v18 predicateWithFormat:@"success == %@", v19];

  v21 = MEMORY[0x1E696AB28];
  v78[0] = v14;
  v78[1] = v66;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  v70 = [v21 andPredicateWithSubpredicates:v22];

  v23 = MEMORY[0x1E696AB28];
  v77[0] = v14;
  v77[1] = v17;
  v77[2] = v66;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];
  v71 = [v23 andPredicateWithSubpredicates:v24];

  v25 = MEMORY[0x1E696AB28];
  v76[0] = v14;
  v76[1] = v20;
  v65 = v20;
  v76[2] = v66;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];
  v64 = [v25 andPredicateWithSubpredicates:v26];

  v27 = MEMORY[0x1E696AB28];
  v75[0] = v14;
  v75[1] = v72;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  v62 = [v27 andPredicateWithSubpredicates:v28];

  v29 = MEMORY[0x1E696AB28];
  v74[0] = v14;
  v74[1] = v17;
  v74[2] = v72;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
  v63 = [v29 andPredicateWithSubpredicates:v30];

  v31 = MEMORY[0x1E696AB28];
  v73[0] = v14;
  v73[1] = v20;
  v73[2] = v72;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:3];
  v33 = [v31 andPredicateWithSubpredicates:v32];

  persistentContainer = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v35 = +[WADeviceAnalyticsJoinRecord entity];
  v61 = [persistentContainer countObjects:v35 withPredicate:v70 withError:0];

  persistentContainer2 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v37 = +[WADeviceAnalyticsJoinRecord entity];
  v60 = [persistentContainer2 countObjects:v37 withPredicate:v71 withError:0];

  persistentContainer3 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v39 = +[WADeviceAnalyticsJoinRecord entity];
  v59 = [persistentContainer3 countObjects:v39 withPredicate:v64 withError:0];

  persistentContainer4 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v41 = +[WADeviceAnalyticsJoinRecord entity];
  v42 = [persistentContainer4 countObjects:v41 withPredicate:v62 withError:0];

  persistentContainer5 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v44 = +[WADeviceAnalyticsJoinRecord entity];
  v45 = [persistentContainer5 countObjects:v44 withPredicate:v63 withError:0];

  persistentContainer6 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v47 = +[WADeviceAnalyticsJoinRecord entity];
  v48 = [persistentContainer6 countObjects:v47 withPredicate:v33 withError:0];

  metricCopy = v67;
  v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v61];
  [v67 setObject:v49 forKeyedSubscript:@"ManualJoinsAttempted"];

  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v60];
  [v67 setObject:v50 forKeyedSubscript:@"ManualJoinsFailed"];

  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v59];
  [v67 setObject:v51 forKeyedSubscript:@"ManualJoinsSuccess"];

  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
  [v67 setObject:v52 forKeyedSubscript:@"AutoJoinsAttempted"];

  v53 = v45;
  ssidCopy = v69;
  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v53];
  [v67 setObject:v54 forKeyedSubscript:@"AutoJoinsFailed"];

  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v48];
  [v67 setObject:v55 forKeyedSubscript:@"AutoJoinsSuccess"];

  objc_autoreleasePoolPop(context);
LABEL_4:

  v56 = *MEMORY[0x1E69E9840];
}

- (BOOL)appendBssAnalyticsToMetric:(id)metric bssMo:(id)mo maxAgeInDays:(unint64_t)days
{
  v39 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  moCopy = mo;
  v10 = moCopy;
  if (!metricCopy)
  {
    v30 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "[DeploymentMetricHandler appendBssAnalyticsToMetric:bssMo:maxAgeInDays:]";
      v37 = 1024;
      v38 = 563;
      v31 = "%{public}s::%d:metricDict nil";
LABEL_11:
      _os_log_impl(&dword_1C8460000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x12u);
    }

LABEL_12:

    v27 = 0;
    goto LABEL_6;
  }

  if (!moCopy)
  {
    v30 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "[DeploymentMetricHandler appendBssAnalyticsToMetric:bssMo:maxAgeInDays:]";
      v37 = 1024;
      v38 = 564;
      v31 = "%{public}s::%d:bssMo nil";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  context = objc_autoreleasePoolPush();
  network = [v10 network];
  ssid = [network ssid];

  bssid = [v10 bssid];
  v33 = [(DeploymentMetricHandler *)self leavesSummary:ssid bssid:bssid maxAgeInDays:days];

  bssid2 = [v10 bssid];
  v32 = [(DeploymentMetricHandler *)self roamsSummary:ssid bssid:bssid2 maxAgeInDays:days];

  v15 = [v10 mostRecentBand] == 0;
  bssid3 = [v10 bssid];
  storeMOHandler = [(DeploymentMetricHandler *)self storeMOHandler];
  managedObjectContext = [storeMOHandler managedObjectContext];
  v19 = [RoamMO dwellTimeInBand:ssid bandIs24:v15 bssid:bssid3 maxAgeInDays:days moc:managedObjectContext];

  parsedBeacon = [v10 parsedBeacon];
  if ([(DeploymentMetricHandler *)self isInternalInstall])
  {
    bssid4 = [v10 bssid];
    [metricCopy setObject:bssid4 forKeyedSubscript:@"Bssid"];
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isEdgeForJoin")}];
  [metricCopy setObject:v22 forKeyedSubscript:@"IsEdgeForJoin"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isEdgeForLeave")}];
  [metricCopy setObject:v23 forKeyedSubscript:@"IsEdgeForLeave"];

  v24 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v10, "roamTriggerRssi")}];
  [metricCopy setObject:v24 forKeyedSubscript:@"RoamTriggerRssi"];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
  [metricCopy setObject:v25 forKeyedSubscript:@"DwellTime"];

  v26 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v10, "mostRecentBand")}];
  [metricCopy setObject:v26 forKeyedSubscript:@"Band"];

  [metricCopy addEntriesFromDictionary:v33];
  [metricCopy addEntriesFromDictionary:v32];
  [metricCopy addEntriesFromDictionary:parsedBeacon];

  objc_autoreleasePoolPop(context);
  v27 = 1;
LABEL_6:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

@end