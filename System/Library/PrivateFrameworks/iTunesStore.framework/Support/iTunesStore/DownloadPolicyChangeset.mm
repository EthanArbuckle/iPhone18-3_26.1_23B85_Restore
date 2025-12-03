@interface DownloadPolicyChangeset
- (DownloadPolicyChangeset)initWithPolicyIdentifiers:(id)identifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation DownloadPolicyChangeset

- (DownloadPolicyChangeset)initWithPolicyIdentifiers:(id)identifiers
{
  v6.receiver = self;
  v6.super_class = DownloadPolicyChangeset;
  v4 = [(DownloadPolicyChangeset *)&v6 init];
  if (v4)
  {
    v4->_policyIDs = [identifiers copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadPolicyChangeset;
  [(DownloadPolicyChangeset *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[2] = [(NSDictionary *)self->_downloadProperties copyWithZone:zone];
  v5[4] = [(NSSet *)self->_policyIDs copyWithZone:zone];
  return v5;
}

@end