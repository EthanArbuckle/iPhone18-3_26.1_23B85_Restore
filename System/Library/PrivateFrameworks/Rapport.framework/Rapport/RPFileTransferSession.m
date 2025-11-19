@interface RPFileTransferSession
- (BOOL)_activateAndReturnError:(id *)a3;
- (BOOL)_activateSourceAndReturnError:(id *)a3;
- (BOOL)_activateTargetAndReturnError:(id *)a3;
- (BOOL)_largeFileReceiveTaskUpdateSHA256CtxFromFileItem:(id)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)_prepareItem:(id)a3 error:(id *)a4;
- (BOOL)_readFD:(int)a3 buffer:(char *)a4 size:(unint64_t)a5 error:(id *)a6;
- (BOOL)_smallFilesReceiveTaskFileItem:(id)a3 error:(id *)a4;
- (BOOL)_truncateFD:(int)a3 size:(int64_t)a4 error:(id *)a5;
- (BOOL)_writeFD:(int)a3 buffer:(const char *)a4 size:(unint64_t)a5 error:(id *)a6;
- (BOOL)prepareTemplateAndReturnError:(id *)a3;
- (RPFileTransferSession)init;
- (RPFileTransferSession)initWithCoder:(id)a3;
- (id)_compressData:(id)a3 error:(id *)a4;
- (id)_decompressAndDecodeData:(id)a3 originalSize:(unint64_t)a4 error:(id *)a5;
- (id)_decompressData:(id)a3 originalSize:(unint64_t)a4 error:(id *)a5;
- (id)_encodeAndCompressObject:(id)a3 originalSize:(unint64_t *)a4 error:(id *)a5;
- (id)_ioQueueDequeue;
- (id)_largeFileSendTaskCreate;
- (id)_modTimeForFileWithPath:(const char *)a3 error:(id *)a4;
- (id)_readPath:(const char *)a3 size:(unint64_t)a4 error:(id *)a5;
- (id)_smallFilesSendTaskCreate;
- (id)_smallFilesSendTaskReadItem:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (id)resumeStateDict;
- (int)_openReadFileItem:(id)a3 error:(id *)a4;
- (int)_openReadPath:(const char *)a3 error:(id *)a4;
- (int)_openWritePath:(id)a3 size:(int64_t)a4 truncate:(BOOL)a5 error:(id *)a6;
- (void)_completeItem:(id)a3 error:(id)a4;
- (void)_completeItemDirect:(id)a3 error:(id)a4;
- (void)_controlCnxRetryIfNeeded;
- (void)_controlCnxStartIfNeeded;
- (void)_debugSetup;
- (void)_debugUpdate;
- (void)_handleDeviceFound:(id)a3;
- (void)_handleDeviceLost:(id)a3;
- (void)_handleDevicesCoalesced;
- (void)_handleIncomingConnectionEnded:(id)a3;
- (void)_handleIncomingConnectionStarted:(id)a3;
- (void)_invalidate;
- (void)_invalidated;
- (void)_largeFileReceiveRequest:(id)a3 responseHandler:(id)a4;
- (void)_largeFileReceiveTaskInvalidate:(id)a3;
- (void)_largeFileReceiveTaskRespond:(id)a3 error:(id)a4 complete:(BOOL)a5 responseHandler:(id)a6;
- (void)_largeFileReceiveTaskRun:(id)a3 data:(id)a4 sendFlags:(unsigned int)a5 responseHandler:(id)a6;
- (void)_largeFileSendTaskEnd:(id)a3 error:(id)a4;
- (void)_largeFileSendTaskFailed:(id)a3 error:(id)a4;
- (void)_largeFileSendTaskResponse:(id)a3 error:(id)a4 end:(BOOL)a5 xid:(unsigned int)a6;
- (void)_largeFileSendTaskSend:(id)a3 data:(id)a4 end:(BOOL)a5 xid:(unsigned int)a6;
- (void)_largeFileSendTaskStart:(id)a3;
- (void)_metricAddFileSize:(int64_t)a3;
- (void)_prefsChanged;
- (void)_processFinish;
- (void)_processReceivedItem:(id)a3 responseHandler:(id)a4;
- (void)_processReceivedItems:(id)a3 responseHandler:(id)a4;
- (void)_receivedEventID:(id)a3 event:(id)a4 options:(id)a5;
- (void)_receivedPeerUpdate:(id)a3;
- (void)_receivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)_reportCompletion:(id)a3;
- (void)_reportDataTransferred;
- (void)_reportProgressControlState;
- (void)_requestResumeStateFromReceiver;
- (void)_resumeStateReceiveRequest:(id)a3 responseHandler:(id)a4;
- (void)_scheduleItems;
- (void)_smallFilesReceiveRequest:(id)a3 responseHandler:(id)a4;
- (void)_smallFilesReceiveTaskComplete:(id)a3 error:(id)a4 responseHandler:(id)a5;
- (void)_smallFilesReceiveTaskRun:(id)a3 responseHandler:(id)a4;
- (void)_smallFilesSendTaskEnd:(id)a3 error:(id)a4;
- (void)_smallFilesSendTaskRun:(id)a3;
- (void)_startProgressReportTimer;
- (void)_stopProgressReportTimer;
- (void)_updateIfNeededWithBlock:(id)a3;
- (void)_updateLargeFilesTaskResumeState:(id)a3 data:(id)a4 sendFlags:(unsigned int)a5 error:(id)a6 complete:(BOOL)a7;
- (void)_updateSmallFilesTaskResumeState:(id)a3 error:(id)a4;
- (void)_updateWiFi;
- (void)activate;
- (void)addItem:(id)a3;
- (void)addItems:(id)a3;
- (void)dealloc;
- (void)deregisterEventID:(id)a3;
- (void)deregisterRequestID:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)finish;
- (void)invalidate;
- (void)registerEventID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)sendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 completion:(id)a7;
- (void)sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7;
- (void)setDebugFlags:(unint64_t)a3;
- (void)setFlags:(unsigned int)a3;
- (void)setLabel:(id)a3;
- (void)setLargeFileBufferBytes:(unint64_t)a3;
- (void)setMaxLargeFileTasks:(unint64_t)a3;
- (void)setMaxSmallFileTasks:(unint64_t)a3;
@end

@implementation RPFileTransferSession

- (RPFileTransferSession)init
{
  v7.receiver = self;
  v7.super_class = RPFileTransferSession;
  v2 = [(RPFileTransferSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_debugNotifyToken = -1;
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_RPFileTransferSession;
    v3->_resumable = 0;
    resumeState = v3->_resumeState;
    v3->_resumeState = 0;

    v3->_resumeStateFlushInterval = 1.0;
    v3->_flags = 0;
    v3->_maxSmallFileTasks = 3;
    [(RPFileTransferSession *)v3 setProgressHandlerTimeInterval:0.0];
    v5 = v3;
  }

  return v3;
}

- (RPFileTransferSession)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = RPFileTransferSession;
  v5 = [(RPFileTransferSession *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPFileTransferSession;
    v6->_resumable = 0;
    resumeState = v6->_resumeState;
    v6->_resumeState = 0;

    v6->_resumeStateFlushInterval = 1.0;
    v19 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_flags = v19;
    }

    v8 = v4;
    if ([v8 containsValueForKey:@"lFlBufB"])
    {
      v6->_largeFileBufferBytes = [v8 decodeInt64ForKey:@"lFlBufB"];
    }

    v9 = v8;
    if ([v9 containsValueForKey:@"lFlMxTs"])
    {
      v6->_maxLargeFileTasks = [v9 decodeInt64ForKey:@"lFlMxTs"];
    }

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    if ([v13 containsValueForKey:@"sFlMxTs"])
    {
      v6->_maxSmallFileTasks = [v13 decodeInt64ForKey:@"sFlMxTs"];
    }

    v14 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v15 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v16 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  flags = self->_flags;
  v14 = v4;
  if (flags)
  {
    [v4 encodeInt64:flags forKey:@"flags"];
    v4 = v14;
  }

  largeFileBufferBytes = self->_largeFileBufferBytes;
  if (largeFileBufferBytes)
  {
    [v14 encodeInt64:largeFileBufferBytes forKey:@"lFlBufB"];
    v4 = v14;
  }

  maxLargeFileTasks = self->_maxLargeFileTasks;
  if (maxLargeFileTasks)
  {
    [v14 encodeInt64:maxLargeFileTasks forKey:@"lFlMxTs"];
    v4 = v14;
  }

  peerPublicKey = self->_peerPublicKey;
  if (peerPublicKey)
  {
    [v14 encodeObject:peerPublicKey forKey:@"peerPK"];
    v4 = v14;
  }

  selfPublicKey = self->_selfPublicKey;
  if (selfPublicKey)
  {
    [v14 encodeObject:selfPublicKey forKey:@"selfPK"];
    v4 = v14;
  }

  selfSecretKey = self->_selfSecretKey;
  if (selfSecretKey)
  {
    [v14 encodeObject:selfSecretKey forKey:@"selfSK"];
    v4 = v14;
  }

  maxSmallFileTasks = self->_maxSmallFileTasks;
  if (maxSmallFileTasks)
  {
    [v14 encodeInt64:maxSmallFileTasks forKey:@"sFlMxTs"];
    v4 = v14;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v14 encodeObject:serviceType forKey:@"srvTy"];
    v4 = v14;
  }

  targetID = self->_targetID;
  if (targetID)
  {
    [v14 encodeObject:targetID forKey:@"targetID"];
    v4 = v14;
  }
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    dispatch_source_cancel(progressTimer);
    v5 = self->_progressTimer;
    self->_progressTimer = 0;
  }

  resumeState = self->_resumeState;
  self->_resumeState = 0;

  v7.receiver = self;
  v7.super_class = RPFileTransferSession;
  [(RPFileTransferSession *)&v7 dealloc];
}

- (id)descriptionWithLevel:(int)a3
{
  NSAppendPrintF();
  v4 = 0;
  v5 = v4;
  targetID = self->_targetID;
  if (targetID)
  {
    v24 = v4;
    v17 = targetID;
    NSAppendPrintF();
    v7 = v24;

    v5 = v7;
  }

  if (self->_flags)
  {
    flags = self->_flags;
    NSAppendPrintF();
    v8 = v5;

    v5 = v8;
  }

  label = self->_label;
  if (label)
  {
    v19 = label;
    NSAppendPrintF();
    v10 = v5;

    v5 = v10;
  }

  if (self->_largeFileBufferBytes)
  {
    largeFileBufferBytes = self->_largeFileBufferBytes;
    NSAppendPrintF();
    v11 = v5;

    v5 = v11;
  }

  if (self->_maxLargeFileTasks)
  {
    maxLargeFileTasks = self->_maxLargeFileTasks;
    NSAppendPrintF();
    v12 = v5;

    v5 = v12;
  }

  if (self->_maxSmallFileTasks)
  {
    maxSmallFileTasks = self->_maxSmallFileTasks;
    NSAppendPrintF();
    v13 = v5;

    v5 = v13;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    v23 = serviceType;
    NSAppendPrintF();
    v15 = v5;

    v5 = v15;
  }

  return v5;
}

- (void)setDebugFlags:(unint64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__RPFileTransferSession_setDebugFlags___block_invoke;
  v4[3] = &unk_1E7C934B0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setFlags:(unsigned int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__RPFileTransferSession_setFlags___block_invoke;
  v3[3] = &unk_1E7C94280;
  v4 = a3;
  v3[4] = self;
  [(RPFileTransferSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __34__RPFileTransferSession_setFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 556);
  if (v1 != v3)
  {
    if (*(v2 + 8) == 1 && (v5 = **(v2 + 152), v5 <= 30))
    {
      if (v5 == -1)
      {
        v10 = _LogCategory_Initialize();
        v8 = *(a1 + 40);
        v2 = *(a1 + 32);
        if (!v10)
        {
          goto LABEL_8;
        }

        v11 = *(v2 + 152);
        v12 = *(v2 + 556);
      }

      else
      {
        v6 = *(a1 + 40);
        v7 = *(v2 + 556);
      }

      LogPrintF();
      v8 = *(a1 + 40);
      v2 = *(a1 + 32);
    }

    else
    {
      v8 = *(a1 + 40);
    }

LABEL_8:
    *(v2 + 556) = v8;
  }

  return v1 != v3;
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v5 = a3;
  v4 = v5;
  [v5 UTF8String];
  LogCategoryReplaceF();
}

- (void)setLargeFileBufferBytes:(unint64_t)a3
{
  if (self->_largeFileBufferBytes != a3)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
        largeFileBufferBytes = self->_largeFileBufferBytes;
      }

      LogPrintF();
    }
  }

LABEL_6:
  self->_largeFileBufferBytes = a3;
}

- (void)setMaxLargeFileTasks:(unint64_t)a3
{
  if (self->_maxLargeFileTasks != a3)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
        maxLargeFileTasks = self->_maxLargeFileTasks;
      }

      LogPrintF();
    }
  }

LABEL_6:
  self->_maxLargeFileTasks = a3;
}

- (void)setMaxSmallFileTasks:(unint64_t)a3
{
  if (self->_maxSmallFileTasks != a3)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
        maxSmallFileTasks = self->_maxSmallFileTasks;
      }

      LogPrintF();
    }
  }

LABEL_6:
  self->_maxSmallFileTasks = a3;
}

- (id)resumeStateDict
{
  resumeState = self->_resumeState;
  if (resumeState)
  {
    resumeState = [resumeState dictionaryRepresentation];
    v2 = vars8;
  }

  return resumeState;
}

- (BOOL)prepareTemplateAndReturnError:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (![(NSData *)self->_selfPublicKey length]|| ![(NSData *)self->_selfSecretKey length])
  {
    cced25519_make_key_pair_compat();
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v21 length:32];
    selfPublicKey = self->_selfPublicKey;
    self->_selfPublicKey = v4;

    v6 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:__s length:32];
    selfSecretKey = self->_selfSecretKey;
    self->_selfSecretKey = v6;

    memset_s(__s, 0x20uLL, 0, 0x20uLL);
  }

  if (self->_flags)
  {
    if (!self->_targetID)
    {
      v9 = NSRandomData();
      [v9 bytes];
      [v9 length];
      [v9 length];
      v10 = NSPrintF();
      targetID = self->_targetID;
      self->_targetID = v10;
    }

    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        ucat = self->_ucat;
      }

      v13 = self->_targetID;
      v19 = self->_selfPublicKey;
LABEL_13:
      LogPrintF();
    }
  }

  else
  {
    v8 = self->_ucat->var0;
    if (v8 <= 30)
    {
      if (v8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        v14 = self->_ucat;
      }

      v18 = self->_selfPublicKey;
      goto LABEL_13;
    }
  }

LABEL_17:
  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)activate
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_activateCalled)
  {
    v2->_activateCalled = 1;
    dispatchQueue = v2->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__RPFileTransferSession_activate__block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = v2;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(v2);
}

void __33__RPFileTransferSession_activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 152);
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      v17 = *(v2 + 680);
      v18 = *(v2 + 632);
      v16 = *(v2 + 688);
      v13 = *(v2 + 556);
      v15 = &unk_1B6F2E478;
      LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = *(v2 + 152);
    v5 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v5)
    {
      v11 = *(v2 + 152);
      goto LABEL_3;
    }
  }

LABEL_5:
  v19 = 0;
  [v2 _activateAndReturnError:{&v19, v13, v15, v16, v17, v18}];
  v6 = v19;
  v7 = *(a1 + 32);
  if (!v6)
  {
    [v7 _startProgressReportTimer];
    goto LABEL_12;
  }

  v8 = *v7[19];
  if (v8 > 90)
  {
    goto LABEL_11;
  }

  if (v8 == -1)
  {
    v9 = v7[19];
    v10 = _LogCategory_Initialize();
    v7 = *(a1 + 32);
    if (v10)
    {
      v12 = v7[19];
      goto LABEL_8;
    }

LABEL_11:
    [v7 _reportCompletion:{v6, v14}];
    goto LABEL_12;
  }

LABEL_8:
  LogPrintF();
  [*(a1 + 32) _reportCompletion:{v6, v6}];
LABEL_12:
}

- (BOOL)_activateAndReturnError:(id *)a3
{
  v5 = self->_targetID;
  if (v5)
  {
    [(RPFileTransferSession *)self _prefsChanged];
    [(RPFileTransferSession *)self _debugSetup];
    v6 = self->_selfPublicKey;
    if (!self->_selfPublicKey)
    {
      if (a3)
      {
        RPErrorF();
        *a3 = v31 = 0;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_22;
    }

    v7 = self->_selfSecretKey;
    if (!self->_selfSecretKey)
    {
      if (a3)
      {
        RPErrorF();
        *a3 = v31 = 0;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_21;
    }

    v8 = objc_alloc_init(RPIdentity);
    [(RPIdentity *)v8 setEdPKData:v6];
    [(RPIdentity *)v8 setEdSKData:v7];
    objc_storeStrong(&self->_selfIdentity, v8);
    v9 = self->_peerPublicKey;
    if (!self->_peerPublicKey)
    {
      if (a3)
      {
        RPErrorF();
        *a3 = v31 = 0;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_20;
    }

    v34 = v6;
    v35 = v5;
    v10 = objc_alloc_init(RPIdentity);
    [(RPIdentity *)v10 setEdPKData:v9];
    objc_storeStrong(&self->_peerIdentity, v10);
    v11 = self->_receiveFileParentPath;
    if (!v11)
    {
      v12 = self->_temporaryDirectoryURL;
      if (!v12)
      {
        v13 = [MEMORY[0x1E696AC08] defaultManager];
        v36 = 0;
        v14 = [v13 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v36];
        v15 = v36;

        if (!v14)
        {
          [(RPFileTransferSession *)a3 _activateAndReturnError:v15];
          v11 = 0;
          goto LABEL_38;
        }

        v12 = [v14 URLByAppendingPathComponent:@"com.apple.rapport/FileTransfer" isDirectory:1];
      }

      v16 = [(NSString *)self->_targetID stringByAppendingString:@".rpftd"];
      v17 = [(NSURL *)v12 URLByAppendingPathComponent:v16 isDirectory:1];

      v11 = [v17 path];
      objc_storeStrong(&self->_receiveFileParentPath, v11);
    }

    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_14:
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    ioQueues = self->_ioQueues;
    self->_ioQueues = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    smallFilesReceiveTasks = self->_smallFilesReceiveTasks;
    self->_smallFilesReceiveTasks = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    smallFilesSendTasks = self->_smallFilesSendTasks;
    self->_smallFilesSendTasks = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    largeFileSendTasks = self->_largeFileSendTasks;
    self->_largeFileSendTasks = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    largeFileReceiveTasks = self->_largeFileReceiveTasks;
    self->_largeFileReceiveTasks = v27;

    if ((self->_flags & 1) == 0)
    {
      if (![(RPFileTransferSession *)self _activateSourceAndReturnError:a3])
      {
        goto LABEL_38;
      }

LABEL_18:
      self->_metricTicksActivate = mach_absolute_time();
      v29 = objc_alloc_init(RPFileTransferProgress);
      progressCurrent = self->_progressCurrent;
      self->_progressCurrent = v29;

      v31 = 1;
      [(RPFileTransferSession *)self _reportProgressType:1];
LABEL_19:

      v6 = v34;
      v5 = v35;
LABEL_20:

LABEL_21:
LABEL_22:

      goto LABEL_23;
    }

    if ([(RPFileTransferSession *)self _activateTargetAndReturnError:a3])
    {
      goto LABEL_18;
    }

LABEL_38:
    v31 = 0;
    goto LABEL_19;
  }

  if (a3)
  {
    RPErrorF();
    *a3 = v31 = 0;
  }

  else
  {
    v31 = 0;
  }

LABEL_23:

  return v31;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__RPFileTransferSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__RPFileTransferSession_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 89))
  {
    return result;
  }

  v3 = result;
  *(v2 + 89) = 1;
  v4 = *(result + 32);
  v5 = *v4[19];
  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = *(v3 + 32);
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = v4[19];
    }

    LogPrintF();
    v4 = *(v3 + 32);
  }

