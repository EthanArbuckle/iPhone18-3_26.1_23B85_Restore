@interface MADAutoAssetConnectorObserver
- (MADAutoAssetConnectorObserver)initWithCoder:(id)coder;
- (id)initForServerPath:(id)path;
- (id)summary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation MADAutoAssetConnectorObserver

- (id)initForServerPath:(id)path
{
  pathCopy = path;
  v31.receiver = self;
  v31.super_class = MADAutoAssetConnectorObserver;
  v6 = [(MADAutoAssetConnectorObserver *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pathToServer, path);
    pathEvaluator = v7->_pathEvaluator;
    v7->_pathEvaluator = 0;

    uTF8String = [@"com.apple.MobileAsset.autoassetconnectorobserver.status" UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    pathStatusDispatchQueue = v7->_pathStatusDispatchQueue;
    v7->_pathStatusDispatchQueue = v11;

    v7->_pathToServerIsUp = 0;
    if (!objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class())
    {
      v14 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        pathToServer = [(MADAutoAssetConnectorObserver *)v7 pathToServer];
        absoluteString = [pathToServer absoluteString];
        *buf = 138543362;
        v33 = absoluteString;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[CONNECTION-OBSERVER] {initForServerPath} NWPathEvaluator not available | pathToServer:%{public}@", buf, 0xCu);
      }

      goto LABEL_18;
    }

    absoluteString2 = [pathCopy absoluteString];
    v14 = [NWHostEndpoint endpointWithHostname:absoluteString2 port:@"443"];

    v15 = objc_alloc_init(NWParameters);
    v16 = [[NWPathEvaluator alloc] initWithEndpoint:v14 parameters:v15];
    v17 = v7->_pathEvaluator;
    v7->_pathEvaluator = v16;

    path = [(NWPathEvaluator *)v7->_pathEvaluator path];
    status = [path status];
    if (status == &dword_0 + 1)
    {
      [(MADAutoAssetConnectorObserver *)v7 setPathToServerIsUp:1];
      v20 = _MADLog(@"AutoScheduler");
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:

        [(NWPathEvaluator *)v7->_pathEvaluator addObserver:v7 forKeyPath:@"path" options:5 context:0];
LABEL_18:

        goto LABEL_19;
      }

      pathToServer2 = [(MADAutoAssetConnectorObserver *)v7 pathToServer];
      absoluteString3 = [pathToServer2 absoluteString];
      *buf = 138543362;
      v33 = absoluteString3;
      v23 = "[CONNECTION-OBSERVER] {initForServerPath} starting UP | pathStatus:NWPathStatusSatisfied | pathToServer:%{public}@";
      v24 = v20;
      v25 = 12;
    }

    else
    {
      v28 = status;
      [(MADAutoAssetConnectorObserver *)v7 setPathToServerIsUp:0];
      if (v28 > 3)
      {
        v29 = @"UNKNOWN";
      }

      else
      {
        v29 = off_4B4C10[v28];
      }

      v20 = _MADLog(@"AutoScheduler");
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      pathToServer2 = [(MADAutoAssetConnectorObserver *)v7 pathToServer];
      absoluteString3 = [pathToServer2 absoluteString];
      *buf = 138543618;
      v33 = v29;
      v34 = 2114;
      v35 = absoluteString3;
      v23 = "[CONNECTION-OBSERVER] {initForServerPath} starting DOWN | pathStatus:%{public}@ | pathToServer:%{public}@";
      v24 = v20;
      v25 = 22;
    }

    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

    goto LABEL_17;
  }

LABEL_19:

  return v7;
}

- (void)dealloc
{
  pathEvaluator = [(MADAutoAssetConnectorObserver *)self pathEvaluator];

  if (pathEvaluator)
  {
    pathEvaluator2 = [(MADAutoAssetConnectorObserver *)self pathEvaluator];
    [pathEvaluator2 removeObserver:self forKeyPath:@"path"];

    [(MADAutoAssetConnectorObserver *)self setPathEvaluator:0];
  }

  v5.receiver = self;
  v5.super_class = MADAutoAssetConnectorObserver;
  [(MADAutoAssetConnectorObserver *)&v5 dealloc];
}

- (MADAutoAssetConnectorObserver)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADAutoAssetConnectorObserver;
  v5 = [(MADAutoAssetConnectorObserver *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pathToServer"];
    pathToServer = v5->_pathToServer;
    v5->_pathToServer = v6;

    v5->_pathToServerIsUp = [coderCopy decodeBoolForKey:@"pathToServerIsUp"];
    pathEvaluator = v5->_pathEvaluator;
    v5->_pathEvaluator = 0;

    pathStatusDispatchQueue = v5->_pathStatusDispatchQueue;
    v5->_pathStatusDispatchQueue = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pathToServer = [(MADAutoAssetConnectorObserver *)self pathToServer];
  [coderCopy encodeObject:pathToServer forKey:@"pathToServer"];

  [coderCopy encodeBool:-[MADAutoAssetConnectorObserver pathToServerIsUp](self forKey:{"pathToServerIsUp"), @"pathToServerIsUp"}];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = [(MADAutoAssetConnectorObserver *)self pathStatusDispatchQueue:path];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __80__MADAutoAssetConnectorObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_async(v7, block);
}

void __80__MADAutoAssetConnectorObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pathEvaluator];
  v3 = [v2 path];

  v4 = [v3 status];
  if (v4 == &dword_0 + 2)
  {
    if ([*(a1 + 32) pathToServerIsUp])
    {
      [*(a1 + 32) setPathToServerIsUp:0];
      v9 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) pathToServer];
        v11 = [v10 absoluteString];
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[CONNECTION-OBSERVER] {observeValueForKeyPath} connection DOWN | pathStatus:NWPathStatusUnsatisfied | pathToServer:%{public}@", &v12, 0xCu);
      }

      v8 = [*(a1 + 32) pathToServer];
      [MADAutoAssetConnector observedNetworkPathToServerDown:v8];
      goto LABEL_11;
    }
  }

  else if (v4 == &dword_0 + 1 && ([*(a1 + 32) pathToServerIsUp] & 1) == 0)
  {
    [*(a1 + 32) setPathToServerIsUp:1];
    v5 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) pathToServer];
      v7 = [v6 absoluteString];
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[CONNECTION-OBSERVER] {observeValueForKeyPath} connection UP | pathStatus:NWPathStatusSatisfied | pathToServer:%{public}@", &v12, 0xCu);
    }

    v8 = [*(a1 + 32) pathToServer];
    [MADAutoAssetConnector observedNetworkPathToServerUp:v8];
LABEL_11:
  }
}

- (id)summary
{
  pathToServer = [(MADAutoAssetConnectorObserver *)self pathToServer];
  pathEvaluator = [(MADAutoAssetConnectorObserver *)self pathEvaluator];
  v5 = @"Y";
  if (!pathEvaluator)
  {
    v5 = @"N";
  }

  v6 = [NSString stringWithFormat:@"[pathToServer:%@|pathEvaluator:%@]", pathToServer, v5];

  return v6;
}

@end