@interface DeploymentMetricHandler
- (BOOL)appendBssAnalyticsToMetric:(id)a3 bssMo:(id)a4 maxAgeInDays:(unint64_t)a5;
- (BOOL)appendNetworkAnalyticsToMetric:(id)a3 ssid:(id)a4 deploymentUuid:(id)a5 maxAgeInDays:(unint64_t)a6;
- (BOOL)metricNeedsSubmission:(id)a3 deploymentUuid:(id)a4 interval:(unint64_t)a5;
- (DeploymentMetricHandler)initWithAnalyticsStore:(id)a3;
- (id)leavesSummary:(id)a3 bssid:(id)a4 maxAgeInDays:(unint64_t)a5;
- (id)roamsSummary:(id)a3 bssid:(id)a4 maxAgeInDays:(unint64_t)a5;
- (void)appendJoinsSummaryToMetric:(id)a3 ssid:(id)a4 maxAgeInDays:(unint64_t)a5;
- (void)networkDeploymentMetricCheckAndSubmit:(id)a3 interval:(unint64_t)a4;
- (void)submitBssAnalyticsMetrics:(id)a3 deploymentUuid:(id)a4 stitchIndex:(int64_t)a5;
@end

@implementation DeploymentMetricHandler

- (DeploymentMetricHandler)initWithAnalyticsStore:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
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

  objc_storeStrong(&v6->_storeMOHandler, a3);
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

- (BOOL)metricNeedsSubmission:(id)a3 deploymentUuid:(id)a4 interval:(unint64_t)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
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

  if (!v9)
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
  v12 = [MEMORY[0x1E695DF00] date];
  v13 = [NetworkMO networkManagedObjectPropertyValue:v8 forKey:@"DeploymentMetricInfo"];
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
  v22 = [v8 ssid];
  v23 = [(DeploymentMetricHandler *)self storeMOHandler];
  v24 = [v23 managedObjectContext];
  v17 = [WADeviceAnalyticsJoinRecord earliestJoinDate:v22 moc:v24];

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
  [v12 timeIntervalSinceDate:v17];
  v27 = (v26 / 86400.0);
  if (a5)
  {
    v28 = v27 <= a5;
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
    v40 = a5;
    _os_log_impl(&dword_1C8460000, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Needs submisssion: %s (Previous metric from %@, diffDays:%ld interval:%ld) ", v36, 0x3Au);
  }

LABEL_27:
  objc_autoreleasePoolPop(v11);
LABEL_28:

  v32 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)networkDeploymentMetricCheckAndSubmit:(id)a3 interval:(unint64_t)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [v6 apid];
    v9 = v8;
    if (!v8 || ([v8 UUIDString], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10) || (objc_msgSend(v9, "UUIDString"), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v15 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v30 = [v6 network];
        v31 = [v30 ssid];
        *buf = 136446722;
        v46 = "[DeploymentMetricHandler networkDeploymentMetricCheckAndSubmit:interval:]";
        v47 = 1024;
        v48 = 168;
        v49 = 2112;
        v50 = v31;
        _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Deployment uuid not set for %@", buf, 0x1Cu);
      }

      v12 = 0;
      goto LABEL_13;
    }

    v12 = v11;
    v13 = [v6 network];
    v14 = [(DeploymentMetricHandler *)self metricNeedsSubmission:v13 deploymentUuid:v12 interval:a4];

    if (!v14)
    {
LABEL_14:

      objc_autoreleasePoolPop(v7);
      goto LABEL_15;
    }

    v15 = [MEMORY[0x1E695DF90] dictionary];
    v16 = [v6 network];
    v17 = [v16 ssid];
    v18 = [(DeploymentMetricHandler *)self appendNetworkAnalyticsToMetric:v15 ssid:v17 deploymentUuid:v12 maxAgeInDays:14];

    if (!v18)
    {
LABEL_13:

      goto LABEL_14;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v20 = llround(v19);
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
    [v15 setObject:v21 forKeyedSubscript:@"MetricStitchIndex"];

    v15 = v15;
    v22 = AnalyticsSendEventLazy();
    v23 = WALogCategoryDeviceStoreHandle();
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v25 = [v6 network];
        v26 = [v25 ssid];
        *buf = 136447234;
        v46 = "[DeploymentMetricHandler networkDeploymentMetricCheckAndSubmit:interval:]";
        v47 = 1024;
        v48 = 189;
        v49 = 2112;
        v50 = v26;
        v51 = 2112;
        v52 = v12;
        v53 = 2048;
        v54 = [v15 count];
        v27 = "%{public}s::%d:Sending DeploymentMetric for ssid: %@ (deploymentUuid: %@) with fieldCount: %lu";
        v28 = v24;
        v29 = OS_LOG_TYPE_DEBUG;
LABEL_18:
        _os_log_impl(&dword_1C8460000, v28, v29, v27, buf, 0x30u);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = [v6 network];
      v26 = [v25 ssid];
      *buf = 136447234;
      v46 = "[DeploymentMetricHandler networkDeploymentMetricCheckAndSubmit:interval:]";
      v47 = 1024;
      v48 = 187;
      v49 = 2112;
      v50 = v26;
      v51 = 2112;
      v52 = v12;
      v53 = 2048;
      v54 = [v15 count];
      v27 = "%{public}s::%d:Failed sending DeploymentMetric for ssid: %@ (deploymentUuid: %@) with fieldCount: %lu";
      v28 = v24;
      v29 = OS_LOG_TYPE_ERROR;
      goto LABEL_18;
    }

    v33 = [v6 network];
    v34 = [v33 ssid];
    [(DeploymentMetricHandler *)self submitBssAnalyticsMetrics:v34 deploymentUuid:v12 stitchIndex:v20];

    v35 = [MEMORY[0x1E695DF00] date];
    v36 = [MEMORY[0x1E695DF90] dictionary];
    v37 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v46 = "[DeploymentMetricHandler networkDeploymentMetricCheckAndSubmit:interval:]";
      v47 = 1024;
      v48 = 197;
      v49 = 2112;
      v50 = v35;
      _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Metric updated date: %@", buf, 0x1Cu);
    }

    v44 = v35;
    [v36 setObject:v35 forKey:@"DeploymentMetricLastSubmissionDate"];
    v38 = [v6 network];
    v39 = [NetworkMO networkManagedObjectPropertyValue:v38 forKey:@"DeploymentMetricInfo"];

    if (v39)
    {
      [v39 removeObjectForKey:v12];
      [v39 setObject:v36 forKey:v12];
      v40 = v39;
    }

    else
    {
      v40 = [MEMORY[0x1E695DF90] dictionary];
      [v40 setObject:v36 forKey:v12];
    }

    v41 = [(DeploymentMetricHandler *)self storeMOHandler];
    v42 = [v6 network];
    [v41 setNetworkManagedObjectPropertyValueForKeyWithoutSave:v42 forKey:@"DeploymentMetricInfo" withValue:v40];

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

