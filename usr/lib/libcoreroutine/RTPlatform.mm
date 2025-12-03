@interface RTPlatform
+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionFromString:(SEL)string;
+ (BOOL)operatingSystemAtLeastVersion:(id *)version;
+ (BOOL)operatingSystemNoGreaterThanVersion:(id *)version;
+ (BOOL)version:(id *)version atLeastVersion:(id *)leastVersion;
+ (BOOL)version:(id *)version noGreaterThanVersion:(id *)thanVersion;
+ (RTPlatform)allocWithZone:(_NSZone *)zone;
+ (id)currentPlatform;
- (id)buildVersion;
- (id)serialNumber;
- (id)systemVersion;
@end

@implementation RTPlatform

+ (id)currentPlatform
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__RTPlatform_currentPlatform__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_119 != -1)
  {
    dispatch_once(&_MergedGlobals_119, block);
  }

  v2 = qword_2814A7D68;

  return v2;
}

uint64_t __29__RTPlatform_currentPlatform__block_invoke()
{
  qword_2814A7D68 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (RTPlatform)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [RTPlatform_MobileGestalt allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___RTPlatform;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (id)buildVersion
{
  v2 = _CFCopyServerVersionDictionary();
  if (v2)
  {
    v3 = v2;
LABEL_4:
    v4 = [v3 objectForKey:*MEMORY[0x277CBEC70]];
    goto LABEL_5;
  }

  v3 = _CFCopySystemVersionDictionary();
  if (v3)
  {
    goto LABEL_4;
  }

  v4 = 0;
LABEL_5:

  return v4;
}

- (id)systemVersion
{
  v2 = _CFCopyServerVersionDictionary();
  if (v2)
  {
    v3 = v2;
LABEL_4:
    v4 = [v3 objectForKey:*MEMORY[0x277CBEC88]];
    goto LABEL_5;
  }

  v3 = _CFCopySystemVersionDictionary();
  if (v3)
  {
    goto LABEL_4;
  }

  v4 = 0;
LABEL_5:

  return v4;
}

- (id)serialNumber
{
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformSerialNumber", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      v8 = [MEMORY[0x277CCACA8] stringWithString:CFProperty];
    }

    else
    {
      v8 = 0;
    }

    IOObjectRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)version:(id *)version noGreaterThanVersion:(id *)thanVersion
{
  if (version->var0 > thanVersion->var0)
  {
    return 0;
  }

  if (version->var0 < thanVersion->var0)
  {
    return 1;
  }

  var1 = version->var1;
  v6 = thanVersion->var1;
  if (var1 > v6)
  {
    return 0;
  }

  return var1 < v6 || version->var2 <= thanVersion->var2;
}

+ (BOOL)operatingSystemNoGreaterThanVersion:(id *)version
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v5 = processInfo;
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
  }

  if (version->var0 < 0)
  {
    return 0;
  }

  if (version->var0 > 0)
  {
    return 1;
  }

  var1 = version->var1;
  if (var1 < 0)
  {
    return 0;
  }

  return var1 > 0 || version->var2 >= 0;
}

+ (BOOL)operatingSystemAtLeastVersion:(id *)version
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v5 = processInfo;
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
  }

  if (version->var0 > 0)
  {
    return 0;
  }

  if (version->var0 < 0)
  {
    return 1;
  }

  var1 = version->var1;
  if (var1 > 0)
  {
    return 0;
  }

  return var1 < 0 || version->var2 <= 0;
}

+ (BOOL)version:(id *)version atLeastVersion:(id *)leastVersion
{
  if (version->var0 < leastVersion->var0)
  {
    return 0;
  }

  if (version->var0 > leastVersion->var0)
  {
    return 1;
  }

  var1 = version->var1;
  v6 = leastVersion->var1;
  if (var1 < v6)
  {
    return 0;
  }

  return var1 > v6 || version->var2 >= leastVersion->var2;
}

+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionFromString:(SEL)string
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "+[RTPlatform operatingSystemVersionFromString:]";
      v16 = 1024;
      v17 = 249;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: versionString (in %s:%d)", &v14, 0x12u);
    }
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v7 = [v5 componentsSeparatedByString:@"."];
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 objectAtIndex:0];
    retstr->var0 = [v10 integerValue];

    if (v9 != 1)
    {
      v11 = [v7 objectAtIndex:1];
      retstr->var1 = [v11 integerValue];

      if (v9 >= 3)
      {
        v12 = [v7 objectAtIndex:2];
        retstr->var2 = [v12 integerValue];
      }
    }
  }

  return result;
}

@end