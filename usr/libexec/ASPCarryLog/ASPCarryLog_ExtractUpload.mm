@interface ASPCarryLog_ExtractUpload
- (ASPCarryLog_ExtractUpload)initWithNandDriver:(id)a3 UploadDriver:(id)a4 StateManager:(id)a5 workDirectory:(id)a6 internalBuild:(BOOL)a7;
- (BOOL)_getDiskSpaceFlag;
- (BOOL)_internalCheckNextSpdExtract;
- (BOOL)_isIOLogFromHwLogger;
- (BOOL)_isLastExtractionTooLongAgo;
- (BOOL)_isXpcActivityDeferred;
- (BOOL)_tryDeferXpcActivity;
- (id)_checkAndCompressFiles;
- (id)_compressFilesForSpd:(BOOL)a3;
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
- (void)_incrementCntForKey:(id)a3;
- (void)_internalSetNextSpdExtractionTime;
- (void)_iologLba_updateNewValue:(unint64_t)a3;
- (void)_jetSamStatsCollect_end;
- (void)_jetSamStatsCollect_start;
- (void)_removeConvertedIOLog;
- (void)_removeExtractedFiles;
- (void)_removePendingUploadFilePath;
- (void)_saveLastUploadFilePath:(id)a3;
- (void)_savePendingUploadFilePath:(id)a3;
- (void)_tryExtractUploadSpd;
- (void)_updateLastExtractTime;
- (void)_updateUploadInfoWithContentPath:(id)a3 contentSize:(unint64_t)a4;
- (void)tryExtractUpload:(id)a3;
@end

@implementation ASPCarryLog_ExtractUpload

- (ASPCarryLog_ExtractUpload)initWithNandDriver:(id)a3 UploadDriver:(id)a4 StateManager:(id)a5 workDirectory:(id)a6 internalBuild:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v58.receiver = self;
  v58.super_class = ASPCarryLog_ExtractUpload;
  v17 = [(ASPCarryLog_ExtractUpload *)&v58 init];
  if (v17)
  {
    v18 = +[NSFileManager defaultManager];
    fileManager = v17->_fileManager;
    v17->_fileManager = v18;

    objc_storeStrong(&v17->_nandDriver, a3);
    objc_storeStrong(&v17->_uploadDriver, a4);
    objc_storeStrong(&v17->_stateMgr, a5);
    objc_storeStrong(&v17->_workDir, a6);
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

    v32 = [(ASPCarryLog_ExtractUpload *)v17 _getPendingUploadFile];
    pendingUploadFile = v17->_pendingUploadFile;
    v17->_pendingUploadFile = v32;

    v17->_isInternalBuild = a7;
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

    v46 = [(ASPCarryLog_ExtractUpload *)v17 stateMgr];
    v47 = [(ASPCarryLog_ExtractUpload *)v17 uploadInfoKey];
    v48 = [v46 getValueForKey:v47 expectedType:2];
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
    v51 = [(ASPCarryLog_ExtractUpload *)v17 _getNextSpdExtractTime];
    nextSpdExtractTime = v17->_nextSpdExtractTime;
    v17->_nextSpdExtractTime = v51;

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
  v4 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
  v5 = [v4 nandStats_get_hoursAgo:0];

  v6 = [v5 objectForKey:&off_1000BFF30];
  v7 = [v6 unsignedLongLongValue];

  objc_autoreleasePoolPop(v3);
  return v7;
}

