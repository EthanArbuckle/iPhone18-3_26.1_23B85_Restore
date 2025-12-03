@interface NSMutableURLRequest(Quota)
- (uint64_t)ind_addQuotaHeadersForAccount:()Quota;
- (void)ind_addUserAgentString;
@end

@implementation NSMutableURLRequest(Quota)

- (uint64_t)ind_addQuotaHeadersForAccount:()Quota
{
  v4 = a3;
  [self setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  currentInfo = [MEMORY[0x277CEC7B8] currentInfo];
  udid = [currentInfo udid];
  [self setValue:udid forHTTPHeaderField:@"X-Client-UDID"];

  [self ind_addUserAgentString];
  [self setHTTPMethod:@"GET"];
  [self aa_addBasicAuthorizationHeaderWithAccount:v4 preferUsingPassword:0];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  _numberingSystem = [currentLocale _numberingSystem];
  [self setValue:_numberingSystem forHTTPHeaderField:@"X-Apple-Locale-Numbering-System"];

  get_ICQHelperFunctionsClass();
  if (objc_opt_respondsToSelector())
  {
    v9 = [get_ICQHelperFunctionsClass() standardDateFormat:3];
    [self setValue:v9 forHTTPHeaderField:@"X-Apple-Locale-Date-Format-Long"];

    v10 = [get_ICQHelperFunctionsClass() standardDateFormat:1];
    [self setValue:v10 forHTTPHeaderField:@"X-Apple-Locale-Date-Format-Short"];
  }

  result = _os_feature_enabled_impl();
  if (result)
  {

    return [self setValue:@"solarium" forHTTPHeaderField:@"X-Apple-iCloudUI-Feature"];
  }

  return result;
}

- (void)ind_addUserAgentString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v3 = MEMORY[0x277CCACA8];
  v4 = [infoDictionary objectForKeyedSubscript:@"CFBundleName"];
  v5 = [infoDictionary objectForKeyedSubscript:@"CFBundleVersion"];
  currentInfo = [MEMORY[0x277CEC7B8] currentInfo];
  osName = [currentInfo osName];
  currentInfo2 = [MEMORY[0x277CEC7B8] currentInfo];
  osVersion = [currentInfo2 osVersion];
  v10 = [v3 stringWithFormat:@"%@/%@ %@/%@", v4, v5, osName, osVersion];

  [self addValue:v10 forHTTPHeaderField:@"User-agent"];
}

@end