@interface ASPCarryLogStateMachine
- (ASPCarryLogStateMachine)initWithStateManager:(id)manager TaskingManager:(id)taskingManager NANDDriver:(id)driver UploadDriver:(id)uploadDriver WorkDirectory:(id)directory;
- (BOOL)_DATaskingNotInHist;
- (BOOL)_activeLegacyTaskingDisabled;
- (BOOL)_activeTaskingExpired;
- (BOOL)_canInspectNewDATasking;
- (BOOL)_canJoinTaskingPerStatsDriver:(id)driver;
- (BOOL)_checkSnBuildVariantMatch;
- (BOOL)_curTaskingisActiveOnServer;
- (BOOL)_hasActiveTasking;
- (BOOL)_hasPendingDSReplyTasking;
- (BOOL)_isAfterTaskingInspectionCoolDown;
- (BOOL)_passDATaskingCriteria:(id)criteria;
- (id)_genUniqueDeviceId;
- (id)_getDeviceId;
- (void)_addDATaskingToHist;
- (void)_checkLegacyUI;
- (void)_cleanUpAfterTasking;
- (void)_cleanUpWorkDir;
- (void)_deleteUploadInfo;
- (void)_markDATaskingDSReply_Pending;
- (void)_markTaskingActive;
- (void)_resetDaemonUserDefaults;
- (void)_setNextTaskingInspectionMinTime;
- (void)_tryActivateTasking;
- (void)_unmarkCurrentTasking;
- (void)bootCheck;
- (void)dailyCheckWithStatsProvider:(id)provider;
@end

@implementation ASPCarryLogStateMachine

- (ASPCarryLogStateMachine)initWithStateManager:(id)manager TaskingManager:(id)taskingManager NANDDriver:(id)driver UploadDriver:(id)uploadDriver WorkDirectory:(id)directory
{
  managerCopy = manager;
  taskingManagerCopy = taskingManager;
  driverCopy = driver;
  uploadDriverCopy = uploadDriver;
  directoryCopy = directory;
  v32.receiver = self;
  v32.super_class = ASPCarryLogStateMachine;
  v16 = [(ASPCarryLogStateMachine *)&v32 init];
  if (!v16)
  {
    goto LABEL_20;
  }

  v28 = driverCopy;
  v17 = [managerCopy getValueForKey:@"tasking_id_history" expectedType:3];
  v18 = [managerCopy getValueForKey:@"current_tasking_info" expectedType:2];
  v16->_isInternal = checkInternalBuild(managerCopy);
  objc_storeStrong(&v16->_stateMgr, manager);
  if ((validateCurTaskingInfo(v18) & 1) == 0)
  {

    [managerCopy deleteKey:@"current_tasking_info"];
    v18 = 0;
  }

  *&v16->_isLegacyUI_IOLogEnabled = 0;
  [(ASPCarryLogStateMachine *)v16 _checkLegacyUI];
  if (v18)
  {
    v19 = [[NSMutableDictionary alloc] initWithDictionary:v18 copyItems:1];
  }

  else
  {
    v19 = objc_alloc_init(NSMutableDictionary);
  }

  currentTaskingInfo = v16->_currentTaskingInfo;
  v16->_currentTaskingInfo = v19;

  if (v17)
  {
    v21 = [[NSMutableArray alloc] initWithArray:v17 copyItems:1];
  }

  else
  {
    v21 = objc_alloc_init(NSMutableArray);
  }

  taskingIdHistory = v16->_taskingIdHistory;
  v16->_taskingIdHistory = v21;

  objc_storeStrong(&v16->_DATaskingMgr, taskingManager);
  if (v16->_isLegacyUI_TaskingDisabled)
  {
    v16->_taskingDuration = -1;
    v16->_taskingSizeLimit = -1;
  }

  else
  {
    if ([(ASPCarryLogStateMachine *)v16 isLegacyUI_IOLogEnabled])
    {
      *&v16->_taskingDuration = xmmword_1000943B0;
      DATaskingID = v16->_DATaskingID;
      v16->_DATaskingID = @"TASKING_LEGACY_INT_IOS";
      goto LABEL_17;
    }

    v16->_taskingDuration = [taskingManagerCopy getTaskingDurationInSeconds];
    v16->_taskingSizeLimit = [taskingManagerCopy getTaskingSizeLimitInBytes];
    if ((v16->_taskingDuration & 0x8000000000000000) == 0)
    {
      getTaskingID = [taskingManagerCopy getTaskingID];
      DATaskingID = v16->_DATaskingID;
      v16->_DATaskingID = getTaskingID;
      goto LABEL_17;
    }
  }

  DATaskingID = v16->_DATaskingID;
  v16->_DATaskingID = 0;
LABEL_17:

  objc_storeStrong(&v16->_nandDriver, driver);
  objc_storeStrong(&v16->_uploadDriver, uploadDriver);
  objc_storeStrong(&v16->_workDir, directory);
  v25 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ASPCarryLog state machine initialized", buf, 2u);
  }

  v26 = v16;

  driverCopy = v28;
