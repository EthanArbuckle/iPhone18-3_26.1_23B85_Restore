@interface WLKTransactionScope
- (WLKTransactionScope)initWithIdentifier:(id)a3 delay:(double)a4;
- (void)dealloc;
@end

@implementation WLKTransactionScope

- (void)dealloc
{
  v3 = [(WLKTransactionScope *)self transaction];
  v4 = [(WLKTransactionScope *)self identifier];
  [(WLKTransactionScope *)self delay];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__WLKTransactionScope_dealloc__block_invoke;
  block[3] = &unk_279E5E5F8;
  v11 = v4;
  v12 = v3;
  v7 = v3;
  v8 = v4;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);

  v9.receiver = self;
  v9.super_class = WLKTransactionScope;
  [(WLKTransactionScope *)&v9 dealloc];
}

- (WLKTransactionScope)initWithIdentifier:(id)a3 delay:(double)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = WLKTransactionScope;
  v7 = [(WLKTransactionScope *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_delay = a4;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v7];
    v10 = v9;
    if (v6)
    {
      v11 = [v9 stringByAppendingFormat:@" %@", v6];
    }

    else
    {
      v11 = v9;
    }

    identifier = v8->_identifier;
    v8->_identifier = v11;

    [v6 UTF8String];
    v13 = os_transaction_create();
    transaction = v8->_transaction;
    v8->_transaction = v13;
  }

  NSLog(&cfstr_Wlktransaction.isa, v8->_identifier);

  return v8;
}

@end