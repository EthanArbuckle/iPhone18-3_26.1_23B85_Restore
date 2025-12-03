@interface SESTapToRadar
+ (BOOL)isAllowedForClient:(id)client;
+ (id)getInstance;
+ (void)handleCallback:(unint64_t)callback;
+ (void)requestTapToRadar:(id)radar client:(id)client fullArchive:(BOOL)archive;
+ (void)requestTapToRadarKML:(id)l client:(id)client;
- (BOOL)isAllowedForClient:(id)client;
- (SESTapToRadar)init;
- (void)_handleCallbackSync:(unint64_t)sync;
- (void)_requestTapToRadarSync:(id)sync component:(id)component client:(id)client fullArchive:(BOOL)archive;
- (void)setProhibitUntil:(id)until forClient:(id)client;
@end

@implementation SESTapToRadar

+ (void)requestTapToRadar:(id)radar client:(id)client fullArchive:(BOOL)archive
{
  radarCopy = radar;
  clientCopy = client;
  if (os_variant_has_internal_diagnostics())
  {
    v9 = +[SESTapToRadar getInstance];
    v10 = v9;
    if (v9)
    {
      v11 = v9[1];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __54__SESTapToRadar_requestTapToRadar_client_fullArchive___block_invoke;
      v12[3] = &unk_1E82D0CD0;
      v13 = v9;
      v14 = radarCopy;
      v15 = clientCopy;
      archiveCopy = archive;
      dispatch_async(v11, v12);
    }
  }
}

