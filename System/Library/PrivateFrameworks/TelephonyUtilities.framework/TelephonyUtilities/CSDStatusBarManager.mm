@interface CSDStatusBarManager
+ (BOOL)isDeviceSupported;
+ (id)bundleIdentifiersForPillDataSource;
- (BOOL)shouldOpenInCallServiceForCall:(id)call;
- (CSDStatusBarManager)init;
- (CSDStatusBarManager)initWithResolver:(id)resolver withSystemStatusPublisher:(id)publisher queue:(id)queue;
- (void)currentStatusDescriptorForIdentifier:(id)identifier reply:(id)reply;
- (void)displayHandoffEligibleNearbyByURL;
- (void)displayLagunaPullByURL;
- (void)displaySystemCallControlsByURL;
- (void)openInCallServiceByURL;
- (void)openUIServiceWithURL:(id)l;
- (void)openVoIPApplicationForCall:(id)call;
- (void)pillDataSourceRegistrationChangedForResolver:(id)resolver;
- (void)resolutionChangedForResolver:(id)resolver;
- (void)startTrackingException;
- (void)stopTrackingException;
- (void)updateAttributionsForDescriptor:(id)descriptor;
- (void)updateRegistrationIfNeeded;
- (void)updateStatusBar;
@end

@implementation CSDStatusBarManager

- (void)updateRegistrationIfNeeded
{
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  resolver = [(CSDStatusBarManager *)self resolver];
  shouldRegisterForPillDatasource = [resolver shouldRegisterForPillDatasource];

  if (shouldRegisterForPillDatasource)
  {
    resolver2 = [(CSDStatusBarManager *)self resolver];
    if ([resolver2 shouldRegisterForPillDatasource])
    {
      msnPillRegister = [(CSDStatusBarManager *)self msnPillRegister];

      if (!msnPillRegister)
      {
        v7 = objc_alloc_init(TUFeatureFlags);
        if ([v7 usesMediaSafetyNetPillDataSource])
        {
          serverBag = [(CSDStatusBarManager *)self serverBag];
          isMSNPillDataSourceEnabled = [serverBag isMSNPillDataSourceEnabled];

          if (isMSNPillDataSourceEnabled)
          {
            v10 = CUTWeakLinkClass();
            if (v10)
            {
              v11 = [v10 alloc];
              if (objc_opt_respondsToSelector())
              {
                queue2 = [(CSDStatusBarManager *)self queue];
                -[CSDStatusBarManager setMsnPillRegister:](self, "setMsnPillRegister:", [v11 performSelector:"initWithQueue:" withObject:queue2]);

                msnPillRegister2 = [(CSDStatusBarManager *)self msnPillRegister];
                v14 = objc_opt_respondsToSelector();

                if (v14)
                {
                  bundleIdentifiersForPillDataSource = [objc_opt_class() bundleIdentifiersForPillDataSource];
                  v16 = sub_100004778();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Registering for pill datasource", buf, 2u);
                  }

                  [self->_msnPillRegister performSelector:"registerPillDataSource:forIdentifiers:" withObject:self withObject:bundleIdentifiersForPillDataSource];
                }
              }
            }
          }
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unregistering for pill datasource", v20, 2u);
    }

    [(CSDStatusBarManager *)self setMsnPillRegister:0];
  }
}

+ (id)bundleIdentifiersForPillDataSource
{
  v5[0] = TUBundleIdentifierFaceTimeApplication;
  v5[1] = TUBundleIdentifierMobilePhoneApplication;
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)updateStatusBar
{
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  resolver = [(CSDStatusBarManager *)self resolver];
  resolvedDescriptor = [resolver resolvedDescriptor];
  [(CSDStatusBarManager *)self updateAttributionsForDescriptor:resolvedDescriptor];
}

+ (BOOL)isDeviceSupported
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 deviceType] != 7;

  return v3;
}

