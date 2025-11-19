@interface MGWrapper
+ (id)sharedMGWrapper;
- (BOOL)MGIsDeviceOneOfType:(int64_t)a3;
- (BOOL)MGIsDeviceOneOfTypes:(id)a3;
- (BOOL)isDeviceIPad;
- (BOOL)isDeviceIPhone;
- (BOOL)isDeviceIPod;
- (BOOL)isDeviceVision;
- (BOOL)isHeySiriAlwaysOn;
- (BOOL)isIPadWithVolumePowerSameSide;
- (BOOL)isPlusIPhone;
- (BOOL)isSmallIPhone;
- (BOOL)isSmallestIPhone;
- (BOOL)supportsSideButtonActivation;
- (id)deviceClass;
- (int64_t)getSimulatorDevice;
@end

@implementation MGWrapper

+ (id)sharedMGWrapper
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MGWrapper_sharedMGWrapper__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedMGWrapper_onceToken != -1)
  {
    dispatch_once(&sharedMGWrapper_onceToken, block);
  }

  v2 = sharedMGWrapper_sharedMGWrapper;

  return v2;
}

uint64_t __28__MGWrapper_sharedMGWrapper__block_invoke(uint64_t a1)
{
  sharedMGWrapper_sharedMGWrapper = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isPlusIPhone
{
  if ([(MGWrapper *)self MGIsDeviceOneOfType:4]|| [(MGWrapper *)self MGIsDeviceOneOfType:7])
  {
    return 1;
  }

  return [(MGWrapper *)self MGIsDeviceOneOfType:9];
}

- (BOOL)isSmallIPhone
{
  if ([(MGWrapper *)self MGIsDeviceOneOfType:2]|| [(MGWrapper *)self MGIsDeviceOneOfType:6])
  {
    return 1;
  }

  return [(MGWrapper *)self MGIsDeviceOneOfType:8];
}

- (BOOL)isSmallestIPhone
{
  if ([(MGWrapper *)self MGIsDeviceOneOfType:1])
  {
    return 1;
  }

  return [(MGWrapper *)self MGIsDeviceOneOfType:10];
}

- (BOOL)supportsSideButtonActivation
{
  if (![(MGWrapper *)self isRunningOnSimulator])
  {
    return MGGetSInt32Answer() == 2;
  }

  return [(MGWrapper *)self MGIsDeviceOneOfTypes:&unk_2881EEE18];
}

- (int64_t)getSimulatorDevice
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:getenv("SIMULATOR_DEVICE_NAME")];
  v3 = [&unk_2881EEF40 objectForKey:v2];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)isHeySiriAlwaysOn
{
  if ([(MGWrapper *)self isRunningOnSimulator])
  {
    v3 = [(MGWrapper *)self getSimulatorDevice];
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
    v5 = [&unk_2881EEE30 containsObject:v4];

    return v5;
  }

  else
  {

    return MGGetBoolAnswer();
  }
}

- (id)deviceClass
{
  if ([(MGWrapper *)self isRunningOnSimulator])
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 model];
    v5 = [(MGWrapper *)self deviceClassiPad];
    v6 = [v4 containsString:v5];

    if (v6)
    {
      [(MGWrapper *)self deviceClassiPad];
    }

    else
    {
      [(MGWrapper *)self deviceClassiPhone];
    }
    v7 = ;
  }

  else
  {
    v7 = MGCopyAnswer();
  }

  return v7;
}

- (BOOL)isDeviceIPad
{
  v2 = [(MGWrapper *)self deviceClass];
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

- (BOOL)isDeviceIPhone
{
  v2 = [(MGWrapper *)self deviceClass];
  v3 = [v2 isEqualToString:@"iPhone"];

  return v3;
}

- (BOOL)isDeviceIPod
{
  v2 = [(MGWrapper *)self deviceClass];
  v3 = [v2 isEqualToString:@"iPod"];

  return v3;
}

- (BOOL)isDeviceVision
{
  v2 = [(MGWrapper *)self deviceClass];
  v3 = [v2 isEqualToString:@"RealityDevice"];

  return v3;
}

- (BOOL)isIPadWithVolumePowerSameSide
{
  if ([(MGWrapper *)self MGIsDeviceOneOfType:31])
  {
    return 1;
  }

  return [(MGWrapper *)self MGIsDeviceOneOfType:32];
}

- (BOOL)MGIsDeviceOneOfTypes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (-[MGWrapper MGIsDeviceOneOfType:](self, "MGIsDeviceOneOfType:", [*(*(&v12 + 1) + 8 * i) integerValue]))
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)MGIsDeviceOneOfType:(int64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 15:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
      LOBYTE(v5) = MGIsDeviceOneOfType();
      break;
    default:
      v5 = [(MGWrapper *)self isRunningOnSimulator];
      if (v5)
      {
        LOBYTE(v5) = [(MGWrapper *)self getSimulatorDevice]== a3;
      }

      break;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

@end