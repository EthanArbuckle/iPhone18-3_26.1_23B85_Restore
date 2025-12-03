@interface VUIDevice
+ (BOOL)supportsDeepColor;
+ (NSString)guid;
+ (NSString)model;
+ (NSString)name;
+ (NSString)systemName;
+ (NSString)systemVersion;
+ (int64_t)userInterfaceIdiom;
+ (void)enablePortraitLock:(BOOL)lock;
@end

@implementation VUIDevice

+ (int64_t)userInterfaceIdiom
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom;
}

+ (NSString)systemVersion
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  systemVersion = [currentDevice systemVersion];

  return systemVersion;
}

+ (NSString)name
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  name = [currentDevice name];

  return name;
}

+ (NSString)model
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  model = [currentDevice model];

  return model;
}

+ (NSString)systemName
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  systemName = [currentDevice systemName];

  return systemName;
}

+ (BOOL)supportsDeepColor
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  _supportsDeepColor = [currentDevice _supportsDeepColor];

  return _supportsDeepColor;
}

+ (void)enablePortraitLock:(BOOL)lock
{
  if (lock)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    _orientationBeforePortraitLock = [currentDevice orientation];

    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    [currentDevice2 setOrientation:1];
  }

  else if (_orientationBeforePortraitLock)
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    [currentDevice3 setOrientation:_orientationBeforePortraitLock];

    _orientationBeforePortraitLock = 0;
  }
}

+ (NSString)guid
{
  if (guid_sOnceToken != -1)
  {
    +[VUIDevice guid];
  }

  v3 = guid_vuiGuid;

  return v3;
}

uint64_t __17__VUIDevice_guid__block_invoke()
{
  guid_vuiGuid = [VUIMobileGestaltLookup stringValueForKey:@"UniqueDeviceID"];

  return MEMORY[0x2821F96F8]();
}

@end