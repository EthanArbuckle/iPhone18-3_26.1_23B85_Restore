@interface PKService
+ (id)defaultService;
+ (void)main;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)unregisterPersonality:(id)a3;
- (NSXPCListenerEndpoint)endpoint;
- (PKService)init;
- (PKService)initWithExternalProviders:(id)a3;
- (PKServicePersonality)solePersonality;
- (id)configuredSubsystemList;
- (id)connectionForPlugInNamed:(id)a3;
- (id)defaultsForPlugInNamed:(id)a3;
- (id)discoverSubsystemNamed:(id)a3 options:(id)a4 required:(BOOL)a5;
- (id)embeddedPrincipalForPlugInNamed:(id)a3;
- (id)hostPrincipalForPlugInNamed:(id)a3;
- (id)personalityNamed:(id)a3;
- (id)plugInPrincipalForPlugInNamed:(id)a3;
- (void)_prepareToRunUsingServiceListener:(BOOL)a3;
- (void)beganUsingServicePersonality:(id)a3;
- (void)cancelTermination;
- (void)checkEnvironment:(id)a3;
- (void)checkIn;
- (void)discoverSubsystems;
- (void)launchContainingApplicationForPlugInNamed:(id)a3;
- (void)mergeSubsystemList:(id)a3 from:(id)a4;
- (void)mergeSubsystems:(id)a3 from:(id)a4;
- (void)registerPersonality:(id)a3;
- (void)scheduleTermination:(double)a3;
- (void)setSolePersonality:(id)a3;
@end

@implementation PKService

- (void)discoverSubsystems
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(PKService *)self configuredSubsystemList];
  if ([(PKService *)self isSystemService])
  {
    v4 = 0;
    goto LABEL_15;
  }

  v5 = xpc_copy_bootstrap();
  v6 = v5;
  if (!v5)
  {
    v4 = 0;
    goto LABEL_12;
  }

  v7 = xpc_dictionary_get_value(v5, "SubsystemOptions");
  if (!v7)
  {
    goto LABEL_9;
  }

  v4 = _CFXPCCreateCFObjectFromXPCObject();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = pklog_handle_for_category(8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1C68B6C08(v8);
    }

LABEL_9:
    v4 = 0;
  }

LABEL_12:
  v9 = pklog_handle_for_category(8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v10 preferredLocalizations];
    *buf = 138412290;
    v31 = v11;
    _os_log_impl(&dword_1C6892000, v9, OS_LOG_TYPE_INFO, "Bootstrapping; Preferred localizations: %@", buf, 0xCu);
  }

LABEL_15:
  v12 = [MEMORY[0x1E695DF70] array];
  [(PKService *)self checkIn];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = *v26;
    do
    {
      v16 = 0;
      if (v14 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14;
      }

      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(PKService *)self discoverSubsystemNamed:*(*(&v25 + 1) + 8 * v16) options:v4 required:1, v25];
        if (v18)
        {
          [v12 addObject:v18];
        }

        ++v16;
      }

      while (v17 != v16);
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v19 = "NSViewService_PKSubsystem";
  v20 = &off_1E827F9B0;
  do
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v19, v25}];
    if ((!v13 || ([v13 containsObject:v22] & 1) == 0) && -[PKService _processDefaultSubsystemName:](self, "_processDefaultSubsystemName:", v22))
    {
      v23 = [(PKService *)self discoverSubsystemNamed:v22 options:v4 required:0];
      if (v23)
      {
        [v12 addObject:v23];
      }
    }

    v21 = *v20++;
    v19 = v21;
  }

  while (v21);
  [(PKService *)self setSubsystems:v12];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)checkIn
{
  if (objc_opt_class())
  {
    v2 = [MEMORY[0x1E69C75C8] currentProcess];
    v3 = pklog_handle_for_category(7);
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "KernelMemoryStatus", &unk_1C68BDED5, buf, 2u);
    }

    getpid();
    memorystatus_control();
    v4 = pklog_handle_for_category(7);
    if (os_signpost_enabled(v4))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "KernelMemoryStatus", &unk_1C68BDED5, v5, 2u);
    }
  }
}

+ (id)defaultService
{
  if (qword_1ED6EF088 != -1)
  {
    sub_1C6896F44();
  }

  v3 = qword_1ED6EF078;

  return v3;
}

