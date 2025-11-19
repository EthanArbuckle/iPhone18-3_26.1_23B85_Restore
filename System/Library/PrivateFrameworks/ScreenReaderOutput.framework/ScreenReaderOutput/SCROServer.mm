@interface SCROServer
+ (SCROServer)sharedServer;
- (BOOL)_ensureResourcesExist;
- (BOOL)_registerWithMachServiceName:(char *)a3;
- (BOOL)_shouldStayAliveAfterLastClientUnregisters;
- (SCROServer)init;
- (__CFRunLoopSource)serverSource;
- (__CFRunLoopTimer)_deathTimer;
- (int)_registerForNotificationOnDeathPort:(unsigned int)a3;
- (int64_t)_clientCount;
- (int64_t)_incrementClientCount;
- (void)_deleteOldResources;
- (void)_setClientCount:(int64_t)a3;
- (void)_setShouldStayAliveAfterLastClientUnregisters:(BOOL)a3;
- (void)unregisterWithMach;
@end

@implementation SCROServer

+ (SCROServer)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    +[SCROServer sharedServer];
  }

  v3 = _sharedServer;

  return v3;
}

uint64_t __26__SCROServer_sharedServer__block_invoke()
{
  v0 = objc_alloc_init(SCROServer);
  _sharedServer = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (SCROServer)init
{
  v6.receiver = self;
  v6.super_class = SCROServer;
  v2 = [(SCROServer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    contentLock = v2->_contentLock;
    v2->_contentLock = v3;

    [(SCROServer *)v2 _deleteOldResources];
    [(SCROServer *)v2 _ensureResourcesExist];
  }

  return v2;
}

- (int64_t)_clientCount
{
  [(NSLock *)self->_contentLock lock];
  clientCount = self->_clientCount;
  [(NSLock *)self->_contentLock unlock];
  return clientCount;
}

- (int64_t)_incrementClientCount
{
  [(NSLock *)self->_contentLock lock];
  v3 = self->_clientCount + 1;
  self->_clientCount = v3;
  [(NSLock *)self->_contentLock unlock];
  return v3;
}

- (void)_setClientCount:(int64_t)a3
{
  [(NSLock *)self->_contentLock lock];
  self->_clientCount = a3;
  contentLock = self->_contentLock;

  [(NSLock *)contentLock unlock];
}

- (__CFRunLoopTimer)_deathTimer
{
  [(NSLock *)self->_contentLock lock];
  deathTimer = self->_deathTimer;
  [(NSLock *)self->_contentLock unlock];
  return deathTimer;
}

- (int)_registerForNotificationOnDeathPort:(unsigned int)a3
{
  previous = 0;
  [(NSLock *)self->_contentLock lock];
  v5 = mach_port_request_notification(*MEMORY[0x277D85F48], a3, 72, 0, self->_deathPort, 0x15u, &previous);
  [(NSLock *)self->_contentLock unlock];
  return v5;
}

- (BOOL)_shouldStayAliveAfterLastClientUnregisters
{
  [(NSLock *)self->_contentLock lock];
  shouldStayAliveAfterLastClientUnregisters = self->_shouldStayAliveAfterLastClientUnregisters;
  [(NSLock *)self->_contentLock unlock];
  return shouldStayAliveAfterLastClientUnregisters;
}

- (void)_setShouldStayAliveAfterLastClientUnregisters:(BOOL)a3
{
  [(NSLock *)self->_contentLock lock];
  self->_shouldStayAliveAfterLastClientUnregisters = a3;
  contentLock = self->_contentLock;

  [(NSLock *)contentLock unlock];
}

- (BOOL)_registerWithMachServiceName:(char *)a3
{
  if (self->_isRegisteredWithMach)
  {
    return 1;
  }

  special_port = 0;
  Current = CFRunLoopGetCurrent();
  v7 = MEMORY[0x277D85F48];
  v8 = task_get_special_port(*MEMORY[0x277D85F48], 4, &special_port);
  if (v8)
  {
    NSLog(&cfstr_ErrorDCouldNot.isa, v8);
  }

  else
  {
    v9 = bootstrap_check_in(special_port, a3, &self->_serverPort);
    if (v9)
    {
      NSLog(&cfstr_ErrorDCouldNot_0.isa, v9);
    }

    else
    {
      serverPort = self->_serverPort;
      v12 = MSHCreateMIGServerSource();
      if (v12)
      {
        v13 = v12;
        [(NSLock *)self->_contentLock lock];
        self->_serverSource = v13;
        [(NSLock *)self->_contentLock unlock];
        mach_port_deallocate(*v7, special_port);
        v3 = 1;
        v14 = MSHCreateMachServerSource();
        self->_deathSource = v14;
        if (v14)
        {
          context.version = 0;
          memset(&context.retain, 0, 24);
          context.info = self;
          [(NSLock *)self->_contentLock lock];
          deathSource = self->_deathSource;
          self->_deathPort = MSHGetMachPortFromSource();
          v16 = *MEMORY[0x277CBF048];
          CFRunLoopAddSource(Current, self->_deathSource, *MEMORY[0x277CBF048]);
          v17 = CFAbsoluteTimeGetCurrent();
          v18 = CFRunLoopTimerCreate(0, v17 + 3.0, 3.0, 0, 0, _deathTimerHandler, &context);
          self->_deathTimer = v18;
          CFRunLoopAddTimer(Current, v18, v16);
          [(NSLock *)self->_contentLock unlock];
          self->_isRegisteredWithMach = 1;
          return v3;
        }

        NSLog(&cfstr_ErrorCouldNotC_2.isa);
      }

      else
      {
        NSLog(&cfstr_ErrorCouldNotC_1.isa);
      }
    }
  }

  [(SCROServer *)self unregisterWithMach];
  return 0;
}

- (void)unregisterWithMach
{
  self->_isRegisteredWithMach = 0;
  [(NSLock *)self->_contentLock lock];
  deathTimer = self->_deathTimer;
  if (deathTimer)
  {
    CFRunLoopTimerInvalidate(deathTimer);
    CFRelease(self->_deathTimer);
    self->_deathTimer = 0;
  }

  serverSource = self->_serverSource;
  if (serverSource)
  {
    CFRelease(serverSource);
    self->_serverSource = 0;
  }

  [(NSLock *)self->_contentLock unlock];
  deathSource = self->_deathSource;
  if (deathSource)
  {
    CFRunLoopSourceInvalidate(deathSource);
    CFRelease(self->_deathSource);
    self->_deathSource = 0;
  }

  if (self->_serverPort)
  {
    self->_serverPort = 0;
  }

  [(NSLock *)self->_contentLock lock];
  if (self->_deathPort)
  {
    self->_deathPort = 0;
  }

  contentLock = self->_contentLock;

  [(NSLock *)contentLock unlock];
}

- (__CFRunLoopSource)serverSource
{
  [(NSLock *)self->_contentLock lock];
  serverSource = self->_serverSource;
  [(NSLock *)self->_contentLock unlock];
  return serverSource;
}

- (void)_deleteOldResources
{
  v2 = NSHomeDirectory();
  v6 = [v2 stringByAppendingPathComponent:@"/Library/Accessibility/ktoa_u_kwa.dic"];

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v6];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    [v5 removeItemAtPath:v6 error:0];
  }
}