- (void)submitBssAnalyticsMetrics:(id)a3 deploymentUuid:(id)a4 stitchIndex:(int64_t)a5
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if (!v7)
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

  v10 = [(DeploymentMetricHandler *)self storeMOHandler];
  v11 = [v10 managedObjectContext];
  v12 = [BSSMO copyBssidsForDeployment:v7 deploymentUuid:v8 moc:v11];

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
    v58 = v7;
    v60 = v8;
    v13 = 0;
    v64 = self;
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
        v7 = v58;
        v8 = v60;
        goto LABEL_40;
      }
    }

    v15 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v16 = [v15 bssForBssid:v14 prefetchProperties:&unk_1F483E590 withError:0];

    if (!v16)
    {
      v55 = WALogCategoryDeviceStoreHandle();
      v7 = v58;
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

      v8 = v60;
      v9 = v57;
      goto LABEL_44;
    }

    v17 = [v16 bssid];
    v18 = [v12 indexOfObject:v17];

    v19 = [BSSMO bssManagedObjectPropertyValue:v16 forKey:@"NeighborInfo"];
    v20 = objc_autoreleasePoolPush();
    v21 = [MEMORY[0x1E695DF90] dictionary];
    v61 = v14;
    if (![(DeploymentMetricHandler *)self appendBssAnalyticsToMetric:v21 bssMo:v16 maxAgeInDays:14]|| v18 == 0x7FFFFFFFFFFFFFFFLL)
    {

      objc_autoreleasePoolPop(v20);
LABEL_37:

      self = v64;
      v12 = v65;
      v14 = v61;
      goto LABEL_38;
    }

    v22 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    [v21 setObject:v22 forKeyedSubscript:@"MetricStitchIndex"];

    if (v19)
    {
      v23 = [v19 count];
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v23];
      [v21 setObject:v24 forKeyedSubscript:@"NeighborsCount"];
    }

    else
    {
      v23 = 0;
    }

    v62 = v18;
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18 + 1];
    [v21 setObject:v25 forKeyedSubscript:@"BssIndex"];

    v26 = v21;
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
            v52 = [v16 bssid];
            *buf = 136446978;
            v67 = "[DeploymentMetricHandler submitBssAnalyticsMetrics:deploymentUuid:stitchIndex:]";
            v68 = 1024;
            v69 = 284;
            v70 = 2048;
            v71 = v35;
            v72 = 2112;
            v73 = v52;
            _os_log_impl(&dword_1C8460000, v44, OS_LOG_TYPE_ERROR, "%{public}s::%d:No neighbor data at index %lu for bssid:%@", buf, 0x26u);
          }

          goto LABEL_36;
        }

        v38 = [MEMORY[0x1E695DF90] dictionary];
        [v38 addEntriesFromDictionary:v37];
        v39 = [v37 valueForKey:@"NeighborBssid"];
        v40 = [v65 indexOfObject:v39];

        if (v40 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v40 + 1];
          [v38 setObject:v41 forKeyedSubscript:@"NeighborBssIndex"];
        }

        if (![(DeploymentMetricHandler *)v64 isInternalInstall])
        {
          [v38 removeObjectForKey:@"NeighborBssid"];
        }

        v42 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
        [v38 setObject:v42 forKeyedSubscript:@"MetricStitchIndex"];

        v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v62 + 1];
        [v38 setObject:v43 forKeyedSubscript:@"BssIndex"];

        v44 = v38;
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