- (id)configuredSubsystemList
{
  v3 = [(PKService *)self external];
  v4 = [v3 filesystem];
  v5 = [v4 mainBundle];
  v6 = [v5 infoDictionary];

  v7 = [v6 objectForKeyedSubscript:@"NSExtension"];
  if (!v7)
  {
    v7 = [v6 objectForKeyedSubscript:@"PlugInKit"];
  }

  v8 = [MEMORY[0x1E695DF70] array];
  [(PKService *)self mergeSubsystems:v8 from:v7];

  return v8;
}

+ (void)main
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = pklog_handle_for_category(7);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExtensionStartup", &unk_1C68BDED5, buf, 2u);
  }

  v3 = pklog_handle_for_category(7);
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExtensionStartupXPCReady", &unk_1C68BDED5, buf, 2u);
  }

  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  v11 = 0;
  v12 = 0;
  current_persona = voucher_get_current_persona();
  v5 = current_persona;
  *buf = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  *buf = 1;
  pklog_get_persona_type_and_name(current_persona, buf, &v12, &v11);
  v6 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = geteuid();
    v8 = getuid();
    *v13 = 67110146;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v5;
    v19 = 2080;
    v20 = v12;
    v21 = 2080;
    v22 = v11;
    _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_DEFAULT, "Hello, I'm launching as euid = %d, uid = %d, personaid = %d, type = %s, name = %s", v13, 0x28u);
  }

  v9 = +[PKService defaultService];
  [v9 run];

  v10 = *MEMORY[0x1E69E9840];
}

- (PKService)init
{
  v3 = objc_opt_new();
  v4 = [(PKService *)self initWithExternalProviders:v3];

  return v4;
}

- (PKServicePersonality)solePersonality
{
  os_unfair_lock_lock(&self->_personalityLock);
  v3 = self->_solePersonality;
  os_unfair_lock_unlock(&self->_personalityLock);
  if (!v3)
  {
    v4 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B6DE4(self, v4);
    }
  }

  return v3;
}

- (void)beganUsingServicePersonality:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1C68AAA44;
  v7[3] = &unk_1E827F1A0;
  v8 = v4;
  v9 = self;
  v5 = qword_1ED6EF120;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&qword_1ED6EF120, v7);
  }
}

- (NSXPCListenerEndpoint)endpoint
{
  v2 = [(PKService *)self serviceListener];
  v3 = [v2 endpoint];

  return v3;
}

- (PKService)initWithExternalProviders:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PKService;
  v6 = [(PKService *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_external, a3);
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    [(PKService *)v7 setPersonalities:v8];

    v9 = dispatch_queue_create("timer queue", 0);
    timerQueue = v7->_timerQueue;
    v7->_timerQueue = v9;

    v7->_personalityLock._os_unfair_lock_opaque = 0;
    active_platform = dyld_get_active_platform();
    v12 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v17 = active_platform;
      _os_log_impl(&dword_1C6892000, v12, OS_LOG_TYPE_INFO, "setting extensionPointPlatform: %u", buf, 8u);
    }

    [(PKService *)v7 setExtensionPointPlatform:active_platform];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_prepareToRunUsingServiceListener:(BOOL)a3
{
  v3 = a3;
  [(PKService *)self checkEnvironment:0];
  if (v3)
  {
    [MEMORY[0x1E696B0D8] serviceListener];
  }

  else
  {
    [MEMORY[0x1E696B0D8] anonymousListener];
  }
  v5 = ;
  [(PKService *)self setServiceListener:v5];

  v6 = [(PKService *)self serviceListener];
  [v6 setDelegate:self];

  [(PKService *)self discoverSubsystems];
  v7 = [(PKService *)self external];
  v8 = [v7 filesystem];
  v9 = [v8 mainBundle];
  v10 = [v9 infoDictionary];

  v11 = [v10 objectForKeyedSubscript:@"NSExtension"];
  if (!v11)
  {
    v11 = [v10 objectForKeyedSubscript:@"PlugInKit"];
  }

  v12 = [v11 objectForKeyedSubscript:@"Delegate"];
  v13 = v12;
  if (v12)
  {
    v14 = objc_lookUpClass([v12 UTF8String]);
    if (v14)
    {
      v15 = v14;
      if ([(objc_class *)v14 conformsToProtocol:&unk_1F464CFD8])
      {
        v16 = objc_alloc_init(v15);
        if (v16)
        {
          [(PKService *)self setDelegate:v16];
LABEL_18:

          goto LABEL_19;
        }

LABEL_10:
        v17 = pklog_handle_for_category(7);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1C68B6B50();
        }

        goto LABEL_18;
      }

      v18 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B6AF4();
      }
    }

    v16 = 0;
    goto LABEL_10;
  }

