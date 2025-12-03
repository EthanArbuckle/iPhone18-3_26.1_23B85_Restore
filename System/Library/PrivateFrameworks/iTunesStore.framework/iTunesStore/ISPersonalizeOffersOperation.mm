@interface ISPersonalizeOffersOperation
- (BOOL)_runWithURLDictionary:(id)dictionary error:(id *)error;
- (ISPersonalizeOffersOperation)initWithPersonalizeOffersRequest:(id)request;
- (ISPersonalizeOffersRequest)personalizeOffersReqeust;
- (SSPersonalizeOffersResponse)response;
- (id)_copyResponseForURL:(id)l requestString:(id)string error:(id *)error;
- (void)_addDictionaryToResponse:(id)response;
- (void)dealloc;
- (void)run;
@end

@implementation ISPersonalizeOffersOperation

- (ISPersonalizeOffersOperation)initWithPersonalizeOffersRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = ISPersonalizeOffersOperation;
  v4 = [(ISOperation *)&v6 init];
  if (v4)
  {
    v4->_request = [request copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISPersonalizeOffersOperation;
  [(ISPersonalizeOffersOperation *)&v3 dealloc];
}

- (ISPersonalizeOffersRequest)personalizeOffersReqeust
{
  v2 = [(ISPersonalizeOffersRequest *)self->_request copy];

  return v2;
}

- (SSPersonalizeOffersResponse)response
{
  [(ISOperation *)self lock];
  v3 = self->_response;
  [(ISOperation *)self unlock];
  return v3;
}

- (void)run
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if ([(ISPersonalizeOffersRequest *)self->_request accountIdentifier])
  {
    v3 = [MEMORY[0x277D69C90] contextWithBagType:0];
    if ([(ISOperation *)self loadURLBagWithContext:v3 returningError:&v27])
    {
      v4 = [objc_msgSend(+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [(ISPersonalizeOffersOperation *)self _runWithURLDictionary:v4 error:&v27];
        goto LABEL_37;
      }

      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v19 = shouldLog | 2;
      }

      else
      {
        v19 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v19 &= 2u;
      }

      if (!v19)
      {
LABEL_36:
        v5 = 0;
        goto LABEL_37;
      }

      v20 = objc_opt_class();
      v28 = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = @"personalized-buy-buttons";
      LODWORD(v26) = 22;
      v25 = &v28;
    }

    else
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        v15 = shouldLog2 | 2;
      }

      else
      {
        v15 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x277D69B38]2 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v15 &= 2u;
      }

      if (!v15)
      {
        goto LABEL_36;
      }

      v16 = objc_opt_class();
      v28 = 138412546;
      v29 = v16;
      v30 = 2112;
      v31 = v27;
      LODWORD(v26) = 22;
      v25 = &v28;
    }

    v21 = _os_log_send_and_compose_impl();
    if (v21)
    {
      v22 = v21;
      v23 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, &v28, v26}];
      free(v22);
      v25 = v23;
      SSFileLog();
    }

    goto LABEL_36;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    v8 = shouldLog3 | 2;
  }

  else
  {
    v8 = shouldLog3;
  }

  if (!os_log_type_enabled([mEMORY[0x277D69B38]3 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v28 = 138412290;
    v29 = objc_opt_class();
    LODWORD(v26) = 12;
    v25 = &v28;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v28, v26}];
      free(v10);
      v25 = v11;
      SSFileLog();
    }
  }

  v12 = *MEMORY[0x277D6A110];
  v5 = 0;
  v27 = SSError();
