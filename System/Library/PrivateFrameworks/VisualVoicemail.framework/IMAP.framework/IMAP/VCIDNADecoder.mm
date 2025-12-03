@interface VCIDNADecoder
+ (id)stringByDecodingDomainName:(id)name;
@end

@implementation VCIDNADecoder

+ (id)stringByDecodingDomainName:(id)name
{
  nameCopy = name;
  if (stringByDecodingDomainName__onceToken != -1)
  {
    +[VCIDNADecoder stringByDecodingDomainName:];
  }

  v4 = [nameCopy length];
  if (v4 && [nameCopy rangeOfString:@"xn--" options:1 range:0 locale:{v4, stringByDecodingDomainName__posixLocale}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = _stringByApplyingIDNATranslationWithRange(nameCopy, MEMORY[0x277D82998]);
  }

  else
  {
    v5 = [nameCopy copy];
  }

  v6 = v5;

  return v6;
}

uint64_t __44__VCIDNADecoder_stringByDecodingDomainName___block_invoke()
{
  stringByDecodingDomainName__posixLocale = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];

  return MEMORY[0x2821F96F8]();
}

@end