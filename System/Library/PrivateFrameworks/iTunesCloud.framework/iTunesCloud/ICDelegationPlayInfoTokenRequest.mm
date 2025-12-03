@interface ICDelegationPlayInfoTokenRequest
- (ICDelegationPlayInfoTokenRequest)initWithDSID:(id)d SICData:(id)data;
- (NSMutableDictionary)propertyListRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICDelegationPlayInfoTokenRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSData *)self->_cloudCredentialsTokenData copyWithZone:zone];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSNumber *)self->_DSID copyWithZone:zone];
    v9 = v5[1];
    v5[1] = v8;

    v10 = [(NSData *)self->_SICData copyWithZone:zone];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (NSMutableDictionary)propertyListRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  cloudCredentialsTokenData = self->_cloudCredentialsTokenData;
  if (cloudCredentialsTokenData)
  {
    [dictionary setObject:cloudCredentialsTokenData forKey:@"wha-token"];
  }

  DSID = self->_DSID;
  if (DSID)
  {
    [v4 setObject:DSID forKey:@"dsid"];
  }

  SICData = self->_SICData;
  if (SICData)
  {
    [v4 setObject:SICData forKey:@"sic"];
  }

  return v4;
}

- (ICDelegationPlayInfoTokenRequest)initWithDSID:(id)d SICData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = ICDelegationPlayInfoTokenRequest;
  v8 = [(ICDelegationPlayInfoTokenRequest *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    DSID = v8->_DSID;
    v8->_DSID = v9;

    v11 = [dataCopy copy];
    SICData = v8->_SICData;
    v8->_SICData = v11;
  }

  return v8;
}

@end