- (BOOL)appendNetworkAnalyticsToMetric:(id)a3 ssid:(id)a4 deploymentUuid:(id)a5 maxAgeInDays:(unint64_t)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v11)
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

  if (!v10)
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
  v14 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v15 = [v14 networkForSSID:v11 prefetchProperties:&unk_1F483E5A8 withError:0];

  v16 = v15 != 0;
  if (v15)
  {
    v47 = a6;
    v48 = v13;
    v49 = v12;
    v17 = [(DeploymentMetricHandler *)self storeMOHandler];
    v18 = [v17 managedObjectContext];
    v46 = [RoamMO dwellTimeInBand:v11 bandIs24:1 bssid:0 maxAgeInDays:0 moc:v18];

    v19 = [(DeploymentMetricHandler *)self storeMOHandler];
    v20 = [v19 managedObjectContext];
    v21 = [RoamMO dwellTimeInBand:v11 bandIs24:0 bssid:0 maxAgeInDays:0 moc:v20];

    v22 = [(DeploymentMetricHandler *)self storeMOHandler];
    v23 = [v22 managedObjectContext];
    v24 = [BSSMO numBssInBand:v11 bandIs24:1 moc:v23];

    v25 = [(DeploymentMetricHandler *)self storeMOHandler];
    v26 = [v25 managedObjectContext];
    v27 = [BSSMO numBssInBand:v11 bandIs24:0 moc:v26];

    v28 = [NetworkMO networkManagedObjectPropertyValue:v15 forKey:@"NetworkSummaryNetworkFlags"];
    if ([(DeploymentMetricHandler *)self isInternalInstall])
    {
      v29 = [v15 ssid];
      [v10 setObject:v29 forKeyedSubscript:@"Ssid"];
    }

    [v10 setObject:v28 forKeyedSubscript:@"AuthFlags"];
    v30 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v15, "bssCount")}];
    [v10 setObject:v30 forKeyedSubscript:@"NumBss"];

    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v46];
    [v10 setObject:v31 forKeyedSubscript:@"DwellTimePct_24GHZ"];

    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
    [v10 setObject:v32 forKeyedSubscript:@"DwellTimePct_5GHZ"];

    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
    [v10 setObject:v33 forKeyedSubscript:@"NumBss_24GHZ"];

    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
    [v10 setObject:v34 forKeyedSubscript:@"NumBss_5GHZ"];

    [(DeploymentMetricHandler *)self appendJoinsSummaryToMetric:v10 ssid:v11 maxAgeInDays:v47];
    v35 = objc_autoreleasePoolPush();
    v36 = [(DeploymentMetricHandler *)self roamsSummary:v11 bssid:0 maxAgeInDays:v47];
    if (v36)
    {
      v37 = v36;
      [v10 addEntriesFromDictionary:v36];
    }

    objc_autoreleasePoolPop(v35);
    v38 = objc_autoreleasePoolPush();
    v39 = [(DeploymentMetricHandler *)self leavesSummary:v11 bssid:0 maxAgeInDays:v47];
    v16 = v15 != 0;
    v13 = v48;
    if (v39)
    {
      v40 = v39;
      [v10 addEntriesFromDictionary:v39];
    }

    objc_autoreleasePoolPop(v38);

    v12 = v49;
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
      v55 = v11;
      _os_log_impl(&dword_1C8460000, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:networkMo nil for ssid %@", buf, 0x1Cu);
    }
  }

  objc_autoreleasePoolPop(v13);
