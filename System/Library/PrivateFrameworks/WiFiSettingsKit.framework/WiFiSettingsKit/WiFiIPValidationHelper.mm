@interface WiFiIPValidationHelper
+ (BOOL)ISValidIPv4Address:(id)address;
+ (BOOL)IsValidIPv6Address:(id)address;
@end

@implementation WiFiIPValidationHelper

+ (BOOL)ISValidIPv4Address:(id)address
{
  result = address;
  v6 = 0;
  if (address)
  {
    addressCopy = address;
    inet_pton(2, [addressCopy cStringUsingEncoding:4], &v6);
    v5 = [addressCopy hasPrefix:@"169.254."];

    return v5 ^ 1;
  }

  return result;
}

+ (BOOL)IsValidIPv6Address:(id)address
{
  v12 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v4 = addressCopy;
  v9[0] = 0;
  v10 = 0;
  v9[1] = 0;
  if (!addressCopy || (CFStringGetCString(addressCopy, buffer, 46, 0x600u), inet_pton(30, buffer, v9) != 1) || LOBYTE(v9[0]) == 254 && (BYTE1(v9[0]) & 0xC0) == 0x80)
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