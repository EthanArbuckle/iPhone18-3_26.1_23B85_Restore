@interface WBSPasswordAuditingEligibleDomainsManager
- (WBSPasswordAuditingEligibleDomainsManager)initWithDomainsIneligibleForPasswordAuditing:(id)a3;
@end

@implementation WBSPasswordAuditingEligibleDomainsManager

- (WBSPasswordAuditingEligibleDomainsManager)initWithDomainsIneligibleForPasswordAuditing:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSPasswordAuditingEligibleDomainsManager;
  v5 = [(WBSPasswordAuditingEligibleDomainsManager *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    domainsIneligibleForPasswordAuditing = v5->_domainsIneligibleForPasswordAuditing;
    v5->_domainsIneligibleForPasswordAuditing = v6;

    v8 = v5;
  }

  return v5;
}

@end