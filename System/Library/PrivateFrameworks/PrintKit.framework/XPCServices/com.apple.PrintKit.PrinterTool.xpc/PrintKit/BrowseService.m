@interface BrowseService
- (BrowseService)initWithProxy:(id)a3 session:(id)a4;
- (void)_checkSync;
- (void)_setupBrowser:(id)a3;
- (void)_syncTimerFired;
- (void)addEntity:(id)a3;
- (void)removeEntity:(id)a3;
- (void)startBrowsing:(id)a3 provenance:(unint64_t)a4;
- (void)stopBrowsing;
- (void)stopBrowsing0;
- (void)updateEntity:(id)a3;
@end

@implementation BrowseService

- (BrowseService)initWithProxy:(id)a3 session:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = BrowseService;
  v9 = [(BrowseService *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_proxy, a3);
    objc_storeStrong(&v10->_session, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.printing.BrowseService", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v10->_queue);
    syncTimer = v10->_syncTimer;
    v10->_syncTimer = v14;

    objc_initWeak(&location, v10);
    v16 = [NSString stringWithFormat:@"%@: sync timer %p", v10, v10->_syncTimer];
    v17 = v10->_syncTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005EF5C;
    handler[3] = &unk_1000A2328;
    objc_copyWeak(&v21, &location);
    dispatch_source_set_event_handler(v17, handler);
    dispatch_source_set_cancel_handler(v10->_syncTimer, &stru_1000A3F00);
    dispatch_source_set_timer(v10->_syncTimer, 0, 0xFFFFFFFFFFFFFFFFLL, 0);
    v10->_syncTimerSuspendedCount = 0;
    v18 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setup with %@", buf, 0xCu);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)_syncTimerFired
{
  syncTimerSuspendedCount = self->_syncTimerSuspendedCount;
  if (syncTimerSuspendedCount >= 2)
  {
    v4 = pow(1.0 / syncTimerSuspendedCount, 0.7);
  }

  else
  {
    v4 = 0.1;
  }

  v5 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_syncTimerSuspendedCount;
    v20 = 134218240;
    v21 = v4;
    v22 = 1024;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "next sync timer delay %g, count %d", &v20, 0x12u);
  }

  dispatch_suspend(self->_syncTimer);
  self->_syncTimerSuspendedCount = 0;
  v7 = [(PrintInfoSet *)self->_browseInfos uniquedBrowseInfos];
  v8 = v7;
  p_lastBrowseInfos = &self->_lastBrowseInfos;
  lastBrowseInfos = self->_lastBrowseInfos;
  if (v7)
  {
    if (!lastBrowseInfos)
    {
      proxy = self->_proxy;
      v12 = +[NSSet set];
      [(PKPrintdRPC_BrowseClient_ClientProtocol *)proxy browserAdded:v8 removed:v12];
      goto LABEL_15;
    }
  }

  else if (lastBrowseInfos)
  {
    v13 = self->_proxy;
    v12 = +[NSSet set];
    [(PKPrintdRPC_BrowseClient_ClientProtocol *)v13 browserAdded:v12 removed:*p_lastBrowseInfos];
    goto LABEL_15;
  }

  v12 = [v7 mutableCopy];
  [v12 minusSet:*p_lastBrowseInfos];
  v14 = [(NSSet *)*p_lastBrowseInfos mutableCopy];
  [v14 minusSet:v8];
  if ([v12 count] || objc_msgSend(v14, "count"))
  {
    [(PKPrintdRPC_BrowseClient_ClientProtocol *)self->_proxy browserAdded:v12 removed:v14];
  }

LABEL_15:
  if ([v8 count])
  {
    objc_storeStrong(&self->_lastBrowseInfos, v8);
    v15 = (v4 * 1000000000.0);
  }

  else
  {
    v16 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "next sync timer delay set to ASAP", &v20, 2u);
    }

    v17 = *p_lastBrowseInfos;
    *p_lastBrowseInfos = 0;

    v15 = 0;
  }

  syncTimer = self->_syncTimer;
  v19 = dispatch_time(0xFFFFFFFFFFFFFFFELL, v15);
  dispatch_source_set_timer(syncTimer, v19, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_checkSync
{
  syncTimerSuspendedCount = self->_syncTimerSuspendedCount;
  self->_syncTimerSuspendedCount = syncTimerSuspendedCount + 1;
  if (!syncTimerSuspendedCount)
  {
    syncTimer = self->_syncTimer;
    if (syncTimer)
    {
      dispatch_resume(syncTimer);
    }
  }
}

- (void)addEntity:(id)a3
{
  v8 = a3;
  if (([(NSMutableSet *)self->_entities containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_entities addObject:v8];
    browseInfos = self->_browseInfos;
    if (!browseInfos)
    {
      v5 = objc_opt_new();
      v6 = self->_browseInfos;
      self->_browseInfos = v5;

      browseInfos = self->_browseInfos;
    }

    v7 = [v8 browseInfo];
    [(PrintInfoSet *)browseInfos addInfo:v7];

    [(BrowseService *)self _checkSync];
  }
}

- (void)removeEntity:(id)a3
{
  v6 = a3;
  if ([(NSMutableSet *)self->_entities containsObject:?])
  {
    [(NSMutableSet *)self->_entities removeObject:v6];
    browseInfos = self->_browseInfos;
    if (browseInfos)
    {
      v5 = [v6 browseInfo];
      [(PrintInfoSet *)browseInfos removeInfo:v5];
    }

    [(BrowseService *)self _checkSync];
  }
}

- (void)updateEntity:(id)a3
{
  v4 = a3;
  [(BrowseService *)self removeEntity:?];
  [(BrowseService *)self addEntity:v4];
}

- (void)startBrowsing:(id)a3 provenance:(unint64_t)a4
{
  v20 = a3;
  v6 = objc_opt_new();
  entities = self->_entities;
  self->_entities = v6;

  if (!a4 || (a4 & 4) != 0)
  {
    v8 = [[Browse_Bonjour alloc] initWithQueue:self->_queue];
    bonjour = self->_bonjour;
    self->_bonjour = v8;

    [(BrowseService *)self _setupBrowser:self->_bonjour];
  }

  if (!a4 || (a4 & 1) != 0)
  {
    v10 = [[Browse_MDM alloc] initWithQueue:self->_queue];
    mdm = self->_mdm;
    self->_mdm = v10;

    [(BrowseService *)self _setupBrowser:self->_mdm];
  }

  if (!a4 || (a4 & 8) != 0)
  {
    v12 = [[Browse_WirelessProximity alloc] initWithQueue:self->_queue];
    proximity = self->_proximity;
    self->_proximity = v12;

    [(BrowseService *)self _setupBrowser:self->_proximity];
  }

  if (!a4 || (a4 & 2) != 0)
  {
    v14 = [[Browse_Extension alloc] initWithQueue:self->_queue printInfo:v20];
    extension = self->_extension;
    self->_extension = v14;

    [(BrowseService *)self _setupBrowser:self->_extension];
  }

  if ((a4 & 0x20) != 0 || !a4 && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 BOOLForKey:@"PrintKitBrowseNAN"], v16, v17))
  {
    v18 = [[Browse_NAN alloc] initWithQueue:self->_queue];
    nan = self->_nan;
    self->_nan = v18;

    [(BrowseService *)self _setupBrowser:self->_nan];
  }
}

