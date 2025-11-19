@interface SystemInfo
+ (id)buildString;
+ (id)deviceName;
@end

@implementation SystemInfo

+ (id)deviceName
{
  v6 = *MEMORY[0x29EDCA608];
  memset(&v5, 0, 512);
  uname(&v5);
  v2 = [MEMORY[0x29EDBA0F8] stringWithCString:v5.machine encoding:4];
  v3 = *MEMORY[0x29EDCA608];

  return v2;
}

+ (id)buildString
{
  v2 = [MEMORY[0x29EDBA0B0] processInfo];
  v3 = [v2 operatingSystemVersionString];
  v4 = [v3 componentsSeparatedByString:@" "];

  v5 = [v4 lastObject];
  v6 = [v4 lastObject];
  v7 = [v5 substringToIndex:{objc_msgSend(v6, "length") - 1}];

  return v7;
}

@end