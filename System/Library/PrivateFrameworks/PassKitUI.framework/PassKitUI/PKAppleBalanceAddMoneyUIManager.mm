@interface PKAppleBalanceAddMoneyUIManager
- (PKAppleBalanceAddMoneyUIManager)initWithAccount:(id)a3;
@end

@implementation PKAppleBalanceAddMoneyUIManager

- (PKAppleBalanceAddMoneyUIManager)initWithAccount:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKAppleBalanceAddMoneyUIManager;
  v5 = [(PKAppleBalanceAddMoneyUIManager *)&v9 init];
  if (v5)
  {
    v6 = [[_PKAppleBalanceAddMoneyUIManager alloc] initWithAccount:v4];
    manager = v5->_manager;
    v5->_manager = v6;
  }

  return v5;
}

@end