LABEL_6:

  return [v4 _invalidate];
}

- (void)_invalidate
{
  v38 = *MEMORY[0x1E69E9840];
  [(RPFileTransferSession *)self _stopProgressReportTimer];
  v3 = self->_addedItems;
  addedItems = self->_addedItems;
  self->_addedItems = 0;

  if ([(NSMutableSet *)v3 count])
  {
    v5 = RPErrorF();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = v3;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        v10 = 0;
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(RPFileTransferSession *)self _completeItemDirect:*(*(&v32 + 1) + 8 * v10++) error:v5];
        }

        while (v8 != v10);
        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v8);
    }

    [(NSMutableSet *)v6 removeAllObjects];
  }

  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
  bonjourAdvertiser = self->_bonjourAdvertiser;
  self->_bonjourAdvertiser = 0;

  [(CUBonjourBrowser *)self->_bonjourBrowser invalidate];
  bonjourBrowser = self->_bonjourBrowser;
  self->_bonjourBrowser = 0;

  [(CUCoalescer *)self->_bonjourCoalescer invalidate];
  bonjourCoalescer = self->_bonjourCoalescer;
  self->_bonjourCoalescer = 0;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = self->_connections;
  v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v28 + 1) + 8 * v18++) invalidate];
      }

      while (v16 != v18);
      v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }

  [(NSMutableSet *)self->_connections removeAllObjects];
  [(RPConnection *)self->_controlCnx invalidate];
  controlCnx = self->_controlCnx;
  self->_controlCnx = 0;

  controlRetryTimer = self->_controlRetryTimer;
  if (controlRetryTimer)
  {
    v21 = controlRetryTimer;
    dispatch_source_cancel(v21);
    v22 = self->_controlRetryTimer;
    self->_controlRetryTimer = 0;
  }

  [(NSMutableDictionary *)self->_registeredEvents removeAllObjects];
  registeredEvents = self->_registeredEvents;
  self->_registeredEvents = 0;

  [(NSMutableDictionary *)self->_registeredRequests removeAllObjects];
  registeredRequests = self->_registeredRequests;
  self->_registeredRequests = 0;

  [(CUTCPServer *)self->_tcpServer invalidate];
  tcpServer = self->_tcpServer;
  self->_tcpServer = 0;

  [(CUWiFiManager *)self->_wifiManager invalidate];
  wifiManager = self->_wifiManager;
  self->_wifiManager = 0;

  [(RPFileTransferSession *)self _invalidated];
  v27 = *MEMORY[0x1E69E9840];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableDictionary *)self->_smallFilesReceiveTasks count]&& ![(NSMutableSet *)self->_smallFilesSendTasks count]&& ![(NSMutableDictionary *)self->_largeFileReceiveTasks count]&& ![(NSMutableSet *)self->_largeFileSendTasks count])
  {
    v3 = _Block_copy(self->_completionHandler);
    if (v3)
    {
      v4 = RPErrorF();
      v3[2](v3, v4);
    }

    debugNotifyToken = self->_debugNotifyToken;
    if (debugNotifyToken != -1)
    {
      notify_cancel(debugNotifyToken);
      self->_debugNotifyToken = -1;
    }

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    flowControlChangedHandler = self->_flowControlChangedHandler;
    self->_flowControlChangedHandler = 0;

    progressHandler = self->_progressHandler;
    self->_progressHandler = 0;

    receivedItemHandler = self->_receivedItemHandler;
    self->_receivedItemHandler = 0;

    receivedItemsHandler = self->_receivedItemsHandler;
    self->_receivedItemsHandler = 0;

    self->_invalidateDone = 1;
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_13:
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_13;
      }
    }
  }
}

- (void)_prefsChanged
{
  v3 = 0;
  if ((self->_flags & 0x100) != 0)
  {
    v3 = CFPrefs_GetInt64() != 0;
  }

  if (self->_prefCompress != v3)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_6:
        v5 = "yes";
        if (v3)
        {
          v6 = "no";
        }

        else
        {
          v6 = "yes";
        }

        if (!v3)
        {
          v5 = "no";
        }

        v35 = v6;
        v37 = v5;
        LogPrintF();
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_6;
      }
    }

LABEL_13:
    self->_prefCompress = v3;
  }

  Int64 = CFPrefs_GetInt64();
  if (![(RPFileTransferSession *)self largeFileBufferBytes])
  {
    if ((Int64 - 10000001) >= 0xFFFFFFFFFF676980)
    {
      v8 = Int64;
    }

    else
    {
      v8 = 0x100000;
    }

    [(RPFileTransferSession *)self setLargeFileBufferBytes:v8, v35, v37];
  }

  v9 = CFPrefs_GetInt64();
  if (![(RPFileTransferSession *)self maxLargeFileTasks])
  {
    if ((v9 - 1001) >= 0xFFFFFFFFFFFFFC18)
    {
      v10 = v9;
    }

    else
    {
      v10 = 3;
    }

    [(RPFileTransferSession *)self setMaxLargeFileTasks:v10, v35, v37];
  }

  v11 = CFPrefs_GetInt64();
  if ((v11 - 1001) >= 0xFFFFFFFFFFFFFC18)
  {
    v12 = v11;
  }

  else
  {
    v12 = 3;
  }

  if ([(RPFileTransferSession *)self maxLargeFileTasks:v35]> v12)
  {
    v12 = [(RPFileTransferSession *)self maxLargeFileTasks];
  }

  prefLargeFileMaxOutstanding = self->_prefLargeFileMaxOutstanding;
  if (v12 != prefLargeFileMaxOutstanding)
  {
    v14 = self->_ucat->var0;
    if (v14 <= 30)
    {
      if (v14 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_34;
        }

        v32 = self->_ucat;
        prefLargeFileMaxOutstanding = self->_prefLargeFileMaxOutstanding;
      }

      v36 = prefLargeFileMaxOutstanding;
      v38 = v12;
      LogPrintF();
    }

LABEL_34:
    self->_prefLargeFileMaxOutstanding = v12;
  }

  v15 = CFPrefs_GetInt64();
  if ((v15 - 10000001) >= 0xFFFFFFFFFF676980)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x100000;
  }

  prefSmallFilesMaxBytes = self->_prefSmallFilesMaxBytes;
  if (v16 != prefSmallFilesMaxBytes)
  {
    v18 = self->_ucat->var0;
    if (v18 <= 30)
    {
      if (v18 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_43;
        }

        v33 = self->_ucat;
        prefSmallFilesMaxBytes = self->_prefSmallFilesMaxBytes;
      }

      v36 = prefSmallFilesMaxBytes;
      v38 = v16;
      LogPrintF();
    }

LABEL_43:
    self->_prefSmallFilesMaxBytes = v16;
  }

  v19 = CFPrefs_GetInt64();
  if (![(RPFileTransferSession *)self maxSmallFileTasks])
  {
    if ((v19 - 1001) >= 0xFFFFFFFFFFFFFC18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 3;
    }

    [(RPFileTransferSession *)self setMaxSmallFileTasks:v20, v36, v38];
  }

  v21 = CFPrefs_GetInt64() != 0;
  if (self->_resumable != v21)
  {
    v22 = self->_ucat->var0;
    if (v22 <= 30)
    {
      if (v22 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_54;
        }

        v34 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_54:
    self->_resumable = v21;
    if (v21)
    {
      v23 = 512;
    }

    else
    {
      v23 = 0;
    }

    self->_flags = self->_flags & 0xFFFFFDFF | v23;
  }

  CFPrefs_GetDouble();
  if (v24 <= 60.0 && v24 > 0.001)
  {
    v27 = v24;
  }

  else
  {
    v27 = 1.0;
  }

  if (v27 != self->_resumeStateFlushInterval)
  {
    v28 = self->_ucat->var0;
    if (v28 <= 30)
    {
      if (v28 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_72;
        }

        v29 = self->_ucat;
        resumeStateFlushInterval = self->_resumeStateFlushInterval;
      }

      LogPrintF();
    }

LABEL_72:
    self->_resumeStateFlushInterval = v27;
  }
}

- (void)_reportCompletion:(id)a3
{
  v61[26] = *MEMORY[0x1E69E9840];
  v4 = a3;
  metricLastFileCompletionTicks = self->_metricLastFileCompletionTicks;
  if (!metricLastFileCompletionTicks)
  {
    metricLastFileCompletionTicks = mach_absolute_time();
  }

  metricTicksConnectStart = self->_metricTicksConnectStart;
  if (metricTicksConnectStart)
  {
    v7 = metricLastFileCompletionTicks > metricTicksConnectStart;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    self->_metricTicksConnected += metricLastFileCompletionTicks - metricTicksConnectStart;
  }

  else
  {
    metricTicksConnected = self->_metricTicksConnected;
  }

  UpTicksToSecondsF();
  v10 = v9;
  if (v9 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = self->_metricTotalBytes / v9;
  }

  metricTicksActivate = self->_metricTicksActivate;
  v13 = UpTicksToSeconds();
  metricUncompressedBytes = self->_metricUncompressedBytes;
  if (metricUncompressedBytes)
  {
    [(RPFileTransferProgress *)self->_progressCurrent setCompressionRate:self->_metricCompressedBytes / metricUncompressedBytes];
    [(RPFileTransferProgress *)self->_progressCurrent compressionRate];
    v16 = (v15 * 100.0);
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  [(RPFileTransferProgress *)self->_progressCurrent setBytesPerSecond:v11];
  [(RPFileTransferProgress *)self->_progressCurrent setRemainingSeconds:0.0];
  [(RPFileTransferProgress *)self->_progressCurrent setCurrentFilename:0];
  [(RPFileTransferProgress *)self->_progressCurrent setError:v4];
  [(RPFileTransferProgress *)self->_progressCurrent setTransferredByteCount:self->_metricTotalBytes];
  [(RPFileTransferProgress *)self->_progressCurrent setTotalByteCount:self->_metricTotalBytes];
  [(RPFileTransferProgress *)self->_progressCurrent setTransferredFileCount:self->_metricTotalFiles];
  [(RPFileTransferProgress *)self->_progressCurrent setTotalFileCount:self->_metricTotalFiles];
  [(RPFileTransferSession *)self _reportProgressType:20];
  var0 = self->_ucat->var0;
  if (!v4)
  {
    if (var0 > 30)
    {
      goto LABEL_26;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_26;
      }

      ucat = self->_ucat;
    }

    v39 = v16;
    v37 = self->_metricTotalBytes / 1000000.0;
    v38 = v11 / 1000000.0;
    metricTotalFiles = self->_metricTotalFiles;
    goto LABEL_22;
  }

  if (var0 > 90)
  {
    goto LABEL_26;
  }

  if (var0 != -1)
  {
    goto LABEL_18;
  }

  if (_LogCategory_Initialize())
  {
    v18 = self->_ucat;
LABEL_18:
    v39 = v16;
    v40 = v4;
    v37 = self->_metricTotalBytes / 1000000.0;
    v38 = v11 / 1000000.0;
    metricTotalFiles = self->_metricTotalFiles;
LABEL_22:
    LogPrintF();
  }

LABEL_26:
  v19 = _Block_copy(self->_completionHandler);
  if (v19)
  {
    v59 = v19;
    (*(v19 + 2))(v19, v4);
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    v52 = self->_ucat;
    if ((self->_flags & 2) != 0)
    {
      v21 = @"d2d";
    }

    else
    {
      v21 = @"?";
    }

    v61[0] = v21;
    v60[0] = @"type";
    v60[1] = @"errD";
    v22 = [v4 domain];
    v57 = v22;
    v23 = &stru_1F2ED6FB8;
    if (v22)
    {
      v23 = v22;
    }

    v61[1] = v23;
    v60[2] = @"errC";
    v56 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "code")}];
    v61[2] = v56;
    v60[3] = @"totB";
    v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:10000000 * (self->_metricTotalBytes / 0x989680)];
    v61[3] = v55;
    v60[4] = @"totF";
    v58 = v4;
    v54 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricTotalFiles / 0x64)];
    v61[4] = v54;
    v60[5] = @"totS";
    v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:60 * (v13 / 0x3C)];
    v61[5] = v53;
    v60[6] = @"Bps";
    v51 = [MEMORY[0x1E696AD98] numberWithDouble:v11 / 1000.0 * 1000.0];
    v61[6] = v51;
    v60[7] = @"cnxS";
    v50 = [MEMORY[0x1E696AD98] numberWithDouble:v10 / 60.0 * 60.0];
    v61[7] = v50;
    v60[8] = @"dCnx";
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_metricDisconnects];
    v61[8] = v49;
    v60[9] = @"ltAWDL";
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_metricLinkTypeCountAWDL];
    v61[9] = v48;
    v60[10] = @"ltUSB";
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_metricLinkTypeCountUSB];
    v61[10] = v47;
    v60[11] = @"ltOther";
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_metricLinkTypeCountOther];
    v61[11] = v46;
    v60[12] = @"tcpD";
    v45 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_metricTCPRanDryCount];
    v61[12] = v45;
    v60[13] = @"fRtr";
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_metricRetries];
    v61[13] = v44;
    v60[14] = @"fs10K";
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[0] / 0x64)];
    v61[14] = v43;
    v60[15] = @"fs100K";
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[1] / 0x64)];
    v61[15] = v42;
    v60[16] = @"fs1M";
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[2] / 0x64)];
    v61[16] = v41;
    v60[17] = @"fs10M";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[3] / 0x64)];
    v61[17] = v24;
    v60[18] = @"fs100M";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[4] / 0x64)];
    v61[18] = v25;
    v60[19] = @"fs1G";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[5] / 0x64)];
    v61[19] = v26;
    v60[20] = @"fs10G";
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[6] / 0x64)];
    v61[20] = v27;
    v60[21] = @"fs10GUp";
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[7] / 0x64)];
    v61[21] = v28;
    v60[22] = @"ssPr";
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_metricPrematureSmallSets];
    v61[22] = v29;
    v60[23] = @"CmpP";
    v30 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    v61[23] = v30;
    v60[24] = @"CmpE";
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_metricCompressionErrors];
    v61[24] = v31;
    v60[25] = @"CmpU";
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_metricUncompressibleChunks];
    v61[25] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:26];
    CUMetricsLogEx();

    v4 = v58;
    v19 = v59;
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)_reportDataTransferred
{
  v3 = self->_progressCurrent;
  v4 = v3;
  if (v3)
  {
    v19 = v3;
    [(RPFileTransferProgress *)v3 setType:30];
    var0 = self->_ucat->var0;
    if (var0 <= 10)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      v18 = v19;
      LogPrintF();
    }

LABEL_9:
    if (!self->_metricLastFileCompletionTicks)
    {
      mach_absolute_time();
    }

    metricTicksConnected = self->_metricTicksConnected;
    metricTicksConnectStart = self->_metricTicksConnectStart;
    UpTicksToSecondsF();
    if (v9 == 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = self->_progressCurrentBytes / v9;
    }

    v11 = v19;
    metricUncompressedBytes = self->_metricUncompressedBytes;
    if (metricUncompressedBytes)
    {
      [(RPFileTransferProgress *)v19 setCompressionRate:self->_metricCompressedBytes / metricUncompressedBytes];
      v11 = v19;
    }

    [(RPFileTransferProgress *)v11 setBytesPerSecond:v10, v18];
    [(RPFileTransferProgress *)v19 setRemainingSeconds:0.0];
    [(RPFileTransferProgress *)v19 setCurrentFilename:0];
    [(RPFileTransferProgress *)v19 setError:0];
    [(RPFileTransferProgress *)v19 setTransferredByteCount:self->_progressCurrentBytes];
    [(RPFileTransferProgress *)v19 setTotalByteCount:self->_progressTotalBytes];
    [(RPFileTransferProgress *)v19 setTransferredFileCount:self->_progressCurrentFiles];
    [(RPFileTransferProgress *)v19 setTotalFileCount:self->_progressTotalFiles];
    v13 = _Block_copy(self->_progressHandler);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, v19);
    }

    goto LABEL_19;
  }

  v6 = self->_ucat->var0;
  if (v6 > 90)
  {
    goto LABEL_20;
  }

  v19 = 0;
  if (v6 != -1)
  {
LABEL_7:
    LogPrintF();
LABEL_19:
    v4 = v19;
    goto LABEL_20;
  }

  v15 = _LogCategory_Initialize();
  v4 = 0;
  if (v15)
  {
    v16 = self->_ucat;
    goto LABEL_7;
  }

LABEL_20:
}

- (void)_startProgressReportTimer
{
  [(RPFileTransferSession *)self progressHandlerTimeInterval];
  if (v3 > 0.0 && !self->_progressTimer)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    progressTimer = self->_progressTimer;
    self->_progressTimer = v4;

    v6 = self->_progressTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __50__RPFileTransferSession__startProgressReportTimer__block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    v7 = self->_progressTimer;
    CUDispatchTimerSet();
    dispatch_activate(self->_progressTimer);
  }
}

_BYTE *__50__RPFileTransferSession__startProgressReportTimer__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[336] == 1)
  {
    result = [result _reportDataTransferred];
    *(*(a1 + 32) + 336) = 0;
  }

  return result;
}

- (void)_stopProgressReportTimer
{
  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    dispatch_source_cancel(progressTimer);
    v4 = self->_progressTimer;
    self->_progressTimer = 0;
  }
}

- (void)_updateIfNeededWithBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ((v4[2](v4) & 1) != 0 && v5->_activateCalled)
  {
    dispatchQueue = v5->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__RPFileTransferSession__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = v5;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(v5);
}

- (void)_updateWiFi
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  flags = v2->_flags;
  if ((flags & 8) != 0)
  {
    objc_sync_exit(v2);
  }

  else
  {
    if ((flags & 4) == 0)
    {
      objc_sync_exit(v2);

      goto LABEL_10;
    }

    v5 = [(RPConnection *)v2->_controlCnx linkType];
    objc_sync_exit(v2);

    if (v5 != 4)
    {
LABEL_10:
      if (![(CUWiFiManager *)v2->_wifiManager infraDisabled])
      {
        goto LABEL_35;
      }

      var0 = v2->_ucat->var0;
      if (var0 > 30)
      {
        goto LABEL_21;
      }

      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        ucat = v2->_ucat;
      }

      LogPrintF();
LABEL_21:
      [(CUWiFiManager *)v2->_wifiManager setInfraDisabled:0];
      v8 = 0;
      goto LABEL_22;
    }
  }

  if (([(CUWiFiManager *)v2->_wifiManager infraDisabled]& 1) == 0)
  {
    v4 = v2->_ucat->var0;
    if (v4 <= 30)
    {
      if (v4 != -1)
      {
LABEL_8:
        LogPrintF();
        goto LABEL_15;
      }

      if (_LogCategory_Initialize())
      {
        v21 = v2->_ucat;
        goto LABEL_8;
      }
    }
  }

LABEL_15:
  wifiManager = v2->_wifiManager;
  if (wifiManager)
  {
    if (([(CUWiFiManager *)wifiManager infraDisabled]& 1) != 0)
    {
      v8 = 1;
      goto LABEL_28;
    }

    v8 = 1;
    [(CUWiFiManager *)v2->_wifiManager setInfraDisabled:1];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E6999558]);
    v10 = v2->_wifiManager;
    v2->_wifiManager = v9;

    [(CUWiFiManager *)v2->_wifiManager setDispatchQueue:v2->_dispatchQueue];
    [(CUWiFiManager *)v2->_wifiManager setLabel:@"RPFile"];
    v8 = 1;
    [(CUWiFiManager *)v2->_wifiManager setInfraDisabled:1];
    [(CUWiFiManager *)v2->_wifiManager activateWithCompletion:0];
  }

