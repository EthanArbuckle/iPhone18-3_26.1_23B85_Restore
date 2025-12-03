@interface STSCHWiFiAwareSecurityInfo
- (BOOL)isEqual:(id)equal;
- (STSCHWiFiAwareSecurityInfo)initWithCipherSuites:(id)suites dhInfo:(id)info passphrase:(id)passphrase;
- (STSCHWiFiAwareSecurityInfo)initWithCoder:(id)coder;
- (STSCHWiFiAwareSecurityInfo)initWithPMK:(id)k pmkID:(id)d;
- (id)asData;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSCHWiFiAwareSecurityInfo

- (void)encodeWithCoder:(id)coder
{
  cipherSuite = self->_cipherSuite;
  coderCopy = coder;
  [coderCopy encodeObject:cipherSuite forKey:@"cipherSuite"];
  [coderCopy encodeObject:self->_dhInfo forKey:@"dhInfo"];
  [coderCopy encodeObject:self->_passphrase forKey:@"passphrase"];
  [coderCopy encodeObject:self->_datapathPmk forKey:@"datapathPmk"];
  [coderCopy encodeObject:self->_datapathPmkID forKey:@"datapathPmkID"];
}

- (STSCHWiFiAwareSecurityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = STSCHWiFiAwareSecurityInfo;
  v5 = [(STSCHWiFiAwareSecurityInfo *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"cipherSuite"];
    cipherSuite = v5->_cipherSuite;
    v5->_cipherSuite = v8;

    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"dhInfo"];
    dhInfo = v5->_dhInfo;
    v5->_dhInfo = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passphrase"];
    passphrase = v5->_passphrase;
    v5->_passphrase = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"datapathPmk"];
    datapathPmk = v5->_datapathPmk;
    v5->_datapathPmk = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"datapathPmkID"];
    datapathPmkID = v5->_datapathPmkID;
    v5->_datapathPmkID = v18;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v22 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    cipherSuite = self->_cipherSuite;
    cipherSuite = [(STSCHWiFiAwareSecurityInfo *)v6 cipherSuite];
    LODWORD(cipherSuite) = [(NSArray *)cipherSuite isEqualToArray:cipherSuite];

    if (!cipherSuite)
    {
      goto LABEL_15;
    }

    dhInfo = self->_dhInfo;
    dhInfo = [(STSCHWiFiAwareSecurityInfo *)v6 dhInfo];
    LODWORD(dhInfo) = [(NSArray *)dhInfo isEqualToArray:dhInfo];

    if (!dhInfo)
    {
      goto LABEL_15;
    }

    v11 = [(NSString *)self->_passphrase length];
    passphrase = [(STSCHWiFiAwareSecurityInfo *)v6 passphrase];
    v13 = [passphrase length];

    if (v11 != v13)
    {
      goto LABEL_15;
    }

    passphrase = self->_passphrase;
    if (passphrase)
    {
      passphrase2 = [(STSCHWiFiAwareSecurityInfo *)v6 passphrase];
      v16 = [(NSString *)passphrase isEqualToString:passphrase2];

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
        datapathPmkID = [(STSCHWiFiAwareSecurityInfo *)v6 datapathPmkID];
        v22 = [(NSData *)datapathPmkID isEqualToData:datapathPmkID];
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

- (STSCHWiFiAwareSecurityInfo)initWithCipherSuites:(id)suites dhInfo:(id)info passphrase:(id)passphrase
{
  suitesCopy = suites;
  infoCopy = info;
  passphraseCopy = passphrase;
  v17.receiver = self;
  v17.super_class = STSCHWiFiAwareSecurityInfo;
  v11 = [(STSCHWiFiAwareSecurityInfo *)&v17 init];
  if (v11)
  {
    v12 = [[NSArray alloc] initWithArray:suitesCopy];
    cipherSuite = v11->_cipherSuite;
    v11->_cipherSuite = v12;

    v14 = [[NSArray alloc] initWithArray:infoCopy];
    dhInfo = v11->_dhInfo;
    v11->_dhInfo = v14;

    objc_storeStrong(&v11->_passphrase, passphrase);
  }

  return v11;
}

- (STSCHWiFiAwareSecurityInfo)initWithPMK:(id)k pmkID:(id)d
{
  kCopy = k;
  dCopy = d;
  if ([dCopy length] == 16)
  {
    v13.receiver = self;
    v13.super_class = STSCHWiFiAwareSecurityInfo;
    v9 = [(STSCHWiFiAwareSecurityInfo *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_datapathPmk, k);
      objc_storeStrong(p_isa + 5, d);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)asData
{
  v3 = +[NSMutableData data];
  if ([(NSArray *)self->_cipherSuite count])
  {
    unsignedCharValue = [(NSArray *)self->_cipherSuite count]+ 1;
    [v3 appendBytes:&unsignedCharValue length:1];
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

          unsignedCharValue = [*(*(&v22 + 1) + 8 * i) unsignedCharValue];
          [v3 appendBytes:&unsignedCharValue length:1];
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

        asData = [*(*(&v18 + 1) + 8 * j) asData];
        [v3 appendData:asData];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v11);
  }

  passphrase = self->_passphrase;
  if (passphrase && [(NSString *)passphrase length])
  {
    unsignedCharValue = [(NSString *)self->_passphrase length]+ 1;
    [v3 appendBytes:&unsignedCharValue length:1];
    [v3 appendBytes:&unk_10004295A length:1];
    v16 = [(NSString *)self->_passphrase dataUsingEncoding:4];
    [v3 appendData:v16];
  }

  return v3;
}

@end