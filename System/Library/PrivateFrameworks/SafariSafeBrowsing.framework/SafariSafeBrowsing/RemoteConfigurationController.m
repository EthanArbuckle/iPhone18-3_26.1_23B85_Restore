@interface RemoteConfigurationController
+ (id)sharedController;
- (BOOL)_shouldUpdateConfigurationGivenLastConfigurationUpdateAttemptDate:(id)a3;
- (BOOL)forceLoadConfigurationFromDisk;
- (BOOL)forceUpdateConfigurationFromServer;
- (BOOL)isSafeBrowsingOff;
- (RemoteConfigurationController)init;
- (id)_dyldSourceVersionString;
- (id)_lastConfigurationUpdateAttemptDate;
- (id)_providerToTurnOffFromProviderDictionary:(id)a3;
- (id)_urlOfDownloadedConfiguration;
- (unint64_t)_launchTimeBasedPercentile;
- (void)_didReceiveConfigurationData:(id)a3;
- (void)_downloadConfigurationWithCompletionHandler:(id)a3;
- (void)_initializeProviderConfigurationsWithConfiguration:(id)a3;
- (void)_initializeToDefaultProviderConfigurations;
- (void)_loadConfigurationFromDiskIfNecessary;
- (void)_notifyProviderConfigurationsDidChangeIfNecessary;
- (void)_scheduleConfigurationUpdateDaily;
- (void)_setCurrentConfigurationOnInternalQueue:(id)a3;
- (void)_setCurrentDateAsLastConfigurationUpdateAttemptDate;
- (void)_simplifyProviderConfigurations;
- (void)_updateConfigurationIfNecessary;
- (void)_urlOfDownloadedConfiguration;
- (void)_writeConfigurationToDisk:(id)a3;
- (void)dealloc;
- (void)setCurrentConfiguration:(id)a3;
@end

@implementation RemoteConfigurationController

+ (id)sharedController
{
  if (+[RemoteConfigurationController sharedController]::onceToken != -1)
  {
    +[RemoteConfigurationController sharedController];
  }

  v3 = +[RemoteConfigurationController sharedController]::sharedController;

  return v3;
}

uint64_t __49__RemoteConfigurationController_sharedController__block_invoke()
{
  +[RemoteConfigurationController sharedController]::sharedController = objc_alloc_init(RemoteConfigurationController);

  return MEMORY[0x2821F96F8]();
}

- (RemoteConfigurationController)init
{
  v7.receiver = self;
  v7.super_class = RemoteConfigurationController;
  v2 = [(RemoteConfigurationController *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.RemoteConfigurationController.InternalQueue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    [(RemoteConfigurationController *)v2 _loadConfigurationFromDiskIfNecessary];
    [(RemoteConfigurationController *)v2 _updateConfigurationIfNecessary];
    [(RemoteConfigurationController *)v2 _initializeProviderConfigurationsWithConfiguration:v2->_currentConfiguration];
    [(RemoteConfigurationController *)v2 _scheduleConfigurationUpdateDaily];
    [(RemoteConfigurationController *)v2 _resetProviderConfigurationsDidChange];
    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__RemoteConfigurationController_dealloc__block_invoke;
  block[3] = &unk_278565058;
  block[4] = self;
  dispatch_sync(internalQueue, block);
  v4.receiver = self;
  v4.super_class = RemoteConfigurationController;
  [(RemoteConfigurationController *)&v4 dealloc];
}

void __40__RemoteConfigurationController_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }
}

- (BOOL)isSafeBrowsingOff
{
  if (![self->_googleProviderConfiguration providerOff]|| ![self->_tencentProviderConfiguration providerOff])
  {
    return 0;
  }

  appleProviderConfiguration = self->_appleProviderConfiguration;

  return [appleProviderConfiguration providerOff];
}

