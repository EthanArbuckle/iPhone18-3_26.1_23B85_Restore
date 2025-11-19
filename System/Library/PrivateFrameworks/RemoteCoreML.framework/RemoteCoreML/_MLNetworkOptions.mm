@interface _MLNetworkOptions
- (BOOL)useAWDL;
- (BOOL)useBonjour;
- (BOOL)useTLS;
- (BOOL)useUDP;
- (_MLNetworkOptions)initWithOptions:(id)a3;
- (const)localAddr;
- (const)localPort;
- (const)networkNameIdentifier;
- (const)port;
- (const)psk;
- (unint64_t)family;
@end

@implementation _MLNetworkOptions

- (_MLNetworkOptions)initWithOptions:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v10 = v4;
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
  v2 = [(_MLNetworkOptions *)self networkOptions];
  v3 = [v2 objectForKeyedSubscript:kMLNetworkUseAWDLKey[0]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)useBonjour
{
  v2 = [(_MLNetworkOptions *)self networkOptions];
  v3 = [v2 objectForKeyedSubscript:kMLNetworkUseBonjourKey[0]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)useUDP
{
  v2 = [(_MLNetworkOptions *)self networkOptions];
  v3 = [v2 objectForKeyedSubscript:kMLNetworkUseUDPKey[0]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)useTLS
{
  v2 = [(_MLNetworkOptions *)self networkOptions];
  v3 = [v2 objectForKeyedSubscript:kMLNetworkUseTLSKey[0]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (unint64_t)family
{
  v2 = [(_MLNetworkOptions *)self networkOptions];
  v3 = [v2 objectForKeyedSubscript:kMLNetworkFamilyKey[0]];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (const)psk
{
  v2 = [(_MLNetworkOptions *)self networkOptions];
  v3 = [v2 objectForKeyedSubscript:kMLNetworkPskKey[0]];
  v4 = [v3 UTF8String];

  return v4;
}

- (const)localAddr
{
  v2 = [(_MLNetworkOptions *)self networkOptions];
  v3 = [v2 objectForKeyedSubscript:kMLNetworkLocalAddrKey[0]];
  v4 = [v3 UTF8String];

  return v4;
}

- (const)localPort
{
  v2 = [(_MLNetworkOptions *)self networkOptions];
  v3 = [v2 objectForKeyedSubscript:kMLNetworkLocalPortKey];
  v4 = [v3 UTF8String];

  return v4;
}

- (const)networkNameIdentifier
{
  v3 = [(_MLNetworkOptions *)self networkOptions];
  v4 = [v3 objectForKeyedSubscript:kMLNetworkNameIdentifierKey[0]];
  v5 = [v4 isEqualToString:&stru_28744CC18];

  if (v5)
  {
    return 0;
  }

  v7 = [(_MLNetworkOptions *)self networkOptions];
  v8 = [v7 objectForKeyedSubscript:kMLNetworkNameIdentifierKey[0]];
  v9 = [v8 UTF8String];

  return v9;
}

- (const)port
{
  v2 = [(_MLNetworkOptions *)self networkOptions];
  v3 = [v2 objectForKeyedSubscript:kMLNetworkPortNumberKey[0]];
  v4 = [v3 UTF8String];

  return v4;
}

@end