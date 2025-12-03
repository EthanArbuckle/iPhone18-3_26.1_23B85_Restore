@interface MGWrapper
+ (id)sharedMGWrapper;
- (BOOL)MGIsDeviceOneOfType:(int64_t)type;
- (BOOL)MGIsDeviceOneOfTypes:(id)types;
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
  block[4] = self;
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
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)isHeySiriAlwaysOn
{
  if ([(MGWrapper *)self isRunningOnSimulator])
  {
    getSimulatorDevice = [(MGWrapper *)self getSimulatorDevice];
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:getSimulatorDevice];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    model = [currentDevice model];
    deviceClassiPad = [(MGWrapper *)self deviceClassiPad];
    v6 = [model containsString:deviceClassiPad];

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
  deviceClass = [(MGWrapper *)self deviceClass];
  v3 = [deviceClass isEqualToString:@"iPad"];

  return v3;
}

- (BOOL)isDeviceIPhone
{
  deviceClass = [(MGWrapper *)self deviceClass];
  v3 = [deviceClass isEqualToString:@"iPhone"];

  return v3;
}

- (BOOL)isDeviceIPod
{
  deviceClass = [(MGWrapper *)self deviceClass];
  v3 = [deviceClass isEqualToString:@"iPod"];

  return v3;
}

- (BOOL)isDeviceVision
{
  deviceClass = [(MGWrapper *)self deviceClass];
  v3 = [deviceClass isEqualToString:@"RealityDevice"];

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

- (BOOL)MGIsDeviceOneOfTypes:(id)types
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  typesCopy = types;
  v5 = [typesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(typesCopy);
        }

        if (-[MGWrapper MGIsDeviceOneOfType:](self, "MGIsDeviceOneOfType:", [*(*(&v12 + 1) + 8 * i) integerValue]))
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [typesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)MGIsDeviceOneOfType:(int64_t)type
{
  v8 = *MEMORY[0x277D85DE8];
  switch(type)
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
      LOBYTE(isRunningOnSimulator) = MGIsDeviceOneOfType();
      break;
    default:
      isRunningOnSimulator = [(MGWrapper *)self isRunningOnSimulator];
      if (isRunningOnSimulator)
      {
        LOBYTE(isRunningOnSimulator) = [(MGWrapper *)self getSimulatorDevice]== type;
      }

      break;
  }

  v6 = *MEMORY[0x277D85DE8];
  return isRunningOnSimulator;
}

@end