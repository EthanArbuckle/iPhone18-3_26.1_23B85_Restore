@interface MGIOKitHelper
- (BOOL)createServicesIteratorByNameMatch:(const char *)a3;
- (MGIOKitHelper)init;
- (__CFArray)iteratorCopyBusyServiceNames;
- (__CFDictionary)deviceTreeNodeIsPresent:(__CFString *)a3 withExactName:(BOOL)a4 withNodeClass:(__CFString *)a5;
- (__CFNumber)copyNumberFromData:(__CFData *)a3;
- (unsigned)copyDeviceTreeStructureNext:(id)a3 withFirstChar:(char)a4;
- (void)copyServiceTreeProperty:(id)a3 withFirstChar:(char)a4 propertyName:(id)a5 withPropertyFirstChar:(char)a6;
- (void)dealloc;
- (void)deleteIterator;
@end

@implementation MGIOKitHelper

- (void)dealloc
{
  [(MGIOKitHelper *)self deleteIterator];
  v3.receiver = self;
  v3.super_class = MGIOKitHelper;
  [(MGIOKitHelper *)&v3 dealloc];
}

- (MGIOKitHelper)init
{
  v3.receiver = self;
  v3.super_class = MGIOKitHelper;
  result = [(MGIOKitHelper *)&v3 init];
  if (result)
  {
    result->devIterator = 0;
  }

  return result;
}

- (void)deleteIterator
{
  devIterator = self->devIterator;
  if (devIterator)
  {
    IOObjectRelease(devIterator);
    self->devIterator = 0;
  }
}

- (BOOL)createServicesIteratorByNameMatch:(const char *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  [(MGIOKitHelper *)self deleteIterator];
  v5 = IOServiceNameMatching(a3);
  if (v5)
  {
    result = IOServiceGetMatchingServices(*MEMORY[0x1E696CD60], v5, &self->devIterator) == 0;
  }

  else
  {
    v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
    if (v7)
    {
      v13 = v7 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
    }

    _MGLog(v13, 70, @"Failed to create iterator: %s ", v8, v9, v10, v11, v12, a3);
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v14)
    {
      *buf = 136315138;
      v17 = a3;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to create iterator: %s ", buf, 0xCu);
      result = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)copyDeviceTreeStructureNext:(id)a3 withFirstChar:(char)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  for (i = IOIteratorNext(self->devIterator); i; i = IOIteratorNext(self->devIterator))
  {
    memset(v12, 0, sizeof(v12));
    if (!MEMORY[0x1B2720D90](i, v12))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
      v9 = v8;
      if (v4)
      {
        if (sub_1B0194DB0(v8, v6, v4))
        {
          goto LABEL_10;
        }
      }

      else if (![(__CFString *)v8 compare:v6 options:1])
      {
LABEL_10:

        break;
      }

      IOObjectRelease(i);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return i;
}

- (void)copyServiceTreeProperty:(id)a3 withFirstChar:(char)a4 propertyName:(id)a5 withPropertyFirstChar:(char)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    while (1)
    {
      v13 = IOIteratorNext(self->devIterator);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v15 = IOObjectCopyClass(v13);
      if (v15)
      {
        v16 = v15;
        if (CFEqual(v15, v9) && (v17 = IORegistryEntryCreateCFProperty(v14, @"IORegistryEntryPropertyKeys", 0, 0)) != 0)
        {
          v18 = v17;
          if (v6)
          {
            CFProperty = sub_1B0198148(v14, v17, v11, v6);
          }

          else
          {
            CFProperty = IORegistryEntryCreateCFProperty(v14, v11, 0, 0);
          }

          v12 = CFProperty;
          CFRelease(v18);
        }

        else
        {
          v12 = 0;
        }

        CFRelease(v16);
      }

      else
      {
        v12 = 0;
      }

      IOObjectRelease(v14);
      if (v12)
      {
        goto LABEL_17;
      }
    }

    v12 = 0;
  }

LABEL_17:

  return v12;
}