- (id)_providerToTurnOffFromProviderDictionary:(id)a3
{
  v3 = [a3 objectForKey:@"Provider To Turn Off"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (isKindOfClass)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v5;
}

- (void)_initializeToDefaultProviderConfigurations
{
  googleProviderConfiguration = self->_googleProviderConfiguration;
  if (googleProviderConfiguration && ![googleProviderConfiguration isEqualToConfiguration:0])
  {
    self->_googleConfigurationDidChange = 1;
  }

  v4 = [[ProviderConfiguration alloc] initWithConfiguration:0];
  v5 = self->_googleProviderConfiguration;
  self->_googleProviderConfiguration = v4;

  tencentProviderConfiguration = self->_tencentProviderConfiguration;
  if (tencentProviderConfiguration && ![tencentProviderConfiguration isEqualToConfiguration:0])
  {
    self->_tencentConfigurationDidChange = 1;
  }

  v7 = [[ProviderConfiguration alloc] initWithConfiguration:0];
  v8 = self->_tencentProviderConfiguration;
  self->_tencentProviderConfiguration = v7;

  appleProviderConfiguration = self->_appleProviderConfiguration;
  if (appleProviderConfiguration && ![appleProviderConfiguration isEqualToConfiguration:0])
  {
    self->_appleConfigurationDidChange = 1;
  }

  v10 = [[ProviderConfiguration alloc] initWithConfiguration:0];
  v11 = self->_appleProviderConfiguration;
  self->_appleProviderConfiguration = v10;

  MEMORY[0x2821F96F8]();
}

- (void)_simplifyProviderConfigurations
{
  if (![self->_googleProviderConfiguration providerOff])
  {
    if ([self->_googleProviderConfiguration socialEngineeringThreatTypeOff])
    {
      v3 = [self->_googleProviderConfiguration malwareThreatTypeOff];
    }

    else
    {
      v3 = 0;
    }

    [self->_googleProviderConfiguration setProviderOff:v3];
  }

  if (![self->_tencentProviderConfiguration providerOff])
  {
    [self->_tencentProviderConfiguration setProviderOff:[self->_tencentProviderConfiguration socialEngineeringThreatTypeOff]];
  }

  if (![self->_appleProviderConfiguration providerOff])
  {
    v4 = [self->_appleProviderConfiguration socialEngineeringThreatTypeOff];
    appleProviderConfiguration = self->_appleProviderConfiguration;

    [appleProviderConfiguration setProviderOff:v4];
  }
}

- (id)_dyldSourceVersionString
{
  if ([RemoteConfigurationController _dyldSourceVersionString]::once != -1)
  {
    [RemoteConfigurationController _dyldSourceVersionString];
  }

  v3 = [RemoteConfigurationController _dyldSourceVersionString]::versionString;

  return v3;
}

void __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke()
{
  v0 = dyld_image_header_containing_address();
  if (v0)
  {
    v1 = v0;
    if (*v0 == -17958193)
    {
      v2 = v0[4];
      if (!v2)
      {
        goto LABEL_16;
      }

      v3 = v0 + 8;
      while (*v3 != 42)
      {
        v3 = (v3 + v3[1]);
        if (!--v2)
        {
          goto LABEL_16;
        }
      }

      if (*(v3 + 1))
      {
        [RemoteConfigurationController _dyldSourceVersionString]::versionString = [RemoteConfigurationController convertDyldVersionToString:?];

        MEMORY[0x2821F96F8]();
      }

      else
      {
LABEL_16:
        v6 = SSBOSLogRemoteConfiguration();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke_cold_2();
        }
      }
    }

    else
    {
      v5 = SSBOSLogRemoteConfiguration();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke_cold_1(v1);
      }
    }
  }

  else
  {
    v4 = SSBOSLogRemoteConfiguration();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke_cold_3();
    }
  }
}

- (unint64_t)_launchTimeBasedPercentile
{
  if ([RemoteConfigurationController _launchTimeBasedPercentile]::once != -1)
  {
    [RemoteConfigurationController _launchTimeBasedPercentile];
  }

  return [RemoteConfigurationController _launchTimeBasedPercentile]::percentile;
}

uint64_t __59__RemoteConfigurationController__launchTimeBasedPercentile__block_invoke()
{
  result = gettimeofday(&v1, 0);
  [RemoteConfigurationController _launchTimeBasedPercentile]::percentile = v1.tv_usec % 100;
  return result;
}

