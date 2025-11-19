@interface SSSoftwareDownload
- (BOOL)addAsset:(id)a3 forType:(id)a4;
- (BOOL)isBackgroundNetworkingUserInitiated;
- (BOOL)isEligibleForRestore:(id *)a3;
- (BOOL)removeAsset:(id)a3;
- (SSSoftwareDownload)initWithJob:(id)a3;
- (SSSoftwareDownload)initWithPersistentIdentifier:(int64_t)a3;
- (double)estimatedSecondsRemaining;
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

@implementation SSSoftwareDownload

- (SSSoftwareDownload)initWithJob:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SSSoftwareDownload;
  v6 = -[SSEntity _initWithPersistentIdentifier:](&v9, sel__initWithPersistentIdentifier_, [v5 persistentID]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 12, a3);
  }

  return v7;
}

- (SSSoftwareDownload)initWithPersistentIdentifier:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = +[SSLogConfig sharedDaemonConfig];
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

- (id)downloadPhaseIdentifier
{
  v2 = [(ASDJob *)self->_job phase];
  if (v2 > 8)
  {
    v3 = SSDownloadPhaseWaiting;
  }

  else
  {
    v3 = off_1E84B3E88[v2];
  }

  v4 = *v3;

  return v4;
}

- (id)valueForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"7"])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[ASDJob storeItemID](self->_job, "storeItemID")}];
LABEL_9:
    v6 = v5;
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"V"])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASDJob type](self->_job, "type") == 3}];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"c"])
  {
    v5 = [(ASDJob *)self->_job bundleID];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"1"])
  {
    v5 = @"software";
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)metadata
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
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
  v3 = +[SSLogConfig sharedDaemonConfig];
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
  v4 = +[SSLogConfig sharedDaemonConfig];
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
  v4 = +[SSLogConfig sharedDaemonConfig];
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
  v4 = +[SSLogConfig sharedDaemonConfig];
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
  v3 = +[SSLogConfig sharedDaemonConfig];
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
  v4 = +[SSLogConfig sharedDaemonConfig];
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
  v5 = [SSLogConfig sharedDaemonConfig:a3];
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
  v3 = +[SSLogConfig sharedDaemonConfig];
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

- (int64_t)bytesDownloaded
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
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

- (int64_t)bytesTotal
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
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
  v3 = +[SSLogConfig sharedDaemonConfig];
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
  v3 = +[SSLogConfig sharedDaemonConfig];
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

- (double)estimatedSecondsRemaining
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
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

  return -1.0;
}

- (BOOL)isBackgroundNetworkingUserInitiated
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
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
  v4 = +[SSLogConfig sharedDaemonConfig];
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

- (void)pause
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
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

- (void)prioritizeAboveDownload:(id)a3 completionBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedDaemonConfig:a3];
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
  v4 = +[SSLogConfig sharedDaemonConfig];
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

- (void)resume
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
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

- (void)restart
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
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
  v4 = +[SSLogConfig sharedDaemonConfig];
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
  v4 = +[SSLogConfig sharedDaemonConfig];
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
  v5 = [SSLogConfig sharedDaemonConfig:a3];
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
  v4 = +[SSLogConfig sharedDaemonConfig];
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
  v4 = +[SSLogConfig sharedDaemonConfig];
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