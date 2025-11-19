@interface PSSystemConfigurationDynamicStoreEthernetWatcher
+ (id)sharedManager;
- (BOOL)hasEthernetNetworkInterfaces;
- (BOOL)isHiddenEthernetInterface:(__SCNetworkInterface *)a3;
- (PSSystemConfigurationDynamicStoreEthernetWatcher)init;
- (id)ethernetNetworkInterfaces;
- (void)dealloc;
- (void)ethernetDynamicStoreDidChange;
- (void)registerForEthernetAdapterNotifications;
@end

@implementation PSSystemConfigurationDynamicStoreEthernetWatcher

- (void)registerForEthernetAdapterNotifications
{
  v36.version = 0;
  memset(&v36.retain, 0, 24);
  v36.info = self;
  if (!self->_dynamicStore)
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = SCDynamicStoreCreate(*MEMORY[0x1E695E480], @"com.apple.preferences.EthernetMananger", __registerForEthernetAdapterNotificationsCallback, &v36);
    self->_dynamicStore = v5;
    if (v5)
    {
      RunLoopSource = SCDynamicStoreCreateRunLoopSource(v4, v5, 0);
      self->_dynamicStoreSource = RunLoopSource;
      if (RunLoopSource)
      {
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, self->_dynamicStoreSource, *MEMORY[0x1E695E8D0]);
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v9 = Mutable;
          v10 = *MEMORY[0x1E6982338];
          v11 = OUTLINED_FUNCTION_0_4();
          NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v11, v12, v10);
          if (NetworkGlobalEntity)
          {
            OUTLINED_FUNCTION_1_2(NetworkGlobalEntity);
            CFRelease(v2);
            v14 = *MEMORY[0x1E6982340];
            v15 = OUTLINED_FUNCTION_0_4();
            v17 = SCDynamicStoreKeyCreateNetworkGlobalEntity(v15, v16, v14);
            if (v17)
            {
              OUTLINED_FUNCTION_1_2(v17);
              CFRelease(v2);
              v18 = OUTLINED_FUNCTION_0_4();
              NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(v18, v19);
              if (NetworkInterface)
              {
                OUTLINED_FUNCTION_1_2(NetworkInterface);
                CFRelease(v2);
                v21 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                if (v21)
                {
                  v22 = v21;
                  v23 = *MEMORY[0x1E69822E0];
                  v24 = OUTLINED_FUNCTION_0_4();
                  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v24, v25, v23, v10);
                  if (NetworkServiceEntity)
                  {
                    OUTLINED_FUNCTION_2_1(NetworkServiceEntity);
                    CFRelease(v10);
                    v27 = OUTLINED_FUNCTION_0_4();
                    v29 = SCDynamicStoreKeyCreateNetworkServiceEntity(v27, v28, v23, v14);
                    if (v29)
                    {
                      OUTLINED_FUNCTION_2_1(v29);
                      CFRelease(v10);
                      v30 = SCDynamicStoreKeyCreateNetworkServiceEntity(v4, *MEMORY[0x1E69822E8], v23, *MEMORY[0x1E6982348]);
                      if (v30)
                      {
                        OUTLINED_FUNCTION_2_1(v30);
                        CFRelease(v10);
                        v31 = OUTLINED_FUNCTION_0_4();
                        NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v31, v32, v23, v33);
                        if (NetworkInterfaceEntity)
                        {
                          v35 = NetworkInterfaceEntity;
                          CFArrayAppendValue(v22, NetworkInterfaceEntity);
                          CFRelease(v35);
                          SCDynamicStoreSetNotificationKeys(self->_dynamicStore, v9, v22);
                        }
                      }
                    }
                  }

                  CFRelease(v22);
                }
              }
            }
          }

          CFRelease(v9);
        }
      }
    }
  }
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PSSystemConfigurationDynamicStoreEthernetWatcher_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_cacheOnce_160 != -1)
  {
    dispatch_once(&sharedManager_cacheOnce_160, block);
  }

  v2 = sharedManager_gSharedEthernetWatcherInstance;

  return v2;
}

void __65__PSSystemConfigurationDynamicStoreEthernetWatcher_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_gSharedEthernetWatcherInstance;
  sharedManager_gSharedEthernetWatcherInstance = v1;
}

- (PSSystemConfigurationDynamicStoreEthernetWatcher)init
{
  v5.receiver = self;
  v5.super_class = PSSystemConfigurationDynamicStoreEthernetWatcher;
  v2 = [(PSSystemConfigurationDynamicStoreEthernetWatcher *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSSystemConfigurationDynamicStoreEthernetWatcher *)v2 registerForEthernetAdapterNotifications];
  }

  return v3;
}

