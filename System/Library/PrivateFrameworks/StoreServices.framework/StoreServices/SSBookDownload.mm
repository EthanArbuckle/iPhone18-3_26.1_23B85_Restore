@interface SSBookDownload
- (BOOL)addAsset:(id)asset forType:(id)type;
- (BOOL)isBackgroundNetworkingUserInitiated;
- (BOOL)isEligibleForRestore:(id *)restore;
- (BOOL)removeAsset:(id)asset;
- (SSBookDownload)initWithDownloadStatus:(id)status;
- (double)estimatedSecondsRemaining;
- (double)percentComplete;
- (id)assetsForType:(id)type;
- (id)backgroundNetworkingJobGroupName;
- (id)downloadPhaseIdentifier;
- (id)downloadPolicy;
- (id)metadata;
- (id)networkConstraints;
- (id)status;
- (id)valueForProperty:(id)property;
- (int64_t)bytesDownloaded;
- (int64_t)bytesTotal;
- (int64_t)downloadSizeLimit;
- (void)pause;
- (void)prioritizeAboveDownload:(id)download completionBlock:(id)block;
- (void)restart;
- (void)resume;
- (void)setBackgroundNetworkingJobGroupName:(id)name;
- (void)setBackgroundNetworkingUserInitiated:(BOOL)initiated;
- (void)setDownloadHandler:(id)handler completionBlock:(id)block;
- (void)setDownloadPolicy:(id)policy;
- (void)setMetadata:(id)metadata;
- (void)setNetworkConstraints:(id)constraints;
- (void)setStatus:(id)status;
- (void)setValuesWithStoreDownloadMetadata:(id)metadata;
@end

@implementation SSBookDownload

- (SSBookDownload)initWithDownloadStatus:(id)status
{
  v32 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  downloadID = [statusCopy downloadID];
  numberFromHexDigits = [downloadID numberFromHexDigits];
  longLongValue = [numberFromHexDigits longLongValue];

  v29.receiver = self;
  v29.super_class = SSBookDownload;
  v8 = [(SSEntity *)&v29 _initWithPersistentIdentifier:longLongValue];
  if (v8)
  {
    v9 = [statusCopy copy];
    downloadStatus = v8->_downloadStatus;
    v8->_downloadStatus = v9;

    v11 = SSVBookAssetDaemonFramework();
    v12 = SSVWeakLinkedClassForString(&cfstr_Bldownloadqueu.isa, v11);
    if (v12)
    {
      sharedInstance = [v12 sharedInstance];
      downloadQueue = v8->_downloadQueue;
      v8->_downloadQueue = sharedInstance;
LABEL_15:

      goto LABEL_16;
    }

    downloadQueue = +[SSLogConfig sharedStoreServicesConfig];
    if (!downloadQueue)
    {
      downloadQueue = +[SSLogConfig sharedConfig];
    }

    shouldLog = [downloadQueue shouldLog];
    if ([downloadQueue shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [downloadQueue OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v30 = 138543362;
      v31 = v18;
      v19 = v18;
      LODWORD(v28) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v30, v28}];
      free(v20);
      SSFileLog(downloadQueue, @"%@", v21, v22, v23, v24, v25, v26, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:

  return v8;
}

- (id)downloadPhaseIdentifier
{
  downloadPhaseIdentifierOverride = self->_downloadPhaseIdentifierOverride;
  if (!downloadPhaseIdentifierOverride)
  {
    downloadPhase = [(SSBookDownloadStatus *)self->_downloadStatus downloadPhase];
    v4 = 0;
    if (downloadPhase <= 3)
    {
      if (downloadPhase > 1)
      {
        if (downloadPhase == 2)
        {
          v5 = SSDownloadPhaseDownloading;
        }

        else
        {
          v5 = SSDownloadPhasePaused;
        }
      }

      else if (downloadPhase)
      {
        if (downloadPhase != 1)
        {
          goto LABEL_23;
        }

        v5 = SSDownloadPhaseWaiting;
      }

      else
      {
        v5 = SSDownloadPhasePreflight;
      }
    }

    else if (downloadPhase <= 5)
    {
      if (downloadPhase == 4)
      {
        v5 = SSDownloadPhaseCanceled;
      }

      else
      {
        v5 = &SSDownloadPhaseFailed;
      }
    }

    else
    {
      switch(downloadPhase)
      {
        case 6:
          v5 = SSDownloadPhaseProcessing;
          break;
        case 7:
          v5 = SSDownloadPhaseInstalling;
          break;
        case 8:
          v5 = SSDownloadPhaseFinished;
          break;
        default:
          goto LABEL_23;
      }
    }

    downloadPhaseIdentifierOverride = *v5;
  }

  v4 = downloadPhaseIdentifierOverride;
LABEL_23:

  return v4;
}

- (double)percentComplete
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = objc_opt_class();
  downloadStatus = self->_downloadStatus;
  v9 = v7;
  percentComplete = [(SSBookDownloadStatus *)downloadStatus percentComplete];
  [percentComplete doubleValue];
  v24 = 138543618;
  v25 = v7;
  v26 = 2048;
  v27 = v11;
  LODWORD(v23) = 22;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v24, v23}];
    free(v12);
    SSFileLog(v3, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
LABEL_11:
  }

  percentComplete2 = [(SSBookDownloadStatus *)self->_downloadStatus percentComplete];
  [percentComplete2 doubleValue];
  v21 = v20;

  return v21;
}

