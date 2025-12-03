@interface GmoRecorder
- (BOOL)setPathWith:(id)with;
- (id)generateFileNameWithExtension:(id)extension extensionStr:(id)str;
- (id)init:(id)init recordType:(int)type recorderId:(unsigned int)id filePrefix:(id)prefix fileExt:(id)ext;
- (void)addRecSize:(void *)size size:(unint64_t)a4 headerRec:(BOOL)rec;
- (void)addRecWithObject:(id)object;
- (void)checkStopConditionsAndStop;
- (void)finish;
- (void)requestWithNumOfRecords:(unint64_t)records;
- (void)requestWithRecordLengthMs:(int64_t)ms;
- (void)startRec:(id)rec addTimeStamp:(BOOL)stamp dirName:(id)name;
- (void)stop;
- (void)stopAndCloseFile;
@end

@implementation GmoRecorder

- (void)finish
{
  [(GmoRecorder *)self stop];
  delegate = self->delegate;

  [(gmoRecorderStatusUpdateDelegate *)delegate gmoRecorderCompleteDelegate:self];
}

- (void)stop
{
  v29 = *MEMORY[0x277D85DE8];
  if (!self->_startRequested)
  {
    if (!self->_isActive)
    {
      return;
    }

    goto LABEL_5;
  }

  if (self->_isActive)
  {
LABEL_5:
    self->_stopRequested = 1;
    goto LABEL_6;
  }

  self->_startRequested = 0;
LABEL_6:
  [(gmoRecorderStatusUpdateDelegate *)self->delegate gmoRecorderStopRequestedDelegate:self];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recorderId = self->_recorderId;
    type_low = LOBYTE(self->_type);
    startRequested = self->_startRequested;
    isActive = self->_isActive;
    recordsRequested = self->_recordsRequested;
    recordsWritten = self->_recordsWritten;
    recLenghMsRequested = self->_recLenghMsRequested;
    currentRecLengthMs = self->_currentRecLengthMs;
    v11 = 136317186;
    v12 = "[GmoRecorder stop]";
    v13 = 1024;
    v14 = recorderId;
    v15 = 1024;
    v16 = type_low;
    v17 = 1024;
    v18 = startRequested;
    v19 = 1024;
    v20 = isActive;
    v21 = 2048;
    v22 = recordsRequested;
    v23 = 2048;
    v24 = recordsWritten;
    v25 = 2048;
    v26 = recLenghMsRequested;
    v27 = 2048;
    v28 = currentRecLengthMs;
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:ReqStop: recId: %d, Type: %d, Req: %d, Actv: %d,  recsReq: %lld, recWritten: %lld, recLegthReqMs: %ld, currRecLengthMs: %ld\n", &v11, 0x4Cu);
  }

  [(GmoRecorder *)self stopAndCloseFile];
}

- (void)stopAndCloseFile
{
  v21 = *MEMORY[0x277D85DE8];
  *&self->_isActive = 256;
  self->_startRequested = 0;
  self->_recordsRequested = 0;
  file = self->_file;
  if (file)
  {
    v4 = fclose(file);
    self->_file = 0;
    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        recDirPath = self->_recDirPath;
        v13 = 136315394;
        v14 = "[GmoRecorder stopAndCloseFile]";
        v15 = 2112;
        v16 = recDirPath;
        _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:ERROR: Unable to close file: %@\n", &v13, 0x16u);
      }

      __assert_rtn("[GmoRecorder stopAndCloseFile]", "GmoRecorder.mm", 412, "!REC:ERROR: Unable to close file");
    }

    v5 = fopen([(NSString *)self->_fullFilePath UTF8String], "rb");
    self->_file = v5;
    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_recDirPath;
        v13 = 136315394;
        v14 = "[GmoRecorder stopAndCloseFile]";
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:ERROR: File write check failed for: %@\n", &v13, 0x16u);
      }

      __assert_rtn("[GmoRecorder stopAndCloseFile]", "GmoRecorder.mm", 428, "!REC:ERROR: File write check failed");
    }

    fseek(v5, 0, 2);
    v6 = MEMORY[0x22AA534D0](self->_file);
    fclose(self->_file);
    self->_file = 0;
    bytesWritten = self->_bytesWritten;
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v6 != bytesWritten)
    {
      if (v8)
      {
        v12 = self->_recDirPath;
        v13 = 136315906;
        v14 = "[GmoRecorder stopAndCloseFile]";
        v15 = 2048;
        v16 = bytesWritten;
        v17 = 2048;
        v18 = v6;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:ERROR: File size written do not match! Written: %lld, Actual size: %llu, path: %@\n", &v13, 0x2Au);
      }

      __assert_rtn("[GmoRecorder stopAndCloseFile]", "GmoRecorder.mm", 434, "!REC:ERROR: File size written do not match!");
    }

    if (v8)
    {
      v9 = self->_recDirPath;
      v13 = 136315906;
      v14 = "[GmoRecorder stopAndCloseFile]";
      v15 = 2048;
      v16 = v6;
      v17 = 2048;
      v18 = v6;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:file: File written, Written: %lld, Actual size: %llu, path: %@\n", &v13, 0x2Au);
    }
  }
}

