@interface NANDTelemetry_PerAppDiskSpaceDaily
- (BOOL)_isAfterNotificationCoolDown;
- (id)_entityFailsCatSystemCheck:(id)a3;
- (id)_entityHasNegativeSize:(id)a3;
- (id)_getRawDictErrorStr:(id)a3;
- (id)_populatePerAppDiskSpaceDict;
- (void)_checkRawDictConsistency:(id)a3;
- (void)_sendToCoreAnalytics:(id)a3;
- (void)_tryNotifyUserRawDictErrorString:(id)a3;
- (void)_updateLastUserNotificationDate;
- (void)runActivity;
@end

@implementation NANDTelemetry_PerAppDiskSpaceDaily

- (id)_populatePerAppDiskSpaceDict
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000E89C;
  v31 = sub_10000E8AC;
  v32 = 0;
  if (!objc_opt_class() || !objc_opt_class() || !objc_opt_class())
  {
    v12 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10004A130(v12);
    }

    v3 = 0;
LABEL_17:
    v13 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v3 = objc_opt_new();
  v4 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connecting to STMTelemetryController", buf, 2u);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000E8B4;
  v26[3] = &unk_10009CA58;
  v26[4] = &v27;
  v26[5] = &v33;
  [v3 getTelemetry:v26];
  v5 = 1000;
  do
  {
    v6 = v5;
    usleep(0xF4240u);
    if (*(v34 + 24) == 1 && v28[5])
    {
      v16 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "app space dict generation done", buf, 2u);
      }

      v11 = 0;
      v10 = 1;
      goto LABEL_24;
    }

    v7 = [(NANDTelemetry_Base *)self activityMgr];
    v8 = [v7 shouldDeferXpcActivity];

    v5 = (v6 + 1000);
  }

  while (!v8);
  if (++dword_1000D82A4 >= 4)
  {
    v9 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10004A0AC(v9);
    }

    v10 = 0;
    v11 = 1;
LABEL_24:
    v17 = 1;
    goto LABEL_28;
  }

  v18 = [(NANDTelemetry_Base *)self activityMgr];
  [v18 forceDeferXpcActivity];

  v19 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v38 = dword_1000D82A4;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Asked to defer app space dict generation. %d times today so far.", buf, 8u);
  }

  v10 = 0;
  v17 = 0;
  v11 = 1;
LABEL_28:
  [v3 stopService];
  v20 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Closing connection to StorageDataService", buf, 2u);
  }

  if (!v17)
  {
    goto LABEL_17;
  }

  usleep(0x186A0u);
  if (v11)
  {
    v21 = objc_alloc_init(NSMutableDictionary);
  }

  else
  {
    v21 = v28[5];
  }

  v22 = v21;
  v23 = [NSNumber numberWithUnsignedInt:dword_1000D82A4];
  [v22 setObject:v23 forKeyedSubscript:@"numDefers"];

  v24 = [NSNumber numberWithUnsignedInt:v6];
  [v22 setObject:v24 forKeyedSubscript:@"execMilliseconds"];

  v25 = [NSNumber numberWithUnsignedInt:v10];
  [v22 setObject:v25 forKeyedSubscript:@"finished"];

  v13 = GetiCloudPlanSizeGB();
  if (v13)
  {
    [v22 setObject:v13 forKeyedSubscript:@"icloudPlanSize"];
  }

  dword_1000D82A4 = 0;
  v14 = v22;
LABEL_18:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v14;
}

- (id)_entityHasNegativeSize:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"total"];
  v5 = [v3 objectForKeyedSubscript:@"sizes"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 longLongValue] & 0x8000000000000000) != 0)
  {
    v15 = [NSString stringWithFormat:@"Negative size in app space entity dictionary %@", v3];
    v18 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10004A174(v15, v18);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        v8 = v7;
        v20 = v5;
        v21 = v4;
        v9 = 0;
        v10 = 0;
        v11 = *v23;
        while (2)
        {
          v12 = 0;
          v13 = v9;
          v14 = v10;
          do
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(v6);
            }

            v9 = *(*(&v22 + 1) + 8 * v12);

            v10 = [v6 objectForKeyedSubscript:v9];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 longLongValue] & 0x8000000000000000) != 0)
            {
              v16 = [NSString stringWithFormat:@"Negative size in app space entity dictionary %@", v3];
              v17 = oslog;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                sub_10004A174(v16, v17);
              }

              v15 = v16;

              v5 = v20;
              v4 = v21;
              goto LABEL_21;
            }

            v12 = v12 + 1;
            v13 = v9;
            v14 = v10;
          }

          while (v8 != v12);
          v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }

        v5 = v20;
        v4 = v21;
      }
    }

    v15 = 0;
  }

LABEL_21:

  return v15;
}

- (id)_entityFailsCatSystemCheck:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"total"];
  v5 = [v3 objectForKeyedSubscript:@"sizes"];
  v6 = [v3 objectForKeyedSubscript:@"name"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v6 isEqualToString:@"iOS"])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 longLongValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    v10 = [v5 objectForKeyedSubscript:@"total"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_13;
    }

    v12 = [v5 objectForKeyedSubscript:@"total"];
    v7 = [v12 longLongValue];
  }

  if ((v7 - 0x640000001) > 0xFFFFFFFAFFFFFFFELL)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

LABEL_13:
  v8 = [NSString stringWithFormat:@"Unexpected system category size! Category info: %@", v3];
  v13 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_10004A174(v8, v13);
  }

LABEL_7:

  return v8;
}

