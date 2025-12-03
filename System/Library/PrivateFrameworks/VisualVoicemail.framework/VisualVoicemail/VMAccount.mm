@interface VMAccount
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccount:(id)account;
- (VMAccount)init;
- (VMAccount)initWithCoder:(id)coder;
- (VMAccount)initWithUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)copyPropertiesWithZone:(_NSZone *)zone toAccount:(id)account;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VMAccount

- (VMAccount)init
{
  [(VMAccount *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMAccount)initWithUUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = VMAccount;
  v6 = [(VMAccount *)&v8 init];
  if (v6)
  {
    if (!dCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%s: parameter '%@' cannot be nil", "-[VMAccount initWithUUID:]", @"UUID"}];
    }

    objc_storeStrong(&v6->_UUID, d);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[VMAccount allocWithZone:](VMAccount initWithUUID:"initWithUUID:", self->_UUID];
  [(VMAccount *)self copyPropertiesWithZone:zone toAccount:v5];
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [(VMAccount *)[VMMutableAccount alloc] initWithUUID:self->_UUID];
  [(VMAccount *)self copyPropertiesWithZone:zone toAccount:v5];
  return v5;
}

- (VMAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = VMAccount;
  v5 = [(VMAccount *)&v32 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_abbreviatedAccountDescription);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    abbreviatedAccountDescription = v5->_abbreviatedAccountDescription;
    v5->_abbreviatedAccountDescription = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_accountDescription);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    accountDescription = v5->_accountDescription;
    v5->_accountDescription = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_handle);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    handle = v5->_handle;
    v5->_handle = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_isoCountryCode);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v20;

    v22 = NSStringFromSelector(sel_isProvisioned);
    v5->_provisioned = [coderCopy decodeBoolForKey:v22];

    v23 = objc_opt_class();
    v24 = NSStringFromSelector(sel_serviceName);
    v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];
    serviceName = v5->_serviceName;
    v5->_serviceName = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_UUID);
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    UUID = v5->_UUID;
    v5->_UUID = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  abbreviatedAccountDescription = [(VMAccount *)self abbreviatedAccountDescription];
  v6 = NSStringFromSelector(sel_abbreviatedAccountDescription);
  [coderCopy encodeObject:abbreviatedAccountDescription forKey:v6];

  accountDescription = [(VMAccount *)self accountDescription];
  v8 = NSStringFromSelector(sel_accountDescription);
  [coderCopy encodeObject:accountDescription forKey:v8];

  handle = [(VMAccount *)self handle];
  v10 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v10];

  isoCountryCode = [(VMAccount *)self isoCountryCode];
  v12 = NSStringFromSelector(sel_isoCountryCode);
  [coderCopy encodeObject:isoCountryCode forKey:v12];

  isProvisioned = [(VMAccount *)self isProvisioned];
  v14 = NSStringFromSelector(sel_isProvisioned);
  [coderCopy encodeBool:isProvisioned forKey:v14];

  serviceName = [(VMAccount *)self serviceName];
  v16 = NSStringFromSelector(sel_serviceName);
  [coderCopy encodeObject:serviceName forKey:v16];

  uUID = [(VMAccount *)self UUID];
  v17 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v17];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_UUID);
  uUID = [(VMAccount *)self UUID];
  [v3 appendFormat:@"%@=%@", v4, uUID];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_handle);
  handle = [(VMAccount *)self handle];
  [v3 appendFormat:@"%@=%@", v6, handle];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector(sel_isoCountryCode);
  isoCountryCode = [(VMAccount *)self isoCountryCode];
  [v3 appendFormat:@"%@=%@", v8, isoCountryCode];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector(sel_abbreviatedAccountDescription);
  abbreviatedAccountDescription = [(VMAccount *)self abbreviatedAccountDescription];
  [v3 appendFormat:@"%@=%@", v10, abbreviatedAccountDescription];

  [v3 appendFormat:@", "];
  v12 = NSStringFromSelector(sel_accountDescription);
  accountDescription = [(VMAccount *)self accountDescription];
  [v3 appendFormat:@"%@=%@", v12, accountDescription];

  [v3 appendFormat:@", "];
  v14 = NSStringFromSelector(sel_serviceName);
  serviceName = [(VMAccount *)self serviceName];
  [v3 appendFormat:@"%@=%@", v14, serviceName];

  [v3 appendFormat:@", "];
  v16 = NSStringFromSelector(sel_isProvisioned);
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[VMAccount isProvisioned](self, "isProvisioned")}];
  [v3 appendFormat:@"%@=%@", v16, v17];

  [v3 appendFormat:@">"];
  v18 = [v3 copy];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(VMAccount *)self isEqualToAccount:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  abbreviatedAccountDescription = [(VMAccount *)self abbreviatedAccountDescription];
  v4 = [abbreviatedAccountDescription hash];
  accountDescription = [(VMAccount *)self accountDescription];
  v6 = [accountDescription hash] ^ v4;
  isoCountryCode = [(VMAccount *)self isoCountryCode];
  v8 = [isoCountryCode hash];
  handle = [(VMAccount *)self handle];
  v10 = v6 ^ v8 ^ [handle hash];
  if ([(VMAccount *)self isProvisioned])
  {
    v11 = 1231;
  }

  else
  {
    v11 = 1237;
  }

  serviceName = [(VMAccount *)self serviceName];
  v13 = v10 ^ v11 ^ [serviceName hash];
  uUID = [(VMAccount *)self UUID];
  v15 = [uUID hash];

  return v13 ^ v15;
}