- (BOOL)_ensureResourcesExist
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Library/Accessibility/ktoa_u_kwa_v5.dic"];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    archive_read_new();
    v7 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/ScreenReader/BrailleTables/BrailleNBSC.brailletable"];
    v8 = [v7 resourcePath];
    v9 = [v8 stringByAppendingString:@"/ktoa_u_kwa"];
    [v9 UTF8String];

    if (archive_read_support_format_zip())
    {
      v10 = _SCROD_LOG();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v26 = archive_error_string();
        v11 = "NBSC Braille for text: (init) archive_read unable to set supported formats: %s.";
        v12 = v10;
        v13 = 12;
LABEL_9:
        _os_log_impl(&dword_26490B000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    if (archive_read_open_filename())
    {
      v10 = _SCROD_LOG();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "NBSC Braille for text: (init) failed to unzip.";
        v12 = v10;
        v13 = 2;
        goto LABEL_9;
      }

LABEL_10:

      v6 = 0;
      goto LABEL_11;
    }

    v24 = 0;
    if (archive_read_next_header())
    {
      v16 = _SCROD_LOG();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26490B000, v16, OS_LOG_TYPE_DEFAULT, "NBSC Braille for text: (init) failed to read header.", buf, 2u);
      }

      v6 = 0;
      goto LABEL_28;
    }

    v16 = [MEMORY[0x277CBEB28] data];
    v22 = 0;
    v23 = 0;
    v21[1] = 0;
    while (1)
    {
      data_block = archive_read_data_block();
      if (data_block)
      {
        break;
      }

      [v16 appendBytes:v23 length:v22];
    }

    if (data_block == 1)
    {
      v21[0] = 0;
      [v16 writeToFile:v3 options:1 error:v21];
      v18 = v21[0];
      v6 = v18 == 0;
      if (!v18)
      {
LABEL_27:

LABEL_28:
        goto LABEL_11;
      }

      v19 = _SCROD_LOG();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v18 localizedDescription];
        *buf = 138412290;
        v26 = v20;
        _os_log_impl(&dword_26490B000, v19, OS_LOG_TYPE_DEFAULT, "NBSC Braille for text: writing the unzipped file of ktoa_u_kwa.zip failed: %@", buf, 0xCu);
      }
    }

    else
    {
      v18 = _SCROD_LOG();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v26 = archive_error_string();
        _os_log_impl(&dword_26490B000, v18, OS_LOG_TYPE_DEFAULT, "NBSC Braille for text: can't read ktoa_u_kwp.zip: %s", buf, 0xCu);
      }
    }

    v6 = 0;
    goto LABEL_27;
  }

  v6 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

@end