LABEL_22:
  if (v2->_controlCnx && (v2->_flags & 1) != 0)
  {
    if (v8)
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    v24 = @"_ftFl";
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
    v25[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

    [(RPConnection *)v2->_controlCnx sendEncryptedEventID:@"_ftPU" event:v13 options:0 completion:0];
  }

LABEL_28:
  if (!v8 || (v14 = v2->_flags, (v14 & 1) != 0) || !v2->_peerInfraWiFiDisabled)
  {
LABEL_35:
    p_controlCnx = &v2->_controlCnx;
    if (![(RPConnection *)v2->_controlCnx trafficFlags])
    {
      goto LABEL_42;
    }

    v17 = v2->_ucat->var0;
    if (v17 <= 30)
    {
      if (v17 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_40;
        }

        v20 = v2->_ucat;
      }

      LogPrintF();
    }

LABEL_40:
    v18 = 0;
LABEL_41:
    [*p_controlCnx setTrafficFlags:v18];
    goto LABEL_42;
  }

  if ((v14 & 2) != 0)
  {
    v15 = v2->_ucat->var0;
    if (v15 <= 30)
    {
      if (v15 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_44;
        }

        v23 = v2->_ucat;
      }

      LogPrintF();
    }

LABEL_44:
    p_controlCnx = &v2->_controlCnx;
    v18 = 1024;
    goto LABEL_41;
  }

LABEL_42:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __36__RPFileTransferSession__debugSetup__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 84);
  if (result != -1)
  {
    v4 = *(v2 + 576);
    state64 = 0;
    notify_get_state(result, &state64);
    *(*(a1 + 32) + 576) = state64;
    v5 = *(a1 + 32);
    v6 = **(v5 + 152);
    if (v6 <= 30)
    {
      if (v6 != -1)
      {
LABEL_4:
        v13 = *(v5 + 576);
        LogPrintF();
        return [*(a1 + 32) _debugUpdate];
      }

      v7 = *(v5 + 152);
      v8 = _LogCategory_Initialize();
      v5 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v5 + 152);
        goto LABEL_4;
      }
    }

    return [v5 _debugUpdate];
  }

  return result;
}

- (void)_debugUpdate
{
  if ((self->_debugFlags & 1) != 0 && self->_controlCnx)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_7:
    controlCnx = self->_controlCnx;
    v5 = RPErrorF();
    [(RPConnection *)controlCnx invalidateWithError:v5];

    v6 = self->_controlCnx;
    self->_controlCnx = 0;

    self->_debugFlags &= ~1uLL;
  }
}

- (void)_metricAddFileSize:(int64_t)a3
{
  if (a3 >= 10000)
  {
    v3 = 1;
    v4 = 2;
    v5 = 3;
    v6 = 4;
    v7 = 5;
    v8 = 6;
    if (a3 >= 0x2540BE400)
    {
      v8 = 7;
    }

    if (a3 >= 0x3B9ACA00)
    {
      v7 = v8;
    }

    if (a3 >= 0x5F5E100)
    {
      v6 = v7;
    }

    if (a3 >= 0x989680)
    {
      v5 = v6;
    }

    if (a3 >= 0xF4240)
    {
      v4 = v5;
    }

    if (a3 >> 5 >= 0xC35)
    {
      v3 = v4;
    }
  }

  else
  {
    v3 = 0;
  }

  ++self->_metricFileSizeBuckets[v3];
}

- (void)registerEventID:(id)a3 options:(id)a4 handler:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_registeredEvents objectForKeyedSubscript:v19];

  var0 = self->_ucat->var0;
  if (!v10)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      v18 = v19;
      LogPrintF();
    }

LABEL_11:
    v13 = objc_alloc_init(RPEventRegistration);
    [(RPEventRegistration *)v13 setEventID:v19];
    [(RPEventRegistration *)v13 setOptions:v8];
    [(RPEventRegistration *)v13 setHandler:v9];
    registeredEvents = self->_registeredEvents;
    if (!registeredEvents)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = self->_registeredEvents;
      self->_registeredEvents = v15;

      registeredEvents = self->_registeredEvents;
    }

    [(NSMutableDictionary *)registeredEvents setObject:v13 forKeyedSubscript:v19, v18];

    goto LABEL_14;
  }

  if (var0 > 90)
  {
    goto LABEL_14;
  }

  if (var0 != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize())
  {
    v12 = self->_ucat;
LABEL_4:
    LogPrintF();
  }

LABEL_14:
}

- (void)deregisterEventID:(id)a3
{
  v4 = a3;
  var0 = self->_ucat->var0;
  v9 = v4;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v8 = v4;
      LogPrintF();
      v4 = v9;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = v9;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(NSMutableDictionary *)self->_registeredEvents setObject:0 forKeyedSubscript:v4, v8];
}

- (void)sendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__RPFileTransferSession_sendEventID_event_destinationID_options_completion___block_invoke;
  block[3] = &unk_1E7C942D0;
  block[4] = self;
  v21 = v11;
  v23 = v13;
  v24 = v14;
  v22 = v12;
  v16 = v13;
  v17 = v12;
  v18 = v14;
  v19 = v11;
  dispatch_async(dispatchQueue, block);
}

void __76__RPFileTransferSession_sendEventID_event_destinationID_options_completion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 64);
  v8 = v2;
  if (v2)
  {
    [v2 sendEncryptedEventID:a1[5] event:a1[6] options:a1[7] completion:a1[8]];
    goto LABEL_10;
  }

  v3 = RPErrorF();
  v4 = **(a1[4] + 152);
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v6 = *(a1[4] + 152);
    }

    v7 = a1[5];
    LogPrintF();
  }

LABEL_7:
  v5 = a1[8];
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

LABEL_10:
}

- (void)_receivedEventID:(id)a3 event:(id)a4 options:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if ([v13 isEqual:@"_ftPU"])
  {
    [(RPFileTransferSession *)self _receivedPeerUpdate:v8];
  }

  else
  {
    v10 = [(NSMutableDictionary *)self->_registeredEvents objectForKeyedSubscript:v13];
    v11 = [v10 handler];
    v12 = v11;
    if (v11)
    {
      (*(v11 + 16))(v11, v8, v9);
    }

    else
    {
      [RPFileTransferSession _receivedEventID:? event:? options:?];
    }
  }
}

- (void)_receivedPeerUpdate:(id)a3
{
  v4 = CFDictionaryGetInt64Ranged() & 0xC;
  v5 = v4 != 0;
  if (self->_peerInfraWiFiDisabled != v5)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_4:
        v7 = "yes";
        if (v4)
        {
          v8 = "no";
        }

        else
        {
          v8 = "yes";
        }

        if (!v4)
        {
          v7 = "no";
        }

        v10 = v8;
        v11 = v7;
        LogPrintF();
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_peerInfraWiFiDisabled = v5;
    [(RPFileTransferSession *)self _updateWiFi:v10];
  }
}

- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:v19];

  var0 = self->_ucat->var0;
  if (!v10)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      v18 = v19;
      LogPrintF();
    }

LABEL_11:
    v13 = objc_alloc_init(RPRequestRegistration);
    [(RPRequestRegistration *)v13 setRequestID:v19];
    [(RPRequestRegistration *)v13 setOptions:v8];
    [(RPRequestRegistration *)v13 setHandler:v9];
    registeredRequests = self->_registeredRequests;
    if (!registeredRequests)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = self->_registeredRequests;
      self->_registeredRequests = v15;

      registeredRequests = self->_registeredRequests;
    }

    [(NSMutableDictionary *)registeredRequests setObject:v13 forKeyedSubscript:v19, v18];

    goto LABEL_14;
  }

  if (var0 > 90)
  {
    goto LABEL_14;
  }

  if (var0 != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize())
  {
    v12 = self->_ucat;
LABEL_4:
    LogPrintF();
  }

LABEL_14:
}

- (void)deregisterRequestID:(id)a3
{
  v4 = a3;
  var0 = self->_ucat->var0;
  v9 = v4;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v8 = v4;
      LogPrintF();
      v4 = v9;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = v9;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(NSMutableDictionary *)self->_registeredRequests setObject:0 forKeyedSubscript:v4, v8];
}

- (void)sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__RPFileTransferSession_sendRequestID_request_destinationID_options_responseHandler___block_invoke;
  block[3] = &unk_1E7C942D0;
  block[4] = self;
  v21 = v11;
  v23 = v13;
  v24 = v14;
  v22 = v12;
  v16 = v13;
  v17 = v12;
  v18 = v14;
  v19 = v11;
  dispatch_async(dispatchQueue, block);
}

void __85__RPFileTransferSession_sendRequestID_request_destinationID_options_responseHandler___block_invoke(void *a1)
{
  v2 = *(a1[4] + 64);
  v7 = v2;
  if (v2)
  {
    [v2 sendEncryptedRequestID:a1[5] request:a1[6] xpcID:0 options:a1[7] responseHandler:a1[8]];
    goto LABEL_8;
  }

  v3 = RPErrorF();
  v4 = **(a1[4] + 152);
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v5 = *(a1[4] + 152);
    }

    v6 = a1[5];
    LogPrintF();
  }

LABEL_7:
  (*(a1[8] + 16))(a1[8], 0);

LABEL_8:
}

- (void)_receivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v19 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v19 isEqual:@"_ftSm"])
  {
    [(RPFileTransferSession *)self _smallFilesReceiveRequest:v10 responseHandler:v12];
    goto LABEL_15;
  }

  if ([v19 isEqual:@"_ftLg"])
  {
    [(RPFileTransferSession *)self _largeFileReceiveRequest:v10 responseHandler:v12];
    goto LABEL_15;
  }

  if ([v19 isEqual:@"_ftRs"])
  {
    [(RPFileTransferSession *)self _resumeStateReceiveRequest:v10 responseHandler:v12];
    goto LABEL_15;
  }

  v13 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:v19];
  v14 = [v13 handler];
  v15 = v14;
  if (!v14)
  {
    v16 = RPErrorF();
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_13:
    (*(v12 + 2))(v12, 0, 0, v16);

    goto LABEL_14;
  }

  (*(v14 + 16))(v14, v10, v11, v12);
LABEL_14:

LABEL_15:
}

- (BOOL)_activateSourceAndReturnError:(id *)a3
{
  [(RPFileTransferSession *)self _updateWiFi];
  v4 = objc_alloc_init(MEMORY[0x1E6999478]);
  bonjourCoalescer = self->_bonjourCoalescer;
  self->_bonjourCoalescer = v4;
  v6 = v4;

  [(CUCoalescer *)v6 setDispatchQueue:self->_dispatchQueue];
  [(CUCoalescer *)v6 setMinDelay:1.0];
  [(CUCoalescer *)v6 setMaxDelay:2.0];
  [(CUCoalescer *)v6 setLeeway:1.0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__RPFileTransferSession__activateSourceAndReturnError___block_invoke;
  v17[3] = &unk_1E7C92D80;
  v17[4] = v6;
  v17[5] = self;
  [(CUCoalescer *)v6 setActionHandler:v17];
  flags = self->_flags;
  if ((flags & 0x10) != 0)
  {
    v8 = 0x10000000000000;
  }

  else
  {
    v8 = 0x400000000000000;
  }

  v9 = v8 & 0xFF9FFFFFFFFFFFFFLL | ((((flags & 0x60) >> 5) & 3) << 53);
  v10 = objc_alloc_init(MEMORY[0x1E6999470]);
  bonjourBrowser = self->_bonjourBrowser;
  self->_bonjourBrowser = v10;
  v12 = v10;

  [(CUBonjourBrowser *)v12 setBrowseFlags:v9];
  [(CUBonjourBrowser *)v12 setChangeFlags:1];
  [(CUBonjourBrowser *)v12 setDispatchQueue:self->_dispatchQueue];
  [(CUBonjourBrowser *)v12 setDomain:@"local."];
  [(CUBonjourBrowser *)v12 setLabel:@"RPFile"];
  [(CUBonjourBrowser *)v12 setServiceType:@"_rpft._tcp"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_2;
  v16[3] = &unk_1E7C942F8;
  v16[4] = v12;
  v16[5] = self;
  [(CUBonjourBrowser *)v12 setDeviceFoundHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_3;
  v15[3] = &unk_1E7C942F8;
  v15[4] = v12;
  v15[5] = self;
  [(CUBonjourBrowser *)v12 setDeviceLostHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_4;
  v14[3] = &unk_1E7C94320;
  v14[4] = v12;
  v14[5] = self;
  [(CUBonjourBrowser *)v12 setDeviceChangedHandler:v14];
  [(CUBonjourBrowser *)v12 activate];

  return 1;
}

void *__55__RPFileTransferSession__activateSourceAndReturnError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[4])
  {
    return [result _handleDevicesCoalesced];
  }

  return result;
}

void *__55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _handleDeviceFound:a2];
  }

  return result;
}

void *__55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _handleDeviceLost:a2];
  }

  return result;
}

void *__55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _handleDeviceFound:a2];
  }

  return result;
}

- (void)_handleDeviceFound:(id)a3
{
  v5 = a3;
  var0 = self->_ucat->var0;
  v17 = v5;
  if (var0 <= 20)
  {
    if (var0 == -1)
    {
      v7 = _LogCategory_Initialize();
      v5 = v17;
      if (!v7)
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    v15 = CUDescriptionWithLevel();
    LogPrintF();

    v5 = v17;
  }

LABEL_5:
  v8 = [v5 identifierStr];
  v9 = [v8 UTF8String];

  if (v9)
  {
    if ([(NSString *)self->_targetID UTF8String])
    {
      v10 = TextToHardwareAddressScalar();
      if (v10 == TextToHardwareAddressScalar())
      {
        v11 = self->_ucat->var0;
        if (v11 <= 30)
        {
          if (v11 == -1)
          {
            v12 = self->_ucat;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_12;
            }

            v14 = self->_ucat;
          }

          v16 = CUDescriptionWithLevel();
          LogPrintF();
        }

LABEL_12:
        objc_storeStrong(&self->_bonjourDevice, a3);
        [(CUCoalescer *)self->_bonjourCoalescer trigger];
      }
    }
  }
}

- (void)_handleDeviceLost:(id)a3
{
  v4 = a3;
  var0 = self->_ucat->var0;
  v17 = v4;
  if (var0 <= 20)
  {
    if (var0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = v17;
      if (!v6)
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    v15 = CUDescriptionWithLevel();
    LogPrintF();

    v4 = v17;
  }

LABEL_5:
  v7 = [v4 identifierStr];
  v8 = [v7 UTF8String];

  if (v8)
  {
    if ([(NSString *)self->_targetID UTF8String])
    {
      v9 = TextToHardwareAddressScalar();
      if (v9 == TextToHardwareAddressScalar())
      {
        v10 = self->_ucat->var0;
        if (v10 <= 30)
        {
          if (v10 == -1)
          {
            v11 = self->_ucat;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_12;
            }

            v14 = self->_ucat;
          }

          v16 = CUDescriptionWithLevel();
          LogPrintF();
        }

LABEL_12:
        bonjourDevice = self->_bonjourDevice;
        self->_bonjourDevice = 0;

        [(RPConnection *)self->_controlCnx setPresent:0];
      }
    }
  }
}

- (void)_handleDevicesCoalesced
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      bonjourDevice = self->_bonjourDevice;
      v7 = CUDescriptionWithLevel();
      LogPrintF();

      goto LABEL_5;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v6 = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:

  [(RPFileTransferSession *)self _controlCnxStartIfNeeded];
}

- (void)_controlCnxRetryIfNeeded
{
  if (!self->_invalidateCalled && !self->_controlCnx && self->_bonjourDevice && !self->_controlRetryTimer)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_10:
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    controlRetryTimer = self->_controlRetryTimer;
    self->_controlRetryTimer = v4;
    v6 = v4;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__RPFileTransferSession__controlCnxRetryIfNeeded__block_invoke;
    v8[3] = &unk_1E7C92D80;
    v8[4] = v6;
    v8[5] = self;
    dispatch_source_set_event_handler(v6, v8);
    CUDispatchTimerSet();
    dispatch_resume(v6);
  }
}

void __49__RPFileTransferSession__controlCnxRetryIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 72);
  if (v2 != v3)
  {
    return;
  }

  if (v2)
  {
    v5 = v3;
    dispatch_source_cancel(v5);
    v6 = *(a1 + 40);
    v7 = *(v6 + 72);
    *(v6 + 72) = 0;
  }

  v8 = *(*(a1 + 40) + 40);
  v9 = v8;
  v10 = **(*(a1 + 40) + 152);
  v15 = v8;
  if (v10 <= 30)
  {
    if (v10 != -1)
    {
      if (v8)
      {
LABEL_7:
        v14 = CUDescriptionWithLevel();
        LogPrintF();

        [*(a1 + 40) _controlCnxStartIfNeeded];
LABEL_11:
        v9 = v15;
        goto LABEL_12;
      }

LABEL_16:
      LogPrintF();
      goto LABEL_11;
    }

    v11 = _LogCategory_Initialize();
    v9 = v15;
    if (v11)
    {
      v12 = *(*(a1 + 40) + 152);
      if (v15)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  if (v9)
  {
    [*(a1 + 40) _controlCnxStartIfNeeded];
    goto LABEL_11;
  }

LABEL_12:
}

uint64_t __49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke(uint64_t result)
{
  v2 = *(result + 40);
  v3 = *(v2 + 64);
  if (*(result + 32) == v3)
  {
    v4 = result;
    *(v2 + 64) = 0;

    [*(v4 + 40) _reportProgressControlState];
    v5 = *(v4 + 40);

    return [v5 _controlCnxRetryIfNeeded];
  }

  return result;
}

void *__49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[8])
  {
    return [result _receivedEventID:a2 event:a3 options:a4];
  }

  return result;
}

void *__49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[8])
  {
    return [result _receivedRequestID:a2 request:a3 options:a4 responseHandler:a5];
  }

  return result;
}

void *__49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_4(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[8])
  {
    result = [result _reportProgressControlState];
    if (a2 == 1)
    {
      v6 = *(a1 + 40);

      return [v6 _scheduleItems];
    }
  }

  return result;
}

- (BOOL)_activateTargetAndReturnError:(id *)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  [(RPFileTransferSession *)self _updateWiFi];
  if (([(RPFileTransferSession *)self flags]& 0x200) != 0)
  {
    v5 = [[RPFileTransferResumeState alloc] initWithDispatchQueue:self->_dispatchQueue];
    if (v5)
    {
      if (self->_receiveFileParentPath)
      {
        v6 = [(RPFileTransferSession *)self targetID];

        if (v6)
        {
          v7 = MEMORY[0x1E696AEC0];
          v8 = [(RPFileTransferSession *)self targetID];
          v9 = [v7 stringWithFormat:@"%@-state.rptfd", v8];

          v10 = [(NSString *)self->_receiveFileParentPath stringByStandardizingPath];
          [(RPFileTransferResumeState *)v5 setOutputPath:v10];

          v11 = [(NSString *)self->_receiveFileParentPath stringByAppendingPathComponent:v9];
          v12 = [v11 stringByStandardizingPath];
          [(RPFileTransferResumeState *)v5 setStateFilePath:v12];

          [(RPFileTransferResumeState *)v5 setUcat:self->_ucat];
          [(RPFileTransferResumeState *)v5 setFlushInterval:self->_resumeStateFlushInterval];
          [(RPFileTransferResumeState *)v5 loadStateFile];
          if (![(RPFileTransferResumeState *)v5 isEmpty])
          {
            v13 = *MEMORY[0x1E69E9858];
            v23 = [(RPFileTransferSession *)self targetID];
            FPrintF();
          }

          resumeState = self->_resumeState;
          self->_resumeState = v5;

          goto LABEL_8;
        }

        if (a3)
        {
          goto LABEL_20;
        }

LABEL_21:

        v18 = 0;
        goto LABEL_13;
      }

      if (!a3)
      {
        goto LABEL_21;
      }
    }

    else if (!a3)
    {
      goto LABEL_21;
    }

LABEL_20:
    *a3 = RPErrorF();
    goto LABEL_21;
  }

