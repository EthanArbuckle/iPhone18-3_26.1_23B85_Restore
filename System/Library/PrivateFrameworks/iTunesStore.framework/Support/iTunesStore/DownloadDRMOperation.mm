@interface DownloadDRMOperation
- (BOOL)_checkoutRentalKeys:(id *)a3;
- (BOOL)_decryptAsset:(id *)a3;
- (BOOL)_unprotectMediaAsset:(id *)a3;
- (id)_sinfs;
- (void)operation:(id)a3 updatedProgress:(id)a4;
- (void)run;
@end

@implementation DownloadDRMOperation

- (void)run
{
  v3 = [(FinishDownloadStepOperation *)self download];
  v4 = [v3 mediaAsset];
  v5 = objc_alloc_init(FinishDownloadResponse);
  -[FinishDownloadResponse setDownloadIdentifier:](v5, "setDownloadIdentifier:", [v3 databaseID]);
  -[FinishDownloadResponse setMediaAssetIdentifier:](v5, "setMediaAssetIdentifier:", [v4 databaseID]);
  [(FinishDownloadResponse *)v5 setResult:4];
  v6 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [v3 transactionID], objc_msgSend(v3, "databaseID"));
  [(FinishDownloadResponse *)v5 setDownloadHandle:v6];
  v7 = [v3 downloadKind];
  v8 = [v4 DPInfoData];
  if (v8 || (SSDownloadKindIsEBookKind() & 1) != 0 || [v7 isEqualToString:SSDownloadKindInAppContent])
  {
    v17 = 0;
    v9 = [(DownloadDRMOperation *)self _decryptAsset:&v17];
    v10 = v17;
    if (v9)
    {
LABEL_6:

      goto LABEL_7;
    }

LABEL_5:
    [(FinishDownloadResponse *)v5 setError:v10];
    [(FinishDownloadResponse *)v5 setResult:0];
    goto LABEL_6;
  }

  if ((SSDownloadKindIsMediaKind() & 1) != 0 || SSDownloadKindIsToneKind())
  {
    v16 = 0;
    v11 = [(DownloadDRMOperation *)self _unprotectMediaAsset:&v16];
    v12 = v16;
    v10 = v12;
    if (v11)
    {
      v15 = v12;
      v13 = [(DownloadDRMOperation *)self _checkoutRentalKeys:&v15];
      v14 = v15;

      v10 = v14;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_5;
  }

LABEL_7:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v5];
}

- (void)operation:(id)a3 updatedProgress:(id)a4
{
  v4 = OBJC_IVAR___ISOperation__progress;
  if (*&self->super.ISOperation_opaque[OBJC_IVAR___ISOperation__progress])
  {
    v6 = [a4 copy];
    v7 = *&self->super.ISOperation_opaque[v4];
    *&self->super.ISOperation_opaque[v4] = v6;

    v8 = [(DownloadDRMOperation *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 operation:self updatedProgress:*&self->super.ISOperation_opaque[v4]];
    }
  }
}

- (BOOL)_checkoutRentalKeys:(id *)a3
{
  v5 = [(FinishDownloadStepOperation *)self download];
  v6 = [v5 storeMetadata];
  v7 = [v6 isRental];

  if (!v7)
  {
    goto LABEL_32;
  }

  v8 = [(DownloadDRMOperation *)self _sinfs];
  v9 = [v5 storeMetadata];
  v10 = [v9 rentalID];

  if (!v8)
  {
    if (v10)
    {
      v22 = +[SSAccountStore defaultStore];
      v23 = [v22 activeAccount];
      v18 = [v23 uniqueIdentifier];

      if (!v18)
      {
        v20 = 0;
        v19 = 1;
        goto LABEL_15;
      }

      v24 = +[SSLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      v25 = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v26 = v25 | 2;
      }

      else
      {
        v26 = v25;
      }

      v27 = [v24 OSLogObject];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v26 &= 2u;
      }

      if (v26)
      {
        v28 = objc_opt_class();
        v33 = v28;
        v36 = 138412546;
        v37 = v28;
        v38 = 2048;
        v39 = [v5 databaseID];
        LODWORD(v32) = 22;
        v29 = _os_log_send_and_compose_impl();

        if (!v29)
        {
LABEL_31:

          v30 = [[CheckoutRentalKeysOperation alloc] initWithAccountIdentifier:v18 rentalKeyIdentifier:v10];
          [(CheckoutRentalKeysOperation *)v30 setCheckoutType:1];
          v34 = 0;
          v19 = [(DownloadDRMOperation *)self runSubOperation:v30 returningError:&v34];
          v20 = v34;

          goto LABEL_15;
        }

        v27 = [NSString stringWithCString:v29 encoding:4, &v36, v32];
        free(v29);
        SSFileLog();
      }

      goto LABEL_31;
    }

LABEL_32:
    v20 = 0;
    v19 = 1;
    goto LABEL_33;
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v15 = objc_opt_class();
  v16 = v15;
  v36 = 138412546;
  v37 = v15;
  v38 = 2048;
  v39 = [v5 databaseID];
  LODWORD(v32) = 22;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v14 = [NSString stringWithCString:v17 encoding:4, &v36, v32];
    free(v17);
    SSFileLog();
LABEL_13:
  }

  v18 = [[CheckoutRentalKeysOperation alloc] initWithStoreDownloadSinfs:v8];
  [(CheckoutRentalKeysOperation *)v18 setCheckoutType:1];
  v35 = 0;
  v19 = [(DownloadDRMOperation *)self runSubOperation:v18 returningError:&v35];
  v20 = v35;
