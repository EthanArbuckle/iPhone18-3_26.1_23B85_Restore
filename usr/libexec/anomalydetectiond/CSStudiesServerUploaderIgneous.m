@interface CSStudiesServerUploaderIgneous
- (BOOL)readManifestFromFile;
- (BOOL)startMonitoringWithError:(id *)a3;
- (CSStudiesServerUploaderIgneous)initWithSpoolerFolder:(id)a3 serverConfiguration:(id)a4 retentionPeriodInSeconds:(unint64_t)a5 outOfBandMetadataTimeout:(double)a6 defaultsKeyPostfix:(id)a7;
- (unsigned)checkWithManifest:(id)a3;
- (void)dealloc;
- (void)updateParametersFromDefaultsConfig;
@end

@implementation CSStudiesServerUploaderIgneous

- (CSStudiesServerUploaderIgneous)initWithSpoolerFolder:(id)a3 serverConfiguration:(id)a4 retentionPeriodInSeconds:(unint64_t)a5 outOfBandMetadataTimeout:(double)a6 defaultsKeyPostfix:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v28.receiver = self;
  v28.super_class = CSStudiesServerUploaderIgneous;
  v15 = [(CSStudiesServerUploader *)&v28 initWithSpoolerFolder:v12 serverConfiguration:v13 registrationPeriodInSeconds:0 retentionPeriodInSeconds:a5 outOfBandMetadataTimeout:v14 defaultsKeyPostfix:a6];
  v16 = v15;
  if (v15)
  {
    [(CSStudiesServerUploader *)v15 setRegistered:0];
    [(CSStudiesServerUploader *)v16 setMonitoring:0];
    [(CSStudiesServerUploader *)v16 setSubmitter:0];
    [(CSStudiesServerUploaderIgneous *)v16 setReadManifestTimestamp:0.0];
    [(CSStudiesServerUploaderIgneous *)v16 updateParametersFromDefaultsConfig];
    v17 = objc_alloc_init(NSMutableArray);
    eventsInManifest = v16->_eventsInManifest;
    v16->_eventsInManifest = v17;

    if (qword_1004568D8 != -1)
    {
      sub_100358574();
    }

    v19 = qword_1004568E0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [(CSStudiesServerUploader *)v16 registered];
      v21 = [(CSStudiesServerUploader *)v16 monitoring];
      [(CSStudiesServerUploaderIgneous *)v16 harvestTimeWindowSec];
      v23 = v22;
      [(CSStudiesServerUploaderIgneous *)v16 readManifestTimeoutSec];
      v25 = v24;
      v26 = [(CSStudiesServerUploader *)v16 retentionPeriodInSeconds];
      *buf = 67110144;
      v30 = v20;
      v31 = 1024;
      v32 = v21;
      v33 = 2048;
      v34 = v23;
      v35 = 2048;
      v36 = v25;
      v37 = 2048;
      v38 = v26;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Initialized Igneous uploader: registered %d, monitoring %d, harvestTimeWindowSec %.0f, readManifestTimeoutSec %.0f, retentionPeriod %llu", buf, 0x2Cu);
    }
  }

  return v16;
}

- (void)updateParametersFromDefaultsConfig
{
  v5 = +[CSPersistentConfiguration sharedConfiguration];
  [v5 doubleForKey:@"CSIgneousHarvestTimeWindowSec"];
  if (v3 <= 0.0)
  {
    v3 = 90.0;
  }

  [(CSStudiesServerUploaderIgneous *)self setHarvestTimeWindowSec:v3];
  [v5 doubleForKey:@"CSIgneousReadManifestTimeoutSec"];
  if (v4 <= 0.0)
  {
    v4 = 900.0;
  }

  [(CSStudiesServerUploaderIgneous *)self setReadManifestTimeoutSec:v4];
}

