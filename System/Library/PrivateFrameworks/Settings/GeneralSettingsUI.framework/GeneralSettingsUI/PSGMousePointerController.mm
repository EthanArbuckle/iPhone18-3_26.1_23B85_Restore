@interface PSGMousePointerController
+ (id)sharedInstance;
- (BOOL)hasMagicMouse;
- (BOOL)hasMouse;
- (BOOL)hasTrackpad;
- (BOOL)trackpadSupportsSilentClick;
- (BOOL)trackpadSupportsSystemHaptics;
- (PSGMousePointerController)init;
- (id)globalDevicePreferences;
- (int)trackingSpeedIndex;
- (void)mousePointerDevicesDidConnect:(id)connect;
- (void)mousePointerDevicesDidDisconnect:(id)disconnect;
- (void)setGlobalDevicePreferences:(id)preferences;
- (void)setTrackingSpeedIndex:(int)index;
@end

@implementation PSGMousePointerController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PSGMousePointerController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __43__PSGMousePointerController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (PSGMousePointerController)init
{
  v7.receiver = self;
  v7.super_class = PSGMousePointerController;
  v2 = [(PSGMousePointerController *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(PSGMousePointerController *)v2 setPointerDevices:v3];

    mEMORY[0x277CF0720] = [MEMORY[0x277CF0720] sharedInstance];
    v5 = [mEMORY[0x277CF0720] addPointerDeviceObserver:v2];
    [(PSGMousePointerController *)v2 setObserverToken:v5];
  }

  return v2;
}

- (void)mousePointerDevicesDidConnect:(id)connect
{
  v15 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = _PSGLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[PSGMousePointerController mousePointerDevicesDidConnect:]";
    v13 = 2112;
    v14 = connectCopy;
    _os_log_impl(&dword_21CF20000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (productName CONTAINS[c] %@)", @"UC Automouse"];
  v8 = [connectCopy filteredSetUsingPredicate:v7];
  pointerDevices = [(PSGMousePointerController *)selfCopy pointerDevices];
  [pointerDevices unionSet:v8];

  objc_sync_exit(selfCopy);
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_4);

  v10 = *MEMORY[0x277D85DE8];
}

void __59__PSGMousePointerController_mousePointerDevicesDidConnect___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:PSGPointerDevicesDidChangeNotification object:0];
}

- (void)mousePointerDevicesDidDisconnect:(id)disconnect
{
  v13 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = _PSGLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[PSGMousePointerController mousePointerDevicesDidDisconnect:]";
    v11 = 2112;
    v12 = disconnectCopy;
    _os_log_impl(&dword_21CF20000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
  }

  pointerDevices = [(PSGMousePointerController *)selfCopy pointerDevices];
  [pointerDevices minusSet:disconnectCopy];

  objc_sync_exit(selfCopy);
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_12);

  v8 = *MEMORY[0x277D85DE8];
}

void __62__PSGMousePointerController_mousePointerDevicesDidDisconnect___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:PSGPointerDevicesDidChangeNotification object:0];
}

- (id)globalDevicePreferences
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mEMORY[0x277CF0720] = [MEMORY[0x277CF0720] sharedInstance];
  globalDevicePreferences = [mEMORY[0x277CF0720] globalDevicePreferences];

  if (!globalDevicePreferences)
  {
    globalDevicePreferences = [MEMORY[0x277CF0710] defaultPreferencesForHardwareType:9];
  }

  objc_sync_exit(selfCopy);

  return globalDevicePreferences;
}

- (void)setGlobalDevicePreferences:(id)preferences
{
  preferencesCopy = preferences;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mEMORY[0x277CF0720] = [MEMORY[0x277CF0720] sharedInstance];
  [mEMORY[0x277CF0720] setGlobalDevicePreferences:preferencesCopy];

  objc_sync_exit(selfCopy);
}

- (int)trackingSpeedIndex
{
  globalDevicePreferences = [(PSGMousePointerController *)self globalDevicePreferences];
  [globalDevicePreferences pointerAccelerationFactor];
  v4 = v3;

  for (i = 0; i != 10; ++i)
  {
    if (PSGTrackingSpeedFactors[i] >= v4)
    {
      break;
    }
  }

  return i;
}

- (void)setTrackingSpeedIndex:(int)index
{
  v4 = +[PSGMousePointerController sharedInstance];
  globalDevicePreferences = [v4 globalDevicePreferences];

  v5 = PSGTrackingSpeedFactors[index];
  *&v5 = v5;
  [globalDevicePreferences setPointerAccelerationFactor:v5];
  v6 = +[PSGMousePointerController sharedInstance];
  [v6 setGlobalDevicePreferences:globalDevicePreferences];
}

- (BOOL)hasTrackpad
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pointerDevices = [(PSGMousePointerController *)selfCopy pointerDevices];
  v4 = [pointerDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(pointerDevices);
        }

        senderDescriptor = [*(*(&v11 + 1) + 8 * i) senderDescriptor];
        v8 = [senderDescriptor hardwareType] == 9;

        if (v8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [pointerDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)hasMouse
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pointerDevices = [(PSGMousePointerController *)selfCopy pointerDevices];
  v4 = [pointerDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(pointerDevices);
        }

        senderDescriptor = [*(*(&v11 + 1) + 8 * i) senderDescriptor];
        v8 = [senderDescriptor hardwareType] == 8;

        if (v8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [pointerDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)hasMagicMouse
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  pointerDevices = [(PSGMousePointerController *)selfCopy pointerDevices];
  v4 = [pointerDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(pointerDevices);
        }

        if ([*(*(&v9 + 1) + 8 * i) hasVirtualMouseButtons])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [pointerDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)trackpadSupportsSilentClick
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(PSGMousePointerController *)self hasTrackpad])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    pointerDevices = [(PSGMousePointerController *)selfCopy pointerDevices];
    v5 = [pointerDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(pointerDevices);
          }

          if ([*(*(&v10 + 1) + 8 * i) supportsLightClick])
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [pointerDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    objc_sync_exit(selfCopy);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)trackpadSupportsSystemHaptics
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(PSGMousePointerController *)self hasTrackpad])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    pointerDevices = [(PSGMousePointerController *)selfCopy pointerDevices];
    v5 = [pointerDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(pointerDevices);
          }

          if ([*(*(&v10 + 1) + 8 * i) supportsSystemHaptics])
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [pointerDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    objc_sync_exit(selfCopy);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

@end