LABEL_37:
  [(ISOperation *)self setError:v27, v25];
  [(ISOperation *)self setSuccess:v5];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_addDictionaryToResponse:(id)response
{
  v33 = *MEMORY[0x277D85DE8];
  [(ISOperation *)self lock];
  if (!self->_response)
  {
    self->_response = objc_alloc_init(MEMORY[0x277D69BF0]);
  }

  v5 = [response objectForKey:@"owns-data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = [v5 objectForKey:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(SSPersonalizeOffersResponse *)self->_response setActionParameters:v11 forItemIdentifier:v10];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [response countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(response);
        }

        v16 = *(*(&v23 + 1) + 8 * j);
        v17 = [response objectForKey:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v16 rangeOfString:@"action-display-name-" options:8])
            {
              if (![v16 rangeOfString:@"button-text-" options:8])
              {
                v20 = [v16 substringFromIndex:v19];
                if ([v20 length])
                {
                  [(SSPersonalizeOffersResponse *)self->_response setPriceDisplayString:v17 forItemType:v20];
                }
              }
            }

            else
            {
              v21 = [v16 substringFromIndex:v18];
              if ([v21 length])
              {
                [(SSPersonalizeOffersResponse *)self->_response setActionDisplayNameString:v17 forItemType:v21];
              }
            }
          }
        }
      }

      v13 = [response countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v13);
  }

  [(ISOperation *)self unlock];
  v22 = *MEMORY[0x277D85DE8];
}

- (id)_copyResponseForURL:(id)l requestString:(id)string error:(id *)error
{
  v15 = 0;
  v9 = objc_alloc_init(ISStoreURLOperation);
  v10 = objc_alloc_init(ISJSONDataProvider);
  [(ISURLOperation *)v9 setDataProvider:v10];
  v11 = [objc_alloc(MEMORY[0x277D69A58]) initWithAccountIdentifier:{-[ISPersonalizeOffersRequest accountIdentifier](self->_request, "accountIdentifier")}];
  [(ISURLOperation *)v9 setAuthenticationContext:v11];

  v12 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:l];
  [v12 setHTTPBody:{objc_msgSend(string, "dataUsingEncoding:", 4)}];
  [v12 setHTTPMethod:@"POST"];
  [(ISURLOperation *)v9 setRequestProperties:v12];

  [(ISOperation *)self runSubOperation:v9 returningError:&v15];
  output = [(ISDataProvider *)v10 output];

  if (error)
  {
    *error = v15;
  }

  return output;
}