LABEL_19:
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKService *)self serviceListener];

  if (v8 == v6)
  {
    v9 = [[PKServicePersonality alloc] initWithConnection:v7 service:self];
  }

  else
  {
    v9 = pklog_handle_for_category(7);
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B6BAC();
    }
  }

  return v8 == v6;
}

- (void)mergeSubsystems:(id)a3 from:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"Subsystems"];
  [(PKService *)self mergeSubsystemList:v16 from:v7];

  v8 = [v6 objectForKeyedSubscript:@"NSExtensionPointIdentifier"];
  if (!v8)
  {
    v8 = [v6 objectForKeyedSubscript:@"SDK"];
  }

  if (v8)
  {
    v9 = [(PKService *)self extensionPointPlatform];
    v10 = [(PKService *)self external];
    v11 = [PKPlugInCore readSDKDictionary:v8 forPlatform:v9 externalProviders:v10];

    v12 = [v11 objectForKeyedSubscript:@"NSExtension"];
    v13 = [v12 objectForKeyedSubscript:@"Subsystems"];
    [(PKService *)self mergeSubsystemList:v16 from:v13];

    v14 = [v11 objectForKeyedSubscript:@"XPCService"];
    v15 = [v14 objectForKeyedSubscript:@"ServiceType"];

    if ([v15 isEqualToString:@"System"])
    {
      [(PKService *)self setIsSystemService:1];
    }
  }
}

- (void)mergeSubsystemList:(id)a3 from:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        v10 = 0;
        if (v8 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v8;
        }

        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v10);
          if (([v5 containsObject:v12] & 1) == 0)
          {
            [v5 addObject:v12];
          }

          ++v10;
        }

        while (v11 != v10);
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)discoverSubsystemNamed:(id)a3 options:(id)a4 required:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_lookUpClass([v7 UTF8String]);
  v10 = pklog_handle_for_category(8);
  v11 = v10;
  if (v9)
  {
    if (os_signpost_enabled(v10))
    {
      v17 = 138543362;
      v18 = v7;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExtensionSubsystemInit", " name=%{public, signpost.description:attribute}@ ", &v17, 0xCu);
    }

    v12 = pklog_handle_for_category(8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = v7;
      _os_log_impl(&dword_1C6892000, v12, OS_LOG_TYPE_INFO, "Bootstrapping; external subsystem [%{public}@] initializing", &v17, 0xCu);
    }

    v13 = __PLUGINKIT_CALLING_OUT_TO_CLIENT_SUBSYSTEM_FOR_INIT__(v9, v8);
    v14 = pklog_handle_for_category(8);
    if (os_signpost_enabled(v14))
    {
      v17 = 138543618;
      v18 = v7;
      v19 = 1026;
      v20 = v13 != 0;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ExtensionSubsystemInit", " name=%{public, signpost.description:attribute}@  success=%{public, signpost.description:attribute}d ", &v17, 0x12u);
    }

    if (v13)
    {
      if ([v13 conformsToProtocol:&unk_1F464D0C0])
      {
        goto LABEL_20;
      }

      v11 = pklog_handle_for_category(8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B6C4C();
      }
    }

    else
    {
      v11 = pklog_handle_for_category(8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B6CA8();
      }
    }
  }

  else if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1C68B6D04();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = 138543362;
    v18 = v7;
    _os_log_impl(&dword_1C6892000, v11, OS_LOG_TYPE_INFO, "Bootstrapping; external subsystem [%{public}@] not present, skipping", &v17, 0xCu);
  }

  v13 = 0;
