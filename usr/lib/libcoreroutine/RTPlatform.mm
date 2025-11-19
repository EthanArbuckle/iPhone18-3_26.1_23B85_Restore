@interface RTPlatform
+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionFromString:(SEL)a3;
+ (BOOL)operatingSystemAtLeastVersion:(id *)a3;
+ (BOOL)operatingSystemNoGreaterThanVersion:(id *)a3;
+ (BOOL)version:(id *)a3 atLeastVersion:(id *)a4;
+ (BOOL)version:(id *)a3 noGreaterThanVersion:(id *)a4;
+ (RTPlatform)allocWithZone:(_NSZone *)a3;
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
  block[4] = a1;
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

+ (RTPlatform)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [RTPlatform_MobileGestalt allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___RTPlatform;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
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

+ (BOOL)version:(id *)a3 noGreaterThanVersion:(id *)a4
{
  if (a3->var0 > a4->var0)
  {
    return 0;
  }

  if (a3->var0 < a4->var0)
  {
    return 1;
  }

  var1 = a3->var1;
  v6 = a4->var1;
  if (var1 > v6)
  {
    return 0;
  }

  return var1 < v6 || a3->var2 <= a4->var2;
}

+ (BOOL)operatingSystemNoGreaterThanVersion:(id *)a3
{
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = v4;
  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  if (a3->var0 < 0)
  {
    return 0;
  }

  if (a3->var0 > 0)
  {
    return 1;
  }

  var1 = a3->var1;
  if (var1 < 0)
  {
    return 0;
  }

  return var1 > 0 || a3->var2 >= 0;
}

+ (BOOL)operatingSystemAtLeastVersion:(id *)a3
{
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = v4;
  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  if (a3->var0 > 0)
  {
    return 0;
  }

  if (a3->var0 < 0)
  {
    return 1;
  }

  var1 = a3->var1;
  if (var1 > 0)
  {
    return 0;
  }

  return var1 < 0 || a3->var2 <= 0;
}

+ (BOOL)version:(id *)a3 atLeastVersion:(id *)a4
{
  if (a3->var0 < a4->var0)
  {
    return 0;
  }

  if (a3->var0 > a4->var0)
  {
    return 1;
  }

  var1 = a3->var1;
  v6 = a4->var1;
  if (var1 < v6)
  {
    return 0;
  }

  return var1 > v6 || a3->var2 >= a4->var2;
}

+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionFromString:(SEL)a3
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