- (void)_initializeProviderConfigurationsWithConfiguration:(id)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v46 = a3;
  if (v46)
  {
    v47 = self;
    v59 = [(RemoteConfigurationController *)self _dyldSourceVersionString];
    if (v59)
    {
      v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = [v46 ssb_arrayForKey:@"Configurations"];
      v50 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (!v50)
      {
        goto LABEL_49;
      }

      v49 = *v71;
      while (1)
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v71 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v70 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v5 = SSBOSLogRemoteConfiguration();
            if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
            {
              v15 = objc_opt_class();
              *buf = 138543362;
              v77 = v15;
              _os_log_error_impl(&dword_2255EE000, v5, OS_LOG_TYPE_ERROR, "Skipped an entry in the configuration. Expected a NSDictionary, got %{public}@", buf, 0xCu);
            }

            goto LABEL_47;
          }

          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v5 = [v4 ssb_arrayForKey:@"VersionRanges"];
          v6 = [v5 countByEnumeratingWithState:&v66 objects:v75 count:16];
          if (!v6)
          {
            goto LABEL_47;
          }

          v7 = *v67;
          while (2)
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v67 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v9 = *(*(&v66 + 1) + 8 * j);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v10 = SSBOSLogRemoteConfiguration();
                if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
                {
                  v13 = objc_opt_class();
                  *buf = 138543362;
                  v77 = v13;
                  _os_log_error_impl(&dword_2255EE000, v10, OS_LOG_TYPE_ERROR, "Skipped an version range in the configuration. Expected a NSDictionary, got %{public}@", buf, 0xCu);
                }

                goto LABEL_25;
              }

              v10 = [v9 ssb_stringForKey:@"MinVersion"];
              v11 = [v9 ssb_stringForKey:@"MaxVersion"];
              if (!-[NSObject length](v10, "length") || ![v11 length])
              {
                v14 = SSBOSLogRemoteConfiguration();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  [(RemoteConfigurationController *)&v64 _initializeProviderConfigurationsWithConfiguration:v65, v14];
                }

LABEL_24:

LABEL_25:
                continue;
              }

              if ([v59 compare:v10 options:64] == -1)
              {
                goto LABEL_24;
              }

              v12 = [v59 compare:v11 options:64] == 1;

              if (!v12)
              {

                v16 = [v4 objectForKey:@"Percentage To Apply To"];
                v5 = v16;
                if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v17 = [v5 unsignedIntegerValue], [(RemoteConfigurationController *)v47 _launchTimeBasedPercentile]< v17))
                {
                  v62 = 0u;
                  v63 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v51 = [v4 ssb_arrayForKey:{@"Providers", v46}];
                  v54 = [v51 countByEnumeratingWithState:&v60 objects:v74 count:16];
                  if (v54)
                  {
                    v53 = *v61;
LABEL_36:
                    v18 = 0;
                    while (1)
                    {
                      if (*v61 != v53)
                      {
                        objc_enumerationMutation(v51);
                      }

                      v19 = *(*(&v60 + 1) + 8 * v18);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        break;
                      }

                      v20 = [v19 ssb_stringForKey:@"Provider To Turn Off"];
                      v21 = [v56 objectForKeyedSubscript:v20];
                      v22 = v19;
                      if (v21)
                      {
                        v58 = [v21 ssb_stringForKey:@"Provider To Turn Off"];
                        v57 = v22;
                        v55 = [v22 ssb_stringForKey:@"Provider To Turn Off"];
                        v22 = v21;
                        if ([v58 isEqualToString:?])
                        {
                          v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
                          [v22 setObject:v58 forKeyedSubscript:@"Provider To Turn Off"];
                          v23 = [v21 ssb_arrayForKey:@"Regions To Turn Off"];
                          v24 = [v57 ssb_arrayForKey:@"Regions To Turn Off"];
                          v25 = mergeConfigurationArrayIfBothNotNil(v23, v24);
                          [v22 setObject:v25 forKeyedSubscript:@"Regions To Turn Off"];

                          v26 = [v21 ssb_arrayForKey:@"Threat Types To Turn Off"];
                          v27 = [v57 ssb_arrayForKey:@"Threat Types To Turn Off"];
                          v28 = mergeConfigurationArrayIfBothNotNil(v26, v27);
                          [v22 setObject:v28 forKeyedSubscript:@"Threat Types To Turn Off"];

                          v29 = [v21 ssb_arrayForKey:@"Proxy Versions To Turn Off"];
                          v30 = [v57 ssb_arrayForKey:@"Proxy Versions To Turn Off"];
                          v31 = mergeConfigurationArray(v29, v30);
                          [v22 setObject:v31 forKeyedSubscript:@"Proxy Versions To Turn Off"];
                        }
                      }

                      [v56 setObject:v22 forKeyedSubscript:v20];

                      if (v54 == ++v18)
                      {
                        v54 = [v51 countByEnumeratingWithState:&v60 objects:v74 count:16];
                        if (v54)
                        {
                          goto LABEL_36;
                        }

                        break;
                      }
                    }
                  }
                }

                goto LABEL_47;
              }
            }

            v6 = [v5 countByEnumeratingWithState:&v66 objects:v75 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }

