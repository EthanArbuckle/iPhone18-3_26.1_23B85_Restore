@interface AliroProtocolVersions
- (AliroProtocolVersions)initWithBleAdvertisingVersions:(id)a3 supportedBLEUWBProtocolVersions:(id)a4 expeditedTransactionSupportedProtocolVersions:(id)a5;
- (AliroProtocolVersions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AliroProtocolVersions

- (AliroProtocolVersions)initWithBleAdvertisingVersions:(id)a3 supportedBLEUWBProtocolVersions:(id)a4 expeditedTransactionSupportedProtocolVersions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = AliroProtocolVersions;
  v12 = [(AliroProtocolVersions *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bleAdvertisingVersions, a3);
    objc_storeStrong(&v13->_supportedBLEUWBProtocolVersions, a4);
    objc_storeStrong(&v13->_expeditedTransactionSupportedProtocolVersions, a5);
    v14 = v13;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AliroProtocolVersions *)self expeditedTransactionSupportedProtocolVersions];
  [v4 encodeObject:v5 forKey:@"expeditedTransactionSupportedProtocolVersions"];

  v6 = [(AliroProtocolVersions *)self supportedBLEUWBProtocolVersions];
  [v4 encodeObject:v6 forKey:@"supportedBLEUWBProtocolVersions"];

  v7 = [(AliroProtocolVersions *)self bleAdvertisingVersions];
  [v4 encodeObject:v7 forKey:@"bleAdvertisingVersions"];
}

- (AliroProtocolVersions)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = AliroProtocolVersions;
  v5 = [(AliroProtocolVersions *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(AliroProtocolVersions *)v5 expeditedTransactionSupportedProtocolVersions];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expeditedTransactionSupportedProtocolVersions"];
    expeditedTransactionSupportedProtocolVersions = v6->_expeditedTransactionSupportedProtocolVersions;
    v6->_expeditedTransactionSupportedProtocolVersions = v8;

    v10 = [(AliroProtocolVersions *)v6 supportedBLEUWBProtocolVersions];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportedBLEUWBProtocolVersions"];
    supportedBLEUWBProtocolVersions = v6->_supportedBLEUWBProtocolVersions;
    v6->_supportedBLEUWBProtocolVersions = v11;

    v13 = [(AliroProtocolVersions *)v6 bleAdvertisingVersions];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bleAdvertisingVersions"];
    bleAdvertisingVersions = v6->_bleAdvertisingVersions;
    v6->_bleAdvertisingVersions = v14;
  }

  return v6;
}

@end