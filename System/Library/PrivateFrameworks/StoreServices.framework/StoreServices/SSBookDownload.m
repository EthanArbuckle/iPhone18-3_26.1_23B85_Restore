@interface SSBookDownload
- (BOOL)addAsset:(id)a3 forType:(id)a4;
- (BOOL)isBackgroundNetworkingUserInitiated;
- (BOOL)isEligibleForRestore:(id *)a3;
- (BOOL)removeAsset:(id)a3;
- (SSBookDownload)initWithDownloadStatus:(id)a3;
- (double)estimatedSecondsRemaining;
- (double)percentComplete;
- (id)assetsForType:(id)a3;
- (id)backgroundNetworkingJobGroupName;
- (id)downloadPhaseIdentifier;
- (id)downloadPolicy;
- (id)metadata;
- (id)networkConstraints;
- (id)status;
- (id)valueForProperty:(id)a3;
- (int64_t)bytesDownloaded;
- (int64_t)bytesTotal;
- (int64_t)downloadSizeLimit;
- (void)pause;
- (void)prioritizeAboveDownload:(id)a3 completionBlock:(id)a4;
- (void)restart;
- (void)resume;
- (void)setBackgroundNetworkingJobGroupName:(id)a3;
- (void)setBackgroundNetworkingUserInitiated:(BOOL)a3;
- (void)setDownloadHandler:(id)a3 completionBlock:(id)a4;
- (void)setDownloadPolicy:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setNetworkConstraints:(id)a3;
- (void)setStatus:(id)a3;
- (void)setValuesWithStoreDownloadMetadata:(id)a3;
@end

@implementation SSBookDownload

- (SSBookDownload)initWithDownloadStatus:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 downloadID];
  v6 = [v5 numberFromHexDigits];
  v7 = [v6 longLongValue];

  v29.receiver = self;
  v29.super_class = SSBookDownload;
  v8 = [(SSEntity *)&v29 _initWithPersistentIdentifier:v7];
  if (v8)
  {
    v9 = [v4 copy];
    downloadStatus = v8->_downloadStatus;
    v8->_downloadStatus = v9;

    v11 = SSVBookAssetDaemonFramework();
    v12 = SSVWeakLinkedClassForString(&cfstr_Bldownloadqueu.isa, v11);
    if (v12)
    {
      v13 = [v12 sharedInstance];
      downloadQueue = v8->_downloadQueue;
      v8->_downloadQueue = v13;
LABEL_15:

      goto LABEL_16;
    }

    downloadQueue = +[SSLogConfig sharedStoreServicesConfig];
    if (!downloadQueue)
    {
      downloadQueue = +[SSLogConfig sharedConfig];
    }

    v15 = [downloadQueue shouldLog];
    if ([downloadQueue shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [downloadQueue OSLogObject];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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

      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v30, v28}];
      free(v20);
      SSFileLog(downloadQueue, @"%@", v21, v22, v23, v24, v25, v26, v17);
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
    v3 = [(SSBookDownloadStatus *)self->_downloadStatus downloadPhase];
    v4 = 0;
    if (v3 <= 3)
    {
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          v5 = SSDownloadPhaseDownloading;
        }

        else
        {
          v5 = SSDownloadPhasePaused;
        }
      }

      else if (v3)
      {
        if (v3 != 1)
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

    else if (v3 <= 5)
    {
      if (v3 == 4)
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
      switch(v3)
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

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
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
  v10 = [(SSBookDownloadStatus *)downloadStatus percentComplete];
  [v10 doubleValue];
  v24 = 138543618;
  v25 = v7;
  v26 = 2048;
  v27 = v11;
  LODWORD(v23) = 22;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v24, v23}];
    free(v12);
    SSFileLog(v3, @"%@", v13, v14, v15, v16, v17, v18, v6);
LABEL_11:
  }

  v19 = [(SSBookDownloadStatus *)self->_downloadStatus percentComplete];
  [v19 doubleValue];
  v21 = v20;

  return v21;
}

- (void)pause
{
  downloadQueue = self->_downloadQueue;
  v3 = [(SSBookDownload *)self downloadID];
  [(SSBookDownloadQueue *)downloadQueue pauseDownloadWithID:v3 withCompletion:0];
}

- (void)resume
{
  downloadQueue = self->_downloadQueue;
  v3 = [(SSBookDownload *)self downloadID];
  [(SSBookDownloadQueue *)downloadQueue resumeDownloadWithID:v3 withCompletion:0];
}

