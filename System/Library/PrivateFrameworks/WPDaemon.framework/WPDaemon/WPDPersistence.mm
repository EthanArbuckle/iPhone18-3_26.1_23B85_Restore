@interface WPDPersistence
- (BOOL)readBoolPropertyValue:(id)value;
- (WPDPersistence)init;
- (id)currentBootSessionUUID;
- (id)readStringPropertyValue:(id)value;
- (void)dealloc;
- (void)deletePropertyValue:(id)value;
- (void)firstUnlockedWithEvent:(BOOL)event;
- (void)synchronisePrefs;
- (void)writeBoolProperty:(id)property Value:(BOOL)value;
- (void)writeStringProperty:(id)property Value:(id)value;
@end

@implementation WPDPersistence

- (WPDPersistence)init
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = WPDPersistence;
  v2 = [(WPDPersistence *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_isRangingEnabled = 256;
    v2->_systemFirstUnlocked = 0;
    currentBootSessionUUID = [(WPDPersistence *)v2 currentBootSessionUUID];
    bootUUID = v3->_bootUUID;
    v3->_bootUUID = currentBootSessionUUID;

    if (WPLogInitOnce != -1)
    {
      [WPDPersistence init];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3->_bootUUID;
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "WPDPersistence initialized with BootUUID %{public}@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)dealloc
{
  [(WPDPersistence *)self synchronisePrefs];
  v3.receiver = self;
  v3.super_class = WPDPersistence;
  [(WPDPersistence *)&v3 dealloc];
}

- (id)currentBootSessionUUID
{
  size = 0;
  if (!sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0))
  {
    v2 = malloc_type_malloc(size, 0xE2536C1BuLL);
    if (!sysctlbyname("kern.bootsessionuuid", v2, &size, 0, 0))
    {
      v5 = strdup(v2);
      currentBootSessionUUID_bootSessionUUIDStr = v5;
      free(v2);
      if (v5)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
        v7 = currentBootSessionUUID_bootSessionUUIDStr;
      }

      else
      {
        v7 = 0;
        v6 = @"fake BootUUID";
      }

      free(v7);
      v3 = v6;
      goto LABEL_5;
    }

    free(v2);
  }

  v3 = @"fake BootUUID";
LABEL_5:

  return v3;
}

- (void)firstUnlockedWithEvent:(BOOL)event
{
  eventCopy = event;
  if (WPLogInitOnce != -1)
  {
    [WPDPersistence firstUnlockedWithEvent:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDPersistence *)eventCopy firstUnlockedWithEvent:v5];
  }

  [(WPDPersistence *)self setSystemFirstUnlocked:1];
  if (eventCopy)
  {
    [(WPDPersistence *)self setNeedsInit:0];
  }

  if ([(WPDPersistence *)self needsInit])
  {
    v6 = [(WPDPersistence *)self readStringPropertyValue:@"WPBootUUID"];
    if (v6)
    {
      bootUUID = [(WPDPersistence *)self bootUUID];
      v8 = [bootUUID isEqual:v6];

      if (v8)
      {
        [(WPDPersistence *)self setIsRangingEnabled:[(WPDPersistence *)self readBoolPropertyValue:@"WPRangingEnabled"]];
        if (WPLogInitOnce != -1)
        {
          [WPDPersistence firstUnlockedWithEvent:];
        }

        v9 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          [(WPDPersistence *)v9 firstUnlockedWithEvent:?];
        }
      }
    }
  }

  [(WPDPersistence *)self setIsRangingEnabled:self->_isRangingEnabled];
}

- (void)synchronisePrefs
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7[0] = 67109376;
  v7[1] = a3;
  v8 = 1024;
  systemFirstUnlocked = [a2 systemFirstUnlocked];
  _os_log_debug_impl(&dword_272965000, selfCopy, OS_LOG_TYPE_DEBUG, "WPDPersistence synchronised: %d (firstUnlocked: %d)", v7, 0xEu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deletePropertyValue:(id)value
{
  valueCopy = value;
  v4 = objc_autoreleasePoolPush();
  if (WPLogInitOnce != -1)
  {
    [WPDPersistence deletePropertyValue:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDPersistence *)valueCopy deletePropertyValue:v5];
  }

  CFPreferencesSetAppValue(valueCopy, 0, @"com.apple.BTServer");
  objc_autoreleasePoolPop(v4);
}

- (BOOL)readBoolPropertyValue:(id)value
{
  v20 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v4 = objc_autoreleasePoolPush();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(valueCopy, @"com.apple.BTServer", &keyExistsAndHasValidFormat);
  if (AppBooleanValue)
  {
    v6 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (WPLogInitOnce != -1)
  {
    [WPDPersistence readBoolPropertyValue:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v13 = valueCopy;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = keyExistsAndHasValidFormat;
    v18 = 1024;
    v19 = AppBooleanValue;
    _os_log_debug_impl(&dword_272965000, v8, OS_LOG_TYPE_DEBUG, "WPDPersistence read %@ : %d (found:%d got:%d)", buf, 0x1Eu);
  }

  objc_autoreleasePoolPop(v4);

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)writeBoolProperty:(id)property Value:(BOOL)value
{
  valueCopy = value;
  propertyCopy = property;
  if (WPLogInitOnce != -1)
  {
    [WPDPersistence writeBoolProperty:Value:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDPersistence writeBoolProperty:Value:];
  }

  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x277CBED28];
  if (!valueCopy)
  {
    v8 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(propertyCopy, *v8, @"com.apple.BTServer");
  objc_autoreleasePoolPop(v7);
  [(WPDPersistence *)self synchronisePrefs];
}

- (id)readStringPropertyValue:(id)value
{
  valueCopy = value;
  v4 = objc_autoreleasePoolPush();
  v5 = CFPreferencesCopyAppValue(valueCopy, @"com.apple.BTServer");
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFStringGetTypeID())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v4);
  if (WPLogInitOnce != -1)
  {
    [WPDPersistence readStringPropertyValue:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDPersistence readStringPropertyValue:];
  }

  return v8;
}

- (void)writeStringProperty:(id)property Value:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if (WPLogInitOnce != -1)
  {
    [WPDPersistence writeStringProperty:Value:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDPersistence writeStringProperty:Value:];
  }

  v8 = objc_autoreleasePoolPush();
  CFPreferencesSetAppValue(propertyCopy, valueCopy, @"com.apple.BTServer");
  objc_autoreleasePoolPop(v8);
  [(WPDPersistence *)self synchronisePrefs];
}

- (void)firstUnlockedWithEvent:(char)a1 .cold.2(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_272965000, a2, OS_LOG_TYPE_DEBUG, "WPDPersistence firstUnlockedWithEvent: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)firstUnlockedWithEvent:(void *)a1 .cold.4(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5[0] = 67109120;
  v5[1] = [a2 isRangingEnabled];
  _os_log_debug_impl(&dword_272965000, v3, OS_LOG_TYPE_DEBUG, "WPDPersistence restored isRangingEnabled: %d", v5, 8u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deletePropertyValue:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_272965000, a2, OS_LOG_TYPE_DEBUG, "WPDPersistence delete %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)writeBoolProperty:Value:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readStringPropertyValue:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeStringProperty:Value:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end