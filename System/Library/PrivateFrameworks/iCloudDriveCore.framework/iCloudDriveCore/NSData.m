@interface NSData
@end

@implementation NSData

void __57__NSData_BRCCryptographicAdditions__brc_generateBogusKey__block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CBEA90] dataWithBytes:&v2 length:8];
  v1 = brc_generateBogusKey_key;
  brc_generateBogusKey_key = v0;
}

@end