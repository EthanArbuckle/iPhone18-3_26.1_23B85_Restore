@interface ASPCarryLog_ExtractUpload
- (ASPCarryLog_ExtractUpload)initWithNandDriver:(id)driver UploadDriver:(id)uploadDriver StateManager:(id)manager workDirectory:(id)directory internalBuild:(BOOL)build;
- (BOOL)_getDiskSpaceFlag;
- (BOOL)_internalCheckNextSpdExtract;
- (BOOL)_isIOLogFromHwLogger;
- (BOOL)_isLastExtractionTooLongAgo;
- (BOOL)_isXpcActivityDeferred;
- (BOOL)_tryDeferXpcActivity;
- (id)_checkAndCompressFiles;
- (id)_compressFilesForSpd:(BOOL)spd;
- (id)_getNextSpdExtractTime;
- (id)_getPendingUploadFile;
- (id)_getUploadContentPath;
- (id)_prepareContentsToUpload;
- (int)_checkAndConvertIOLog;
- (int)_checkAndExtractFiles;
- (int)_extractFiles;
- (int)_getNumB2BZipErrors;
- (int)_getSpdState;
- (int)_getUploadIdx;
- (int)_tryCreateWorkDirectories;
- (unint64_t)_getlastTotalUploadSize;
- (unint64_t)_iologLba_current;
- (unint64_t)_iologLba_prevSubmission;
- (unsigned)_tryExtractSpdToNextState;
- (void)_checkAndHandleExcessiveCompressionErrors;
- (void)_cleanUpinProgressFiles;
- (void)_forceDeferXpcActivity;
- (void)_incrementCntForKey:(id)key;
- (void)_internalSetNextSpdExtractionTime;
- (void)_iologLba_updateNewValue:(unint64_t)value;
- (void)_jetSamStatsCollect_end;
- (void)_jetSamStatsCollect_start;
- (void)_removeConvertedIOLog;
- (void)_removeExtractedFiles;
- (void)_removePendingUploadFilePath;
- (void)_saveLastUploadFilePath:(id)path;
- (void)_savePendingUploadFilePath:(id)path;
- (void)_tryExtractUploadSpd;
- (void)_updateLastExtractTime;
- (void)_updateUploadInfoWithContentPath:(id)path contentSize:(unint64_t)size;
- (void)tryExtractUpload:(id)upload;
@end

@implementation ASPCarryLog_ExtractUpload

- (ASPCarryLog_ExtractUpload)initWithNandDriver:(id)driver UploadDriver:(id)uploadDriver StateManager:(id)manager workDirectory:(id)directory internalBuild:(BOOL)build
{
  driverCopy = driver;
  uploadDriverCopy = uploadDriver;
  managerCopy = manager;
  directoryCopy = directory;
  v58.receiver = self;
  v58.super_class = ASPCarryLog_ExtractUpload;
  v17 = [(ASPCarryLog_ExtractUpload *)&v58 init];
  if (v17)
  {
    v18 = +[NSFileManager defaultManager];
    fileManager = v17->_fileManager;
    v17->_fileManager = v18;

    objc_storeStrong(&v17->_nandDriver, driver);
    objc_storeStrong(&v17->_uploadDriver, uploadDriver);
    objc_storeStrong(&v17->_stateMgr, manager);
    objc_storeStrong(&v17->_workDir, directory);
    v20 = [(NSString *)v17->_workDir stringByAppendingPathComponent:@"iolog_spd.iolog"];
    spdFilePath = v17->_spdFilePath;
    v17->_spdFilePath = v20;

    v22 = [(NSString *)v17->_workDir stringByAppendingPathComponent:@"tar_in_process"];
    tarInProgressDir = v17->_tarInProgressDir;
    v17->_tarInProgressDir = v22;

    v24 = [(NSString *)v17->_workDir stringByAppendingPathComponent:@"iolog.iolog"];
    iologPath = v17->_iologPath;
    v17->_iologPath = v24;

    v26 = [(NSString *)v17->_workDir stringByAppendingPathComponent:@"nandcounters.plist"];
    nandcounterPath = v17->_nandcounterPath;
    v17->_nandcounterPath = v26;

    v28 = [(NSString *)v17->_workDir stringByAppendingPathComponent:@"nandstats.txt"];
    nandstatsPath = v17->_nandstatsPath;
    v17->_nandstatsPath = v28;

    v30 = [(NSString *)v17->_workDir stringByAppendingPathComponent:@"iolog_converted.iolog"];
    convertedIologPath = v17->_convertedIologPath;
    v17->_convertedIologPath = v30;

    _getPendingUploadFile = [(ASPCarryLog_ExtractUpload *)v17 _getPendingUploadFile];
    pendingUploadFile = v17->_pendingUploadFile;
    v17->_pendingUploadFile = _getPendingUploadFile;

    v17->_isInternalBuild = build;
    xpcActivityMgr = v17->_xpcActivityMgr;
    v17->_xpcActivityMgr = 0;

    v17->_isIOLogEnableNeeded = 0;
    v17->_isPeriodicSpd = 0;
    v35 = [(StateMgr *)v17->_stateMgr getValueForKey:@"current_tasking_info" expectedType:2];
    v36 = v35;
    if (!v35 || !validateCurTaskingInfo(v35))
    {
      goto LABEL_9;
    }

    v37 = [v36 objectForKeyedSubscript:@"id"];
    taskingId = v17->_taskingId;
    v17->_taskingId = v37;

    v39 = [v36 objectForKeyedSubscript:@"device_id"];
    deviceId = v17->_deviceId;
    v17->_deviceId = v39;

    v41 = [v36 objectForKeyedSubscript:@"endtime"];
    endTimeStr = v17->_endTimeStr;
    v17->_endTimeStr = v41;

    v43 = [v36 objectForKeyedSubscript:@"upload_size_limit_bytes"];
    v17->_uploadSizeLimit = [v43 unsignedLongValue];

    v44 = [NSString stringWithFormat:@"%@_%@", @"aspcarry_uploadinfo", v17->_taskingId];
    uploadInfoKey = v17->_uploadInfoKey;
    v17->_uploadInfoKey = v44;

    stateMgr = [(ASPCarryLog_ExtractUpload *)v17 stateMgr];
    uploadInfoKey = [(ASPCarryLog_ExtractUpload *)v17 uploadInfoKey];
    v48 = [stateMgr getValueForKey:uploadInfoKey expectedType:2];
    uploadInfo = v17->_uploadInfo;
    v17->_uploadInfo = v48;

    v17->_spdState = [(ASPCarryLog_ExtractUpload *)v17 _getSpdState];
    v17->_uploadIdx = [(ASPCarryLog_ExtractUpload *)v17 _getUploadIdx];
    v17->_lastTotalUploadSize = [(ASPCarryLog_ExtractUpload *)v17 _getlastTotalUploadSize];
    if ([(ASPCarryLog_ExtractUpload *)v17 _getDiskSpaceFlag])
    {
      v50 = !diskFreeSpaceBelowLimit(0x40000000uLL);
    }

    else
    {
      LOBYTE(v50) = 0;
    }

    v17->_isEnoughDiskSpace = v50;
    v17->_numB2BZipErrors = [(ASPCarryLog_ExtractUpload *)v17 _getNumB2BZipErrors];
    _getNextSpdExtractTime = [(ASPCarryLog_ExtractUpload *)v17 _getNextSpdExtractTime];
    nextSpdExtractTime = v17->_nextSpdExtractTime;
    v17->_nextSpdExtractTime = _getNextSpdExtractTime;

    if (v17->_uploadIdx < 0 || v17->_lastTotalUploadSize == -1)
    {
LABEL_9:
      v53 = v17->_taskingId;
      v17->_taskingId = 0;

      v54 = v17->_deviceId;
      v17->_deviceId = 0;

      v17->_lastTotalUploadSize = -1;
      v17->_uploadSizeLimit = -1;
      v17->_isEnoughDiskSpace = 1;
      *&v17->_spdState = 0xFFFFFFFF00000000;
      v55 = v17->_nextSpdExtractTime;
      v17->_nextSpdExtractTime = 0;
    }

    v56 = v17;
  }

  return v17;
}

