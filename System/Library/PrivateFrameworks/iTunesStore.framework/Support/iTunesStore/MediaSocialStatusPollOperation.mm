@interface MediaSocialStatusPollOperation
- (MediaSocialStatusPollOperation)initWithStatusPollRequests:(id)requests;
- (NSArray)statusPollRequests;
- (id)_requestURL;
- (id)responseBlock;
- (void)main;
- (void)setResponseBlock:(id)block;
@end

@implementation MediaSocialStatusPollOperation

- (MediaSocialStatusPollOperation)initWithStatusPollRequests:(id)requests
{
  requestsCopy = requests;
  v9.receiver = self;
  v9.super_class = MediaSocialStatusPollOperation;
  v5 = [(MediaSocialStatusPollOperation *)&v9 init];
  if (v5)
  {
    v6 = [requestsCopy copy];
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

- (void)setResponseBlock:(id)block
{
  blockCopy = block;
  [(MediaSocialStatusPollOperation *)self lock];
  if (self->_responseBlock != blockCopy)
  {
    v4 = [blockCopy copy];
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
  selfCopy = self;
  _requestURL = [(MediaSocialStatusPollOperation *)self _requestURL];
  v3 = objc_opt_new();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v4 = selfCopy->_statusPollRequests;
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

        activityIdentifier = [*(*(&v70 + 1) + 8 * i) activityIdentifier];
        if (activityIdentifier)
        {
          [v3 addObject:activityIdentifier];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v70 objects:v79 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:{@", "}];
  if (!_requestURL)
  {
    v30 = SSError();
    v31 = 0;
    goto LABEL_41;
  }

  v61 = selfCopy;
  firstObject = [(NSArray *)selfCopy->_statusPollRequests firstObject];
  v12 = objc_alloc_init(ISStoreURLOperation);
  v13 = +[DaemonProtocolDataProvider provider];
  [v12 setDataProvider:v13];

  v14 = [SSAuthenticationContext alloc];
  accountIdentifier = [firstObject accountIdentifier];
  v16 = [v14 initWithAccountIdentifier:accountIdentifier];

  [v12 setAuthenticationContext:v16];
  v17 = [[SSMutableURLRequestProperties alloc] initWithURL:_requestURL];
  [v17 setAllowedRetryCount:0];
  [v17 setITunesStoreRequest:1];
  [v17 setTimeoutInterval:30.0];
  [v17 setValue:v10 forRequestParameter:@"activities"];
  SSVAddMediaSocialHeadersToURLRequestProperties();
  sourceApplicationIdentifier = [firstObject sourceApplicationIdentifier];
  v19 = sourceApplicationIdentifier;
  if (sourceApplicationIdentifier)
  {
    v20 = sub_1001FBA18(sourceApplicationIdentifier);
    [v17 setValue:v20 forHTTPHeaderField:SSHTTPHeaderUserAgent];
  }

  [v12 setRequestProperties:v17];
  v21 = +[SSLogConfig sharedDaemonConfig];
  if (!v21)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v21 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    shouldLog &= 2u;
  }

  if (!shouldLog)
  {
    v29 = firstObject;
    selfCopy = v61;
    goto LABEL_24;
  }

  v56 = v17;
  v24 = v16;
  v25 = v10;
  v26 = objc_opt_class();
  v63 = v26;
  [firstObject activityIdentifier];
  v27 = v59 = firstObject;
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

  selfCopy = v61;
  v29 = v59;

  if (v28)
  {
    oSLogObject = [NSString stringWithCString:v28 encoding:4, &v75, v51];
    free(v28);
    v50 = oSLogObject;
    SSFileLog();
LABEL_24:
  }

  v69 = 0;
  v32 = [(MediaSocialStatusPollOperation *)selfCopy runSubOperation:v12 returningError:&v69];
  v33 = v69;
  v31 = 0;
  if (v32)
  {
    v55 = v10;
    v34 = v29;
    v31 = objc_alloc_init(NSMutableDictionary);
    dataProvider = [v12 dataProvider];
    output = [dataProvider output];

    v37 = output;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = v33;
      v38 = [output objectForKey:@"activities"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = output;
        v53 = v16;
        v64 = v31;
        v57 = v17;
        v58 = v12;
        v60 = v34;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v39 = selfCopy->_statusPollRequests;
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
              activityIdentifier2 = [v44 activityIdentifier];
              v46 = [v38 objectForKey:activityIdentifier2];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v47 = objc_alloc_init(MediaSocialPostResponse);
                [(MediaSocialPostResponse *)v47 setActivityIdentifier:activityIdentifier2];
                [v44 pollingInterval];
                [(MediaSocialPostResponse *)v47 setPollingInterval:?];
                [v44 pollingDuration];
                [(MediaSocialPostResponse *)v47 setPollDuration:?];
                -[MediaSocialPostResponse setPostIdentifier:](v47, "setPostIdentifier:", [v44 postIdentifier]);
                [(MediaSocialPostResponse *)v47 setValuesWithResponseDictionary:v46];
                [v64 setObject:v47 forKey:activityIdentifier2];
              }
            }

            v41 = [(NSArray *)v39 countByEnumeratingWithState:&v65 objects:v74 count:16];
          }

          while (v41);
        }

        v34 = v60;
        selfCopy = v61;
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
  responseBlock = [(MediaSocialStatusPollOperation *)selfCopy responseBlock];
  v49 = responseBlock;
  if (responseBlock)
  {
    (*(responseBlock + 16))(responseBlock, v31, v30);
    [(MediaSocialStatusPollOperation *)selfCopy setResponseBlock:0];
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