- (CSDStatusBarManager)init
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100028614;
  v14 = sub_100032894;
  v15 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BEE20;
  block[3] = &unk_10061ABF0;
  selfCopy = self;
  v9 = &v10;
  v7 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.statusbarmanager", 0);
  v2 = selfCopy;
  v3 = v7;
  dispatch_sync(v3, block);
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (CSDStatusBarManager)initWithResolver:(id)resolver withSystemStatusPublisher:(id)publisher queue:(id)queue
{
  resolverCopy = resolver;
  publisherCopy = publisher;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = CSDStatusBarManager;
  v12 = [(CSDStatusBarManager *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_resolver, resolver);
    [(CSDStatusBarResolver *)v13->_resolver setDelegate:v13];
    objc_storeStrong(&v13->_systemStatusPublisher, publisher);
    objc_initWeak(&location, v13);
    systemStatusPublisher = v13->_systemStatusPublisher;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1000BF03C;
    v19 = &unk_10061AC18;
    objc_copyWeak(&v20, &location);
    [(STCallingStatusDomainPublisher *)systemStatusPublisher handleUserInteractionsWithBlock:&v16];
    [(CSDStatusBarManager *)v13 updateStatusBar:v16];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (BOOL)shouldOpenInCallServiceForCall:(id)call
{
  callCopy = call;
  status = [callCopy status];
  resolvedConversation = [(CSDStatusBarResolver *)self->_resolver resolvedConversation];
  if ([resolvedConversation state] == 1)
  {
    resolvedConversation2 = [(CSDStatusBarResolver *)self->_resolver resolvedConversation];
    v8 = [resolvedConversation2 avMode] == 2;
  }

  else
  {
    v8 = 0;
  }

  if (status == 4)
  {
    v9 = 1;
  }

  else
  {
    provider = [callCopy provider];
    v9 = [provider isSystemProvider] | v8;
  }

  v11 = objc_alloc_init(TUFeatureFlags);
  provider2 = [callCopy provider];
  if (![provider2 supportsDynamicSystemUI] || !objc_msgSend(v11, "groupConversations"))
  {
    goto LABEL_12;
  }

  HasChinaSKU = TUDeviceHasChinaSKU();

  if (HasChinaSKU)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      provider2 = [callCopy providerDisplayMonitor];
      v9 = [provider2 isVisible] ^ 1;
LABEL_12:
    }
  }

  if ([callCopy isPTT])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      providerDisplayMonitor = [callCopy providerDisplayMonitor];
      v9 = [providerDisplayMonitor isVisible] ^ 1;
    }
  }

  return v9 & 1;
}

- (void)updateAttributionsForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentDescriptor = [(CSDStatusBarManager *)self currentDescriptor];
    *buf = 138543618;
    *&buf[4] = currentDescriptor;
    *&buf[12] = 2114;
    *&buf[14] = descriptorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updating descriptor old: %{public}@ new: %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = sub_100028614;
  v15 = sub_100032894;
  currentDescriptor2 = [(CSDStatusBarManager *)self currentDescriptor];
  [(CSDStatusBarManager *)self setCurrentDescriptor:descriptorCopy];
  systemStatusPublisher = [(CSDStatusBarManager *)self systemStatusPublisher];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BF660;
  v10[3] = &unk_10061AC40;
  v12 = buf;
  v9 = descriptorCopy;
  v11 = v9;
  [systemStatusPublisher updateVolatileDataWithBlock:v10];

  _Block_object_dispose(buf, 8);
}

- (void)currentStatusDescriptorForIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  bundleIdentifiersForPillDataSource = [objc_opt_class() bundleIdentifiersForPillDataSource];
  v9 = [bundleIdentifiersForPillDataSource containsObject:identifierCopy];

  if (v9)
  {
    resolver = [(CSDStatusBarManager *)self resolver];
    resolvedCallForActiveDescriptor = [resolver resolvedCallForActiveDescriptor];

    if (resolvedCallForActiveDescriptor)
    {
      currentDescriptor = [(CSDStatusBarManager *)self currentDescriptor];
      if (![resolvedCallForActiveDescriptor isScreening] || (objc_msgSend(resolvedCallForActiveDescriptor, "screeningAnnouncementHasFinished") & 1) != 0 || currentDescriptor)
      {
        if ([resolvedCallForActiveDescriptor isScreening] && objc_msgSend(resolvedCallForActiveDescriptor, "screeningAnnouncementHasFinished") && currentDescriptor)
        {
          [(CSDStatusBarManager *)self stopTrackingException];
        }
      }

      else
      {
        [(CSDStatusBarManager *)self startTrackingException];
      }
    }

    else
    {
      [(CSDStatusBarManager *)self stopTrackingException];
      currentDescriptor = 0;
    }
  }

  else
  {
    currentDescriptor = 0;
  }

  replyCopy[2](replyCopy, currentDescriptor);
}

