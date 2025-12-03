@interface ICQUsageQuotaRequest
+ (void)addHeadersForPrimaryAccountToRequest:(id)request;
+ (void)addHeadersToRequest:(id)request forAccount:(id)account;
- (ICQUsageQuotaRequest)initWithAccount:(id)account accountStore:(id)store URLString:(id)string;
- (id)urlRequest;
@end

@implementation ICQUsageQuotaRequest

- (ICQUsageQuotaRequest)initWithAccount:(id)account accountStore:(id)store URLString:(id)string
{
  accountCopy = account;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = ICQUsageQuotaRequest;
  v10 = [(AARequest *)&v13 initWithURLString:string];
  v11 = v10;
  if (v10)
  {
    [(ICQUsageQuotaRequest *)v10 setAccount:accountCopy];
    [(ICQUsageQuotaRequest *)v11 setAccountStore:storeCopy];
  }

  return v11;
}

- (id)urlRequest
{
  v8.receiver = self;
  v8.super_class = ICQUsageQuotaRequest;
  urlRequest = [(AARequest *)&v8 urlRequest];
  v4 = [urlRequest mutableCopy];

  v5 = objc_opt_class();
  account = [(ICQUsageQuotaRequest *)self account];
  [v5 addHeadersToRequest:v4 forAccount:account];

  return v4;
}

+ (void)addHeadersToRequest:(id)request forAccount:(id)account
{
  requestCopy = request;
  accountCopy = account;
  v7 = [requestCopy URL];
  scheme = [v7 scheme];
  lowercaseString = [scheme lowercaseString];
  v10 = [lowercaseString isEqualToString:@"https"];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    aa_personID = [accountCopy aa_personID];
    aa_authToken = [accountCopy aa_authToken];
    v14 = [v11 stringWithFormat:@"%@:%@", aa_personID, aa_authToken];

    v15 = [v14 dataUsingEncoding:4];
    v16 = [v15 base64EncodedStringWithOptions:0];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v16];
    [requestCopy addValue:v17 forHTTPHeaderField:@"Authorization"];
  }

  [requestCopy aa_addMultiUserDeviceHeaderIfEnabled];
  [requestCopy ak_addAnisetteHeaders];
  [requestCopy ak_addClientInfoHeader];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v20 = MEMORY[0x277CCACA8];
  v21 = [infoDictionary objectForKeyedSubscript:@"CFBundleName"];
  v22 = [infoDictionary objectForKeyedSubscript:@"CFBundleVersion"];
  currentInfo = [MEMORY[0x277CEC7B8] currentInfo];
  osName = [currentInfo osName];
  currentInfo2 = [MEMORY[0x277CEC7B8] currentInfo];
  osVersion = [currentInfo2 osVersion];
  v27 = [v20 stringWithFormat:@"%@/%@ %@/%@", v21, v22, osName, osVersion];

  [requestCopy addValue:v27 forHTTPHeaderField:@"User-agent"];
  v33 = 0;
  v28 = [objc_alloc(MEMORY[0x277D28A40]) initWithAccount:accountCopy delegate:0 eventQueue:0 error:&v33];
  v29 = v33;
  if (v29)
  {
    currentDevice = _ICQGetLogSystem();
    if (os_log_type_enabled(currentDevice, OS_LOG_TYPE_ERROR))
    {
      [ICQUsageQuotaRequest addHeadersToRequest:v29 forAccount:currentDevice];
    }
  }

  else
  {
    backupDeviceUUID = [v28 backupDeviceUUID];
    [requestCopy addValue:backupDeviceUUID forHTTPHeaderField:@"X-Client-Backup-UUID"];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_udidString = [currentDevice sf_udidString];
    [requestCopy addValue:sf_udidString forHTTPHeaderField:@"X-Client-UDID"];
  }
}

+ (void)addHeadersForPrimaryAccountToRequest:(id)request
{
  v4 = MEMORY[0x277CB8F48];
  requestCopy = request;
  defaultStore = [v4 defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  [self addHeadersToRequest:requestCopy forAccount:aa_primaryAppleAccount];
}

+ (void)addHeadersToRequest:(uint64_t)a1 forAccount:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[ICQUsageQuotaRequest addHeadersToRequest:forAccount:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "%s unable to init MBManager with error: %@", &v2, 0x16u);
}

@end