LABEL_47:
        }

        v50 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
        if (!v50)
        {
LABEL_49:

          v32 = [v56 objectForKeyedSubscript:@"Google"];
          v33 = [v47->_googleProviderConfiguration isEqualToConfiguration:v32];
          v47->_googleConfigurationDidChange = !v33;
          if (!v33)
          {
            v34 = [[ProviderConfiguration alloc] initWithConfiguration:v32];
            googleProviderConfiguration = v47->_googleProviderConfiguration;
            v47->_googleProviderConfiguration = v34;
          }

          v36 = [v56 objectForKeyedSubscript:{@"Tencent", v46}];
          v37 = [v47->_tencentProviderConfiguration isEqualToConfiguration:v36];
          v47->_tencentConfigurationDidChange = !v37;
          if (!v37)
          {
            v38 = [[ProviderConfiguration alloc] initWithConfiguration:v36];
            tencentProviderConfiguration = v47->_tencentProviderConfiguration;
            v47->_tencentProviderConfiguration = v38;
          }

          v40 = [v56 objectForKeyedSubscript:@"Apple"];
          v41 = [v47->_googleProviderConfiguration isEqualToConfiguration:v40];
          v47->_appleConfigurationDidChange = !v41;
          if (!v41)
          {
            v42 = [[ProviderConfiguration alloc] initWithConfiguration:v40];
            appleProviderConfiguration = v47->_appleProviderConfiguration;
            v47->_appleProviderConfiguration = v42;
          }

          [(RemoteConfigurationController *)v47 _simplifyProviderConfigurations];

          goto LABEL_60;
        }
      }
    }

    v44 = SSBOSLogRemoteConfiguration();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      [RemoteConfigurationController _initializeProviderConfigurationsWithConfiguration:];
    }

    [(RemoteConfigurationController *)self _initializeToDefaultProviderConfigurations];
