@interface WiFiIPValidationHelper
+ (BOOL)ISValidIPv4Address:(id)a3;
+ (BOOL)IsValidIPv6Address:(id)a3;
@end

@implementation WiFiIPValidationHelper

+ (BOOL)ISValidIPv4Address:(id)a3
{
  result = a3;
  v6 = 0;
  if (a3)
  {
    v4 = a3;
    inet_pton(2, [v4 cStringUsingEncoding:4], &v6);
    v5 = [v4 hasPrefix:@"169.254."];

    return v5 ^ 1;
  }

  return result;
}

+ (BOOL)IsValidIPv6Address:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  v9[0] = 0;
  v10 = 0;
  v9[1] = 0;
  if (!v3 || (CFStringGetCString(v3, buffer, 46, 0x600u), inet_pton(30, buffer, v9) != 1) || LOBYTE(v9[0]) == 254 && (BYTE1(v9[0]) & 0xC0) == 0x80)
  {
    v6 = 0;
  }

  else
  {
    v5 = LOBYTE(v9[0]) != 255 || (BYTE1(v9[0]) & 0xF0) == 48;
    v6 = (BYTE1(v9[0]) & 0xF) != 2 || v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end