@interface _MLNetworkOptions
- (BOOL)useAWDL;
- (BOOL)useBonjour;
- (BOOL)useTLS;
- (BOOL)useUDP;
- (_MLNetworkOptions)initWithOptions:(id)options;
- (const)localAddr;
- (const)localPort;
- (const)networkNameIdentifier;
- (const)port;
- (const)psk;
- (unint64_t)family;
@end

@implementation _MLNetworkOptions

- (_MLNetworkOptions)initWithOptions:(id)options
{
  v26[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v23.receiver = self;
  v23.super_class = _MLNetworkOptions;
  v5 = [(_MLNetworkOptions *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v5->_receiveTimeout = 20;
    v25[0] = kMLNetworkNameIdentifierKey[0];
    v25[1] = kMLNetworkPortNumberKey[0];
    v26[0] = &stru_28744CC18;
    v26[1] = @"8080";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v8 = [v7 mutableCopy];
    networkOptions = v6->_networkOptions;
    v6->_networkOptions = v8;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = optionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v10 objectForKeyedSubscript:{v15, v19}];
          [(NSMutableDictionary *)v6->_networkOptions setObject:v16 forKeyedSubscript:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)useAWDL
{
  networkOptions = [(_MLNetworkOptions *)self networkOptions];
  v3 = [networkOptions objectForKeyedSubscript:kMLNetworkUseAWDLKey[0]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)useBonjour
{
  networkOptions = [(_MLNetworkOptions *)self networkOptions];
  v3 = [networkOptions objectForKeyedSubscript:kMLNetworkUseBonjourKey[0]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)useUDP
{
  networkOptions = [(_MLNetworkOptions *)self networkOptions];
  v3 = [networkOptions objectForKeyedSubscript:kMLNetworkUseUDPKey[0]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)useTLS
{
  networkOptions = [(_MLNetworkOptions *)self networkOptions];
  v3 = [networkOptions objectForKeyedSubscript:kMLNetworkUseTLSKey[0]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (unint64_t)family
{
  networkOptions = [(_MLNetworkOptions *)self networkOptions];
  v3 = [networkOptions objectForKeyedSubscript:kMLNetworkFamilyKey[0]];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (const)psk
{
  networkOptions = [(_MLNetworkOptions *)self networkOptions];
  v3 = [networkOptions objectForKeyedSubscript:kMLNetworkPskKey[0]];
  uTF8String = [v3 UTF8String];

  return uTF8String;
}

- (const)localAddr
{
  networkOptions = [(_MLNetworkOptions *)self networkOptions];
  v3 = [networkOptions objectForKeyedSubscript:kMLNetworkLocalAddrKey[0]];
  uTF8String = [v3 UTF8String];

  return uTF8String;
}

- (const)localPort
{
  networkOptions = [(_MLNetworkOptions *)self networkOptions];
  v3 = [networkOptions objectForKeyedSubscript:kMLNetworkLocalPortKey];
  uTF8String = [v3 UTF8String];

  return uTF8String;
}

- (const)networkNameIdentifier
{
  networkOptions = [(_MLNetworkOptions *)self networkOptions];
  v4 = [networkOptions objectForKeyedSubscript:kMLNetworkNameIdentifierKey[0]];
  v5 = [v4 isEqualToString:&stru_28744CC18];

  if (v5)
  {
    return 0;
  }

  networkOptions2 = [(_MLNetworkOptions *)self networkOptions];
  v8 = [networkOptions2 objectForKeyedSubscript:kMLNetworkNameIdentifierKey[0]];
  uTF8String = [v8 UTF8String];

  return uTF8String;
}

- (const)port
{
  networkOptions = [(_MLNetworkOptions *)self networkOptions];
  v3 = [networkOptions objectForKeyedSubscript:kMLNetworkPortNumberKey[0]];
  uTF8String = [v3 UTF8String];

  return uTF8String;
}

@end