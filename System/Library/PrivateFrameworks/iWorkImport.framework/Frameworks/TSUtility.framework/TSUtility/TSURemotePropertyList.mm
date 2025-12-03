@interface TSURemotePropertyList
- (TSURemotePropertyList)init;
- (TSURemotePropertyList)initWithRemoteURL:(id)l localURL:(id)rL;
- (double)timeIntervalUntilNextUpdate;
- (id)URLForKey:(id)key;
- (id)URLRequest;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)numberForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)checkForUpdateWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)processDidResume:(id)resume;
- (void)processPropertyList:(id)list;
- (void)processResponse:(id)response data:(id)data error:(id)error;
- (void)processWillSuspend:(id)suspend;
- (void)startUpdateTimer;
- (void)updateIfNeededWithCompletionHandler:(id)handler;
@end

@implementation TSURemotePropertyList

- (TSURemotePropertyList)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURemotePropertyList init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURemoteDefaults.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:51 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSURemotePropertyList init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSURemotePropertyList)initWithRemoteURL:(id)l localURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v30.receiver = self;
  v30.super_class = TSURemotePropertyList;
  v8 = [(TSURemotePropertyList *)&v30 init];
  if (v8)
  {
    v9 = [lCopy copy];
    remoteURL = v8->_remoteURL;
    v8->_remoteURL = v9;

    v11 = [rLCopy copy];
    localURL = v8->_localURL;
    v8->_localURL = v11;

    if (rLCopy)
    {
      if (([rLCopy isFileURL] & 1) == 0)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURemotePropertyList initWithRemoteURL:localURL:]"];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURemoteDefaults.m"];
        [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:62 isFatal:0 description:"Local URL should be a file URL."];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:rLCopy];
      propertyList = v8->_propertyList;
      v8->_propertyList = v15;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v18 stringByAppendingString:@".Access"];

    v20 = dispatch_queue_create([v19 UTF8String], 0);
    accessQueue = v8->_accessQueue;
    v8->_accessQueue = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v23 stringByAppendingString:@".Check"];

    v25 = dispatch_queue_create([v24 UTF8String], 0);
    checkQueue = v8->_checkQueue;
    v8->_checkQueue = v25;

    [(TSURemotePropertyList *)v8 startUpdateTimer];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v28 = *MEMORY[0x277D76648];
    [defaultCenter addObserver:v8 selector:sel_processWillSuspend_ name:*MEMORY[0x277D76768] object:0];
    [defaultCenter addObserver:v8 selector:sel_processDidResume_ name:v28 object:0];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  updateTimer = self->_updateTimer;
  if (updateTimer)
  {
    dispatch_source_cancel(updateTimer);
  }

  v5.receiver = self;
  v5.super_class = TSURemotePropertyList;
  [(TSURemotePropertyList *)&v5 dealloc];
}

- (void)startUpdateTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_checkQueue);
  updateTimer = self->_updateTimer;
  self->_updateTimer = v3;

  [(TSURemotePropertyList *)self timeIntervalUntilNextUpdate];
  dispatch_source_set_timer(self->_updateTimer, (v5 * 1000000000.0), 0x4E94914F0000uLL, 0x34630B8A000uLL);
  objc_initWeak(&location, self);
  v6 = self->_updateTimer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770F48A8;
  v7[3] = &unk_27A7025A8;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_updateTimer);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)processWillSuspend:(id)suspend
{
  updateTimer = self->_updateTimer;
  if (updateTimer)
  {
    dispatch_source_cancel(updateTimer);
    v5 = self->_updateTimer;
    self->_updateTimer = 0;
  }
}

- (void)processDidResume:(id)resume
{
  if (!self->_updateTimer)
  {
    [(TSURemotePropertyList *)self startUpdateTimer];
  }
}

