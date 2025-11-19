@interface NSString
@end

@implementation NSString

void __43__NSString_WiFiKitUI__formattedWiFiAddress__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = v4;
  if ([v4 length] <= 1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"0%@", v4];
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
}

@end