LABEL_20:

  return v16;
}

- (void)_checkLegacyUI
{
  if ([(ASPCarryLogStateMachine *)self isInternalBuild])
  {
    stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
    v8 = [stateMgr getValueForKey:@"enable_iolog_collection" inDomain:@"/var/mobile/Library/Preferences/com.apple.nandCarryLogs.plist" expectedType:1];

    stateMgr2 = [(ASPCarryLogStateMachine *)self stateMgr];
    v5 = [stateMgr2 getValueForKey:@"enable_iolog_tasking" inDomain:@"/var/mobile/Library/Preferences/com.apple.nandCarryLogs.plist" expectedType:1];

    if (v8)
    {
      v6 = [v8 intValue] == 1;
    }

    else
    {
      v6 = 0;
    }

    [(ASPCarryLogStateMachine *)self setIsLegacyUI_IOLogEnabled:v6];
    if (v5)
    {
      v7 = [v5 intValue] != 1;
    }

    else
    {
      v7 = 0;
    }

    [(ASPCarryLogStateMachine *)self setIsLegacyUI_TaskingDisabled:v7];
  }

  else
  {
    [(ASPCarryLogStateMachine *)self setIsLegacyUI_IOLogEnabled:0];

    [(ASPCarryLogStateMachine *)self setIsLegacyUI_TaskingDisabled:0];
  }
}

- (id)_genUniqueDeviceId
{
  v3 = +[NSUUID UUID];
  uUIDString = [v3 UUIDString];
  v5 = +[NSDate date];
  dATaskingID = [(ASPCarryLogStateMachine *)self DATaskingID];
  v7 = +[NSUUID UUID];
  uUIDString2 = [v7 UUIDString];
  v9 = [NSString stringWithFormat:@"%@%@%@%@", uUIDString, v5, dATaskingID, uUIDString2];

  v10 = [NSMutableString stringWithCapacity:40];
  CC_SHA1([v9 UTF8String], objc_msgSend(v9, "length"), md);
  for (i = 0; i != 20; ++i)
  {
    [v10 appendFormat:@"%02x", md[i]];
  }

  v12 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    dATaskingID2 = [(ASPCarryLogStateMachine *)self DATaskingID];
    *buf = 136315394;
    uTF8String = [dATaskingID2 UTF8String];
    v18 = 2080;
    uTF8String2 = [v10 UTF8String];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "TaskingId: %s, Generated unique deviceId: %s", buf, 0x16u);
  }

  return v10;
}

