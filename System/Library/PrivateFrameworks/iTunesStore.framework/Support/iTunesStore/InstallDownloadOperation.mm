@interface InstallDownloadOperation
- (void)operation:(id)operation updatedProgress:(id)progress;
- (void)run;
@end

@implementation InstallDownloadOperation

- (void)run
{
  download = [(FinishDownloadStepOperation *)self download];
  downloadKind = [download downloadKind];
  if (SSDownloadKindIsSoftwareKind())
  {
    v5 = off_100325218;
  }

  else if (SSDownloadKindIsMediaKind() & 1) != 0 || (SSDownloadKindIsPodcastKind())
  {
    v5 = off_100325208;
  }

  else
  {
    v5 = off_100325200;
    if ((SSDownloadKindIsEBookKind() & 1) == 0)
    {
      if (SSDownloadKindIsToneKind())
      {
        v5 = off_100325220;
      }

      else if ([downloadKind isEqualToString:SSDownloadKindInAppContent])
      {
        v5 = off_100325210;
      }

      else
      {
        documentTargetIdentifier = [download documentTargetIdentifier];
        v31 = [documentTargetIdentifier isEqualToString:@"com.apple.iBooks"];

        if (!v31)
        {
          v5 = off_1003251F8;
        }
      }
    }
  }

  v6 = [objc_alloc(*v5) initWithDownload:download];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100176DF8;
  v39 = sub_100176E08;
  v40 = 0;
  if (!v6)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    shouldLogToDisk = [v15 shouldLogToDisk];
    oSLogObject = [v15 OSLogObject];
    v19 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v20 = objc_opt_class();
      databaseID = [download databaseID];
      v41 = 138412546;
      v42 = v20;
      v43 = 2048;
      v44 = databaseID;
      LODWORD(v33) = 22;
      v32 = &v41;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_28:

        v23 = objc_alloc_init(FinishDownloadResponse);
        v24 = v36[5];
        v36[5] = v23;

        [v36[5] setDownloadIdentifier:{objc_msgSend(download, "databaseID")}];
        v25 = v36[5];
        mediaAsset = [download mediaAsset];
        [v25 setMediaAssetIdentifier:{objc_msgSend(mediaAsset, "databaseID")}];

        [v36[5] setResult:0];
        v27 = v36[5];
        v28 = SSError();
        [v27 setError:v28];

        v29 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [download transactionID], objc_msgSend(download, "databaseID"));
        [v36[5] setDownloadHandle:v29];

        goto LABEL_29;
      }

      v19 = [NSString stringWithCString:v22 encoding:4, &v41, v33];
      free(v22);
      v32 = v19;
      SSFileLog();
    }

    goto LABEL_28;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v7 shouldLog];
  shouldLogToDisk2 = [v7 shouldLogToDisk];
  oSLogObject2 = [v7 OSLogObject];
  v11 = oSLogObject2;
  if (shouldLogToDisk2)
  {
    shouldLog2 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    shouldLog2 &= 2u;
  }

  if (!shouldLog2)
  {
    goto LABEL_16;
  }

  v12 = objc_opt_class();
  databaseID2 = [download databaseID];
  v41 = 138412802;
  v42 = v12;
  v43 = 2048;
  v44 = databaseID2;
  v45 = 2112;
  v46 = v6;
  LODWORD(v33) = 32;
  v32 = &v41;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v11 = [NSString stringWithCString:v14 encoding:4, &v41, v33];
    free(v14);
    v32 = v11;
    SSFileLog();
LABEL_16:
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100176E10;
  v34[3] = &unk_10032A370;
  v34[4] = &v35;
  [v6 setOutputBlock:v34];
  [v6 setDelegate:self];
  [(InstallDownloadOperation *)self runSubOperation:v6 returningError:0];
  [v6 setDelegate:0];
LABEL_29:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v36[5], v32];
  _Block_object_dispose(&v35, 8);
}

- (void)operation:(id)operation updatedProgress:(id)progress
{
  v4 = OBJC_IVAR___ISOperation__progress;
  if (*&self->super.ISOperation_opaque[OBJC_IVAR___ISOperation__progress])
  {
    v6 = [progress copy];
    v7 = *&self->super.ISOperation_opaque[v4];
    *&self->super.ISOperation_opaque[v4] = v6;

    delegate = [(InstallDownloadOperation *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate operation:self updatedProgress:*&self->super.ISOperation_opaque[v4]];
    }
  }
}

@end