- (void)updateIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  checkQueue = self->_checkQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770F49E4;
  v7[3] = &unk_27A702858;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(checkQueue, v7);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2770F4B2C;
  v16 = sub_2770F4B3C;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770F4B44;
  block[3] = &unk_27A7019E0;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)numberForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(TSURemotePropertyList *)self objectForKey:keyCopy];

  v7 = TSUDynamicCast(v5, v6);

  return v7;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(TSURemotePropertyList *)self objectForKey:keyCopy];

  v7 = TSUDynamicCast(v5, v6);

  return v7;
}

- (id)URLForKey:(id)key
{
  v3 = [(TSURemotePropertyList *)self objectForKey:key];
  v4 = objc_opt_class();
  v5 = TSUDynamicCast(v4, v3);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = objc_opt_class();
    v8 = TSUDynamicCast(v7, v3);
    if (v8)
    {
      v5 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(TSURemotePropertyList *)self objectForKey:keyCopy];

  v7 = TSUDynamicCast(v5, v6);

  return v7;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(TSURemotePropertyList *)self objectForKey:keyCopy];

  v7 = TSUDynamicCast(v5, v6);

  return v7;
}

- (void)checkForUpdateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  uRLRequest = [(TSURemotePropertyList *)self URLRequest];
  dispatch_suspend(self->_checkQueue);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2770F4F3C;
  v8[3] = &unk_27A703A08;
  v9 = uRLRequest;
  v10 = handlerCopy;
  v8[4] = self;
  v6 = uRLRequest;
  v7 = handlerCopy;
  [TSUExecutionContext performWithApplication:v8];
}

- (double)timeIntervalUntilNextUpdate
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 stringByAppendingString:@"NextUpdate"];
  v6 = [standardUserDefaults objectForKey:v5];

  v7 = 0.0;
  if (v6)
  {
    v8 = objc_opt_class();
    v9 = TSUCheckedDynamicCast(v8, v6);

    if (v9)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [v6 timeIntervalSinceDate:date];
      v12 = v11;

      v7 = fmax(v12, 0.0);
    }
  }

  return v7;
}

- (id)URLRequest
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 stringByAppendingString:@"DownloadURL"];
  v7 = [standardUserDefaults stringForKey:v6];

  if (![v7 length] || (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, -[TSURemotePropertyList validateUserDefaultsDownloadURL:](self, "validateUserDefaultsDownloadURL:", v8), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v10 = self->_remoteURL;
  }

  v11 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v10];
  [v11 setTimeoutInterval:20.0];
  [v11 setCachePolicy:1];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v13 stringByAppendingString:@"ETag"];
  v15 = [standardUserDefaults stringForKey:v14];

  if ([v15 length])
  {
    [v11 setValue:v15 forHTTPHeaderField:@"If-None-Match"];
  }

  return v11;
}

- (void)processResponse:(id)response data:(id)data error:(id)error
{
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  statusCode = [responseCopy statusCode];
  v12 = statusCode;
  if (statusCode == 304 || statusCode == 200)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:86400.0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v16 stringByAppendingString:@"NextUpdate"];
    [standardUserDefaults setObject:v14 forKey:v17];

    if (v12 == 200 && [dataCopy length])
    {
      v25 = 0;
      v18 = [(TSURemotePropertyList *)self deserializePropertyListData:dataCopy error:&v25];
      v19 = v25;

      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [(TSURemotePropertyList *)self processPropertyList:v18];
        allHeaderFields = [responseCopy allHeaderFields];
        v21 = [allHeaderFields objectForKey:@"Etag"];

        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [v23 stringByAppendingString:@"ETag"];
        [standardUserDefaults setObject:v21 forKey:v24];

        self->_didUpdateAtLeastOnce = 1;
      }

      else if (TSUDefaultCat_init_token != -1)
      {
        sub_2771158C4();
      }

      errorCopy = v19;
    }
  }
}

- (void)processPropertyList:(id)list
{
  listCopy = list;
  v5 = listCopy;
  localURL = self->_localURL;
  if (localURL && ([listCopy writeToURL:localURL atomically:0] & 1) == 0 && TSUDefaultCat_init_token != -1)
  {
    sub_2771158EC();
  }

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2770F5728;
  v9[3] = &unk_27A702450;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(accessQueue, v9);
}

@end