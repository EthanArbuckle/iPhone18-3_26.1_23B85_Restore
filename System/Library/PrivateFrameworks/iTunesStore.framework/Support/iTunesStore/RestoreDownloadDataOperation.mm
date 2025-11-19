@interface RestoreDownloadDataOperation
- (BOOL)_isFatalRestoreError:(id)a3;
- (BOOL)_restoreDataForBundleID:(id)a3 restoreState:(int64_t)a4 error:(id *)a5;
- (void)operation:(id)a3 updatedProgress:(id)a4;
- (void)run;
@end

@implementation RestoreDownloadDataOperation

- (void)run
{
  v3 = objc_alloc_init(FinishDownloadResponse);
  [(FinishDownloadResponse *)v3 setResult:4];
  v55 = self;
  v4 = [(FinishDownloadStepOperation *)self download];
  -[FinishDownloadResponse setDownloadIdentifier:](v3, "setDownloadIdentifier:", [v4 databaseID]);
  v52 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [v4 transactionID], objc_msgSend(v4, "databaseID"));
  [(FinishDownloadResponse *)v3 setDownloadHandle:?];
  v51 = [v4 mediaAsset];
  -[FinishDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [v51 databaseID]);
  v5 = [v4 restoreState];
  v6 = [v4 bundleIdentifier];
  v7 = [ApplicationWorkspace keepSafeHarborDataForBundleID:v6];

  v8 = &CFDictionaryGetValue_ptr;
  if (v7)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v53 = v14;
      v15 = [v4 databaseID];
      v16 = [v4 bundleIdentifier];
      v57 = 138412802;
      v58 = v14;
      v59 = 2048;
      v60 = v15;
      v61 = 2112;
      v62 = v16;
      LODWORD(v47) = 32;
      v45 = &v57;
      v17 = _os_log_send_and_compose_impl();

      v8 = &CFDictionaryGetValue_ptr;
      if (v17)
      {
        v18 = [NSString stringWithCString:v17 encoding:4, &v57, v47];
        free(v17);
        v45 = v18;
        SSFileLog();
      }
    }

    else
    {
    }
  }

  v19 = [v4 bundleIdentifier];
  v56 = 0;
  v20 = v55;
  v21 = [(RestoreDownloadDataOperation *)v55 _restoreDataForBundleID:v19 restoreState:v5 error:&v56];
  v22 = v56;

  v54 = v3;
  if ((v21 & 1) == 0)
  {
    [(FinishDownloadResponse *)v3 setError:v22];
    v33 = 0;
    goto LABEL_31;
  }

  if (v5 != 1)
  {
    goto LABEL_32;
  }

  if (!v7)
  {
    v33 = 3;
    goto LABEL_31;
  }

  v23 = [v8[412] sharedDaemonConfig];
  if (!v23)
  {
    v23 = [v8[412] sharedConfig];
  }

  v24 = [v23 shouldLog];
  if ([v23 shouldLogToDisk])
  {
    v24 |= 2u;
  }

  v25 = [v23 OSLogObject];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v24;
  }

  else
  {
    v26 = v24 & 2;
  }

  if (!v26)
  {
    goto LABEL_28;
  }

  v27 = objc_opt_class();
  v49 = v27;
  v48 = [(FinishDownloadResponse *)v3 result];
  v28 = v8;
  v29 = [v4 databaseID];
  [v4 bundleIdentifier];
  v31 = v30 = v22;
  v57 = 138413058;
  v58 = v27;
  v59 = 2048;
  v60 = v48;
  v61 = 2048;
  v62 = v29;
  v8 = v28;
  v63 = 2112;
  v64 = v31;
  LODWORD(v47) = 42;
  v46 = &v57;
  v32 = _os_log_send_and_compose_impl();

  v22 = v30;
  v3 = v54;

  if (v32)
  {
    v25 = [NSString stringWithCString:v32 encoding:4, &v57, v47];
    free(v32);
    v46 = v25;
    SSFileLog();
LABEL_28:
  }

  v33 = 7;
LABEL_31:
  [(FinishDownloadResponse *)v3 setResult:v33, v46];
