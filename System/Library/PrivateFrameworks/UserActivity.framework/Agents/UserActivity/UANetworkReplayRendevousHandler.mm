@interface UANetworkReplayRendevousHandler
- (BOOL)resume;
- (BOOL)scanForPeersOfType:(id)a3 domain:(id)a4;
- (BOOL)suspend;
- (UANetworkReplayRendevousHandler)initWithManager:(id)a3;
- (id)statusString;
- (void)dealloc;
- (void)netService:(id)a3 didAcceptConnectionWithInputStream:(id)a4 outputStream:(id)a5;
- (void)netService:(id)a3 didNotPublish:(id)a4;
- (void)netService:(id)a3 didNotResolve:(id)a4;
- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceDidPublish:(id)a3;
- (void)netServiceDidResolveAddress:(id)a3;
- (void)netServiceDidStop:(id)a3;
- (void)netServiceWillPublish:(id)a3;
- (void)netServiceWillResolve:(id)a3;
@end

@implementation UANetworkReplayRendevousHandler

- (UANetworkReplayRendevousHandler)initWithManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = UANetworkReplayRendevousHandler;
  return [(UACornerActionManagerHandler *)&v4 initWithManager:a3 name:@"ReplayRendevousHandler"];
}

- (void)dealloc
{
  v3 = [(UANetworkReplayRendevousHandler *)self browserLookup];

  if (v3)
  {
    v4 = [(UANetworkReplayRendevousHandler *)self browserLookup];
    [v4 stop];

    v5 = [(UANetworkReplayRendevousHandler *)self browserLookup];
    v6 = +[NSRunLoop mainRunLoop];
    [v5 removeFromRunLoop:v6 forMode:NSRunLoopCommonModes];
  }

  v7.receiver = self;
  v7.super_class = UANetworkReplayRendevousHandler;
  [(UANetworkReplayRendevousHandler *)&v7 dealloc];
}

- (BOOL)scanForPeersOfType:(id)a3 domain:(id)a4
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"_handoff._tcp.";
  }

  v6 = a4;
  [(UANetworkReplayRendevousHandler *)self setType:v5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"local";
  }

  [(UANetworkReplayRendevousHandler *)self setDomain:v7];

  v8 = [(UANetworkReplayRendevousHandler *)self browserLookup];

  if (!v8)
  {
    v9 = objc_alloc_init(NSNetServiceBrowser);
    [(UANetworkReplayRendevousHandler *)self setBrowserLookup:v9];

    v10 = [(UANetworkReplayRendevousHandler *)self browserLookup];
    [v10 setDelegate:self];

    v11 = [(UANetworkReplayRendevousHandler *)self browserLookup];
    v12 = +[NSRunLoop mainRunLoop];
    [v11 scheduleInRunLoop:v12 forMode:NSRunLoopCommonModes];
  }

  if (![(UACornerActionManagerHandler *)self suspended])
  {
    v13 = [(UANetworkReplayRendevousHandler *)self browserLookup];
    v14 = [(UANetworkReplayRendevousHandler *)self type];
    v15 = [(UANetworkReplayRendevousHandler *)self domain];
    [v13 searchForServicesOfType:v14 inDomain:v15];
  }

  return 1;
}

- (BOOL)suspend
{
  v7.receiver = self;
  v7.super_class = UANetworkReplayRendevousHandler;
  v3 = [(UACornerActionManagerHandler *)&v7 suspend];
  if (v3)
  {
    v4 = [(UANetworkReplayRendevousHandler *)self browserLookup];

    if (v4)
    {
      v5 = [(UANetworkReplayRendevousHandler *)self browserLookup];
      [v5 stop];
    }
  }

  return v3;
}

- (BOOL)resume
{
  v11.receiver = self;
  v11.super_class = UANetworkReplayRendevousHandler;
  v3 = [(UACornerActionManagerHandler *)&v11 resume];
  if (v3)
  {
    v4 = [(UANetworkReplayRendevousHandler *)self browserLookup];

    if (v4)
    {
      v5 = sub_100001A30(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [(UANetworkReplayRendevousHandler *)self type];
        v7 = [(UANetworkReplayRendevousHandler *)self domain];
        *buf = 138543618;
        v13 = v6;
        v14 = 2114;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "NETWORK:Starting browse for rendezous items for %{public}@ %{public}@.", buf, 0x16u);
      }

      v8 = [(UANetworkReplayRendevousHandler *)self type];
      v9 = [(UANetworkReplayRendevousHandler *)self domain];
      [(UANetworkReplayRendevousHandler *)self scanForPeersOfType:v8 domain:v9];
    }
  }

  return v3;
}

