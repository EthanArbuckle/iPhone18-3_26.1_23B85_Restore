@interface PVDeviceCharacteristics
+ (void)Initialize;
@end

@implementation PVDeviceCharacteristics

+ (void)Initialize
{
  if (+[PVDeviceCharacteristics Initialize]::onceToken != -1)
  {
    +[PVDeviceCharacteristics Initialize];
  }
}

void __37__PVDeviceCharacteristics_Initialize__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  *v7 = 0x1800000006;
  v5 = 8;
  sysctl(v7, 2u, &s_actualMemory, &v5, 0, 0);
  if (s_actualMemory <= 0x20000000)
  {
    s_isLowMem = 1;
  }

  v4 = 0;
  v5 = 4;
  sysctlbyname("hw.cputype", &v4 + 4, &v5, 0, 0);
  v5 = 4;
  sysctlbyname("hw.cpusubtype", &v4, &v5, 0, 0);
  if (HIDWORD(v4) == 16777228)
  {
    v0 = 3;
  }

  else if (HIDWORD(v4) == 12)
  {
    if ((v4 - 9) >= 5)
    {
      v0 = 1;
    }

    else
    {
      v0 = dword_260342A70[(v4 - 9)];
    }
  }

  else
  {
    v0 = 5;
  }

  s_architectureType = v0;
  v6[0] = xmmword_279AA5888;
  v6[1] = *&off_279AA5898;
  v6[2] = xmmword_279AA58A8;
  v1 = [MEMORY[0x277D75418] currentDevice];
  s_hasExtendedColorDisplay = [v1 _supportsDeepColor];

  v2 = MTLCreateSystemDefaultDevice();
  s_colorSyncCapable = [v2 supportsFamily:1002];

  for (i = 40; i != -8; i -= 8)
  {
  }
}

@end