@interface TSUSystemInfo
+ (id)hwModel;
+ (id)macAddress;
+ (id)processorName;
+ (id)systemVersion;
@end

@implementation TSUSystemInfo

+ (id)macAddress
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2;
  v16 = 4000;
  v17 = v18;
  if (ioctl(v2, 0xC00C6924uLL, &v16) < 0 || v16 < 1)
  {
    v7 = 0;
  }

  else
  {
    v4 = &v18[v16];
    v5 = v18;
    do
    {
      if (v5[17] == 18 && ((v15 = 0, v13 = 0, v14 = 0, v12 = 0, v6 = ether_ntoa(&v5[v5[21] + 24]), sscanf(v6, "%x:%x:%x:%x:%x:%x", &v15, &v14 + 4, &v14, &v13 + 4, &v13, &v12), v15) || v14 || HIDWORD(v13) || v13 || v12))
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", v15, HIDWORD(v14), v14, HIDWORD(v13), v13, v12];
      }

      else
      {
        v7 = 0;
      }

      v8 = v5[16];
      if (v8 <= 0x10)
      {
        v9 = 32;
      }

      else
      {
        v9 = v8 + 16;
      }

      v5 += v9;
    }

    while (v5 < v4 && v7 == 0);
  }

  close(v3);
  return v7;
}

+ (id)processorName
{
  v6 = *MEMORY[0x277D85DE8];
  *v4 = 0xC00000006;
  v3 = 257;
  if (sysctl(v4, 2u, v5, &v3, 0, 0) < 0)
  {
    return [MEMORY[0x277D75418] platformString];
  }

  result = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v5];
  if (!result)
  {
    return [MEMORY[0x277D75418] platformString];
  }

  return result;
}

+ (id)systemVersion
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];

  return [currentDevice systemVersion];
}

+ (id)hwModel
{
  if (hwModel_onceToken != -1)
  {
    +[TSUSystemInfo hwModel];
  }

  return hwModel_hwModel;
}

void __24__TSUSystemInfo_hwModel__block_invoke()
{
  size = 0;
  sysctlbyname("hw.model", 0, &size, 0, 0);
  v0 = malloc_type_malloc(size, 0x4863A66BuLL);
  sysctlbyname("hw.model", v0, &size, 0, 0);
  hwModel_hwModel = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v0];
  free(v0);
}

@end