LABEL_32:
  v34 = [v8[412] sharedDaemonConfig];
  if (!v34)
  {
    v34 = [v8[412] sharedConfig];
  }

  v35 = [v34 shouldLog];
  if ([v34 shouldLogToDisk])
  {
    v35 |= 2u;
  }

  v36 = [v34 OSLogObject];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = v35;
  }

  else
  {
    v37 = v35 & 2;
  }

  if (!v37)
  {
    v40 = v54;
    goto LABEL_43;
  }

  v38 = objc_opt_class();
  v50 = v22;
  v39 = v38;
  v40 = v54;
  v41 = [(FinishDownloadResponse *)v54 result];
  v42 = [v4 databaseID];
  v43 = [v4 bundleIdentifier];
  v57 = 138413058;
  v58 = v38;
  v59 = 2048;
  v60 = v41;
  v61 = 2048;
  v62 = v42;
  v63 = 2112;
  v64 = v43;
  LODWORD(v47) = 42;
  v44 = _os_log_send_and_compose_impl();

  v20 = v55;
  v22 = v50;

  if (v44)
  {
    v36 = [NSString stringWithCString:v44 encoding:4, &v57, v47];
    free(v44);
    SSFileLog();
LABEL_43:
  }

  [(FinishDownloadStepOperation *)v20 finishWithDownloadResponse:v40];
}

- (void)operation:(id)a3 updatedProgress:(id)a4
{
  v4 = OBJC_IVAR___ISOperation__progress;
  if (*&self->super.ISOperation_opaque[OBJC_IVAR___ISOperation__progress])
  {
    v6 = [a4 copy];
    v7 = *&self->super.ISOperation_opaque[v4];
    *&self->super.ISOperation_opaque[v4] = v6;

    v8 = [(RestoreDownloadDataOperation *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 operation:self updatedProgress:*&self->super.ISOperation_opaque[v4]];
    }
  }
}

- (BOOL)_isFatalRestoreError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:@"MBErrorDomain"];

  if (v5 && (v6 = [v3 code], (v7 = ISWeakLinkedSymbolForString()) != 0))
  {
    v8 = v7(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_restoreDataForBundleID:(id)a3 restoreState:(int64_t)a4 error:(id *)a5
{
  v78 = a3;
  v6 = [(FinishDownloadStepOperation *)self download];
  v77 = [v6 databaseID];

  v7 = 0;
  v8 = 1;
  for (i = &CFDictionaryGetValue_ptr; ; i = &CFDictionaryGetValue_ptr)
  {
    context = objc_autoreleasePoolPush();
    v10 = [i[412] sharedDaemonConfig];
    if (!v10)
    {
      v10 = [i[412] sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      v15 = objc_opt_class();
      v81 = 138413058;
      v82 = v15;
      v83 = 2048;
      *v84 = v8;
      *&v84[8] = 2048;
      *&v84[10] = v77;
      *&v84[18] = 2112;
      *&v84[20] = v78;
      v16 = v15;
      LODWORD(v74) = 42;
      v72 = &v81;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
        goto LABEL_14;
      }

      v13 = [NSString stringWithCString:v17 encoding:4, &v81, v74];
      free(v17);
      v72 = v13;
      SSFileLog();
    }

LABEL_14:
    v18 = [i[412] sharedDaemonConfig];
    if (!v18)
    {
      v18 = [i[412] sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      v24 = v23;
      v25 = [(FinishDownloadStepOperation *)self download];
      v26 = [v25 priority];
      v81 = 138412546;
      v82 = v23;
      v83 = 2048;
      *v84 = v26;
      LODWORD(v74) = 22;
      v73 = &v81;
      v27 = _os_log_send_and_compose_impl();

      i = &CFDictionaryGetValue_ptr;
      if (!v27)
      {
        goto LABEL_26;
      }

      v21 = [NSString stringWithCString:v27 encoding:4, &v81, v74];
      free(v27);
      v73 = v21;
      SSFileLog();
    }

LABEL_26:
    v28 = [RestoreBackupOperation alloc];
    v29 = [(FinishDownloadStepOperation *)self download];
    v30 = -[RestoreBackupOperation initWithBundleIdentifier:withPriority:isFailed:](v28, "initWithBundleIdentifier:withPriority:isFailed:", v78, [v29 priority], a4 == 1);

    [(RestoreBackupOperation *)v30 setDelegate:self];
    v80 = v7;
    v31 = [(RestoreDownloadDataOperation *)self runSubOperation:v30 returningError:&v80];
    v32 = v80;

    [(RestoreBackupOperation *)v30 setDelegate:0];
    if (v31)
    {
      goto LABEL_56;
    }

    if ([(RestoreDownloadDataOperation *)self _isFatalRestoreError:v32])
    {
      v43 = [i[412] sharedDaemonConfig];
      if (!v43)
      {
        v43 = [i[412] sharedConfig];
      }

      v44 = [v43 shouldLog];
      if ([v43 shouldLogToDisk])
      {
        v44 |= 2u;
      }

      v45 = [v43 OSLogObject];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v44;
      }

      else
      {
        v46 = v44 & 2;
      }

      if (v46)
      {
        v47 = objc_opt_class();
        v81 = 138412802;
        v82 = v47;
        v83 = 2048;
        *v84 = v77;
        *&v84[8] = 2112;
        *&v84[10] = v32;
        v48 = v47;
        LODWORD(v74) = 32;
        v49 = _os_log_send_and_compose_impl();

        if (v49)
        {
          v45 = [NSString stringWithCString:v49 encoding:4, &v81, v74];
          free(v49);
          SSFileLog();
          goto LABEL_54;
        }
      }

      else
      {
LABEL_54:
      }

LABEL_56:
      objc_autoreleasePoolPop(context);
      v50 = 1;
      goto LABEL_92;
    }

    if (sub_1000EA66C(v32))
    {
      v51 = [i[412] sharedDaemonConfig];
      v52 = i;
      v35 = v51;
      if (!v51)
      {
        v35 = [v52[412] sharedConfig];
      }

      v53 = [v35 shouldLog];
      if ([v35 shouldLogToDisk])
      {
        v53 |= 2u;
      }

      v54 = [v35 OSLogObject];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v53;
      }

      else
      {
        v55 = v53 & 2;
      }

      if (v55)
      {
        v56 = objc_opt_class();
        v81 = 138412802;
        v82 = v56;
        v83 = 2048;
        *v84 = v77;
        *&v84[8] = 2112;
        *&v84[10] = v32;
        v57 = v56;
        LODWORD(v74) = 32;
        goto LABEL_84;
      }

LABEL_86:
      v67 = context;
      v68 = a5;
LABEL_87:

      goto LABEL_89;
    }

    if (v8 >= 3)
    {
      break;
    }

    v33 = [(RestoreDownloadDataOperation *)self isCancelled];
    v34 = [i[412] sharedDaemonConfig];
    v35 = v34;
    if (v33)
    {
      if (!v34)
      {
        v35 = +[SSLogConfig sharedConfig];
      }

      v63 = [v35 shouldLog];
      if ([v35 shouldLogToDisk])
      {
        v63 |= 2u;
      }

      v54 = [v35 OSLogObject];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v64 = v63;
      }

      else
      {
        v64 = v63 & 2;
      }

      if (!v64)
      {
        goto LABEL_86;
      }

      v65 = objc_opt_class();
      v81 = 138413058;
      v82 = v65;
      v83 = 2048;
      *v84 = v8;
      *&v84[8] = 2048;
      *&v84[10] = v77;
      *&v84[18] = 2112;
      *&v84[20] = v78;
      v57 = v65;
      LODWORD(v74) = 42;
      goto LABEL_84;
    }

    if (!v34)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    v36 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      v36 |= 2u;
    }

    v37 = [v35 OSLogObject];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v36;
    }

    else
    {
      v38 = v36 & 2;
    }

    if (v38)
    {
      v39 = objc_opt_class();
      v81 = 138412802;
      v82 = v39;
      v83 = 2048;
      *v84 = v77;
      *&v84[8] = 2112;
      *&v84[10] = v32;
      v40 = v39;
      LODWORD(v74) = 32;
      v71 = &v81;
      v41 = _os_log_send_and_compose_impl();

      v42 = context;
      if (!v41)
      {
        goto LABEL_43;
      }

      v37 = [NSString stringWithCString:v41 encoding:4, &v81, v74];
      free(v41);
      v71 = v37;
      SSFileLog();
    }

    else
    {
      v42 = context;
    }