+ (void)requestTapToRadarKML:(id)l client:(id)client
{
  lCopy = l;
  clientCopy = client;
  if (os_variant_has_internal_diagnostics())
  {
    v7 = +[SESTapToRadar getInstance];
    v8 = v7;
    if (v7)
    {
      v9 = v7[1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__SESTapToRadar_requestTapToRadarKML_client___block_invoke;
      block[3] = &unk_1E82D0CF8;
      v11 = v7;
      v12 = lCopy;
      v13 = clientCopy;
      dispatch_async(v9, block);
    }
  }
}

+ (BOOL)isAllowedForClient:(id)client
{
  clientCopy = client;
  v4 = +[SESTapToRadar getInstance];
  v5 = [v4 isAllowedForClient:clientCopy];

  return v5;
}

+ (id)getInstance
{
  if (getInstance_onceToken != -1)
  {
    +[SESTapToRadar getInstance];
  }

  v3 = getInstance_instance;

  return v3;
}

uint64_t __28__SESTapToRadar_getInstance__block_invoke()
{
  getInstance_instance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SESTapToRadar)init
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = SESTapToRadar;
  v2 = [(SESTapToRadar *)&v18 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  if (!dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2))
  {
    v14 = SESDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices";
      v15 = "Failed to dlopen %{public}s";
LABEL_10:
      _os_log_impl(&dword_1C7B9A000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
    }

LABEL_11:

    v13 = 0;
    goto LABEL_12;
  }

  v3 = NSClassFromString(&cfstr_Lsapplicationw.isa);
  v2->_lsApplicationWorkspace = v3;
  if (!v3)
  {
    v14 = SESDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = @"LSApplicationWorkspace";
      v15 = "Failed to get class %{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  pendingRequestReason = v2->_pendingRequestReason;
  v2->_pendingRequestReason = 0;

  pendingRequestClient = v2->_pendingRequestClient;
  v2->_pendingRequestClient = 0;

  component = v2->_component;
  v2->_component = 0;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_DEFAULT, 0);
  v9 = dispatch_queue_create("com.apple.sesd.TTR", v8);
  queue = v2->_queue;
  v2->_queue = v9;

  v11 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.seserviced"];
  userDefaults = v2->_userDefaults;
  v2->_userDefaults = v11;

LABEL_5:
  v13 = v2;
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)isAllowedForClient:(id)client
{
  userDefaults = self->_userDefaults;
  clientCopy = client;
  v5 = [(NSUserDefaults *)userDefaults objectForKey:@"TTR-Prohibit-Until-ByClient"];
  v6 = [v5 objectForKeyedSubscript:clientCopy];

  if (v6)
  {
    date = [MEMORY[0x1E695DF00] date];
    v8 = [v6 compare:date] != 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_requestTapToRadarSync:(id)sync component:(id)component client:(id)client fullArchive:(BOOL)archive
{
  archiveCopy = archive;
  v45 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  componentCopy = component;
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_pendingRequestReason)
  {
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Discarding TTR request, already in flight";
LABEL_13:
      _os_log_impl(&dword_1C7B9A000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (SpringBoardServicesLibraryCore())
  {
    v15 = getSBUserNotificationDismissOnLock();

    if (v15)
    {
      v35 = archiveCopy;
      v13 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"TTR-Prohibit-Until-ByClient"];
      v16 = [v13 objectForKeyedSubscript:clientCopy];
      if (v16)
      {
        [MEMORY[0x1E695DF00] date];
        v17 = loga = clientCopy;
        v18 = v16;
        v19 = [v16 compare:v17];

        clientCopy = loga;
        v20 = v19 == 1;
        v16 = v18;
        if (v20)
        {
          v21 = SESDefaultLogObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v44 = v16;
            _os_log_impl(&dword_1C7B9A000, v21, OS_LOG_TYPE_INFO, "TTR is prohibited until %{public}@", buf, 0xCu);
          }

          goto LABEL_32;
        }
      }

      v38 = v16;
      v22 = *MEMORY[0x1E695EE60];
      v41[0] = *MEMORY[0x1E695EE58];
      v41[1] = v22;
      v42[0] = @"SecureElementService Error Detected!";
      v42[1] = @"Please file a Radar";
      v23 = *MEMORY[0x1E695EE70];
      v41[2] = *MEMORY[0x1E695EE78];
      v41[3] = v23;
      v42[2] = @"File Radar";
      v42[3] = @"Not Now";
      v24 = *MEMORY[0x1E695EE68];
      v41[4] = *MEMORY[0x1E695EE98];
      v41[5] = v24;
      v42[4] = @"Never bother me again";
      v42[5] = MEMORY[0x1E695E118];
      v25 = getSBUserNotificationDismissOnLock();
      v41[6] = v25;
      v42[6] = MEMORY[0x1E695E110];
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:7];

      error = 0;
      v26 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v21);
      self->_userNotification = v26;
      if (!v26 || error)
      {
        v31 = SESDefaultLogObject();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v44) = error;
          _os_log_impl(&dword_1C7B9A000, v31, OS_LOG_TYPE_ERROR, "Couldn't create notification! %d", buf, 8u);
        }

        userNotification = self->_userNotification;
        v16 = v38;
        if (!userNotification)
        {
          goto LABEL_29;
        }
      }

      else
      {
        RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v26, NFTTRUserNotificationCallback, 0);
        self->_runLoopSource = RunLoopSource;
        if (RunLoopSource)
        {
          Main = CFRunLoopGetMain();
          CFRunLoopAddSource(Main, self->_runLoopSource, *MEMORY[0x1E695E8D0]);
          log = SESDefaultLogObject();
          v16 = v38;
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v44 = clientCopy;
            _os_log_impl(&dword_1C7B9A000, log, OS_LOG_TYPE_INFO, "TTR prompt created for %@", buf, 0xCu);
          }

          objc_storeStrong(&self->_pendingRequestClient, client);
          objc_storeStrong(&self->_pendingRequestReason, sync);
          objc_storeStrong(&self->_component, component);
          ttrOptions = self->_ttrOptions;
          if (v35)
          {
            v30 = &unk_1F4762D88;
          }

          else
          {
            v30 = MEMORY[0x1E695E0F8];
          }

          self->_ttrOptions = v30;

          goto LABEL_32;
        }

        v33 = SESDefaultLogObject();
        v16 = v38;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C7B9A000, v33, OS_LOG_TYPE_ERROR, "Couldn't create runloop source", buf, 2u);
        }

        userNotification = self->_userNotification;
      }

      CFRelease(userNotification);
LABEL_29:
      self->_userNotification = 0;
LABEL_32:

      goto LABEL_33;
    }
  }

  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v14 = "Missing SB notif key SBUserNotificationDismissOnLock";
    goto LABEL_13;
  }

LABEL_33:

  v34 = *MEMORY[0x1E69E9840];
}

