@interface ATSIORegCapture
- (ATSIORegCapture)initWithLogger:(id)logger;
- (__CFArray)_copyPropertiesOfIOService:(const char *)service;
- (__CFData)_serializeIOMFBAGXServices;
- (id)_fullySerializeService:(unsigned int)service planeName:(const char *)name;
- (id)_removeSetsFromArray:(id)array;
- (id)_removeSetsFromDict:(id)dict;
- (id)_serializeFullIOKitPlane:(const char *)plane;
- (id)describeChunkWithTag:(unsigned int)tag;
- (void)_mergeIOServicePropertiesIntoDictionary:(__CFDictionary *)dictionary name:(const char *)name;
- (void)addChunksToFile:(ktrace_file *)file;
@end

@implementation ATSIORegCapture

- (ATSIORegCapture)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v9.receiver = self;
  v9.super_class = ATSIORegCapture;
  v6 = [(ATSIORegCapture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, logger);
  }

  return v7;
}

- (void)addChunksToFile:(ktrace_file *)file
{
  v4 = [(ATSIORegCapture *)self _serializeFullIOKitPlane:"IODeviceTree"];
  v12 = v4;
  if (v4)
  {
    v5 = v4;
    [v12 bytes];
    [v12 length];
    if (!ktrace_file_append_chunk())
    {
      v6 = __error();
      v7 = [NSString stringWithFormat:@"Failed to append device plane chunk. Error: %s", strerror(*v6)];
      [(KTProviderLogger *)self->_logger failWithReason:v7];
    }
  }

  else
  {
    [(KTProviderLogger *)self->_logger failWithReason:@"Failed to serialize device plane data"];
  }

  _serializeIOMFBAGXServices = [(ATSIORegCapture *)self _serializeIOMFBAGXServices];
  v9 = _serializeIOMFBAGXServices;
  if (_serializeIOMFBAGXServices)
  {
    [(__CFData *)_serializeIOMFBAGXServices bytes];
    [(__CFData *)v9 length];
    if (!ktrace_file_append_chunk())
    {
      v10 = __error();
      v11 = [NSString stringWithFormat:@"Failed to append IO Reg chunk. Error: %s", strerror(*v10)];
      [(KTProviderLogger *)self->_logger failWithReason:v11];
    }
  }

  else
  {
    [(KTProviderLogger *)self->_logger failWithReason:@"Failed to serialize IOMFB and AGX metadata"];
  }
}

- (id)describeChunkWithTag:(unsigned int)tag
{
  v3 = @"device tree plane";
  if (tag != 20991)
  {
    v3 = 0;
  }

  if (tag == 32776)
  {
    return @"libktrace ioreg";
  }

  else
  {
    return v3;
  }
}

- (id)_removeSetsFromDict:(id)dict
{
  dictCopy = dict;
  v4 = dictCopy;
  if (dictCopy)
  {
    v5 = [dictCopy mutableCopy];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = v7;
    v9 = *v21;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v18}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          allObjects = [v12 allObjects];
          v14 = [(ATSIORegCapture *)self _removeSetsFromArray:allObjects];
          [v5 setObject:v14 forKeyedSubscript:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [(ATSIORegCapture *)self _removeSetsFromArray:v12];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_15;
            }

            v15 = [(ATSIORegCapture *)self _removeSetsFromDict:v12];
          }

          allObjects = v15;
          [v5 setObject:v15 forKeyedSubscript:v11];
        }

LABEL_15:
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v8)
      {
LABEL_17:

        v16 = [v5 copy];
        v4 = v18;
        goto LABEL_19;
      }
    }
  }

  v16 = 0;
LABEL_19:

  return v16;
}

- (id)_removeSetsFromArray:(id)array
{
  arrayCopy = array;
  v5 = arrayCopy;
  if (arrayCopy)
  {
    v6 = [arrayCopy mutableCopy];
    if ([v5 count])
    {
      v7 = 0;
      while (1)
      {
        v8 = [v5 objectAtIndexedSubscript:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(ATSIORegCapture *)self _removeSetsFromArray:v8];
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(ATSIORegCapture *)self _removeSetsFromDict:v8];
LABEL_10:
          allObjects = v11;
          [v6 setObject:v11 atIndexedSubscript:v7];
LABEL_11:
        }

        if (++v7 >= [v5 count])
        {
          goto LABEL_15;
        }
      }

      allObjects = [v8 allObjects];
      v10 = [(ATSIORegCapture *)self _removeSetsFromArray:allObjects];
      [v6 setObject:v10 atIndexedSubscript:v7];

      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_15:

  return v6;
}

