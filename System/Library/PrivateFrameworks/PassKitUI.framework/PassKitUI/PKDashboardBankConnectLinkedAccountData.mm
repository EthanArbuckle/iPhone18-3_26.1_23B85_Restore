@interface PKDashboardBankConnectLinkedAccountData
- (id)accountID;
@end

@implementation PKDashboardBankConnectLinkedAccountData

- (id)accountID
{
  v2 = [(PKDashboardBankConnectLinkedAccountData *)self account];
  v3 = [v2 fullyQualifiedAccountIdentifier];
  v4 = [v3 accountID];

  return v4;
}

@end