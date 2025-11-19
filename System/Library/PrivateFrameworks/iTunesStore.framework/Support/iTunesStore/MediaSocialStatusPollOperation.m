@interface MediaSocialStatusPollOperation
- (MediaSocialStatusPollOperation)initWithStatusPollRequests:(id)a3;
- (NSArray)statusPollRequests;
- (id)_requestURL;
- (id)responseBlock;
- (void)main;
- (void)setResponseBlock:(id)a3;
@end

@implementation MediaSocialStatusPollOperation

- (MediaSocialStatusPollOperation)initWithStatusPollRequests:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MediaSocialStatusPollOperation;
  v5 = [(MediaSocialStatusPollOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    statusPollRequests = v5->_statusPollRequests;
    v5->_statusPollRequests = v6;
  }

  return v5;
}

- (id)responseBlock
{
  [(MediaSocialStatusPollOperation *)self lock];
  v3 = [self->_responseBlock copy];
  [(MediaSocialStatusPollOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setResponseBlock:(id)a3
{
  v6 = a3;
  [(MediaSocialStatusPollOperation *)self lock];
  if (self->_responseBlock != v6)
  {
    v4 = [v6 copy];
    responseBlock = self->_responseBlock;
    self->_responseBlock = v4;
  }

  [(MediaSocialStatusPollOperation *)self unlock];
}

- (NSArray)statusPollRequests
{
  [(MediaSocialStatusPollOperation *)self lock];
  v3 = [(NSArray *)self->_statusPollRequests copy];
  [(MediaSocialStatusPollOperation *)self unlock];

  return v3;
}

- (void)main
{
  v2 = self;
  v62 = [(MediaSocialStatusPollOperation *)self _requestURL];
  v3 = objc_opt_new();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v4 = v2->_statusPollRequests;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v71;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v71 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v70 + 1) + 8 * i) activityIdentifier];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v70 objects:v79 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:{@", "}];
  if (!v62)
  {
    v30 = SSError();
    v31 = 0;
    goto LABEL_41;
  }

  v61 = v2;
  v11 = [(NSArray *)v2->_statusPollRequests firstObject];
  v12 = objc_alloc_init(ISStoreURLOperation);
  v13 = +[DaemonProtocolDataProvider provider];
  [v12 setDataProvider:v13];

  v14 = [SSAuthenticationContext alloc];
  v15 = [v11 accountIdentifier];
  v16 = [v14 initWithAccountIdentifier:v15];

  [v12 setAuthenticationContext:v16];
  v17 = [[SSMutableURLRequestProperties alloc] initWithURL:v62];
  [v17 setAllowedRetryCount:0];
  [v17 setITunesStoreRequest:1];
  [v17 setTimeoutInterval:30.0];
  [v17 setValue:v10 forRequestParameter:@"activities"];
  SSVAddMediaSocialHeadersToURLRequestProperties();
  v18 = [v11 sourceApplicationIdentifier];
  v19 = v18;
  if (v18)
  {
    v20 = sub_1001FBA18(v18);
    [v17 setValue:v20 forHTTPHeaderField:SSHTTPHeaderUserAgent];
  }

  [v12 setRequestProperties:v17];
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
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v22 &= 2u;
  }

  if (!v22)
  {
    v29 = v11;
    v2 = v61;
    goto LABEL_24;
  }

  v56 = v17;
  v24 = v16;
  v25 = v10;
  v26 = objc_opt_class();
  v63 = v26;
  [v11 activityIdentifier];
  v27 = v59 = v11;
  v75 = 138412546;
  v76 = v26;
  v10 = v25;
  v16 = v24;
  v17 = v56;
  v77 = 2112;
  v78 = v27;
  LODWORD(v51) = 22;
  v50 = &v75;
  v28 = _os_log_send_and_compose_impl();

  v2 = v61;
  v29 = v59;

  if (v28)
  {
    v23 = [NSString stringWithCString:v28 encoding:4, &v75, v51];
    free(v28);
    v50 = v23;
    SSFileLog();
LABEL_24:
  }

  v69 = 0;
  v32 = [(MediaSocialStatusPollOperation *)v2 runSubOperation:v12 returningError:&v69];
  v33 = v69;
  v31 = 0;
  if (v32)
  {
    v55 = v10;
    v34 = v29;
    v31 = objc_alloc_init(NSMutableDictionary);
    v35 = [v12 dataProvider];
    v36 = [v35 output];

    v37 = v36;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = v33;
      v38 = [v36 objectForKey:@"activities"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = v36;
        v53 = v16;
        v64 = v31;
        v57 = v17;
        v58 = v12;
        v60 = v34;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v39 = v2->_statusPollRequests;
        v40 = [(NSArray *)v39 countByEnumeratingWithState:&v65 objects:v74 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v66;
          do
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v66 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v65 + 1) + 8 * j);
              v45 = [v44 activityIdentifier];
              v46 = [v38 objectForKey:v45];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v47 = objc_alloc_init(MediaSocialPostResponse);
                [(MediaSocialPostResponse *)v47 setActivityIdentifier:v45];
                [v44 pollingInterval];
                [(MediaSocialPostResponse *)v47 setPollingInterval:?];
                [v44 pollingDuration];
                [(MediaSocialPostResponse *)v47 setPollDuration:?];
                -[MediaSocialPostResponse setPostIdentifier:](v47, "setPostIdentifier:", [v44 postIdentifier]);
                [(MediaSocialPostResponse *)v47 setValuesWithResponseDictionary:v46];
                [v64 setObject:v47 forKey:v45];
              }
            }

            v41 = [(NSArray *)v39 countByEnumeratingWithState:&v65 objects:v74 count:16];
          }

          while (v41);
        }

        v34 = v60;
        v2 = v61;
        v17 = v57;
        v12 = v58;
        v37 = v52;
        v16 = v53;
        v31 = v64;
      }

      v33 = v54;
    }

    v29 = v34;
    v10 = v55;
  }

  v30 = 0;
LABEL_41:
  v48 = [(MediaSocialStatusPollOperation *)v2 responseBlock];
  v49 = v48;
  if (v48)
  {
    (*(v48 + 16))(v48, v31, v30);
    [(MediaSocialStatusPollOperation *)v2 setResponseBlock:0];
  }
}

- (id)_requestURL
{
  v3 = [SSURLBagContext contextWithBagType:0];
  v4 = [(MediaSocialStatusPollOperation *)self loadedURLBagWithContext:v3 returningError:0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 valueForKey:SSVURLBagKeyMusicConnect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:@"activityStatus"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [[NSURL alloc] initWithString:v7];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end