- (void)_handleCallbackSync:(unint64_t)sync
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  dispatch_assert_queue_V2(self->_queue);
  if (self->_pendingRequestClient)
  {
    if (sync == 2)
    {
      v7 = SESDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        pendingRequestReason = self->_pendingRequestReason;
        pendingRequestClient = self->_pendingRequestClient;
        *buf = 138412546;
        v52 = pendingRequestClient;
        v53 = 2112;
        v54 = pendingRequestReason;
        _os_log_impl(&dword_1C7B9A000, v7, OS_LOG_TYPE_INFO, "User canceled response for %@/%@", buf, 0x16u);
      }

      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      [(SESTapToRadar *)self setProhibitUntil:distantFuture forClient:self->_pendingRequestClient];
    }

    else
    {
      v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
      [(SESTapToRadar *)self setProhibitUntil:v12 forClient:self->_pendingRequestClient];

      if (sync == 1)
      {
        distantFuture = SESDefaultLogObject();
        if (os_log_type_enabled(distantFuture, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C7B9A000, distantFuture, OS_LOG_TYPE_INFO, "NotNow response", buf, 2u);
        }
      }

      else
      {
        v45 = v6;
        v13 = [(NSString *)self->_component isEqualToString:@"KML"];
        if (v13)
        {
          v14 = @"991522";
        }

        else
        {
          v14 = @"997328";
        }

        if (v13)
        {
          v15 = @"KML";
        }

        else
        {
          v15 = @"1.0";
        }

        if (v13)
        {
          v16 = @"Serious Bug";
        }

        else
        {
          v16 = @"Crash/Hang/Data Loss";
        }

        if (v13)
        {
          v17 = @"SecureElementService KML TTR - %@";
        }

        else
        {
          v17 = @"SecureElementService TTR - %@";
        }

        v18 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentID" value:v14];
        [v5 addObject:v18];

        v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentName" value:@"SecureElementService"];
        [v5 addObject:v19];

        v20 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentVersion" value:v15];
        [v5 addObject:v20];

        v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"Classification" value:v16];
        [v5 addObject:v21];

        v22 = [MEMORY[0x1E696AF60] queryItemWithName:@"Reproducibility" value:@"I Didn't Try"];
        [v5 addObject:v22];

        v23 = MEMORY[0x1E696AF60];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v17, self->_pendingRequestReason];
        v25 = [v23 queryItemWithName:@"Title" value:v24];
        [v5 addObject:v25];

        v26 = [MEMORY[0x1E696AF60] queryItemWithName:@"Description" value:self->_pendingRequestReason];
        [v5 addObject:v26];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v27 = self->_ttrOptions;
        v28 = [(NSDictionary *)v27 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v47;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v47 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v46 + 1) + 8 * i);
              v33 = MEMORY[0x1E696AF60];
              v34 = [(NSDictionary *)self->_ttrOptions objectForKeyedSubscript:v32];
              v35 = [v33 queryItemWithName:v32 value:v34];
              [v5 addObject:v35];
            }

            v29 = [(NSDictionary *)v27 countByEnumeratingWithState:&v46 objects:v50 count:16];
          }

          while (v29);
        }

        v6 = v45;
        [v45 setScheme:@"tap-to-radar"];
        [v45 setHost:@"new"];
        [v45 setQueryItems:v5];
        v36 = SESDefaultLogObject();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v52 = v45;
          _os_log_impl(&dword_1C7B9A000, v36, OS_LOG_TYPE_INFO, "URL: %{public}@", buf, 0xCu);
        }

        distantFuture = [(objc_class *)self->_lsApplicationWorkspace defaultWorkspace];
        v37 = [v45 URL];
        [distantFuture openURL:v37 configuration:0 completionHandler:0];
      }
    }

    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, self->_runLoopSource, *MEMORY[0x1E695E8D0]);
    runLoopSource = self->_runLoopSource;
    if (runLoopSource)
    {
      CFRelease(runLoopSource);
    }

    self->_runLoopSource = 0;
    userNotification = self->_userNotification;
    if (userNotification)
    {
      CFRelease(userNotification);
    }

    self->_userNotification = 0;
    v41 = self->_pendingRequestClient;
    self->_pendingRequestClient = 0;

    v42 = self->_pendingRequestReason;
    self->_pendingRequestReason = 0;

    component = self->_component;
    self->_component = 0;

    p_super = &self->_ttrOptions->super;
    self->_ttrOptions = 0;
  }

  else
  {
    p_super = SESDefaultLogObject();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, p_super, OS_LOG_TYPE_ERROR, "Ignoring TTR callback with no pending request", buf, 2u);
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)setProhibitUntil:(id)until forClient:(id)client
{
  userDefaults = self->_userDefaults;
  clientCopy = client;
  untilCopy = until;
  v9 = [(NSUserDefaults *)userDefaults objectForKey:@"TTR-Prohibit-Until-ByClient"];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;

  [v13 setObject:untilCopy forKeyedSubscript:clientCopy];
  [(NSUserDefaults *)self->_userDefaults setObject:v13 forKey:@"TTR-Prohibit-Until-ByClient"];
  [(NSUserDefaults *)self->_userDefaults synchronize];
}

+ (void)handleCallback:(unint64_t)callback
{
  v4 = +[SESTapToRadar getInstance];
  v5 = v4;
  if (v4)
  {
    v6 = v4[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __32__SESTapToRadar_handleCallback___block_invoke;
    v7[3] = &unk_1E82D0D40;
    v8 = v4;
    callbackCopy = callback;
    dispatch_async(v6, v7);
  }
}

@end