@interface PKNANEndpoint
- (NSDictionary)textInfo;
- (NSString)identifier;
- (NSString)name;
- (PKNANEndpoint)initWithDiscoveryResult:(id)a3;
- (id)debugDescription;
@end

@implementation PKNANEndpoint

- (PKNANEndpoint)initWithDiscoveryResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKNANEndpoint;
  v6 = [(PKNANEndpoint *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_discoveryResult, a3);
  }

  return v7;
}

- (id)debugDescription
{
  v3 = objc_opt_new();
  v4 = [NSString stringWithFormat:@"Endpoint: <%@:%p>", objc_opt_class(), self];
  [v3 addObject:v4];

  v5 = [(PKNANEndpoint *)self name];
  v6 = [NSString stringWithFormat:@"Instance Name: %@", v5];
  [v3 addObject:v6];

  v7 = [(PKNANEndpoint *)self textInfo];
  v8 = [v7 debugDescription];
  v9 = [NSString stringWithFormat:@"TXT Record: %@", v8];
  [v3 addObject:v9];

  v10 = [(PKNANEndpoint *)self discoveryResult];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"RSSI: %d", [v10 rssi]);
  [v3 addObject:v11];

  v12 = [(PKNANEndpoint *)self discoveryResult];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Publisher ID: %d", [v12 publishID]);
  [v3 addObject:v13];

  v14 = [(PKNANEndpoint *)self discoveryResult];
  v15 = [v14 publisherAddress];
  v16 = [NSString stringWithFormat:@"Publisher address: %@", v15];
  [v3 addObject:v16];

  v17 = [(PKNANEndpoint *)self discoveryResult];
  if ([v17 datapathSupported])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = [NSString stringWithFormat:@"Datapath Supported: %@", v18];
  [v3 addObject:v19];

  v20 = [(PKNANEndpoint *)self discoveryResult];
  if ([v20 datapathSecurityRequired])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v22 = [NSString stringWithFormat:@"Datapath Security Required: %@", v21];
  [v3 addObject:v22];

  v23 = [(PKNANEndpoint *)self discoveryResult];
  if ([v23 furtherServiceDiscoveryRequired])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  v25 = [NSString stringWithFormat:@"Further Discovery Required: %@", v24];
  [v3 addObject:v25];

  v26 = [v3 componentsJoinedByString:@"\n"];

  return v26;
}

- (NSString)identifier
{
  memset(v18, 0, sizeof(v18));
  v3 = [(PKNANEndpoint *)self discoveryResult];
  v4 = [v3 publisherAddress];
  v5 = [v4 data];

  if (v5)
  {
    v6 = [v5 bytes];
    v7 = [v5 length];
    v8 = v18;
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = v6 + 1;
      do
      {
        v11 = v18 + v9;
        v12 = *(v10 - 1);
        *v11 = a0123456789abcd[v12 >> 4];
        v11[1] = a0123456789abcd[v12 & 0xF];
        v13 = v9 + 3;
        v11[2] = 58;
        if (v9 > 0x7C)
        {
          break;
        }

        v9 += 3;
      }

      while (v10++ < &v6[v7]);
      v8 = v18 + v13;
    }
  }

  else
  {
    v8 = v18;
  }

  v15 = [(PKNANEndpoint *)self discoveryResult];
  v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"peer[%.*s]-pubid[%d]", v8 - v18, v18, [v15 publishID]);

  return v16;
}

- (NSString)name
{
  v2 = [(PKNANEndpoint *)self discoveryResult];
  v3 = [v2 serviceSpecificInfo];
  v4 = [v3 instanceName];

  return v4;
}

- (NSDictionary)textInfo
{
  v3 = objc_opt_new();
  v4 = [(PKNANEndpoint *)self discoveryResult];
  v5 = [v4 serviceSpecificInfo];
  v6 = [v5 txtRecordData];

  if (v6)
  {
    v7 = [(PKNANEndpoint *)self discoveryResult];
    v8 = [v7 serviceSpecificInfo];
    v9 = [v8 txtRecordData];
    v10 = [NSNetService dictionaryFromTXTRecordData:v9];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002C33C;
    v12[3] = &unk_1000A2598;
    v13 = v3;
    [v10 enumerateKeysAndObjectsUsingBlock:v12];
  }

  return v3;
}

@end