- (unint64_t)_iologLba_current
{
  v3 = objc_autoreleasePoolPush();
  nandDriver = [(ASPCarryLog_ExtractUpload *)self nandDriver];
  v5 = [nandDriver nandStats_get_hoursAgo:0];

  v6 = [v5 objectForKey:&off_1000BFF30];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  objc_autoreleasePoolPop(v3);
  return unsignedLongLongValue;
}

- (unint64_t)_iologLba_prevSubmission
{
  stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v3 = [stateMgr getValueForKey:@"iolog_lbas" expectedType:1];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (BOOL)_isLastExtractionTooLongAgo
{
  stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v3 = [stateMgr getValueForKey:@"last_extract_time" expectedType:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (StringToDateTime(v3), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 dateByAddingTimeInterval:86400.0];
    v7 = +[NSDate date];
    v8 = [v6 compare:v7] == -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_updateLastExtractTime
{
  stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v2 = currentDateTimeStr();
  [stateMgr setValue:v2 forKey:@"last_extract_time"];
}

- (unint64_t)_getlastTotalUploadSize
{
  uploadInfo = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
  v3 = [uploadInfo objectForKeyedSubscript:@"total_upload_size"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (int)_getUploadIdx
{
  uploadInfo = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
  v3 = [uploadInfo objectForKeyedSubscript:@"fileidx"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (BOOL)_getDiskSpaceFlag
{
  uploadInfo = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
  v3 = [uploadInfo objectForKeyedSubscript:@"enough_disk_space"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_getNextSpdExtractTime
{
  if ([(ASPCarryLog_ExtractUpload *)self isInternalBuild])
  {
    uploadInfo = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
    v4 = [uploadInfo objectForKeyedSubscript:@"next_spd_extraction_time"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = StringToDateTime(v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)_getNumB2BZipErrors
{
  uploadInfo = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
  v3 = [uploadInfo objectForKeyedSubscript:@"num_b2b_zip_errors"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)_iologLba_updateNewValue:(unint64_t)value
{
  stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v4 = [NSNumber numberWithUnsignedLongLong:value];
  [stateMgr setValue:v4 forKey:@"iolog_lbas"];
}

- (id)_getPendingUploadFile
{
  stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v4 = [stateMgr getValueForKey:@"extractupload_pendingfile" expectedType:0];

  if (v4)
  {
    fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v6 = [fileManager fileExistsAtPath:v4];

    if ((v6 & 1) == 0)
    {

      [(ASPCarryLog_ExtractUpload *)self _removePendingUploadFilePath];
      v4 = 0;
    }
  }

  return v4;
}

- (void)_internalSetNextSpdExtractionTime
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:1209600.0];
  [(ASPCarryLog_ExtractUpload *)self setNextSpdExtractTime:v3];
}

- (void)_updateUploadInfoWithContentPath:(id)path contentSize:(unint64_t)size
{
  pathCopy = path;
  if (pathCopy)
  {
    [(ASPCarryLog_ExtractUpload *)self setUploadIdx:[(ASPCarryLog_ExtractUpload *)self uploadIdx]+ 1];
    [(ASPCarryLog_ExtractUpload *)self setLastTotalUploadSize:[(ASPCarryLog_ExtractUpload *)self lastTotalUploadSize]+ size];
    [(ASPCarryLog_ExtractUpload *)self _saveLastUploadFilePath:pathCopy];
    [(ASPCarryLog_ExtractUpload *)self _setUploadInfoWithSpdState:0];
    endTimeStr = [(ASPCarryLog_ExtractUpload *)self endTimeStr];

    if (endTimeStr)
    {
      stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
      taskingId = [(ASPCarryLog_ExtractUpload *)self taskingId];
      endTimeStr2 = [(ASPCarryLog_ExtractUpload *)self endTimeStr];
      setTaskingInfoToLegacyUIDomain(stateMgr, taskingId, endTimeStr2, [(ASPCarryLog_ExtractUpload *)self lastTotalUploadSize], pathCopy, [(ASPCarryLog_ExtractUpload *)self isInternalBuild]);
    }
  }

  else
  {
    [(ASPCarryLog_ExtractUpload *)self _setUploadInfoWithSpdState:0];
  }
}

- (void)_savePendingUploadFilePath:(id)path
{
  pathCopy = path;
  stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [stateMgr setValue:pathCopy forKey:@"extractupload_pendingfile"];
}

- (void)_saveLastUploadFilePath:(id)path
{
  pathCopy = path;
  stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [stateMgr setValue:pathCopy forKey:@"extractupload_lastupload"];
}

- (void)_removePendingUploadFilePath
{
  stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [stateMgr deleteKey:@"extractupload_pendingfile"];
}

- (int)_tryCreateWorkDirectories
{
  fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
  workDir = [(ASPCarryLog_ExtractUpload *)self workDir];
  v5 = [fileManager fileExistsAtPath:workDir];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    fileManager2 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    workDir2 = [(ASPCarryLog_ExtractUpload *)self workDir];
    v27 = 0;
    v9 = [fileManager2 createDirectoryAtPath:workDir2 withIntermediateDirectories:0 attributes:0 error:&v27];
    v6 = v27;

    if ((v9 & 1) == 0)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100048D40();
      }

      goto LABEL_12;
    }
  }

  fileManager3 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v30 = NSFilePosixPermissions;
  v31 = &off_1000BFF48;
  v11 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  workDir3 = [(ASPCarryLog_ExtractUpload *)self workDir];
  v26 = v6;
  [fileManager3 setAttributes:v11 ofItemAtPath:workDir3 error:&v26];
  v13 = v26;

  fileManager4 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  tarInProgressDir = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
  LOBYTE(v11) = [fileManager4 fileExistsAtPath:tarInProgressDir];

  if ((v11 & 1) == 0)
  {
    fileManager5 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    tarInProgressDir2 = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
    v25 = v13;
    v18 = [fileManager5 createDirectoryAtPath:tarInProgressDir2 withIntermediateDirectories:0 attributes:0 error:&v25];
    v6 = v25;

    if (v18)
    {
      v13 = v6;
      goto LABEL_7;
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100048D74();
    }

LABEL_12:
    v20 = 0;
    goto LABEL_13;
  }

LABEL_7:
  fileManager6 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v28 = NSFilePosixPermissions;
  v29 = &off_1000BFF48;
  v20 = 1;
  v21 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  tarInProgressDir3 = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
  v24 = v13;
  [fileManager6 setAttributes:v21 ofItemAtPath:tarInProgressDir3 error:&v24];
  v6 = v24;

LABEL_13:
  return v20;
}

- (void)_cleanUpinProgressFiles
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
  tarInProgressDir = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
  v5 = [fileManager contentsOfDirectoryAtPath:tarInProgressDir error:0];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        fileManager2 = [(ASPCarryLog_ExtractUpload *)self fileManager];
        tarInProgressDir2 = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
        v13 = [tarInProgressDir2 stringByAppendingPathComponent:v10];
        [fileManager2 removeItemAtPath:v13 error:0];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (int)_extractFiles
{
  fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
  nandcounterPath = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
  v5 = [fileManager fileExistsAtPath:nandcounterPath];

  if (v5)
  {
    fileManager2 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    nandcounterPath2 = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
    [fileManager2 removeItemAtPath:nandcounterPath2 error:0];
  }

  fileManager3 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  nandstatsPath = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
  v10 = [fileManager3 fileExistsAtPath:nandstatsPath];

  if (v10)
  {
    fileManager4 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    nandstatsPath2 = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
    [fileManager4 removeItemAtPath:nandstatsPath2 error:0];
  }

  nandDriver = [(ASPCarryLog_ExtractUpload *)self nandDriver];
  iolog_disable = [nandDriver iolog_disable];

  if (iolog_disable)
  {
    [(ASPCarryLog_ExtractUpload *)self setIsIOLogEnableNeeded:1];
    do
    {
      nandDriver2 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
      iologPath = [(ASPCarryLog_ExtractUpload *)self iologPath];
      v17 = [nandDriver2 iolog_export:iologPath max_export_size:25165824];
    }

    while (v17 >> 23 >= 3 && ![(ASPCarryLog_ExtractUpload *)self _tryDeferXpcActivity]);
    if ([(ASPCarryLog_ExtractUpload *)self isIOLogEnableNeeded])
    {
      nandDriver3 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
      [nandDriver3 iolog_enable];
    }
  }

  else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_100048DA8();
  }

  if ([(ASPCarryLog_ExtractUpload *)self _isXpcActivityDeferred])
  {
    return 0;
  }

  nandDriver4 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
  nandcounterPath3 = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
  v22 = [nandDriver4 nandCounters_save:nandcounterPath3];

  if (!v22)
  {
    result = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100048E10();
    return 0;
  }

  if (![(ASPCarryLog_ExtractUpload *)self isInternalBuild])
  {
    return 1;
  }

  nandDriver5 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
  nandstatsPath3 = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
  v25 = [nandDriver5 nandStats_save:nandstatsPath3];

  if (v25)
  {
    return 1;
  }

  result = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100048DDC();
    return 0;
  }

  return result;
}

- (int)_checkAndExtractFiles
{
  _iologLba_current = [(ASPCarryLog_ExtractUpload *)self _iologLba_current];
  _iologLba_prevSubmission = [(ASPCarryLog_ExtractUpload *)self _iologLba_prevSubmission];
  if (_iologLba_current > _iologLba_prevSubmission && (_iologLba_current - _iologLba_prevSubmission) >> 13 || (result = [(ASPCarryLog_ExtractUpload *)self _isLastExtractionTooLongAgo]) != 0)
  {
    [(ASPCarryLog_ExtractUpload *)self _setStage:1];
    result = [(ASPCarryLog_ExtractUpload *)self _extractFiles];
    if (result)
    {
      if ([(ASPCarryLog_ExtractUpload *)self _isXpcActivityDeferred])
      {
        return 0;
      }

      else
      {
        [(ASPCarryLog_ExtractUpload *)self _iologLba_updateNewValue:_iologLba_current];
        [(ASPCarryLog_ExtractUpload *)self _updateLastExtractTime];
        return 1;
      }
    }
  }

  return result;
}

- (void)_removeExtractedFiles
{
  fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
  iologPath = [(ASPCarryLog_ExtractUpload *)self iologPath];
  v5 = [fileManager fileExistsAtPath:iologPath];

  if (v5)
  {
    fileManager2 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    iologPath2 = [(ASPCarryLog_ExtractUpload *)self iologPath];
    [fileManager2 removeItemAtPath:iologPath2 error:0];
  }

  fileManager3 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  nandcounterPath = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
  v10 = [fileManager3 fileExistsAtPath:nandcounterPath];

  if (v10)
  {
    fileManager4 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    nandcounterPath2 = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
    [fileManager4 removeItemAtPath:nandcounterPath2 error:0];
  }

  fileManager5 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  nandstatsPath = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
  v15 = [fileManager5 fileExistsAtPath:nandstatsPath];

  if (v15)
  {
    fileManager6 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    nandstatsPath2 = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
    [fileManager6 removeItemAtPath:nandstatsPath2 error:0];
  }

  fileManager7 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  spdFilePath = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
  v20 = [fileManager7 fileExistsAtPath:spdFilePath];

  if (v20)
  {
    fileManager8 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    spdFilePath2 = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
    [fileManager8 removeItemAtPath:spdFilePath2 error:0];
  }

  [(ASPCarryLog_ExtractUpload *)self _removeConvertedIOLog];
}

- (void)_removeConvertedIOLog
{
  fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
  convertedIologPath = [(ASPCarryLog_ExtractUpload *)self convertedIologPath];
  v5 = [fileManager fileExistsAtPath:convertedIologPath];

  if (v5)
  {
    fileManager2 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    convertedIologPath2 = [(ASPCarryLog_ExtractUpload *)self convertedIologPath];
    [fileManager2 removeItemAtPath:convertedIologPath2 error:0];
  }
}

- (int)_checkAndConvertIOLog
{
  [(ASPCarryLog_ExtractUpload *)self _setStage:2];
  if ([(ASPCarryLog_ExtractUpload *)self _tryDeferXpcActivity])
  {
    return 0;
  }

  [(ASPCarryLog_ExtractUpload *)self _removeConvertedIOLog];
  _isIOLogFromHwLogger = [(ASPCarryLog_ExtractUpload *)self _isIOLogFromHwLogger];
  gIsIOLogFromHwLogger = _isIOLogFromHwLogger;
  if (!_isIOLogFromHwLogger)
  {
    return 1;
  }

  iologPath = [(ASPCarryLog_ExtractUpload *)self iologPath];
  v6 = fopen([iologPath UTF8String], "r");

  convertedIologPath = [(ASPCarryLog_ExtractUpload *)self convertedIologPath];
  v8 = fopen([convertedIologPath UTF8String], "w");

  if (v6 && v8)
  {
    v9 = iolog_hwlogger_to_legacy_format_conversion(v8, v6, 1);
LABEL_9:
    fclose(v6);
    v3 = v9;
    goto LABEL_10;
  }

  v9 = 0;
  v3 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v8)
  {
    fclose(v8);
  }

  if (!v3)
  {
    [(ASPCarryLog_ExtractUpload *)self _removeExtractedFiles];
    [(ASPCarryLog_ExtractUpload *)self _setStage:0];
  }

  return v3;
}

- (id)_compressFilesForSpd:(BOOL)spd
{
  spdCopy = spd;
  if (gIsIOLogFromHwLogger)
  {
    [(ASPCarryLog_ExtractUpload *)self convertedIologPath];
  }

  else
  {
    [(ASPCarryLog_ExtractUpload *)self iologPath];
  }
  v42 = ;
  spdFilePath = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
  tarInProgressDir = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
  v6 = currentDateTimeStr();
  v7 = v6;
  if (spdCopy)
  {
    v45 = [NSString stringWithFormat:@"%@/iologSpd_%@.tar", tarInProgressDir, v6];

    v44 = [[NSMutableArray alloc] initWithObjects:{spdFilePath, 0}];
  }

  else
  {
    v45 = [NSString stringWithFormat:@"%@/iolog_%@_%d.tar", tarInProgressDir, v6, [(ASPCarryLog_ExtractUpload *)self uploadIdx]];

    v8 = [NSMutableArray alloc];
    nandcounterPath = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
    v44 = [v8 initWithObjects:{v42, nandcounterPath, 0}];

    if ([(ASPCarryLog_ExtractUpload *)self isInternalBuild])
    {
      fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
      nandstatsPath = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
      v12 = [fileManager fileExistsAtPath:nandstatsPath];

      if (v12)
      {
        nandstatsPath2 = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
        [v44 addObject:nandstatsPath2];
      }
    }
  }

  memset(&v52, 0, sizeof(v52));
  [(ASPCarryLog_ExtractUpload *)self _cleanUpinProgressFiles];
  v41 = +[NSFileManager defaultManager];
  archive_write_new();
  if (archive_write_add_filter_gzip() || archive_write_set_options() || archive_write_set_format_pax())
  {
    v39 = @"SetZipError";
    goto LABEL_51;
  }

  [v45 fileSystemRepresentation];
  if (archive_write_open_filename())
  {
    v39 = @"OpenDestFileError";
LABEL_51:
    v40 = [NSException exceptionWithName:v39 reason:0 userInfo:0];
    objc_exception_throw(v40);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v44;
  v14 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (!v14)
  {
    goto LABEL_35;
  }

  v15 = 0;
  v47 = *v49;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v49 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v48 + 1) + 8 * i);

      v18 = v17;
      if (stat([v17 fileSystemRepresentation], &v52))
      {
        v38 = [NSException exceptionWithName:@"InputFileStatError" reason:0 userInfo:0];
        objc_exception_throw(v38);
      }

      archive_entry_new();
      archive_entry_copy_stat();
      lastPathComponent = [v17 lastPathComponent];
      v20 = lastPathComponent;
      [lastPathComponent UTF8String];
      archive_entry_set_pathname();

      archive_entry_set_filetype();
      archive_entry_set_perm();
      if (archive_write_header())
      {
        v37 = [NSException exceptionWithName:@"ArchiveWriteHeaderError" reason:0 userInfo:0];
        objc_exception_throw(v37);
      }

      v21 = v17;
      v15 = v17;
      v22 = open([v17 fileSystemRepresentation], 0);
      v23 = v22;
      if (v22 < 0)
      {
        v35 = @"InpputFileError";
LABEL_45:
        v36 = [NSException exceptionWithName:v35 reason:0 userInfo:0];
        objc_exception_throw(v36);
      }

      v24 = read(v22, v55, 0x2000uLL);
      v25 = 0x4000000;
      while (1)
      {
        if (v24 < 1)
        {
          goto LABEL_31;
        }

        if ((v24 & 0x7FFFFFFF) != archive_write_data())
        {
          v35 = @"ArchiveWriteError";
          goto LABEL_45;
        }

        v26 = __OFSUB__(v25, v24);
        v25 -= v24;
        if ((v25 < 0) ^ v26 | (v25 == 0))
        {
          break;
        }

LABEL_28:
        v24 = read(v23, v55, 0x2000uLL);
      }

      if (![(ASPCarryLog_ExtractUpload *)self _tryDeferXpcActivity])
      {
        v25 = 0x4000000;
        goto LABEL_28;
      }

      v27 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Asked to defer activity during compression. Aborting...\n", buf, 2u);
      }

LABEL_31:
      close(v23);
      archive_entry_free();
      if ([(ASPCarryLog_ExtractUpload *)self _isXpcActivityDeferred])
      {
        goto LABEL_36;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  }

  while (v14);

LABEL_35:
  v15 = 0;
LABEL_36:

  v28 = ![(ASPCarryLog_ExtractUpload *)self _isXpcActivityDeferred];
  archive_write_close();
  v29 = v28;
  archive_write_free();
  if ((v28 & 1) == 0)
  {
    fileManager2 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v31 = [fileManager2 fileExistsAtPath:v45];

    if (v31)
    {
      [v41 removeItemAtPath:v45 error:0];
    }
  }

  v32 = v45;
  if (!v29)
  {
    v32 = 0;
  }

  v33 = v32;

  return v33;
}

- (id)_checkAndCompressFiles
{
  [(ASPCarryLog_ExtractUpload *)self _setStage:3];
  if ([(ASPCarryLog_ExtractUpload *)self _tryDeferXpcActivity])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(ASPCarryLog_ExtractUpload *)self _compressFilesForSpd:0];
    if ([(ASPCarryLog_ExtractUpload *)self _isXpcActivityDeferred])
    {
      v4 = 0;
      goto LABEL_12;
    }

    if (!v3 || (-[ASPCarryLog_ExtractUpload fileManager](self, "fileManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 fileExistsAtPath:v3], v5, (v6 & 1) == 0))
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100048E44();
      }

      [(ASPCarryLog_ExtractUpload *)self _checkAndHandleExcessiveCompressionErrors];

      v3 = 0;
    }

    [(ASPCarryLog_ExtractUpload *)self _setStage:0];
  }

  v3 = v3;
  v4 = v3;
LABEL_12:

  return v4;
}

- (void)_checkAndHandleExcessiveCompressionErrors
{
  [(ASPCarryLog_ExtractUpload *)self setNumB2BZipErrors:[(ASPCarryLog_ExtractUpload *)self numB2BZipErrors]+ 1];
  if ([(ASPCarryLog_ExtractUpload *)self numB2BZipErrors]>= 4)
  {
    [(ASPCarryLog_ExtractUpload *)self _removeExtractedFiles];
    [(ASPCarryLog_ExtractUpload *)self setNumB2BZipErrors:0];
  }

  [(ASPCarryLog_ExtractUpload *)self _setUploadInfoWithSpdState:0];
}

- (id)_prepareContentsToUpload
{
  pendingUploadFile = [(ASPCarryLog_ExtractUpload *)self pendingUploadFile];

  if (pendingUploadFile)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100048E78();
    }

    goto LABEL_4;
  }

  if (![(ASPCarryLog_ExtractUpload *)self _tryCreateWorkDirectories]|| [(ASPCarryLog_ExtractUpload *)self _getStage]<= 1 && ![(ASPCarryLog_ExtractUpload *)self _checkAndExtractFiles]|| [(ASPCarryLog_ExtractUpload *)self _getStage]<= 2 && ![(ASPCarryLog_ExtractUpload *)self _checkAndConvertIOLog])
  {
LABEL_4:
    _checkAndCompressFiles = 0;
    goto LABEL_5;
  }

  _checkAndCompressFiles = [(ASPCarryLog_ExtractUpload *)self _checkAndCompressFiles];
LABEL_5:

  return _checkAndCompressFiles;
}

