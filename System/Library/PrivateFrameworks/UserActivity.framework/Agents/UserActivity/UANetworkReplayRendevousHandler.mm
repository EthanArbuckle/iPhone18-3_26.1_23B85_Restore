@interface UANetworkReplayRendevousHandler
- (BOOL)resume;
- (BOOL)scanForPeersOfType:(id)type domain:(id)domain;
- (BOOL)suspend;
- (UANetworkReplayRendevousHandler)initWithManager:(id)manager;
- (id)statusString;
- (void)dealloc;
- (void)netService:(id)service didAcceptConnectionWithInputStream:(id)stream outputStream:(id)outputStream;
- (void)netService:(id)service didNotPublish:(id)publish;
- (void)netService:(id)service didNotResolve:(id)resolve;
- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming;
- (void)netServiceDidPublish:(id)publish;
- (void)netServiceDidResolveAddress:(id)address;
- (void)netServiceDidStop:(id)stop;
- (void)netServiceWillPublish:(id)publish;
- (void)netServiceWillResolve:(id)resolve;
@end

@implementation UANetworkReplayRendevousHandler

- (UANetworkReplayRendevousHandler)initWithManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = UANetworkReplayRendevousHandler;
  return [(UACornerActionManagerHandler *)&v4 initWithManager:manager name:@"ReplayRendevousHandler"];
}

- (void)dealloc
{
  browserLookup = [(UANetworkReplayRendevousHandler *)self browserLookup];

  if (browserLookup)
  {
    browserLookup2 = [(UANetworkReplayRendevousHandler *)self browserLookup];
    [browserLookup2 stop];

    browserLookup3 = [(UANetworkReplayRendevousHandler *)self browserLookup];
    v6 = +[NSRunLoop mainRunLoop];
    [browserLookup3 removeFromRunLoop:v6 forMode:NSRunLoopCommonModes];
  }

  v7.receiver = self;
  v7.super_class = UANetworkReplayRendevousHandler;
  [(UANetworkReplayRendevousHandler *)&v7 dealloc];
}

- (BOOL)scanForPeersOfType:(id)type domain:(id)domain
{
  if (type)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = @"_handoff._tcp.";
  }

  domainCopy = domain;
  [(UANetworkReplayRendevousHandler *)self setType:typeCopy];
  if (domainCopy)
  {
    v7 = domainCopy;
  }

  else
  {
    v7 = @"local";
  }

  [(UANetworkReplayRendevousHandler *)self setDomain:v7];

  browserLookup = [(UANetworkReplayRendevousHandler *)self browserLookup];

  if (!browserLookup)
  {
    v9 = objc_alloc_init(NSNetServiceBrowser);
    [(UANetworkReplayRendevousHandler *)self setBrowserLookup:v9];

    browserLookup2 = [(UANetworkReplayRendevousHandler *)self browserLookup];
    [browserLookup2 setDelegate:self];

    browserLookup3 = [(UANetworkReplayRendevousHandler *)self browserLookup];
    v12 = +[NSRunLoop mainRunLoop];
    [browserLookup3 scheduleInRunLoop:v12 forMode:NSRunLoopCommonModes];
  }

  if (![(UACornerActionManagerHandler *)self suspended])
  {
    browserLookup4 = [(UANetworkReplayRendevousHandler *)self browserLookup];
    type = [(UANetworkReplayRendevousHandler *)self type];
    domain = [(UANetworkReplayRendevousHandler *)self domain];
    [browserLookup4 searchForServicesOfType:type inDomain:domain];
  }

  return 1;
}

- (BOOL)suspend
{
  v7.receiver = self;
  v7.super_class = UANetworkReplayRendevousHandler;
  suspend = [(UACornerActionManagerHandler *)&v7 suspend];
  if (suspend)
  {
    browserLookup = [(UANetworkReplayRendevousHandler *)self browserLookup];

    if (browserLookup)
    {
      browserLookup2 = [(UANetworkReplayRendevousHandler *)self browserLookup];
      [browserLookup2 stop];
    }
  }

  return suspend;
}

- (BOOL)resume
{
  v11.receiver = self;
  v11.super_class = UANetworkReplayRendevousHandler;
  resume = [(UACornerActionManagerHandler *)&v11 resume];
  if (resume)
  {
    browserLookup = [(UANetworkReplayRendevousHandler *)self browserLookup];

    if (browserLookup)
    {
      v5 = sub_100001A30(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        type = [(UANetworkReplayRendevousHandler *)self type];
        domain = [(UANetworkReplayRendevousHandler *)self domain];
        *buf = 138543618;
        v13 = type;
        v14 = 2114;
        v15 = domain;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "NETWORK:Starting browse for rendezous items for %{public}@ %{public}@.", buf, 0x16u);
      }

      type2 = [(UANetworkReplayRendevousHandler *)self type];
      domain2 = [(UANetworkReplayRendevousHandler *)self domain];
      [(UANetworkReplayRendevousHandler *)self scanForPeersOfType:type2 domain:domain2];
    }
  }

  return resume;
}

