@interface STUICoreDevice
+ (BOOL)isiPad;
+ (BOOL)isiPhone;
+ (BOOL)isiPodTouch;
+ (NSString)localizedModel;
@end

@implementation STUICoreDevice

+ (BOOL)isiPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  model = [currentDevice model];
  v4 = [model hasPrefix:@"iPad"];

  return v4;
}

+ (BOOL)isiPhone
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  model = [currentDevice model];
  v4 = [model hasPrefix:@"iPhone"];

  return v4;
}

+ (BOOL)isiPodTouch
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  model = [currentDevice model];
  v4 = [model hasPrefix:@"iPod touch"];

  return v4;
}

+ (NSString)localizedModel
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  localizedModel = [currentDevice localizedModel];

  return localizedModel;
}

@end