- (id)statusString
{
  v4 = [(UANetworkReplayRendevousHandler *)self listeningService];
  if (v4)
  {
    v2 = [(UANetworkReplayRendevousHandler *)self listeningService];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"listening, port=%ld", [v2 port]);
  }

  else
  {
    v5 = &stru_1000C67D0;
  }

  v6 = [(UANetworkReplayRendevousHandler *)self browserLookup];
  if (v6)
  {
    v7 = [(UANetworkReplayRendevousHandler *)self type];
    v8 = [(UANetworkReplayRendevousHandler *)self domain];
    v9 = [NSString stringWithFormat:@"browsing for %@ in %@", v7, v8];
    v10 = [NSString stringWithFormat:@"Network, %@  %@", v5, v9];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"Network, %@  %@", v5, &stru_1000C67D0];
  }

  if (v4)
  {
  }

  return v10;
}

- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = sub_100001A30(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v9 name];
    v13 = v12;
    v14 = @"NO";
    v24 = 138413058;
    v25 = v8;
    v26 = 2112;
    if (v5)
    {
      v14 = @"YES";
    }

    v27 = v12;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "NETWORK: browser=%@ service=%@/%@ more=%@", &v24, 0x2Au);
  }

  v15 = [(UANetworkReplayRendevousHandler *)self name];
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = v15;
  v17 = [(UANetworkReplayRendevousHandler *)self name];
  v18 = [v9 name];
  v19 = [v17 isEqual:v18];

  if ((v19 & 1) == 0)
  {
LABEL_7:
    v20 = [UANetworkReplayController alloc];
    v21 = [(UACornerActionManagerHandler *)self manager];
    v22 = [(UANetworkReplayController *)v20 initWithManager:v21 service:v9];

    v23 = [(UACornerActionManagerHandler *)self manager];
    [v23 addHandler:v22];
  }

  objc_autoreleasePoolPop(v10);
}

- (void)netServiceWillPublish:(id)a3
{
  v3 = a3;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
}

- (void)netServiceDidPublish:(id)a3
{
  v3 = a3;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
}

- (void)netService:(id)a3 didNotPublish:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 objectForKeyedSubscript:@"NSNetServicesErrorDomain"];
  if (v8 == NSNetServicesErrorCode)
  {
    v9 = sub_100001A30(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v6 objectForKeyedSubscript:@"NSNetServicesErrorCode"];
      v11 = [v10 integerValue];
      v12 = [v6 description];
      v13 = sub_100009684(v12);
      v14 = 134218242;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "NETWORK: NSNetServicesErrorCode=%ld / %{public}@", &v14, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)netServiceWillResolve:(id)a3
{
  v3 = a3;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
}

- (void)netServiceDidResolveAddress:(id)a3
{
  v3 = a3;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
}

- (void)netService:(id)a3 didNotResolve:(id)a4
{
  v6 = a3;
  v5 = a4;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
}

- (void)netServiceDidStop:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100001A30(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138477827;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "NETWORK: netServicesDidStop, so terminating this listener, sender=%{private}@.", &v7, 0xCu);
  }

  [(UACornerActionManagerHandler *)self terminate];
  objc_autoreleasePoolPop(v5);
}

- (void)netService:(id)a3 didAcceptConnectionWithInputStream:(id)a4 outputStream:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [UANetworkReplayController alloc];
  v12 = [(UACornerActionManagerHandler *)self manager];
  v13 = [v16 name];
  v14 = [(UANetworkReplayController *)v11 initWithManager:v12 inputStream:v8 outputStream:v9 name:v13];

  v15 = [(UACornerActionManagerHandler *)self manager];
  [v15 addHandler:v14];

  objc_autoreleasePoolPop(v10);
}

@end