LABEL_8:
  v15 = objc_alloc_init(MEMORY[0x1E6999550]);
  objc_storeStrong(&self->_tcpServer, v15);
  [v15 setDispatchQueue:self->_dispatchQueue];
  [v15 setFlags:9];
  [v15 setLabel:@"RPFile"];
  [(CUTCPServer *)self->_tcpServer setConnectionPrepareHandler:&__block_literal_global_8];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__RPFileTransferSession__activateTargetAndReturnError___block_invoke_2;
  v25[3] = &unk_1E7C943E0;
  v25[4] = v15;
  v25[5] = self;
  [(CUTCPServer *)self->_tcpServer setConnectionStartedHandler:v25];
  tcpServer = self->_tcpServer;
  v24 = 0;
  [(CUTCPServer *)tcpServer activateDirectAndReturnError:&v24];
  v17 = v24;
  v18 = v17 == 0;
  if (v17)
  {
    [RPFileTransferSession _activateTargetAndReturnError:a3];
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x1E6999468]);
    objc_storeStrong(&self->_bonjourAdvertiser, v19);
    if ((self->_flags & 0x10) == 0)
    {
      [v19 setAdvertiseFlags:0x100000];
    }

    [v19 setDispatchQueue:{self->_dispatchQueue, v23}];
    [v19 setDomain:@"local."];
    [v19 setLabel:@"RPFile"];
    [v19 setName:self->_targetID];
    [v19 setPort:{-[CUTCPServer tcpListeningPort](self->_tcpServer, "tcpListeningPort")}];
    [v19 setServiceType:@"_rpft._tcp"];
    v26 = @"rpBA";
    v27[0] = self->_targetID;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v19 setTxtDictionary:v20];

    [v19 activate];
  }

LABEL_13:
  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

void *__55__RPFileTransferSession__activateTargetAndReturnError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[18])
  {
    return [result _handleIncomingConnectionStarted:a2];
  }

  return result;
}

- (void)_handleIncomingConnectionStarted:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(RPConnection);
  v6 = v5;
  if (self->_prefCompress)
  {
    [(RPConnection *)v5 setAppInfoSelf:&unk_1F2EEC990];
  }

  [(RPConnection *)v6 setControlFlags:[(RPConnection *)v6 controlFlags]| 0x60000000];
  [(RPConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  [(RPConnection *)v6 setForcedPeerIdentity:self->_peerIdentity];
  [(RPConnection *)v6 setForcedSelfIdentity:self->_selfIdentity];
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  targetID = self->_targetID;
  v9 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v9;
  v10 = [v7 initWithFormat:@"RPFileCnx-%@-In-%u", targetID, v9];
  [(RPConnection *)v6 setLabel:v10];

  [(RPConnection *)v6 setTcpConnection:v4];
  v11 = [(RPConnection *)v6 label];
  [v4 setLabel:v11];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __58__RPFileTransferSession__handleIncomingConnectionStarted___block_invoke;
  v21[3] = &unk_1E7C92D80;
  v21[4] = self;
  v21[5] = v6;
  [(RPConnection *)v6 setInvalidationHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__RPFileTransferSession__handleIncomingConnectionStarted___block_invoke_2;
  v20[3] = &unk_1E7C94408;
  v20[4] = self;
  [(RPConnection *)v6 setReceivedEventHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__RPFileTransferSession__handleIncomingConnectionStarted___block_invoke_3;
  v19[3] = &unk_1E7C94430;
  v19[4] = self;
  [(RPConnection *)v6 setReceivedRequestHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__RPFileTransferSession__handleIncomingConnectionStarted___block_invoke_4;
  v18[3] = &unk_1E7C942A8;
  v18[4] = self;
  [(RPConnection *)v6 setStateChangedHandler:v18];
  if (!self->_controlCnx)
  {
    objc_storeStrong(&self->_controlCnx, v6);
    [(RPFileTransferSession *)self _reportProgressControlState];
  }

  connections = self->_connections;
  if (!connections)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = self->_connections;
    self->_connections = v13;

    connections = self->_connections;
  }

  [(NSMutableSet *)connections addObject:v6];
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    v17 = v6;
    LogPrintF();
  }

LABEL_11:
  [(RPConnection *)v6 activate];
}

uint64_t __58__RPFileTransferSession__handleIncomingConnectionStarted___block_invoke_4(uint64_t a1, int a2)
{
  result = [*(a1 + 32) _reportProgressControlState];
  if (a2 == 1)
  {
    v5 = *(a1 + 32);

    return [v5 _scheduleItems];
  }

  return result;
}

- (void)_handleIncomingConnectionEnded:(id)a3
{
  v4 = a3;
  var0 = self->_ucat->var0;
  v13 = v4;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v12 = v4;
      LogPrintF();
      v4 = v13;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = v13;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(NSMutableSet *)self->_connections removeObject:v4, v12];
  controlCnx = self->_controlCnx;
  if (controlCnx == v13)
  {
    self->_controlCnx = 0;
  }

  [(RPFileTransferSession *)self _reportProgressControlState];
  if (!self->_controlCnx && !self->_invalidateCalled)
  {
    v8 = [(NSMutableSet *)self->_connections anyObject];
    if (!v8)
    {
LABEL_15:

      goto LABEL_16;
    }

    v9 = self->_ucat->var0;
    if (v9 <= 30)
    {
      if (v9 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        v11 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_14:
    objc_storeStrong(&self->_controlCnx, v8);
    [(RPFileTransferSession *)self _reportProgressControlState];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)addItem:(id)a3
{
  v4 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__3;
  v13[4] = __Block_byref_object_dispose__3;
  v14 = 0;
  obj = 0;
  v5 = [(RPFileTransferSession *)self _prepareItem:v4 error:&obj];
  objc_storeStrong(&v14, obj);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__RPFileTransferSession_addItem___block_invoke;
  block[3] = &unk_1E7C94458;
  v11 = v5;
  v9 = v4;
  v10 = v13;
  block[4] = self;
  v7 = v4;
  dispatch_async(dispatchQueue, block);

  _Block_object_dispose(v13, 8);
}

void __33__RPFileTransferSession_addItem___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) != 1 || (v2 = *(a1 + 32), *(v2 + 89) == 1))
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v3 = RPErrorF();
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }

    v6 = **(*(a1 + 32) + 152);
    if (v6 > 90)
    {
      goto LABEL_12;
    }

    if (v6 == -1)
    {
      v11 = *(*(a1 + 32) + 152);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v20 = *(*(a1 + 32) + 152);
    }

    v22 = [*(a1 + 40) itemURL];
    v23 = *(*(*(a1 + 48) + 8) + 40);
    LogPrintF();

LABEL_12:
    v12 = [*(a1 + 40) completionHandler];
    if (v12)
    {
      v26 = v12;
      v12[2](v12, *(*(*(a1 + 48) + 8) + 40));
      [*(a1 + 40) setCompletionHandler:0];
      v12 = v26;
    }

    return;
  }

  v7 = **(v2 + 152);
  if (v7 <= 9)
  {
    if (v7 == -1)
    {
      v13 = *(v2 + 152);
      v14 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v14)
      {
        goto LABEL_18;
      }

      v21 = *(v2 + 152);
    }

    v8 = [*(a1 + 40) fileID];
    v9 = [*(a1 + 40) fileSize];
    v10 = [*(a1 + 40) metadataSize];
    [*(a1 + 40) itemURL];
    v25 = v24 = v10;
    v22 = v8;
    v23 = v9;
    LogPrintF();

    v2 = *(a1 + 32);
  }

LABEL_18:
  v15 = *(v2 + 168);
  if (!v15)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v17 = *(a1 + 32);
    v18 = *(v17 + 168);
    *(v17 + 168) = v16;

    v15 = *(*(a1 + 32) + 168);
  }

  [v15 addObject:{*(a1 + 40), v22, v23, v24, v25}];
  [*(a1 + 32) _metricAddFileSize:{objc_msgSend(*(a1 + 40), "fileSize")}];
  v19 = *(a1 + 32);

  [v19 _scheduleItems];
}

- (void)addItems:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a3 copy];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v17 = 0;
        v10 = [(RPFileTransferSession *)self _prepareItem:v9 error:&v17];
        v11 = v17;
        if (!v10)
        {
          [v9 setError:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__RPFileTransferSession_addItems___block_invoke;
  block[3] = &unk_1E7C92D80;
  block[4] = self;
  v16 = v4;
  v13 = v4;
  dispatch_async(dispatchQueue, block);

  v14 = *MEMORY[0x1E69E9840];
}

void __34__RPFileTransferSession_addItems___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 89) != 1)
  {
    if (!*(v2 + 168))
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v16 = *(a1 + 32);
      v17 = *(v16 + 168);
      *(v16 + 168) = v15;
    }

    v47 = [*(a1 + 40) count];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v18 = *(a1 + 40);
    v19 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (!v19)
    {
      goto LABEL_44;
    }

    v20 = v19;
    v21 = 0;
    v22 = *v51;
    v46 = v18;
    v49 = *v51;
LABEL_22:
    v23 = 0;
    while (1)
    {
      if (*v51 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v50 + 1) + 8 * v23);
      v25 = [v24 error];
      if (v25)
      {
        v26 = **(*(a1 + 32) + 152);
        if (v26 <= 90)
        {
          if (v26 != -1)
          {
            goto LABEL_28;
          }

          v32 = *(*(a1 + 32) + 152);
          if (_LogCategory_Initialize())
          {
            v36 = *(*(a1 + 32) + 152);
LABEL_28:
            v40 = [v24 itemURL];
            v41 = v25;
            LogPrintF();

            v22 = v49;
          }
        }

        v33 = [v24 completionHandler];
        if (v33)
        {
          [v24 setCompletionHandler:0];
          (v33)[2](v33, v25);
        }

        goto LABEL_39;
      }

      ++v21;
      v27 = *(a1 + 32);
      v28 = **(v27 + 152);
      if (v28 <= 9)
      {
        if (v28 == -1)
        {
          v34 = *(v27 + 152);
          v35 = _LogCategory_Initialize();
          v27 = *(a1 + 32);
          if (!v35)
          {
            goto LABEL_38;
          }

          v48 = v21;
          v37 = *(v27 + 152);
        }

        else
        {
          v48 = v21;
        }

        v29 = [v24 fileID];
        v30 = [v24 fileSize];
        v31 = [v24 metadataSize];
        [v24 itemURL];
        v45 = v44 = v31;
        v42 = v47;
        v43 = v30;
        v21 = v48;
        v40 = v29;
        v41 = v48;
        LogPrintF();

        v27 = *(a1 + 32);
        v18 = v46;
        v22 = v49;
      }

LABEL_38:
      [*(v27 + 168) addObject:{v24, v40, v41, v42, v43, v44, v45}];
      [*(a1 + 32) _metricAddFileSize:{objc_msgSend(v24, "fileSize")}];
LABEL_39:

      if (v20 == ++v23)
      {
        v38 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
        v20 = v38;
        if (!v38)
        {
LABEL_44:

          [*(a1 + 32) _scheduleItems];
          goto LABEL_45;
        }

        goto LABEL_22;
      }
    }
  }

  v3 = RPErrorF();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5;
  v7 = *v55;
  do
  {
    v8 = 0;
    do
    {
      if (*v55 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v54 + 1) + 8 * v8);
      v10 = **(*(a1 + 32) + 152);
      if (v10 <= 90)
      {
        if (v10 != -1)
        {
          goto LABEL_9;
        }

        v11 = *(*(a1 + 32) + 152);
        if (_LogCategory_Initialize())
        {
          v13 = *(*(a1 + 32) + 152);
LABEL_9:
          v40 = [v9 itemURL];
          v41 = v3;
          LogPrintF();
        }
      }

      v12 = [v9 completionHandler];
      if (v12)
      {
        [v9 setCompletionHandler:0];
        (v12)[2](v12, v3);
      }

      ++v8;
    }

    while (v6 != v8);
    v14 = [v4 countByEnumeratingWithState:&v54 objects:v59 count:16];
    v6 = v14;
  }

  while (v14);
LABEL_17:

LABEL_45:
  v39 = *MEMORY[0x1E69E9840];
}

- (BOOL)_prepareItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  [v6 setCompleted:0];
  [v6 setError:0];
  [v6 setFileID:{atomic_fetch_add(&self->_fileIDLastSend, 1uLL) + 1}];
  v7 = [v6 itemURL];
  v8 = [v7 fileSystemRepresentation];
  if (!v8)
  {
    if (a4)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  memset(&v15, 0, sizeof(v15));
  if (stat(v8, &v15) && (!*__error() || *__error()))
  {
    if (a4)
    {
LABEL_15:
      RPErrorF();
      *a4 = v13 = 0;
      goto LABEL_18;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_18;
  }

  st_size = v15.st_size;
  [v6 setFileSize:v15.st_size];
  v10 = [v6 metadata];
  if (v10)
  {
    v11 = OPACKEstimateEncodedSize();
  }

  else
  {
    v11 = 0;
  }

  [v6 setMetadataSize:v11];
  v12 = st_size + v11;
  if (__CFADD__(st_size, v11) || ((v12 >= 0xFFFFFFFFFFFFFF38) << 63) >> 63 != v12 >= 0xFFFFFFFFFFFFFF38)
  {
    if (a4)
    {
      RPErrorF();
      *a4 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    [v6 setEstimatedSize:v12 + 200];
    v13 = 1;
  }

LABEL_18:
  return v13;
}

- (void)_scheduleItems
{
  v51 = *MEMORY[0x1E69E9840];
  if (self->_invalidateCalled || [(RPConnection *)self->_controlCnx state]!= 1)
  {
    goto LABEL_43;
  }

  if ([(RPFileTransferSession *)self isResumable]&& ([(RPFileTransferSession *)self flags]& 1) == 0)
  {
    v3 = [(RPFileTransferSession *)self resumeState];
    if (!v3)
    {
      v35 = *MEMORY[0x1E69E9840];

      [(RPFileTransferSession *)self _requestResumeStateFromReceiver];
      return;
    }

    v4 = v3;
    v5 = [v3 isPlaceholder];

    if (v5)
    {
      goto LABEL_43;
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = self->_smallFilesSendTasks;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      v10 = 0;
      do
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v45 + 1) + 8 * v10);
        if ([v11 needsRetry])
        {
          [v11 setNeedsRetry:0];
          ++self->_metricRetries;
          var0 = self->_ucat->var0;
          if (var0 <= 30)
          {
            if (var0 != -1)
            {
              goto LABEL_15;
            }

            ucat = self->_ucat;
            if (_LogCategory_Initialize())
            {
              v15 = self->_ucat;
LABEL_15:
              v36 = [v11 taskID];
              LogPrintF();
            }
          }

          v14 = [v11 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __39__RPFileTransferSession__scheduleItems__block_invoke;
          block[3] = &unk_1E7C92D80;
          block[4] = self;
          block[5] = v11;
          dispatch_async(v14, block);
        }

        ++v10;
      }

      while (v8 != v10);
      v16 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
      v8 = v16;
    }

    while (v16);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = self->_largeFileSendTasks;
  v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (!v18)
  {
    goto LABEL_37;
  }

  v19 = v18;
  v20 = *v41;
  do
  {
    v21 = 0;
    do
    {
      if (*v41 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v40 + 1) + 8 * v21);
      if ([v22 needsRetry])
      {
        [v22 setNeedsRetry:0];
        ++self->_metricRetries;
        v23 = self->_ucat->var0;
        if (v23 <= 30)
        {
          if (v23 != -1)
          {
            goto LABEL_30;
          }

          v24 = self->_ucat;
          if (_LogCategory_Initialize())
          {
            v26 = self->_ucat;
LABEL_30:
            v36 = [v22 taskID];
            LogPrintF();
          }
        }

        v25 = [v22 queue];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __39__RPFileTransferSession__scheduleItems__block_invoke_2;
        v39[3] = &unk_1E7C92D80;
        v39[4] = self;
        v39[5] = v22;
        dispatch_async(v25, v39);
      }

      ++v21;
    }

    while (v19 != v21);
    v27 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
    v19 = v27;
  }

  while (v27);
LABEL_37:

  while ([(NSMutableSet *)self->_smallFilesSendTasks count]< self->_maxSmallFileTasks)
  {
    v28 = [(RPFileTransferSession *)self _smallFilesSendTaskCreate];
    if (!v28)
    {
      break;
    }

    v29 = v28;
    [(NSMutableSet *)self->_smallFilesSendTasks addObject:v28];
    v30 = [v29 queue];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __39__RPFileTransferSession__scheduleItems__block_invoke_3;
    v38[3] = &unk_1E7C92D80;
    v38[4] = self;
    v38[5] = v29;
    dispatch_async(v30, v38);
  }

  while ([(NSMutableSet *)self->_largeFileSendTasks count]< self->_maxLargeFileTasks)
  {
    v31 = [(RPFileTransferSession *)self _largeFileSendTaskCreate];
    if (!v31)
    {
      break;
    }

    v32 = v31;
    [(NSMutableSet *)self->_largeFileSendTasks addObject:v31];
    v33 = [v32 queue];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __39__RPFileTransferSession__scheduleItems__block_invoke_4;
    v37[3] = &unk_1E7C92D80;
    v37[4] = self;
    v37[5] = v32;
    dispatch_async(v33, v37);
  }

LABEL_43:
  v34 = *MEMORY[0x1E69E9840];
}

- (void)_requestResumeStateFromReceiver
{
  v3 = objc_alloc_init(RPFileTransferResumeState);
  [(RPFileTransferResumeState *)v3 setIsPlaceholder:1];
  [(RPFileTransferResumeState *)v3 setUcat:self->_ucat];
  resumeState = self->_resumeState;
  self->_resumeState = v3;
  v5 = v3;

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [(RPFileTransferSession *)self targetID];
  [v6 setValue:v7 forKey:@"_i"];

  controlCnx = self->_controlCnx;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__RPFileTransferSession__requestResumeStateFromReceiver__block_invoke;
  v9[3] = &unk_1E7C93B48;
  v9[4] = self;
  [(RPConnection *)controlCnx sendEncryptedRequestID:@"_ftRs" request:v6 xpcID:0 options:0 responseHandler:v9];
}

void __56__RPFileTransferSession__requestResumeStateFromReceiver__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9)
  {
    if (!v7)
    {
      goto LABEL_26;
    }

    v13 = [v7 objectForKeyedSubscript:@"resumeState"];
    if (!v13)
    {
LABEL_25:

      goto LABEL_26;
    }

    v22 = 0;
    v14 = [[RPFileTransferResumeState alloc] initWithDictionaryRepresentation:v13 error:&v22];
    v15 = v22;
    if (v14)
    {
      if (![(RPFileTransferResumeState *)v14 isEmpty])
      {
        v16 = *MEMORY[0x1E69E9858];
        v21 = [*(a1 + 32) targetID];
        FPrintF();
      }

      [(RPFileTransferResumeState *)v14 removeUnusableSourceFileItems];
      objc_storeStrong((*(a1 + 32) + 264), v14);
      goto LABEL_24;
    }

    v19 = **(*(a1 + 32) + 152);
    if (v19 <= 30)
    {
      if (v19 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        v20 = *(*(a1 + 32) + 152);
      }

      v21 = v15;
      LogPrintF();
    }

LABEL_24:

    goto LABEL_25;
  }

  v11 = [v9 code];
  v12 = **(*(a1 + 32) + 152);
  if (v11 == -6714)
  {
    if (v12 <= 30)
    {
      if (v12 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_26;
        }

        v17 = *(*(a1 + 32) + 152);
      }

      goto LABEL_15;
    }
  }

  else if (v12 <= 30)
  {
    if (v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_26;
      }

      v18 = *(*(a1 + 32) + 152);
    }

    v21 = v10;
LABEL_15:
    LogPrintF();
  }

LABEL_26:
  [*(*(a1 + 32) + 264) setIsPlaceholder:{0, v21}];
  [*(a1 + 32) _scheduleItems];
}