- (id)statusString
{
  listeningService = [(UANetworkReplayRendevousHandler *)self listeningService];
  if (listeningService)
  {
    listeningService2 = [(UANetworkReplayRendevousHandler *)self listeningService];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"listening, port=%ld", [listeningService2 port]);
  }

  else
  {
    v5 = &stru_1000C67D0;
  }

  browserLookup = [(UANetworkReplayRendevousHandler *)self browserLookup];
  if (browserLookup)
  {
    type = [(UANetworkReplayRendevousHandler *)self type];
    domain = [(UANetworkReplayRendevousHandler *)self domain];
    v9 = [NSString stringWithFormat:@"browsing for %@ in %@", type, domain];
    v10 = [NSString stringWithFormat:@"Network, %@  %@", v5, v9];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"Network, %@  %@", v5, &stru_1000C67D0];
  }

  if (listeningService)
  {
  }

  return v10;
}

- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming
{
  comingCopy = coming;
  browserCopy = browser;
  serviceCopy = service;
  v10 = objc_autoreleasePoolPush();
  v11 = sub_100001A30(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    name = [serviceCopy name];
    v13 = name;
    v14 = @"NO";
    v24 = 138413058;
    v25 = browserCopy;
    v26 = 2112;
    if (comingCopy)
    {
      v14 = @"YES";
    }

    v27 = name;
    v28 = 2112;
    v29 = serviceCopy;
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "NETWORK: browser=%@ service=%@/%@ more=%@", &v24, 0x2Au);
  }

  name2 = [(UANetworkReplayRendevousHandler *)self name];
  if (!name2)
  {
    goto LABEL_7;
  }

  v16 = name2;
  name3 = [(UANetworkReplayRendevousHandler *)self name];
  name4 = [serviceCopy name];
  v19 = [name3 isEqual:name4];

  if ((v19 & 1) == 0)
  {
LABEL_7:
    v20 = [UANetworkReplayController alloc];
    manager = [(UACornerActionManagerHandler *)self manager];
    v22 = [(UANetworkReplayController *)v20 initWithManager:manager service:serviceCopy];

    manager2 = [(UACornerActionManagerHandler *)self manager];
    [manager2 addHandler:v22];
  }

  objc_autoreleasePoolPop(v10);
}

- (void)netServiceWillPublish:(id)publish
{
  publishCopy = publish;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
}

- (void)netServiceDidPublish:(id)publish
{
  publishCopy = publish;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
}

- (void)netService:(id)service didNotPublish:(id)publish
{
  serviceCopy = service;
  publishCopy = publish;
  v7 = objc_autoreleasePoolPush();
  v8 = [publishCopy objectForKeyedSubscript:@"NSNetServicesErrorDomain"];
  if (v8 == NSNetServicesErrorCode)
  {
    v9 = sub_100001A30(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [publishCopy objectForKeyedSubscript:@"NSNetServicesErrorCode"];
      integerValue = [v10 integerValue];
      v12 = [publishCopy description];
      v13 = sub_100009684(v12);
      v14 = 134218242;
      v15 = integerValue;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "NETWORK: NSNetServicesErrorCode=%ld / %{public}@", &v14, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)netServiceWillResolve:(id)resolve
{
  resolveCopy = resolve;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
}

- (void)netServiceDidResolveAddress:(id)address
{
  addressCopy = address;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
}

- (void)netService:(id)service didNotResolve:(id)resolve
{
  serviceCopy = service;
  resolveCopy = resolve;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
}

- (void)netServiceDidStop:(id)stop
{
  stopCopy = stop;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100001A30(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138477827;
    v8 = stopCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "NETWORK: netServicesDidStop, so terminating this listener, sender=%{private}@.", &v7, 0xCu);
  }

  [(UACornerActionManagerHandler *)self terminate];
  objc_autoreleasePoolPop(v5);
}

- (void)netService:(id)service didAcceptConnectionWithInputStream:(id)stream outputStream:(id)outputStream
{
  serviceCopy = service;
  streamCopy = stream;
  outputStreamCopy = outputStream;
  v10 = objc_autoreleasePoolPush();
  v11 = [UANetworkReplayController alloc];
  manager = [(UACornerActionManagerHandler *)self manager];
  name = [serviceCopy name];
  v14 = [(UANetworkReplayController *)v11 initWithManager:manager inputStream:streamCopy outputStream:outputStreamCopy name:name];

  manager2 = [(UACornerActionManagerHandler *)self manager];
  [manager2 addHandler:v14];

  objc_autoreleasePoolPop(v10);
}

@end