- (BOOL)_runWithURLDictionary:(id)dictionary error:(id *)error
{
  v91 = *MEMORY[0x277D85DE8];
  v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
  selfCopy = self;
  allItemTypes = [(ISPersonalizeOffersRequest *)self->_request allItemTypes];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = allItemTypes;
  v6 = [(NSArray *)allItemTypes countByEnumeratingWithState:&v81 objects:v90 count:16];
  v7 = 0x277CCA000uLL;
  if (v6)
  {
    v8 = v6;
    v9 = *v82;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v82 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v81 + 1) + 8 * i);
        v12 = [dictionary objectForKey:{v11, v63, v66}];
        v13 = *(v7 + 3240);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 length])
        {
          v14 = [v69 objectForKey:v12];
          if (!v14)
          {
            v14 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"ids="];
            [v69 setObject:v14 forKey:v12];
          }

          v15 = [(ISPersonalizeOffersRequest *)selfCopy->_request itemIdentifiersForItemType:v11];
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v77 objects:v86 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v78;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v78 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v77 + 1) + 8 * j);
                if ([v14 length] >= 5)
                {
                  [v14 appendString:{@", "}];
                }

                [v14 appendString:v20];
              }

              v17 = [v15 countByEnumeratingWithState:&v77 objects:v86 count:16];
            }

            while (v17);
          }

          v7 = 0x277CCA000;
        }

        else
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
          if (!mEMORY[0x277D69B38])
          {
            mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
          }

          shouldLog = [mEMORY[0x277D69B38] shouldLog];
          if ([mEMORY[0x277D69B38] shouldLogToDisk])
          {
            v23 = shouldLog | 2;
          }

          else
          {
            v23 = shouldLog;
          }

          if (os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v24 = v23;
          }

          else
          {
            v24 = v23 & 2;
          }

          if (v24)
          {
            v25 = objc_opt_class();
            *v87 = 138412546;
            *&v87[4] = v25;
            v88 = 2112;
            v89 = v11;
            LODWORD(v66) = 22;
            v63 = v87;
            v26 = _os_log_send_and_compose_impl();
            if (v26)
            {
              v27 = v26;
              v28 = [*(v7 + 3240) stringWithCString:v26 encoding:{4, v87, v66}];
              free(v27);
              v63 = v28;
              SSFileLog();
            }
          }
        }
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v81 objects:v90 count:16];
    }

    while (v8);
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v31 = shouldLog2 | 2;
  }

  else
  {
    v31 = shouldLog2;
  }

  if (os_log_type_enabled([mEMORY[0x277D69B38]2 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v32 = v31;
  }

  else
  {
    v32 = v31 & 2;
  }

  v33 = v69;
  v34 = selfCopy;
  if (v32)
  {
    v35 = objc_opt_class();
    v36 = [v69 count];
    *v87 = 138412546;
    *&v87[4] = v35;
    v88 = 2048;
    v89 = v36;
    LODWORD(v66) = 22;
    v64 = v87;
    v37 = _os_log_send_and_compose_impl();
    if (v37)
    {
      v38 = v37;
      v39 = [MEMORY[0x277CCACA8] stringWithCString:v37 encoding:{4, v87, v66}];
      free(v38);
      v64 = v39;
      SSFileLog();
    }
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v40 = [v69 countByEnumeratingWithState:&v73 objects:v85 count:{16, v64}];
  if (v40)
  {
    v41 = v40;
    v42 = 0;
    v71 = 0;
    v43 = *v74;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v74 != v43)
        {
          objc_enumerationMutation(v33);
        }

        v45 = *(*(&v73 + 1) + 8 * k);
        v46 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v45];
        if (v46)
        {
          v47 = v46;
          *v87 = 0;
          v48 = -[ISPersonalizeOffersOperation _copyResponseForURL:requestString:error:](v34, "_copyResponseForURL:requestString:error:", v46, [v33 objectForKey:v45], v87);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ISPersonalizeOffersOperation *)v34 _addDictionaryToResponse:v48];
          }

          else
          {
            ++v42;
            v57 = v71;
            if (!v71)
            {
              v57 = *v87;
            }

            v71 = v57;
          }
        }

        else
        {
          mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
          if (!mEMORY[0x277D69B38]3)
          {
            mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
          }

          shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
          if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
          {
            v51 = shouldLog3 | 2;
          }

          else
          {
            v51 = shouldLog3;
          }

          if (os_log_type_enabled([mEMORY[0x277D69B38]3 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v52 = v51;
          }

          else
          {
            v52 = v51 & 2;
          }

          if (v52)
          {
            v53 = objc_opt_class();
            *v87 = 138412546;
            *&v87[4] = v53;
            v88 = 2112;
            v89 = v45;
            LODWORD(v66) = 22;
            v65 = v87;
            v54 = _os_log_send_and_compose_impl();
            if (v54)
            {
              v55 = v54;
              v56 = [MEMORY[0x277CCACA8] stringWithCString:v54 encoding:{4, v87, v66}];
              free(v55);
              v65 = v56;
              SSFileLog();
            }
          }

          ++v42;
          v33 = v69;
          v34 = selfCopy;
        }
      }

      v41 = [v33 countByEnumeratingWithState:&v73 objects:v85 count:16];
    }

    while (v41);
    if (v42)
    {
      v58 = v42 < [v33 count];
    }

    else
    {
      v58 = 1;
    }

    errorCopy2 = error;
    v59 = v71;
  }

  else
  {
    v59 = 0;
    v58 = 1;
    errorCopy2 = error;
  }

  if (errorCopy2)
  {
    *errorCopy2 = v59;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v58;
}

@end