- (void)_completeItem:(id)a3 error:(id)a4
{
  [(RPFileTransferSession *)self _completeItemDirect:a3 error:a4];

  [(RPFileTransferSession *)self _processFinish];
}

- (void)_completeItemDirect:(id)a3 error:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [v19 completionHandler];
  if (v7)
  {
    [v19 setCompletionHandler:0];
    var0 = self->_ucat->var0;
    if (v6)
    {
      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          ucat = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_13;
          }

          v11 = self->_ucat;
        }

        v9 = [v19 itemURL];
        v17 = v9;
        v18 = v6;
        goto LABEL_9;
      }
    }

    else if (var0 <= 9)
    {
      if (var0 == -1)
      {
        v12 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v16 = self->_ucat;
      }

      v9 = [v19 itemURL];
      v17 = v9;
LABEL_9:
      LogPrintF();
    }

LABEL_13:
    (v7)[2](v7, v6);
  }

  if (([v19 completed] & 1) == 0)
  {
    [v19 setCompleted:1];
    self->_metricLastFileCompletionTicks = mach_absolute_time();
    if (!v6)
    {
      v13 = [v19 fileSize];
      v14 = [v19 metadataSize];
      v15 = vdupq_n_s64(1uLL);
      v15.i64[0] = v14 + v13;
      *&self->_metricTotalBytes = vaddq_s64(v15, *&self->_metricTotalBytes);
    }
  }
}

- (void)_processReceivedItem:(id)a3 responseHandler:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _Block_copy(self->_receivedItemHandler);
  if (v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke;
    v15[3] = &unk_1E7C93470;
    v15[4] = self;
    v16 = v7;
    v8[2](v8, v6, v15);
  }

  else
  {
    v9 = _Block_copy(self->_receivedItemsHandler);
    if (v9)
    {
      v17[0] = v6;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_3;
      v13[3] = &unk_1E7C93470;
      v13[4] = self;
      v14 = v7;
      v9[2](v9, v10, v13);
    }

    else
    {
      v11 = RPErrorF();
      (*(v7 + 2))(v7, 0, 0, v11);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 584);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_2;
  v7[3] = &unk_1E7C93550;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = 0;
  }

  else
  {
    v1 = MEMORY[0x1E695E0F8];
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v1, 0);
}

void __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 584);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_4;
  v7[3] = &unk_1E7C93550;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = 0;
  }

  else
  {
    v1 = MEMORY[0x1E695E0F8];
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v1, 0);
}

- (void)_processReceivedItems:(id)a3 responseHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _Block_copy(self->_receivedItemsHandler);
  if (v8)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke;
    v30[3] = &unk_1E7C93470;
    v30[4] = self;
    v31 = v7;
    v8[2](v8, v6, v30);
  }

  else
  {
    v9 = _Block_copy(self->_receivedItemHandler);
    if (v9)
    {
      v18 = v7;
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x3032000000;
      v28[3] = __Block_byref_object_copy__3;
      v28[4] = __Block_byref_object_dispose__3;
      v29 = 0;
      v10 = dispatch_group_create();
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v6;
      v11 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v11)
      {
        v12 = *v25;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v24 + 1) + 8 * i);
            dispatch_group_enter(v10);
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_3;
            v23[3] = &unk_1E7C94480;
            v23[4] = v10;
            v23[5] = v28;
            v9[2](v9, v14, v23);
          }

          v11 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v11);
      }

      v7 = v18;
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_4;
      block[3] = &unk_1E7C944A8;
      v21 = v18;
      v22 = v28;
      dispatch_group_notify(v10, dispatchQueue, block);

      _Block_object_dispose(v28, 8);
    }

    else
    {
      v16 = RPErrorF();
      (*(v7 + 2))(v7, 0, 0, v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 584);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_2;
  v7[3] = &unk_1E7C93550;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = 0;
  }

  else
  {
    v1 = MEMORY[0x1E695E0F8];
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v1, 0);
}

void __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_4(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v1 = 0;
  }

  else
  {
    v1 = MEMORY[0x1E695E0F8];
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v1, 0);
}

- (void)finish
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__RPFileTransferSession_finish__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __31__RPFileTransferSession_finish__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 152);
  if (v3 <= 30)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_5;
      }

      v5 = *(v2 + 152);
    }

    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_5:
  *(v2 + 88) = 1;
  [*(a1 + 32) _processFinish];
  if ([*(a1 + 32) isResumable] && (objc_msgSend(*(a1 + 32), "flags") & 1) != 0)
  {
    v6 = [*(a1 + 32) resumeState];
    [v6 flushStateFile];
  }
}

- (void)_processFinish
{
  if (self->_finishPending && ![(NSMutableSet *)self->_addedItems count]&& ![(NSMutableDictionary *)self->_smallFilesReceiveTasks count]&& ![(NSMutableSet *)self->_smallFilesSendTasks count]&& ![(NSMutableDictionary *)self->_largeFileReceiveTasks count]&& ![(NSMutableSet *)self->_largeFileSendTasks count])
  {

    [(RPFileTransferSession *)self _reportCompletion:0];
  }
}

- (id)_smallFilesSendTaskCreate
{
  v24 = *MEMORY[0x1E69E9840];
  prefSmallFilesMaxBytes = self->_prefSmallFilesMaxBytes;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(NSMutableSet *)self->_addedItems copy];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v5)
  {
    v6 = v4;
    goto LABEL_19;
  }

  v6 = 0;
  v7 = *v20;
  v18 = prefSmallFilesMaxBytes;
  do
  {
    for (i = 0; i != v5; i = (i + 1))
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v19 + 1) + 8 * i);
      v10 = [v9 estimatedSize];
      v11 = prefSmallFilesMaxBytes - v10;
      if (prefSmallFilesMaxBytes >= v10)
      {
        if (!v6)
        {
          v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v6 addObject:v9];
        [(NSMutableSet *)self->_addedItems removeObject:v9];
        prefSmallFilesMaxBytes = v11;
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v5);

  if (v6)
  {
    if (prefSmallFilesMaxBytes > v18 >> 1)
    {
      ++self->_metricPrematureSmallSets;
    }

    v5 = objc_alloc_init(RPFileTransferSmallFilesTask);
    [(RPFileTransferSmallFilesTask *)v5 setFileItems:v6];
    v12 = [(RPFileTransferSession *)self _ioQueueDequeue];
    [(RPFileTransferSmallFilesTask *)v5 setQueue:v12];

    ++self->_taskIDLast;
    [(RPFileTransferSmallFilesTask *)v5 setTaskID:?];
    var0 = self->_ucat->var0;
    if (var0 > 10)
    {
      goto LABEL_19;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v17 = self->_ucat;
    }

    [(RPFileTransferSmallFilesTask *)v5 taskID];
    [v6 count];
    LogPrintF();
LABEL_19:

    goto LABEL_21;
  }

  v5 = 0;
LABEL_21:
  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_smallFilesSendTaskRun:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v4 = [v37 fileItems];
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v52;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v51 + 1) + 8 * i);
        if ([(RPFileTransferSession *)self isResumable])
        {
          v10 = [(RPFileTransferSession *)self resumeState];
          v11 = [v9 filename];
          v12 = [v10 finishedFileWithFileName:v11];

          if (v12)
          {
            v13 = *MEMORY[0x1E69E9858];
            v35 = [v12 fileName];
            FPrintF();

            goto LABEL_13;
          }
        }

        v50 = 0;
        v12 = [(RPFileTransferSession *)self _smallFilesSendTaskReadItem:v9 error:&v50];
        v14 = v50;
        v10 = v14;
        if (v12)
        {
          [v38 addObject:v12];
        }

        else
        {
          dispatchQueue = self->_dispatchQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke;
          block[3] = &unk_1E7C93BC0;
          block[4] = self;
          block[5] = v9;
          v49 = v14;
          dispatch_async(dispatchQueue, block);
        }

LABEL_13:
      }

      v6 = [v4 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v6);
  }

  v16 = v38;
  v17 = [v38 count];
  v18 = self->_dispatchQueue;
  if (v17)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_3;
    v45[3] = &unk_1E7C92D80;
    v45[4] = v38;
    v45[5] = self;
    dispatch_async(v18, v45);
    v19 = v37;
    if (!self->_compressionEnabled)
    {
      goto LABEL_27;
    }

    v43 = 0;
    v44 = 0;
    v20 = [(RPFileTransferSession *)self _encodeAndCompressObject:v38 originalSize:&v44 error:&v43];
    v21 = v43;
    v22 = v21;
    if (v20)
    {
      atomic_fetch_add(&self->_metricCompressedBytes, [v20 length]);
      atomic_fetch_add(&self->_metricUncompressedBytes, v44);
      v58[0] = v20;
      v57[0] = &unk_1F2EEC758;
      v57[1] = @"_i";
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v37, "taskID")}];
      v58[1] = v23;
      v57[2] = &unk_1F2EEC770;
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v44];
      v58[2] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];

      v16 = v38;
      v19 = v37;

      if (v25)
      {
LABEL_28:
        v30 = self->_dispatchQueue;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_428;
        v39[3] = &unk_1E7C944F8;
        v39[4] = self;
        v40 = v19;
        v41 = v25;
        v42 = v16;
        v31 = v25;
        v32 = v19;
        dispatch_async(v30, v39);

        goto LABEL_29;
      }

LABEL_27:
      v55[0] = @"_i";
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v19, "taskID", v35, v36)}];
      v55[1] = &unk_1F2EEC788;
      v56[0] = v29;
      v56[1] = v16;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];

      goto LABEL_28;
    }

    atomic_fetch_add(&self->_metricCompressedBytes, v44);
    atomic_fetch_add(&self->_metricUncompressedBytes, v44);
    atomic_fetch_add(&self->_metricUncompressibleChunks, 1uLL);
    if (v21)
    {
      atomic_fetch_add(&self->_metricCompressionErrors, 1uLL);
      var0 = self->_ucat->var0;
      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          ucat = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_26;
          }

          v34 = self->_ucat;
        }

        v35 = [v37 taskID];
        v36 = v22;
        LogPrintF();
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_2;
  v46[3] = &unk_1E7C92D80;
  v19 = v37;
  v46[4] = self;
  v47 = v37;
  v26 = v37;
  dispatch_async(v18, v46);

LABEL_29:
  v33 = *MEMORY[0x1E69E9840];
}

uint64_t __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 fileSize] < 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = [v7 fileSize];
        }

        *(*(a1 + 40) + 312) += v8;
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) count];
  *(*(a1 + 40) + 328) += result;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_428(void *a1)
{
  v2 = *(a1[4] + 64);
  if ([v2 state] == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_2_431;
    v9[3] = &unk_1E7C944D0;
    v3 = a1[6];
    v4 = a1[4];
    v5 = a1[5];
    v9[4] = a1[7];
    v9[5] = v4;
    v10 = v5;
    [v2 sendEncryptedRequestID:@"_ftSm" request:v3 xpcID:0 options:0 responseHandler:v9];
  }

  else
  {
    v7 = a1[4];
    v6 = a1[5];
    v8 = RPErrorF();
    [v7 _smallFilesSendTaskEnd:v6 error:v8];
  }
}

void __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_2_431(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 fileSize] < 1)
        {
          v12 = 0;
        }

        else
        {
          v12 = [v11 fileSize];
        }

        *(*(a1 + 40) + 304) += v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  *(*(a1 + 40) + 320) += [*(a1 + 32) count];
  *(*(a1 + 40) + 336) = 1;
  [*(a1 + 40) _smallFilesSendTaskEnd:*(a1 + 48) error:v5];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_smallFilesSendTaskReadItem:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 itemURL];
  v8 = [v7 fileSystemRepresentation];

  if (v8)
  {
    v9 = -[RPFileTransferSession _readPath:size:error:](self, "_readPath:size:error:", v8, [v6 fileSize], a4);
    v10 = v9;
    if (v9)
    {
      CC_SHA256([v9 bytes], objc_msgSend(v9, "length"), md);
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];
      [v6 setSha256HashData:v11];
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v12 setObject:v10 forKeyedSubscript:&unk_1F2EEC7A0];
      [v12 setObject:v11 forKeyedSubscript:@"_s2"];
      v13 = [v6 filename];
      if (v13)
      {
        [v12 setObject:v13 forKeyedSubscript:&unk_1F2EEC7B8];
      }

      v14 = [v6 fileSize];
      if (v14)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v14];
        [v12 setObject:v15 forKeyedSubscript:&unk_1F2EEC7D0];
      }

      v16 = [v6 metadata];
      if (v16)
      {
        [v12 setObject:v16 forKeyedSubscript:&unk_1F2EEC7E8];
      }

      v24 = 0;
      v17 = [(RPFileTransferSession *)self _modTimeForFileWithPath:v8 error:&v24];
      v18 = v24;
      v19 = v18;
      if (v17)
      {
        [v12 addEntriesFromDictionary:v17];
        v20 = v12;
      }

      else if (a4)
      {
        v23 = v18;
        v20 = 0;
        *a4 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else if (a4)
  {
    RPErrorF();
    *a4 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)_smallFilesSendTaskEnd:(id)a3 error:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([(NSMutableSet *)self->_smallFilesSendTasks containsObject:v6]& 1) != 0)
  {
    if (!self->_invalidateCalled && [v7 code] == -71143)
    {
      var0 = self->_ucat->var0;
      if (var0 <= 90)
      {
        if (var0 != -1)
        {
LABEL_6:
          v27 = [v6 taskID];
          LogPrintF();
          [v6 setNeedsRetry:{1, v27, v7}];
          goto LABEL_33;
        }

        ucat = self->_ucat;
        if (_LogCategory_Initialize())
        {
          v25 = self->_ucat;
          goto LABEL_6;
        }
      }

      [v6 setNeedsRetry:{1, v26, v28}];
      goto LABEL_33;
    }

    v10 = self->_ucat->var0;
    if (v7)
    {
      if (v10 <= 90)
      {
        if (v10 == -1)
        {
          v13 = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_23;
          }

          v14 = self->_ucat;
        }

        v26 = [v6 taskID];
        v28 = v7;
        goto LABEL_17;
      }
    }

    else if (v10 <= 10)
    {
      if (v10 == -1)
      {
        v15 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        v24 = self->_ucat;
      }

      v26 = [v6 taskID];
LABEL_17:
      LogPrintF();
    }

LABEL_23:
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [v6 fileItems];
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [(RPFileTransferSession *)self _completeItemDirect:*(*(&v29 + 1) + 8 * i) error:v7];
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v18);
    }

    [(NSMutableSet *)self->_smallFilesSendTasks removeObject:v6];
    [(RPFileTransferSession *)self _processFinish];
    v21 = [v6 queue];
    [(RPFileTransferSession *)self _ioQueueEnqueue:v21];

    [(RPFileTransferSession *)self _scheduleItems];
    goto LABEL_33;
  }

  v9 = self->_ucat->var0;
  if (v9 <= 90)
  {
    if (v9 == -1)
    {
      v11 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_33;
      }

      v12 = self->_ucat;
    }

    [v6 taskID];
    LogPrintF();
  }

LABEL_33:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_smallFilesReceiveRequest:(id)a3 responseHandler:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v44 = v5;
  v43 = NSDictionaryGetNSNumber();
  v7 = [v43 unsignedLongLongValue];
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__3;
  v64 = __Block_byref_object_dispose__3;
  v65 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__RPFileTransferSession__smallFilesReceiveRequest_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C94520;
  v58 = &v60;
  v59 = v7;
  aBlock[4] = self;
  v39 = v7;
  v40 = v6;
  v57 = v40;
  v38 = _Block_copy(aBlock);
  if (self->_fileWritesOutstanding >= 0x32)
  {
    v33 = RPErrorF();
    v42 = v61[5];
    v61[5] = v33;

    goto LABEL_36;
  }

  CFDataGetTypeID();
  v41 = CFDictionaryGetTypedValue();
  if (!v41)
  {
    CFArrayGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (!v10)
    {
      v35 = RPErrorF();
      v36 = v61[5];
      v61[5] = v35;

      goto LABEL_35;
    }

    goto LABEL_8;
  }

  v55 = 0;
  Int64 = CFDictionaryGetInt64();
  if (!Int64)
  {
    v34 = RPErrorF();
    v10 = v61[5];
    v61[5] = v34;
    goto LABEL_39;
  }

  v9 = (v61 + 5);
  obj = v61[5];
  v10 = [(RPFileTransferSession *)self _decompressAndDecodeData:v41 originalSize:Int64 error:&obj];
  objc_storeStrong(v9, obj);
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = RPErrorF();
      v12 = v61[5];
      v61[5] = v11;

LABEL_39:
      goto LABEL_35;
    }

LABEL_8:
    v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v45 = v10;
    v13 = [(RPFileTransferSmallFilesTask *)v45 countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v13)
    {
      v14 = *v51;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(v45);
          }

          v16 = *(*(&v50 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v26 = RPErrorF();
            v27 = v61[5];
            v61[5] = v26;

            v28 = v45;
            goto LABEL_34;
          }

          v17 = objc_alloc_init(RPFileTransferItem);
          CFDataGetTypeID();
          v18 = CFDictionaryGetTypedValue();
          if (v18)
          {
            [(RPFileTransferItem *)v17 setFileData:v18];
          }

          CFStringGetTypeID();
          v19 = CFDictionaryGetTypedValue();
          if (v19)
          {
            [(RPFileTransferItem *)v17 setFilename:v19];
          }

          v55 = 0;
          v20 = CFDictionaryGetInt64();
          if (!v55)
          {
            [(RPFileTransferItem *)v17 setFileSize:v20];
          }

          CFDictionaryGetTypeID();
          v21 = CFDictionaryGetTypedValue();
          if (v21)
          {
            [(RPFileTransferItem *)v17 setMetadata:v21];
          }

          v22 = CFDictionaryGetCFDataOfLength();
          if (v22)
          {
            [(RPFileTransferItem *)v17 setSha256HashData:v22];
          }

          [v46 addObject:v17];
          if ([(RPFileTransferSession *)self isResumable])
          {
            v23 = [(RPFileTransferSession *)self resumeState];
            v24 = [[RPFileTransferResumeStateItem alloc] initWithFileTransferRequestDict:v16];
            [v23 addActiveFile:v24];
            [v23 scheduleStateFileFlush];
          }
        }

        v13 = [(RPFileTransferSmallFilesTask *)v45 countByEnumeratingWithState:&v50 objects:v66 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    var0 = self->_ucat->var0;
    if (var0 > 9)
    {
      goto LABEL_33;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
LABEL_33:
        v28 = objc_alloc_init(RPFileTransferSmallFilesTask);
        [(RPFileTransferSmallFilesTask *)v28 setFileItems:v46];
        v30 = [(RPFileTransferSession *)self _ioQueueDequeue];
        [(RPFileTransferSmallFilesTask *)v28 setQueue:v30];

        [(RPFileTransferSmallFilesTask *)v28 setTaskID:v39];
        [(NSMutableDictionary *)self->_smallFilesReceiveTasks setObject:v28 forKeyedSubscript:v43];
        ++self->_fileWritesOutstanding;
        v31 = [(RPFileTransferSmallFilesTask *)v28 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __67__RPFileTransferSession__smallFilesReceiveRequest_responseHandler___block_invoke_2;
        block[3] = &unk_1E7C93578;
        block[4] = self;
        block[5] = v28;
        v49 = v40;
        dispatch_async(v31, block);

LABEL_34:
        goto LABEL_35;
      }

      v37 = self->_ucat;
    }

    [v46 count];
    LogPrintF();
    goto LABEL_33;
  }

LABEL_35:

LABEL_36:
  v38[2](v38);

  _Block_object_dispose(&v60, 8);
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __67__RPFileTransferSession__smallFilesReceiveRequest_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = **(*(result + 32) + 152);
  if (v3 <= 90)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v7 = *(v2[4] + 152);
      v8 = *(*(v1 + 8) + 40);
    }

    v9 = v2[7];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v5 = *(*(v1 + 8) + 40);
  v6 = *(v2[5] + 16);

  return v6();
}

