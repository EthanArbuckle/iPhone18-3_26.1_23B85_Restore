@interface CSDStatusBarManager
+ (BOOL)isDeviceSupported;
+ (id)bundleIdentifiersForPillDataSource;
- (BOOL)shouldOpenInCallServiceForCall:(id)a3;
- (CSDStatusBarManager)init;
- (CSDStatusBarManager)initWithResolver:(id)a3 withSystemStatusPublisher:(id)a4 queue:(id)a5;
- (void)currentStatusDescriptorForIdentifier:(id)a3 reply:(id)a4;
- (void)displayHandoffEligibleNearbyByURL;
- (void)displayLagunaPullByURL;
- (void)displaySystemCallControlsByURL;
- (void)openInCallServiceByURL;
- (void)openUIServiceWithURL:(id)a3;
- (void)openVoIPApplicationForCall:(id)a3;
- (void)pillDataSourceRegistrationChangedForResolver:(id)a3;
- (void)resolutionChangedForResolver:(id)a3;
- (void)startTrackingException;
- (void)stopTrackingException;
- (void)updateAttributionsForDescriptor:(id)a3;
- (void)updateRegistrationIfNeeded;
- (void)updateStatusBar;
@end

@implementation CSDStatusBarManager

- (void)updateRegistrationIfNeeded
{
  v3 = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDStatusBarManager *)self resolver];
  v5 = [v4 shouldRegisterForPillDatasource];

  if (v5)
  {
    v18 = [(CSDStatusBarManager *)self resolver];
    if ([v18 shouldRegisterForPillDatasource])
    {
      v6 = [(CSDStatusBarManager *)self msnPillRegister];

      if (!v6)
      {
        v7 = objc_alloc_init(TUFeatureFlags);
        if ([v7 usesMediaSafetyNetPillDataSource])
        {
          v8 = [(CSDStatusBarManager *)self serverBag];
          v9 = [v8 isMSNPillDataSourceEnabled];

          if (v9)
          {
            v10 = CUTWeakLinkClass();
            if (v10)
            {
              v11 = [v10 alloc];
              if (objc_opt_respondsToSelector())
              {
                v12 = [(CSDStatusBarManager *)self queue];
                -[CSDStatusBarManager setMsnPillRegister:](self, "setMsnPillRegister:", [v11 performSelector:"initWithQueue:" withObject:v12]);

                v13 = [(CSDStatusBarManager *)self msnPillRegister];
                v14 = objc_opt_respondsToSelector();

                if (v14)
                {
                  v15 = [objc_opt_class() bundleIdentifiersForPillDataSource];
                  v16 = sub_100004778();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Registering for pill datasource", buf, 2u);
                  }

                  [self->_msnPillRegister performSelector:"registerPillDataSource:forIdentifiers:" withObject:self withObject:v15];
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
  v3 = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v5 = [(CSDStatusBarManager *)self resolver];
  v4 = [v5 resolvedDescriptor];
  [(CSDStatusBarManager *)self updateAttributionsForDescriptor:v4];
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
  v8 = self;
  v9 = &v10;
  v7 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.statusbarmanager", 0);
  v2 = v8;
  v3 = v7;
  dispatch_sync(v3, block);
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (CSDStatusBarManager)initWithResolver:(id)a3 withSystemStatusPublisher:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = CSDStatusBarManager;
  v12 = [(CSDStatusBarManager *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a5);
    objc_storeStrong(&v13->_resolver, a3);
    [(CSDStatusBarResolver *)v13->_resolver setDelegate:v13];
    objc_storeStrong(&v13->_systemStatusPublisher, a4);
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

- (BOOL)shouldOpenInCallServiceForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 status];
  v6 = [(CSDStatusBarResolver *)self->_resolver resolvedConversation];
  if ([v6 state] == 1)
  {
    v7 = [(CSDStatusBarResolver *)self->_resolver resolvedConversation];
    v8 = [v7 avMode] == 2;
  }

  else
  {
    v8 = 0;
  }

  if (v5 == 4)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v4 provider];
    v9 = [v10 isSystemProvider] | v8;
  }

  v11 = objc_alloc_init(TUFeatureFlags);
  v12 = [v4 provider];
  if (![v12 supportsDynamicSystemUI] || !objc_msgSend(v11, "groupConversations"))
  {
    goto LABEL_12;
  }

  HasChinaSKU = TUDeviceHasChinaSKU();

  if (HasChinaSKU)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v4 providerDisplayMonitor];
      v9 = [v12 isVisible] ^ 1;
LABEL_12:
    }
  }

  if ([v4 isPTT])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v4 providerDisplayMonitor];
      v9 = [v14 isVisible] ^ 1;
    }
  }

  return v9 & 1;
}

- (void)updateAttributionsForDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CSDStatusBarManager *)self currentDescriptor];
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updating descriptor old: %{public}@ new: %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = sub_100028614;
  v15 = sub_100032894;
  v16 = [(CSDStatusBarManager *)self currentDescriptor];
  [(CSDStatusBarManager *)self setCurrentDescriptor:v4];
  v8 = [(CSDStatusBarManager *)self systemStatusPublisher];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BF660;
  v10[3] = &unk_10061AC40;
  v12 = buf;
  v9 = v4;
  v11 = v9;
  [v8 updateVolatileDataWithBlock:v10];

  _Block_object_dispose(buf, 8);
}

- (void)currentStatusDescriptorForIdentifier:(id)a3 reply:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [objc_opt_class() bundleIdentifiersForPillDataSource];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = [(CSDStatusBarManager *)self resolver];
    v11 = [v10 resolvedCallForActiveDescriptor];

    if (v11)
    {
      v12 = [(CSDStatusBarManager *)self currentDescriptor];
      if (![v11 isScreening] || (objc_msgSend(v11, "screeningAnnouncementHasFinished") & 1) != 0 || v12)
      {
        if ([v11 isScreening] && objc_msgSend(v11, "screeningAnnouncementHasFinished") && v12)
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
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13[2](v13, v12);
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

- (void)openUIServiceWithURL:(id)a3
{
  v3 = a3;
  v4 = +[CSDCallCapabilities sharedInstance];
  v5 = [v4 _supportslaunchingInCallApplicationForIncomingCall];

  if (v5)
  {
    v6 = v3;
    TUOpenURLWithCompletion();
  }
}

- (void)openVoIPApplicationForCall:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 applicationRecord];
  v6 = [v5 bundleIdentifier];

  if ([v6 length])
  {
    v7 = objc_alloc_init(_LSOpenConfiguration);
    v8 = [v4 isPTT];
    v9 = sub_100004778();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 138412290;
        v25 = v6;
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
        v25 = v6;
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
    v17 = v6;
    v18 = v4;
    v19 = v3;
    [v15 openApplicationWithBundleIdentifier:v17 configuration:v7 completionHandler:v16];
  }
}

- (void)resolutionChangedForResolver:(id)a3
{
  v4 = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(v4);

  [(CSDStatusBarManager *)self updateStatusBar];
}

- (void)pillDataSourceRegistrationChangedForResolver:(id)a3
{
  v4 = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(v4);

  [(CSDStatusBarManager *)self updateRegistrationIfNeeded];
}

@end