- (void)dealloc
{
  if (self->_dynamicStoreSource)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, self->_dynamicStoreSource, *MEMORY[0x1E695E8D0]);
    CFRelease(self->_dynamicStoreSource);
  }

  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    CFRelease(dynamicStore);
  }

  v5.receiver = self;
  v5.super_class = PSSystemConfigurationDynamicStoreEthernetWatcher;
  [(PSSystemConfigurationDynamicStoreEthernetWatcher *)&v5 dealloc];
}

- (BOOL)hasEthernetNetworkInterfaces
{
  v2 = [(PSSystemConfigurationDynamicStoreEthernetWatcher *)self ethernetNetworkInterfaces];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)ethernetNetworkInterfaces
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = socket(30, 1, 0);
  if (v4 < 0)
  {
    v5 = 0;
    goto LABEL_20;
  }

  v5 = SCNetworkInterfaceCopyAll();
  v6 = [(__CFArray *)v5 count];
  if (v6)
  {
    v7 = v6;
    v19 = v3;
    for (i = 0; i != v7; ++i)
    {
      v9 = [(__CFArray *)v5 objectAtIndex:i];
      valuePtr = 0;
      *__dst = 0u;
      v22 = 0u;
      if (v9)
      {
        v10 = v9;
        v11 = SCNetworkInterfaceGetBSDName(v9);
        v12 = v11;
        if (v11)
        {
          v13 = [v11 substringToIndex:2];
          v14 = [v13 isEqualToString:@"en"];

          if (v14)
          {
            if (![(PSSystemConfigurationDynamicStoreEthernetWatcher *)self isHiddenEthernetInterface:v10])
            {
              IOInterfaceType = _SCNetworkInterfaceGetIOInterfaceType();
              if (IOInterfaceType)
              {
                CFNumberGetValue(IOInterfaceType, kCFNumberSInt32Type, &valuePtr);
                if (valuePtr == 6)
                {
                  FamilyType = _SCNetworkInterfaceGetFamilyType();
                  if (FamilyType)
                  {
                    CFNumberGetValue(FamilyType, kCFNumberSInt32Type, &valuePtr);
                    if (valuePtr == 2)
                    {
                      FamilySubType = _SCNetworkInterfaceGetFamilySubType();
                      if (FamilySubType)
                      {
                        CFNumberGetValue(FamilySubType, kCFNumberSInt32Type, &valuePtr);
                        if (valuePtr <= 1)
                        {
                          strncpy(__dst, [v12 UTF8String], 0x10uLL);
                          if (ioctl(v4, 0xC020698EuLL, __dst) || (BYTE3(v22) & 0x20) == 0)
                          {
                            [v19 addObject:v10];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }

    v3 = v19;
LABEL_20:
    if (v4 == -1)
    {
      goto LABEL_22;
    }
  }

  close(v4);
LABEL_22:

  return v3;
}

- (void)ethernetDynamicStoreDidChange
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"com.apple.Preferences.Ethernet" object:0];
}

- (BOOL)isHiddenEthernetInterface:(__SCNetworkInterface *)a3
{
  *mainPort = 0;
  parent = 0;
  IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
  if (!IORegistryEntryID)
  {
    LOBYTE(v5) = 0;
    goto LABEL_15;
  }

  v4 = IORegistryEntryID;
  IOMasterPort(*MEMORY[0x1E69E99F8], &mainPort[1]);
  v5 = mainPort[1];
  if (!mainPort[1])
  {
    v8 = 0;
LABEL_9:
    if (mainPort[0])
    {
      IOObjectRelease(mainPort[0]);
    }

    if (v8)
    {
      IOObjectRelease(v8);
    }

    goto LABEL_13;
  }

  v6 = IORegistryEntryIDMatching(v4);
  IOServiceGetMatchingServices(v5, v6, mainPort);
  if (mainPort[0])
  {
    v7 = IOIteratorNext(mainPort[0]);
    v8 = v7;
    if (v7 && (IORegistryEntryGetParentEntry(v7, "IOService", &parent), parent))
    {
      if (IOObjectConformsTo(parent, "AppleUSBDeviceNCMData"))
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        LOBYTE(v5) = IOObjectConformsTo(parent, "AppleUSBEthernetDevice") != 0;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    goto LABEL_9;
  }

  LOBYTE(v5) = 0;
LABEL_13:
  if (parent)
  {
    IOObjectRelease(parent);
  }

LABEL_15:
  if (mainPort[1])
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], mainPort[1]);
  }

  return v5;
}

@end