LABEL_12:

  v41 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)roamsSummary:(id)a3 bssid:(id)a4 maxAgeInDays:(unint64_t)a5
{
  v94 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    context = objc_autoreleasePoolPush();
    v10 = MEMORY[0x1E696AB28];
    v74 = v8;
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.network.ssid == %@", v8];
    v12 = v11;
    v73 = v9;
    if (v9)
    {
      v89[0] = v11;
      v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"source.bssid == %@", v9];
      v89[1] = v13;
      v14 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
      v15 = +[RoamMO entity];
      v16 = [v14 predicateForEntity:v15 newerThan:0 withError:(86400 * a5)];
      v89[2] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:3];
      v18 = [v10 andPredicateWithSubpredicates:v17];
    }

    else
    {
      v88[0] = v11;
      v13 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
      v14 = +[RoamMO entity];
      v15 = [v13 predicateForEntity:v14 newerThan:0 withError:(86400 * a5)];
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
    v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"status == %d", 3766617089];
    v85[1] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    v77 = [v26 andPredicateWithSubpredicates:v28];

    v29 = MEMORY[0x1E696AB28];
    v84[0] = v21;
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"status == %d", 3766617092];
    v84[1] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
    v79 = [v29 andPredicateWithSubpredicates:v31];

    v32 = MEMORY[0x1E696AB28];
    v83[0] = v21;
    v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"status == %d", 3766617091];
    v83[1] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
    v78 = [v32 andPredicateWithSubpredicates:v34];

    v35 = MEMORY[0x1E696AB28];
    v82[0] = v21;
    v36 = [MEMORY[0x1E696AE18] predicateWithFormat:@"status == %d", 3766617163];
    v82[1] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
    v70 = [v35 andPredicateWithSubpredicates:v37];

    v38 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v39 = +[RoamMO entity];
    v71 = [v38 countObjects:v39 withPredicate:v21 withError:0];

    v40 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v41 = +[RoamMO entity];
    v42 = [v40 countObjects:v41 withPredicate:v75 withError:0];

    v43 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v44 = +[RoamMO entity];
    v45 = [v43 countObjects:v44 withPredicate:v76 withError:0];

    v46 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v47 = +[RoamMO entity];
    v48 = [v46 countObjects:v47 withPredicate:v77 withError:0];

    v49 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v50 = +[RoamMO entity];
    v51 = [v49 countObjects:v50 withPredicate:v79 withError:0];

    v52 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v53 = +[RoamMO entity];
    v54 = [v52 countObjects:v53 withPredicate:v78 withError:0];

    v55 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v56 = +[RoamMO entity];
    v57 = [v55 countObjects:v56 withPredicate:v70 withError:0];

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
    v9 = v73;
    v8 = v74;
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