- (void)_smallFilesReceiveTaskRun:(id)a3 responseHandler:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v6 fileItems];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v28;
LABEL_3:
    v13 = 0;
    v14 = v11;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v27 + 1) + 8 * v13);
      v26 = v14;
      v16 = [(RPFileTransferSession *)self _smallFilesReceiveTaskFileItem:v15 error:&v26];
      v11 = v26;

      if (!v16)
      {
        break;
      }

      ++v13;
      v14 = v11;
      if (v10 == v13)
      {
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__RPFileTransferSession__smallFilesReceiveTaskRun_responseHandler___block_invoke;
  block[3] = &unk_1E7C92F38;
  block[4] = self;
  v23 = v6;
  v24 = v11;
  v25 = v7;
  v18 = v7;
  v19 = v11;
  v20 = v6;
  dispatch_async(dispatchQueue, block);

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)_smallFilesReceiveTaskFileItem:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 sha256HashData];
  if ([v7 length] == 32)
  {
    v8 = [v6 fileData];
    [v6 setFileData:0];
    CC_SHA256([v8 bytes], objc_msgSend(v8, "length"), md);
    v9 = v7;
    v10 = [v7 bytes];
    if (*md == *v10 && v24 == v10[1] && v25 == v10[2] && v26 == v10[3])
    {
      v14 = -[RPFileTransferSession _openWriteFileItem:size:error:](self, "_openWriteFileItem:size:error:", v6, [v8 length], a4);
      v15 = v14;
      if ((v14 & 0x80000000) == 0)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __62__RPFileTransferSession__smallFilesReceiveTaskFileItem_error___block_invoke;
        aBlock[3] = &__block_descriptor_36_e5_v8__0l;
        v22 = v14;
        v16 = _Block_copy(aBlock);
        v18 = 1;
        if ([v8 length])
        {
          v17 = v8;
          if (!-[RPFileTransferSession _writeFD:buffer:size:error:](self, "_writeFD:buffer:size:error:", v15, [v8 bytes], objc_msgSend(v8, "length"), a4))
          {
            v18 = 0;
          }
        }

        v16[2](v16);

        goto LABEL_18;
      }
    }

    else if (a4)
    {
      RPErrorF();
      *a4 = v18 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v18 = 0;
    goto LABEL_18;
  }

  if (a4)
  {
    RPErrorF();
    *a4 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_smallFilesReceiveTaskComplete:(id)a3 error:(id)a4 responseHandler:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 taskID];
  smallFilesReceiveTasks = self->_smallFilesReceiveTasks;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
  [(NSMutableDictionary *)smallFilesReceiveTasks setObject:0 forKeyedSubscript:v13];

  v14 = [v8 queue];
  [(RPFileTransferSession *)self _ioQueueEnqueue:v14];

  --self->_fileWritesOutstanding;
  if (self->_invalidateCalled)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_23:
    v25 = RPErrorF();
    (*(v10 + 2))(v10, 0, 0, v25);
    [(RPFileTransferSession *)self _updateSmallFilesTaskResumeState:v8 error:v25];
LABEL_35:

    goto LABEL_36;
  }

  if (!v9)
  {
    v17 = [v8 fileItems];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v43;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v42 + 1) + 8 * i);
          if ([v22 fileSize] < 1)
          {
            v23 = 0;
          }

          else
          {
            v23 = [v22 fileSize];
          }

          *&self->_progressCurrentBytes = vaddq_s64(*&self->_progressCurrentBytes, vdupq_n_s64(v23));
        }

        v19 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v19);
    }

    *&self->_progressCurrentFiles = vaddq_s64(*&self->_progressCurrentFiles, vdupq_n_s64([v17 count]));
    self->_progressDirty = 1;
    v24 = self->_ucat->var0;
    if (v24 > 9)
    {
      goto LABEL_27;
    }

    if (v24 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_27;
      }

      v36 = self->_ucat;
    }

    v37 = v11;
    LogPrintF();
LABEL_27:
    v26 = [v8 fileItems];
    [(RPFileTransferSession *)self _processReceivedItems:v26 responseHandler:v10];

    [(RPFileTransferSession *)self _updateSmallFilesTaskResumeState:v8 error:0];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v25 = v17;
    v27 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v39;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v38 + 1) + 8 * j);
          v32 = [v31 fileSize];
          self->_metricTotalBytes += [v31 metadataSize] + v32;
        }

        v28 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v28);
    }

    self->_metricTotalFiles += [v25 count];
    self->_metricLastFileCompletionTicks = mach_absolute_time();
    goto LABEL_35;
  }

  v16 = self->_ucat->var0;
  if (v16 <= 90)
  {
    if (v16 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v35 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_25:
  (*(v10 + 2))(v10, 0, 0, v9);
  [(RPFileTransferSession *)self _updateSmallFilesTaskResumeState:v8 error:v9];
LABEL_36:

  v33 = *MEMORY[0x1E69E9840];
}

- (void)_updateSmallFilesTaskResumeState:(id)a3 error:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(RPFileTransferSession *)self isResumable])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v6;
    v8 = [v6 fileItems];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          v14 = [(RPFileTransferSession *)self resumeState];
          v15 = [v13 filename];
          v16 = [v14 activeFileWithFileName:v15];

          if (v16)
          {
            if (v7)
            {
              v17 = 0;
            }

            else
            {
              v17 = [v13 fileSize];
            }

            [v16 setBytesWritten:v17];
            [v16 setError:v7];
            [v14 removeActiveFile:v16];
            [v14 addFinishedFile:v16];
            [v14 scheduleStateFileFlush];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v6 = v19;
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)_largeFileSendTaskCreate
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_addedItems;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = *v18;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v18 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(*(&v17 + 1) + 8 * v7);
    if ([v8 estimatedSize] > self->_prefSmallFilesMaxBytes)
    {
      break;
    }

    if (v5 == ++v7)
    {
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

LABEL_9:
      v9 = 0;
      v10 = v3;
LABEL_16:

      goto LABEL_17;
    }
  }

  v10 = v8;

  if (v10)
  {
    [(NSMutableSet *)self->_addedItems removeObject:v10];
    v9 = objc_alloc_init(RPFileTransferLargeFileSendTask);
    [(RPFileTransferLargeFileSendTask *)v9 setFileFD:0xFFFFFFFFLL];
    [(RPFileTransferLargeFileSendTask *)v9 setFileOffset:0];
    [(RPFileTransferLargeFileSendTask *)v9 setFileItem:v10];
    v11 = [(RPFileTransferSession *)self _ioQueueDequeue];
    [(RPFileTransferLargeFileSendTask *)v9 setQueue:v11];

    ++self->_taskIDLast;
    [(RPFileTransferLargeFileSendTask *)v9 setTaskID:?];
    var0 = self->_ucat->var0;
    if (var0 > 10)
    {
      goto LABEL_16;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v16 = self->_ucat;
    }

    [(RPFileTransferLargeFileSendTask *)v9 taskID];
    [(NSMutableSet *)v10 fileID];
    [(NSMutableSet *)v10 fileSize];
    [(NSMutableSet *)v10 metadataSize];
    LogPrintF();
    goto LABEL_16;
  }

  v9 = 0;
LABEL_17:
  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_largeFileSendTaskStart:(id)a3
{
  v4 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  v5 = [v4 fileItem];
  v6 = [v5 itemURL];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__RPFileTransferSession__largeFileSendTaskStart___block_invoke;
  aBlock[3] = &unk_1E7C94568;
  v41 = &v42;
  aBlock[4] = self;
  aBlock[5] = v6;
  v7 = v4;
  v40 = v7;
  v8 = _Block_copy(aBlock);
  v7[8] = 0;
  v9 = [v7 fileItem];
  *(v7 + 3) = [v9 fileSize];

  *(v7 + 4) = 0;
  *(v7 + 8) = 0;
  ++*(v7 + 35);
  v10 = [v6 fileSystemRepresentation];
  if (!v10)
  {
    v29 = RPErrorF();
    v30 = v43[5];
    v43[5] = v29;

    goto LABEL_17;
  }

  v11 = [v7 fileItem];
  if ([v11 fileSize] < 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = [v7 fileItem];
    v13 = [v12 fileSize];
  }

  if ([(RPFileTransferSession *)self isResumable])
  {
    v14 = [(RPFileTransferSession *)self resumeState];
    v15 = [v7 fileItem];
    v16 = [v15 filename];
    v17 = [v14 finishedFileWithFileName:v16];

    if (v17)
    {
      v18 = *MEMORY[0x1E69E9858];
      v31 = [v17 fileName];
      FPrintF();

      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__RPFileTransferSession__largeFileSendTaskStart___block_invoke_2;
      block[3] = &unk_1E7C92D80;
      block[4] = self;
      v38 = v7;
      dispatch_async(dispatchQueue, block);

      goto LABEL_17;
    }

    v21 = [v7 fileItem];
    v22 = [v21 filename];
    v23 = [v14 activeFileWithFileName:v22];

    if (v23)
    {
      v24 = [v23 fileOffset];
      v20 = [v23 bytesWritten] + v24;
      if (v20)
      {
        v25 = [v6 path];
        v33 = [v23 sourceFileItemUsable:v25];

        if (v33)
        {
          v34 = *MEMORY[0x1E69E9858];
          v32 = [v23 fileName];
          FPrintF();

          [v7 setFileOffset:{v20, v32, v20}];
        }
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v26 = self->_dispatchQueue;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __49__RPFileTransferSession__largeFileSendTaskStart___block_invoke_3;
  v36[3] = &unk_1E7C94590;
  v36[4] = self;
  v36[5] = v20;
  v36[6] = v13;
  dispatch_async(v26, v36);
  v27 = v43;
  obj = v43[5];
  v28 = [(RPFileTransferSession *)self _openReadPath:v10 error:&obj];
  objc_storeStrong(v27 + 5, obj);
  if ((v28 & 0x80000000) == 0)
  {
    [v7 setFileFD:v28];
    CC_SHA256_Init((v7 + 36));
    [(RPFileTransferSession *)self _largeFileSendTaskNext:v7 xid:*(v7 + 35)];
  }

LABEL_17:
  v8[2](v8);

  _Block_object_dispose(&v42, 8);
}

uint64_t __49__RPFileTransferSession__largeFileSendTaskStart___block_invoke(uint64_t result)
{
  v1 = *(result + 56);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 32);
  v4 = *v3[19];
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = v3[19];
      v6 = _LogCategory_Initialize();
      v3 = v2[4];
      v1 = v2[7];
      if (!v6)
      {
        goto LABEL_7;
      }

      v9 = v3[19];
      v10 = *(*(v1 + 8) + 40);
    }

    v11 = v2[5];
    LogPrintF();
    v3 = v2[4];
    v1 = v2[7];
  }

LABEL_7:
  v7 = v2[6];
  v8 = *(*(v1 + 8) + 40);

  return [v3 _largeFileSendTaskFailed:v7 error:v8];
}

void *__49__RPFileTransferSession__largeFileSendTaskStart___block_invoke_3(void *result)
{
  *(result[4] + 304) += result[5];
  *(result[4] + 312) += result[6];
  ++*(result[4] + 328);
  return result;
}

- (void)_largeFileSendTaskSend:(id)a3 data:(id)a4 end:(BOOL)a5 xid:(unsigned int)a6
{
  v7 = a5;
  v52 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v10, "taskID")}];
  [v12 setObject:v13 forKeyedSubscript:@"_i"];

  if (v11)
  {
    if (!self->_compressionEnabled)
    {
LABEL_11:
      [v12 setObject:v11 forKeyedSubscript:{&unk_1F2EEC7A0, v41, v42}];
      goto LABEL_12;
    }

    v14 = [v11 length];
    v50 = 0;
    v15 = [(RPFileTransferSession *)self _compressData:v11 error:&v50];
    v16 = v50;
    v17 = v16;
    if (v15)
    {
      atomic_fetch_add(&self->_metricCompressedBytes, [v15 length]);
      atomic_fetch_add(&self->_metricUncompressedBytes, v14);
      [v12 setObject:v15 forKeyedSubscript:&unk_1F2EEC758];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
      [v12 setObject:v18 forKeyedSubscript:&unk_1F2EEC770];

      goto LABEL_12;
    }

    atomic_fetch_add(&self->_metricCompressedBytes, v14);
    atomic_fetch_add(&self->_metricUncompressedBytes, v14);
    atomic_fetch_add(&self->_metricUncompressibleChunks, 1uLL);
    if (v16)
    {
      atomic_fetch_add(&self->_metricCompressionErrors, 1uLL);
      var0 = self->_ucat->var0;
      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          ucat = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          v40 = self->_ucat;
        }

        v41 = [v10 taskID];
        v42 = v17;
        LogPrintF();
      }
    }

LABEL_10:

    goto LABEL_11;
  }

LABEL_12:
  v21 = [v10 fileItem];
  v22 = v21;
  if ((v10[32] & 1) == 0)
  {
    v23 = [v21 filename];
    if (v23)
    {
      [v12 setObject:v23 forKeyedSubscript:&unk_1F2EEC7B8];
    }

    v24 = [v22 fileSize];
    if (v24)
    {
      v25 = [MEMORY[0x1E696AD98] numberWithLongLong:v24];
      [v12 setObject:v25 forKeyedSubscript:&unk_1F2EEC7D0];
    }

    v26 = [v22 metadata];
    if (v26)
    {
      [v12 setObject:v26 forKeyedSubscript:&unk_1F2EEC7E8];
    }

    v27 = [v10 fileOffset];
    if (v27)
    {
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v27];
      [v12 setObject:v28 forKeyedSubscript:@"_fOff"];
    }

    v29 = [v22 itemURL];
    v30 = [v29 fileSystemRepresentation];

    v49 = 0;
    v31 = [(RPFileTransferSession *)self _modTimeForFileWithPath:v30 error:&v49];
    v32 = v49;
    if (v31)
    {
      [v12 addEntriesFromDictionary:v31];
    }

    *(v10 + 8) |= 1u;

    if (!v7)
    {
      v33 = 1;
      goto LABEL_29;
    }

    v33 = 3;
LABEL_27:
    CC_SHA256_Final(md, (v10 + 36));
    v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];
    [v22 setSha256HashData:v34];
    [v12 setObject:v34 forKeyedSubscript:@"_s2"];
    *(v10 + 8) |= 2u;

LABEL_29:
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v33];
    [v12 setObject:v35 forKeyedSubscript:&unk_1F2EEC800];

    goto LABEL_30;
  }

  if (v7)
  {
    v33 = 2;
    goto LABEL_27;
  }

LABEL_30:
  atomic_fetch_add(v10 + 4, 1u);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke;
  block[3] = &unk_1E7C94608;
  block[4] = self;
  v44 = v10;
  v45 = v12;
  v46 = v11;
  v48 = v7;
  v47 = a6;
  v37 = v11;
  v38 = v10;
  dispatch_async(dispatchQueue, block);

  v39 = *MEMORY[0x1E69E9840];
}

void __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if ([v2 state] == 1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke_3;
    v7[3] = &unk_1E7C945E0;
    v7[4] = *(a1 + 32);
    v3 = &v8;
    v4 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11 = *(a1 + 68);
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);
    [v2 sendEncryptedRequestID:@"_ftLg" request:v4 xpcID:0 options:0 responseHandler:v7];
    v5 = v9;
  }

  else
  {
    atomic_fetch_add((*(a1 + 40) + 16), 0xFFFFFFFF);
    v5 = [*(a1 + 40) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke_2;
    block[3] = &unk_1E7C945B8;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v3 = &v13;
    v13 = v6;
    v14 = v2 != 0;
    dispatch_async(v5, block);
  }
}

void __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(a1 + 48);
  v3 = RPErrorF();
  [v1 _largeFileSendTaskFailed:v2 error:v3];
}

void __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 40);
  v6 = a4;
  *(*(a1 + 32) + 304) += [v5 length];
  if (*(a1 + 60) == 1)
  {
    ++*(*(a1 + 32) + 320);
  }

  *(*(a1 + 32) + 336) = 1;
  atomic_fetch_add((*(a1 + 48) + 16), 0xFFFFFFFF);
  [*(a1 + 32) _largeFileSendTaskResponse:*(a1 + 48) error:v6 end:*(a1 + 60) xid:*(a1 + 56)];
}

- (void)_largeFileSendTaskFailed:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((v6[8] & 1) == 0)
  {
    v6[8] = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__RPFileTransferSession__largeFileSendTaskFailed_error___block_invoke;
    block[3] = &unk_1E7C93BC0;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_largeFileSendTaskResponse:(id)a3 error:(id)a4 end:(BOOL)a5 xid:(unsigned int)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (self->_invalidateCalled)
  {
    if (v11)
    {
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = RPErrorF();
      if (!v7)
      {
LABEL_10:
        v16 = [v10 queue];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __66__RPFileTransferSession__largeFileSendTaskResponse_error_end_xid___block_invoke;
        v23[3] = &unk_1E7C93BC0;
        v23[4] = self;
        v24 = v10;
        v25 = v12;
        v14 = v12;
        dispatch_async(v16, v23);

        v15 = v24;
LABEL_11:

        goto LABEL_12;
      }
    }
  }

  else if (!v7)
  {
    v13 = [v10 queue];
    if (!v12)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __66__RPFileTransferSession__largeFileSendTaskResponse_error_end_xid___block_invoke_3;
      v17[3] = &unk_1E7C94630;
      v17[4] = self;
      v18 = v10;
      v19 = a6;
      dispatch_async(v13, v17);

      goto LABEL_12;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__RPFileTransferSession__largeFileSendTaskResponse_error_end_xid___block_invoke_2;
    block[3] = &unk_1E7C93BC0;
    block[4] = self;
    v21 = v10;
    v22 = v12;
    v14 = v12;
    dispatch_async(v13, block);

    v15 = v21;
    goto LABEL_11;
  }

  [(RPFileTransferSession *)self _largeFileSendTaskEnd:v10 error:v12];

LABEL_12:
}

- (void)_largeFileSendTaskEnd:(id)a3 error:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = v24[3];
  if ((v7 & 0x80000000) == 0)
  {
    if (close(v7) && *__error())
    {
      __error();
    }

    v24[3] = -1;
  }

  if (([(NSMutableSet *)self->_largeFileSendTasks containsObject:?]& 1) == 0)
  {
    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_31;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_31;
      }

      v12 = self->_ucat;
    }

    [v24 taskID];
    LogPrintF();
    goto LABEL_31;
  }

  if (self->_invalidateCalled || [v6 code] != -71143)
  {
    v10 = self->_ucat->var0;
    if (v6)
    {
      if (v10 <= 90)
      {
        if (v10 == -1)
        {
          v13 = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_28;
          }

          v14 = self->_ucat;
        }

        v21 = [v24 taskID];
        v23 = v6;
        goto LABEL_22;
      }
    }

    else if (v10 <= 10)
    {
      if (v10 == -1)
      {
        v15 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }

        v19 = self->_ucat;
      }

      v21 = [v24 taskID];
LABEL_22:
      LogPrintF();
    }

LABEL_28:
    v16 = [v24 fileItem];
    [(RPFileTransferSession *)self _completeItemDirect:v16 error:v6];

    [(NSMutableSet *)self->_largeFileSendTasks removeObject:v24];
    [(RPFileTransferSession *)self _processFinish];
    v17 = [v24 queue];
    [(RPFileTransferSession *)self _ioQueueEnqueue:v17];

    [(RPFileTransferSession *)self _scheduleItems];
    goto LABEL_31;
  }

  v8 = self->_ucat->var0;
  if (v8 <= 90)
  {
    if (v8 != -1)
    {
LABEL_11:
      v22 = [v24 taskID];
      LogPrintF();
      [v24 setNeedsRetry:{1, v22, v6}];
      goto LABEL_31;
    }

    v18 = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v20 = self->_ucat;
      goto LABEL_11;
    }
  }

  [v24 setNeedsRetry:{1, v21, v23}];