- (id)_getUploadContentPath
{
  pendingUploadFile = [(ASPCarryLog_ExtractUpload *)self pendingUploadFile];

  if (pendingUploadFile)
  {
    pendingUploadFile2 = [(ASPCarryLog_ExtractUpload *)self pendingUploadFile];
    _prepareContentsToUpload = 0;
    goto LABEL_9;
  }

  _prepareContentsToUpload = [(ASPCarryLog_ExtractUpload *)self _prepareContentsToUpload];
  if (![(ASPCarryLog_ExtractUpload *)self _isXpcActivityDeferred]&& _prepareContentsToUpload)
  {
    workDir = [(ASPCarryLog_ExtractUpload *)self workDir];
    lastPathComponent = [_prepareContentsToUpload lastPathComponent];
    pendingUploadFile2 = [workDir stringByAppendingPathComponent:lastPathComponent];

    [(ASPCarryLog_ExtractUpload *)self _savePendingUploadFilePath:pendingUploadFile2];
    fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
    [fileManager moveItemAtPath:_prepareContentsToUpload toPath:pendingUploadFile2 error:0];

    fileManager2 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    LODWORD(lastPathComponent) = [fileManager2 fileExistsAtPath:pendingUploadFile2];

    if (lastPathComponent)
    {
      [(ASPCarryLog_ExtractUpload *)self _removeExtractedFiles];
      goto LABEL_9;
    }
  }

  pendingUploadFile2 = 0;
LABEL_9:

  return pendingUploadFile2;
}