- (id)_getDeviceId
{
  if (![(ASPCarryLogStateMachine *)self isInternalBuild]|| (getDeviceSerialNumber(), (_genUniqueDeviceId = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _genUniqueDeviceId = [(ASPCarryLogStateMachine *)self _genUniqueDeviceId];
  }

  return _genUniqueDeviceId;
}

- (BOOL)_hasActiveTasking
{
  currentTaskingInfo = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  v3 = [currentTaskingInfo objectForKeyedSubscript:@"dsreply_pending"];
  v4 = [v3 isEqualToString:@"no"];

  return v4;
}

- (BOOL)_hasPendingDSReplyTasking
{
  currentTaskingInfo = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  v3 = [currentTaskingInfo objectForKeyedSubscript:@"dsreply_pending"];
  v4 = [v3 isEqualToString:@"yes"];

  return v4;
}

- (void)_markDATaskingDSReply_Pending
{
  currentTaskingInfo = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  dATaskingID = [(ASPCarryLogStateMachine *)self DATaskingID];
  [currentTaskingInfo setValue:dATaskingID forKey:@"id"];

  currentTaskingInfo2 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  v6 = [NSNumber numberWithLongLong:[(ASPCarryLogStateMachine *)self taskingSizeLimit]];
  [currentTaskingInfo2 setValue:v6 forKey:@"upload_size_limit_bytes"];

  currentTaskingInfo3 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  [currentTaskingInfo3 setValue:@"yes" forKey:@"dsreply_pending"];

  currentTaskingInfo4 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  _getDeviceId = [(ASPCarryLogStateMachine *)self _getDeviceId];
  [currentTaskingInfo4 setValue:_getDeviceId forKey:@"device_id"];

  stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
  currentTaskingInfo5 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  [stateMgr setValue:currentTaskingInfo5 forKey:@"current_tasking_info"];
}

- (void)_markTaskingActive
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:[(ASPCarryLogStateMachine *)self taskingDuration]];
  v17 = DateTimeToStr(v3);

  currentTaskingInfo = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  v5 = [currentTaskingInfo objectForKeyedSubscript:@"id"];

  v6 = uploadInfoKeyFromTaskingId(v5);
  currentTaskingInfo2 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  [currentTaskingInfo2 setValue:v17 forKey:@"endtime"];

  currentTaskingInfo3 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  [currentTaskingInfo3 setValue:@"no" forKey:@"dsreply_pending"];

  currentTaskingInfo4 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  v10 = [NSNumber numberWithLongLong:[(ASPCarryLogStateMachine *)self taskingSizeLimit]];
  [currentTaskingInfo4 setValue:v10 forKey:@"upload_size_limit_bytes"];

  stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
  [stateMgr setValue:&off_1000D2D70 forKey:v6];

  stateMgr2 = [(ASPCarryLogStateMachine *)self stateMgr];
  currentTaskingInfo5 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  [stateMgr2 setValue:currentTaskingInfo5 forKey:@"current_tasking_info"];

  stateMgr3 = [(ASPCarryLogStateMachine *)self stateMgr];
  v15 = currentDateTimeStr();
  [stateMgr3 setValue:v15 forKey:@"last_extract_time"];

  stateMgr4 = [(ASPCarryLogStateMachine *)self stateMgr];
  setTaskingInfoToLegacyUIDomain(stateMgr4, v5, v17, 0, @"None", [(ASPCarryLogStateMachine *)self isInternalBuild]);
}

- (void)_unmarkCurrentTasking
{
  currentTaskingInfo = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  v4 = [currentTaskingInfo objectForKeyedSubscript:@"id"];
  v9 = uploadInfoKeyFromTaskingId(v4);

  stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
  [stateMgr deleteKey:v9];

  stateMgr2 = [(ASPCarryLogStateMachine *)self stateMgr];
  [stateMgr2 deleteKey:@"current_tasking_info"];

  stateMgr3 = [(ASPCarryLogStateMachine *)self stateMgr];
  [stateMgr3 deleteKey:@"last_extract_time"];

  currentTaskingInfo2 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  [currentTaskingInfo2 removeAllObjects];
}

