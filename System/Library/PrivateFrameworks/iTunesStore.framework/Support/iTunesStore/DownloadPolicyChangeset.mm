@interface DownloadPolicyChangeset
- (DownloadPolicyChangeset)initWithPolicyIdentifiers:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation DownloadPolicyChangeset

- (DownloadPolicyChangeset)initWithPolicyIdentifiers:(id)a3
{
  v6.receiver = self;
  v6.super_class = DownloadPolicyChangeset;
  v4 = [(DownloadPolicyChangeset *)&v6 init];
  if (v4)
  {
    v4->_policyIDs = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadPolicyChangeset;
  [(DownloadPolicyChangeset *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[2] = [(NSDictionary *)self->_downloadProperties copyWithZone:a3];
  v5[4] = [(NSSet *)self->_policyIDs copyWithZone:a3];
  return v5;
}

@end