- (void)checkStopConditionsAndStop
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_isActive)
  {
    v3 = (self->_currentRecLengthMs / 1000);
    if (self->_secondsComplete < v3)
    {
      [(gmoRecorderStatusUpdateDelegate *)self->delegate gmoRecorderStatusUpdateDelegate:self secondsCompleted:?];
      self->_secondsComplete = v3;
    }

    recordsRequested = self->_recordsRequested;
    if (recordsRequested && self->_recordsWritten >= recordsRequested || (v5 = self->_recLenghMsRequested) != 0 && self->_currentRecLengthMs >= v5 || self->_stopRequested)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        recorderId = self->_recorderId;
        type_low = LOBYTE(self->_type);
        isActive = self->_isActive;
        recordsWritten = self->_recordsWritten;
        recLenghMsRequested = self->_recLenghMsRequested;
        currentRecLengthMs = self->_currentRecLengthMs;
        v12 = 136316930;
        v13 = "[GmoRecorder checkStopConditionsAndStop]";
        v14 = 1024;
        v15 = recorderId;
        v16 = 1024;
        v17 = type_low;
        v18 = 1024;
        v19 = isActive;
        v20 = 2048;
        v21 = recordsRequested;
        v22 = 2048;
        v23 = recordsWritten;
        v24 = 2048;
        v25 = recLenghMsRequested;
        v26 = 2048;
        v27 = currentRecLengthMs;
        _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:STOP: recId: %d, Type: %d, Actv: %d, recsReq: %lld, recWritten: %lld, recLegthReqMs: %ld, currRecLengthMs: %ld\n", &v12, 0x46u);
      }

      self->_isComplete = 1;
      [(GmoRecorder *)self stopAndCloseFile];
      [(gmoRecorderStatusUpdateDelegate *)self->delegate gmoRecorderCompleteDelegate:self];
    }
  }
}

- (void)addRecWithObject:(id)object
{
  v37 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  [(GmoRecorder *)self timersUpdate];
  [(GmoRecorder *)self checkStopConditionsAndStop];
  if (self->_isActive)
  {
    type = self->_type;
    v6 = 200;
    if (type != 1)
    {
      v6 = 0;
    }

    if (type)
    {
      v7 = v6;
    }

    else
    {
      v7 = 100;
    }

    v20 = 0;
    v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:objectCopy format:v7 options:0 error:&v20];
    v9 = v20;
    fullFilePath = self->_fullFilePath;
    v19 = v9;
    [v8 writeToFile:fullFilePath options:1 error:&v19];
    v11 = v19;

    ++self->_recordsWritten;
    v12 = self->_bytesWritten + [v8 length];
    self->_bytesWritten = v12;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      recorderId = self->_recorderId;
      type_low = LOBYTE(self->_type);
      recordsRequested = self->_recordsRequested;
      recordsWritten = self->_recordsWritten;
      recLenghMsRequested = self->_recLenghMsRequested;
      currentRecLengthMs = self->_currentRecLengthMs;
      *buf = 136316930;
      v22 = "[GmoRecorder addRecWithObject:]";
      v23 = 1024;
      v24 = recorderId;
      v25 = 1024;
      v26 = type_low;
      v27 = 2048;
      v28 = recordsRequested;
      v29 = 2048;
      v30 = recordsWritten;
      v31 = 2048;
      v32 = recLenghMsRequested;
      v33 = 2048;
      v34 = currentRecLengthMs;
      v35 = 2048;
      v36 = v12;
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:ADD: recId: %d, Type: %d, recReq: %lld, recWritten: %lld, lengthReq: %ld [ms], currRecLength: %ld [ms], written %lld bytes\n", buf, 0x4Au);
    }
  }
}

