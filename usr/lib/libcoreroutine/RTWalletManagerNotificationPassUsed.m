@interface RTWalletManagerNotificationPassUsed
- (RTWalletManagerNotificationPassUsed)initWithPassTypeIdentifier:(id)a3 source:(int64_t)a4 info:(id)a5;
@end

@implementation RTWalletManagerNotificationPassUsed

- (RTWalletManagerNotificationPassUsed)initWithPassTypeIdentifier:(id)a3 source:(int64_t)a4 info:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = RTWalletManagerNotificationPassUsed;
  v10 = [(RTNotification *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    passTypeIdentifier = v10->_passTypeIdentifier;
    v10->_passTypeIdentifier = v11;

    v10->_source = a4;
    v13 = [v9 objectForKeyedSubscript:*MEMORY[0x277D38A50]];
    v14 = [v13 copy];
    storeIDs = v10->_storeIDs;
    v10->_storeIDs = v14;
  }

  return v10;
}

@end