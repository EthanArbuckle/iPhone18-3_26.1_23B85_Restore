@interface NSMutableURLRequest(Quota)
- (uint64_t)ind_addQuotaHeadersForAccount:()Quota;
- (void)ind_addUserAgentString;
@end

@implementation NSMutableURLRequest(Quota)

- (uint64_t)ind_addQuotaHeadersForAccount:()Quota
{
  v4 = a3;
  [a1 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v5 = [MEMORY[0x277CEC7B8] currentInfo];
  v6 = [v5 udid];
  [a1 setValue:v6 forHTTPHeaderField:@"X-Client-UDID"];

  [a1 ind_addUserAgentString];
  [a1 setHTTPMethod:@"GET"];
  [a1 aa_addBasicAuthorizationHeaderWithAccount:v4 preferUsingPassword:0];

  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v7 _numberingSystem];
  [a1 setValue:v8 forHTTPHeaderField:@"X-Apple-Locale-Numbering-System"];

  get_ICQHelperFunctionsClass();
  if (objc_opt_respondsToSelector())
  {
    v9 = [get_ICQHelperFunctionsClass() standardDateFormat:3];
    [a1 setValue:v9 forHTTPHeaderField:@"X-Apple-Locale-Date-Format-Long"];

    v10 = [get_ICQHelperFunctionsClass() standardDateFormat:1];
    [a1 setValue:v10 forHTTPHeaderField:@"X-Apple-Locale-Date-Format-Short"];
  }

  result = _os_feature_enabled_impl();
  if (result)
  {

    return [a1 setValue:@"solarium" forHTTPHeaderField:@"X-Apple-iCloudUI-Feature"];
  }

  return result;
}

- (void)ind_addUserAgentString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v2 infoDictionary];

  v3 = MEMORY[0x277CCACA8];
  v4 = [v11 objectForKeyedSubscript:@"CFBundleName"];
  v5 = [v11 objectForKeyedSubscript:@"CFBundleVersion"];
  v6 = [MEMORY[0x277CEC7B8] currentInfo];
  v7 = [v6 osName];
  v8 = [MEMORY[0x277CEC7B8] currentInfo];
  v9 = [v8 osVersion];
  v10 = [v3 stringWithFormat:@"%@/%@ %@/%@", v4, v5, v7, v9];

  [a1 addValue:v10 forHTTPHeaderField:@"User-agent"];
}

@end