- (id)leavesSummary:(id)a3 bssid:(id)a4 maxAgeInDays:(unint64_t)a5
{
  v112 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    context = objc_autoreleasePoolPush();
    v10 = MEMORY[0x1E696AB28];
    v90 = v8;
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", v8];
    v12 = v11;
    v89 = v9;
    if (v9)
    {
      v107[0] = v11;
      v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.bssid == %@", v9];
      v107[1] = v13;
      v14 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * a5)];
      v107[2] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:3];
      v16 = [v10 andPredicateWithSubpredicates:v15];
    }

    else
    {
      v106[0] = v11;
      v13 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * a5)];
      v106[1] = v13;
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
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1000];
    v101[1] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:2];
    v87 = [v29 andPredicateWithSubpredicates:v31];

    v32 = MEMORY[0x1E696AB28];
    v100[0] = v16;
    v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1006];
    v100[1] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
    v92 = [v32 andPredicateWithSubpredicates:v34];

    v35 = MEMORY[0x1E696AB28];
    v99[0] = v16;
    v36 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1011];
    v99[1] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
    v91 = [v35 andPredicateWithSubpredicates:v37];

    v38 = MEMORY[0x1E696AB28];
    v98[0] = v16;
    v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1013];
    v98[1] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
    v86 = [v38 andPredicateWithSubpredicates:v40];

    v41 = MEMORY[0x1E696AB28];
    v97[0] = v16;
    v42 = [MEMORY[0x1E696AE18] predicateWithFormat:@"reason == %d", 1007];
    v97[1] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
    v44 = [v41 andPredicateWithSubpredicates:v43];

    v45 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v46 = +[WADeviceAnalyticsLeaveRecord entity];
    v85 = [v45 countObjects:v46 withPredicate:v96 withError:0];

    v47 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v48 = +[WADeviceAnalyticsLeaveRecord entity];
    v84 = [v47 countObjects:v48 withPredicate:v95 withError:0];

    v49 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v50 = +[WADeviceAnalyticsLeaveRecord entity];
    v83 = [v49 countObjects:v50 withPredicate:v93 withError:0];

    v51 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v52 = +[WADeviceAnalyticsLeaveRecord entity];
    v82 = [v51 countObjects:v52 withPredicate:v94 withError:0];

    v53 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v54 = +[WADeviceAnalyticsLeaveRecord entity];
    v55 = [v53 countObjects:v54 withPredicate:v87 withError:0];

    v56 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v57 = +[WADeviceAnalyticsLeaveRecord entity];
    v58 = [v56 countObjects:v57 withPredicate:v92 withError:0];

    v59 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v60 = +[WADeviceAnalyticsLeaveRecord entity];
    v81 = [v59 countObjects:v60 withPredicate:v91 withError:0];

    v61 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v62 = +[WADeviceAnalyticsLeaveRecord entity];
    v63 = [v61 countObjects:v62 withPredicate:v86 withError:0];

    v64 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
    v65 = +[WADeviceAnalyticsLeaveRecord entity];
    v66 = [v64 countObjects:v65 withPredicate:v44 withError:0];

    v67 = [MEMORY[0x1E695DF90] dictionary];
    v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v85];
    [v67 setObject:v68 forKeyedSubscript:@"LinkDownReasonUnknown"];

    v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v84];
    [v67 setObject:v69 forKeyedSubscript:@"LinkDownReasonDeauth"];

    v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v83];
    [v67 setObject:v70 forKeyedSubscript:@"LinkDownReasonBeaconLoss"];

    v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v82];
    [v67 setObject:v71 forKeyedSubscript:@"LinkDownReasonSystemSleep"];

    v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v55];
    [v67 setObject:v72 forKeyedSubscript:@"LinkDownReasonTrigDisc"];

    v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v58];
    [v67 setObject:v73 forKeyedSubscript:@"LinkDownReasonThermal"];

    v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v81];
    [v67 setObject:v74 forKeyedSubscript:@"LinkDownReasonControlCenter"];

    v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v63];
    [v67 setObject:v75 forKeyedSubscript:@"LinkDownReasonNetworkTrans"];

    v76 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v66];
    [v67 setObject:v76 forKeyedSubscript:@"LinkDownReasonInternetSharing"];

    v77 = [v67 copy];
    objc_autoreleasePoolPop(context);
    v9 = v89;
    v8 = v90;
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

