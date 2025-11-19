@interface ICQUsageQuotaRequest
+ (void)addHeadersForPrimaryAccountToRequest:(id)a3;
+ (void)addHeadersToRequest:(id)a3 forAccount:(id)a4;
- (ICQUsageQuotaRequest)initWithAccount:(id)a3 accountStore:(id)a4 URLString:(id)a5;
- (id)urlRequest;
@end

@implementation ICQUsageQuotaRequest

- (ICQUsageQuotaRequest)initWithAccount:(id)a3 accountStore:(id)a4 URLString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = ICQUsageQuotaRequest;
  v10 = [(AARequest *)&v13 initWithURLString:a5];
  v11 = v10;
  if (v10)
  {
    [(ICQUsageQuotaRequest *)v10 setAccount:v8];
    [(ICQUsageQuotaRequest *)v11 setAccountStore:v9];
  }

  return v11;
}

- (id)urlRequest
{
  v8.receiver = self;
  v8.super_class = ICQUsageQuotaRequest;
  v3 = [(AARequest *)&v8 urlRequest];
  v4 = [v3 mutableCopy];

  v5 = objc_opt_class();
  v6 = [(ICQUsageQuotaRequest *)self account];
  [v5 addHeadersToRequest:v4 forAccount:v6];

  return v4;
}

+ (void)addHeadersToRequest:(id)a3 forAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 URL];
  v8 = [v7 scheme];
  v9 = [v8 lowercaseString];
  v10 = [v9 isEqualToString:@"https"];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v6 aa_personID];
    v13 = [v6 aa_authToken];
    v14 = [v11 stringWithFormat:@"%@:%@", v12, v13];

    v15 = [v14 dataUsingEncoding:4];
    v16 = [v15 base64EncodedStringWithOptions:0];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v16];
    [v5 addValue:v17 forHTTPHeaderField:@"Authorization"];
  }

  [v5 aa_addMultiUserDeviceHeaderIfEnabled];
  [v5 ak_addAnisetteHeaders];
  [v5 ak_addClientInfoHeader];
  v18 = [MEMORY[0x277CCA8D8] mainBundle];
  v19 = [v18 infoDictionary];

  v20 = MEMORY[0x277CCACA8];
  v21 = [v19 objectForKeyedSubscript:@"CFBundleName"];
  v22 = [v19 objectForKeyedSubscript:@"CFBundleVersion"];
  v23 = [MEMORY[0x277CEC7B8] currentInfo];
  v24 = [v23 osName];
  v25 = [MEMORY[0x277CEC7B8] currentInfo];
  v26 = [v25 osVersion];
  v27 = [v20 stringWithFormat:@"%@/%@ %@/%@", v21, v22, v24, v26];

  [v5 addValue:v27 forHTTPHeaderField:@"User-agent"];
  v33 = 0;
  v28 = [objc_alloc(MEMORY[0x277D28A40]) initWithAccount:v6 delegate:0 eventQueue:0 error:&v33];
  v29 = v33;
  if (v29)
  {
    v30 = _ICQGetLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [ICQUsageQuotaRequest addHeadersToRequest:v29 forAccount:v30];
    }
  }

  else
  {
    v31 = [v28 backupDeviceUUID];
    [v5 addValue:v31 forHTTPHeaderField:@"X-Client-Backup-UUID"];

    v30 = [MEMORY[0x277D75418] currentDevice];
    v32 = [v30 sf_udidString];
    [v5 addValue:v32 forHTTPHeaderField:@"X-Client-UDID"];
  }
}

+ (void)addHeadersForPrimaryAccountToRequest:(id)a3
{
  v4 = MEMORY[0x277CB8F48];
  v5 = a3;
  v7 = [v4 defaultStore];
  v6 = [v7 aa_primaryAppleAccount];
  [a1 addHeadersToRequest:v5 forAccount:v6];
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