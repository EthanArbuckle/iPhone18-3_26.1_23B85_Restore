@interface PTDomain
+ (Class)rootSettingsClass;
+ (id)_sharedInstance;
+ (id)domainGroupName;
+ (id)domainName;
+ (id)rootSettings;
+ (void)registerTestRecipe:(id)a3;
- (id)_domainID;
- (id)_domainInfo;
- (id)_init;
- (void)_applyArchive:(id)a3;
- (void)_applyArchiveValue:(id)a3 forKeyPath:(id)a4;
- (void)_createConnection;
- (void)_disableObservationIfNecessary;
- (void)_handleConnectionInterrupted;
- (void)_handleConnectionInvalidated;
- (void)_registerTestRecipe:(id)a3;
- (void)_registerWithServerIfNecessary;
- (void)_restoreDefaultSettings;
- (void)_sendProxyDefinitionIfNecessary;
- (void)_tearDownConnection;
- (void)_updateActiveTestRecipe;
- (void)_updateServerConnectionStatusIfNecessary;
- (void)dealloc;
- (void)invokeOutletAtKeyPath:(id)a3;
- (void)restoreDefaultSettings;
- (void)sendActiveTestRecipeEvent:(int64_t)a3;
- (void)setArchiveValue:(id)a3 forKeyPath:(id)a4;
- (void)updateSettingsFromArchive:(id)a3;
@end

@implementation PTDomain

+ (id)rootSettings
{
  v2 = [a1 _sharedInstance];
  v3 = [v2 _rootSettings];

  return v3;
}

+ (id)_sharedInstance
{
  if (_sharedInstance_onceToken != -1)
  {
    +[PTDomain _sharedInstance];
  }

  os_unfair_lock_lock(&_sharedInstance___lock);
  v3 = NSStringFromClass(a1);
  v4 = [_sharedInstance___sharedInstancesByClassName objectForKey:v3];
  if (!v4)
  {
    v4 = [[a1 alloc] _init];
    [_sharedInstance___sharedInstancesByClassName setObject:v4 forKey:v3];
  }

  os_unfair_lock_unlock(&_sharedInstance___lock);

  return v4;
}

void __27__PTDomain__sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _sharedInstance___sharedInstancesByClassName;
  _sharedInstance___sharedInstancesByClassName = v0;

  if (PTInstallIsAppleInternal())
  {
    v2 = +[PTDefaults sharedInstance];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"prototypeSettingsEnabled"];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __27__PTDomain__sharedInstance__block_invoke_2;
    v19[3] = &unk_27835ED38;
    v4 = v2;
    v20 = v4;
    v5 = MEMORY[0x277D85CD0];
    v6 = [v4 observeDefault:v3 onQueue:MEMORY[0x277D85CD0] withBlock:v19];

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"activePrototypingEnabled"];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __27__PTDomain__sharedInstance__block_invoke_2_11;
    v17[3] = &unk_27835ED38;
    v8 = v4;
    v18 = v8;
    v9 = [v8 observeDefault:v7 onQueue:v5 withBlock:v17];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"remotePrototypingEnabled"];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __27__PTDomain__sharedInstance__block_invoke_2_16;
    v15[3] = &unk_27835ED38;
    v16 = v8;
    v11 = v8;
    v12 = [v11 observeDefault:v10 onQueue:v5 withBlock:v15];

    v13 = [v11 observeTestRecipeDefaultsOnQueue:v5 withBlock:&__block_literal_global_22];
  }

  else
  {
    v11 = PTLogObjectForTopic(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_21E61D000, v11, OS_LOG_TYPE_DEFAULT, "Not observing PTDefaults on customer install.", v14, 2u);
    }
  }
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = PTDomain;
  v2 = [(PTDomain *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(objc_msgSend(objc_opt_class() "rootSettingsClass"))];
    rootSettings = v2->_rootSettings;
    v2->_rootSettings = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    testRecipesByIdentifier = v2->_testRecipesByIdentifier;
    v2->_testRecipesByIdentifier = v5;

    if (PTInstallIsAppleInternal())
    {
      [(PTDomain *)v2 _updateServerConnectionStatusIfNecessary];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _handlePrototypingIsActiveNotification, @"com.apple.PrototypeTools.prototyping-is-active", 0, 0);
    }
  }

  return v2;
}

