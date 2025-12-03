@interface VCIDNAEncoder
+ (BOOL)encodingRequiredForDomainName:(id)name;
+ (id)stringByEncodingDomainName:(id)name;
@end

@implementation VCIDNAEncoder

+ (BOOL)encodingRequiredForDomainName:(id)name
{
  v3 = encodingRequiredForDomainName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    +[VCIDNAEncoder encodingRequiredForDomainName:];
  }

  v5 = [nameCopy rangeOfCharacterFromSet:encodingRequiredForDomainName__unsafeDomainNameCharacterSet options:0 range:{0, objc_msgSend(nameCopy, "length")}];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

void __47__VCIDNAEncoder_encodingRequiredForDomainName___block_invoke()
{
  v2 = [MEMORY[0x277CCAB50] characterSetWithRange:{48, 10}];
  [v2 addCharactersInRange:{65, 26}];
  [v2 addCharactersInRange:{97, 26}];
  [v2 addCharactersInString:@"-."];
  [v2 invert];
  v0 = [v2 copy];
  v1 = encodingRequiredForDomainName__unsafeDomainNameCharacterSet;
  encodingRequiredForDomainName__unsafeDomainNameCharacterSet = v0;
}

+ (id)stringByEncodingDomainName:(id)name
{
  nameCopy = name;
  if ([nameCopy length] && (objc_msgSend(self, "encodingRequiredForDomainName:", nameCopy) & 1) != 0)
  {
    v5 = _stringByApplyingIDNATranslationWithRange(nameCopy, MEMORY[0x277D82990]);
  }

  else
  {
    v5 = [nameCopy copy];
  }

  v6 = v5;

  return v6;
}

@end