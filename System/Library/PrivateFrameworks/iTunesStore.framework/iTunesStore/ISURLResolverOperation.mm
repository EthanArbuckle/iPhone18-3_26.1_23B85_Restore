@interface ISURLResolverOperation
- (ISURLResolverOperation)initWithURL:(id)l;
- (NSArray)resolvedAddressStrings;
- (NSArray)resolvedAddresses;
- (id)url;
- (void)_resolutionCompletedWithError:(id)error;
- (void)_runLookupForHostname:(id)hostname;
- (void)dealloc;
- (void)run;
- (void)setUrl:(id)url;
@end

@implementation ISURLResolverOperation

- (ISURLResolverOperation)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = ISURLResolverOperation;
  v5 = [(ISOperation *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (void)dealloc
{
  host = self->_host;
  if (host)
  {
    CFRelease(host);
  }

  v4.receiver = self;
  v4.super_class = ISURLResolverOperation;
  [(ISURLResolverOperation *)&v4 dealloc];
}

- (NSArray)resolvedAddresses
{
  v18 = *MEMORY[0x277D85DE8];
  hasBeenResolved = 0;
  v2 = CFHostGetAddressing(self->_host, &hasBeenResolved);
  if (hasBeenResolved)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) copy];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)resolvedAddressStrings
{
  v20 = *MEMORY[0x277D85DE8];
  resolvedAddresses = [(ISURLResolverOperation *)self resolvedAddresses];
  if (resolvedAddresses)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = resolvedAddresses;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = v9;
          if (getnameinfo([v10 bytes], objc_msgSend(v9, "length"), v18, 0x401u, 0, 0, 2))
          {

            v3 = 0;
            goto LABEL_12;
          }

          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
          [v3 addObject:v11];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v3 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setUrl:(id)url
{
  urlCopy = url;
  [(ISOperation *)self lock];
  v5 = [urlCopy copy];

  url = self->_url;
  self->_url = v5;

  [(ISOperation *)self unlock];
}

- (id)url
{
  [(ISOperation *)self lock];
  v3 = [(NSURL *)self->_url copy];
  [(ISOperation *)self unlock];

  return v3;
}

- (void)run
{
  v5 = +[ISNetworkObserver sharedInstance];
  [v5 beginUsingNetwork];
  v3 = [(ISURLResolverOperation *)self url];
  host = [v3 host];

  if (host)
  {
    [(ISURLResolverOperation *)self _runLookupForHostname:host];
  }

  [v5 endUsingNetwork];
}

- (void)_resolutionCompletedWithError:(id)error
{
  errorCopy = error;
  [(ISOperation *)self stopRunLoop];
  operationRunLoop = [(ISOperation *)self operationRunLoop];
  getCFRunLoop = [operationRunLoop getCFRunLoop];

  CFHostSetClient(self->_host, 0, 0);
  CFHostUnscheduleFromRunLoop(self->_host, getCFRunLoop, *MEMORY[0x277CBF058]);
  CFHostCancelInfoResolution(self->_host, kCFHostAddresses);
  [(ISOperation *)self setError:errorCopy];

  [(ISOperation *)self setSuccess:errorCopy == 0];
}

- (void)_runLookupForHostname:(id)hostname
{
  clientContext.version = 0;
  memset(&clientContext.retain, 0, 24);
  clientContext.info = self;
  error.domain = 0;
  *&error.error = 0;
  v4 = CFHostCreateWithName(*MEMORY[0x277CBECE8], hostname);
  self->_host = v4;
  if (!CFHostSetClient(v4, _HostResolutionCallback, &clientContext))
  {
    v13 = 3;
LABEL_18:
    v14 = ISError(v13, 0, 0);
    goto LABEL_20;
  }

  operationRunLoop = [(ISOperation *)self operationRunLoop];
  getCFRunLoop = [operationRunLoop getCFRunLoop];

  CFHostScheduleWithRunLoop(self->_host, getCFRunLoop, *MEMORY[0x277CBF058]);
  if (CFHostStartInfoResolution(self->_host, kCFHostAddresses, &error))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v17[0] = 0;
      LODWORD(v16) = 2;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_15:

        [(ISOperation *)self runRunLoopUntilStopped];
        if (![(ISURLResolverOperation *)self isCancelled])
        {
          return;
        }

        v13 = 16;
        goto LABEL_18;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, v17, v16}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v14 = _errorForStreamError(&error);
LABEL_20:
  v15 = v14;
  if (v14)
  {
    [(ISURLResolverOperation *)self _resolutionCompletedWithError:v14];
  }
}

@end