LABEL_20:

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)launchContainingApplicationForPlugInNamed:(id)a3
{
  v3 = pklog_handle_for_category(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B6D6C(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (id)defaultsForPlugInNamed:(id)a3
{
  v3 = [(PKService *)self personalityNamed:a3];
  v4 = [v3 preferences];

  return v4;
}

- (id)plugInPrincipalForPlugInNamed:(id)a3
{
  v3 = [(PKService *)self personalityNamed:a3];
  v4 = [v3 plugInPrincipal];

  return v4;
}

- (id)hostPrincipalForPlugInNamed:(id)a3
{
  v3 = [(PKService *)self personalityNamed:a3];
  v4 = [v3 hostPrincipal];

  return v4;
}

- (id)embeddedPrincipalForPlugInNamed:(id)a3
{
  v3 = [(PKService *)self personalityNamed:a3];
  v4 = [v3 embeddedPrincipal];

  return v4;
}

- (id)connectionForPlugInNamed:(id)a3
{
  v3 = [(PKService *)self personalityNamed:a3];
  v4 = [v3 connection];

  return v4;
}

- (void)setSolePersonality:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_personalityLock);
  solePersonality = self->_solePersonality;
  self->_solePersonality = v4;

  os_unfair_lock_unlock(&self->_personalityLock);
}

- (id)personalityNamed:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_personalityLock);
  if (v4)
  {
    v5 = [(PKService *)self personalities];
    v6 = [v5 objectForKeyedSubscript:v4];

    if ([v6 count] == 1)
    {
      v7 = [v6 allValues];
      v8 = [v7 objectAtIndexedSubscript:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = self->_solePersonality;
  }

  os_unfair_lock_unlock(&self->_personalityLock);

  return v8;
}

- (void)registerPersonality:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_personalityLock);
  v5 = [(PKService *)self personalities];
  v6 = [v4 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [(PKService *)self personalities];
    v9 = [v4 identifier];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  v10 = MEMORY[0x1E696AD98];
  v11 = [v4 connection];
  v12 = [v10 numberWithInt:{objc_msgSend(v11, "processIdentifier")}];
  [v7 setObject:v4 forKeyedSubscript:v12];

  v13 = [(PKService *)self personalities];
  if ([v13 count] == 1)
  {
    v14 = [v7 count];

    if (v14 == 1)
    {
      v15 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v4 uuid];
        v17 = [v4 identifier];
        v18 = [v4 version];
        v23 = 138543874;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        v27 = 2112;
        v28 = v18;
        _os_log_impl(&dword_1C6892000, v15, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Set sole personality.", &v23, 0x20u);
      }

      v19 = v4;
      solePersonality = self->_solePersonality;
      self->_solePersonality = v19;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v21 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B6E70(v4, self, v21);
  }

  solePersonality = self->_solePersonality;
  self->_solePersonality = 0;
LABEL_12:

  os_unfair_lock_unlock(&self->_personalityLock);
  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)unregisterPersonality:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_personalityLock);
  v5 = [(PKService *)self personalities];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(PKService *)self personalities];
    v8 = [(PKPlugInCore *)v4 identifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    v6 = MEMORY[0x1E696AD98];
    v10 = [(PKServicePersonality *)v4 connection];
    v11 = [v6 numberWithInt:{objc_msgSend(v10, "processIdentifier")}];

    v12 = [v9 objectForKeyedSubscript:v11];
    LOBYTE(v6) = v12 != 0;

    if (v12)
    {
      [v9 removeObjectForKey:v11];
      if (self->_solePersonality == v4)
      {
        v13 = pklog_handle_for_category(7);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(PKPlugInCore *)v4 uuid];
          v15 = [(PKPlugInCore *)v4 identifier];
          v16 = [(PKPlugInCore *)v4 version];
          v20 = 138543874;
          v21 = v14;
          v22 = 2112;
          v23 = v15;
          v24 = 2112;
          v25 = v16;
          _os_log_impl(&dword_1C6892000, v13, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Removed sole personality.", &v20, 0x20u);
        }

        solePersonality = self->_solePersonality;
        self->_solePersonality = 0;
      }
    }
  }

  os_unfair_lock_unlock(&self->_personalityLock);

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)checkEnvironment:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  __s[0] = 63;
  v4 = [(PKService *)self external];
  v5 = [v4 sandbox];
  v6 = [(PKService *)self external];
  v7 = [v6 sys];
  v8 = [v5 sandbox_container_path_for_pid:objc_msgSend(v7 buffer:"getpid") bufsize:{__s, 1024}];

  if (v8)
  {
    v9 = pklog_handle_for_category(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B6F78(v9);
    }
  }

  else if (strlen(__s) > 1)
  {
    goto LABEL_9;
  }

  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"plugin has invalid sandbox or container: error %d path %s", *__error(), __s];
  v11 = pklog_handle_for_category(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B6FBC();
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", v10}];
LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)scheduleTermination:(double)a3
{
  v5 = [(PKService *)self timerQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1C68AC42C;
  v6[3] = &unk_1E827F178;
  v6[4] = self;
  *&v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)cancelTermination
{
  v3 = [(PKService *)self timerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C68AC6DC;
  block[3] = &unk_1E827F1C8;
  block[4] = self;
  dispatch_sync(v3, block);
}

@end