- (BOOL)_activeTaskingExpired
{
  if (![(ASPCarryLogStateMachine *)self isLegacyUI_TaskingDisabled]&& ![(ASPCarryLogStateMachine *)self _activeLegacyTaskingDisabled])
  {
    v4 = +[NSDate date];
    currentTaskingInfo = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
    v6 = [currentTaskingInfo objectForKeyedSubscript:@"endtime"];
    v7 = StringToDateTime(v6);

    currentTaskingInfo2 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
    v9 = [currentTaskingInfo2 objectForKeyedSubscript:@"upload_size_limit_bytes"];

    currentTaskingInfo3 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
    v11 = [currentTaskingInfo3 objectForKeyedSubscript:@"id"];
    v12 = uploadInfoKeyFromTaskingId(v11);

    stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
    v14 = [stateMgr getValueForKey:v12 expectedType:2];

    v15 = [v14 objectForKeyedSubscript:@"total_upload_size"];
    v16 = [v14 objectForKeyedSubscript:@"enough_disk_space"];
    if (!v7 || [v4 compare:v7] != -1)
    {
      goto LABEL_6;
    }

    objc_opt_class();
    LOBYTE(v3) = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v9)
    {
      goto LABEL_7;
    }

    longLongValue = [v15 longLongValue];
    if (longLongValue < [v9 longLongValue] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v16, "BOOLValue"))
    {
      v3 = ![(ASPCarryLogStateMachine *)self _curTaskingisActiveOnServer];
    }

    else
    {
LABEL_6:
      LOBYTE(v3) = 1;
    }

