@interface ICQQuotaApp
- (id)description;
@end

@implementation ICQQuotaApp

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ICQQuotaApp *)self bundleID];
  v6 = [v3 stringWithFormat:@"<%@: %p for bundle ID: %@>", v4, self, v5];

  return v6;
}

@end