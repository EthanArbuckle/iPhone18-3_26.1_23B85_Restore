@interface NSURL
@end

@implementation NSURL

uint64_t __64__NSURL_ISAdditions___URLQueryParameterValueAllowedCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] URLQueryAllowedCharacterSet];
  v1 = [v0 mutableCopy];
  v2 = _URLQueryParameterValueAllowedCharacterSet_characterSet;
  _URLQueryParameterValueAllowedCharacterSet_characterSet = v1;

  v3 = _URLQueryParameterValueAllowedCharacterSet_characterSet;

  return [v3 removeCharactersInString:@"?=&+"];
}

@end