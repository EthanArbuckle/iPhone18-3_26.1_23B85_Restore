@interface SBTransaction
- (SBTransaction)init;
@end

@implementation SBTransaction

- (SBTransaction)init
{
  v5.receiver = self;
  v5.super_class = SBTransaction;
  v2 = [(SBTransaction *)&v5 init];
  if (v2)
  {
    v3 = SBLogTransaction();
    [(SBTransaction *)v2 _addDebugLogCategory:v3];

    [(SBTransaction *)v2 setAuditHistoryEnabled:1];
  }

  return v2;
}

@end