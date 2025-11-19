@interface NSString
@end

@implementation NSString

uint64_t __56__NSString_QRCode__parseQueryParamsWithTitleDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"key"];
  v6 = [v4 objectForKeyedSubscript:@"key"];

  v7 = [v6 compare:v5];
  return v7;
}

@end