- (unint64_t)_iologLba_prevSubmission
{
  v2 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v3 = [v2 getValueForKey:@"iolog_lbas" expectedType:1];

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isLastExtractionTooLongAgo
{
  v2 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v3 = [v2 getValueForKey:@"last_extract_time" expectedType:0];

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
  v3 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v2 = currentDateTimeStr();
  [v3 setValue:v2 forKey:@"last_extract_time"];
}

- (unint64_t)_getlastTotalUploadSize
{
  v2 = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
  v3 = [v2 objectForKeyedSubscript:@"total_upload_size"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (int)_getUploadIdx
{
  v2 = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
  v3 = [v2 objectForKeyedSubscript:@"fileidx"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (BOOL)_getDiskSpaceFlag
{
  v2 = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
  v3 = [v2 objectForKeyedSubscript:@"enough_disk_space"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_getNextSpdExtractTime
{
  if ([(ASPCarryLog_ExtractUpload *)self isInternalBuild])
  {
    v3 = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
    v4 = [v3 objectForKeyedSubscript:@"next_spd_extraction_time"];

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
  v2 = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
  v3 = [v2 objectForKeyedSubscript:@"num_b2b_zip_errors"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_iologLba_updateNewValue:(unint64_t)a3
{
  v5 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  [v5 setValue:v4 forKey:@"iolog_lbas"];
}

- (id)_getPendingUploadFile
{
  v3 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v4 = [v3 getValueForKey:@"extractupload_pendingfile" expectedType:0];

  if (v4)
  {
    v5 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v6 = [v5 fileExistsAtPath:v4];

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

- (void)_updateUploadInfoWithContentPath:(id)a3 contentSize:(unint64_t)a4
{
  v10 = a3;
  if (v10)
  {
    [(ASPCarryLog_ExtractUpload *)self setUploadIdx:[(ASPCarryLog_ExtractUpload *)self uploadIdx]+ 1];
    [(ASPCarryLog_ExtractUpload *)self setLastTotalUploadSize:[(ASPCarryLog_ExtractUpload *)self lastTotalUploadSize]+ a4];
    [(ASPCarryLog_ExtractUpload *)self _saveLastUploadFilePath:v10];
    [(ASPCarryLog_ExtractUpload *)self _setUploadInfoWithSpdState:0];
    v6 = [(ASPCarryLog_ExtractUpload *)self endTimeStr];

    if (v6)
    {
      v7 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
      v8 = [(ASPCarryLog_ExtractUpload *)self taskingId];
      v9 = [(ASPCarryLog_ExtractUpload *)self endTimeStr];
      setTaskingInfoToLegacyUIDomain(v7, v8, v9, [(ASPCarryLog_ExtractUpload *)self lastTotalUploadSize], v10, [(ASPCarryLog_ExtractUpload *)self isInternalBuild]);
    }
  }

  else
  {
    [(ASPCarryLog_ExtractUpload *)self _setUploadInfoWithSpdState:0];
  }
}

- (void)_savePendingUploadFilePath:(id)a3
{
  v4 = a3;
  v5 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [v5 setValue:v4 forKey:@"extractupload_pendingfile"];
}

- (void)_saveLastUploadFilePath:(id)a3
{
  v4 = a3;
  v5 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [v5 setValue:v4 forKey:@"extractupload_lastupload"];
}

- (void)_removePendingUploadFilePath
{
  v2 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [v2 deleteKey:@"extractupload_pendingfile"];
}

- (int)_tryCreateWorkDirectories
{
  v3 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v4 = [(ASPCarryLog_ExtractUpload *)self workDir];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v8 = [(ASPCarryLog_ExtractUpload *)self workDir];
    v27 = 0;
    v9 = [v7 createDirectoryAtPath:v8 withIntermediateDirectories:0 attributes:0 error:&v27];
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

  v10 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v30 = NSFilePosixPermissions;
  v31 = &off_1000BFF48;
  v11 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v12 = [(ASPCarryLog_ExtractUpload *)self workDir];
  v26 = v6;
  [v10 setAttributes:v11 ofItemAtPath:v12 error:&v26];
  v13 = v26;

  v14 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v15 = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
  LOBYTE(v11) = [v14 fileExistsAtPath:v15];

  if ((v11 & 1) == 0)
  {
    v16 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v17 = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
    v25 = v13;
    v18 = [v16 createDirectoryAtPath:v17 withIntermediateDirectories:0 attributes:0 error:&v25];
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
  v19 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v28 = NSFilePosixPermissions;
  v29 = &off_1000BFF48;
  v20 = 1;
  v21 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v22 = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
  v24 = v13;
  [v19 setAttributes:v21 ofItemAtPath:v22 error:&v24];
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
  v3 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v4 = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:0];

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
        v11 = [(ASPCarryLog_ExtractUpload *)self fileManager];
        v12 = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
        v13 = [v12 stringByAppendingPathComponent:v10];
        [v11 removeItemAtPath:v13 error:0];

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
  v3 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v4 = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v7 = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
    [v6 removeItemAtPath:v7 error:0];
  }

  v8 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v9 = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v12 = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
    [v11 removeItemAtPath:v12 error:0];
  }

  v13 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
  v14 = [v13 iolog_disable];

  if (v14)
  {
    [(ASPCarryLog_ExtractUpload *)self setIsIOLogEnableNeeded:1];
    do
    {
      v15 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
      v16 = [(ASPCarryLog_ExtractUpload *)self iologPath];
      v17 = [v15 iolog_export:v16 max_export_size:25165824];
    }

    while (v17 >> 23 >= 3 && ![(ASPCarryLog_ExtractUpload *)self _tryDeferXpcActivity]);
    if ([(ASPCarryLog_ExtractUpload *)self isIOLogEnableNeeded])
    {
      v18 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
      [v18 iolog_enable];
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

  v20 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
  v21 = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
  v22 = [v20 nandCounters_save:v21];

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

  v23 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
  v24 = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
  v25 = [v23 nandStats_save:v24];

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
  v3 = [(ASPCarryLog_ExtractUpload *)self _iologLba_current];
  v4 = [(ASPCarryLog_ExtractUpload *)self _iologLba_prevSubmission];
  if (v3 > v4 && (v3 - v4) >> 13 || (result = [(ASPCarryLog_ExtractUpload *)self _isLastExtractionTooLongAgo]) != 0)
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
        [(ASPCarryLog_ExtractUpload *)self _iologLba_updateNewValue:v3];
        [(ASPCarryLog_ExtractUpload *)self _updateLastExtractTime];
        return 1;
      }
    }
  }

  return result;
}

- (void)_removeExtractedFiles
{
  v3 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v4 = [(ASPCarryLog_ExtractUpload *)self iologPath];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v7 = [(ASPCarryLog_ExtractUpload *)self iologPath];
    [v6 removeItemAtPath:v7 error:0];
  }

  v8 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v9 = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v12 = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
    [v11 removeItemAtPath:v12 error:0];
  }

  v13 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v14 = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    v16 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v17 = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
    [v16 removeItemAtPath:v17 error:0];
  }

  v18 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v19 = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
  v20 = [v18 fileExistsAtPath:v19];

  if (v20)
  {
    v21 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v22 = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
    [v21 removeItemAtPath:v22 error:0];
  }

  [(ASPCarryLog_ExtractUpload *)self _removeConvertedIOLog];
}

- (void)_removeConvertedIOLog
{
  v3 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v4 = [(ASPCarryLog_ExtractUpload *)self convertedIologPath];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v7 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v6 = [(ASPCarryLog_ExtractUpload *)self convertedIologPath];
    [v7 removeItemAtPath:v6 error:0];
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
  v4 = [(ASPCarryLog_ExtractUpload *)self _isIOLogFromHwLogger];
  gIsIOLogFromHwLogger = v4;
  if (!v4)
  {
    return 1;
  }

  v5 = [(ASPCarryLog_ExtractUpload *)self iologPath];
  v6 = fopen([v5 UTF8String], "r");

  v7 = [(ASPCarryLog_ExtractUpload *)self convertedIologPath];
  v8 = fopen([v7 UTF8String], "w");

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

- (id)_compressFilesForSpd:(BOOL)a3
{
  v3 = a3;
  if (gIsIOLogFromHwLogger)
  {
    [(ASPCarryLog_ExtractUpload *)self convertedIologPath];
  }

  else
  {
    [(ASPCarryLog_ExtractUpload *)self iologPath];
  }
  v42 = ;
  v43 = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
  v5 = [(ASPCarryLog_ExtractUpload *)self tarInProgressDir];
  v6 = currentDateTimeStr();
  v7 = v6;
  if (v3)
  {
    v45 = [NSString stringWithFormat:@"%@/iologSpd_%@.tar", v5, v6];

    v44 = [[NSMutableArray alloc] initWithObjects:{v43, 0}];
  }

  else
  {
    v45 = [NSString stringWithFormat:@"%@/iolog_%@_%d.tar", v5, v6, [(ASPCarryLog_ExtractUpload *)self uploadIdx]];

    v8 = [NSMutableArray alloc];
    v9 = [(ASPCarryLog_ExtractUpload *)self nandcounterPath];
    v44 = [v8 initWithObjects:{v42, v9, 0}];

    if ([(ASPCarryLog_ExtractUpload *)self isInternalBuild])
    {
      v10 = [(ASPCarryLog_ExtractUpload *)self fileManager];
      v11 = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
      v12 = [v10 fileExistsAtPath:v11];

      if (v12)
      {
        v13 = [(ASPCarryLog_ExtractUpload *)self nandstatsPath];
        [v44 addObject:v13];
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
      v19 = [v17 lastPathComponent];
      v20 = v19;
      [v19 UTF8String];
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
    v30 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    v31 = [v30 fileExistsAtPath:v45];

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
  v3 = [(ASPCarryLog_ExtractUpload *)self pendingUploadFile];

  if (v3)
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
    v4 = 0;
    goto LABEL_5;
  }

  v4 = [(ASPCarryLog_ExtractUpload *)self _checkAndCompressFiles];
LABEL_5:

  return v4;
}

- (id)_getUploadContentPath
{
  v3 = [(ASPCarryLog_ExtractUpload *)self pendingUploadFile];

  if (v3)
  {
    v4 = [(ASPCarryLog_ExtractUpload *)self pendingUploadFile];
    v5 = 0;
    goto LABEL_9;
  }

  v5 = [(ASPCarryLog_ExtractUpload *)self _prepareContentsToUpload];
  if (![(ASPCarryLog_ExtractUpload *)self _isXpcActivityDeferred]&& v5)
  {
    v6 = [(ASPCarryLog_ExtractUpload *)self workDir];
    v7 = [v5 lastPathComponent];
    v4 = [v6 stringByAppendingPathComponent:v7];

    [(ASPCarryLog_ExtractUpload *)self _savePendingUploadFilePath:v4];
    v8 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    [v8 moveItemAtPath:v5 toPath:v4 error:0];

    v9 = [(ASPCarryLog_ExtractUpload *)self fileManager];
    LODWORD(v7) = [v9 fileExistsAtPath:v4];

    if (v7)
    {
      [(ASPCarryLog_ExtractUpload *)self _removeExtractedFiles];
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (void)tryExtractUpload:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [(ASPCarryLog_ExtractUpload *)self _jetSamStatsCollect_start];
  [(ASPCarryLog_ExtractUpload *)self setXpcActivityMgr:v4];
  v6 = [(ASPCarryLog_ExtractUpload *)self taskingId];
  if (v6 && (v7 = v6, [(ASPCarryLog_ExtractUpload *)self deviceId], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
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
      v13 = [(ASPCarryLog_ExtractUpload *)self lastTotalUploadSize];
      if (v13 >= [(ASPCarryLog_ExtractUpload *)self uploadSizeLimit])
      {
        v25 = oslog;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          v27 = [(ASPCarryLog_ExtractUpload *)self lastTotalUploadSize];
          v28 = [(ASPCarryLog_ExtractUpload *)self uploadSizeLimit];
          v29 = [(ASPCarryLog_ExtractUpload *)self taskingId];
          v34 = 134218498;
          v35 = v27;
          v36 = 2048;
          v37 = v28;
          v38 = 2080;
          v39 = [v29 UTF8String];
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Total upload size bytes %llu exceeding limit %llu, for tasking %s", &v34, 0x20u);
        }
      }

      else
      {
        v14 = [(ASPCarryLog_ExtractUpload *)self _getUploadContentPath];
        if (v14)
        {
          v15 = [(ASPCarryLog_ExtractUpload *)self fileManager];
          v16 = [v15 attributesOfItemAtPath:v14 error:0];
          v17 = [v16 fileSize];

          v18 = [(ASPCarryLog_ExtractUpload *)self uploadDriver];
          v19 = [(ASPCarryLog_ExtractUpload *)self taskingId];
          v20 = [(ASPCarryLog_ExtractUpload *)self deviceId];
          v21 = [v18 uploadFile:v14 TaskingId:v19 DeviceId:v20 LogType:@"com.apple.nand.iolog"];

          v22 = oslog;
          if (v21)
          {
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v14;
              v24 = v22;
              v34 = 136315138;
              v35 = [v14 UTF8String];
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Content %s passed to uploader.\n", &v34, 0xCu);
            }
          }

          else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            sub_100048EAC();
          }

          [(ASPCarryLog_ExtractUpload *)self _removePendingUploadFilePath];
          [(ASPCarryLog_ExtractUpload *)self _updateUploadInfoWithContentPath:v14 contentSize:v17];
          v32 = [(ASPCarryLog_ExtractUpload *)self lastTotalUploadSize];
          if (v32 >= [(ASPCarryLog_ExtractUpload *)self uploadSizeLimit])
          {
            v33 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
            [v33 iolog_disable];
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
    v9 = [(ASPCarryLog_ExtractUpload *)self pendingUploadFile];

    if (v9)
    {
      v10 = [(ASPCarryLog_ExtractUpload *)self fileManager];
      v11 = [(ASPCarryLog_ExtractUpload *)self pendingUploadFile];
      [v10 removeItemAtPath:v11 error:0];
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
  v3 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v4 = [v3 getValueForKey:@"extractupload_running" expectedType:0];

  if (v4)
  {
    [(ASPCarryLog_ExtractUpload *)self _incrementCntForKey:@"extractupload_jetsam_count"];
  }

  v5 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [v5 setValue:@"YES" forKey:@"extractupload_running"];
}

- (void)_jetSamStatsCollect_end
{
  v2 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [v2 deleteKey:@"extractupload_running"];
}

- (void)_incrementCntForKey:(id)a3
{
  v8 = a3;
  v4 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  v5 = [v4 getValueForKey:v8 expectedType:1];

  if (v5)
  {
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue] + 1);
  }

  else
  {
    v6 = &off_1000BFF60;
  }

  v7 = [(ASPCarryLog_ExtractUpload *)self stateMgr];
  [v7 setValue:v6 forKey:v8];
}

- (BOOL)_tryDeferXpcActivity
{
  v3 = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];

  if (v3)
  {
    v3 = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];
    v4 = [v3 isXpcActivityDeferred];

    v5 = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];
    LODWORD(v3) = [v5 tryDeferXpcActivity];

    if ((v4 & 1) == 0)
    {
      if (v3)
      {
        [(ASPCarryLog_ExtractUpload *)self _incrementCntForKey:@"extractupload_defer_count"];
        if ([(ASPCarryLog_ExtractUpload *)self isIOLogEnableNeeded])
        {
          v6 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
          v7 = [v6 iolog_enable];

          if (v7)
          {
            [(ASPCarryLog_ExtractUpload *)self setIsIOLogEnableNeeded:0];
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)_isXpcActivityDeferred
{
  v3 = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];
  if (v3)
  {
    v4 = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];
    v5 = [v4 isXpcActivityDeferred];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isIOLogFromHwLogger
{
  v3 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v4 = [(ASPCarryLog_ExtractUpload *)self iologPath];
  v5 = [v3 fileExistsAtPath:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = [(ASPCarryLog_ExtractUpload *)self iologPath];
  v7 = fopen([v6 UTF8String], "r");

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
  v2 = [(ASPCarryLog_ExtractUpload *)self xpcActivityMgr];
  [v2 forceDeferXpcActivity];
}

- (int)_getSpdState
{
  v2 = [(ASPCarryLog_ExtractUpload *)self uploadInfo];
  v3 = [v2 objectForKeyedSubscript:@"spd_state"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntValue];
    if (v4 <= 2)
    {
      v5 = v4;
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

  v3 = [(ASPCarryLog_ExtractUpload *)self nextSpdExtractTime];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = +[NSDate now];
  v6 = [(ASPCarryLog_ExtractUpload *)self nextSpdExtractTime];
  v7 = [v5 compare:v6];

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
      v9 = [(ASPCarryLog_ExtractUpload *)self fileManager];
      v10 = [v9 attributesOfItemAtPath:v6 error:0];
      -[ASPCarryLog_ExtractUpload setLastTotalUploadSize:](self, "setLastTotalUploadSize:", [v10 fileSize]);

      v11 = [(ASPCarryLog_ExtractUpload *)self uploadDriver];
      v12 = [(ASPCarryLog_ExtractUpload *)self taskingId];
      v13 = [(ASPCarryLog_ExtractUpload *)self deviceId];
      [v11 uploadFile:v6 TaskingId:v12 DeviceId:v13 LogType:@"com.apple.nand.iolog.spd"];

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
      v8 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
      [v8 iolog_enable];
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
  v3 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
  v4 = [v3 getSpdHdrWithSize:&__size gcIdle:&v27 totalLbaCnt:&v25 estSpdSize:&v24];

  if (v4 && __size && v25)
  {
    if (v27 != 1)
    {
      [(ASPCarryLog_ExtractUpload *)self _forceDeferXpcActivity];
      free(v4);
      return 1;
    }

    v5 = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
    v6 = fopen([v5 UTF8String], "w");

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

        v20 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
        v21 = [v20 writeFullSpdToFileWithHdrBuf:v4 hdrSize:__size totalLbaCnt:v25 filePtr:v6 spdSizeLimit:209715200];

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
        v9 = [(ASPCarryLog_ExtractUpload *)self nandDriver];
        [v9 addSpdEstSizeExceedLimitToFile:v6 limit:209715200];

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
  v13 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v14 = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
  v15 = [v13 fileExistsAtPath:v14];

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

  v16 = [(ASPCarryLog_ExtractUpload *)self fileManager];
  v17 = [(ASPCarryLog_ExtractUpload *)self spdFilePath];
  [v16 removeItemAtPath:v17 error:0];

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