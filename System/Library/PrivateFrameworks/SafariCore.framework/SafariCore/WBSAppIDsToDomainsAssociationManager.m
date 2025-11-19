@interface WBSAppIDsToDomainsAssociationManager
- (WBSAppIDsToDomainsAssociationManager)initWithAppIDsToDomains:(id)a3;
@end

@implementation WBSAppIDsToDomainsAssociationManager

- (WBSAppIDsToDomainsAssociationManager)initWithAppIDsToDomains:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSAppIDsToDomainsAssociationManager;
  v5 = [(WBSAppIDsToDomainsAssociationManager *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    appIDsToDomains = v5->_appIDsToDomains;
    v5->_appIDsToDomains = v6;

    v8 = v5;
  }

  return v5;
}

@end