- (void)tryExtractUpload:(id)upload
{
  uploadCopy = upload;
  v5 = objc_autoreleasePoolPush();
  [(ASPCarryLog_ExtractUpload *)self _jetSamStatsCollect_start];
  [(ASPCarryLog_ExtractUpload *)self setXpcActivityMgr:uploadCopy];
  taskingId = [(ASPCarryLog_ExtractUpload *)self taskingId];
  if (taskingId && (v7 = taskingId, [(ASPCarryLog_ExtractUpload *)self deviceId], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    if ([(ASPCarryLog_ExtractUpload *)self _isPendingSpdHandling])
    {
      [(ASPCarryLog_ExtractUpload *)self _tryExtractUploadSpd];
    }

    else if ([(ASPCarryLog_ExtractUpload *)self _tryDeferXpcActivity])
    {
      v12 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Deferring before IOLog extraction", &v34, 2u);
      }
    }

    else if ([(ASPCarryLog_ExtractUpload *)self isInternalBuild]|| [(ASPCarryLog_ExtractUpload *)self isEnoughDiskSpace])
    {
      lastTotalUploadSize = [(ASPCarryLog_ExtractUpload *)self lastTotalUploadSize];
      if (lastTotalUploadSize >= [(ASPCarryLog_ExtractUpload *)self uploadSizeLimit])
      {
        v25 = oslog;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          lastTotalUploadSize2 = [(ASPCarryLog_ExtractUpload *)self lastTotalUploadSize];
          uploadSizeLimit = [(ASPCarryLog_ExtractUpload *)self uploadSizeLimit];
          taskingId2 = [(ASPCarryLog_ExtractUpload *)self taskingId];
          v34 = 134218498;
          uTF8String2 = lastTotalUploadSize2;
          v36 = 2048;
          v37 = uploadSizeLimit;
          v38 = 2080;
          uTF8String = [taskingId2 UTF8String];
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Total upload size bytes %llu exceeding limit %llu, for tasking %s", &v34, 0x20u);
        }
      }

      else
      {
        _getUploadContentPath = [(ASPCarryLog_ExtractUpload *)self _getUploadContentPath];
        if (_getUploadContentPath)
        {
          fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
          v16 = [fileManager attributesOfItemAtPath:_getUploadContentPath error:0];
          fileSize = [v16 fileSize];

          uploadDriver = [(ASPCarryLog_ExtractUpload *)self uploadDriver];
          taskingId3 = [(ASPCarryLog_ExtractUpload *)self taskingId];
          deviceId = [(ASPCarryLog_ExtractUpload *)self deviceId];
          v21 = [uploadDriver uploadFile:_getUploadContentPath TaskingId:taskingId3 DeviceId:deviceId LogType:@"com.apple.nand.iolog"];

          v22 = oslog;
          if (v21)
          {
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              v23 = _getUploadContentPath;
              v24 = v22;
              v34 = 136315138;
              uTF8String2 = [_getUploadContentPath UTF8String];
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Content %s passed to uploader.\n", &v34, 0xCu);
            }
          }

          else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            sub_100048EAC();
          }

          [(ASPCarryLog_ExtractUpload *)self _removePendingUploadFilePath];
          [(ASPCarryLog_ExtractUpload *)self _updateUploadInfoWithContentPath:_getUploadContentPath contentSize:fileSize];
          lastTotalUploadSize3 = [(ASPCarryLog_ExtractUpload *)self lastTotalUploadSize];
          if (lastTotalUploadSize3 >= [(ASPCarryLog_ExtractUpload *)self uploadSizeLimit])
          {
            nandDriver = [(ASPCarryLog_ExtractUpload *)self nandDriver];
            [nandDriver iolog_disable];
          }

          else if ([(ASPCarryLog_ExtractUpload *)self _internalCheckNextSpdExtract])
          {
            [(ASPCarryLog_ExtractUpload *)self _tryExtractUploadSpd];
          }
        }

        else
        {
          v31 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v34) = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No upload.\n", &v34, 2u);
          }
        }
      }
    }

    else
    {
      v30 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Low disk space, do not perform extract upload.", &v34, 2u);
      }

      if ([(ASPCarryLog_ExtractUpload *)self _getDiskSpaceFlag])
      {
        [(ASPCarryLog_ExtractUpload *)self _updateUploadInfoWithContentPath:0 contentSize:0];
      }
    }
  }

  else
  {
    [(ASPCarryLog_ExtractUpload *)self _cleanUpinProgressFiles];
    [(ASPCarryLog_ExtractUpload *)self _removeExtractedFiles];
    pendingUploadFile = [(ASPCarryLog_ExtractUpload *)self pendingUploadFile];

    if (pendingUploadFile)
    {
      fileManager2 = [(ASPCarryLog_ExtractUpload *)self fileManager];
      pendingUploadFile2 = [(ASPCarryLog_ExtractUpload *)self pendingUploadFile];
      [fileManager2 removeItemAtPath:pendingUploadFile2 error:0];
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100048EE0();
    }
  }

  [(ASPCarryLog_ExtractUpload *)self _jetSamStatsCollect_end];
  objc_autoreleasePoolPop(v5);
}