- (id)_fullySerializeService:(unsigned int)service planeName:(const char *)name
{
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  entryID = 0;
  v6 = +[NSMutableDictionary dictionary];
  if (!IORegistryEntryGetNameInPlane(service, name, v16))
  {
    v7 = [NSString stringWithUTF8String:v16];
    [v6 setObject:v7 forKeyedSubscript:@"IORegistryEntryName"];
  }

  if (!IORegistryEntryGetLocationInPlane(service, name, v15))
  {
    v8 = [NSString stringWithUTF8String:v15];
    [v6 setObject:v8 forKeyedSubscript:@"IORegistryEntryLocation"];
  }

  if (!IORegistryEntryGetRegistryEntryID(service, &entryID))
  {
    v9 = [NSNumber numberWithUnsignedLongLong:entryID];
    [v6 setObject:v9 forKeyedSubscript:@"IORegistryEntryID"];
  }

  if (!_IOObjectGetClass(service, &dword_0 + 1))
  {
    v10 = [NSString stringWithUTF8String:v14];
    [v6 setObject:v10 forKeyedSubscript:@"IOObjectClass"];
  }

  cf = 0;
  IORegistryEntryCreateCFProperties(service, &cf, kCFAllocatorDefault, 0);
  if (cf)
  {
    [v6 setObject:cf forKeyedSubscript:@"IORegistryEntryProperties"];
    CFRelease(cf);
  }

  return v6;
}

- (id)_serializeFullIOKitPlane:(const char *)plane
{
  RootEntry = IORegistryGetRootEntry(kIOMainPortDefault);
  v6 = objc_autoreleasePoolPush();
  v7 = [(ATSIORegCapture *)self _serializeServicePlaneRecursively:RootEntry planeName:plane];
  if (v7)
  {
    IOObjectRelease(RootEntry);
    v8 = [NSPropertyListSerialization dataWithPropertyList:v7 format:200 options:0 error:0];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v6);

  return v8;
}

- (__CFArray)_copyPropertiesOfIOService:(const char *)service
{
  existing = 0;
  v5 = IOServiceMatching(service);
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v5, &existing);
  if (MatchingServices)
  {
    v7 = [NSString stringWithFormat:@"Failed to get service matching %s: %s", service, mach_error_string(MatchingServices)];
    [(KTProviderLogger *)self->_logger failWithReason:v7];

    v8 = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    while (1)
    {
      v10 = IOIteratorNext(existing);
      if (!v10)
      {
        v8 = 0;
        goto LABEL_9;
      }

      properties = 0;
      v11 = IORegistryEntryCreateCFProperties(v10, &properties, 0, 0);
      if (v11)
      {
        break;
      }

      v12 = [(ATSIORegCapture *)self _removeSetsFromDict:properties];
      CFArrayAppendValue(Mutable, v12);
      CFRelease(properties);
    }

    v14 = [NSString stringWithFormat:@"Failed to create properties for service %s: %s", service, mach_error_string(v11)];
    [(KTProviderLogger *)self->_logger failWithReason:v14];

    v8 = Mutable;
  }

  Mutable = 0;
LABEL_9:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return Mutable;
}

- (void)_mergeIOServicePropertiesIntoDictionary:(__CFDictionary *)dictionary name:(const char *)name
{
  v6 = [(ATSIORegCapture *)self _copyPropertiesOfIOService:name];
  if (v6)
  {
    v7 = v6;
    v8 = CFStringCreateWithCString(0, name, 0x8000100u);
    CFAutorelease(v8);
    CFDictionarySetValue(dictionary, v8, v7);

    CFRelease(v7);
  }
}

- (__CFData)_serializeIOMFBAGXServices
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  [(ATSIORegCapture *)self _mergeIOServicePropertiesIntoDictionary:Mutable name:"IOMobileFramebuffer"];
  [(ATSIORegCapture *)self _mergeIOServicePropertiesIntoDictionary:Mutable name:"AGXAccelerator"];
  if (!Mutable)
  {
    return 0;
  }

  error = 0;
  v4 = CFPropertyListCreateData(0, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  if (error)
  {
    error = [NSString stringWithFormat:@"Failed to serialize AGX and IOMFB metadata dictionary: %@", error];
    [(KTProviderLogger *)self->_logger failWithReason:error];
  }

  CFRelease(Mutable);
  return v4;
}

@end