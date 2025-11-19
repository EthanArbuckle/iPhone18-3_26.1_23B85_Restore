@interface RestorePodcastItemsOperation
- (NSArray)responses;
- (RestorePodcastItemsOperation)initWithDownloadItems:(id)a3;
- (id)_addResponseForItem:(id)a3 operation:(id)a4;
- (id)_newResponseWithItems:(id)a3 error:(id)a4;
- (id)_newURLOperationForItem:(id)a3 error:(id *)a4;
- (void)_addResponse:(id)a3;
- (void)run;
@end

@implementation RestorePodcastItemsOperation

- (RestorePodcastItemsOperation)initWithDownloadItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RestorePodcastItemsOperation;
  v5 = [(RestorePodcastItemsOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    downloadItems = v5->_downloadItems;
    v5->_downloadItems = v6;
  }

  return v5;
}

- (NSArray)responses
{
  [(RestorePodcastItemsOperation *)self lock];
  v3 = [(NSMutableArray *)self->_responses copy];
  [(RestorePodcastItemsOperation *)self unlock];

  return v3;
}

- (void)run
{
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
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    downloadItems = self->_downloadItems;
    v9 = v7;
    v59 = 138412546;
    v60 = v7;
    v61 = 2048;
    v62 = [(NSArray *)downloadItems count];
    LODWORD(v45) = 22;
    v44 = &v59;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = [NSString stringWithCString:v10 encoding:4, &v59, v45];
    free(v10);
    v44 = v6;
    SSFileLog();
  }

LABEL_12:
  v11 = [SSURLBagContext contextWithBagType:0];
  v57 = 0;
  v12 = [(RestorePodcastItemsOperation *)self loadURLBagWithContext:v11 returningError:&v57];
  v13 = v57;
  v14 = v13;
  if (v12)
  {
    v15 = v13;
    v16 = +[ISURLBagCache sharedCache];
    v17 = [v16 URLBagForContext:v11];

    v47 = v17;
    v18 = [v17 urlForKey:@"p2-podcast-restore"];

    if (v18)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v19 = self->_downloadItems;
      v49 = [(NSArray *)v19 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v49)
      {
        v46 = v11;
        v48 = *v54;
        v20 = 1;
        v21 = v15;
        while (1)
        {
          for (i = 0; i != v49; i = i + 1)
          {
            if (*v54 != v48)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v53 + 1) + 8 * i);
            v24 = objc_autoreleasePoolPush();
            v52 = 0;
            v25 = [(RestorePodcastItemsOperation *)self _newURLOperationForItem:v23 error:&v52];
            v26 = v52;
            v27 = v26;
            if (v25)
            {
              v50 = v24;
              v51 = v26;
              v28 = v19;
              v29 = v21;
              v30 = [(RestorePodcastItemsOperation *)self runSubOperation:v25 returningError:&v51];
              v31 = v51;

              if (v30)
              {
                v32 = [(RestorePodcastItemsOperation *)self _addResponseForItem:v23 operation:v25];
                v27 = [v32 responseError];

                v33 = v27 == 0;
                v21 = v29;
                v19 = v28;
                v24 = v50;
                goto LABEL_24;
              }

              v27 = v31;
              v21 = v29;
              v19 = v28;
              v24 = v50;
            }

            v34 = [NSArray arrayWithObject:v23, v44];
            v32 = [(RestorePodcastItemsOperation *)self _newResponseWithItems:v34 error:v27];

            [(RestorePodcastItemsOperation *)self _addResponse:v32];
            v33 = 0;
LABEL_24:

            if (!v21)
            {
              v21 = v27;
            }

            v20 &= v33;

            objc_autoreleasePoolPop(v24);
          }

          v49 = [(NSArray *)v19 countByEnumeratingWithState:&v53 objects:v58 count:16];
          if (!v49)
          {
            v11 = v46;
            goto LABEL_42;
          }
        }
      }

      v20 = 1;
      v21 = v15;