- (void)_jetSamStatsCollect_start
{
  stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v4 = [stateMgr getValueForKey:@"extractupload_running" expectedType:0];

  if (v4)
  {
    [(ASPCarryLog_ExtractUpload *)self _incrementCntForKey:@"extractupload_jetsam_count"];
  }

  stateMgr2 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [stateMgr2 setValue:@"YES" forKey:@"extractupload_running"];
}

- (void)_jetSamStatsCollect_end
{
  stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [stateMgr deleteKey:@"extractupload_running"];
}

- (void)_incrementCntForKey:(id)key
{
  keyCopy = key;
  stateMgr = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v5 = [stateMgr getValueForKey:keyCopy expectedType:1];

  if (v5)
  {
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue] + 1);
  }

  else
  {
    v6 = &off_1000BFF60;
  }

  stateMgr2 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [stateMgr2 setValue:v6 forKey:keyCopy];
}

- (BOOL)_tryDeferXpcActivity
{
  xpcActivityMgr = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];

  if (xpcActivityMgr)
  {
    xpcActivityMgr = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];
    isXpcActivityDeferred = [xpcActivityMgr isXpcActivityDeferred];

    xpcActivityMgr2 = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];
    LODWORD(xpcActivityMgr) = [xpcActivityMgr2 tryDeferXpcActivity];

    if ((isXpcActivityDeferred & 1) == 0)
    {
      if (xpcActivityMgr)
      {
        [(ASPCarryLog_ExtractUpload *)self _incrementCntForKey:@"extractupload_defer_count"];
        if ([(ASPCarryLog_ExtractUpload *)self isIOLogEnableNeeded])
        {
          nandDriver = [(ASPCarryLog_ExtractUpload *)self nandDriver];
          iolog_enable = [nandDriver iolog_enable];

          if (iolog_enable)
          {
            [(ASPCarryLog_ExtractUpload *)self setIsIOLogEnableNeeded:0];
          }
        }
      }
    }
  }

  return xpcActivityMgr;
}