LABEL_31:
}

- (void)_largeFileReceiveRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSDictionaryGetNSNumber();
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__3;
  v69 = __Block_byref_object_dispose__3;
  v70 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__RPFileTransferSession__largeFileReceiveRequest_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C94658;
  v64 = &v65;
  aBlock[4] = self;
  aBlock[5] = v8;
  v9 = v7;
  v63 = v9;
  v10 = _Block_copy(aBlock);
  if (!v8 || self->_fileWritesOutstanding >= 0x32)
  {
    v35 = RPErrorF();
    v14 = v66[5];
    v66[5] = v35;
    goto LABEL_42;
  }

  CFDataGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (v11)
  {
    v61 = 0;
    Int64 = CFDictionaryGetInt64();
    if (!Int64)
    {
      v36 = RPErrorF();
      v37 = v66[5];
      v66[5] = v36;

      v14 = 0;
      goto LABEL_41;
    }

    v13 = v66;
    obj = v66[5];
    v14 = [(RPFileTransferSession *)self _decompressData:v11 originalSize:Int64 error:&obj];
    objc_storeStrong(v13 + 5, obj);
    if (!v14)
    {
      goto LABEL_41;
    }
  }

  else
  {
    CFDataGetTypeID();
    v14 = CFDictionaryGetTypedValue();
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  largeFileReceiveTasks = self->_largeFileReceiveTasks;
  v51 = v11;
  if ((Int64Ranged & 1) == 0)
  {
    v17 = [(NSMutableDictionary *)largeFileReceiveTasks objectForKeyedSubscript:v8];
    if (!v17)
    {
      v38 = RPErrorF();
      v39 = v66[5];
      v66[5] = v38;

      goto LABEL_40;
    }

    if ((Int64Ranged & 2) != 0)
    {
      v18 = CFDictionaryGetCFDataOfLength();
      if (v18)
      {
        v19 = [v17 fileItem];
        [v19 setSha256HashData:v18];
      }
    }

    ++self->_fileWritesOutstanding;
    v20 = [v17 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__RPFileTransferSession__largeFileReceiveRequest_responseHandler___block_invoke_3;
    block[3] = &unk_1E7C94680;
    block[4] = self;
    block[5] = v17;
    v21 = v14;
    v53 = v21;
    v55 = Int64Ranged;
    v54 = v9;
    dispatch_async(v20, block);

    if ((Int64Ranged & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_39:
    v14 = v21;
LABEL_40:
    v11 = v51;
    goto LABEL_41;
  }

  v48 = v10;
  v49 = [(NSMutableDictionary *)largeFileReceiveTasks objectForKeyedSubscript:v8];
  if (v49)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 10)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        ucat = self->_ucat;
      }

      v42 = v8;
      LogPrintF();
    }

LABEL_21:
    [(RPFileTransferSession *)self _largeFileReceiveTaskInvalidate:v49, v42];
    [(NSMutableDictionary *)self->_largeFileReceiveTasks setObject:0 forKeyedSubscript:v8];
  }

  v47 = v9;
  v23 = objc_alloc_init(RPFileTransferItem);
  CFStringGetTypeID();
  v24 = CFDictionaryGetTypedValue();
  if (v24)
  {
    [(RPFileTransferItem *)v23 setFilename:v24];
  }

  v61 = 0;
  v25 = CFDictionaryGetInt64();
  if (!v61)
  {
    [(RPFileTransferItem *)v23 setFileSize:v25];
  }

  v45 = v25;
  CFDictionaryGetTypeID();
  v50 = CFDictionaryGetTypedValue();
  if (v50)
  {
    [(RPFileTransferItem *)v23 setMetadata:v50];
  }

  if ((Int64Ranged & 2) != 0)
  {
    v26 = CFDictionaryGetCFDataOfLength();
    if (v26)
    {
      [(RPFileTransferItem *)v23 setSha256HashData:v26];
    }
  }

  if ([(RPFileTransferSession *)self isResumable])
  {
    v27 = [(RPFileTransferSession *)self resumeState];
    v28 = [[RPFileTransferResumeStateItem alloc] initWithFileTransferRequestDict:v6];
    [v27 addActiveFile:v28];
    [v27 scheduleStateFileFlush];
  }

  v29 = self->_ucat->var0;
  if (v29 <= 10)
  {
    if (v29 != -1)
    {
LABEL_36:
      v43 = v45;
      v44 = [v50 count];
      v42 = v8;
      LogPrintF();
      goto LABEL_38;
    }

    v30 = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v40 = self->_ucat;
      goto LABEL_36;
    }
  }

LABEL_38:
  v46 = v24;
  v31 = objc_alloc_init(RPFileTransferLargeFileReceiveTask);
  [(RPFileTransferLargeFileReceiveTask *)v31 setFileFD:0xFFFFFFFFLL];
  [(RPFileTransferLargeFileReceiveTask *)v31 setFileItem:v23];
  v32 = [(RPFileTransferSession *)self _ioQueueDequeue];
  [(RPFileTransferLargeFileReceiveTask *)v31 setQueue:v32];

  -[RPFileTransferLargeFileReceiveTask setTaskID:](v31, "setTaskID:", [v8 unsignedLongLongValue]);
  [(NSMutableDictionary *)self->_largeFileReceiveTasks setObject:v31 forKeyedSubscript:v8];
  ++self->_fileWritesOutstanding;
  v33 = [(RPFileTransferLargeFileReceiveTask *)v31 queue];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __66__RPFileTransferSession__largeFileReceiveRequest_responseHandler___block_invoke_2;
  v56[3] = &unk_1E7C94680;
  v56[4] = self;
  v56[5] = v31;
  v21 = v14;
  v57 = v21;
  v59 = Int64Ranged;
  v34 = v23;
  v9 = v47;
  v58 = v47;
  dispatch_async(v33, v56);

  v10 = v48;
  if ((Int64Ranged & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_15:
  [(NSMutableDictionary *)self->_largeFileReceiveTasks setObject:0 forKeyedSubscript:v8, v42, v43, v44];
  v11 = v51;
LABEL_41:

LABEL_42:
  v10[2](v10);

  _Block_object_dispose(&v65, 8);
}

uint64_t __66__RPFileTransferSession__largeFileReceiveRequest_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 56);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = **(*(result + 32) + 152);
  if (v3 <= 90)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v1 = v2[7];
      if (!v4)
      {
        goto LABEL_7;
      }

      v7 = *(v2[4] + 152);
      v8 = *(*(v1 + 8) + 40);
    }

    v9 = v2[5];
    LogPrintF();
    v1 = v2[7];
  }

LABEL_7:
  v5 = *(*(v1 + 8) + 40);
  v6 = *(v2[6] + 16);

  return v6();
}

- (void)_resumeStateReceiveRequest:(id)a3 responseHandler:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([(RPFileTransferSession *)self isResumable])
  {
    v6 = [(RPFileTransferSession *)self resumeState];
    if ([v6 isEmpty])
    {
      v7 = 0;
    }

    else
    {
      v8 = [v6 dictionaryRepresentation];
      v10 = @"resumeState";
      v11[0] = v8;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }
  }

  else
  {
    v7 = 0;
  }

  (*(v5 + 2))(v5, v7, 0, 0);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_largeFileReceiveTaskRun:(id)a3 data:(id)a4 sendFlags:(unsigned int)a5 responseHandler:(id)a6
{
  v114 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ((a5 & 1) == 0)
  {
    goto LABEL_32;
  }

  v13 = [v10 fileItem];
  if ([v13 fileSize] < 1)
  {
    queue = 0;
  }

  else
  {
    v14 = [v10 fileItem];
    queue = [v14 fileSize];
  }

  CC_SHA256_Init((v10 + 12));
  if (![(RPFileTransferSession *)self isResumable])
  {
    goto LABEL_11;
  }

  v15 = [(RPFileTransferSession *)self resumeState];
  v16 = [v10 fileItem];
  v17 = [v16 filename];
  v18 = [v15 activeFileWithFileName:v17];

  if (!v18)
  {

LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v19 = [v18 fileOffset];

  if (v19)
  {
    v109 = 0;
    v20 = [(RPFileTransferSession *)self _largeFileReceiveTaskUpdateSHA256CtxFromFileItem:v10 length:v19 error:&v109];
    v21 = v109;
    v22 = v21;
    if (!v20)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke;
      block[3] = &unk_1E7C92F10;
      block[4] = self;
      v104 = v10;
      v105 = v22;
      v107 = v12;
      v106 = v11;
      v108 = a5;
      v40 = v22;
      dispatch_async(dispatchQueue, block);

      v41 = v104;
LABEL_52:

      goto LABEL_53;
    }

    v23 = 0;
    goto LABEL_13;
  }

LABEL_12:
  v23 = 1;
LABEL_13:
  v24 = *(v10 + 2);
  if ((v24 & 0x80000000) == 0)
  {
    if (close(v24) && *__error())
    {
      __error();
    }

    *(v10 + 2) = -1;
  }

  v25 = [v10 fileItem];
  v102 = 0;
  v26 = -[RPFileTransferSession _openWriteFileItem:size:truncate:error:](self, "_openWriteFileItem:size:truncate:error:", v25, [v11 length], v23, &v102);
  v27 = v102;

  if ((v26 & 0x80000000) != 0)
  {
    v31 = self->_dispatchQueue;
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_2;
    v96[3] = &unk_1E7C92F10;
    v96[4] = self;
    v32 = &v97;
    v97 = v10;
    v33 = &v98;
    v34 = v27;
    v98 = v34;
    v35 = &v100;
    v100 = v12;
    v36 = &v99;
    v99 = v11;
    v101 = a5;
    v37 = v96;
    v38 = v31;
LABEL_29:
    dispatch_async(v38, v37);

    goto LABEL_53;
  }

  [v10 setFileFD:v26];
  if ((v23 & 1) == 0)
  {
    v95 = v27;
    v28 = [(RPFileTransferSession *)self _truncateFD:v26 size:v19 error:&v95];
    v29 = v95;

    if (v28 && lseek(v26, v19, 0) == -1)
    {
      if (*__error())
      {
        v30 = *__error();
      }

      v42 = RPErrorF();

      v29 = v42;
    }

    if (v29)
    {
      queuea = self->_dispatchQueue;
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_3;
      v89[3] = &unk_1E7C92F10;
      v89[4] = self;
      v32 = &v90;
      v90 = v10;
      v33 = &v91;
      v34 = v29;
      v91 = v34;
      v35 = &v93;
      v93 = v12;
      v36 = &v92;
      v92 = v11;
      v94 = a5;
      v37 = v89;
      v38 = queuea;
      goto LABEL_29;
    }

    v27 = 0;
  }

  v43 = self->_dispatchQueue;
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_4;
  v88[3] = &unk_1E7C94590;
  v88[4] = self;
  v88[5] = v19;
  v88[6] = queue;
  dispatch_async(v43, v88);

LABEL_32:
  if ((*(v10 + 2) & 0x80000000) != 0)
  {
    v48 = RPErrorF();
    v49 = self->_dispatchQueue;
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_5;
    v82[3] = &unk_1E7C92F10;
    v82[4] = self;
    v83 = v10;
    v84 = v48;
    v86 = v12;
    v85 = v11;
    v87 = a5;
    dispatch_async(v49, v82);

    goto LABEL_53;
  }

  v44 = [v11 length];
  if (!v44)
  {
    goto LABEL_36;
  }

  v81 = 0;
  v45 = -[RPFileTransferSession _writeFD:buffer:size:error:](self, "_writeFD:buffer:size:error:", [v10 fileFD], objc_msgSend(v11, "bytes"), v44, &v81);
  v46 = v81;
  if (!v45)
  {
    v58 = self->_dispatchQueue;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_6;
    v75[3] = &unk_1E7C92F10;
    v75[4] = self;
    v76 = v10;
    v77 = v46;
    v79 = v12;
    v78 = v11;
    v80 = a5;
    v40 = v46;
    dispatch_async(v58, v75);

    v41 = v76;
    goto LABEL_52;
  }

  CC_SHA256_Update((v10 + 12), [v11 bytes], objc_msgSend(v11, "length"));

LABEL_36:
  if ((a5 & 2) != 0)
  {
    CC_SHA256_Final(md, (v10 + 12));
    v50 = [v10 fileItem];
    v51 = [v50 sha256HashData];

    if ([v51 length] != 32 || ((v52 = objc_msgSend(v51, "bytes"), *md == *v52) ? (v53 = v111 == v52[1]) : (v53 = 0), v53 ? (v54 = v112 == v52[2]) : (v54 = 0), v54 ? (v55 = v113 == v52[3]) : (v55 = 0), !v55))
    {
      v56 = RPErrorF();
      v57 = self->_dispatchQueue;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_7;
      v69[3] = &unk_1E7C92F10;
      v69[4] = self;
      v70 = v10;
      v71 = v56;
      v73 = v12;
      v72 = v11;
      v74 = a5;
      dispatch_async(v57, v69);

      goto LABEL_53;
    }
  }

  v47 = self->_dispatchQueue;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_8;
  v62[3] = &unk_1E7C946A8;
  v62[4] = self;
  v66 = v44;
  v67 = a5;
  v68 = (a5 & 2) >> 1;
  v63 = v10;
  v65 = v12;
  v64 = v11;
  dispatch_async(v47, v62);

LABEL_53:
  v59 = *MEMORY[0x1E69E9840];
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

void *__81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_4(void *result)
{
  *(result[4] + 304) += result[5];
  *(result[4] + 312) += result[6];
  ++*(result[4] + 328);
  return result;
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_8(uint64_t a1)
{
  *(*(a1 + 32) + 304) += *(a1 + 64);
  if ((*(a1 + 72) & 2) != 0)
  {
    ++*(*(a1 + 32) + 320);
  }

  *(*(a1 + 32) + 336) = 1;
  if (*(a1 + 76) == 1)
  {
    v2 = [*(a1 + 40) fileItem];
    if ([*(a1 + 32) isResumable])
    {
      v3 = [*(a1 + 32) resumeState];
      v4 = [*(a1 + 40) fileItem];
      v5 = [v4 filename];
      v6 = [v3 activeFileWithFileName:v5];

      if (v6)
      {
        v7 = [v6 fileOffset];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = [v2 fileSize];
    *(*(a1 + 32) + 536) += v9 - v7 + [v2 metadataSize];
    ++*(*(a1 + 32) + 544);
    *(*(a1 + 32) + 400) = mach_absolute_time();

    v8 = *(a1 + 76);
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:0 complete:v8 & 1 responseHandler:*(a1 + 56)];
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 72);
  v14 = *(a1 + 76);

  return [v10 _updateLargeFilesTaskResumeState:v11 data:v12 sendFlags:v13 error:0 complete:v14];
}

- (BOOL)_largeFileReceiveTaskUpdateSHA256CtxFromFileItem:(id)a3 length:(unint64_t)a4 error:(id *)a5
{
  v19 = a5;
  v21 = a3;
  v7 = [v21 fileItem];
  v25 = 0;
  v8 = [(RPFileTransferSession *)self _openReadFileItem:v7 error:&v25];
  v9 = v25;

  if ((v8 & 0x80000000) != 0)
  {
    if (v19)
    {
      v18 = v9;
      v12 = 0;
      *v19 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__RPFileTransferSession__largeFileReceiveTaskUpdateSHA256CtxFromFileItem_length_error___block_invoke;
    aBlock[3] = &__block_descriptor_36_e5_v8__0l;
    v24 = v8;
    v20 = _Block_copy(aBlock);
    v10 = 0;
    if (self->_largeFileBufferBytes >= a4)
    {
      largeFileBufferBytes = a4;
    }

    else
    {
      largeFileBufferBytes = self->_largeFileBufferBytes;
    }

    while (1)
    {
      v12 = a4 <= v10;
      if (a4 <= v10)
      {
        break;
      }

      v13 = objc_autoreleasePoolPush();
      if (largeFileBufferBytes >= a4 - v10)
      {
        largeFileBufferBytes = a4 - v10;
      }

      v22 = v9;
      v14 = [(RPFileTransferSession *)self _readFD:v8 size:largeFileBufferBytes error:&v22, v19];
      v16 = v22;

      if (v14)
      {
        CC_SHA256_Update((v21 + 12), [v14 bytes], objc_msgSend(v14, "length"));
        v10 += largeFileBufferBytes;
      }

      else if (v19)
      {
        v15 = v16;
        *v19 = v16;
      }

      objc_autoreleasePoolPop(v13);
      v9 = v16;
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    v16 = v9;
LABEL_15:
    v20[2](v20);

    v9 = v16;
  }

  return v12;
}

- (void)_largeFileReceiveTaskRespond:(id)a3 error:(id)a4 complete:(BOOL)a5 responseHandler:(id)a6
{
  v7 = a5;
  v23 = a3;
  v10 = a4;
  v11 = a6;
  v12 = v11;
  if (!v7)
  {
    if (!v10)
    {
      (*(v11 + 2))(v11, MEMORY[0x1E695E0F8], 0, 0);
      goto LABEL_15;
    }

    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_13;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v20 = self->_ucat;
    }

    v21 = [v23 taskID];
    v22 = v10;
    LogPrintF();
LABEL_13:
    (v12)[2](v12, 0, 0, v10);
    goto LABEL_14;
  }

  v13 = self->_ucat->var0;
  if (v13 <= 10)
  {
    v14 = v23;
    if (v13 == -1)
    {
      v16 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v19 = self->_ucat;
      v14 = v23;
    }

    v21 = [v14 taskID];
    LogPrintF();
  }

LABEL_11:
  v17 = [v23 fileItem];
  [(RPFileTransferSession *)self _processReceivedItem:v17 responseHandler:v12];

LABEL_14:
  [(RPFileTransferSession *)self _largeFileReceiveTaskInvalidate:v23, v21, v22];
LABEL_15:
  --self->_fileWritesOutstanding;
}

- (void)_largeFileReceiveTaskInvalidate:(id)a3
{
  v13 = a3;
  v4 = [v13 fileFD];
  if ((v4 & 0x80000000) == 0)
  {
    if (close(v4))
    {
      if (*__error())
      {
        v5 = *__error();
        if (!v5)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v5 = 4294960596;
      }

      var0 = self->_ucat->var0;
      if (var0 <= 90)
      {
        if (var0 != -1)
        {
LABEL_9:
          v11 = [v13 taskID];
          LogPrintF();
          [v13 setFileFD:{0xFFFFFFFFLL, v11, v5}];
          goto LABEL_12;
        }

        ucat = self->_ucat;
        if (_LogCategory_Initialize())
        {
          v9 = self->_ucat;
          goto LABEL_9;
        }
      }
    }

LABEL_11:
    [v13 setFileFD:{0xFFFFFFFFLL, v10, v12}];
  }

LABEL_12:
  v8 = [v13 queue];
  [(RPFileTransferSession *)self _ioQueueEnqueue:v8];
}

- (void)_updateLargeFilesTaskResumeState:(id)a3 data:(id)a4 sendFlags:(unsigned int)a5 error:(id)a6 complete:(BOOL)a7
{
  v8 = a5;
  v17 = a3;
  v11 = a4;
  v12 = a6;
  if ([(RPFileTransferSession *)self isResumable])
  {
    v13 = [(RPFileTransferSession *)self resumeState];
    v14 = [v17 fileItem];
    v15 = [v14 filename];
    v16 = [v13 activeFileWithFileName:v15];

    if (!v16)
    {
LABEL_13:

      goto LABEL_14;
    }

    if (v12)
    {
      if ([v12 code] == -71143 || objc_msgSend(v12, "code") == -6753 || objc_msgSend(v12, "code") == -6722)
      {
        [v16 setBytesWritten:{objc_msgSend(v16, "bytesWritten") + objc_msgSend(v11, "length")}];
LABEL_12:
        [v13 scheduleStateFileFlush];
        goto LABEL_13;
      }

      [v16 setError:v12];
    }

    else
    {
      [v16 setBytesWritten:{objc_msgSend(v16, "bytesWritten") + objc_msgSend(v11, "length")}];
      if ((v8 & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    [v13 removeActiveFile:v16];
    [v13 addFinishedFile:v16];
    goto LABEL_12;
  }

LABEL_14:
}

- (id)_compressData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 length];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (v16[3])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__RPFileTransferSession__compressData_error___block_invoke;
    aBlock[3] = &unk_1E7C946D0;
    aBlock[4] = &v15;
    v7 = _Block_copy(aBlock);
    v8 = compression_encode_buffer(v16[3], v6, [v5 bytes], v6, 0, COMPRESSION_LZ4);
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E695DEF0]);
      v10 = [v9 initWithBytesNoCopy:v16[3] length:v8 freeWhenDone:1];
      v11 = v10;
      if (v10)
      {
        v16[3] = 0;
        v12 = v10;
      }

      else if (a4)
      {
        *a4 = RPErrorF();
      }
    }

    else
    {
      v11 = 0;
      if (a4)
      {
        *a4 = 0;
      }
    }

    v7[2](v7);
  }

  else if (a4)
  {
    RPErrorF();
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v11;
}

void __45__RPFileTransferSession__compressData_error___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    free(v1);
  }
}