LABEL_60:
  }

  else
  {
    [(RemoteConfigurationController *)self _initializeToDefaultProviderConfigurations];
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)_urlOfDownloadedConfiguration
{
  v19[4] = *MEMORY[0x277D85DE8];
  v2 = geteuid();
  if (!v2)
  {
    v2 = getuid();
  }

  v3 = getpwuid(v2);
  if (v3 && (pw_dir = v3->pw_dir) != 0)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:pw_dir isDirectory:1 relativeToURL:0];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 URLByAppendingPathComponent:@"Library"];
      v8 = [v7 URLByAppendingPathComponent:@"SafariSafeBrowsing" isDirectory:1];
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [v8 path];
      v19[0] = 0;
      v11 = [v9 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:v19];
      v12 = v19[0];

      if (v11)
      {
        v13 = [@"SafeBrowsingRemoteConfiguration-1" stringByAppendingPathExtension:@"plist"];
        v14 = [v8 URLByAppendingPathComponent:v13];
      }

      else
      {
        v13 = SSBOSLogRemoteConfiguration();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [v12 ssb_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [RemoteConfigurationController _urlOfDownloadedConfiguration];
        }

        v14 = 0;
      }
    }

    else
    {
      v16 = SSBOSLogRemoteConfiguration();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [RemoteConfigurationController _urlOfDownloadedConfiguration];
      }

      v14 = 0;
    }
  }

  else
  {
    v15 = SSBOSLogRemoteConfiguration();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RemoteConfigurationController _urlOfDownloadedConfiguration];
    }

    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_loadConfigurationFromDiskIfNecessary
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RemoteConfigurationController__loadConfigurationFromDiskIfNecessary__block_invoke;
  block[3] = &unk_278565058;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __70__RemoteConfigurationController__loadConfigurationFromDiskIfNecessary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[7])
  {
    v3 = [v2 _urlOfDownloadedConfiguration];
    if (v3)
    {
      v4 = [MEMORY[0x277CCAA00] defaultManager];
      v5 = [v3 path];
      v6 = [v4 fileExistsAtPath:v5];

      if (v6)
      {
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
        v8 = *(a1 + 32);
        v9 = *(v8 + 56);
        *(v8 + 56) = v7;

        if (!*(*(a1 + 32) + 56))
        {
          v10 = SSBOSLogRemoteConfiguration();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            __70__RemoteConfigurationController__loadConfigurationFromDiskIfNecessary__block_invoke_cold_1();
          }
        }
      }
    }
  }
}

- (void)_writeConfigurationToDisk:(id)a3
{
  v11[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RemoteConfigurationController *)self _urlOfDownloadedConfiguration];
  if (v5)
  {
    if (v4)
    {
      [v4 writeToURL:v5 atomically:1];
    }

    else
    {
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      v11[0] = 0;
      v7 = [v6 removeItemAtURL:v5 error:v11];
      v8 = v11[0];

      if ((v7 & 1) == 0)
      {
        v9 = SSBOSLogRemoteConfiguration();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [v8 ssb_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [RemoteConfigurationController _writeConfigurationToDisk:];
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentConfiguration:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RemoteConfigurationController_setCurrentConfiguration___block_invoke;
  v7[3] = &unk_278565080;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

- (void)_setCurrentConfigurationOnInternalQueue:(id)a3
{
  v5 = a3;
  currentConfiguration = self->_currentConfiguration;
  v7 = v5;
  if (v5 | currentConfiguration && (!v5 || ![(NSDictionary *)currentConfiguration isEqualToDictionary:v5]))
  {
    objc_storeStrong(&self->_currentConfiguration, a3);
    [(RemoteConfigurationController *)self _initializeProviderConfigurationsWithConfiguration:self->_currentConfiguration];
    [(RemoteConfigurationController *)self _writeConfigurationToDisk:self->_currentConfiguration];
    [(RemoteConfigurationController *)self _notifyProviderConfigurationsDidChangeIfNecessary];
  }
}

- (void)_notifyProviderConfigurationsDidChangeIfNecessary
{
  v2 = self;
  if (self->_googleConfigurationDidChange)
  {
    self = notify_post("com.apple.Safari.SafeBrowsing.GoogleRemoteConfigurationDidChange");
  }

  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(self);
  if (shouldConsultWithTencent && v2->_tencentConfigurationDidChange)
  {
    shouldConsultWithTencent = notify_post("com.apple.Safari.SafeBrowsing.TencentRemoteConfigurationDidChange");
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent) && v2->_appleConfigurationDidChange)
  {
    notify_post("com.apple.Safari.SafeBrowsing.AppleRemoteConfigurationDidChange");
  }

  [(RemoteConfigurationController *)v2 _resetProviderConfigurationsDidChange];
}

- (void)_downloadConfigurationWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBABB8] sharedSession];
  v5 = configurationBaseURL();
  v6 = [@"SafeBrowsingRemoteConfiguration-1" stringByAppendingPathExtension:@"plist"];
  v7 = [v5 URLByAppendingPathComponent:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__RemoteConfigurationController__downloadConfigurationWithCompletionHandler___block_invoke;
  v10[3] = &unk_2785650A8;
  v8 = v3;
  v11 = v8;
  v9 = [v4 dataTaskWithURL:v7 completionHandler:v10];
  [v9 resume];
}

void __77__RemoteConfigurationController__downloadConfigurationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 && v9)
  {
    v11 = SSBOSLogRemoteConfiguration();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v10 ssb_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __77__RemoteConfigurationController__downloadConfigurationWithCompletionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateConfigurationIfNecessary
{
  v3 = [(RemoteConfigurationController *)self _lastConfigurationUpdateAttemptDate];
  v4 = [(RemoteConfigurationController *)self _shouldUpdateConfigurationGivenLastConfigurationUpdateAttemptDate:v3];

  if (v4)
  {
    [(RemoteConfigurationController *)self _setCurrentDateAsLastConfigurationUpdateAttemptDate];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__RemoteConfigurationController__updateConfigurationIfNecessary__block_invoke;
    v5[3] = &unk_2785650F8;
    v5[4] = self;
    objc_copyWeak(&v6, &location);
    [(RemoteConfigurationController *)self _downloadConfigurationWithCompletionHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __64__RemoteConfigurationController__updateConfigurationIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__RemoteConfigurationController__updateConfigurationIfNecessary__block_invoke_2;
    v5[3] = &unk_2785650D0;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = v3;
    dispatch_async(v4, v5);

    objc_destroyWeak(&v7);
  }
}

void __64__RemoteConfigurationController__updateConfigurationIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didReceiveConfigurationData:*(a1 + 32)];
}

