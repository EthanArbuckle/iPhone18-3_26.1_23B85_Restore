@interface RTWalletManagerNotificationPaymentUsed
- (RTWalletManagerNotificationPaymentUsed)initWithPassIdentifier:(id)a3 transactionIdentifier:(id)a4 info:(id)a5;
@end

@implementation RTWalletManagerNotificationPaymentUsed

- (RTWalletManagerNotificationPaymentUsed)initWithPassIdentifier:(id)a3 transactionIdentifier:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = RTWalletManagerNotificationPaymentUsed;
  v11 = [(RTNotification *)&v25 init];
  if (v11)
  {
    v12 = [v8 copy];
    passIdentifier = v11->_passIdentifier;
    v11->_passIdentifier = v12;

    v14 = [v9 copy];
    transactionIdentifier = v11->_transactionIdentifier;
    v11->_transactionIdentifier = v14;

    v16 = [v10 objectForKeyedSubscript:*MEMORY[0x277D38A60]];
    date = v11->_date;
    v11->_date = v16;

    v18 = [v10 objectForKeyedSubscript:*MEMORY[0x277D38A70]];
    location = v11->_location;
    v11->_location = v18;

    v20 = [v10 objectForKeyedSubscript:*MEMORY[0x277D38A58]];
    muid = v11->_muid;
    v11->_muid = v20;

    v22 = [v10 objectForKeyedSubscript:*MEMORY[0x277D38A68]];
    provider = v11->_provider;
    v11->_provider = v22;
  }

  return v11;
}

@end