- (void)_updateServerConnectionStatusIfNecessary
{
  v3 = +[PTDefaults sharedInstance];
  v4 = [v3 prototypeSettingsEnabled];

  serverConnection = self->_serverConnection;
  if (v4)
  {
    if (!serverConnection)
    {
      [(PTDomain *)self _createConnection];

      [(PTDomain *)self _registerWithServerIfNecessary];
    }
  }

  else if (serverConnection)
  {
    [(PTDomain *)self _tearDownConnection];

    [(PTDomain *)self _restoreDefaultSettings];
  }
}

+ (void)registerTestRecipe:(id)a3
{
  v5 = a3;
  if (PTInstallIsAppleInternal())
  {
    v4 = [a1 _sharedInstance];
    [v4 _registerTestRecipe:v5];
  }
}

uint64_t __27__PTDomain__sharedInstance__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = PTLogObjectForTopic(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) prototypeSettingsEnabled];
    v4 = "disabled";
    if (v3)
    {
      v4 = "enabled";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_21E61D000, v2, OS_LOG_TYPE_DEFAULT, "Prototype settings are now %s: updating server connection status for all domains", &v6, 0xCu);
  }

  return [_sharedInstance___sharedInstancesByClassName enumerateKeysAndObjectsUsingBlock:&__block_literal_global_9];
}

uint64_t __27__PTDomain__sharedInstance__block_invoke_2_11(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = PTLogObjectForTopic(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) activePrototypingEnabled];
    v4 = "disabled";
    if (v3)
    {
      v4 = "enabled";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_21E61D000, v2, OS_LOG_TYPE_DEFAULT, "Active prototyping is now %s: updating observation status for all domains", &v6, 0xCu);
  }

  return [_sharedInstance___sharedInstancesByClassName enumerateKeysAndObjectsUsingBlock:&__block_literal_global_14];
}

void __27__PTDomain__sharedInstance__block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  [v3 _disableObservationIfNecessary];
  [v3 _sendProxyDefinitionIfNecessary];
}

uint64_t __27__PTDomain__sharedInstance__block_invoke_2_16(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = PTLogObjectForTopic(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) remotePrototypingEnabled];
    v4 = "disabled";
    if (v3)
    {
      v4 = "enabled";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_21E61D000, v2, OS_LOG_TYPE_DEFAULT, "Remote prototyping is now %s: sending proxy definitions as needed", &v6, 0xCu);
  }

  return [_sharedInstance___sharedInstancesByClassName enumerateKeysAndObjectsUsingBlock:&__block_literal_global_19];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.PrototypeTools.prototyping-is-active", 0);
  v4.receiver = self;
  v4.super_class = PTDomain;
  [(PTDomain *)&v4 dealloc];
}

- (void)updateSettingsFromArchive:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__PTDomain_updateSettingsFromArchive___block_invoke;
  v6[3] = &unk_27835EC80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __38__PTDomain_updateSettingsFromArchive___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _applyArchive:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _noteRegistrationCompleted];
}

- (void)restoreDefaultSettings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PTDomain_restoreDefaultSettings__block_invoke;
  block[3] = &unk_27835ED38;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __34__PTDomain_restoreDefaultSettings__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _restoreDefaultSettings];
  v2 = *(a1 + 32);

  return [v2 _noteRegistrationCompleted];
}

- (void)setArchiveValue:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PTDomain_setArchiveValue_forKeyPath___block_invoke;
  block[3] = &unk_27835ED60;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)invokeOutletAtKeyPath:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__PTDomain_invokeOutletAtKeyPath___block_invoke;
  v6[3] = &unk_27835EC80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __34__PTDomain_invokeOutletAtKeyPath___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 32) valueForKeyPath:*(a1 + 40)];
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"putative outlet is not a PTOutlet"];
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"putative outlet is nil"];
  }

  [v1 _invokeActions];
}

- (void)sendActiveTestRecipeEvent:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__PTDomain_sendActiveTestRecipeEvent___block_invoke;
  v3[3] = &unk_27835ED88;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __38__PTDomain_sendActiveTestRecipeEvent___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = PTPrototypingEventShortName(*(a1 + 40));
  v3 = *(*(a1 + 32) + 48);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (![v3 _wantsEvent:*(a1 + 40)])
  {
    if (*(*(a1 + 32) + 48))
    {
      v7 = PTLogObjectForTopic(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) _domainID];
        v9 = [*(*(a1 + 32) + 48) title];
        v11 = 138412802;
        v12 = v8;
        v13 = 2112;
        v14 = v2;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_21E61D000, v7, OS_LOG_TYPE_DEFAULT, "Domain %@ received '%@' but test recipe '%@' doesn't want it", &v11, 0x20u);
      }