LABEL_43:
    [NSThread sleepForTimeInterval:v8++ * 10.0];

    objc_autoreleasePoolPop(v42);
    v7 = v32;
  }

  v58 = [i[412] sharedDaemonConfig];
  v59 = i;
  v35 = v58;
  if (!v58)
  {
    v35 = [v59[412] sharedConfig];
  }

  v60 = [v35 shouldLog];
  if ([v35 shouldLogToDisk])
  {
    v60 |= 2u;
  }

  v54 = [v35 OSLogObject];
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v61 = v60;
  }

  else
  {
    v61 = v60 & 2;
  }

  if (!v61)
  {
    goto LABEL_86;
  }

  v62 = objc_opt_class();
  v81 = 138413058;
  v82 = v62;
  v83 = 1024;
  *v84 = 3;
  *&v84[4] = 2048;
  *&v84[6] = v77;
  *&v84[14] = 2112;
  *&v84[16] = v32;
  v57 = v62;
  LODWORD(v74) = 38;
LABEL_84:
  v66 = _os_log_send_and_compose_impl();

  if (v66)
  {
    v67 = context;
    v68 = a5;
    v54 = [NSString stringWithCString:v66 encoding:4, &v81, v74];
    free(v66);
    SSFileLog();
    goto LABEL_87;
  }

  v67 = context;
  v68 = a5;
LABEL_89:

  objc_autoreleasePoolPop(v67);
  if (v68)
  {
    v69 = v32;
    v50 = 0;
    *v68 = v32;
  }

  else
  {
    v50 = 0;
  }

LABEL_92:

  return v50;
}

@end