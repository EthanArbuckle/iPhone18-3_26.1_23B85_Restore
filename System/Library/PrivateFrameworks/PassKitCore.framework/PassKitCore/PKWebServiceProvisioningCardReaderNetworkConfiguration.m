@interface PKWebServiceProvisioningCardReaderNetworkConfiguration
- (PKWebServiceProvisioningCardReaderNetworkConfiguration)initWithDictionary:(id)a3;
@end

@implementation PKWebServiceProvisioningCardReaderNetworkConfiguration

- (PKWebServiceProvisioningCardReaderNetworkConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = PKWebServiceProvisioningCardReaderNetworkConfiguration;
    v5 = [(PKWebServiceProvisioningCardReaderNetworkConfiguration *)&v12 init];
    if (v5)
    {
      v6 = [v4 objectForKey:@"network"];
      v5->_network = [v6 integerValue];

      v5->_blocked = [v4 PKBoolForKey:@"blocked"];
      v7 = [v4 PKDictionaryForKey:@"versionRange"];
      if (v7)
      {
        v8 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v7];
        versionRange = v5->_versionRange;
        v5->_versionRange = v8;
      }
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end