LABEL_11:

      goto LABEL_12;
    }

LABEL_9:
    v7 = PTLogObjectForTopic(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) _domainID];
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v2;
      _os_log_impl(&dword_21E61D000, v7, OS_LOG_TYPE_DEFAULT, "Domain %@ received '%@' but there is no active test recipe", &v11, 0x16u);
    }

    goto LABEL_11;
  }

  v4 = PTLogObjectForTopic(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) _domainID];
    v6 = [*(*(a1 + 32) + 48) title];
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = v2;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_21E61D000, v4, OS_LOG_TYPE_DEFAULT, "Domain %@ delivering '%@' to test recipe '%@'", &v11, 0x20u);
  }

  [*(*(a1 + 32) + 48) _handleEvent:*(a1 + 40)];
LABEL_12:
}

- (id)_domainInfo
{
  domainInfo = self->_domainInfo;
  if (!domainInfo)
  {
    v4 = [[PTDomainInfo alloc] initWithDomain:self];
    v5 = self->_domainInfo;
    self->_domainInfo = v4;

    domainInfo = self->_domainInfo;
  }

  return domainInfo;
}

- (id)_domainID
{
  domainID = self->_domainID;
  if (!domainID)
  {
    v4 = [(PTDomain *)self _domainInfo];
    v5 = [v4 uniqueIdentifier];
    v6 = self->_domainID;
    self->_domainID = v5;

    domainID = self->_domainID;
  }

  return domainID;
}

- (void)_registerTestRecipe:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PTTestRecipeInfo alloc];
  v6 = [(PTDomain *)self _domainInfo];
  v7 = [(PTTestRecipeInfo *)v5 initWithTestRecipe:v4 domainInfo:v6];

  [v4 setInfo:v7];
  v8 = [(PTTestRecipeInfo *)v7 uniqueIdentifier];
  v9 = [(NSMutableDictionary *)self->_testRecipesByIdentifier objectForKey:v8];
  if (v9)
  {
    v10 = PTLogObjectForTopic(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PTDomain *)self _domainID];
      v12 = [v4 title];
      *buf = 138412546;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_21E61D000, v10, OS_LOG_TYPE_DEFAULT, "Domain %@: replacing test recipe with title %@", buf, 0x16u);
    }

    [v9 invalidate];
  }

  [(NSMutableDictionary *)self->_testRecipesByIdentifier setObject:v4 forKey:v8];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __32__PTDomain__registerTestRecipe___block_invoke;
  v21 = &unk_27835EC80;
  v22 = self;
  v13 = v8;
  v23 = v13;
  [v4 setInvalidationHandler:&v18];
  [(PTDomain *)self _updateActiveTestRecipe:v18];
  if (self->_registrationRequested)
  {
    v14 = PTLogObjectForTopic(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(PTDomain *)self _domainID];
      v16 = [v4 title];
      *buf = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_21E61D000, v14, OS_LOG_TYPE_DEFAULT, "Domain %@: registering test recipe %@", buf, 0x16u);
    }

    v17 = [(NSXPCConnection *)self->_serverConnection remoteObjectProxy];
    [v17 registerTestRecipeWithInfo:v7];
  }
}

- (void)_updateActiveTestRecipe
{
  v3 = +[PTDefaults sharedInstance];
  v8 = [v3 activeTestRecipeIdentifier];

  if (v8)
  {
    v4 = [(NSMutableDictionary *)self->_testRecipesByIdentifier objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  activeTestRecipe = self->_activeTestRecipe;
  p_activeTestRecipe = &self->_activeTestRecipe;
  v5 = activeTestRecipe;
  if (activeTestRecipe != v4)
  {
    if (v5)
    {
      [(PTTestRecipe *)v5 _deactivate];
    }

    objc_storeStrong(p_activeTestRecipe, v4);
    if (*p_activeTestRecipe)
    {
      [(PTTestRecipe *)*p_activeTestRecipe _activate];
    }
  }
}

- (void)_applyArchive:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PTLogObjectForTopic(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PTDomain *)self _domainID];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21E61D000, v5, OS_LOG_TYPE_DEFAULT, "Domain %@: applying archive", &v7, 0xCu);
  }

  [(PTSettings *)self->_rootSettings _setObservationEnabled:1];
  [(PTSettings *)self->_rootSettings restoreFromArchiveDictionary:v4];

  self->_archiveIsApplied = 1;
  [(PTDomain *)self _disableObservationIfNecessary];
}