- (void)addRecSize:(void *)size size:(unint64_t)a4 headerRec:(BOOL)rec
{
  v14 = *MEMORY[0x277D85DE8];
  [(GmoRecorder *)self timersUpdate];
  [(GmoRecorder *)self checkStopConditionsAndStop];
  if (self->_isActive)
  {
    if (self->_type)
    {
      if (rec)
      {
        return;
      }

      goto LABEL_4;
    }

    if (fwrite(size, a4, 1uLL, self->_file) != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        fullFilePath = self->_fullFilePath;
        v10 = 136315394;
        v11 = "[GmoRecorder addRecSize:size:headerRec:]";
        v12 = 2112;
        v13 = fullFilePath;
        _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:ERROR: Write to file failed: %@\n", &v10, 0x16u);
      }

      __assert_rtn("[GmoRecorder addRecSize:size:headerRec:]", "GmoRecorder.mm", 284, "!REC:ERROR: Write to file failed");
    }

    self->_bytesWritten += a4;
    if (!rec)
    {
LABEL_4:
      ++self->_recordsWritten;
    }
  }
}

- (void)startRec:(id)rec addTimeStamp:(BOOL)stamp dirName:(id)name
{
  stampCopy = stamp;
  v52 = *MEMORY[0x277D85DE8];
  recCopy = rec;
  nameCopy = name;
  if (self->_recordsRequested == self->_recLenghMsRequested)
  {
    __assert_rtn("[GmoRecorder startRec:addTimeStamp:dirName:]", "GmoRecorder.mm", 191, "_recordsRequested ^ _recLenghMsRequested");
  }

  if (self->_startRequested && !self->_isActive && !self->_stopRequested)
  {
    v10 = [(NSString *)self->_recDirPath stringByAppendingPathComponent:nameCopy];
    currentRecDirPath = self->_currentRecDirPath;
    self->_currentRecDirPath = v10;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = self->_currentRecDirPath;
    v40 = 0;
    v14 = [defaultManager createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v40];
    v39 = v40;

    v38 = [v39 description];
    if (v14)
    {
      self->_isActive = 1;
      self->_startRequested = 0;
      if (stampCopy)
      {
        [(GmoRecorder *)self generateFileNameWithExtension:recCopy extensionStr:self->_ext];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", recCopy, self->_ext];
      }
      v15 = ;
      fileNameWithExt = self->_fileNameWithExt;
      self->_fileNameWithExt = v15;

      v26 = [(NSString *)self->_currentRecDirPath stringByAppendingPathComponent:self->_fileNameWithExt];
      fullFilePath = self->_fullFilePath;
      self->_fullFilePath = v26;

      v28 = fopen([(NSString *)self->_fullFilePath UTF8String], "w");
      self->_file = v28;
      if (!v28)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v36 = *__error();
          uTF8String = [(NSString *)self->_fullFilePath UTF8String];
          *buf = 136315650;
          v42 = "[GmoRecorder startRec:addTimeStamp:dirName:]";
          v43 = 1024;
          LODWORD(v44) = v36;
          WORD2(v44) = 2080;
          *(&v44 + 6) = uTF8String;
          _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:ERROR: %d Unable to create record: %s\n", buf, 0x1Cu);
        }

        perror("startRec: ERROR");
        __assert_rtn("[GmoRecorder startRec:addTimeStamp:dirName:]", "GmoRecorder.mm", 224, "false");
      }

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      self->_startTime = v29;
      [(gmoRecorderStatusUpdateDelegate *)self->delegate gmoRecorderStartedDelegate:self];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        recorderId = self->_recorderId;
        type_low = LOBYTE(self->_type);
        startRequested = self->_startRequested;
        isActive = self->_isActive;
        recordsRequested = self->_recordsRequested;
        recordsWritten = self->_recordsWritten;
        *buf = 136316674;
        v42 = "[GmoRecorder startRec:addTimeStamp:dirName:]";
        v43 = 1024;
        LODWORD(v44) = recorderId;
        WORD2(v44) = 1024;
        *(&v44 + 6) = type_low;
        WORD5(v44) = 1024;
        HIDWORD(v44) = startRequested;
        *v45 = 2048;
        *&v45[2] = recordsRequested;
        v46 = 1024;
        *v47 = isActive;
        *&v47[4] = 2048;
        *&v47[6] = recordsWritten;
        _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:START: recId: %d, Type: %d, Req: %d, recReq: %lld, Actv: %d, recWritten: %lld\n", buf, 0x38u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_currentRecDirPath;
        v17 = self->_recorderId;
        v18 = LOBYTE(self->_type);
        v19 = self->_startRequested;
        v20 = self->_isActive;
        v22 = self->_recordsRequested;
        v21 = self->_recordsWritten;
        v23 = v38;
        uTF8String2 = [v38 UTF8String];
        *buf = 136317186;
        v42 = "[GmoRecorder startRec:addTimeStamp:dirName:]";
        v43 = 2112;
        *&v44 = v16;
        WORD4(v44) = 1024;
        *(&v44 + 10) = v17;
        HIWORD(v44) = 1024;
        *v45 = v18;
        *&v45[4] = 1024;
        *&v45[6] = v19;
        v46 = 2048;
        *v47 = v22;
        *&v47[8] = 1024;
        *&v47[10] = v20;
        v48 = 2048;
        v49 = v21;
        v50 = 2080;
        v51 = uTF8String2;
        _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:START:ERROR Error creating path: %@ for: recId: %d, Type: %d, Req: %d, recReq: %lld, Actv: %d, recWritten: %lld, error:%s\n", buf, 0x4Cu);
      }

      [(GmoRecorder *)self stop];
    }
  }
}