- (void)startTrackingException
{
  if (![(CSDStatusBarManager *)self isTrackingMSNException])
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting MSN Exception", v4, 2u);
    }

    MSNMonitorBeginException();
    [(CSDStatusBarManager *)self setIsTrackingMSNException:1];
  }
}

- (void)stopTrackingException
{
  if ([(CSDStatusBarManager *)self isTrackingMSNException])
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ending MSN Exception", v4, 2u);
    }

    MSNMonitorEndException();
    [(CSDStatusBarManager *)self setIsTrackingMSNException:0];
  }
}

- (void)displaySystemCallControlsByURL
{
  v3 = +[NSURL faceTimeShowSystemCallControlsURL];
  [(CSDStatusBarManager *)self openUIServiceWithURL:v3];
}

- (void)displayHandoffEligibleNearbyByURL
{
  v3 = +[NSURL faceTimeShowHandoffEligibleNearbyURL];
  [(CSDStatusBarManager *)self openUIServiceWithURL:v3];
}

- (void)displayLagunaPullByURL
{
  v3 = +[NSURL faceTimeShowLagunaPullConversationURL];
  [(CSDStatusBarManager *)self openUIServiceWithURL:v3];
}

- (void)openInCallServiceByURL
{
  v3 = +[NSURL faceTimeShowInCallUIURL];
  [(CSDStatusBarManager *)self openUIServiceWithURL:v3];
}

- (void)openUIServiceWithURL:(id)l
{
  lCopy = l;
  v4 = +[CSDCallCapabilities sharedInstance];
  _supportslaunchingInCallApplicationForIncomingCall = [v4 _supportslaunchingInCallApplicationForIncomingCall];

  if (_supportslaunchingInCallApplicationForIncomingCall)
  {
    v6 = lCopy;
    TUOpenURLWithCompletion();
  }
}

- (void)openVoIPApplicationForCall:(id)call
{
  callCopy = call;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = callCopy;
  }

  else
  {
    v4 = 0;
  }

  applicationRecord = [v4 applicationRecord];
  bundleIdentifier = [applicationRecord bundleIdentifier];

  if ([bundleIdentifier length])
  {
    v7 = objc_alloc_init(_LSOpenConfiguration);
    isPTT = [v4 isPTT];
    v9 = sub_100004778();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (isPTT)
    {
      if (v10)
      {
        *buf = 138412290;
        v25 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Background launching application with bundle identifier %@", buf, 0xCu);
      }

      v22 = FBSOpenApplicationOptionKeyActivateSuspended;
      v23 = &__kCFBooleanTrue;
      v11 = &v23;
      v12 = &v22;
      v13 = 1;
    }

    else
    {
      if (v10)
      {
        *buf = 138412290;
        v25 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Foreground launching application with bundle identifier %@", buf, 0xCu);
      }

      v20[0] = FBSOpenApplicationOptionKeyUnlockDevice;
      v20[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
      v21[0] = &__kCFBooleanTrue;
      v21[1] = &__kCFBooleanTrue;
      v11 = v21;
      v12 = v20;
      v13 = 2;
    }

    v14 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:v13];
    [v7 setFrontBoardOptions:v14];

    v15 = +[LSApplicationWorkspace defaultWorkspace];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BFF10;
    v16[3] = &unk_10061AC68;
    v17 = bundleIdentifier;
    v18 = v4;
    v19 = callCopy;
    [v15 openApplicationWithBundleIdentifier:v17 configuration:v7 completionHandler:v16];
  }
}

- (void)resolutionChangedForResolver:(id)resolver
{
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDStatusBarManager *)self updateStatusBar];
}

- (void)pillDataSourceRegistrationChangedForResolver:(id)resolver
{
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDStatusBarManager *)self updateRegistrationIfNeeded];
}

@end