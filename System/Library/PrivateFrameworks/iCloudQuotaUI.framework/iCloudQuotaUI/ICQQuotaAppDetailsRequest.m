@interface ICQQuotaAppDetailsRequest
- (ICQQuotaAppDetailsRequest)initWithAccount:(id)a3 accountStore:(id)a4 bundleIDs:(id)a5 quotaInfo:(id)a6;
- (id)urlRequest;
@end

@implementation ICQQuotaAppDetailsRequest

- (ICQQuotaAppDetailsRequest)initWithAccount:(id)a3 accountStore:(id)a4 bundleIDs:(id)a5 quotaInfo:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a6 appDetailsURLString];
  v16.receiver = self;
  v16.super_class = ICQQuotaAppDetailsRequest;
  v14 = [(ICQUsageQuotaRequest *)&v16 initWithAccount:v12 accountStore:v11 URLString:v13];

  if (v14)
  {
    [(ICQQuotaAppDetailsRequest *)v14 setBundleIDs:v10];
  }

  return v14;
}

- (id)urlRequest
{
  v11.receiver = self;
  v11.super_class = ICQQuotaAppDetailsRequest;
  v3 = [(ICQUsageQuotaRequest *)&v11 urlRequest];
  [v3 setHTTPMethod:@"POST"];
  [v3 addValue:@"application/vnd.apple.xmlplist" forHTTPHeaderField:@"Content-Type"];
  v4 = MEMORY[0x277CBEAC0];
  v5 = [(ICQQuotaAppDetailsRequest *)self bundleIDs];
  v6 = [MEMORY[0x277CBEA60] array];
  v7 = [MEMORY[0x277CBEA60] array];
  v8 = [v4 dictionaryWithObjectsAndKeys:{v5, @"bundle_ids", v6, @"adam_ids", v7, @"collection_ids", 0}];

  v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:100 options:0 error:0];
  [v3 setHTTPBody:v9];

  return v3;
}

@end