- (void)pause
{
  downloadQueue = self->_downloadQueue;
  downloadID = [(SSBookDownload *)self downloadID];
  [(SSBookDownloadQueue *)downloadQueue pauseDownloadWithID:downloadID withCompletion:0];
}

- (void)resume
{
  downloadQueue = self->_downloadQueue;
  downloadID = [(SSBookDownload *)self downloadID];
  [(SSBookDownloadQueue *)downloadQueue resumeDownloadWithID:downloadID withCompletion:0];
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"7"])
  {
    storeID = [(SSBookDownloadStatus *)self->_downloadStatus storeID];
LABEL_10:
    v8 = storeID;
    goto LABEL_11;
  }

  if ([propertyCopy isEqualToString:@"Q"])
  {
    storeID = [(SSBookDownloadStatus *)self->_downloadStatus downloadID];
    goto LABEL_10;
  }

  if ([propertyCopy isEqualToString:@"V"])
  {
    v6 = MEMORY[0x1E696AD98];
    isRestore = [(SSBookDownloadStatus *)self->_downloadStatus isRestore];
LABEL_9:
    storeID = [v6 numberWithBool:isRestore];
    goto LABEL_10;
  }

  if ([propertyCopy isEqualToString:@"M"])
  {
    v6 = MEMORY[0x1E696AD98];
    isRestore = [(SSBookDownloadStatus *)self->_downloadStatus isPurchase];
    goto LABEL_9;
  }

  if ([propertyCopy isEqualToString:@"c"])
  {
    v8 = @"com.apple.bookassetd";
  }

  else
  {
    if ([propertyCopy isEqualToString:@"1"])
    {
      storeID = @"ebook";
      goto LABEL_10;
    }

    if (([propertyCopy isEqualToString:@"11"] & 1) == 0)
    {
      if ([propertyCopy isEqualToString:@"d"])
      {
        storeID = [(SSBookDownloadStatus *)self->_downloadStatus artistName];
        goto LABEL_10;
      }

      if ([propertyCopy isEqualToString:@"i"])
      {
        storeID = [(SSBookDownloadStatus *)self->_downloadStatus genre];
        goto LABEL_10;
      }

      if ([propertyCopy isEqualToString:@"2"])
      {
        storeID = [(SSBookDownloadStatus *)self->_downloadStatus title];
        goto LABEL_10;
      }

      if ([propertyCopy isEqualToString:@"8"])
      {
        storeID = [(SSBookDownloadStatus *)self->_downloadStatus purchaseDate];
        goto LABEL_10;
      }

      if ([propertyCopy isEqualToString:@"t"])
      {
        v6 = MEMORY[0x1E696AD98];
        isRestore = [(SSBookDownloadStatus *)self->_downloadStatus isSample];
        goto LABEL_9;
      }
    }

    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (int64_t)bytesDownloaded
{
  transferBytesWritten = [(SSBookDownloadStatus *)self->_downloadStatus transferBytesWritten];
  longLongValue = [transferBytesWritten longLongValue];

  return longLongValue;
}

- (int64_t)bytesTotal
{
  transferBytesExpected = [(SSBookDownloadStatus *)self->_downloadStatus transferBytesExpected];
  longLongValue = [transferBytesExpected longLongValue];

  return longLongValue;
}

- (double)estimatedSecondsRemaining
{
  estimatedTimeRemaining = [(SSBookDownloadStatus *)self->_downloadStatus estimatedTimeRemaining];
  [estimatedTimeRemaining doubleValue];
  v4 = v3;

  return v4;
}

- (id)metadata
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, oSLogObject);
LABEL_11:
  }

  return 0;
}

