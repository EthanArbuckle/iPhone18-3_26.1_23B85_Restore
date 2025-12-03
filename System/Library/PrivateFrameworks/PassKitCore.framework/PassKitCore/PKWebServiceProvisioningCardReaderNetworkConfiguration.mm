@interface PKWebServiceProvisioningCardReaderNetworkConfiguration
- (PKWebServiceProvisioningCardReaderNetworkConfiguration)initWithDictionary:(id)dictionary;
@end

@implementation PKWebServiceProvisioningCardReaderNetworkConfiguration

- (PKWebServiceProvisioningCardReaderNetworkConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v12.receiver = self;
    v12.super_class = PKWebServiceProvisioningCardReaderNetworkConfiguration;
    v5 = [(PKWebServiceProvisioningCardReaderNetworkConfiguration *)&v12 init];
    if (v5)
    {
      v6 = [dictionaryCopy objectForKey:@"network"];
      v5->_network = [v6 integerValue];

      v5->_blocked = [dictionaryCopy PKBoolForKey:@"blocked"];
      v7 = [dictionaryCopy PKDictionaryForKey:@"versionRange"];
      if (v7)
      {
        v8 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v7];
        versionRange = v5->_versionRange;
        v5->_versionRange = v8;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end