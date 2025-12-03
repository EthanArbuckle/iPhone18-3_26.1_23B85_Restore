@interface PKDashboardBankConnectLinkedAccountData
- (id)accountID;
@end

@implementation PKDashboardBankConnectLinkedAccountData

- (id)accountID
{
  account = [(PKDashboardBankConnectLinkedAccountData *)self account];
  fullyQualifiedAccountIdentifier = [account fullyQualifiedAccountIdentifier];
  accountID = [fullyQualifiedAccountIdentifier accountID];

  return accountID;
}

@end