- (void)appendJoinsSummaryToMetric:(id)a3 ssid:(id)a4 maxAgeInDays:(unint64_t)a5
{
  v84 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
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

  if (!v8)
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
  [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", v9];
  v11 = v69 = v9;
  v79[0] = v11;
  v12 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * a5)];
  v79[1] = v12;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
  v13 = v67 = v8;
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

  v34 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v35 = +[WADeviceAnalyticsJoinRecord entity];
  v61 = [v34 countObjects:v35 withPredicate:v70 withError:0];

  v36 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v37 = +[WADeviceAnalyticsJoinRecord entity];
  v60 = [v36 countObjects:v37 withPredicate:v71 withError:0];

  v38 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v39 = +[WADeviceAnalyticsJoinRecord entity];
  v59 = [v38 countObjects:v39 withPredicate:v64 withError:0];

  v40 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v41 = +[WADeviceAnalyticsJoinRecord entity];
  v42 = [v40 countObjects:v41 withPredicate:v62 withError:0];

  v43 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v44 = +[WADeviceAnalyticsJoinRecord entity];
  v45 = [v43 countObjects:v44 withPredicate:v63 withError:0];

  v46 = [(AnalyticsStoreMOHandler *)self->_storeMOHandler persistentContainer];
  v47 = +[WADeviceAnalyticsJoinRecord entity];
  v48 = [v46 countObjects:v47 withPredicate:v33 withError:0];

  v8 = v67;
  v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v61];
  [v67 setObject:v49 forKeyedSubscript:@"ManualJoinsAttempted"];

  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v60];
  [v67 setObject:v50 forKeyedSubscript:@"ManualJoinsFailed"];

  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v59];
  [v67 setObject:v51 forKeyedSubscript:@"ManualJoinsSuccess"];

  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
  [v67 setObject:v52 forKeyedSubscript:@"AutoJoinsAttempted"];

  v53 = v45;
  v9 = v69;
  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v53];
  [v67 setObject:v54 forKeyedSubscript:@"AutoJoinsFailed"];

  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v48];
  [v67 setObject:v55 forKeyedSubscript:@"AutoJoinsSuccess"];

  objc_autoreleasePoolPop(context);
LABEL_4:

  v56 = *MEMORY[0x1E69E9840];
}

- (BOOL)appendBssAnalyticsToMetric:(id)a3 bssMo:(id)a4 maxAgeInDays:(unint64_t)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
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

  if (!v9)
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
  v11 = [v10 network];
  v12 = [v11 ssid];

  v13 = [v10 bssid];
  v33 = [(DeploymentMetricHandler *)self leavesSummary:v12 bssid:v13 maxAgeInDays:a5];

  v14 = [v10 bssid];
  v32 = [(DeploymentMetricHandler *)self roamsSummary:v12 bssid:v14 maxAgeInDays:a5];

  v15 = [v10 mostRecentBand] == 0;
  v16 = [v10 bssid];
  v17 = [(DeploymentMetricHandler *)self storeMOHandler];
  v18 = [v17 managedObjectContext];
  v19 = [RoamMO dwellTimeInBand:v12 bandIs24:v15 bssid:v16 maxAgeInDays:a5 moc:v18];

  v20 = [v10 parsedBeacon];
  if ([(DeploymentMetricHandler *)self isInternalInstall])
  {
    v21 = [v10 bssid];
    [v8 setObject:v21 forKeyedSubscript:@"Bssid"];
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isEdgeForJoin")}];
  [v8 setObject:v22 forKeyedSubscript:@"IsEdgeForJoin"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isEdgeForLeave")}];
  [v8 setObject:v23 forKeyedSubscript:@"IsEdgeForLeave"];

  v24 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v10, "roamTriggerRssi")}];
  [v8 setObject:v24 forKeyedSubscript:@"RoamTriggerRssi"];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
  [v8 setObject:v25 forKeyedSubscript:@"DwellTime"];

  v26 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v10, "mostRecentBand")}];
  [v8 setObject:v26 forKeyedSubscript:@"Band"];

  [v8 addEntriesFromDictionary:v33];
  [v8 addEntriesFromDictionary:v32];
  [v8 addEntriesFromDictionary:v20];

  objc_autoreleasePoolPop(context);
  v27 = 1;
LABEL_6:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

@end