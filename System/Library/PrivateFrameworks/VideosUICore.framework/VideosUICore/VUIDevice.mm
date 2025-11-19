@interface VUIDevice
+ (BOOL)supportsDeepColor;
+ (NSString)guid;
+ (NSString)model;
+ (NSString)name;
+ (NSString)systemName;
+ (NSString)systemVersion;
+ (int64_t)userInterfaceIdiom;
+ (void)enablePortraitLock:(BOOL)a3;
@end

@implementation VUIDevice

+ (int64_t)userInterfaceIdiom
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3;
}

+ (NSString)systemVersion
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 systemVersion];

  return v3;
}

+ (NSString)name
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 name];

  return v3;
}

+ (NSString)model
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 model];

  return v3;
}

+ (NSString)systemName
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 systemName];

  return v3;
}

+ (BOOL)supportsDeepColor
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 _supportsDeepColor];

  return v3;
}

+ (void)enablePortraitLock:(BOOL)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    _orientationBeforePortraitLock = [v3 orientation];

    v5 = [MEMORY[0x277D75418] currentDevice];
    [v5 setOrientation:1];
  }

  else if (_orientationBeforePortraitLock)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    [v4 setOrientation:_orientationBeforePortraitLock];

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