- (void)_didReceiveConfigurationData:(id)a3
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:v8];
  v5 = v8[0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RemoteConfigurationController *)self _setCurrentConfigurationOnInternalQueue:v4];
  }

  else
  {
    v6 = SSBOSLogRemoteConfiguration();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v5 ssb_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [RemoteConfigurationController _didReceiveConfigurationData:];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldUpdateConfigurationGivenLastConfigurationUpdateAttemptDate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (Backend::Google::SSBUtilities::isInternalInstall(v3) && ([MEMORY[0x277CBEBD0] standardUserDefaults], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", @"DebugSafeBrowsingTestUpdateInterval"), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
    {
      [(Backend::Google::SSBUtilities *)v4 timeIntervalSinceNow];
      v8 = v7;
      [v6 doubleValue];
      v10 = v9 < -v8;
    }

    else
    {
      [(Backend::Google::SSBUtilities *)v4 timeIntervalSinceNow];
      v10 = v11 < -86400.0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)_lastConfigurationUpdateAttemptDate
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"SafeBrowsingRemoteConfigurationLastUpdateDate"];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (isKindOfClass)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v5;
}

- (void)_setCurrentDateAsLastConfigurationUpdateAttemptDate
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [MEMORY[0x277CBEAA8] date];
  [v3 setObject:v2 forKey:@"SafeBrowsingRemoteConfigurationLastUpdateDate"];
}

- (void)_scheduleConfigurationUpdateDaily
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RemoteConfigurationController__scheduleConfigurationUpdateDaily__block_invoke;
  block[3] = &unk_278565058;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __66__RemoteConfigurationController__scheduleConfigurationUpdateDaily__block_invoke(id *a1)
{
  if (!*(a1[4] + 2))
  {
    v2 = 86400000000000;
    if (Backend::Google::SSBUtilities::isInternalInstall(a1))
    {
      v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v4 = [v3 objectForKey:@"DebugSafeBrowsingTestUpdateInterval"];

      if (v4)
      {
        [v4 doubleValue];
        v2 = (v5 * 1000000000.0);
      }
    }

    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1[4] + 1));
    v7 = a1[4];
    v8 = v7[2];
    v7[2] = v6;

    objc_initWeak(&location, a1[4]);
    v9 = *(a1[4] + 2);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__RemoteConfigurationController__scheduleConfigurationUpdateDaily__block_invoke_2;
    v12[3] = &unk_278565120;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v9, v12);
    v10 = *(a1[4] + 2);
    v11 = dispatch_time(0, v2);
    dispatch_source_set_timer(v10, v11, v2, v2 / 0xA);
    dispatch_resume(*(a1[4] + 2));
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __66__RemoteConfigurationController__scheduleConfigurationUpdateDaily__block_invoke_2(uint64_t a1)
{
  v2 = SSBOSLogRemoteConfiguration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_2255EE000, v2, OS_LOG_TYPE_INFO, "update timer fired", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateConfigurationIfNecessary];
  }
}

