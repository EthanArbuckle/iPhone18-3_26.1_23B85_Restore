@interface NSString
@end

@implementation NSString

uint64_t __62__NSString_OFNSStringExtensions__stringByAddingPercentEscapes__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CCA900] "URLPathAllowedCharacterSet")];
  result = [v0 removeCharactersInString:{@"!*'();:&@=+$, /?%#[]"}];
  stringByAddingPercentEscapes_sAllowedCharacterSet = v0;
  return result;
}

@end