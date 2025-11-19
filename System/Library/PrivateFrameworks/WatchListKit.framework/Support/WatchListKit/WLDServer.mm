@interface WLDServer
+ (id)server;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (WLDServer)init;
- (id)_init;
- (id)_supportPath;
- (void)_handleContinueWatchingNotification:(id)a3;
- (void)_handleRestrictionsChangedNotification:(id)a3;
- (void)_invalidateWidgets;
- (void)addClient:(id)a3;
- (void)clientConnectionDidInvalidate:(id)a3;
- (void)dealloc;
- (void)handleAMSDeviceOffer;
- (void)handleSubscriptionRegistration;
- (void)handleUNWidgetRegistration;
- (void)handleVideosUIInvalidationNotification:(id)a3;
- (void)start;
@end

@implementation WLDServer

+ (id)server
{
  if (server___once != -1)
  {
    +[WLDServer server];
  }

  v3 = server___server;

  return v3;
}

void __19__WLDServer_server__block_invoke(id a1)
{
  server___server = [[WLDServer alloc] _init];

  _objc_release_x1();
}

- (WLDServer)init
{
  [NSException raise:@"WLDServerInitException" format:@"-init is not supported. Use +server"];

  return 0;
}

- (void)dealloc
{
  NSLog(@"WLDServer - dealloc", a2);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = WLDServer;
  [(WLDServer *)&v5 dealloc];
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = WLDServer;
  v2 = [(WLDServer *)&v8 init];
  if (v2)
  {
    [AMSEphemeralDefaults setHARLoggingEnabled:0];
    v3 = +[WLDSubscriptionStore sharedInstance];
    v4 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __18__WLDServer__init__block_invoke;
    block[3] = &unk_100044DB8;
    v7 = v2;
    dispatch_async(v4, block);
  }

  return v2;
}

void __18__WLDServer__init__block_invoke(uint64_t a1)
{
  v2 = +[WLKAppLibrary defaultAppLibrary];
  NSLog(@"WLDServer - Prewarm completed");
  if (_os_feature_enabled_impl())
  {
    v3 = +[WLKAppLibrary defaultAppLibrary];
    v4 = [v3 dictionaryRepresentation];

    v11 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v11];
    v6 = v11;
    v7 = v6;
    if (v6)
    {
      v8 = [v6 description];
      NSLog(@"WLDServer - Failed to archive app library dictionary data: %@", v8);
    }

    if (v5)
    {
      v9 = [*(a1 + 32) _supportPath];
      v10 = [v5 writeToFile:v9 atomically:1];

      if ((v10 & 1) == 0)
      {
        NSLog(@"WLDServer - Failed to write app library dictionary data.");
      }
    }
  }
}

- (id)_supportPath
{
  v2 = TVASDefaultSupportPath();
  if ([v2 length])
  {
    v3 = [v2 stringByAppendingPathComponent:@"applibrarydict"];

    v4 = [v3 stringByExpandingTildeInPath];
  }

  else
  {
    NSLog(@"WLDServer - Error: TVASDefaultSupportPath returned nil");
    v4 = v2;
    v3 = v4;
  }

  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  memset(&v22, 0, sizeof(v22));
  if (v7)
  {
    [v7 auditToken];
  }

  v21 = 0;
  token = v22;
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v9 = v21;
  }

  else
  {
    error = 0;
    if (v8)
    {
      [v8 auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v10 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
    v9 = SecTaskCopySigningIdentifier(v10, &error);
    CFRelease(v10);
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      NSLog(@"WLDServer - Failed to get signing identifier");
    }
  }

  NSLog(@"WLDServer - Got connection for client '%@'", v9, error, *token.val, *&token.val[2], *&token.val[4], *&token.val[6]);
  v12 = WLKEntitlementWatchList;
  if (!WLDConnectionHasBoolValueForEntitlement(v8, WLKEntitlementWatchList) && !WLDConnectionHasBoolValueForEntitlement(v8, WLKEntitlementSuppression))
  {
    goto LABEL_25;
  }

  v13 = CFPreferencesCopyAppValue(@"ClientIdentifierOverride", @"com.apple.watchlistd");
  if ([v13 length])
  {
    NSLog(@"WLDServer - ClientIdentifierOverride: '%@'", v13);
    v14 = v13;

    v9 = v14;
  }

  if (!WLDConnectionHasBoolValueForEntitlement(v8, v12))
  {
    if (!WLDConnectionHasBoolValueForEntitlement(v8, WLKEntitlementSuppression))
    {
LABEL_24:

LABEL_25:
      NSLog(@"WLDServer - Dropping connection from unentitled client: %@", v8);
      v17 = 0;
      goto LABEL_26;
    }

    if (v9)
    {
      v15 = &off_1000444C0;
      NSLog(@"WLDServer - Accepted suppression connection for client '%@'", v9);
      goto LABEL_22;
    }

LABEL_23:
    NSLog(@"WLDServer - Failed to get client identifier '%@'", 0);
    goto LABEL_24;
  }

  if (!v9)
  {
    goto LABEL_23;
  }

  v15 = off_1000444A8;
  NSLog(@"WLDServer - Accepted connection for client '%@'", v9);
LABEL_22:
  v16 = [objc_alloc(*v15) initWithConnection:v8 clientIdentifier:v9];
  [v16 setDelegate:self];
  [(WLDServer *)self addClient:v16];

  v17 = 1;
LABEL_26:

  return v17;
}