- (BOOL)_isXpcActivityDeferred
{
  xpcActivityMgr = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];
  if (xpcActivityMgr)
  {
    xpcActivityMgr2 = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];
    isXpcActivityDeferred = [xpcActivityMgr2 isXpcActivityDeferred];
  }

  else
  {
    isXpcActivityDeferred = 0;
  }

  return isXpcActivityDeferred;
}

- (BOOL)_isIOLogFromHwLogger
{
  fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
  iologPath = [(ASPCarryLog_ExtractUpload *)self iologPath];
  v5 = [fileManager fileExistsAtPath:iologPath];

  if (!v5)
  {
    return 0;
  }

  iologPath2 = [(ASPCarryLog_ExtractUpload *)self iologPath];
  v7 = fopen([iologPath2 UTF8String], "r");

  if (!v7)
  {
    return 0;
  }

  v8 = iolog_is_from_hwlogger(v7);
  fclose(v7);
  return v8;
}

- (void)_forceDeferXpcActivity
{
  xpcActivityMgr = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];
  [xpcActivityMgr forceDeferXpcActivity];
}

- (int)_getSpdState
{
  uploadInfo = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
  v3 = [uploadInfo objectForKeyedSubscript:@"spd_state"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v3 unsignedIntValue];
    if (unsignedIntValue <= 2)
    {
      v5 = unsignedIntValue;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_internalCheckNextSpdExtract
{
  if (![(ASPCarryLog_ExtractUpload *)self isInternalBuild])
  {
    return 0;
  }

  nextSpdExtractTime = [(ASPCarryLog_ExtractUpload *)self nextSpdExtractTime];
  if (!nextSpdExtractTime)
  {
    goto LABEL_4;
  }

  v4 = nextSpdExtractTime;
  v5 = +[NSDate now];
  nextSpdExtractTime2 = [(ASPCarryLog_ExtractUpload *)self nextSpdExtractTime];
  v7 = [v5 compare:nextSpdExtractTime2];

  if (v7 != 1)
  {
    return 0;
  }

LABEL_4:
  v8 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Time to periodically extract SPD for internal build.", v11, 2u);
  }

  v9 = 1;
  [(ASPCarryLog_ExtractUpload *)self setSpdState:1];
  [(ASPCarryLog_ExtractUpload *)self setIsPeriodicSpd:1];
  return v9;
}

- (void)_tryExtractUploadSpd
{
  v3 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Extract and upload SPD start.", buf, 2u);
  }

  if (![(ASPCarryLog_ExtractUpload *)self spdState]|| [(ASPCarryLog_ExtractUpload *)self spdState]>= 3)
  {
    v4 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100048F14(v4, self);
    }

    [(ASPCarryLog_ExtractUpload *)self setSpdState:0];
  }

  if (![(ASPCarryLog_ExtractUpload *)self _tryCreateWorkDirectories])
  {
    [(ASPCarryLog_ExtractUpload *)self setSpdState:0];
  }

  if ([(ASPCarryLog_ExtractUpload *)self spdState]== 1)
  {
    [(ASPCarryLog_ExtractUpload *)self setSpdState:[(ASPCarryLog_ExtractUpload *)self _tryExtractSpdToNextState]];
  }

  if ([(ASPCarryLog_ExtractUpload *)self spdState]== 2)
  {
    if ([(ASPCarryLog_ExtractUpload *)self isPeriodicSpd])
    {
      v5 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "End this run after periodic spd extraction. Wait for next activity trigger to upload", v15, 2u);
      }

      goto LABEL_25;
    }

    if ([(ASPCarryLog_ExtractUpload *)self _tryDeferXpcActivity])
    {
LABEL_25:
      v6 = 0;
      goto LABEL_26;
    }

    v6 = [(ASPCarryLog_ExtractUpload *)self _compressFilesForSpd:1];
    if (v6)
    {
      fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
      v10 = [fileManager attributesOfItemAtPath:v6 error:0];
      -[ASPCarryLog_ExtractUpload setLastTotalUploadSize:](self, "setLastTotalUploadSize:", [v10 fileSize]);

      uploadDriver = [(ASPCarryLog_ExtractUpload *)self uploadDriver];
      taskingId = [(ASPCarryLog_ExtractUpload *)self taskingId];
      deviceId = [(ASPCarryLog_ExtractUpload *)self deviceId];
      [uploadDriver uploadFile:v6 TaskingId:taskingId DeviceId:deviceId LogType:@"com.apple.nand.iolog.spd"];

      [(ASPCarryLog_ExtractUpload *)self _removeExtractedFiles];
      [(ASPCarryLog_ExtractUpload *)self setSpdState:0];
    }
  }

  else
  {
    v6 = 0;
  }

  if (![(ASPCarryLog_ExtractUpload *)self spdState])
  {
    if ([(ASPCarryLog_ExtractUpload *)self isInternalBuild])
    {
      v7 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting next SPD extraction time", v14, 2u);
      }

      [(ASPCarryLog_ExtractUpload *)self _internalSetNextSpdExtractionTime];
    }

    [(ASPCarryLog_ExtractUpload *)self _setUploadInfoWithSpdState:0];
    if ([(ASPCarryLog_ExtractUpload *)self uploadIdx]<= 0)
    {
      nandDriver = [(ASPCarryLog_ExtractUpload *)self nandDriver];
      [nandDriver iolog_enable];
    }
  }