- (void)_applyArchiveValue:(id)a3 forKeyPath:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = PTLogObjectForTopic(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PTDomain *)self _domainID];
    *buf = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_21E61D000, v8, OS_LOG_TYPE_DEFAULT, "Domain %@: applying archive value for keyPath %@", buf, 0x16u);
  }

  [(PTSettings *)self->_rootSettings _setObservationEnabled:1];
  rootSettings = self->_rootSettings;
  v14 = 0;
  v11 = [(PTSettings *)rootSettings _applyArchiveValue:v7 forKeyPath:v6 error:&v14];

  v12 = v14;
  if (v11)
  {
    self->_archiveIsApplied = 1;
  }

  else
  {
    v13 = PTLogObjectForTopic(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&dword_21E61D000, v13, OS_LOG_TYPE_DEFAULT, "   ...failed to apply archive value (%@)", buf, 0xCu);
    }
  }

  [(PTDomain *)self _disableObservationIfNecessary];
}

- (void)_restoreDefaultSettings
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = PTLogObjectForTopic(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PTDomain *)self _domainID];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_21E61D000, v3, OS_LOG_TYPE_DEFAULT, "Domain %@: restoring default values", &v5, 0xCu);
  }

  if (self->_archiveIsApplied)
  {
    [(PTSettings *)self->_rootSettings _setObservationEnabled:1];
    [(PTSettings *)self->_rootSettings restoreDefaultValues];
    self->_archiveIsApplied = 0;
  }

  [(PTDomain *)self _disableObservationIfNecessary];
}

- (void)_disableObservationIfNecessary
{
  if (!self->_archiveIsApplied || (+[PTDefaults sharedInstance](PTDefaults, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 activePrototypingEnabled], v3, (v4 & 1) == 0))
  {
    rootSettings = self->_rootSettings;

    [(PTSettings *)rootSettings _setObservationEnabled:0];
  }
}

- (void)_sendProxyDefinitionIfNecessary
{
  if (!self->_haveSentProxyDefinition)
  {
    if (self->_serverConnection)
    {
      v3 = [objc_opt_class() rootSettingsClass];
      if (v3)
      {
        v4 = v3;
        v13 = +[PTDefaults sharedInstance];
        v5 = [(PTDomain *)self _domainInfo];
        v6 = [v5 settingsFrameworkBundlePath];

        v7 = [v6 lastPathComponent];
        v8 = [v7 pathExtension];

        if (v8)
        {
          v9 = [v8 compare:@"framework" options:3] != 0;
        }

        else
        {
          v9 = 1;
        }

        if (([v13 remotePrototypingEnabled] & 1) != 0 || (objc_msgSend(v13, "activePrototypingEnabled") & v9) == 1)
        {
          v10 = [PTProxySettingsDefinition definitionForSettingsClass:v4];
          v11 = [(NSXPCConnection *)self->_serverConnection remoteObjectProxy];
          v12 = [(PTDomain *)self _domainID];
          [v11 registerRootSettingsProxyDefinition:v10 forDomainID:v12];

          self->_haveSentProxyDefinition = 1;
        }
      }
    }
  }
}

- (void)_createConnection
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = PTLogObjectForTopic(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PTDomain *)self _domainID];
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_21E61D000, v3, OS_LOG_TYPE_DEFAULT, "Domain %@: creating server connection", buf, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.PrototypeTools.domainserver" options:4096];
  serverConnection = self->_serverConnection;
  self->_serverConnection = v5;

  v7 = self->_serverConnection;
  v8 = PTDomainServerInterface();
  [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

  v9 = self->_serverConnection;
  v10 = PTDomainClientInterface();
  [(NSXPCConnection *)v9 setExportedInterface:v10];

  [(NSXPCConnection *)self->_serverConnection setExportedObject:self];
  objc_initWeak(buf, self);
  v11 = self->_serverConnection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __29__PTDomain__createConnection__block_invoke;
  v18[3] = &unk_27835EDB0;
  objc_copyWeak(&v19, buf);
  [(NSXPCConnection *)v11 setInterruptionHandler:v18];
  v12 = self->_serverConnection;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __29__PTDomain__createConnection__block_invoke_3;
  v16 = &unk_27835EDB0;
  objc_copyWeak(&v17, buf);
  [(NSXPCConnection *)v12 setInvalidationHandler:&v13];
  [(NSXPCConnection *)self->_serverConnection resume:v13];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __29__PTDomain__createConnection__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__PTDomain__createConnection__block_invoke_2;
  block[3] = &unk_27835EDB0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __29__PTDomain__createConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInterrupted];
}