LABEL_15:

  if (a3 && (v19 & 1) == 0)
  {
    v21 = v20;
    v19 = 0;
    *a3 = v20;
  }

LABEL_33:

  return v19;
}

- (BOOL)_decryptAsset:(id *)a3
{
  v5 = [(FinishDownloadStepOperation *)self download];
  v6 = [v5 mediaAsset];
  v7 = [v6 DPInfoData];
  if (![v7 length])
  {
    v8 = [(DownloadDRMOperation *)self _sinfs];
    if (v8)
    {
      v9 = [[DownloadDRM alloc] initWithSinfArray:v8];
      v10 = [(DownloadDRM *)v9 firstDataForSinfDataKey:off_100382E68];

      v7 = v10;
    }
  }

  if ([v7 length])
  {
    v11 = [v6 localPath];
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v28 = v5;
    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v17 = a3;
      v18 = objc_opt_class();
      v19 = v18;
      v30 = 138412802;
      v31 = v18;
      a3 = v17;
      v32 = 2048;
      v33 = [v28 databaseID];
      v34 = 2112;
      v35 = v11;
      LODWORD(v27) = 32;
      v20 = _os_log_send_and_compose_impl();

      if (v20)
      {
        v21 = [NSString stringWithCString:v20 encoding:4, &v30, v27];
        free(v20);
        SSFileLog();
      }
    }

    else
    {
    }

    v24 = [[FairPlayDecryptFileOperation alloc] initWithPath:v11 dpInfo:v7];
    [(FairPlayDecryptFileOperation *)v24 setDelegate:self];
    [(FairPlayDecryptFileOperation *)v24 setShouldRunWithBackgroundPriority:1];
    v29 = 0;
    v23 = [(DownloadDRMOperation *)self runSubOperation:v24 returningError:&v29];
    v22 = v29;
    [(FairPlayDecryptFileOperation *)v24 setDelegate:0];

    if (a3)
    {
      v5 = v28;
      if ((v23 & 1) == 0)
      {
        v25 = v22;
        v23 = 0;
        *a3 = v22;
      }
    }

    else
    {
      v5 = v28;
    }
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

  return v23;
}

- (id)_sinfs
{
  v2 = [(FinishDownloadStepOperation *)self download];
  v3 = [v2 mediaAsset];
  v4 = [v3 SINFData];

  if (v4)
  {
    v5 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:0];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [v2 storeMetadata];
    v7 = [v6 sinfs];

    v5 = v7;
  }

  v8 = [v2 storeSagaIdentifier];

  if (v8)
  {
    v19 = v4;
    v20 = v2;
    v9 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v15 mutableCopy];
            v17 = [v16 objectForKey:@"pinf"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ![v17 length])
            {
              [v16 removeObjectForKey:@"pinf"];
            }

            [v9 addObject:{v16, v19, v20, v21}];
          }

          else
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    v4 = v19;
    v2 = v20;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (BOOL)_unprotectMediaAsset:(id *)a3
{
  v5 = [(DownloadDRMOperation *)self _sinfs];
  v6 = [(FinishDownloadStepOperation *)self download];
  v7 = [v6 isHLS];
  v8 = 0;
  v9 = 1;
  if (!v5 || (v7 & 1) != 0)
  {
    goto LABEL_32;
  }

  v34 = a3;
  v35 = [(FinishDownloadStepOperation *)self download];
  v10 = [v35 mediaAsset];
  v11 = [v10 localPath];

  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v12 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v14;
  }

  else
  {
    v16 = v14 & 2;
  }

  if (v16)
  {
    v17 = objc_opt_class();
    v18 = v17;
    v37 = 138412802;
    v38 = v17;
    v39 = 2048;
    v40 = [v35 databaseID];
    v41 = 2112;
    v42 = v11;
    LODWORD(v31) = 32;
    v30 = &v37;
    v19 = _os_log_send_and_compose_impl();

    if (!v19)
    {
      goto LABEL_15;
    }

    v15 = [NSString stringWithCString:v19 encoding:4, &v37, v31];
    free(v19);
    v30 = v15;
    SSFileLog();
  }

LABEL_15:
  v20 = [[MediaDRMOperation alloc] initWithMediaPath:v11 sinfs:v5];
  [(MediaDRMOperation *)v20 setDelegate:self];
  [(MediaDRMOperation *)v20 setShouldRunWithBackgroundPriority:1];
  v36 = 0;
  v9 = [(DownloadDRMOperation *)self runSubOperation:v20 returningError:&v36];
  v8 = v36;
  [(MediaDRMOperation *)v20 setDelegate:0];
  if ((v9 & 1) == 0)
  {
    v33 = objc_alloc_init(NSFileManager);
    [v33 removeItemAtPath:v11 error:0];
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v22 |= 2u;
    }

    v23 = [v21 OSLogObject];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v32 = v24;
      v25 = [v35 databaseID];
      v37 = 138412802;
      v38 = v24;
      v39 = 2048;
      v40 = v25;
      v41 = 2112;
      v42 = v11;
      LODWORD(v31) = 32;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_26:

        goto LABEL_27;
      }

      v23 = [NSString stringWithCString:v26 encoding:4, &v37, v31];
      free(v26);
      SSFileLog();
    }

    goto LABEL_26;
  }

LABEL_27:

  if (v34)
  {
    v27 = v9;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    v28 = v8;
    v9 = 0;
    *v34 = v8;
  }

LABEL_32:

  return v9;
}

@end