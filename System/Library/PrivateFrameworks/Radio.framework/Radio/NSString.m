@interface NSString
@end

@implementation NSString

void __94__NSString_RadioRequestAdditions__queryStringForRadioRequestParameters_protocolVersion_error___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v1 = [v0 mutableCopy];

  [v1 removeCharactersInString:{@":/?#[]@!$&'()*+, ;="}];
  v2 = queryStringForRadioRequestParameters_protocolVersion_error__sQueryStringAllowedCharacterSet;
  queryStringForRadioRequestParameters_protocolVersion_error__sQueryStringAllowedCharacterSet = v1;
}

@end