- (id)generateFileNameWithExtension:(id)extension extensionStr:(id)str
{
  extensionCopy = extension;
  strCopy = str;
  date = [MEMORY[0x277CBEAA8] date];
  v9 = objc_opt_new();
  [v9 setDateFormat:@"yyyy-MM-dd"];
  v10 = [v9 stringFromDate:date];
  date2 = [MEMORY[0x277CBEAA8] date];
  v12 = objc_opt_new();
  [v12 setDateFormat:@"HH-mm-ss"];
  v13 = [v12 stringFromDate:date2];
  prefix = self->_prefix;
  if (extensionCopy)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_D%@_T%@%@.%@", prefix, v10, v13, extensionCopy, strCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_D%@_T%@.%@", prefix, v10, v13, strCopy];
  }
  v15 = ;

  return v15;
}

- (void)requestWithNumOfRecords:(unint64_t)records
{
  if (!self->_isActive)
  {
    *&self->_startRequested = 1;
    *&self->_isStopped = 0;
    self->_startTime = 0.0;
    self->_secondsComplete = 0;
    self->_recLenghMsRequested = 0;
    self->_currentRecLengthMs = 0;
    self->_recordsWritten = 0;
    self->_bytesWritten = 0;
    self->_recordsRequested = records;
    [(gmoRecorderStatusUpdateDelegate *)self->delegate gmoRecorderStartRequestedDelegate:self];
  }
}