LABEL_7:

    return v3;
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (BOOL)_curTaskingisActiveOnServer
{
  currentTaskingInfo = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  v4 = [currentTaskingInfo objectForKeyedSubscript:@"id"];

  currentTaskingInfo2 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  v6 = [currentTaskingInfo2 objectForKeyedSubscript:@"device_id"];

  v7 = 0;
  if (v4 && v6)
  {
    if (os_variant_has_internal_content())
    {
      stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
      v9 = [stateMgr getValueForKey:@"test_force_ds_reply_tasking_continue" expectedType:0];

      if (v9 && ([&off_1000D2D98 objectForKey:v9], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
      {
        v11 = [&off_1000D2D98 objectForKeyedSubscript:v9];
        unsignedIntValue = [v11 unsignedIntValue];

        if (unsignedIntValue != 3)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    uploadDriver = [(ASPCarryLogStateMachine *)self uploadDriver];
    unsignedIntValue = [uploadDriver allowToContinueTaskingId:v4 DeviceId:v6];

LABEL_10:
    v7 = unsignedIntValue != 0;
  }

  return v7;
}

- (BOOL)_activeLegacyTaskingDisabled
{
  if ([(ASPCarryLogStateMachine *)self isInternalBuild])
  {
    currentTaskingInfo = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
    v4 = [currentTaskingInfo objectForKeyedSubscript:@"id"];

    if ([v4 isEqualToString:@"TASKING_LEGACY_INT_IOS"])
    {
      v5 = ![(ASPCarryLogStateMachine *)self isLegacyUI_IOLogEnabled];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_DATaskingNotInHist
{
  dATaskingID = [(ASPCarryLogStateMachine *)self DATaskingID];

  if (dATaskingID)
  {
    taskingIdHistory = [(ASPCarryLogStateMachine *)self taskingIdHistory];
    dATaskingID2 = [(ASPCarryLogStateMachine *)self DATaskingID];
    v6 = [taskingIdHistory containsObject:dATaskingID2] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v7 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100049F7C(dATaskingID == 0, v6, v7);
  }

  return v6;
}

- (BOOL)_isAfterTaskingInspectionCoolDown
{
  stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
  v3 = [stateMgr getValueForKey:@"next_tasking_inspection_time" expectedType:0];

  if (v3)
  {
    v4 = StringToDateTime(v3);
    v5 = +[NSDate date];
    v6 = [v4 compare:v5] == -1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_setNextTaskingInspectionMinTime
{
  v5 = [NSDate dateWithTimeIntervalSinceNow:2592000.0];
  stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
  v4 = DateTimeToStr(v5);
  [stateMgr setValue:v4 forKey:@"next_tasking_inspection_time"];
}

- (BOOL)_canInspectNewDATasking
{
  if ([(ASPCarryLogStateMachine *)self isInternalBuild])
  {
    goto LABEL_4;
  }

  _isAfterTaskingInspectionCoolDown = [(ASPCarryLogStateMachine *)self _isAfterTaskingInspectionCoolDown];
  if (_isAfterTaskingInspectionCoolDown)
  {
    [(ASPCarryLogStateMachine *)self _setNextTaskingInspectionMinTime];
LABEL_4:
    LOBYTE(_isAfterTaskingInspectionCoolDown) = 1;
  }

  return _isAfterTaskingInspectionCoolDown;
}

- (BOOL)_passDATaskingCriteria:(id)criteria
{
  criteriaCopy = criteria;
  if ([(ASPCarryLogStateMachine *)self isLegacyUI_IOLogEnabled])
  {
    v5 = 1;
  }

  else
  {
    dATaskingMgr = [(ASPCarryLogStateMachine *)self DATaskingMgr];
    if (dATaskingMgr)
    {
      dATaskingMgr2 = [(ASPCarryLogStateMachine *)self DATaskingMgr];
      v5 = [dATaskingMgr2 evaluateTaskingCriteria:criteriaCopy doWhiteListCheck:{-[ASPCarryLogStateMachine isInternalBuild](self, "isInternalBuild") ^ 1}];
    }

    else
    {
      v5 = 0;
    }
  }

  v8 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v9 = "PASS";
    }

    else
    {
      v9 = "FAIL";
    }

    v10 = v8;
    dATaskingMgr3 = [(ASPCarryLogStateMachine *)self DATaskingMgr];
    getTaskingID = [dATaskingMgr3 getTaskingID];
    v14 = 136315394;
    v15 = v9;
    v16 = 2080;
    uTF8String = [getTaskingID UTF8String];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s criteria for tasking id %s", &v14, 0x16u);
  }

  return v5;
}

- (void)_addDATaskingToHist
{
  if (![(ASPCarryLogStateMachine *)self isLegacyUI_IOLogEnabled])
  {
    taskingIdHistory = [(ASPCarryLogStateMachine *)self taskingIdHistory];
    dATaskingID = [(ASPCarryLogStateMachine *)self DATaskingID];
    [taskingIdHistory addObject:dATaskingID];

    taskingIdHistory2 = [(ASPCarryLogStateMachine *)self taskingIdHistory];
    v6 = [taskingIdHistory2 count];

    if (v6 >= 0xD)
    {
      do
      {
        taskingIdHistory3 = [(ASPCarryLogStateMachine *)self taskingIdHistory];
        [taskingIdHistory3 removeObjectAtIndex:0];

        taskingIdHistory4 = [(ASPCarryLogStateMachine *)self taskingIdHistory];
        v9 = [taskingIdHistory4 count];
      }

      while (v9 > 0xC);
    }

    stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
    taskingIdHistory5 = [(ASPCarryLogStateMachine *)self taskingIdHistory];
    [stateMgr setValue:taskingIdHistory5 forKey:@"tasking_id_history"];
  }
}

- (BOOL)_canJoinTaskingPerStatsDriver:(id)driver
{
  driverCopy = driver;
  v5 = [(ASPCarryLogStateMachine *)self isInternalBuild]|| !diskFreeSpaceBelowLimit(0x80000000uLL);
  if (![(ASPCarryLogStateMachine *)self _DATaskingNotInHist])
  {
    LOBYTE(v5) = 0;
    goto LABEL_15;
  }

  if ([(ASPCarryLogStateMachine *)self _canInspectNewDATasking])
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    if ([(ASPCarryLogStateMachine *)self _passDATaskingCriteria:driverCopy])
    {
      [(ASPCarryLogStateMachine *)self _markDATaskingDSReply_Pending];
      LOBYTE(v5) = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v6 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DA tasking inspection at cool down", &v12, 2u);
    }
  }

  LOBYTE(v5) = 0;
LABEL_13:
  [(ASPCarryLogStateMachine *)self _addDATaskingToHist];
  v7 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    dATaskingID = [(ASPCarryLogStateMachine *)self DATaskingID];
    uTF8String = [dATaskingID UTF8String];
    v12 = 136315138;
    v13 = uTF8String;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "TaskingId %s added to history.\n", &v12, 0xCu);
  }

LABEL_15:

  return v5;
}

- (void)_tryActivateTasking
{
  currentTaskingInfo = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
  v4 = [currentTaskingInfo objectForKeyedSubscript:@"id"];
  uTF8String = [v4 UTF8String];

  if (!os_variant_has_internal_content())
  {
    goto LABEL_7;
  }

  stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
  v7 = [stateMgr getValueForKey:@"test_force_ds_reply" expectedType:0];

  if (!v7 || ([&off_1000D2DC0 objectForKey:v7], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {

    goto LABEL_7;
  }

  v9 = [&off_1000D2DC0 objectForKeyedSubscript:v7];
  unsignedIntValue = [v9 unsignedIntValue];

  if (unsignedIntValue == 3)
  {
LABEL_7:
    uploadDriver = [(ASPCarryLogStateMachine *)self uploadDriver];
    currentTaskingInfo2 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
    v13 = [currentTaskingInfo2 objectForKeyedSubscript:@"id"];
    currentTaskingInfo3 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
    v15 = [currentTaskingInfo3 objectForKeyedSubscript:@"device_id"];
    unsignedIntValue = [uploadDriver allowToParticipateTaskingId:v13 DeviceId:v15];
  }

  v16 = oslog;
  if (unsignedIntValue)
  {
    if (unsignedIntValue == 2)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = uTF8String;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "DA taskingId %s pending decision server reply", &v17, 0xCu);
      }
    }

    else if (unsignedIntValue == 1)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = uTF8String;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "DA taskingId %s permitted by decision server", &v17, 0xCu);
      }

      [(ASPCarryLogStateMachine *)self registerIOLoggingXPCforInternalBuild:[(ASPCarryLogStateMachine *)self isInternalBuild]];
      [(ASPCarryLogStateMachine *)self _markTaskingActive];
    }

    else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10004A024(uTF8String, unsignedIntValue, v16);
    }
  }

  else
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = uTF8String;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "DA taskingId %s denied by decision server", &v17, 0xCu);
    }

    [(ASPCarryLogStateMachine *)self _unmarkCurrentTasking];
  }
}

