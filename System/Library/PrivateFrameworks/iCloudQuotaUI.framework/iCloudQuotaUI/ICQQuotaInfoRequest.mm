@interface ICQQuotaInfoRequest
- (ICQQuotaInfoRequest)initWithAccount:(id)account accountStore:(id)store detailed:(BOOL)detailed;
- (id)urlRequest;
@end

@implementation ICQQuotaInfoRequest

- (ICQQuotaInfoRequest)initWithAccount:(id)account accountStore:(id)store detailed:(BOOL)detailed
{
  v8 = @"quotaInfoURL";
  if (detailed)
  {
    v8 = @"storageInfoURL";
  }

  v9 = v8;
  storeCopy = store;
  accountCopy = account;
  v12 = [accountCopy propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  v13 = [v12 objectForKey:v9];

  v14 = *MEMORY[0x277CEC950];
  aa_personID = [accountCopy aa_personID];
  v16 = [v13 stringByReplacingOccurrencesOfString:v14 withString:aa_personID];

  v17 = *MEMORY[0x277CEC960];
  udid = [MEMORY[0x277CEC7B8] udid];
  v19 = [v16 stringByReplacingOccurrencesOfString:v17 withString:udid];

  v20 = [v19 stringByAddingPercentEscapesUsingEncoding:4];
  v23.receiver = self;
  v23.super_class = ICQQuotaInfoRequest;
  v21 = [(ICQUsageQuotaRequest *)&v23 initWithAccount:accountCopy accountStore:storeCopy URLString:v20];

  return v21;
}

- (id)urlRequest
{
  v4.receiver = self;
  v4.super_class = ICQQuotaInfoRequest;
  urlRequest = [(ICQUsageQuotaRequest *)&v4 urlRequest];
  [urlRequest setHTTPMethod:@"GET"];

  return urlRequest;
}

@end