LABEL_26:
}

- (unsigned)_tryExtractSpdToNextState
{
  v27 = 0;
  v25 = 0;
  __size = 0;
  v24 = 0;
  nandDriver = [(ASPCarryLog_ExtractUpload *)self nandDriver];
  v4 = [nandDriver getSpdHdrWithSize:&__size gcIdle:&v27 totalLbaCnt:&v25 estSpdSize:&v24];

  if (v4 && __size && v25)
  {
    if (v27 != 1)
    {
      [(ASPCarryLog_ExtractUpload *)self _forceDeferXpcActivity];
      free(v4);
      return 1;
    }

    spdFilePath = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
    v6 = fopen([spdFilePath UTF8String], "w");

    if (v6)
    {
      v7 = oslog;
      if (v24 < 0xC800001)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Start extracting full SPD data", v23, 2u);
        }

        nandDriver2 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
        v21 = [nandDriver2 writeFullSpdToFileWithHdrBuf:v4 hdrSize:__size totalLbaCnt:v25 filePtr:v6 spdSizeLimit:209715200];

        v22 = oslog;
        if (v21)
        {
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            v11 = 2;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SPD data successfully written to file.", v23, 2u);
            v10 = 0;
          }

          else
          {
            v10 = 0;
            v11 = 2;
          }

          v8 = 1;
        }

        else
        {
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            sub_100048FB0();
          }

          v8 = 0;
          v11 = 0;
          v10 = 1;
        }
      }

      else
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_100048FE4(&v24, v7);
        }

        v8 = 1;
        fwrite(v4, __size, 1uLL, v6);
        nandDriver3 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
        [nandDriver3 addSpdEstSizeExceedLimitToFile:v6 limit:209715200];

        v10 = 0;
        v11 = 2;
      }

      free(v4);
      fclose(v6);
      if ((v10 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    v12 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049070(v12, self);
    }
  }

  else
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049120();
    }

    __size = 0;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  free(v4);
LABEL_18:
  v11 = 0;
  v8 = 0;
LABEL_19:
  fileManager = [(ASPCarryLog_ExtractUpload *)self fileManager];
  spdFilePath2 = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
  v15 = [fileManager fileExistsAtPath:spdFilePath2];

  if (!v15)
  {
    if (!v8)
    {
      return v11;
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_100049154();
  }

  fileManager2 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  spdFilePath3 = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
  [fileManager2 removeItemAtPath:spdFilePath3 error:0];

LABEL_23:
  if ((v8 & 1) == 0)
  {
    return v11;
  }

LABEL_26:
  v18 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SPD extraction done. Saving state...", v23, 2u);
  }

  [(ASPCarryLog_ExtractUpload *)self _setUploadInfoWithSpdState:2];
  return v11;
}

@end