- (id)networkConstraints
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, oSLogObject);
LABEL_11:
  }

  return 0;
}

- (void)setMetadata:(id)metadata
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }
}

- (void)setNetworkConstraints:(id)constraints
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }
}

- (void)setStatus:(id)status
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }
}

- (id)status
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, oSLogObject);
LABEL_11:
  }

  return 0;
}

- (id)assetsForType:(id)type
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v18 = v17 = 138543362;
  LODWORD(v16) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v17, v16}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }

  return 0;
}

- (BOOL)addAsset:(id)asset forType:(id)type
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedStoreServicesConfig:asset];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v19 = v18 = 138543362;
  LODWORD(v17) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v18, v17}];
    free(v9);
    SSFileLog(v5, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_11:
  }

  return 0;
}

- (id)backgroundNetworkingJobGroupName
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, oSLogObject);
LABEL_11:
  }

  return 0;
}

- (id)downloadPolicy
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, oSLogObject);
LABEL_11:
  }

  return 0;
}

- (int64_t)downloadSizeLimit
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, oSLogObject);
LABEL_11:
  }

  return 0;
}

- (BOOL)isBackgroundNetworkingUserInitiated
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, oSLogObject);
LABEL_11:
  }

  return 0;
}

- (BOOL)isEligibleForRestore:(id *)restore
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v18 = v17 = 138543362;
  LODWORD(v16) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v17, v16}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }

  return 0;
}

- (void)prioritizeAboveDownload:(id)download completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedStoreServicesConfig:download];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v18 = v17 = 138543362;
  LODWORD(v16) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v17, v16}];
    free(v9);
    SSFileLog(v5, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_11:
  }
}

- (BOOL)removeAsset:(id)asset
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v18 = v17 = 138543362;
  LODWORD(v16) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v17, v16}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }

  return 0;
}

- (void)restart
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v16 = v15 = 138543362;
  LODWORD(v14) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v15, v14}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, oSLogObject);
LABEL_11:
  }
}

- (void)setBackgroundNetworkingJobGroupName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }
}

- (void)setBackgroundNetworkingUserInitiated:(BOOL)initiated
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }
}

- (void)setDownloadHandler:(id)handler completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedStoreServicesConfig:handler];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v18 = v17 = 138543362;
  LODWORD(v16) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v17, v16}];
    free(v9);
    SSFileLog(v5, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_11:
  }
}

- (void)setDownloadPolicy:(id)policy
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }
}

- (void)setValuesWithStoreDownloadMetadata:(id)metadata
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  NSStringFromSelector(a2);
  v17 = v16 = 138543362;
  LODWORD(v15) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_11:
  }
}

@end