- (__CFDictionary)deviceTreeNodeIsPresent:(__CFString *)a3 withExactName:(BOOL)a4 withNodeClass:(__CFString *)a5
{
  v6 = a4;
  v41 = *MEMORY[0x1E69E9840];
  cf = 0;
  v8 = a3;
  v9 = a5;
  v10 = IOIteratorNext(self->devIterator);
  if (!v10)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  v11 = v10;
  v34 = v8;
  v12 = 0;
  v13 = 0;
  v14 = 0uLL;
  while (1)
  {
    v15 = v13;
    if (v9)
    {
      *&className[96] = v14;
      *&className[112] = v14;
      *&className[64] = v14;
      *&className[80] = v14;
      *&className[32] = v14;
      *&className[48] = v14;
      *className = v14;
      *&className[16] = v14;
      IOObjectGetClass(v11, className);
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:className];

      v17 = [(__CFString *)v9 isEqualToString:v16];
      v14 = 0uLL;
      v18 = v17;
      v12 = v16;
    }

    else
    {
      v18 = 1;
    }

    *&className[96] = v14;
    *&className[112] = v14;
    *&className[64] = v14;
    *&className[80] = v14;
    *&className[32] = v14;
    *&className[48] = v14;
    *className = v14;
    *&className[16] = v14;
    MEMORY[0x1B2720D90](v11, className);
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:className];

    if (v18)
    {
      if (v6)
      {
        if ([v13 isEqualToString:v34])
        {
          break;
        }

        goto LABEL_11;
      }

      if ([v13 hasPrefix:v34])
      {
        break;
      }
    }

LABEL_11:
    IOObjectRelease(v11);
    v11 = IOIteratorNext(self->devIterator);
    v14 = 0uLL;
    if (!v11)
    {
      Copy = 0;
LABEL_13:
      v8 = v34;
      goto LABEL_16;
    }
  }

  CFProperties = IORegistryEntryCreateCFProperties(v11, &cf, 0, 0);
  if (!CFProperties)
  {
    Copy = CFDictionaryCreateCopy(0, cf);
    IOObjectRelease(v11);
    goto LABEL_13;
  }

  v23 = CFProperties;
  v24 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
  v25 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
  if (v25)
  {
    v24 = v25 + 1;
  }

  v8 = v34;
  v26 = [(__CFString *)v34 UTF8String];
  mach_error_string(v23);
  _MGLog(v24, 216, @"IORegistryEntryCreateCFProperties failed for '%s': %s", v27, v28, v29, v30, v31, v26);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(__CFString *)v34 UTF8String];
    v33 = mach_error_string(v23);
    *buf = 136315394;
    v37 = v32;
    v38 = 2080;
    v39 = v33;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IORegistryEntryCreateCFProperties failed for '%s': %s", buf, 0x16u);
  }

LABEL_15:
  Copy = 0;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return Copy;
}

- (__CFNumber)copyNumberFromData:(__CFData *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = CFGetTypeID(a3);
  if (v4 != CFDataGetTypeID())
  {
    v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
    if (v8)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
    }

    _MGLog(v14, 280, @"can't create number", v9, v10, v11, v12, v13, v26);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v26 = 0;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "can't create number";
    v17 = &v26;
    goto LABEL_10;
  }

  Length = CFDataGetLength(a3);
  if (Length < 8)
  {
    if (Length == 4)
    {
      BytePtr = CFDataGetBytePtr(a3);
      v7 = kCFNumberSInt32Type;
      goto LABEL_14;
    }

    v19 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
    if (v19)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
    }

    _MGLog(v25, 277, @"can't create number from data", v20, v21, v22, v23, v24, v26);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v27 = 0;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "can't create number from data";
    v17 = &v27;
LABEL_10:
    _os_log_impl(&dword_1B0190000, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 2u);
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a3);
  v7 = kCFNumberSInt64Type;
LABEL_14:

  return CFNumberCreate(0, v7, BytePtr);
}

- (__CFArray)iteratorCopyBusyServiceNames
{
  v31 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v4 = IOIteratorNext(self->devIterator);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x1E69E9C10];
    do
    {
      v7 = IOObjectCopyClass(v5);
      if (v7)
      {
        v8 = v7;
        busyState = -1;
        if (IOServiceGetBusyState(v5, &busyState))
        {
          v9 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
          if (v9)
          {
            v15 = v9 + 1;
          }

          else
          {
            v15 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
          }

          _MGLog(v15, 500, @"Failed to get busy state for service: %@", v10, v11, v12, v13, v14, v8);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v28 = v8;
            _os_log_impl(&dword_1B0190000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get busy state for service: %@", buf, 0xCu);
          }
        }

        else if (busyState)
        {
          v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
          if (v16)
          {
            v22 = v16 + 1;
          }

          else
          {
            v22 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
          }

          _MGLog(v22, 496, @"Found busy service: %@: busyState: %d", v17, v18, v19, v20, v21, v8);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v28 = v8;
            v29 = 1024;
            v30 = busyState;
            _os_log_impl(&dword_1B0190000, v6, OS_LOG_TYPE_DEFAULT, "Found busy service: %@: busyState: %d", buf, 0x12u);
          }

          CFArrayAppendValue(Mutable, v8);
        }

        CFRelease(v8);
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(self->devIterator);
    }

    while (v5);
  }

  Copy = CFArrayCreateCopy(0, Mutable);
  CFRelease(Mutable);
  v24 = *MEMORY[0x1E69E9840];
  return Copy;
}

@end