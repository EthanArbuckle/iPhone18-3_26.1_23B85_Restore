@interface AliroProtocolVersions
- (AliroProtocolVersions)initWithBleAdvertisingVersions:(id)versions supportedBLEUWBProtocolVersions:(id)protocolVersions expeditedTransactionSupportedProtocolVersions:(id)supportedProtocolVersions;
- (AliroProtocolVersions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AliroProtocolVersions

- (AliroProtocolVersions)initWithBleAdvertisingVersions:(id)versions supportedBLEUWBProtocolVersions:(id)protocolVersions expeditedTransactionSupportedProtocolVersions:(id)supportedProtocolVersions
{
  versionsCopy = versions;
  protocolVersionsCopy = protocolVersions;
  supportedProtocolVersionsCopy = supportedProtocolVersions;
  v16.receiver = self;
  v16.super_class = AliroProtocolVersions;
  v12 = [(AliroProtocolVersions *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bleAdvertisingVersions, versions);
    objc_storeStrong(&v13->_supportedBLEUWBProtocolVersions, protocolVersions);
    objc_storeStrong(&v13->_expeditedTransactionSupportedProtocolVersions, supportedProtocolVersions);
    v14 = v13;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  expeditedTransactionSupportedProtocolVersions = [(AliroProtocolVersions *)self expeditedTransactionSupportedProtocolVersions];
  [coderCopy encodeObject:expeditedTransactionSupportedProtocolVersions forKey:@"expeditedTransactionSupportedProtocolVersions"];

  supportedBLEUWBProtocolVersions = [(AliroProtocolVersions *)self supportedBLEUWBProtocolVersions];
  [coderCopy encodeObject:supportedBLEUWBProtocolVersions forKey:@"supportedBLEUWBProtocolVersions"];

  bleAdvertisingVersions = [(AliroProtocolVersions *)self bleAdvertisingVersions];
  [coderCopy encodeObject:bleAdvertisingVersions forKey:@"bleAdvertisingVersions"];
}

- (AliroProtocolVersions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = AliroProtocolVersions;
  v5 = [(AliroProtocolVersions *)&v17 init];
  v6 = v5;
  if (v5)
  {
    expeditedTransactionSupportedProtocolVersions = [(AliroProtocolVersions *)v5 expeditedTransactionSupportedProtocolVersions];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expeditedTransactionSupportedProtocolVersions"];
    expeditedTransactionSupportedProtocolVersions = v6->_expeditedTransactionSupportedProtocolVersions;
    v6->_expeditedTransactionSupportedProtocolVersions = v8;

    supportedBLEUWBProtocolVersions = [(AliroProtocolVersions *)v6 supportedBLEUWBProtocolVersions];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportedBLEUWBProtocolVersions"];
    supportedBLEUWBProtocolVersions = v6->_supportedBLEUWBProtocolVersions;
    v6->_supportedBLEUWBProtocolVersions = v11;

    bleAdvertisingVersions = [(AliroProtocolVersions *)v6 bleAdvertisingVersions];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleAdvertisingVersions"];
    bleAdvertisingVersions = v6->_bleAdvertisingVersions;
    v6->_bleAdvertisingVersions = v14;
  }

  return v6;
}

@end