LABEL_42:
      v35 = v47;
      goto LABEL_46;
    }

    v36 = +[SSLogConfig sharedDaemonConfig];
    if (!v36)
    {
      v36 = +[SSLogConfig sharedConfig];
    }

    v37 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v38 = v37 | 2;
    }

    else
    {
      v38 = v37;
    }

    v39 = [v36 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 & 2;
    }

    if (v40)
    {
      v41 = objc_opt_class();
      v59 = 138412546;
      v60 = v41;
      v61 = 2112;
      v62 = @"p2-podcast-restore";
      v42 = v41;
      LODWORD(v45) = 22;
      v43 = _os_log_send_and_compose_impl();

      v35 = v47;
      if (!v43)
      {
LABEL_45:

        v21 = SSError();

        v19 = [(RestorePodcastItemsOperation *)self _newResponseWithItems:self->_downloadItems error:v21];
        [(RestorePodcastItemsOperation *)self _addResponse:v19];
        v20 = 1;
LABEL_46:

        goto LABEL_47;
      }

      v39 = [NSString stringWithCString:v43 encoding:4, &v59, v45];
      free(v43);
      SSFileLog();
    }

    else
    {
      v35 = v47;
    }

    goto LABEL_45;
  }

  v35 = [(RestorePodcastItemsOperation *)self _newResponseWithItems:self->_downloadItems error:v13];
  [(RestorePodcastItemsOperation *)self _addResponse:v35];
  v20 = 0;
  v21 = v14;
LABEL_47:

  [(RestorePodcastItemsOperation *)self setError:v21];
  [(RestorePodcastItemsOperation *)self setSuccess:v20 & 1];
}

- (void)_addResponse:(id)a3
{
  v8 = a3;
  [(RestorePodcastItemsOperation *)self lock];
  v4 = OBJC_IVAR___ISOperation__delegate;
  WeakRetained = objc_loadWeakRetained(&self->ISOperation_opaque[OBJC_IVAR___ISOperation__delegate]);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->ISOperation_opaque[v4]);
  }

  else
  {
    v7 = 0;
  }

  [(NSMutableArray *)self->_responses addObject:v8];
  [(RestorePodcastItemsOperation *)self unlock];
  if (v7)
  {
    [v7 restorePodcastItemsOperation:self didReceiveResponse:v8];
  }
}

- (id)_addResponseForItem:(id)a3 operation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(RestorePodcastItemsResponse);
  v9 = [NSArray arrayWithObjects:v6, 0];
  [(RestorePodcastItemsResponse *)v8 setRequestItems:v9];

  v10 = [v7 dataProvider];

  v11 = [v10 output];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [[SSItem alloc] initWithItemDictionary:v11];
    v13 = [[StoreDownload alloc] initWithItem:v12];
    v14 = [(StoreDownload *)v13 primaryAssetURL];

    if (v14)
    {
      v15 = [[NSArray alloc] initWithObjects:{v13, 0}];
      [(RestorePodcastItemsResponse *)v8 setResponseDownloads:v15];
    }

    else
    {
      v15 = [v11 objectForKey:@"failureType"];
      if (objc_opt_respondsToSelector())
      {
        [v15 integerValue];
      }

      v16 = SSError();
      v17 = [v6 storeItemID];
      [(RestorePodcastItemsResponse *)v8 setError:v16 forItemIdentifier:v17];
    }
  }

  else
  {
    v12 = SSError();
    [(RestorePodcastItemsResponse *)v8 setResponseError:v12];
  }

  [(RestorePodcastItemsOperation *)self _addResponse:v8];

  return v8;
}

- (id)_newResponseWithItems:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(RestorePodcastItemsResponse);
  [(RestorePodcastItemsResponse *)v7 setRequestItems:v6];

  [(RestorePodcastItemsResponse *)v7 setResponseError:v5];
  return v7;
}

- (id)_newURLOperationForItem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 podcastEpisodeGUID];
  v7 = [v5 storeItemID];

  if (!(v7 | v6))
  {
    v8 = SSError();
    v9 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v9 = objc_alloc_init(ISStoreURLOperation);
  v10 = +[DaemonProtocolDataProvider provider];
  [v9 setDataProvider:v10];

  v11 = objc_alloc_init(SSMutableURLRequestProperties);
  if (v7 && [v7 longLongValue] >= 1)
  {
    v12 = [v7 stringValue];
    [v11 setValue:v12 forRequestParameter:@"id"];
  }

  else if (v6)
  {
    [v11 setValue:v6 forRequestParameter:@"epguid"];
  }

  [v11 setURLBagKey:@"p2-podcast-restore"];
  [v9 setRequestProperties:v11];

  v8 = 0;
  if (a4)
  {
LABEL_10:
    if (!v9)
    {
      v13 = v8;
      *a4 = v8;
    }
  }

LABEL_12:

  return v9;
}

@end