- (void)addClient:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v9;
  clients = v4->_clients;
  if (!clients)
  {
    v7 = [[NSMutableSet alloc] initWithCapacity:1];
    v8 = v4->_clients;
    v4->_clients = v7;

    clients = v4->_clients;
    v5 = v9;
  }

  [(NSMutableSet *)clients addObject:v5];
  objc_sync_exit(v4);
}

- (void)clientConnectionDidInvalidate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    [v4 setDelegate:0];
    v5 = self;
    objc_sync_enter(v5);
    [(NSMutableSet *)v5->_clients removeObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)start
{
  v3 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLDServer.start", &unk_100037037, buf, 2u);
  }

  NSLog(@"WLDServer - start");
  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.watchlistd.xpc"];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v4;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  [(NSXPCListener *)self->_xpcListener resume];
  v6 = +[WLDPlaybackManager sharedManager];
  playbackManager = self->_playbackManager;
  self->_playbackManager = v6;

  v8 = objc_alloc_init(WLDPushNotificationController);
  pushController = self->_pushController;
  self->_pushController = v8;

  v10 = +[WLKOfferManager defaultOfferManager];
  v11 = +[WLDAMSBagObserver sharedObserver];
  v12 = +[NSNotificationCenter defaultCenter];
  v13 = WLKRestrictionsDidChangeNotification;
  v14 = +[WLKRestrictionsObserver sharedObserver];
  [v12 addObserver:self selector:"_handleRestrictionsChangedNotification:" name:v13 object:v14];

  v15 = +[NSDistributedNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"_handleFamilyUpdateNotification:" name:FAFamilyUpdateNotification object:0];

  v16 = +[NSDistributedNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_handleContinueWatchingNotification:" name:WLKContinueWatchingRequestDidCompleteNotification object:0];

  v17 = +[WLDFullTVAppMonitor sharedInstance];
  NSLog(@"WLDServer - start main");
  v18 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v18))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLDServer.start", &unk_100037037, v19, 2u);
  }
}

- (void)handleSubscriptionRegistration
{
  NSLog(@"WLDServer - handleSubscriptionRegistration", a2);
  playbackManager = self->_playbackManager;

  [(WLDPlaybackManager *)playbackManager handleSubscriptionRegistration];
}

- (void)handleAMSDeviceOffer
{
  NSLog(@"WLDServer - handleAMSDeviceOffer", a2);
  v2 = objc_alloc_init(WLDDeviceOfferManager);
  [(WLDDeviceOfferManager *)v2 processDeviceOffers];
}

- (void)handleVideosUIInvalidationNotification:(id)a3
{
  NSLog(@"WLDServer - handleVideosUIInvalidationNotification %@", a2, a3);

  [(WLDServer *)self _invalidateWidgets];
}

- (void)handleUNWidgetRegistration
{
  NSLog(@"WLDServer - handleUNWidgetRegistration", a2);
  pushController = self->_pushController;

  [(WLDPushNotificationController *)pushController registerOpportunisticTopics];
}

- (void)_handleRestrictionsChangedNotification:(id)a3
{
  NSLog(@"WLDServer - _handleRestrictionsChangedNotification %@", a2, a3);

  [(WLDServer *)self _invalidateWidgets];
}

- (void)_handleContinueWatchingNotification:(id)a3
{
  NSLog(@"WLDServer - _handleContinueWatchingNotification %@", a2, a3);
  +[WLKUpNextWidgetCacheManager requestInvalidation];

  +[WLKUpNextWidgetCacheManager requestReload];
}

- (void)_invalidateWidgets
{
  +[WLKUpNextWidgetCacheManager requestInvalidation];

  +[WLKUpNextWidgetCacheManager requestReload];
}

@end