- (BOOL)startMonitoringWithError:(id *)a3
{
  if ([(CSStudiesServerUploader *)self monitoring])
  {
LABEL_10:
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = sub_10001B724(self, a3, @"starter");
  if (v5)
  {
    objc_initWeak(&location, self);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000239F0;
    v32[3] = &unk_100413240;
    v32[4] = self;
    v6 = objc_retainBlock(v32);
    v7 = [CSFolderMonitor alloc];
    v8 = [(CSStudiesServerUploader *)self folderURL];
    v9 = [v8 path];
    v10 = dispatch_get_global_queue(0, 0);
    v11 = [(CSStudiesServerUploader *)self postfix];
    v12 = [(CSFolderMonitor *)v7 initWithFolder:v9 fileExtension:@"metadata" queue:v10 postfix:v11 andAction:v6];
    [(CSStudiesServerUploaderIgneous *)self setFilePickMonitor:v12];

    v13 = +[CSPersistentConfiguration sharedConfiguration];
    v14 = [v13 BOOLForKey:@"UploaderIndigenousXPCActivity"];

    if (v14)
    {
      v15 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUnlessOpen allowBattery:1 periodInseconds:XPC_ACTIVITY_INTERVAL_1_HOUR];
      v16 = [(CSStudiesServerUploaderIgneous *)self filePickMonitor];
      [v16 setupRecurringScanningWithConfiguration:v15 runNow:1];
    }

    else
    {
      v15 = [(CSStudiesServerUploaderIgneous *)self filePickMonitor];
      [(CSFolderMonitorBackgroundScanningConfiguration *)v15 registerForFolderMonitorActivity];
    }

    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100023F1C;
    v29 = &unk_1004130A8;
    objc_copyWeak(&v31, &location);
    v30 = self;
    v17 = objc_retainBlock(&v26);
    v18 = [CSFolderMonitor alloc];
    v19 = [(CSStudiesServerUploader *)self folderURL:v26];
    v20 = [v19 path];
    v21 = [(CSStudiesServerUploader *)self postfix];
    v22 = [(CSFolderMonitor *)v18 initWithFolder:v20 fileExtension:@"upload" queue:v10 postfix:v21 andAction:v17];
    [(CSStudiesServerUploader *)self setSubmitMonitor:v22];

    if (v14)
    {
      v23 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUnlessOpen allowBattery:1 periodInseconds:XPC_ACTIVITY_INTERVAL_1_HOUR];
      v24 = [(CSStudiesServerUploader *)self submitMonitor];
      [v24 setupRecurringScanningWithConfiguration:v23 runNow:1];
    }

    else
    {
      v23 = [(CSStudiesServerUploader *)self submitMonitor];
      [(CSFolderMonitorBackgroundScanningConfiguration *)v23 registerForFolderMonitorActivity];
    }

    [(CSStudiesServerUploader *)self setMonitoring:1];
    objc_destroyWeak(&v31);

    objc_destroyWeak(&location);
    goto LABEL_10;
  }

  return v5;
}

- (BOOL)readManifestFromFile
{
  Current = CFAbsoluteTimeGetCurrent();
  [(CSStudiesServerUploaderIgneous *)self readManifestTimestamp];
  if (Current > v4)
  {
    [(CSStudiesServerUploaderIgneous *)self readManifestTimestamp];
    v6 = Current - v5;
    [(CSStudiesServerUploaderIgneous *)self readManifestTimeoutSec];
    if (v6 < v7)
    {
      return 1;
    }
  }

  v9 = container_system_group_path_for_identifier();
  if (v9)
  {
    v10 = v9;
    v41 = [NSURL fileURLWithFileSystemRepresentation:v9 isDirectory:1 relativeToURL:0];
    v11 = [v41 path];
    v12 = [NSString stringWithUTF8String:"eq_history_manifest_v1.txt"];
    v13 = [v11 stringByAppendingPathComponent:v12];

    free(v10);
    v40 = v13;
    v14 = [NSData dataWithContentsOfFile:v13];
    if (!v14)
    {
      if (qword_1004568D8 != -1)
      {
        sub_10035859C();
      }

      v32 = qword_1004568E0;
      if (os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43[0] = v13;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Unable to open manifest file %@", buf, 0xCu);
      }

      v8 = 0;
      goto LABEL_61;
    }

    v15 = [NSJSONSerialization JSONObjectWithData:v14 options:0 error:0];
    v38 = v15;
    if (!v15)
    {
      if (qword_1004568D8 != -1)
      {
        sub_10035859C();
      }

      v33 = qword_1004568E0;
      if (os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43[0] = v13;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Unable to read manifest file %@", buf, 0xCu);
      }

      v8 = 0;
      goto LABEL_60;
    }

    v16 = [v15 objectForKey:@"manifest"];
    v37 = v16;
    if (v16)
    {
      v39 = [v16 objectForKey:@"messages"];
      if (v39)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CSStudiesServerUploaderIgneous *)self setReadManifestTimestamp:Current];
          [(NSMutableArray *)self->_eventsInManifest removeAllObjects];
          v17 = [v39 count];
          if (qword_1004568D8 != -1)
          {
            sub_10035859C();
          }

          v18 = qword_1004568E0;
          if (os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v43[0]) = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Manifest event count %d", buf, 8u);
          }

          if (v17)
          {
            v19 = 0;
            while (1)
            {
              v20 = [v39 objectAtIndexedSubscript:v19];
              v21 = [v20 objectForKey:@"t"];
              if (!v21)
              {
                goto LABEL_28;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_28;
              }

              v22 = [v20 objectForKey:@"c"];
              if (!v22)
              {
                break;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v25 = v22;
                v22 = 0;
                goto LABEL_26;
              }

              if ([v22 count] == 2)
              {
                v23 = [v22 objectAtIndexedSubscript:0];
                [v23 doubleValue];
                v24 = [v22 objectAtIndexedSubscript:1];
                [v24 doubleValue];

                v25 = [v20 objectForKey:@"r"];
                if (v25)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v26 = objc_alloc_init(CSIgneousAnomalyEvent);
                    [v21 doubleValue];
                    [(CSStudiesServerUploaderIgneous *)self utcToIosSeconds:?];
                    [(CSIgneousAnomalyEvent *)v26 setTimestamp:?];
                    v27 = [v22 objectAtIndexedSubscript:0];
                    [v27 doubleValue];
                    [(CSIgneousAnomalyEvent *)v26 setLat:?];

                    v28 = [v22 objectAtIndexedSubscript:1];
                    [v28 doubleValue];
                    [(CSIgneousAnomalyEvent *)v26 setLon:?];

                    [v25 doubleValue];
                    [(CSIgneousAnomalyEvent *)v26 setRadius:?];
                    [(NSMutableArray *)self->_eventsInManifest addObject:v26];
                  }
                }

                goto LABEL_26;
              }

