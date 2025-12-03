@interface InstallMicroPaymentDownloadOperation
- (void)run;
@end

@implementation InstallMicroPaymentDownloadOperation

- (void)run
{
  v3 = objc_alloc_init(FinishDownloadResponse);
  [(FinishDownloadResponse *)v3 setResult:4];
  download = [(FinishDownloadStepOperation *)self download];
  -[FinishDownloadResponse setDownloadIdentifier:](v3, "setDownloadIdentifier:", [download databaseID]);
  v5 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [download transactionID], objc_msgSend(download, "databaseID"));
  [(FinishDownloadResponse *)v3 setDownloadHandle:v5];
  mediaAsset = [download mediaAsset];
  -[FinishDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [mediaAsset databaseID]);
  clientIdentifier = [download clientIdentifier];
  if (clientIdentifier)
  {
    downloadKind = [download downloadKind];
    v38 = [(FinishDownloadStepOperation *)self documentsDirectoryPathWithClientIdentifier:clientIdentifier downloadKind:downloadKind];
  }

  else
  {
    v38 = 0;
  }

  v9 = +[NSUUID UUID];
  uUIDString = [v9 UUIDString];

  if (uUIDString)
  {
    destinationFileName = [mediaAsset destinationFileName];
    pathExtension = [destinationFileName pathExtension];

    if (pathExtension)
    {
      v13 = [uUIDString stringByAppendingPathExtension:pathExtension];
    }

    else
    {
      v13 = uUIDString;
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
    v16 = [(FinishDownloadStepOperation *)self unzipAsset:mediaAsset unzippedPath:&v42 error:&v41];
    v17 = v42;
    v18 = v41;
    if (v16)
    {
      v35 = v5;
      v36 = clientIdentifier;
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

        shouldLog = [v22 shouldLog];
        if ([v22 shouldLogToDisk])
        {
          shouldLog |= 2u;
        }

        v32 = v22;
        oSLogObject = [v22 OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          shouldLog &= 2u;
        }

        v15 = v37;
        if (shouldLog)
        {
          v25 = objc_opt_class();
          v31 = v25;
          databaseID = [download databaseID];
          v43 = 138412802;
          v44 = v25;
          v45 = 2048;
          v46 = databaseID;
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
            clientIdentifier = v36;
            goto LABEL_29;
          }

          oSLogObject = [NSString stringWithCString:v27 encoding:4, &v43, v30];
          free(v27);
          v29 = oSLogObject;
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

      v36 = clientIdentifier;
      v21 = objc_alloc_init(NSFileManager);
      [v21 removeItemAtPath:v17 error:0];
    }

    v15 = v37;

    clientIdentifier = v36;
LABEL_27:

    v14 = v18;
    goto LABEL_28;
  }

  v14 = 0;
  v15 = 0;
LABEL_28:
  [(FinishDownloadResponse *)v3 setError:v14];
  [(FinishDownloadResponse *)v3 setResult:0];
  [(FinishDownloadStepOperation *)self rollbackAsset:mediaAsset error:0];
LABEL_29:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v3, v29];
}

@end