- (void)copyPropertiesWithZone:(_NSZone *)zone toAccount:(id)account
{
  abbreviatedAccountDescription = self->_abbreviatedAccountDescription;
  accountCopy = account;
  v8 = [(NSString *)abbreviatedAccountDescription copyWithZone:zone];
  v9 = accountCopy[4];
  accountCopy[4] = v8;

  v10 = [(NSString *)self->_accountDescription copyWithZone:zone];
  v11 = accountCopy[3];
  accountCopy[3] = v10;

  v12 = [(VMHandle *)self->_handle copyWithZone:zone];
  v13 = accountCopy[5];
  accountCopy[5] = v12;

  v14 = [(NSString *)self->_isoCountryCode copyWithZone:zone];
  v15 = accountCopy[6];
  accountCopy[6] = v14;

  *(accountCopy + 8) = self->_provisioned;
  v16 = [(NSString *)self->_serviceName copyWithZone:zone];
  v17 = accountCopy[7];
  accountCopy[7] = v16;
}

- (BOOL)isEqualToAccount:(id)account
{
  accountCopy = account;
  abbreviatedAccountDescription = [(VMAccount *)self abbreviatedAccountDescription];
  abbreviatedAccountDescription2 = [accountCopy abbreviatedAccountDescription];
  v7 = abbreviatedAccountDescription;
  v8 = abbreviatedAccountDescription2;
  v9 = v8;
  if (!(v7 | v8))
  {
    goto LABEL_4;
  }

  if (!v8)
  {
    v29 = 0;
    v13 = v7;
LABEL_37:

    goto LABEL_38;
  }

  v10 = [v7 isEqualToString:v8];

  if (v10)
  {
LABEL_4:
    accountDescription = [(VMAccount *)self accountDescription];
    accountDescription2 = [accountCopy accountDescription];
    v13 = accountDescription;
    v14 = accountDescription2;
    v15 = v14;
    if (v13 | v14)
    {
      if (!v14)
      {
        v29 = 0;
        v19 = v13;
LABEL_35:

        goto LABEL_36;
      }

      v16 = [v13 isEqualToString:v14];

      if (!v16)
      {
        v29 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    isoCountryCode = [(VMAccount *)self isoCountryCode];
    isoCountryCode2 = [accountCopy isoCountryCode];
    v19 = isoCountryCode;
    v20 = isoCountryCode2;
    v21 = v20;
    if (v19 | v20)
    {
      if (!v20)
      {
        v29 = 0;
        v25 = v19;
LABEL_33:

        goto LABEL_34;
      }

      v22 = [v19 isEqualToString:v20];

      if (!v22)
      {
        v29 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    handle = [(VMAccount *)self handle];
    handle2 = [accountCopy handle];
    v25 = handle;
    v26 = handle2;
    v27 = v26;
    v47 = v25;
    if (v25 | v26)
    {
      if (!v26)
      {
        v29 = 0;
        v39 = v25;
LABEL_31:

        goto LABEL_32;
      }

      v44 = [v25 isEqual:v26];

      if (!v44)
      {
LABEL_14:
        v29 = 0;
        v25 = v47;
LABEL_32:

        goto LABEL_33;
      }
    }

    isProvisioned = [(VMAccount *)self isProvisioned];
    if (isProvisioned != [accountCopy isProvisioned])
    {
      goto LABEL_14;
    }

    serviceName = [(VMAccount *)self serviceName];
    serviceName2 = [accountCopy serviceName];
    v31 = serviceName;
    v32 = serviceName2;
    v33 = v32;
    v46 = v31;
    if (v31 | v32)
    {
      if (!v32)
      {
        v43 = 0;
        v29 = 0;
        v38 = v31;
LABEL_29:

        v25 = v47;
        v33 = v43;
LABEL_30:

        v39 = v46;
        goto LABEL_31;
      }

      v34 = v32;
      LODWORD(v41) = [v46 isEqualToString:v32];

      v33 = v34;
      if (!v41)
      {
        v29 = 0;
        v25 = v47;
        goto LABEL_30;
      }
    }

    v43 = v33;
    uUID = [(VMAccount *)self UUID];
    uUID2 = [accountCopy UUID];
    v37 = uUID;
    v29 = (uUID | uUID2) == 0;
    v42 = v37;
    if (uUID2)
    {
      v29 = [v37 isEqual:uUID2];
    }

    v38 = v42;
    goto LABEL_29;
  }

  v29 = 0;
LABEL_38:

  return v29;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end