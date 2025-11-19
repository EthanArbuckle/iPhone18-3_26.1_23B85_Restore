@interface STSCHWiFiAwareSecurityInfo
- (BOOL)isEqual:(id)a3;
- (STSCHWiFiAwareSecurityInfo)initWithCipherSuites:(id)a3 dhInfo:(id)a4 passphrase:(id)a5;
- (STSCHWiFiAwareSecurityInfo)initWithCoder:(id)a3;
- (STSCHWiFiAwareSecurityInfo)initWithPMK:(id)a3 pmkID:(id)a4;
- (id)asData;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSCHWiFiAwareSecurityInfo

- (void)encodeWithCoder:(id)a3
{
  cipherSuite = self->_cipherSuite;
  v5 = a3;
  [v5 encodeObject:cipherSuite forKey:@"cipherSuite"];
  [v5 encodeObject:self->_dhInfo forKey:@"dhInfo"];
  [v5 encodeObject:self->_passphrase forKey:@"passphrase"];
  [v5 encodeObject:self->_datapathPmk forKey:@"datapathPmk"];
  [v5 encodeObject:self->_datapathPmkID forKey:@"datapathPmkID"];
}

- (STSCHWiFiAwareSecurityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = STSCHWiFiAwareSecurityInfo;
  v5 = [(STSCHWiFiAwareSecurityInfo *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"cipherSuite"];
    cipherSuite = v5->_cipherSuite;
    v5->_cipherSuite = v8;

    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"dhInfo"];
    dhInfo = v5->_dhInfo;
    v5->_dhInfo = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passphrase"];
    passphrase = v5->_passphrase;
    v5->_passphrase = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"datapathPmk"];
    datapathPmk = v5->_datapathPmk;
    v5->_datapathPmk = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"datapathPmkID"];
    datapathPmkID = v5->_datapathPmkID;
    v5->_datapathPmkID = v18;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v22 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    cipherSuite = self->_cipherSuite;
    v8 = [(STSCHWiFiAwareSecurityInfo *)v6 cipherSuite];
    LODWORD(cipherSuite) = [(NSArray *)cipherSuite isEqualToArray:v8];

    if (!cipherSuite)
    {
      goto LABEL_15;
    }

    dhInfo = self->_dhInfo;
    v10 = [(STSCHWiFiAwareSecurityInfo *)v6 dhInfo];
    LODWORD(dhInfo) = [(NSArray *)dhInfo isEqualToArray:v10];

    if (!dhInfo)
    {
      goto LABEL_15;
    }

    v11 = [(NSString *)self->_passphrase length];
    v12 = [(STSCHWiFiAwareSecurityInfo *)v6 passphrase];
    v13 = [v12 length];

    if (v11 != v13)
    {
      goto LABEL_15;
    }

    passphrase = self->_passphrase;
    if (passphrase)
    {
      v15 = [(STSCHWiFiAwareSecurityInfo *)v6 passphrase];
      v16 = [(NSString *)passphrase isEqualToString:v15];

      if (!v16)
      {
        goto LABEL_15;
      }
    }

    datapathPmk = self->_datapathPmk;
    if (!datapathPmk || ([(STSCHWiFiAwareSecurityInfo *)v6 datapathPmk], v18 = objc_claimAutoreleasedReturnValue(), v19 = [(NSData *)datapathPmk isEqualToData:v18], v18, v19))
    {
      datapathPmkID = self->_datapathPmkID;
      if (datapathPmkID)
      {
        v21 = [(STSCHWiFiAwareSecurityInfo *)v6 datapathPmkID];
        v22 = [(NSData *)datapathPmkID isEqualToData:v21];
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
LABEL_15:
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (id)description
{
  if (self->_datapathPmk)
  {
    v3 = &stru_100059C08;
  }

  else
  {
    v3 = @"not ";
  }

  v4 = [NSString stringWithFormat:@"PMK & PMKID %@available", v3];
  v5 = [(NSArray *)self->_cipherSuite description];
  v6 = [(NSString *)self->_passphrase description];
  v7 = [(NSArray *)self->_dhInfo description];
  v8 = [NSString stringWithFormat:@"cipherSuite=%@, password=%@, DH=%@, %@", v5, v6, v7, v4];

  return v8;
}

- (STSCHWiFiAwareSecurityInfo)initWithCipherSuites:(id)a3 dhInfo:(id)a4 passphrase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = STSCHWiFiAwareSecurityInfo;
  v11 = [(STSCHWiFiAwareSecurityInfo *)&v17 init];
  if (v11)
  {
    v12 = [[NSArray alloc] initWithArray:v8];
    cipherSuite = v11->_cipherSuite;
    v11->_cipherSuite = v12;

    v14 = [[NSArray alloc] initWithArray:v9];
    dhInfo = v11->_dhInfo;
    v11->_dhInfo = v14;

    objc_storeStrong(&v11->_passphrase, a5);
  }

  return v11;
}

- (STSCHWiFiAwareSecurityInfo)initWithPMK:(id)a3 pmkID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v8 length] == 16)
  {
    v13.receiver = self;
    v13.super_class = STSCHWiFiAwareSecurityInfo;
    v9 = [(STSCHWiFiAwareSecurityInfo *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_datapathPmk, a3);
      objc_storeStrong(p_isa + 5, a4);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)asData
{
  v3 = +[NSMutableData data];
  if ([(NSArray *)self->_cipherSuite count])
  {
    v26 = [(NSArray *)self->_cipherSuite count]+ 1;
    [v3 appendBytes:&v26 length:1];
    [v3 appendBytes:&unk_100042959 length:1];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = self->_cipherSuite;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v26 = [*(*(&v22 + 1) + 8 * i) unsignedCharValue];
          [v3 appendBytes:&v26 length:1];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v6);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_dhInfo;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * j) asData];
        [v3 appendData:v14];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v11);
  }

  passphrase = self->_passphrase;
  if (passphrase && [(NSString *)passphrase length])
  {
    v26 = [(NSString *)self->_passphrase length]+ 1;
    [v3 appendBytes:&v26 length:1];
    [v3 appendBytes:&unk_10004295A length:1];
    v16 = [(NSString *)self->_passphrase dataUsingEncoding:4];
    [v3 appendData:v16];
  }

  return v3;
}

@end