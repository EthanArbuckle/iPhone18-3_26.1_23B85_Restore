@interface ICQQuotaInfoRequest
- (ICQQuotaInfoRequest)initWithAccount:(id)a3 accountStore:(id)a4 detailed:(BOOL)a5;
- (id)urlRequest;
@end

@implementation ICQQuotaInfoRequest

- (ICQQuotaInfoRequest)initWithAccount:(id)a3 accountStore:(id)a4 detailed:(BOOL)a5
{
  v8 = @"quotaInfoURL";
  if (a5)
  {
    v8 = @"storageInfoURL";
  }

  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [v11 propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  v13 = [v12 objectForKey:v9];

  v14 = *MEMORY[0x277CEC950];
  v15 = [v11 aa_personID];
  v16 = [v13 stringByReplacingOccurrencesOfString:v14 withString:v15];

  v17 = *MEMORY[0x277CEC960];
  v18 = [MEMORY[0x277CEC7B8] udid];
  v19 = [v16 stringByReplacingOccurrencesOfString:v17 withString:v18];

  v20 = [v19 stringByAddingPercentEscapesUsingEncoding:4];
  v23.receiver = self;
  v23.super_class = ICQQuotaInfoRequest;
  v21 = [(ICQUsageQuotaRequest *)&v23 initWithAccount:v11 accountStore:v10 URLString:v20];

  return v21;
}

- (id)urlRequest
{
  v4.receiver = self;
  v4.super_class = ICQQuotaInfoRequest;
  v2 = [(ICQUsageQuotaRequest *)&v4 urlRequest];
  [v2 setHTTPMethod:@"GET"];

  return v2;
}

@end