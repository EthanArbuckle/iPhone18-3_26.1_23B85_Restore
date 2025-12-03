@interface ICQQuotaAppDetailsRequest
- (ICQQuotaAppDetailsRequest)initWithAccount:(id)account accountStore:(id)store bundleIDs:(id)ds quotaInfo:(id)info;
- (id)urlRequest;
@end

@implementation ICQQuotaAppDetailsRequest

- (ICQQuotaAppDetailsRequest)initWithAccount:(id)account accountStore:(id)store bundleIDs:(id)ds quotaInfo:(id)info
{
  dsCopy = ds;
  storeCopy = store;
  accountCopy = account;
  appDetailsURLString = [info appDetailsURLString];
  v16.receiver = self;
  v16.super_class = ICQQuotaAppDetailsRequest;
  v14 = [(ICQUsageQuotaRequest *)&v16 initWithAccount:accountCopy accountStore:storeCopy URLString:appDetailsURLString];

  if (v14)
  {
    [(ICQQuotaAppDetailsRequest *)v14 setBundleIDs:dsCopy];
  }

  return v14;
}

- (id)urlRequest
{
  v11.receiver = self;
  v11.super_class = ICQQuotaAppDetailsRequest;
  urlRequest = [(ICQUsageQuotaRequest *)&v11 urlRequest];
  [urlRequest setHTTPMethod:@"POST"];
  [urlRequest addValue:@"application/vnd.apple.xmlplist" forHTTPHeaderField:@"Content-Type"];
  v4 = MEMORY[0x277CBEAC0];
  bundleIDs = [(ICQQuotaAppDetailsRequest *)self bundleIDs];
  array = [MEMORY[0x277CBEA60] array];
  array2 = [MEMORY[0x277CBEA60] array];
  v8 = [v4 dictionaryWithObjectsAndKeys:{bundleIDs, @"bundle_ids", array, @"adam_ids", array2, @"collection_ids", 0}];

  v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:100 options:0 error:0];
  [urlRequest setHTTPBody:v9];

  return urlRequest;
}

@end