- (id)valueForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"7"])
  {
    v5 = [(SSBookDownloadStatus *)self->_downloadStatus storeID];
LABEL_10:
    v8 = v5;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"Q"])
  {
    v5 = [(SSBookDownloadStatus *)self->_downloadStatus downloadID];
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"V"])
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(SSBookDownloadStatus *)self->_downloadStatus isRestore];
LABEL_9:
    v5 = [v6 numberWithBool:v7];
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"M"])
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(SSBookDownloadStatus *)self->_downloadStatus isPurchase];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"c"])
  {
    v8 = @"com.apple.bookassetd";
  }

  else
  {
    if ([v4 isEqualToString:@"1"])
    {
      v5 = @"ebook";
      goto LABEL_10;
    }

    if (([v4 isEqualToString:@"11"] & 1) == 0)
    {
      if ([v4 isEqualToString:@"d"])
      {
        v5 = [(SSBookDownloadStatus *)self->_downloadStatus artistName];
        goto LABEL_10;
      }

      if ([v4 isEqualToString:@"i"])
      {
        v5 = [(SSBookDownloadStatus *)self->_downloadStatus genre];
        goto LABEL_10;
      }

      if ([v4 isEqualToString:@"2"])
      {
        v5 = [(SSBookDownloadStatus *)self->_downloadStatus title];
        goto LABEL_10;
      }

      if ([v4 isEqualToString:@"8"])
      {
        v5 = [(SSBookDownloadStatus *)self->_downloadStatus purchaseDate];
        goto LABEL_10;
      }

      if ([v4 isEqualToString:@"t"])
      {
        v6 = MEMORY[0x1E696AD98];
        v7 = [(SSBookDownloadStatus *)self->_downloadStatus isSample];
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
  v2 = [(SSBookDownloadStatus *)self->_downloadStatus transferBytesWritten];
  v3 = [v2 longLongValue];

  return v3;
}

- (int64_t)bytesTotal
{
  v2 = [(SSBookDownloadStatus *)self->_downloadStatus transferBytesExpected];
  v3 = [v2 longLongValue];

  return v3;
}

- (double)estimatedSecondsRemaining
{
  v2 = [(SSBookDownloadStatus *)self->_downloadStatus estimatedTimeRemaining];
  [v2 doubleValue];
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

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, v6);
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

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, v6);
LABEL_11:
  }

  return 0;
}

- (void)setMetadata:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, v7);
LABEL_11:
  }
}

- (void)setNetworkConstraints:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, v7);
LABEL_11:
  }
}

- (void)setStatus:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, v7);
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

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, v6);
LABEL_11:
  }

  return 0;
}

- (id)assetsForType:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v17, v16}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, v7);
LABEL_11:
  }

  return 0;
}

- (BOOL)addAsset:(id)a3 forType:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedStoreServicesConfig:a3];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v18, v17}];
    free(v9);
    SSFileLog(v5, @"%@", v10, v11, v12, v13, v14, v15, v8);
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

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, v6);
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

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, v6);
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

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, v6);
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

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, v6);
LABEL_11:
  }

  return 0;
}

- (BOOL)isEligibleForRestore:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v17, v16}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, v7);
LABEL_11:
  }

  return 0;
}

- (void)prioritizeAboveDownload:(id)a3 completionBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedStoreServicesConfig:a3];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v17, v16}];
    free(v9);
    SSFileLog(v5, @"%@", v10, v11, v12, v13, v14, v15, v8);
LABEL_11:
  }
}

- (BOOL)removeAsset:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v17, v16}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, v7);
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

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v15, v14}];
    free(v7);
    SSFileLog(v3, @"%@", v8, v9, v10, v11, v12, v13, v6);
LABEL_11:
  }
}

- (void)setBackgroundNetworkingJobGroupName:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, v7);
LABEL_11:
  }
}

- (void)setBackgroundNetworkingUserInitiated:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, v7);
LABEL_11:
  }
}

- (void)setDownloadHandler:(id)a3 completionBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedStoreServicesConfig:a3];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v17, v16}];
    free(v9);
    SSFileLog(v5, @"%@", v10, v11, v12, v13, v14, v15, v8);
LABEL_11:
  }
}

- (void)setDownloadPolicy:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, v7);
LABEL_11:
  }
}

- (void)setValuesWithStoreDownloadMetadata:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v16, v15}];
    free(v8);
    SSFileLog(v4, @"%@", v9, v10, v11, v12, v13, v14, v7);
LABEL_11:
  }
}

@end