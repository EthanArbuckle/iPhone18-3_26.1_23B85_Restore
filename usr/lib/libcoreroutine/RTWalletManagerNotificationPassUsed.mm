@interface RTWalletManagerNotificationPassUsed
- (RTWalletManagerNotificationPassUsed)initWithPassTypeIdentifier:(id)identifier source:(int64_t)source info:(id)info;
@end

@implementation RTWalletManagerNotificationPassUsed

- (RTWalletManagerNotificationPassUsed)initWithPassTypeIdentifier:(id)identifier source:(int64_t)source info:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = RTWalletManagerNotificationPassUsed;
  v10 = [(RTNotification *)&v17 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    passTypeIdentifier = v10->_passTypeIdentifier;
    v10->_passTypeIdentifier = v11;

    v10->_source = source;
    v13 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D38A50]];
    v14 = [v13 copy];
    storeIDs = v10->_storeIDs;
    v10->_storeIDs = v14;
  }

  return v10;
}

@end