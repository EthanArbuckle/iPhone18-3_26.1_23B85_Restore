@interface ICDelegationPlayInfoTokenRequest
- (ICDelegationPlayInfoTokenRequest)initWithDSID:(id)a3 SICData:(id)a4;
- (NSMutableDictionary)propertyListRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICDelegationPlayInfoTokenRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSData *)self->_cloudCredentialsTokenData copyWithZone:a3];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSNumber *)self->_DSID copyWithZone:a3];
    v9 = v5[1];
    v5[1] = v8;

    v10 = [(NSData *)self->_SICData copyWithZone:a3];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (NSMutableDictionary)propertyListRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  cloudCredentialsTokenData = self->_cloudCredentialsTokenData;
  if (cloudCredentialsTokenData)
  {
    [v3 setObject:cloudCredentialsTokenData forKey:@"wha-token"];
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

- (ICDelegationPlayInfoTokenRequest)initWithDSID:(id)a3 SICData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ICDelegationPlayInfoTokenRequest;
  v8 = [(ICDelegationPlayInfoTokenRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    DSID = v8->_DSID;
    v8->_DSID = v9;

    v11 = [v7 copy];
    SICData = v8->_SICData;
    v8->_SICData = v11;
  }

  return v8;
}

@end