- (void)_setupBrowser:(id)a3
{
  v4 = a3;
  objc_initWeak(location, self);
  v5 = [NSString stringWithFormat:@"<%@@%p>", objc_opt_class(), v4];
  v6 = self->_queue;
  [v4 setSession:self->_session];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10005F9BC;
  v27[3] = &unk_1000A3F28;
  objc_copyWeak(&v30, location);
  v7 = v6;
  v28 = v7;
  v8 = v5;
  v29 = v8;
  [v4 setAddEntity:v27];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10005FB84;
  v23[3] = &unk_1000A3F28;
  objc_copyWeak(&v26, location);
  v9 = v7;
  v24 = v9;
  v10 = v8;
  v25 = v10;
  [v4 setRemoveEntity:v23];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005FD4C;
  v19[3] = &unk_1000A3F28;
  objc_copyWeak(&v22, location);
  v11 = v9;
  v20 = v11;
  v12 = v10;
  v21 = v12;
  [v4 setUpdateEntity:v19];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005FF14;
  block[3] = &unk_1000A3F50;
  block[4] = self;
  v17 = v12;
  v18 = v4;
  v14 = v4;
  v15 = v12;
  dispatch_async(queue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&v30);
  objc_destroyWeak(location);
}

- (void)stopBrowsing
{
  v2 = self;
  queue = v2->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100060070;
  v5[3] = &unk_1000957C8;
  v5[4] = v2;
  v6 = v2;
  v4 = v2;
  dispatch_async(queue, v5);
}

- (void)stopBrowsing0
{
  [(Browse_Bonjour *)self->_bonjour cancel];
  bonjour = self->_bonjour;
  self->_bonjour = 0;

  [(Browse_MDM *)self->_mdm cancel];
  mdm = self->_mdm;
  self->_mdm = 0;

  [(Browse_WirelessProximity *)self->_proximity cancel];
  proximity = self->_proximity;
  self->_proximity = 0;

  [(Browse_Extension *)self->_extension cancel];
  extension = self->_extension;
  self->_extension = 0;

  [(Browse_CUPS *)self->_cups cancel];
  cups = self->_cups;
  self->_cups = 0;

  [(Browse_NAN *)self->_nan cancel];
  nan = self->_nan;
  self->_nan = 0;

  syncTimer = self->_syncTimer;
  if (syncTimer)
  {
    source = syncTimer;
    v10 = self->_syncTimer;
    self->_syncTimer = 0;

    dispatch_source_cancel(source);
    if (!self->_syncTimerSuspendedCount)
    {
      dispatch_resume(source);
    }
  }
}

@end