- (void)_cleanUpAfterTasking
{
  workDir = [(ASPCarryLogStateMachine *)self workDir];
  v7 = [workDir stringByAppendingPathComponent:@"iolog.iolog"];

  nandDriver = [(ASPCarryLogStateMachine *)self nandDriver];
  [nandDriver iolog_disable];

  nandDriver2 = [(ASPCarryLogStateMachine *)self nandDriver];
  [nandDriver2 iolog_export:v7 max_export_size:0];

  [(ASPCarryLogStateMachine *)self _cleanUpWorkDir];
  [(ASPCarryLogStateMachine *)self _deleteUploadInfo];
  stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
  [stateMgr deleteKey:@"extractupload_pendingfile"];
}

- (void)_cleanUpWorkDir
{
  workDir = [(ASPCarryLogStateMachine *)self workDir];
  v4 = [workDir stringByAppendingPathComponent:@"tar_in_process"];

  v5 = +[NSFileManager defaultManager];
  if ([v5 fileExistsAtPath:v4])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = [v5 contentsOfDirectoryAtPath:v4 error:0];
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v34;
      do
      {
        v11 = 0;
        v12 = v9;
        do
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v9 = [v4 stringByAppendingPathComponent:*(*(&v33 + 1) + 8 * v11)];

          [v5 removeItemAtPath:v9 error:0];
          v11 = v11 + 1;
          v12 = v9;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  workDir2 = [(ASPCarryLogStateMachine *)self workDir];
  v14 = [v5 fileExistsAtPath:workDir2];

  if (v14)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    workDir3 = [(ASPCarryLogStateMachine *)self workDir];
    v16 = [v5 contentsOfDirectoryAtPath:workDir3 error:0];

    obj = v16;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      selfCopy = self;
      v27 = v4;
      lastPathComponent = 0;
      v21 = *v30;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          v23 = v9;
          v24 = lastPathComponent;
          if (*v30 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v29 + 1) + 8 * i);
          workDir4 = [(ASPCarryLogStateMachine *)selfCopy workDir];
          v9 = [workDir4 stringByAppendingPathComponent:v25];

          lastPathComponent = [v9 lastPathComponent];

          if (([lastPathComponent isEqualToString:@"tar_in_process"] & 1) == 0 && (objc_msgSend(lastPathComponent, "isEqualToString:", @"dp_tasking_payload.plist") & 1) == 0)
          {
            [v5 removeItemAtPath:v9 error:0];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v18);

      v4 = v27;
    }
  }
}