- (id)_getRawDictErrorStr:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = v4;
  v29 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v29)
  {
    v31 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v37;
    v10 = &MSURetrievePreviousRestoreDate_ptr;
    v27 = *v37;
    v28 = v6;
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v30 = v11;
        v8 = *(*(&v36 + 1) + 8 * v11);

        v13 = [v6 objectForKeyedSubscript:v8];
        v14 = v10[237];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = [v6 objectForKeyedSubscript:v8];
          v17 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = 0;
            v20 = *v33;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                v22 = v19;
                if (*v33 != v20)
                {
                  objc_enumerationMutation(v16);
                }

                v19 = *(*(&v32 + 1) + 8 * i);

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v23 = [(NANDTelemetry_PerAppDiskSpaceDaily *)self _entityHasNegativeSize:v19];

                  if (v23)
                  {
                    [v31 addObject:v23];
                  }

                  if ([v8 isEqualToString:@"categories"])
                  {
                    v7 = [(NANDTelemetry_PerAppDiskSpaceDaily *)self _entityFailsCatSystemCheck:v19];

                    if (v7)
                    {
                      [v31 addObject:v7];
                    }
                  }

                  else
                  {
                    v7 = v23;
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v18);

            v9 = v27;
            v6 = v28;
          }

          v10 = &MSURetrievePreviousRestoreDate_ptr;
        }

        v11 = v30 + 1;
        v12 = v8;
      }

      while ((v30 + 1) != v29);
      v29 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v29);

    v5 = v31;
  }

  else
  {
    v7 = 0;
  }

  if ([v5 count])
  {
    v24 = [v5 componentsJoinedByString:@"\n"];
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v24;
}

- (void)_updateLastUserNotificationDate
{
  v4 = [(NANDTelemetry_Base *)self stateMgr];
  v2 = +[NSDate now];
  v3 = DateTimeToStr(v2);
  [v4 saveValue:v3 forKey:@"lastUserNotificationDate" doPersist:1];
}

- (BOOL)_isAfterNotificationCoolDown
{
  v3 = [(NANDTelemetry_Base *)self stateMgr];
  v4 = [v3 getValueForKey:@"lastUserNotificationDate"];
  v5 = StringToDateTime(v4);

  if (v5)
  {
    v6 = [v5 dateByAddingTimeInterval:604800.0];
    v2 = +[NSDate now];
    v7 = [v6 compare:v2] == -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = oslog;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v9 = "Do";
    }

    else
    {
      v9 = "Do not";
    }

    if (v5)
    {
      v2 = DateTimeToStr(v5);
      v10 = [v2 UTF8String];
    }

    else
    {
      v10 = "none";
    }

    v12 = 136315394;
    v13 = v9;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s notify user for raw dict error. Previous notification time %s", &v12, 0x16u);
    if (v5)
    {
    }
  }

  return v7;
}

- (void)_tryNotifyUserRawDictErrorString:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_ui() && objc_opt_class() && [(NANDTelemetry_PerAppDiskSpaceDaily *)self _isAfterNotificationCoolDown])
  {
    v5 = objc_alloc_init(RadarDraft);
    [v5 setTitle:@"SpaceForce Telemetry Inconsistent Disk Space Result"];
    v6 = [NSString stringWithFormat:@"Inconsistent result is detect on your device during disk space usage telemetry collection. Inconsistencies:\n\n%@", v4];
    [v5 setProblemDescription:v6];

    v7 = [[RadarComponent alloc] initWithName:@"Storage Management" version:@"iOS" identifier:819298];
    [v5 setComponent:v7];

    [v5 setReproducibility:5];
    [v5 setClassification:6];
    [v5 setDiagnosticExtensionIDs:&off_1000D2F18];
    [v5 setAttachments:0];
    [v5 setAutoDiagnostics:0];
    [v5 setIsUserInitiated:0];
    v8 = +[TapToRadarService shared];
    v12 = 0;
    [v8 createDraft:v5 forProcessNamed:@"SpaceForceTelemetry" withDisplayReason:@"disk space usage calculation is inconsistent" error:&v12];
    v9 = v12;

    v10 = oslog;
    if (v9)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10004A204(v10, v9);
      }
    }

    else
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully created radar draft", buf, 2u);
      }

      [(NANDTelemetry_PerAppDiskSpaceDaily *)self _updateLastUserNotificationDate];
    }
  }
}

- (void)_checkRawDictConsistency:(id)a3
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"finished"];
  v5 = [v4 unsignedIntValue];

  if (v5)
  {
    v6 = [(NANDTelemetry_PerAppDiskSpaceDaily *)self _getRawDictErrorStr:v8];
    if (v6)
    {
      v7 = &off_1000C0008;
    }

    else
    {
      v7 = &off_1000BFFF0;
    }

    [v8 setObject:v7 forKeyedSubscript:@"inconsistent"];
  }
}

- (void)_sendToCoreAnalytics:(id)a3
{
  v4 = a3;
  v3 = objc_autoreleasePoolPush();
  LogStorageUIDatatoCA(v4, 0);
  objc_autoreleasePoolPop(v3);
}

- (void)runActivity
{
  v3 = [(NANDTelemetry_PerAppDiskSpaceDaily *)self _populatePerAppDiskSpaceDict];
  if (v3)
  {
    [(NANDTelemetry_PerAppDiskSpaceDaily *)self _checkRawDictConsistency:v3];
    v4 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [v3 objectForKeyedSubscript:@"execMilliseconds"];
      v7[0] = 67109120;
      v7[1] = [v6 intValue] / 1000;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending app space info to CA. Extraction time %ds", v7, 8u);
    }

    [(NANDTelemetry_PerAppDiskSpaceDaily *)self _sendToCoreAnalytics:v3];
  }
}

@end