- (void)requestWithRecordLengthMs:(int64_t)ms
{
  if (!self->_isActive)
  {
    *&self->_startRequested = 1;
    *&self->_isStopped = 0;
    self->_startTime = 0.0;
    self->_secondsComplete = 0;
    *&self->_currentRecLengthMs = 0u;
    *&self->_recordsWritten = 0u;
    self->_recLenghMsRequested = ms;
    [(gmoRecorderStatusUpdateDelegate *)self->delegate gmoRecorderStartRequestedDelegate:self];
  }
}

- (BOOL)setPathWith:(id)with
{
  v38 = *MEMORY[0x277D85DE8];
  withCopy = with;
  objc_storeStrong(&self->_recDirPath, with);
  objc_storeStrong(&self->_currentRecDirPath, with);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0;
  v7 = [defaultManager createDirectoryAtPath:withCopy withIntermediateDirectories:1 attributes:0 error:&v19];
  v8 = v19;

  v9 = [v8 description];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    recorderId = self->_recorderId;
    type_low = LOBYTE(self->_type);
    startRequested = self->_startRequested;
    recLenghMsRequested = self->_recLenghMsRequested;
    isActive = self->_isActive;
    recordsWritten = self->_recordsWritten;
    v16 = v9;
    uTF8String = [v9 UTF8String];
    *buf = 136317186;
    v21 = "[GmoRecorder setPathWith:]";
    v22 = 2112;
    v23 = withCopy;
    v24 = 1024;
    v25 = recorderId;
    v26 = 1024;
    v27 = type_low;
    v28 = 1024;
    v29 = startRequested;
    v30 = 2048;
    v31 = recLenghMsRequested;
    v32 = 1024;
    v33 = isActive;
    v34 = 2048;
    v35 = recordsWritten;
    v36 = 2080;
    v37 = uTF8String;
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:SETPATH: %@, recId: %d, Type: %d, Req: %d, lengthReg: %ld, Actv: %d, recWritten: %lld, error:%s\n", buf, 0x4Cu);
  }

  return v7;
}

- (id)init:(id)init recordType:(int)type recorderId:(unsigned int)id filePrefix:(id)prefix fileExt:(id)ext
{
  v29 = *MEMORY[0x277D85DE8];
  initCopy = init;
  prefixCopy = prefix;
  extCopy = ext;
  if (!initCopy || [initCopy isEqualToString:&stru_28380C970])
  {
    __assert_rtn("[GmoRecorder init:recordType:recorderId:filePrefix:fileExt:]", "GmoRecorder.mm", 34, "recPath!=nullptr && ![recPath isEqualToString:@]");
  }

  self->_recorderId = id;
  self->_type = type;
  fileNameWithExt = self->_fileNameWithExt;
  self->_fileNameWithExt = &stru_28380C970;

  fullFilePath = self->_fullFilePath;
  self->_fullFilePath = &stru_28380C970;

  objc_storeStrong(&self->_ext, ext);
  objc_storeStrong(&self->_prefix, prefix);
  self->_startTime = 0.0;
  self->_secondsComplete = 0;
  *(&self->_secondsComplete + 5) = 0;
  *&self->_recLenghMsRequested = 0u;
  *&self->_recordsRequested = 0u;
  self->_bytesWritten = 0;
  v17 = [(GmoRecorder *)self setPathWith:initCopy];
  v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v18)
    {
      type_low = LOBYTE(self->_type);
      recDirPath = self->_recDirPath;
      v25 = 136315650;
      v26 = "[GmoRecorder init:recordType:recorderId:filePrefix:fileExt:]";
      v27 = 1024;
      *v28 = type_low;
      *&v28[4] = 2112;
      *&v28[6] = recDirPath;
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:INIT: Type: %d, Path: %@\n", &v25, 0x1Cu);
    }

    selfCopy = self;
  }

  else
  {
    if (v18)
    {
      v22 = self->_recDirPath;
      v23 = LOBYTE(self->_type);
      v25 = 136315650;
      v26 = "[GmoRecorder init:recordType:recorderId:filePrefix:fileExt:]";
      v27 = 2112;
      *v28 = v22;
      *&v28[8] = 1024;
      *&v28[10] = v23;
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: REC:INIT:ERROR: Unable to use path: %@ for recorder type: %d\n", &v25, 0x1Cu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end