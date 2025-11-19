@interface VCIDNAEncoder
+ (BOOL)encodingRequiredForDomainName:(id)a3;
+ (id)stringByEncodingDomainName:(id)a3;
@end

@implementation VCIDNAEncoder

+ (BOOL)encodingRequiredForDomainName:(id)a3
{
  v3 = encodingRequiredForDomainName__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[VCIDNAEncoder encodingRequiredForDomainName:];
  }

  v5 = [v4 rangeOfCharacterFromSet:encodingRequiredForDomainName__unsafeDomainNameCharacterSet options:0 range:{0, objc_msgSend(v4, "length")}];

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

+ (id)stringByEncodingDomainName:(id)a3
{
  v4 = a3;
  if ([v4 length] && (objc_msgSend(a1, "encodingRequiredForDomainName:", v4) & 1) != 0)
  {
    v5 = _stringByApplyingIDNATranslationWithRange(v4, MEMORY[0x277D82990]);
  }

  else
  {
    v5 = [v4 copy];
  }

  v6 = v5;

  return v6;
}

@end