- (void)_deleteUploadInfo
{
  stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
  getAllKeys = [stateMgr getAllKeys];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = getAllKeys;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 hasPrefix:{@"aspcarry_uploadinfo", v12}])
        {
          stateMgr2 = [(ASPCarryLogStateMachine *)self stateMgr];
          [stateMgr2 deleteKey:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_resetDaemonUserDefaults
{
  [(ASPCarryLogStateMachine *)self _deleteUploadInfo];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [&off_1000D2F00 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(&off_1000D2F00);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
        v9 = [stateMgr getValueForKey:v7 expectedType:4];

        if (v9)
        {
          stateMgr2 = [(ASPCarryLogStateMachine *)self stateMgr];
          [stateMgr2 deleteKey:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [&off_1000D2F00 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (BOOL)_checkSnBuildVariantMatch
{
  stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
  v4 = [stateMgr getValueForKey:@"device_serialnumber" expectedType:0];

  stateMgr2 = [(ASPCarryLogStateMachine *)self stateMgr];
  v6 = [stateMgr2 getValueForKey:@"device_is_internal_build" expectedType:0];
  v7 = [v6 isEqualToString:@"yes"];

  v8 = getDeviceSerialNumber();
  has_internal_content = os_variant_has_internal_content();
  if (v4 && (![v8 isEqualToString:v4] || v7 != has_internal_content))
  {
    v11 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SN and/or build variant mismatch. Reseting defaults", v22, 2u);
    }

    [(ASPCarryLogStateMachine *)self _resetDaemonUserDefaults];
    stateMgr3 = [(ASPCarryLogStateMachine *)self stateMgr];
    v13 = stateMgr3;
    if (has_internal_content)
    {
      [stateMgr3 setValue:@"No active tasking and no iolog collection ongoing" forKey:@"aspcarrylog_tasking_info" inDomain:@"/var/mobile/Library/Preferences/com.apple.nandCarryLogs.plist"];
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  stateMgr4 = [(ASPCarryLogStateMachine *)self stateMgr];
  v15 = [stateMgr4 getValueForKey:@"device_serialnumber" expectedType:0];

  if (!v15)
  {
    stateMgr5 = [(ASPCarryLogStateMachine *)self stateMgr];
    [stateMgr5 setValue:v8 forKey:@"device_serialnumber"];
  }

  stateMgr6 = [(ASPCarryLogStateMachine *)self stateMgr];
  v18 = [stateMgr6 getValueForKey:@"device_is_internal_build" expectedType:0];
  v19 = (v18 == 0) & has_internal_content;

  if (v19 == 1)
  {
    stateMgr7 = [(ASPCarryLogStateMachine *)self stateMgr];
    [stateMgr7 setValue:@"yes" forKey:@"device_is_internal_build"];
  }

  return v10;
}

- (void)dailyCheckWithStatsProvider:(id)provider
{
  providerCopy = provider;
  stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
  v6 = [stateMgr getValueForKey:@"daily_check_tasking_status" expectedType:0];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"inactive";
  }

  if (![(ASPCarryLogStateMachine *)self _hasActiveTasking])
  {
    if ([(ASPCarryLogStateMachine *)self _hasPendingDSReplyTasking])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  _activeTaskingExpired = [(ASPCarryLogStateMachine *)self _activeTaskingExpired];
  v9 = oslog;
  v10 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  if (_activeTaskingExpired)
  {
    if (v10)
    {
      v11 = v9;
      currentTaskingInfo = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
      v13 = [currentTaskingInfo objectForKeyedSubscript:@"id"];
      v20 = 136315138;
      uTF8String = [v13 UTF8String];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TaskingId %s Ending.\n", &v20, 0xCu);
    }

    nandDriver = [(ASPCarryLogStateMachine *)self nandDriver];
    [nandDriver iolog_disable];

    [(ASPCarryLogStateMachine *)self unregisterIOLoggingXPC];
    [(ASPCarryLogStateMachine *)self _unmarkCurrentTasking];
LABEL_10:
    if (![(ASPCarryLogStateMachine *)self _canJoinTaskingPerStatsDriver:providerCopy])
    {
LABEL_12:
      if ([(ASPCarryLogStateMachine *)self _hasActiveTasking])
      {
        v15 = @"active";
      }

      else
      {
        [(ASPCarryLogStateMachine *)self unregisterIOLoggingXPC];
        if (([(__CFString *)v7 isEqualToString:@"active"]& 1) != 0)
        {
          v15 = @"just_ended";
        }

        else
        {
          if ([(__CFString *)v7 isEqualToString:@"just_ended"])
          {
            [(ASPCarryLogStateMachine *)self _cleanUpAfterTasking];
          }

          v15 = @"inactive";
        }

        stateMgr2 = [(ASPCarryLogStateMachine *)self stateMgr];
        if ([(ASPCarryLogStateMachine *)self isInternalBuild])
        {
          [stateMgr2 setValue:@"No active tasking and no iolog collection ongoing" forKey:@"aspcarrylog_tasking_info" inDomain:@"/var/mobile/Library/Preferences/com.apple.nandCarryLogs.plist"];
        }
      }

      stateMgr3 = [(ASPCarryLogStateMachine *)self stateMgr];
      [stateMgr3 setValue:v15 forKey:@"daily_check_tasking_status"];
      goto LABEL_25;
    }

LABEL_11:
    [(ASPCarryLogStateMachine *)self _tryActivateTasking];
    goto LABEL_12;
  }

  if (v10)
  {
    v16 = v9;
    stateMgr3 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
    v18 = [stateMgr3 objectForKeyedSubscript:@"id"];
    v20 = 136315138;
    uTF8String = [v18 UTF8String];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "TaskingId %s continue.\n", &v20, 0xCu);

LABEL_25:
  }
}

- (void)bootCheck
{
  if ([(ASPCarryLogStateMachine *)self _checkSnBuildVariantMatch]&& [(ASPCarryLogStateMachine *)self _hasActiveTasking])
  {
    if ([(ASPCarryLogStateMachine *)self _activeTaskingExpired])
    {
      v3 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        currentTaskingInfo = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
        v6 = [currentTaskingInfo objectForKeyedSubscript:@"id"];
        v20 = 136315138;
        uTF8String = [v6 UTF8String];
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "TaskingId %s Ending.\n", &v20, 0xCu);
      }

      nandDriver = [(ASPCarryLogStateMachine *)self nandDriver];
      [nandDriver iolog_disable];

      [(ASPCarryLogStateMachine *)self _unmarkCurrentTasking];
      stateMgr = [(ASPCarryLogStateMachine *)self stateMgr];
      if ([(ASPCarryLogStateMachine *)self isInternalBuild])
      {
        [stateMgr setValue:@"No active tasking and no iolog collection ongoing" forKey:@"aspcarrylog_tasking_info" inDomain:@"/var/mobile/Library/Preferences/com.apple.nandCarryLogs.plist"];
      }
    }

    else
    {
      currentTaskingInfo2 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
      stateMgr = [currentTaskingInfo2 objectForKeyedSubscript:@"id"];

      stateMgr2 = [(ASPCarryLogStateMachine *)self stateMgr];
      v12 = uploadInfoKeyFromTaskingId(stateMgr);
      v13 = [stateMgr2 getValueForKey:v12 expectedType:2];

      if (v13)
      {
        v14 = [v13 objectForKey:@"spd_state"];

        if (!v14)
        {
          nandDriver2 = [(ASPCarryLogStateMachine *)self nandDriver];
          [nandDriver2 iolog_enable];
        }
      }

      [(ASPCarryLogStateMachine *)self registerIOLoggingXPCforInternalBuild:[(ASPCarryLogStateMachine *)self isInternalBuild]];
      v16 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        currentTaskingInfo3 = [(ASPCarryLogStateMachine *)self currentTaskingInfo];
        v19 = [currentTaskingInfo3 objectForKeyedSubscript:@"id"];
        v20 = 136315138;
        uTF8String = [v19 UTF8String];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "TaskingId %s running.\n", &v20, 0xCu);
      }
    }
  }

  else
  {
    v9 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No active tasking at boot", &v20, 2u);
    }
  }
}

@end