- (id)_decompressData:(id)a3 originalSize:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = malloc_type_malloc(a4, 0x100004077774924uLL);
  if (v16[3])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__RPFileTransferSession__decompressData_originalSize_error___block_invoke;
    aBlock[3] = &unk_1E7C946D0;
    aBlock[4] = &v15;
    v8 = _Block_copy(aBlock);
    if (compression_decode_buffer(v16[3], a4, [v7 bytes], objc_msgSend(v7, "length"), 0, COMPRESSION_LZ4) == a4)
    {
      v9 = objc_alloc(MEMORY[0x1E695DEF0]);
      v10 = [v9 initWithBytesNoCopy:v16[3] length:a4 freeWhenDone:1];
      v11 = v10;
      if (v10)
      {
        v16[3] = 0;
        v12 = v10;
      }

      else if (a5)
      {
        *a5 = RPErrorF();
      }
    }

    else if (a5)
    {
      RPErrorF();
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }

    v8[2](v8);
  }

  else if (a5)
  {
    RPErrorF();
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v11;
}

void __60__RPFileTransferSession__decompressData_originalSize_error___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    free(v1);
  }
}

- (id)_encodeAndCompressObject:(id)a3 originalSize:(unint64_t *)a4 error:(id *)a5
{
  v15 = 0;
  v8 = MEMORY[0x1B8C9E170](a3, 0, &v15);
  v9 = v8;
  if (!v8)
  {
    if (a5)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v10 = [v8 length];
  if (!v10)
  {
    if (a5)
    {
LABEL_12:
      RPErrorF();
      *a5 = v12 = 0;
      goto LABEL_6;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_6;
  }

  *a4 = v10;
  v11 = [(RPFileTransferSession *)self _compressData:v9 error:a5];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

LABEL_6:

  return v12;
}

- (id)_ioQueueDequeue
{
  v3 = [(NSMutableArray *)self->_ioQueues popFirstObject];
  if (!v3)
  {
    v4 = self->_metricTotalIOQueues + 1;
    self->_metricTotalIOQueues = v4;
    targetID = self->_targetID;
    v13 = v4;
    v5 = NSPrintF();
    v6 = [v5 UTF8String];

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_create(v6, v7);

    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_4:
        metricTotalIOQueues = self->_metricTotalIOQueues;
        LogPrintF();
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:

  return v3;
}

- (int)_openReadFileItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSString *)self->_receiveFileParentPath stringByStandardizingPath];
  if (v7)
  {
    v8 = [v6 filename];
    if (v8)
    {
      v9 = [v7 stringByAppendingPathComponent:v8];
      v10 = [v9 stringByStandardizingPath];

      if (([v10 hasPrefix:v7] & 1) == 0)
      {
        if (a4)
        {
          *a4 = RPErrorF();
        }

        v11 = -1;
        goto LABEL_9;
      }
    }

    else
    {
      v12 = atomic_fetch_add(&self->_fileIDLastReceive, 1uLL) + 1;
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%llu.rpftf", v7, v12];
    }

    v13 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v10 isDirectory:0];
    [v6 setItemURL:v13];

    v11 = -[RPFileTransferSession _openReadPath:error:](self, "_openReadPath:error:", [v10 fileSystemRepresentation], a4);
LABEL_9:

    goto LABEL_10;
  }

  if (a4)
  {
    *a4 = RPErrorF();
  }

  v11 = -1;
LABEL_10:

  return v11;
}

- (int)_openReadPath:(const char *)a3 error:(id *)a4
{
  v6 = open(a3, 0);
  if (v6 < 0 && (!*__error() || *__error()))
  {
    if (a4)
    {
      *a4 = RPErrorF();
    }

    return -1;
  }

  if (fcntl(v6, 48, 1))
  {
    if (*__error())
    {
      v7 = *__error();
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = 4294960596;
    }

    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_16;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      ucat = self->_ucat;
    }

    v13 = v7;
    LogPrintF();
  }

LABEL_16:
  if (fcntl(v6, 45, 1, v13) && (!*__error() || *__error()))
  {
    v9 = self->_ucat->var0;
    if (v9 <= 90)
    {
      if (v9 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return v6;
        }

        v12 = self->_ucat;
      }

      LogPrintF();
    }
  }

  return v6;
}

- (int)_openWritePath:(id)a3 size:(int64_t)a4 truncate:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = [v10 UTF8String];
  if (!v11)
  {
    if (!a6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = v11;
  if (v7)
  {
    v13 = open(v11, 1537, 384);
  }

  else
  {
    v13 = open(v11, 513, 384);
  }

  v14 = v13;
  if (v13 < 0)
  {
    if (*__error())
    {
      v15 = *__error();
      if (v15 == 2)
      {
        v16 = [v10 stringByDeletingLastPathComponent];
        v17 = [MEMORY[0x1E696AC08] defaultManager];
        v32 = 0;
        v18 = [v17 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v32];
        v19 = v32;

        if ((v18 & 1) == 0)
        {
          [RPFileTransferSession _openWritePath:a6 size:v16 truncate:v19 error:?];
          goto LABEL_13;
        }

        v14 = open(v12, 1537, 384);
        if (v14 < 0)
        {
          if (*__error())
          {
            v15 = *__error();
          }

          else
          {
            v15 = -6700;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      if (!v15)
      {
        goto LABEL_19;
      }
    }

    if (!a6)
    {
LABEL_13:
      v14 = -1;
      goto LABEL_45;
    }

LABEL_12:
    *a6 = RPErrorF();
    goto LABEL_13;
  }

LABEL_19:
  if (a4 < 1)
  {
    goto LABEL_45;
  }

  if (fcntl(v14, 48, 1))
  {
    if (*__error())
    {
      v20 = *__error();
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = 4294960596;
    }

    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_29;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

      ucat = self->_ucat;
    }

    v29 = v20;
    LogPrintF();
  }

LABEL_29:
  if (!fcntl(v14, 76, 1, v29))
  {
    goto LABEL_38;
  }

  if (!*__error())
  {
    v22 = 4294960596;
LABEL_34:
    v23 = self->_ucat->var0;
    if (v23 > 90)
    {
      goto LABEL_38;
    }

    if (v23 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_38;
      }

      v27 = self->_ucat;
    }

    v30 = v22;
    LogPrintF();
    goto LABEL_38;
  }

  v22 = *__error();
  if (v22)
  {
    goto LABEL_34;
  }

LABEL_38:
  v31[2] = a4;
  v31[3] = 0;
  v31[0] = 0x300000002;
  v31[1] = 0;
  if (fcntl(v14, 42, v31, v30) && (!*__error() || *__error()))
  {
    v24 = self->_ucat->var0;
    if (v24 <= 90)
    {
      if (v24 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_45;
        }

        v28 = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_45:

  return v14;
}

void __44__RPFileTransferSession__readFD_size_error___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    free(v1);
  }
}

- (BOOL)_readFD:(int)a3 buffer:(char *)a4 size:(unint64_t)a5 error:(id *)a6
{
  if (!a5)
  {
    return 1;
  }

  v7 = a5;
  while (1)
  {
    v10 = read(a3, a4, v7);
    if (v10 >= 1)
    {
      a4 += v10;
      v7 -= v10;
      goto LABEL_8;
    }

    if (!v10)
    {
      if (a6)
      {
        goto LABEL_14;
      }

      return 0;
    }

    if (!*__error() || *__error() != 4)
    {
      break;
    }

LABEL_8:
    if (!v7)
    {
      return 1;
    }
  }

  if (a6)
  {
LABEL_14:
    v12 = RPErrorF();
    v13 = v12;
    result = 0;
    *a6 = v12;
    return result;
  }

  return 0;
}

- (BOOL)_writeFD:(int)a3 buffer:(const char *)a4 size:(unint64_t)a5 error:(id *)a6
{
  if (!a5)
  {
    return 1;
  }

  v7 = a5;
  while (1)
  {
    v10 = write(a3, a4, v7);
    if (v10 < 1)
    {
      break;
    }

    a4 += v10;
    v7 -= v10;
LABEL_7:
    if (!v7)
    {
      return 1;
    }
  }

  if (*__error() && *__error() == 4)
  {
    goto LABEL_7;
  }

  if (!a6)
  {
    return 0;
  }

  v12 = RPErrorF();
  v13 = v12;
  result = 0;
  *a6 = v12;
  return result;
}

- (BOOL)_truncateFD:(int)a3 size:(int64_t)a4 error:(id *)a5
{
  v6 = ftruncate(a3, a4);
  if (v6)
  {
    if (!*__error())
    {
      if (!a5)
      {
        return v6 == 0;
      }

      goto LABEL_4;
    }

    v7 = *__error();
    if (a5)
    {
LABEL_4:
      *a5 = RPErrorF();
    }
  }

  return v6 == 0;
}

- (id)_modTimeForFileWithPath:(const char *)a3 error:(id *)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    memset(&v11, 0, sizeof(v11));
    if (!stat(a3, &v11) || *__error() && !*__error())
    {
      tv_nsec = v11.st_mtimespec.tv_nsec;
      v12[0] = @"_fMt";
      v6 = [MEMORY[0x1E696AD98] numberWithLong:v11.st_mtimespec.tv_sec];
      v12[1] = @"_fMtNs";
      v13[0] = v6;
      v7 = [MEMORY[0x1E696AD98] numberWithLong:tv_nsec];
      v13[1] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

      goto LABEL_6;
    }

    if (a4)
    {
      goto LABEL_10;
    }
  }

  else if (a4)
  {
LABEL_10:
    RPErrorF();
    *a4 = v8 = 0;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_reportProgressControlState
{
  controlState = self->_controlState;
  v4 = [(RPConnection *)self->_controlCnx state];
  if (v4 == controlState)
  {
    return;
  }

  v5 = v4;
  OUTLINED_FUNCTION_1_2();
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      ucat = self->_ucat;
    }

    v10 = "?";
    if (controlState == 1)
    {
      v11 = "Ready";
    }

    else
    {
      v11 = "?";
    }

    if (!controlState)
    {
      v11 = "Unknown";
    }

    if (v5 == 1)
    {
      v10 = "Ready";
    }

    if (!v5)
    {
      v10 = "Unknown";
    }

    v34 = v11;
    v36 = v10;
    LogPrintF();
  }

LABEL_16:
  self->_controlState = v5;
  v12 = [(RPConnection *)self->_controlCnx linkType:v34];
  v13 = mach_absolute_time();
  metricTicksConnectStart = self->_metricTicksConnectStart;
  if (metricTicksConnectStart)
  {
    self->_metricTicksConnected += v13 - metricTicksConnectStart;
  }

  if (v5 == 1)
  {
    v15 = 476;
    if (v12 == 8)
    {
      v15 = 480;
    }

    if (v12 == 4)
    {
      v15 = 472;
    }

    v16 = *(&self->super.isa + v15);
    self->_metricTicksConnectStart = v13;
    *(&self->super.isa + v15) = v16 + 1;
    if (self->_prefCompress)
    {
      v17 = [(RPConnection *)self->_controlCnx appInfoPeer];
      Int64 = CFDictionaryGetInt64();

      v19 = (Int64 >> 8) & 1;
    }

    else
    {
      LODWORD(v19) = 0;
    }

    if (self->_compressionEnabled == v19)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_1_2();
    if (!(v8 ^ v9 | v7))
    {
LABEL_38:
      self->_compressionEnabled = v19;
LABEL_39:
      v20 = 10;
      goto LABEL_40;
    }

    if (v21 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_38;
      }

      v31 = self->_ucat;
    }

    v22 = "yes";
    if (v19)
    {
      v23 = "no";
    }

    else
    {
      v23 = "yes";
    }

    if (!v19)
    {
      v22 = "no";
    }

    v35 = v23;
    v37 = v22;
    LogPrintF();
    goto LABEL_38;
  }

  ++self->_metricDisconnects;
  self->_metricTicksConnectStart = 0;
  v20 = 11;
LABEL_40:
  [(RPFileTransferSession *)self _reportProgressType:v20, v35, v37];
  [(RPFileTransferSession *)self _updateWiFi];
  if ((self->_flags & 0x80) != 0 && !self->_lockedInterface)
  {
    if (v12 != 8)
    {
      if (v12 != 4)
      {
LABEL_57:
        self->_lockedInterface = 1;
        return;
      }

      OUTLINED_FUNCTION_1_2();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_53;
      }

      if (v24 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_53;
        }

        v32 = self->_ucat;
      }

      LogPrintF();
LABEL_53:
      self->_flags |= 0x60u;
      bonjourBrowser = self->_bonjourBrowser;
      v27 = [(CUBonjourBrowser *)bonjourBrowser browseFlags]| 0x60000000000000;
      v28 = bonjourBrowser;
LABEL_56:
      [(CUBonjourBrowser *)v28 setBrowseFlags:v27];
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_1_2();
    if (v8 ^ v9 | v7)
    {
      if (v25 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_55;
        }

        v33 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_55:
    self->_flags |= 0x30u;
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setAdvertiseFlags:[(CUBonjourAdvertiser *)self->_bonjourAdvertiser advertiseFlags]& 0xFBFFFFFFFFFFFFFFLL];
    v29 = [(CUBonjourBrowser *)self->_bonjourBrowser browseFlags]& 0xFBFFFFFFFFFFFFFFLL;
    v28 = self->_bonjourBrowser;
    v27 = v29 | 0x30000000000000;
    goto LABEL_56;
  }
}

- (void)_debugSetup
{
  if (IsAppleInternalBuild())
  {
    if (self->_debugNotifyToken == -1)
    {
      dispatchQueue = self->_dispatchQueue;
      OUTLINED_FUNCTION_0_4();
      v14 = 3221225472;
      v15 = __36__RPFileTransferSession__debugSetup__block_invoke;
      v16 = &unk_1E7C942A8;
      v17 = self;
      notify_register_dispatch("com.apple.rapport.ftdebug", v4, v5, handler);
      debugNotifyToken = self->_debugNotifyToken;
      state64 = 0;
      notify_get_state(debugNotifyToken, &state64);
      debugFlags = state64;
      self->_debugFlags = state64;
      if (debugFlags)
      {
        var0 = self->_ucat->var0;
        if (var0 <= 30)
        {
          if (var0 != -1)
          {
LABEL_6:
            v11 = debugFlags;
            LogPrintF();
            [(RPFileTransferSession *)self _debugUpdate:v11];
            return;
          }

          if (_LogCategory_Initialize())
          {
            ucat = self->_ucat;
            debugFlags = self->_debugFlags;
            goto LABEL_6;
          }
        }

        [(RPFileTransferSession *)self _debugUpdate:v10];
      }
    }
  }
}

- (void)_controlCnxStartIfNeeded
{
  if (!self->_controlCnx)
  {
    v3 = self->_bonjourDevice;
    if (!v3)
    {
LABEL_12:

      return;
    }

    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      v15 = v3;
      LogPrintF();
    }

LABEL_7:
    controlRetryTimer = self->_controlRetryTimer;
    if (controlRetryTimer)
    {
      v6 = controlRetryTimer;
      dispatch_source_cancel(v6);
      v7 = self->_controlRetryTimer;
      self->_controlRetryTimer = 0;
    }

    v8 = objc_alloc_init(RPConnection);
    controlCnx = self->_controlCnx;
    self->_controlCnx = v8;

    if (self->_prefCompress)
    {
      [(RPConnection *)v8 setAppInfoSelf:&unk_1F2EEC968];
    }

    [(RPConnection *)v8 setBonjourPeerDevice:v3, v15];
    [(RPConnection *)v8 setControlFlags:[(RPConnection *)v8 controlFlags]| 0x60000200];
    [(RPConnection *)v8 setDispatchQueue:self->_dispatchQueue];
    [(RPConnection *)v8 setForcedPeerIdentity:self->_peerIdentity];
    [(RPConnection *)v8 setForcedSelfIdentity:self->_selfIdentity];
    [(RPConnection *)v8 setKeepAliveSeconds:30];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    targetID = self->_targetID;
    v12 = self->_cnxIDLast + 1;
    self->_cnxIDLast = v12;
    v13 = [v10 initWithFormat:@"RPFileCnx-%@-Out-%u", targetID, v12];
    [(RPConnection *)v8 setLabel:v13];

    [(RPConnection *)v8 setPeerIdentifier:self->_targetID];
    [(RPConnection *)v8 setPresent:1];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke;
    v24[3] = &unk_1E7C92D80;
    v24[4] = v8;
    v24[5] = self;
    [(RPConnection *)v8 setInvalidationHandler:v24];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_2;
    v23[3] = &unk_1E7C94348;
    v23[4] = v8;
    v23[5] = self;
    [(RPConnection *)v8 setReceivedEventHandler:v23];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_3;
    v22[3] = &unk_1E7C94370;
    v22[4] = v8;
    v22[5] = self;
    [(RPConnection *)v8 setReceivedRequestHandler:v22];
    OUTLINED_FUNCTION_0_4();
    v17 = 3221225472;
    v18 = __49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_4;
    v19 = &unk_1E7C94398;
    v20 = v8;
    v21 = self;
    [(RPConnection *)v8 setStateChangedHandler:v16];
    [(RPConnection *)v8 activate];

    goto LABEL_12;
  }
}

- (id)_decompressAndDecodeData:(id)a3 originalSize:(unint64_t)a4 error:(id *)a5
{
  v6 = [(RPFileTransferSession *)self _decompressData:a3 originalSize:a4 error:?];
  if (v6)
  {
    v7 = OPACKDecodeData();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else if (a5)
    {
      *a5 = RPErrorF();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_readPath:(const char *)a3 size:(unint64_t)a4 error:(id *)a5
{
  if (a4)
  {
    v8 = [(RPFileTransferSession *)self _openReadPath:a3 error:a5];
    if ((v8 & 0x80000000) != 0)
    {
      v10 = 0;
    }

    else
    {
      v9 = v8;
      v10 = [(RPFileTransferSession *)self _readFD:v8 size:a4 error:a5];
      close(v9);
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DEF0] data];
  }

  return v10;
}

- (void)_activateAndReturnError:(void *)a1 .cold.1(void *a1, void *a2)
{
  if (a1)
  {
    *a1 = RPNestedErrorF();
  }
}

- (int)_receivedEventID:(uint64_t)a1 event:options:.cold.1(uint64_t a1)
{
  result = *(a1 + 152);
  if (*result <= 60)
  {
    if (*result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = *(a1 + 152);
      return LogPrintF();
    }
  }

  return result;
}

- (void)_activateTargetAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = RPNestedErrorF();
    *v1 = result;
  }

  return result;
}

- (void)_openWritePath:(void *)a3 size:truncate:error:.cold.1(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    *a1 = RPNestedErrorF();
  }
}

@end