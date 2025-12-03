@interface PKAppleBalanceAddMoneyUIManager
- (PKAppleBalanceAddMoneyUIManager)initWithAccount:(id)account;
@end

@implementation PKAppleBalanceAddMoneyUIManager

- (PKAppleBalanceAddMoneyUIManager)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = PKAppleBalanceAddMoneyUIManager;
  v5 = [(PKAppleBalanceAddMoneyUIManager *)&v9 init];
  if (v5)
  {
    v6 = [[_PKAppleBalanceAddMoneyUIManager alloc] initWithAccount:accountCopy];
    manager = v5->_manager;
    v5->_manager = v6;
  }

  return v5;
}

@end