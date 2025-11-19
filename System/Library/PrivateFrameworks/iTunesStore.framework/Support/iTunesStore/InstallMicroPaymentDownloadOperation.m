@interface InstallMicroPaymentDownloadOperation
- (void)run;
@end

@implementation InstallMicroPaymentDownloadOperation

- (void)run
{
  v3 = objc_alloc_init(FinishDownloadResponse);
  [(FinishDownloadResponse *)v3 setResult:4];
  v4 = [(FinishDownloadStepOperation *)self download];
  -[FinishDownloadResponse setDownloadIdentifier:](v3, "setDownloadIdentifier:", [v4 databaseID]);
  v5 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [v4 transactionID], objc_msgSend(v4, "databaseID"));
  [(FinishDownloadResponse *)v3 setDownloadHandle:v5];
  v6 = [v4 mediaAsset];
  -[FinishDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [v6 databaseID]);
  v7 = [v4 clientIdentifier];
  if (v7)
  {
    v8 = [v4 downloadKind];
    v38 = [(FinishDownloadStepOperation *)self documentsDirectoryPathWithClientIdentifier:v7 downloadKind:v8];
  }

  else
  {
    v38 = 0;
  }

  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];

  if (v10)
  {
    v11 = [v6 destinationFileName];
    v12 = [v11 pathExtension];

    if (v12)
    {
      v13 = [v10 stringByAppendingPathExtension:v12];
    }

    else
    {
      v13 = v10;
    }

    v15 = v13;

    v14 = 0;
    if (!v38 || !v15)
    {
      goto LABEL_28;
    }

    v37 = v15;
    v41 = 0;
    v42 = 0;
    v16 = [(FinishDownloadStepOperation *)self unzipAsset:v6 unzippedPath:&v42 error:&v41];
    v17 = v42;
    v18 = v41;
    if (v16)
    {
      v35 = v5;
      v36 = v7;
      v19 = [v38 stringByAppendingPathComponent:v37];
      v39 = v18;
      v40 = v19;
      v34 = v17;
      v20 = [(FinishDownloadStepOperation *)self moveFile:v17 toPath:&v40 installBehavior:1 error:&v39];
      v21 = v40;

      v14 = v39;
      if (v20)
      {
        v33 = v21;
        v22 = +[SSLogConfig sharedDaemonConfig];
        if (!v22)
        {
          v22 = +[SSLogConfig sharedConfig];
        }

        v23 = [v22 shouldLog];
        if ([v22 shouldLogToDisk])
        {
          v23 |= 2u;
        }

        v32 = v22;
        v24 = [v22 OSLogObject];
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v23 &= 2u;
        }

        v15 = v37;
        if (v23)
        {
          v25 = objc_opt_class();
          v31 = v25;
          v26 = [v4 databaseID];
          v43 = 138412802;
          v44 = v25;
          v45 = 2048;
          v46 = v26;
          v47 = 2112;
          v48 = v33;
          LODWORD(v30) = 32;
          v29 = &v43;
          v27 = _os_log_send_and_compose_impl();

          v5 = v35;
          if (!v27)
          {
LABEL_32:

            [(FinishDownloadResponse *)v3 setMediaAssetInstallPath:v33];
            v7 = v36;
            goto LABEL_29;
          }

          v24 = [NSString stringWithCString:v27 encoding:4, &v43, v30];
          free(v27);
          v29 = v24;
          SSFileLog();
        }

        else
        {
          v5 = v35;
        }

        goto LABEL_32;
      }

      v18 = v14;
      v28 = v17;
      v5 = v35;
    }

    else
    {
      v28 = v17;
      if (!v17)
      {
        v15 = v37;
        goto LABEL_27;
      }

      v36 = v7;
      v21 = objc_alloc_init(NSFileManager);
      [v21 removeItemAtPath:v17 error:0];
    }

    v15 = v37;

    v7 = v36;
LABEL_27:

    v14 = v18;
    goto LABEL_28;
  }

  v14 = 0;
  v15 = 0;
LABEL_28:
  [(FinishDownloadResponse *)v3 setError:v14];
  [(FinishDownloadResponse *)v3 setResult:0];
  [(FinishDownloadStepOperation *)self rollbackAsset:v6 error:0];
LABEL_29:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v3, v29];
}

@end