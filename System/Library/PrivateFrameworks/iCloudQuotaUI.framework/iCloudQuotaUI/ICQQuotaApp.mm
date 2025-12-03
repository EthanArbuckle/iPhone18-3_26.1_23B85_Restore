@interface ICQQuotaApp
- (id)description;
@end

@implementation ICQQuotaApp

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  bundleID = [(ICQQuotaApp *)self bundleID];
  v6 = [v3 stringWithFormat:@"<%@: %p for bundle ID: %@>", v4, self, bundleID];

  return v6;
}

@end