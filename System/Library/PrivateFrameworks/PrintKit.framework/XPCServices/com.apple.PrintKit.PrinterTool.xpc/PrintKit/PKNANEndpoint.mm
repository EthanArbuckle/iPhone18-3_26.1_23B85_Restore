@interface PKNANEndpoint
- (NSDictionary)textInfo;
- (NSString)identifier;
- (NSString)name;
- (PKNANEndpoint)initWithDiscoveryResult:(id)result;
- (id)debugDescription;
@end

@implementation PKNANEndpoint

- (PKNANEndpoint)initWithDiscoveryResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = PKNANEndpoint;
  v6 = [(PKNANEndpoint *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_discoveryResult, result);
  }

  return v7;
}

- (id)debugDescription
{
  v3 = objc_opt_new();
  v4 = [NSString stringWithFormat:@"Endpoint: <%@:%p>", objc_opt_class(), self];
  [v3 addObject:v4];

  name = [(PKNANEndpoint *)self name];
  v6 = [NSString stringWithFormat:@"Instance Name: %@", name];
  [v3 addObject:v6];

  textInfo = [(PKNANEndpoint *)self textInfo];
  v8 = [textInfo debugDescription];
  v9 = [NSString stringWithFormat:@"TXT Record: %@", v8];
  [v3 addObject:v9];

  discoveryResult = [(PKNANEndpoint *)self discoveryResult];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"RSSI: %d", [discoveryResult rssi]);
  [v3 addObject:v11];

  discoveryResult2 = [(PKNANEndpoint *)self discoveryResult];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Publisher ID: %d", [discoveryResult2 publishID]);
  [v3 addObject:v13];

  discoveryResult3 = [(PKNANEndpoint *)self discoveryResult];
  publisherAddress = [discoveryResult3 publisherAddress];
  v16 = [NSString stringWithFormat:@"Publisher address: %@", publisherAddress];
  [v3 addObject:v16];

  discoveryResult4 = [(PKNANEndpoint *)self discoveryResult];
  if ([discoveryResult4 datapathSupported])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = [NSString stringWithFormat:@"Datapath Supported: %@", v18];
  [v3 addObject:v19];

  discoveryResult5 = [(PKNANEndpoint *)self discoveryResult];
  if ([discoveryResult5 datapathSecurityRequired])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v22 = [NSString stringWithFormat:@"Datapath Security Required: %@", v21];
  [v3 addObject:v22];

  discoveryResult6 = [(PKNANEndpoint *)self discoveryResult];
  if ([discoveryResult6 furtherServiceDiscoveryRequired])
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
  discoveryResult = [(PKNANEndpoint *)self discoveryResult];
  publisherAddress = [discoveryResult publisherAddress];
  data = [publisherAddress data];

  if (data)
  {
    bytes = [data bytes];
    v7 = [data length];
    v8 = v18;
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = bytes + 1;
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

      while (v10++ < &bytes[v7]);
      v8 = v18 + v13;
    }
  }

  else
  {
    v8 = v18;
  }

  discoveryResult2 = [(PKNANEndpoint *)self discoveryResult];
  v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"peer[%.*s]-pubid[%d]", v8 - v18, v18, [discoveryResult2 publishID]);

  return v16;
}

- (NSString)name
{
  discoveryResult = [(PKNANEndpoint *)self discoveryResult];
  serviceSpecificInfo = [discoveryResult serviceSpecificInfo];
  instanceName = [serviceSpecificInfo instanceName];

  return instanceName;
}

- (NSDictionary)textInfo
{
  v3 = objc_opt_new();
  discoveryResult = [(PKNANEndpoint *)self discoveryResult];
  serviceSpecificInfo = [discoveryResult serviceSpecificInfo];
  txtRecordData = [serviceSpecificInfo txtRecordData];

  if (txtRecordData)
  {
    discoveryResult2 = [(PKNANEndpoint *)self discoveryResult];
    serviceSpecificInfo2 = [discoveryResult2 serviceSpecificInfo];
    txtRecordData2 = [serviceSpecificInfo2 txtRecordData];
    v10 = [NSNetService dictionaryFromTXTRecordData:txtRecordData2];

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