void __29__PTDomain__createConnection__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__PTDomain__createConnection__block_invoke_4;
  block[3] = &unk_27835EDB0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __29__PTDomain__createConnection__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInvalidated];
}

- (void)_tearDownConnection
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = PTLogObjectForTopic(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PTDomain *)self _domainID];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_21E61D000, v3, OS_LOG_TYPE_DEFAULT, "Domain %@: tearing down server connection", &v6, 0xCu);
  }

  [(NSXPCConnection *)self->_serverConnection suspend];
  [(NSXPCConnection *)self->_serverConnection invalidate];
  serverConnection = self->_serverConnection;
  self->_serverConnection = 0;
}

- (void)_handleConnectionInterrupted
{
  v15 = *MEMORY[0x277D85DE8];
  registrationCompleted = self->_registrationCompleted;
  *&self->_registrationRequested = 0;
  v4 = PTLogObjectForTopic(1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (registrationCompleted)
  {
    if (v5)
    {
      v6 = [(PTDomain *)self _domainID];
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_21E61D000, v4, OS_LOG_TYPE_DEFAULT, "Domain %@: server connection interrupted, no need to reconnect", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = [(PTDomain *)self _domainID];
      delayBeforeRegisteringAfterInterruption = self->_delayBeforeRegisteringAfterInterruption;
      *buf = 138412546;
      v12 = v7;
      v13 = 2048;
      v14 = delayBeforeRegisteringAfterInterruption;
      _os_log_impl(&dword_21E61D000, v4, OS_LOG_TYPE_DEFAULT, "Domain %@: server connection interrupted, will reconnect after %.1gs", buf, 0x16u);
    }

    v9 = dispatch_time(0, (self->_delayBeforeRegisteringAfterInterruption * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PTDomain__handleConnectionInterrupted__block_invoke;
    block[3] = &unk_27835ED38;
    block[4] = self;
    dispatch_after(v9, MEMORY[0x277D85CD0], block);
  }
}

- (void)_handleConnectionInvalidated
{
  serverConnection = self->_serverConnection;
  self->_serverConnection = 0;

  *&self->_registrationRequested = 0;
}

- (void)_registerWithServerIfNecessary
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_serverConnection && !self->_registrationRequested)
  {
    v3 = PTLogObjectForTopic(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(PTDomain *)self _domainID];
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_21E61D000, v3, OS_LOG_TYPE_DEFAULT, "Domain %@: registering with server", buf, 0xCu);
    }

    v5 = [(NSXPCConnection *)self->_serverConnection remoteObjectProxy];
    v6 = [(PTDomain *)self _domainInfo];
    [v5 registerDomainWithInfo:v6];

    testRecipesByIdentifier = self->_testRecipesByIdentifier;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__PTDomain__registerWithServerIfNecessary__block_invoke;
    v8[3] = &unk_27835EDD8;
    v8[4] = self;
    [(NSMutableDictionary *)testRecipesByIdentifier enumerateKeysAndObjectsUsingBlock:v8];
    [(PTDomain *)self _sendProxyDefinitionIfNecessary];
    self->_registrationRequested = 1;
    self->_delayBeforeRegisteringAfterInterruption = self->_delayBeforeRegisteringAfterInterruption + 2.0;
  }
}

void __42__PTDomain__registerWithServerIfNecessary__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PTLogObjectForTopic(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 title];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_21E61D000, v5, OS_LOG_TYPE_DEFAULT, "   ...registering test recipe %@", &v9, 0xCu);
  }

  v7 = [*(*(a1 + 32) + 8) remoteObjectProxy];
  v8 = [v4 info];
  [v7 registerTestRecipeWithInfo:v8];
}

+ (id)domainGroupName
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

+ (id)domainName
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

+ (Class)rootSettingsClass
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

@end