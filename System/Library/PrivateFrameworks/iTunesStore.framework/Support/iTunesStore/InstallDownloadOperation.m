@interface InstallDownloadOperation
- (void)operation:(id)a3 updatedProgress:(id)a4;
- (void)run;
@end

@implementation InstallDownloadOperation

- (void)run
{
  v3 = [(FinishDownloadStepOperation *)self download];
  v4 = [v3 downloadKind];
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

      else if ([v4 isEqualToString:SSDownloadKindInAppContent])
      {
        v5 = off_100325210;
      }

      else
      {
        v30 = [v3 documentTargetIdentifier];
        v31 = [v30 isEqualToString:@"com.apple.iBooks"];

        if (!v31)
        {
          v5 = off_1003251F8;
        }
      }
    }
  }

  v6 = [objc_alloc(*v5) initWithDownload:v3];
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

    v16 = [v15 shouldLog];
    v17 = [v15 shouldLogToDisk];
    v18 = [v15 OSLogObject];
    v19 = v18;
    if (v17)
    {
      v16 |= 2u;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v20 = objc_opt_class();
      v21 = [v3 databaseID];
      v41 = 138412546;
      v42 = v20;
      v43 = 2048;
      v44 = v21;
      LODWORD(v33) = 22;
      v32 = &v41;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_28:

        v23 = objc_alloc_init(FinishDownloadResponse);
        v24 = v36[5];
        v36[5] = v23;

        [v36[5] setDownloadIdentifier:{objc_msgSend(v3, "databaseID")}];
        v25 = v36[5];
        v26 = [v3 mediaAsset];
        [v25 setMediaAssetIdentifier:{objc_msgSend(v26, "databaseID")}];

        [v36[5] setResult:0];
        v27 = v36[5];
        v28 = SSError();
        [v27 setError:v28];

        v29 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [v3 transactionID], objc_msgSend(v3, "databaseID"));
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

  v8 = [v7 shouldLog];
  v9 = [v7 shouldLogToDisk];
  v10 = [v7 OSLogObject];
  v11 = v10;
  if (v9)
  {
    v8 |= 2u;
  }

  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

  v12 = objc_opt_class();
  v13 = [v3 databaseID];
  v41 = 138412802;
  v42 = v12;
  v43 = 2048;
  v44 = v13;
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

- (void)operation:(id)a3 updatedProgress:(id)a4
{
  v4 = OBJC_IVAR___ISOperation__progress;
  if (*&self->super.ISOperation_opaque[OBJC_IVAR___ISOperation__progress])
  {
    v6 = [a4 copy];
    v7 = *&self->super.ISOperation_opaque[v4];
    *&self->super.ISOperation_opaque[v4] = v6;

    v8 = [(InstallDownloadOperation *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 operation:self updatedProgress:*&self->super.ISOperation_opaque[v4]];
    }
  }
}

@end