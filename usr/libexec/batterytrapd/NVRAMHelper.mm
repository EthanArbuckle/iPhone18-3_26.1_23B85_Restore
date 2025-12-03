@interface NVRAMHelper
- (BOOL)clearNVRAM:(id)m;
- (BOOL)hasALPMClock;
- (BOOL)syncNVRAM;
- (BOOL)writeNVRAM:(id)m :(id)a4;
- (NVRAMHelper)init;
- (NVRAMHelper)initWithLog:(id)log;
- (id)readNVRAM:(id)m;
- (unsigned)createOptionsRef;
- (void)dealloc;
- (void)releaseOptionsRef:(unsigned int)ref;
@end

@implementation NVRAMHelper

- (id)readNVRAM:(id)m
{
  mCopy = m;
  if (mCopy)
  {
    CFProperty = IORegistryEntryCreateCFProperty(self->optionsRef, mCopy, kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      v7 = CFGetTypeID(CFProperty);
      if (v7 == CFDataGetTypeID())
      {
        v8 = [NSString stringWithUTF8String:CFDataGetBytePtr(v6)];
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v6);
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
  {
    sub_100002410();
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (BOOL)writeNVRAM:(id)m :(id)a4
{
  mCopy = m;
  v7 = a4;
  v8 = [(NVRAMHelper *)self readNVRAM:mCopy];
  v9 = [v8 isEqualToString:v7];
  logs = self->logs;
  v11 = os_log_type_enabled(logs, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      v14 = 138412802;
      v15 = mCopy;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v7;
      _os_log_debug_impl(&_mh_execute_header, logs, OS_LOG_TYPE_DEBUG, "Current value of variable %@ is the same (%@) as the value passed in (%@). Skipping write.", &v14, 0x20u);
    }

    v12 = 1;
  }

  else
  {
    if (v11)
    {
      v14 = 138412802;
      v15 = mCopy;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v7;
      _os_log_debug_impl(&_mh_execute_header, logs, OS_LOG_TYPE_DEBUG, "Updating %@ from value %@ to value %@", &v14, 0x20u);
    }

    if (IORegistryEntrySetCFProperty(self->optionsRef, mCopy, [v7 dataUsingEncoding:4]))
    {
      if (os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
      {
        sub_100002444();
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
      self->syncPending = 1;
    }
  }

  return v12;
}

- (BOOL)syncNVRAM
{
  if (!self->syncPending)
  {
    if (os_log_type_enabled(self->logs, OS_LOG_TYPE_DEBUG))
    {
      sub_1000024AC();
    }

    goto LABEL_8;
  }

  v3 = IORegistryEntrySetCFProperty(self->optionsRef, @"IONVRAM-SYNCNOW-PROPERTY", @"IONVRAM-SYNCNOW-PROPERTY");
  if (!v3)
  {
    self->syncPending = 0;
LABEL_8:
    LOBYTE(v6) = 1;
    return v6;
  }

  v4 = v3;
  logs = self->logs;
  v6 = os_log_type_enabled(logs, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    sub_1000024EC(v4, logs);
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)clearNVRAM:(id)m
{
  mCopy = m;
  v5 = IORegistryEntrySetCFProperty(self->optionsRef, @"IONVRAM-DELETEWRET-PROPERTY", mCopy);
  if (v5)
  {
    if (os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
    {
      sub_100002564();
    }
  }

  else
  {
    self->syncPending = 1;
  }

  return v5 == 0;
}

- (unsigned)createOptionsRef
{
  v3 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (!v3 && os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
  {
    sub_1000025CC();
  }

  return v3;
}

- (void)releaseOptionsRef:(unsigned int)ref
{
  if (ref)
  {
    IOObjectRelease(ref);
  }
}

- (BOOL)hasALPMClock
{
  v3 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product");
  if (v3)
  {
    v4 = v3;
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"lpm-clock", 0, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      v7 = CFGetTypeID(CFProperty);
      if (v7 == CFDataGetTypeID())
      {
        CFDataGetBytePtr(v6);
        CFDataGetLength(v6);
        __memcpy_chk();
        byte_10000C5B0 = 0;
      }

      else if (os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
      {
        sub_100002600();
      }

      IOObjectRelease(v4);
      CFRelease(v6);
    }

    else
    {
      if (os_log_type_enabled(self->logs, OS_LOG_TYPE_DEBUG))
      {
        sub_100002634();
      }

      IOObjectRelease(v4);
    }
  }

  else if (os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
  {
    sub_100002674();
  }

  return byte_10000C5B0;
}

- (NVRAMHelper)init
{
  v5.receiver = self;
  v5.super_class = NVRAMHelper;
  v2 = [(NVRAMHelper *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->optionsRef = [(NVRAMHelper *)v2 createOptionsRef];
  }

  return v3;
}

- (NVRAMHelper)initWithLog:(id)log
{
  logCopy = log;
  v9.receiver = self;
  v9.super_class = NVRAMHelper;
  v5 = [(NVRAMHelper *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->syncPending = 0;
    v5->optionsRef = [(NVRAMHelper *)v5 createOptionsRef];
    if (logCopy)
    {
      v7 = logCopy;
    }

    else
    {
      v7 = &_os_log_default;
    }

    objc_storeStrong(&v6->logs, v7);
  }

  return v6;
}

- (void)dealloc
{
  [(NVRAMHelper *)self releaseOptionsRef:self->optionsRef];
  v3.receiver = self;
  v3.super_class = NVRAMHelper;
  [(NVRAMHelper *)&v3 dealloc];
}

@end