- (BOOL)forceLoadConfigurationFromDisk
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__RemoteConfigurationController_forceLoadConfigurationFromDisk__block_invoke;
  v5[3] = &unk_278565148;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __63__RemoteConfigurationController_forceLoadConfigurationFromDisk__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _urlOfDownloadedConfiguration];
  if (v8)
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [v8 path];
    v4 = [v2 fileExistsAtPath:v3];

    if (v4)
    {
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v8];
      if (v5)
      {
        if (([*(*(a1 + 32) + 56) isEqualToDictionary:v5] & 1) == 0)
        {
          objc_storeStrong((*(a1 + 32) + 56), v5);
          [*(a1 + 32) _initializeProviderConfigurationsWithConfiguration:*(*(a1 + 32) + 56)];
          [*(a1 + 32) _notifyProviderConfigurationsDidChangeIfNecessary];
        }
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      if (v7)
      {
        *(v6 + 56) = 0;

        [*(a1 + 32) _initializeToDefaultProviderConfigurations];
        [*(a1 + 32) _notifyProviderConfigurationsDidChangeIfNecessary];
      }
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)forceUpdateConfigurationFromServer
{
  [(RemoteConfigurationController *)self _setCurrentDateAsLastConfigurationUpdateAttemptDate];
  v3 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v4 = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
  v5 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v4];
  v6 = configurationBaseURL();
  v7 = [@"SafeBrowsingRemoteConfiguration-1" stringByAppendingPathExtension:@"plist"];
  v8 = [v6 URLByAppendingPathComponent:v7];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke;
  v14[3] = &unk_278565198;
  v17 = &v18;
  v9 = v3;
  v15 = v9;
  v16 = self;
  v10 = [v5 dataTaskWithURL:v8 completionHandler:v14];
  [v10 resume];

  v11 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = 0;
    *(v19 + 24) = 0;
  }

  else
  {
    v12 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  return v12 & 1;
}

void __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v8 statusCode] == 404)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *(v12 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke_2;
      block[3] = &unk_278565080;
      block[4] = v12;
      v26 = v11;
      dispatch_async(v13, block);
      v14 = v26;
    }

    else
    {
      v15 = *(*(a1 + 40) + 8);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke_3;
      v20[3] = &unk_278565170;
      v16 = v7;
      v17 = *(a1 + 48);
      v21 = v16;
      v24 = v17;
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v22 = v18;
      v23 = v19;
      dispatch_async(v15, v20);

      v14 = v21;
    }
  }
}

intptr_t __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setCurrentConfigurationOnInternalQueue:0];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC58] propertyListWithData:*(a1 + 32) options:0 format:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 48) _setCurrentConfigurationOnInternalQueue:v2];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke_cold_1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_initializeProviderConfigurationsWithConfiguration:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2255EE000, log, OS_LOG_TYPE_ERROR, "Skipped an version range in the configuration. Missing min or max versions entries in dictionary", buf, 2u);
}

- (void)_urlOfDownloadedConfiguration
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__RemoteConfigurationController__loadConfigurationFromDiskIfNecessary__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_writeConfigurationToDisk:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v3, v4, "Failed to remove remote configuration file: %{public}@", v5);
}

void __77__RemoteConfigurationController__downloadConfigurationWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v3, v4, "Failed to get configuration data from server with error: %{public}@", v5);
}

- (void)_didReceiveConfigurationData:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v3, v4, "Failed to read configuration data received from server with error: %{public}@", v5);
}

@end