@interface WBSPasswordAuditingEligibleDomainsManager
- (WBSPasswordAuditingEligibleDomainsManager)initWithDomainsIneligibleForPasswordAuditing:(id)auditing;
@end

@implementation WBSPasswordAuditingEligibleDomainsManager

- (WBSPasswordAuditingEligibleDomainsManager)initWithDomainsIneligibleForPasswordAuditing:(id)auditing
{
  auditingCopy = auditing;
  v10.receiver = self;
  v10.super_class = WBSPasswordAuditingEligibleDomainsManager;
  v5 = [(WBSPasswordAuditingEligibleDomainsManager *)&v10 init];
  if (v5)
  {
    v6 = [auditingCopy copy];
    domainsIneligibleForPasswordAuditing = v5->_domainsIneligibleForPasswordAuditing;
    v5->_domainsIneligibleForPasswordAuditing = v6;

    v8 = v5;
  }

  return v5;
}

@end