LABEL_27:

LABEL_28:
              if (v17 == ++v19)
              {
                goto LABEL_29;
              }
            }

            v25 = 0;
LABEL_26:

            goto LABEL_27;
          }

LABEL_29:
          if (qword_1004568D8 != -1)
          {
            sub_100358574();
          }

          v29 = qword_1004568E0;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [(NSMutableArray *)self->_eventsInManifest count];
            *buf = 67109378;
            LODWORD(v43[0]) = v30;
            WORD2(v43[0]) = 2112;
            *(v43 + 6) = v40;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Finished reading %d events from manifest file %@", buf, 0x12u);
          }

          v8 = 1;
          goto LABEL_59;
        }
      }

      if (qword_1004568D8 != -1)
      {
        sub_10035859C();
      }

      v34 = qword_1004568E0;
      if (!os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
      {
LABEL_58:
        v8 = 0;
LABEL_59:

LABEL_60:
LABEL_61:

        return v8;
      }

      *buf = 0;
      v35 = "No event reported in the manifest";
    }

    else
    {
      if (qword_1004568D8 != -1)
      {
        sub_10035859C();
      }

      v34 = qword_1004568E0;
      if (!os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_58;
      }

      *buf = 0;
      v35 = "Manifest is empty";
    }

    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, v35, buf, 2u);
    goto LABEL_58;
  }

  if (qword_1004568D8 != -1)
  {
    sub_10035859C();
  }

  v31 = qword_1004568E0;
  if (os_log_type_enabled(qword_1004568E0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Group container not available", buf, 2u);
  }

  return 0;
}

- (unsigned)checkWithManifest:(id)a3
{
  v4 = [a3 keyValuePairs];
  v5 = [NSDictionary dictionaryWithDictionary:v4];

  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = [v5 objectForKey:@"apTriggerTimestamp"];
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = [v5 objectForKey:@"coarseLat"];
  if (!v7)
  {

    goto LABEL_25;
  }

  v8 = [v5 objectForKey:@"coarseLong"];

  if (!v8)
  {
LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  v9 = [v5 objectForKey:@"apTriggerTimestamp"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v5 objectForKey:@"coarseLat"];
  [v12 doubleValue];

  v13 = [v5 objectForKey:@"coarseLong"];
  [v13 doubleValue];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = self->_eventsInManifest;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v15)
  {
    v16 = *v37;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v36 + 1) + 8 * i) timestamp];
        if (v18 > v11)
        {

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v20 = self->_eventsInManifest;
          v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v21)
          {
            v22 = *v33;
            while (2)
            {
              for (j = 0; j != v21; j = j + 1)
              {
                if (*v33 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v32 + 1) + 8 * j);
                [v24 timestamp];
                v26 = v25;
                [(CSStudiesServerUploaderIgneous *)self harvestTimeWindowSec];
                if (vabdd_f64(v26, v11) <= v27)
                {
                  [v24 lat];
                  [v24 lon];
                  GEOCalculateDistanceHighPrecision();
                  v29 = v28;
                  [v24 radius];
                  if (v29 * 0.001 < v30)
                  {

                    v19 = 2;
                    goto LABEL_26;
                  }
                }
              }

              v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          goto LABEL_25;
        }
      }

      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_26:

  return v19;
}

- (void)dealloc
{
  v3 = [(CSStudiesServerUploaderIgneous *)self filePickMonitor];
  [v3 stopRecurringScanning];

  v4 = [(CSStudiesServerUploader *)self submitMonitor];
  [v4 stopRecurringScanning];

  v5.receiver = self;
  v5.super_class = CSStudiesServerUploaderIgneous;
  [(CSStudiesServerUploader *)&v5 dealloc];
}

@end